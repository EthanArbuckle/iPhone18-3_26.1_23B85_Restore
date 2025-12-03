@interface NSXPCConnection(FPAdditions)
- (BOOL)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:;
- (NSObject)fp_applicationGroups;
- (id)fp_bundleIdentifier;
- (id)fp_bundleRecord;
- (uint64_t)fp_hasOneOfEntitlements:()FPAdditions nonSandboxedAccess:logLevel:;
- (void)fp_annotateInvocation:()FPAdditions withLogSection:;
- (void)fp_applicationGroups;
- (void)fp_userInfo;
@end

@implementation NSXPCConnection(FPAdditions)

- (void)fp_userInfo
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)fp_bundleIdentifier
{
  v2 = [self valueForEntitlement:@"application-identifier"];
  v3 = v2;
  if (!v2 || (FPAppIdentifierFromTeamAppTuple(v2), (bundleIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
  {
    fp_bundleRecord = [self fp_bundleRecord];
    bundleIdentifier = [fp_bundleRecord bundleIdentifier];
  }

  return bundleIdentifier;
}

- (NSObject)fp_applicationGroups
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [self valueForEntitlement:@"com.apple.security.application-groups"];
  if (!v1)
  {
LABEL_18:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [NSXPCConnection(FPAdditions) fp_applicationGroups];
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = fp_current_or_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [NSXPCConnection(FPAdditions) fp_applicationGroups];
          }

          goto LABEL_17;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = v2;
LABEL_19:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v52 = 0u;
  v53 = 0u;
  [self auditToken];
  fileSystemRepresentation = [v7 fileSystemRepresentation];
  v9 = (*MEMORY[0x1E69E9BD0] | *MEMORY[0x1E69E9BC8]);
  memset(buf, 0, 32);
  v45 = fileSystemRepresentation;
  if (sandbox_check_by_audit_token())
  {
    v51 = 0;
    v10 = [v7 checkResourceIsReachableAndReturnError:{&v51, v45}];
    v11 = v51;
    if (v10)
    {
      v50 = 0;
      v12 = [v7 getResourceValue:&v50 forKey:*MEMORY[0x1E695DBC8] error:0];
      v13 = v50;
      uRLByDeletingLastPathComponent = v13;
      if (!v12)
      {
        goto LABEL_6;
      }

      if (![v13 BOOLValue])
      {
        goto LABEL_6;
      }

      path = [v7 path];
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
      fileSystemRepresentation2 = [stringByDeletingLastPathComponent fileSystemRepresentation];
      *buf = v52;
      *&buf[16] = v53;
      v46 = fileSystemRepresentation2;
      v18 = sandbox_check_by_audit_token();

      if (v18)
      {
LABEL_6:
        if (a5)
        {
          if (a5 == 2)
          {
            [self processIdentifier];
            v19 = FPExecutableNameForProcessIdentifier();
          }

          else
          {
            v19 = @"<restricted>";
          }

          v26 = fp_current_or_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            processIdentifier = [self processIdentifier];
            fp_shortDescription = [v7 fp_shortDescription];
            *buf = 67109634;
            *&buf[4] = processIdentifier;
            *&buf[8] = 2112;
            *&buf[10] = v19;
            *&buf[18] = 2112;
            *&buf[20] = fp_shortDescription;
            _os_log_debug_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) doesn't have sandbox access to %@", buf, 0x1Cu);
          }

          v23 = 0;
          goto LABEL_66;
        }

        v23 = 0;
LABEL_67:

        goto LABEL_68;
      }

      if (a5)
      {
        if (a5 == 2)
        {
          [self processIdentifier];
          v19 = FPExecutableNameForProcessIdentifier();
        }

        else
        {
          v19 = @"<restricted>";
        }

        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier2 = [self processIdentifier];
          fp_shortDescription2 = [v7 fp_shortDescription];
          *buf = 67109634;
          *&buf[4] = processIdentifier2;
          *&buf[8] = 2112;
          *&buf[10] = v19;
          *&buf[18] = 2112;
          *&buf[20] = fp_shortDescription2;
          _os_log_debug_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has sandbox access to the parent path of %@", buf, 0x1Cu);
        }

        v23 = 1;
        goto LABEL_66;
      }

LABEL_23:
      v23 = 1;
      goto LABEL_67;
    }

    if (!_CFURLIsItemPromiseAtURL())
    {
      v20 = _CFURLCopyPromiseURLOfLogicalURL();
      uRLByDeletingLastPathComponent = v20;
      if (v20)
      {
        fileSystemRepresentation3 = [v20 fileSystemRepresentation];
        *buf = v52;
        *&buf[16] = v53;
        v47 = fileSystemRepresentation3;
        v22 = sandbox_check_by_audit_token();
        v23 = v22 == 0;
        if (!v22)
        {
          if (!a5)
          {
            goto LABEL_67;
          }

          if (a5 == 2)
          {
            [self processIdentifier];
            v19 = FPExecutableNameForProcessIdentifier();
          }

          else
          {
            v19 = @"<restricted>";
          }

          v26 = fp_current_or_default_log();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_66;
          }

          processIdentifier3 = [self processIdentifier];
          fp_shortDescription3 = [v7 fp_shortDescription];
          *buf = 67109634;
          *&buf[4] = processIdentifier3;
          *&buf[8] = 2112;
          *&buf[10] = v19;
          *&buf[18] = 2112;
          *&buf[20] = fp_shortDescription3;
          v32 = "[DEBUG] PID %d (%@) has sandbox access to the promise of %@";
LABEL_60:
          _os_log_debug_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEBUG, v32, buf, 0x1Cu);

LABEL_66:
          goto LABEL_67;
        }

        v49 = v11;
        v24 = [uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:&v49, v47];
        v25 = v49;

        if (v24)
        {
          if (a5)
          {
            if (a5 == 2)
            {
              [self processIdentifier];
              v19 = FPExecutableNameForProcessIdentifier();
            }

            else
            {
              v19 = @"<restricted>";
            }

            v26 = fp_current_or_default_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              processIdentifier4 = [self processIdentifier];
              fp_shortDescription4 = [v7 fp_shortDescription];
              *buf = 67109634;
              *&buf[4] = processIdentifier4;
              *&buf[8] = 2112;
              *&buf[10] = v19;
              *&buf[18] = 2112;
              *&buf[20] = fp_shortDescription4;
              _os_log_debug_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) doesn't have sandbox access to %@ or its fault", buf, 0x1Cu);
            }

            v11 = v25;
            goto LABEL_66;
          }

          v11 = v25;
          goto LABEL_67;
        }

        v11 = v25;
      }

      else
      {
        v27 = fp_current_or_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [NSXPCConnection(FPAdditions) fp_hasSandboxAccessToFile:v7 accessType:v27 logLevel:?];
        }
      }
    }

    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
    fileSystemRepresentation4 = [uRLByDeletingLastPathComponent fileSystemRepresentation];
    *buf = v52;
    *&buf[16] = v53;
    v48 = fileSystemRepresentation4;
    v29 = sandbox_check_by_audit_token();
    v23 = v29 == 0;
    if (v29)
    {
      if (!a5)
      {
        goto LABEL_67;
      }

      if (a5 == 2)
      {
        [self processIdentifier];
        v19 = FPExecutableNameForProcessIdentifier();
      }

      else
      {
        v19 = @"<restricted>";
      }

      v26 = fp_current_or_default_log();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      processIdentifier5 = [self processIdentifier];
      fp_shortDescription3 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier5;
      *&buf[8] = 2112;
      *&buf[10] = v19;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription3;
      v32 = "[DEBUG] PID %d (%@) doesn't have sandbox access to %@ or its fault";
    }

    else
    {
      if (!a5)
      {
        goto LABEL_67;
      }

      if (a5 == 2)
      {
        [self processIdentifier];
        v19 = FPExecutableNameForProcessIdentifier();
      }

      else
      {
        v19 = @"<restricted>";
      }

      v26 = fp_current_or_default_log();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      processIdentifier6 = [self processIdentifier];
      fp_shortDescription3 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier6;
      *&buf[8] = 2112;
      *&buf[10] = v19;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription3;
      v32 = "[DEBUG] PID %d (%@) has sandbox access to non-existent %@";
    }

    goto LABEL_60;
  }

  if (a5)
  {
    if (a5 == 2)
    {
      [self processIdentifier];
      v11 = FPExecutableNameForProcessIdentifier();
    }

    else
    {
      v11 = @"<restricted>";
    }

    uRLByDeletingLastPathComponent = fp_current_or_default_log();
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_DEBUG))
    {
      processIdentifier7 = [self processIdentifier];
      fp_shortDescription5 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier7;
      *&buf[8] = 2112;
      *&buf[10] = v11;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription5;
      _os_log_debug_impl(&dword_1AAAE1000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has sandbox access to %@", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  v23 = 1;
LABEL_68:

  v39 = *MEMORY[0x1E69E9840];
  return v23;
}

- (uint64_t)fp_hasOneOfEntitlements:()FPAdditions nonSandboxedAccess:logLevel:
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a3;
  v8 = [(__CFString *)v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [self fp_valueForEntitlement:{*(*(&v20 + 1) + 8 * v11), v20}];
        if (v12)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue]& 1) != 0)
          {
            v14 = 1;
            v13 = v7;
            goto LABEL_26;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(__CFString *)v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [self fp_valueForEntitlement:@"com.apple.internal.fileprovider.debug"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFString *)v13 BOOLValue])
      {
        if (!a5)
        {
          v14 = 1;
          goto LABEL_27;
        }

        if (a5 == 2)
        {
          [self processIdentifier];
          v12 = FPExecutableNameForProcessIdentifier();
        }

        else
        {
          v12 = @"<restricted>";
        }

        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          processIdentifier = [self processIdentifier];
          *buf = 67109634;
          v25 = processIdentifier;
          v26 = 2112;
          v27 = v12;
          v28 = 2112;
          v29 = @"com.apple.internal.fileprovider.debug";
          _os_log_impl(&dword_1AAAE1000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] Allowing request from PID %d (%@) because it has the %@ entitlement.", buf, 0x1Cu);
        }

        v14 = 1;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }
    }
  }

  if (a5)
  {
    if (a5 == 2)
    {
      [self processIdentifier];
      v13 = FPExecutableNameForProcessIdentifier();
    }

    else
    {
      v13 = @"<restricted>";
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [self processIdentifier];
      *buf = 67109634;
      v25 = processIdentifier2;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v7;
      _os_log_error_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_ERROR, "[ERROR] Rejecting request from PID %d (%@) because it does not have any of these entitlements: %@", buf, 0x1Cu);
    }

    v14 = 0;
    goto LABEL_26;
  }

  v14 = 0;
