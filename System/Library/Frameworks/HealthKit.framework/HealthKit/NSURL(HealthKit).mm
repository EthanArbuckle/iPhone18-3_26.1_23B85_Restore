@interface NSURL(HealthKit)
+ (id)_hk_tapToRadarURLForBundleID:()HealthKit component:title:description:classification:reproducibility:keywords:autoDiagnostics:attachments:collaborationContactHandles:diagnosticExtensionOptions:behavior:;
+ (id)hk_safeURLWithString:()HealthKit;
- (id)hk_fileSizeWithError:()HealthKit;
- (id)hk_valueForFirstInstanceOfParameterNamed:()HealthKit;
- (uint64_t)hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL;
- (uint64_t)hk_isRewrittenHealthCardQRCodeURL;
- (uint64_t)hk_isValidSafariViewControllerURL;
@end

@implementation NSURL(HealthKit)

- (id)hk_valueForFirstInstanceOfParameterNamed:()HealthKit
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  queryItems = [v5 queryItems];
  value = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (value)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:v4];

        if (v12)
        {
          value = [v10 value];
          goto LABEL_11;
        }
      }

      value = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return value;
}

- (uint64_t)hk_isValidSafariViewControllerURL
{
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];
  v3 = [lowercaseString hasPrefix:@"http"];

  return v3;
}

