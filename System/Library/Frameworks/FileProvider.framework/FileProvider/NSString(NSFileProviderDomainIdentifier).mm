@interface NSString(NSFileProviderDomainIdentifier)
- (uint64_t)fp_isValidDomainIdentifierWithError:()NSFileProviderDomainIdentifier;
@end

@implementation NSString(NSFileProviderDomainIdentifier)

- (uint64_t)fp_isValidDomainIdentifierWithError:()NSFileProviderDomainIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/:"];
  v6 = [a1 rangeOfCharacterFromSet:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = a1;
      v16 = 2112;
      v17 = @"/:";
      _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Domain identifier '%@' may not contain any of the characters '%@'", buf, 0x16u);
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"Domain identifier '%@' may not contain any of the characters '%@'", a1, @"/:"}];
      goto LABEL_12;
    }

LABEL_13:
    result = 0;
    goto LABEL_15;
  }

  if (([a1 isEqualToString:@"."] & 1) == 0 && !objc_msgSend(a1, "isEqualToString:", @".."))
  {
    result = 1;
    goto LABEL_15;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = a1;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v9 = LABEL_12:;
  v10 = v9;
  result = 0;
  *a3 = v9;
LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end