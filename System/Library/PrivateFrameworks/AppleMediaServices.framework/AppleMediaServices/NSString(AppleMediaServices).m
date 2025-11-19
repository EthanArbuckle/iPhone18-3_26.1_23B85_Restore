@interface NSString(AppleMediaServices)
+ (id)_replaceBreakingSpaceMarkupForMutableAttributedString:()AppleMediaServices;
+ (id)_replaceMarkupForMutableAttributedString:()AppleMediaServices markupType:;
- (id)ams_dataFromBase64URLEncodedString;
- (id)ams_replaceAccountPatternWithUsername:()AppleMediaServices;
- (id)ams_replacingMarkupUsingAccount:()AppleMediaServices shouldUppercase:;
- (id)ams_sha256HashStringUsingEncoding:()AppleMediaServices error:;
- (id)ams_sha512HashStringUsingEncoding:()AppleMediaServices error:;
- (id)ams_stringByRemovingCharactersInSet:()AppleMediaServices;
- (uint64_t)ams_isPercentEncodedForAllowedCharacters:()AppleMediaServices;
- (void)ams_enumerateRangesOfString:()AppleMediaServices options:usingBlock:;
@end

@implementation NSString(AppleMediaServices)

- (uint64_t)ams_isPercentEncodedForAllowedCharacters:()AppleMediaServices
{
  v4 = a3;
  v5 = [a1 stringByRemovingPercentEncoding];
  v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  v7 = [a1 isEqualToString:v6];
  return v7;
}

- (void)ams_enumerateRangesOfString:()AppleMediaServices options:usingBlock:
{
  v16 = a3;
  v8 = a5;
  if ([a1 length])
  {
    v9 = [a1 rangeOfString:v16 options:a4 range:{0, objc_msgSend(a1, "length")}];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      v12 = v10;
      v13 = 0;
      do
      {
        v8[2](v8, v11, v12);
        if ((a4 & 4) != 0)
        {
          v14 = v11 - 1;
        }

        else
        {
          v13 = v11 + v12;
          v14 = [a1 length] - (v11 + v12);
        }

        v11 = [a1 rangeOfString:v16 options:a4 range:{v13, v14}];
        v12 = v15;
      }

      while (v11 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }
}

- (id)ams_replaceAccountPatternWithUsername:()AppleMediaServices
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F071BA78;
  }

  if ([a1 rangeOfString:@"%%appleId%%" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a1;
  }

  else
  {
    v7 = [MEMORY[0x1E698DE10] formattedUsernameFromUsername:v5];
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = AMSLogKey();
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "NSString+AppleMediaServices: [%{public}@] Failed to determine display username", &v12, 0xCu);
      }

      v7 = v5;
    }

    v6 = [a1 stringByReplacingOccurrencesOfString:@"%%appleId%%" withString:v7 options:1 range:{0, objc_msgSend(a1, "length")}];
  }

  return v6;
}

- (id)ams_replacingMarkupUsingAccount:()AppleMediaServices shouldUppercase:
{
  v6 = [a3 username];
  v7 = [a1 ams_replaceAccountPatternWithUsername:v6];

  if (a4)
  {
    v8 = [v7 localizedUppercaseString];

    v7 = v8;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
  v10 = [MEMORY[0x1E696AEC0] _replaceMarkupForMutableAttributedString:v9 markupType:0];

  v11 = [MEMORY[0x1E696AEC0] _replaceMarkupForMutableAttributedString:v10 markupType:1];

  v12 = [MEMORY[0x1E696AEC0] _replaceBreakingSpaceMarkupForMutableAttributedString:v11];

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v12];

  return v13;
}

