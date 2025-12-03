@interface NSError(PHErrors_Private)
+ (id)_ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:;
+ (id)ph_errorWithCode:()PHErrors_Private localizedDescription:;
+ (id)ph_errorWithDomain:()PHErrors_Private code:userInfo:;
+ (id)ph_genericEntitlementError;
+ (id)ph_genericErrorWithLocalizedDescription:()PHErrors_Private;
+ (id)ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:;
@end

@implementation NSError(PHErrors_Private)

+ (id)ph_genericEntitlementError
{
  if (ph_genericEntitlementError_onceToken != -1)
  {
    dispatch_once(&ph_genericEntitlementError_onceToken, &__block_literal_global_45120);
  }

  v1 = ph_genericEntitlementError_s_error;

  return v1;
}

+ (id)ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:
{
  v11 = *MEMORY[0x1E695E480];
  v12 = a3;
  v13 = CFStringCreateWithFormatAndArguments(v11, 0, a4, &a9);
  v14 = [self _ph_genericErrorWithUnderlyingError:v12 localizedDescription:v13];

  return v14;
}

+ (id)ph_genericErrorWithLocalizedDescription:()PHErrors_Private
{
  v10 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, &a9);
  v11 = [self _ph_genericErrorWithUnderlyingError:0 localizedDescription:v10];

  return v11;
}

+ (id)ph_errorWithCode:()PHErrors_Private localizedDescription:
{
  va_start(va, format);
  v6 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, va);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v8 = [self ph_errorWithDomain:@"PHPhotosErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)_ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v10 = [self ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];

  return v10;
}

+ (id)ph_errorWithDomain:()PHErrors_Private code:userInfo:
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x1E696A250];
  v11 = [(__CFString *)v8 isEqualToString:*MEMORY[0x1E696A250]];
  if (a4 == 3072 && v11)
  {

    v8 = @"PHPhotosErrorDomain";
  }

  if (PHErrorAllowsInternalErrors())
  {
    selfCopy4 = self;
    v13 = v8;
    v14 = a4;
LABEL_6:
    v15 = v9;
LABEL_43:
    v31 = [selfCopy4 errorWithDomain:v13 code:v14 userInfo:v15];
    goto LABEL_44;
  }

  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_40;
  }

  v16 = v8;
  if ([(__CFString *)v16 isEqualToString:@"PHPhotosErrorDomain"])
  {
    if (a4 > 3168)
    {
      if (((a4 - 3300) > 0xB || ((1 << (a4 + 28)) & 0xCEF) == 0) && ((a4 - 3169) > 0x29 || ((1 << (a4 - 97)) & 0x20300000001) == 0) && a4 != 5423)
      {
        goto LABEL_39;
      }
    }

    else if (((a4 - 3105) > 0x3B || ((1 << (a4 - 33)) & 0x800006000000201) == 0) && a4 != -1 && a4 != 3072)
    {
      goto LABEL_39;
    }

    v17 = v9;
    if ([v17 count])
    {
      v40 = v16;
      selfCopy2 = self;
      v42 = v9;
      v43 = v8;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v39 = v17;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:buf count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v45;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v45 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = MEMORY[0x1E695DFD8];
            v25 = *(*(&v44 + 1) + 8 * i);
            v26 = [[v24 alloc] initWithObjects:{@"_PHResourceUrlsErrorKey", 0}];
            v27 = [v26 containsObject:v25];

            if (v27)
            {
              v28 = [v19 objectForKeyedSubscript:v25];
              [dictionary setObject:v28 forKeyedSubscript:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v44 objects:buf count:16];
        }

        while (v21);
      }

      if ([dictionary count])
      {
        v29 = dictionary;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v9 = v42;
      v8 = v43;
      self = selfCopy2;
      v17 = v39;
      v16 = v40;
    }

    else
    {
      v30 = v17;
    }

    v31 = [self errorWithDomain:v16 code:a4 userInfo:v30];

    goto LABEL_44;
  }

  if (([(__CFString *)v16 isEqualToString:*MEMORY[0x1E696A978]]& 1) != 0)
  {

    if (a4 == -1009)
    {
      selfCopy4 = self;
      v13 = v16;
      v14 = -1009;
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  v32 = *MEMORY[0x1E6994990];
  v33 = [(__CFString *)v8 isEqualToString:*MEMORY[0x1E6994990]];
  if ((a4 - 1005) <= 1 && v33 || (v35 = [(__CFString *)v8 isEqualToString:v32], (a4 - 80) <= 2) && v35 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    selfCopy4 = self;
    v13 = v8;
    v14 = a4;
    v15 = 0;
    goto LABEL_43;
  }

  v36 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  if ([v36 length])
  {
    v37 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v36;
      _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "Sanitized PhotoKit Error: %@", buf, 0xCu);
    }
  }

  if (a4 == 3072)
  {
    v38 = 3072;
  }

  else
  {
    v38 = -1;
  }

  v31 = [self errorWithDomain:v10 code:v38 userInfo:0];

LABEL_44:

  return v31;
}

@end