@interface NSAttributedString(AppleMediaServices)
- (id)ams_replaceAccountPatternWithUsername:()AppleMediaServices;
- (id)ams_replaceOccurrencesOfString:()AppleMediaServices withString:options:;
@end

@implementation NSAttributedString(AppleMediaServices)

- (id)ams_replaceAccountPatternWithUsername:()AppleMediaServices
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F071BA78;
  }

  string = [self string];
  v7 = [string rangeOfString:0x1F073D138 options:1];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v9 = [MEMORY[0x1E698DE10] formattedUsernameFromUsername:v5];
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "NSAttributedString+AppleMediaServices: [%{public}@] Failed to determine display username", &v14, 0xCu);
      }

      v9 = v5;
    }

    selfCopy = [self ams_replaceOccurrencesOfString:0x1F073D138 withString:v9 options:1];
  }

  return selfCopy;
}

- (id)ams_replaceOccurrencesOfString:()AppleMediaServices withString:options:
{
  v8 = a4;
  v9 = a3;
  v10 = [self mutableCopy];
  string = [self string];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __92__NSAttributedString_AppleMediaServices__ams_replaceOccurrencesOfString_withString_options___block_invoke;
  v19 = &unk_1E73BE1B0;
  v20 = v10;
  v21 = v8;
  v12 = v8;
  v13 = v10;
  [string ams_enumerateRangesOfString:v9 options:a5 & 4 usingBlock:&v16];

  v14 = [v13 copy];

  return v14;
}

@end