- (id)ams_sha256HashStringUsingEncoding:()AppleMediaServices error:
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [a1 dataUsingEncoding:?];
  if (!v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v4 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      v16 = AMSHashIfNeeded(a1);
      *buf = 138543874;
      v36 = v15;
      v37 = 2114;
      v38 = v16;
      v39 = 2048;
      v40 = a3;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to convert string to data. string = %{public}@ | encoding = %lu", buf, 0x20u);
      if (v11)
      {

        v15 = v4;
      }
    }

    if (a4)
    {
      *a4 = AMSError(0, @"Conversion Error", @"Unable to convert string to data.", 0);
    }
  }

  if (CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), buf))
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 32; ++i)
    {
      [v17 appendFormat:@"%02x", buf[i]];
    }

    v19 = [v17 copy];
  }

  else
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        v4 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, v4];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      v27 = AMSHashIfNeeded(a1);
      *v29 = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to hash data. string = %{public}@ | encoding = %lu", v29, 0x20u);
      if (v22)
      {

        v26 = v4;
      }
    }

    if (a4)
    {
      AMSError(0, @"Hash Error", @"Unable to string to a hashed representation.", 0);
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)ams_sha512HashStringUsingEncoding:()AppleMediaServices error:
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = [a1 dataUsingEncoding:?];
  if (!v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v4 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      v16 = AMSHashIfNeeded(a1);
      *buf = 138543874;
      v36 = v15;
      v37 = 2114;
      v38 = v16;
      v39 = 2048;
      v40 = a3;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to convert string to data. string = %{public}@ | encoding = %lu", buf, 0x20u);
      if (v11)
      {

        v15 = v4;
      }
    }

    if (a4)
    {
      *a4 = AMSError(0, @"Conversion Error", @"Unable to convert string to data.", 0);
    }
  }

  if (CC_SHA512([v8 bytes], objc_msgSend(v8, "length"), buf))
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 64; ++i)
    {
      [v17 appendFormat:@"%02x", buf[i]];
    }

    v19 = [v17 copy];
  }

  else
  {
    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        v4 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, v4];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      v27 = AMSHashIfNeeded(a1);
      *v29 = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to hash data. string = %{public}@ | encoding = %lu", v29, 0x20u);
      if (v22)
      {

        v26 = v4;
      }
    }

    if (a4)
    {
      AMSError(0, @"Hash Error", @"Unable to string to a hashed representation.", 0);
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)ams_stringByRemovingCharactersInSet:()AppleMediaServices
{
  v1 = [a1 componentsSeparatedByCharactersInSet:?];
  v2 = [v1 componentsJoinedByString:&stru_1F071BA78];

  return v2;
}

- (id)ams_dataFromBase64URLEncodedString
{
  v1 = [a1 copy];
  if (([v1 length] & 3) != 0 && (v2 = objc_msgSend(v1, "length") & 3) != 0)
  {
    do
    {
      v3 = [v1 stringByAppendingString:@"="];

      v1 = v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = v1;
  }

  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:1];

  return v6;
}

+ (id)_replaceBreakingSpaceMarkupForMutableAttributedString:()AppleMediaServices
{
  v3 = a3;
  v4 = [v3 string];
  v5 = [v4 lowercaseString];

  v6 = [v5 rangeOfString:@"[br/]"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = 0;
    do
    {
      v10 = v5;
      [v3 replaceCharactersInRange:v8 withString:{v7, @"\n"}];
      v11 = [v3 string];
      v5 = [v11 lowercaseString];

      v12 = [v5 rangeOfString:@"[br/]"];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v8 = v12;
    }

    while (v9++ < 9);
  }

  return v3;
}

+ (id)_replaceMarkupForMutableAttributedString:()AppleMediaServices markupType:
{
  v5 = a3;
  v6 = v5;
  v7 = @"[/i]";
  v8 = @"[b]";
  v9 = @"[/b]";
  if (a4)
  {
    v9 = 0;
    v8 = 0;
  }

  if (a4 != 1)
  {
    v7 = v9;
  }

  v29 = v7;
  if (a4 == 1)
  {
    v10 = @"[i]";
  }

  else
  {
    v10 = v8;
  }

  v11 = [v5 string];
  v12 = [v11 lowercaseString];

  if ([v12 rangeOfString:v10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_22;
      }

      v13 = @"Helvetica-Italic";
    }

    else
    {
      v13 = @"Helvetica-Bold";
    }

    v14 = CTFontCreateWithName(v13, 14.0, 0);
    if (v14)
    {
      v15 = v14;
      v16 = [v12 rangeOfString:v10];
      v18 = v17;
      v19 = [v12 rangeOfString:v29];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v19;
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = 0;
          do
          {
            v23 = v12;
            [v6 replaceCharactersInRange:v21 withString:{v20, &stru_1F071BA78}];
            [v6 replaceCharactersInRange:v16 withString:{v18, &stru_1F071BA78}];
            v24 = [v6 string];
            v12 = [v24 lowercaseString];

            v16 = [v12 rangeOfString:v10];
            v18 = v25;
            v26 = [v12 rangeOfString:v29];
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v21 = v26;
            if (v26 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          while (v22++ < 9);
        }
      }

      CFRelease(v15);
    }
  }

LABEL_22:

  return v6;
}

@end