- (uint64_t)hk_isRewrittenHealthCardQRCodeURL
{
  pathComponents = [self pathComponents];
  scheme = [self scheme];
  if (![scheme caseInsensitiveCompare:@"https"])
  {
    host = [self host];
    if ([host caseInsensitiveCompare:@"redirect.health.apple.com"])
    {
LABEL_4:
      v5 = 0;
LABEL_5:

      goto LABEL_6;
    }

    v8 = [pathComponents count];
    if (v8 > 2)
    {
      goto LABEL_10;
    }

    if ([pathComponents count] != 2)
    {
      goto LABEL_4;
    }

    fragment = [self fragment];
    if (fragment)
    {
LABEL_10:
      v9 = [pathComponents objectAtIndexedSubscript:1];
      v5 = [v9 isEqualToString:@"SMARTHealthCard"];

      if (v8 > 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (uint64_t)hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL
{
  pathComponents = [self pathComponents];
  scheme = [self scheme];
  if ([scheme caseInsensitiveCompare:@"https"])
  {
    v4 = 0;
  }

  else
  {
    host = [self host];
    if ([host caseInsensitiveCompare:@"redirect.health.apple.com"] || objc_msgSend(pathComponents, "count") != 2)
    {
      v4 = 0;
    }

    else
    {
      fragment = [self fragment];
      if (fragment)
      {
        v7 = [pathComponents objectAtIndexedSubscript:1];
        v4 = [v7 isEqualToString:@"EU-DCC"];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)hk_fileSizeWithError:()HealthKit
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (([self isFileURL] & 1) == 0)
  {
    [(NSURL(HealthKit) *)a2 hk_fileSizeWithError:self];
  }

  memset(&v18, 0, sizeof(v18));
  if (stat([self fileSystemRepresentation], &v18))
  {
    v6 = __error();
    v7 = MEMORY[0x1E696ABC0];
    if (*v6 == 2)
    {
      v8 = *MEMORY[0x1E696A250];
      v19 = *MEMORY[0x1E696A998];
      v20[0] = self;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v10 = [v7 errorWithDomain:v8 code:4 userInfo:v9];
      v11 = v10;
      if (v10)
      {
        if (a3)
        {
          v12 = v10;
          *a3 = v11;
        }

        else
        {
          _HKLogDroppedError(v10);
        }
      }
    }

    else
    {
      v14 = __error();
      v15 = strerror(*v14);
      [v7 hk_assignError:a3 code:102 format:{@"Failed to retrieve size for file at '%@': %s", self, v15, *&v18.st_dev, v18.st_ino, *&v18.st_uid, *&v18.st_rdev, v18.st_atimespec.tv_sec, v18.st_atimespec.tv_nsec, v18.st_mtimespec.tv_sec, v18.st_mtimespec.tv_nsec, v18.st_ctimespec.tv_sec, v18.st_ctimespec.tv_nsec, v18.st_birthtimespec.tv_sec, v18.st_birthtimespec.tv_nsec}];
    }

    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v18.st_size];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)hk_safeURLWithString:()HealthKit
{
  if (a3)
  {
    v4 = [self URLWithString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_hk_tapToRadarURLForBundleID:()HealthKit component:title:description:classification:reproducibility:keywords:autoDiagnostics:attachments:collaborationContactHandles:diagnosticExtensionOptions:behavior:
{
  v19 = a3;
  v65 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a14;
  if ((v19 == 0) != (a4 != 0))
  {
    [NSURL(HealthKit) _hk_tapToRadarURLForBundleID:a2 component:self title:? description:? classification:? reproducibility:? keywords:? autoDiagnostics:? attachments:? collaborationContactHandles:? diagnosticExtensionOptions:? behavior:?];
  }

  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v26 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v26 removeCharactersInString:{@"=, &"}];
  v27 = [MEMORY[0x1E696AD60] stringWithFormat:@"tap-to-radar://new"];
  if (v19)
  {
    v28 = [v19 stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"?BundleID=%@", v28];
  }

  v64 = v20;
  if (a4)
  {
    v60 = v22;
    v61 = v21;
    if (a4 <= 1330751)
    {
      if (a4 <= 1076586)
      {
        if (a4 != 616513)
        {
          if (a4 == 748570)
          {
            v29 = v23;
            v30 = v24;
            v31 = @"Restricted";
            v32 = @"Health";
          }

          else
          {
            if (a4 != 938492)
            {
              goto LABEL_43;
            }

            v29 = v23;
            v30 = v24;
            v31 = @"Dropbox";
            v32 = @"Health Medical Records";
          }

          goto LABEL_42;
        }

        v29 = v23;
        v30 = v24;
        v31 = @"All";
        goto LABEL_36;
      }

      if (a4 <= 1259111)
      {
        if (a4 == 1076587)
        {
          v29 = v23;
          v30 = v24;
          v31 = @"All";
          v32 = @"Health Sleep";
LABEL_42:
          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          stringValue = [v33 stringValue];
          v35 = [stringValue stringByAddingPercentEncodingWithAllowedCharacters:v26];
          [v27 appendFormat:@"?ComponentID=%@", v35];

          v36 = [(__CFString *)v32 stringByAddingPercentEncodingWithAllowedCharacters:v26];
          [v27 appendFormat:@"&ComponentName=%@", v36];

          v37 = [(__CFString *)v31 stringByAddingPercentEncodingWithAllowedCharacters:v26];
          [v27 appendFormat:@"&ComponentVersion=%@", v37];

          v20 = v64;
          v24 = v30;
          v23 = v29;
          v22 = v60;
          v21 = v61;
          goto LABEL_43;
        }

        if (a4 != 1109271)
        {
          goto LABEL_43;
        }

        v29 = v23;
        v30 = v24;
        v31 = @"watchOS";
LABEL_36:
        v32 = @"Health Medical ID";
        goto LABEL_42;
      }

      if (a4 != 1259112)
      {
        if (a4 != 1318138)
        {
          goto LABEL_43;
        }

        v29 = v23;
        v30 = v24;
        v31 = @"All";
        v32 = @"Health Cardio Recovery";
        goto LABEL_42;
      }

      v29 = v23;
      v30 = v24;
      v31 = @"Sharing";
LABEL_41:
      v32 = @"Health App";
      goto LABEL_42;
    }

    if (a4 > 1495801)
    {
      if (a4 > 1578786)
      {
        if (a4 == 1578787)
        {
          v29 = v23;
          v30 = v24;
          v31 = @"Cloud";
          v32 = @"HealthKit Sync";
        }

        else
        {
          if (a4 != 1855988)
          {
            goto LABEL_43;
          }

          v29 = v23;
          v30 = v24;
          v31 = @"Routes";
          v32 = @"HealthKit Feature Support";
        }
      }

      else if (a4 == 1495802)
      {
        v29 = v23;
        v30 = v24;
        v31 = @"LiveOn";
        v32 = @"Health Chamomile";
      }

      else
      {
        if (a4 != 1568147)
        {
          goto LABEL_43;
        }

        v29 = v23;
        v30 = v24;
        v31 = @"All";
        v32 = @"Health Yodel Test";
      }

      goto LABEL_42;
    }

    switch(a4)
    {
      case 1330752:
        v29 = v23;
        v30 = v24;
        v31 = @"Secure Dropbox";
        break;
      case 1332846:
        v29 = v23;
        v30 = v24;
        v31 = @"iPad";
        goto LABEL_41;
      case 1397974:
        v29 = v23;
        v30 = v24;
        v31 = @"iOS";
        break;
      default:
        goto LABEL_43;
    }

    v32 = @"Health Medications";
    goto LABEL_42;
  }

LABEL_43:
  v38 = [v65 stringByAddingPercentEncodingWithAllowedCharacters:v26];
  [v27 appendFormat:@"&Title=%@", v38];

  if (v20)
  {
    v39 = [v20 stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"&Description=%@", v39];
  }

  if ((a7 - 1) <= 9)
  {
    v40 = [(__CFString *)*(&off_1E737C370 + a7 - 1) stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"&Classification=%@", v40];
  }

  if ((a8 - 1) <= 5)
  {
    v41 = [(__CFString *)*(&off_1E737C3C0 + a8 - 1) stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"&Reproducibility=%@", v41];
  }

  if (v21 && [v21 count])
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __209__NSURL_HealthKit___hk_tapToRadarURLForBundleID_component_title_description_classification_reproducibility_keywords_autoDiagnostics_attachments_collaborationContactHandles_diagnosticExtensionOptions_behavior___block_invoke;
    v66[3] = &unk_1E7379940;
    v67 = v26;
    v42 = [v21 hk_map:v66];
    v43 = [v42 componentsJoinedByString:{@", "}];
    [v27 appendFormat:@"&Keywords=%@", v43];

    v20 = v64;
  }

  if ((a10 - 1) > 2)
  {
    v44 = @"-1";
  }

  else
  {
    v44 = *(&off_1E737C3F0 + a10 - 1);
  }

  v45 = [(__CFString *)v44 stringByAddingPercentEncodingWithAllowedCharacters:v26];
  [v27 appendFormat:@"&AutoDiagnostics=%@", v45];

  v46 = v22;
  v47 = v46;
  v48 = v46;
  if (!v46)
  {
    goto LABEL_59;
  }

  v48 = v46;
  if (![v46 count])
  {
    goto LABEL_59;
  }

  v48 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F05FF230];
  [v48 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v47, &__block_literal_global_39}];

  if (v48)
  {
    v49 = [v48 stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"&Attachments=%@", v49];

    v20 = v64;
LABEL_59:
  }

  v50 = v23;
  v51 = v50;
  v52 = v50;
  if (v50)
  {
    v52 = v50;
    if ([v50 count])
    {
      v52 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F05FF230];
      [v52 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v51, &__block_literal_global_247}];

      if (!v52)
      {
        goto LABEL_65;
      }

      v53 = [v52 stringByAddingPercentEncodingWithAllowedCharacters:v26];
      [v27 appendFormat:@"&CollaborationContactHandles=%@", v53];

      v20 = v64;
    }
  }

LABEL_65:
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = v54;
  if (a13)
  {
    [v54 addObject:@"com.apple.HealthKit.HealthDiagnosticExtension"];
  }

  if ((a13 & 2) != 0)
  {
    [v55 addObject:@"com.apple.DiagnosticExtensions.BluetoothHeadset"];
  }

  if ([v55 count])
  {
    v56 = [v55 componentsJoinedByString:{@", "}];

    if (!v56)
    {
      goto LABEL_73;
    }

    v57 = [v56 stringByAddingPercentEncodingWithAllowedCharacters:v26];
    [v27 appendFormat:@"&ExtensionIdentifiers=%@", v57];

    v55 = v56;
  }

LABEL_73:
  v58 = [MEMORY[0x1E695DFF8] URLWithString:v27];

  return v58;
}

- (void)hk_fileSizeWithError:()HealthKit .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSURL+HealthKit.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"self.isFileURL"}];
}

+ (void)_hk_tapToRadarURLForBundleID:()HealthKit component:title:description:classification:reproducibility:keywords:autoDiagnostics:attachments:collaborationContactHandles:diagnosticExtensionOptions:behavior:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSURL+HealthKit.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"(bundleID == nil && componentID > 0) || (bundleID != nil && componentID == 0)"}];
}

@end