@interface NSDictionary(ExtensionKitAdditions)
+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:;
- (id)_EX_arrayForKey:()ExtensionKitAdditions;
- (id)_EX_arrayForKeys:()ExtensionKitAdditions;
- (id)_EX_dictionaryByRemovingObjectForKey:()ExtensionKitAdditions;
- (id)_EX_dictionaryBySettingObject:()ExtensionKitAdditions forKey:;
- (id)_EX_dictionaryBySettingValuesForKeysWithDictionary:()ExtensionKitAdditions;
- (id)_EX_dictionaryForKey:()ExtensionKitAdditions;
- (id)_EX_dictionaryForKeys:()ExtensionKitAdditions;
- (id)_EX_objectForKey:()ExtensionKitAdditions ofClass:;
- (id)_EX_objectForKeys:()ExtensionKitAdditions ofClass:;
- (id)_EX_stringForKey:()ExtensionKitAdditions;
- (id)_EX_stringForKeys:()ExtensionKitAdditions;
- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions;
- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions defaultValue:;
- (uint64_t)_EX_integerForKey:()ExtensionKitAdditions;
@end

@implementation NSDictionary(ExtensionKitAdditions)

+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:
{
  v107[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _EXAuditTokenForCurrentProcess();
  objc_opt_class();
  v7 = _EXAuditTokenGetEntitlementValue(v6, @"com.apple.private.amfi.can-check-trust-cache");
  v8 = [v7 BOOLValue];

  if (!v8)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1847D1000, v11, OS_LOG_TYPE_DEFAULT, "Unable to check trust cache due to missing entitlement", &buf, 2u);
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  v9 = [v5 URLByAppendingPathExtension:@"sig"];
  v10 = v5;
  v11 = v9;
  cf = 0;
  staticCode = 0;
  v12 = SecStaticCodeCreateWithPath(v10, 0, &staticCode);
  if (v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create SecStaticCodeRef [%ld]", v12];
    *&buf = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    v16 = [v13 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v15];
LABEL_4:
    v17 = 0;
LABEL_17:

    v34 = 0;
    v35 = 0;
LABEL_18:
    if (staticCode)
    {
      CFRelease(staticCode);
    }

    v18 = 0;
    goto LABEL_21;
  }

  v93 = 0;
  v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:0 error:&v93];
  v29 = v93;
  if (!v17)
  {
    v63 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    v64 = MEMORY[0x1E696AEC0];
    v14 = [v11 path];
    v15 = [v64 stringWithFormat:@"Unable to read detached signature from %@", v14];
    input[1] = *MEMORY[0x1E696AA08];
    *&buf = v15;
    *(&buf + 1) = v29;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:2];
    v65 = v5;
    v67 = v66 = a4;
    v16 = [v63 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v67];

    a4 = v66;
    v5 = v65;
    goto LABEL_4;
  }

  v30 = SecCodeSetDetachedSignature();
  if (v30)
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = v5;
    v33 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set detached signature [%ld]", v30];
    v14 = LABEL_16:;
    *&buf = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    a4 = v33;
    v5 = v32;
    v16 = [v31 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v15];

    goto LABEL_17;
  }

  v68 = SecStaticCodeCheckValidity(staticCode, 6u, 0);
  if (v68 != -66996 && v68)
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = v5;
    v33 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to verify code directory [%ld]", v68];
    goto LABEL_16;
  }

  v69 = SecCodeCopySigningInformation(staticCode, 0, &cf);
  if (v69)
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = v5;
    v33 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get code signing information [%ld]", v69];
    goto LABEL_16;
  }

  v34 = cf;
  cf = 0;
  v35 = [v34 objectForKeyedSubscript:*MEMORY[0x1E697B098]];
  connect = 0;
  v70 = *MEMORY[0x1E696CD60];
  v71 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v70, v71);
  v90 = a4;
  object = MatchingService;
  if (!MatchingService)
  {
    v77 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    *&buf = @"Unable to find AMFI";
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    v79 = [v77 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v78];
LABEL_59:
    v81 = 0;
    goto LABEL_60;
  }

  v73 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (v73)
  {
    v86 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to connect to AMFI [%ld]", v73];
    *&buf = v74;
    v75 = MEMORY[0x1E695DF20];
    v76 = input;
LABEL_58:
    v82 = [v75 dictionaryWithObjects:&buf forKeys:v76 count:1];
    v79 = [v86 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v82];

    v78 = v74;
    goto LABEL_59;
  }

  input[0] = 1;
  v80 = IOConnectCallMethod(connect, 6u, input, 1u, [v35 bytes], objc_msgSend(v35, "length"), 0, 0, 0, 0);
  if (v80 == -536870160)
  {
    v86 = MEMORY[0x1E696ABC0];
    v107[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"cdhash: %@ is not in trust cache", v35, v85];
    v74 = LABEL_57:;
    *&buf = v74;
    v75 = MEMORY[0x1E695DF20];
    v76 = v107;
    goto LABEL_58;
  }

  if (v80)
  {
    v86 = MEMORY[0x1E696ABC0];
    v107[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error (%ld) checking cdhash %@", v80, v35];
    goto LABEL_57;
  }

  v78 = _EXDefaultLog();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v35;
    _os_log_impl(&dword_1847D1000, v78, OS_LOG_TYPE_DEFAULT, "cdhash: %@ is trusted", &buf, 0xCu);
  }

  v79 = 0;
  v81 = 1;