LABEL_28:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)fp_bundleRecord
{
  v2 = objc_getAssociatedObject(self, kFPBundleRecordAssociatedObjectKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E6963620];
    [self auditToken];
    v4 = [v5 bundleRecordForAuditToken:&v7 error:0];
    objc_setAssociatedObject(self, kFPBundleRecordAssociatedObjectKey, v4, 0x301);
  }

  return v4;
}

- (void)fp_annotateInvocation:()FPAdditions withLogSection:
{
  v5 = a3;
  methodSignature = [v5 methodSignature];
  v7 = [methodSignature fp_indexOfLastArgumentWithType:"@?"];
  selector = [v5 selector];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(NSXPCConnection(FPAdditions) *)selector fp_annotateInvocation:a4 withLogSection:v9];
    }
  }

  else
  {
    v24 = 0;
    [v5 getArgument:&v24 atIndex:v7];
    v10 = _Block_copy(v24);
    _Block_signature(v10);
    v11 = fp_current_or_default_log();
    v18 = 0;
    v19 = &v18;
    v20 = 0x3042000000;
    v21 = __Block_byref_object_copy__23;
    v22 = __Block_byref_object_dispose__23;
    v23 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = v11;
    v16 = v10;
    obj = __NSMakeSpecialForwardingCaptureBlock();
    [v5 _addAttachedObject:{obj, v14, 3221225472, __69__NSXPCConnection_FPAdditions__fp_annotateInvocation_withLogSection___block_invoke, &unk_1E793DB28}];
    [v5 setArgument:&obj atIndex:v7];
    objc_storeWeak(v19 + 5, obj);
    WeakRetained = objc_loadWeakRetained(v19 + 5);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    objc_setAssociatedObject(WeakRetained, &kFileProviderLogSectionKey, v13, 0x301);

    _Block_object_dispose(&v18, 8);
    objc_destroyWeak(&v23);
  }
}

- (void)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] can't create physical URL from %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fp_applicationGroups
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"com.apple.security.application-groups";
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] malformed %@ entitlement on %@", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)fp_annotateInvocation:()FPAdditions withLogSection:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v7 = 134218242;
  v8 = a2;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc to %@ without reply", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end