LABEL_60:

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (object)
  {
    IOObjectRelease(object);
  }

  if (v79)
  {
    v83 = v79;
    v84 = v79;
  }

  else
  {
    v84 = v29;
    if ((v81 & 1) == 0)
    {
      +[NSDictionary(ExtensionKitAdditions) _EX_dictionaryWithSignedURL:error:];
    }
  }

  v16 = v84;
  if (!v81)
  {
    a4 = v90;
    goto LABEL_18;
  }

  v18 = staticCode;
  staticCode = 0;
  a4 = v90;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    v36 = v16;
  }

  v19 = v16;
  if (!v18)
  {
    if (!a4)
    {
      +[NSDictionary(ExtensionKitAdditions) _EX_dictionaryWithSignedURL:error:];
    }

    goto LABEL_29;
  }

  v37 = SecCodeMapMemory(v18, 0);
  if (v37)
  {
    v38 = MEMORY[0x1E696ABC0];
    v103 = *MEMORY[0x1E696A578];
    *objecta = v5;
    v39 = a4;
    v40 = MEMORY[0x1E696AEC0];
    v41 = v37;
    v42 = [(__CFURL *)v10 path];
    v43 = [v11 path];
    v44 = [v40 stringWithFormat:@"Unable to push signature to kernel [%ld]: plist: %@ signature: %@", v41, v42, v43];
    v104 = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v46 = [v38 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v45];

    a4 = v39;
    v5 = *objecta;

    v19 = v46;
LABEL_29:

    goto LABEL_30;
  }

LABEL_8:

  v92 = v19;
  v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:8 error:&v92];
  v21 = v92;

  if (!v20)
  {
    v24 = MEMORY[0x1E696ABC0];
    v101 = *MEMORY[0x1E696A578];
    v25 = MEMORY[0x1E696AEC0];
    v26 = [v5 path];
    v27 = [v25 stringWithFormat:@"Unable to read plist at %@", v26];
    v102 = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v19 = [v24 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v28];

LABEL_30:
    v22 = 0;
    v20 = 0;
    v23 = 0;
    goto LABEL_34;
  }

  v91 = 0;
  v22 = [MEMORY[0x1E696AE40] propertyListWithData:v20 options:0 format:0 error:&v91];
  v19 = v91;

  if (v22)
  {
    v89 = a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v22;
      v23 = v22;
    }

    else
    {
      v53 = MEMORY[0x1E696ABC0];
      v97 = *MEMORY[0x1E696A578];
      v54 = MEMORY[0x1E696AEC0];
      v55 = [v5 path];
      v56 = [v54 stringWithFormat:@"Extension cache at path [%@] not a dictionary: %@", v55, v22];
      v98 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v58 = [v53 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v57];

      v23 = 0;
      v19 = v58;
    }

    a4 = v89;
  }

  else
  {
    v47 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A578];
    v48 = MEMORY[0x1E696AEC0];
    v49 = [v5 path];
    v50 = [v48 stringWithFormat:@"Unable to deserialize %@", v49];
    v100 = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v52 = [v47 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v51];

    v22 = 0;
    v23 = 0;
    v19 = v52;
  }

LABEL_34:
  if (v18)
  {
    CFRelease(v18);
  }

  if (a4 && v19)
  {
    v59 = v19;
    *a4 = v19;
  }

  v60 = v23;

  v61 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_EX_objectForKey:()ExtensionKitAdditions ofClass:
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_EX_objectForKeys:()ExtensionKitAdditions ofClass:
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [a1 objectForKey:{*(*(&v12 + 1) + 8 * v8), v12}];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_EX_dictionaryForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_dictionaryForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_arrayForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_arrayForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_stringForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_stringForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (uint64_t)_EX_integerForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKey:v4 ofClass:objc_opt_class()];

  v6 = [v5 integerValue];
  return v6;
}

- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 _EX_objectForKey:v4 ofClass:objc_opt_class()];

  v6 = [v5 BOOLValue];
  return v6;
}

- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions defaultValue:
{
  v6 = a3;
  v7 = [a1 _EX_objectForKey:v6 ofClass:objc_opt_class()];

  if (v7)
  {
    a4 = [v7 BOOLValue];
  }

  return a4;
}

- (id)_EX_dictionaryByRemovingObjectForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObjectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 copy];
  }

  v7 = v6;

  return v7;
}

- (id)_EX_dictionaryBySettingObject:()ExtensionKitAdditions forKey:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mutableCopy];
  [v8 setObject:v7 forKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 copy];
  }

  v10 = v9;

  return v10;
}

- (id)_EX_dictionaryBySettingValuesForKeysWithDictionary:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 setValuesForKeysWithDictionary:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 copy];
  }

  v7 = v6;

  return v7;
}

+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

@end