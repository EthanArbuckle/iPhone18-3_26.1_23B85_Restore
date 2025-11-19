@interface NSError
+ (NSError)errorWithZhuGeErrorCode:(unint64_t)a3 underlyingError:(id)a4;
+ (id)descriptionFromZhuGeErrorCode:(unint64_t)a3;
- (id)_ZhuGeDescriptionWithLayer:(unint64_t)a3;
@end

@implementation NSError

+ (NSError)errorWithZhuGeErrorCode:(unint64_t)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = &MGCopyAnswerWithError_ptr;
  v7 = [NSError errorWithDomain:@"com.apple.zhuge" code:0 userInfo:0];
  if (a3 == 1)
  {
    v8 = off_100019398[0];
    v9 = [NSNumber numberWithUnsignedInteger:1];
    v10 = [NSString stringWithFormat:@"Reserved ZhuGeErrorCode %@ shall not be the argument", v9];

    v11 = [NSString stringWithFormat:@"Please check newly added code that calling ZhuGeError API"];
LABEL_10:
    v16 = v7;
    goto LABEL_11;
  }

  if (a3 >= 0x51)
  {
    v8 = off_100019398[0];
    v12 = [NSNumber numberWithUnsignedInteger:a3];
    v10 = [NSString stringWithFormat:@"ZhuGeErrorCode %@ exceed maximum", v12];
LABEL_9:

    v11 = @"Please file a radar against ZhuGe|all";
    a3 = 1;
    goto LABEL_10;
  }

  v13 = (&ZhuGeErrorTable + 32 * a3);
  if (*v13 != a3)
  {
    v8 = off_100019398[0];
    v12 = [NSNumber numberWithUnsignedInteger:a3];
    v15 = [NSNumber numberWithInteger:*v13];
    v10 = [NSString stringWithFormat:@"Index %@ of ZhuGeErrorCode table got a wrong code %@", v12, v15];

    goto LABEL_9;
  }

  if (isObjectNilOrZhuGeNull(v5))
  {
    v14 = v7;

LABEL_18:
    v8 = v13[1];
    v10 = v13[2];
    v11 = v13[3];
    v5 = v14;
    v16 = v14;
    v6 = &MGCopyAnswerWithError_ptr;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v5;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25[0] = NSLocalizedDescriptionKey;
    v25[1] = NSLocalizedFailureReasonErrorKey;
    v26[0] = v5;
    v26[1] = off_1000193C0[0];
    v25[2] = NSLocalizedRecoverySuggestionErrorKey;
    v25[3] = NSUnderlyingErrorKey;
    v26[2] = off_1000193C8;
    v26[3] = v7;
    v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v14 = [NSError errorWithDomain:@"com.apple.zhuge" code:2 userInfo:v22];

    goto LABEL_18;
  }

  v8 = off_100019398[0];
  v11 = @"Please check latest code that using ZhuGe error API";
  a3 = 1;
  v16 = v7;
  v10 = @"UnderlyingError can only be NSError, NSString, ZHUGE_NULL or nil";
LABEL_11:
  v17 = v16;
  v18 = v6[93];
  v23[0] = NSLocalizedDescriptionKey;
  v23[1] = NSLocalizedFailureReasonErrorKey;
  v24[0] = v8;
  v24[1] = v10;
  v23[2] = NSLocalizedRecoverySuggestionErrorKey;
  v23[3] = NSUnderlyingErrorKey;
  v24[2] = v11;
  v24[3] = v17;
  v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v20 = [v18 errorWithDomain:@"com.apple.zhuge" code:a3 userInfo:v19];

  return v20;
}

+ (id)descriptionFromZhuGeErrorCode:(unint64_t)a3
{
  if (a3 <= 0x50)
  {
    v6 = (&ZhuGeErrorTable + 32 * a3);
    if (*v6 == a3)
    {
      v4 = v6[1];
    }

    else
    {
      v4 = @"Invalid ZhuGe Error Code!";
    }
  }

  else
  {
    v4 = @"Illegal ZhuGe Error Code!";
  }

  return v4;
}

- (id)_ZhuGeDescriptionWithLayer:(unint64_t)a3
{
  v5 = 4 * a3;
  v6 = [&stru_100014878 stringByPaddingToLength:4 * a3 withString:@" " startingAtIndex:0];
  v7 = [&stru_100014878 stringByPaddingToLength:(4 * a3) | 2 withString:@" " startingAtIndex:0];
  v8 = [&stru_100014878 stringByPaddingToLength:v5 + 4 withString:@" " startingAtIndex:0];
  v9 = [(NSError *)self domain];
  v10 = [v9 isEqualToString:@"com.apple.zhuge"];

  if (v10)
  {
    v11 = [(NSError *)self userInfo];
    v12 = [v11 objectForKey:NSLocalizedDescriptionKey];

    v13 = [(NSError *)self userInfo];
    v23 = [v13 objectForKey:NSLocalizedFailureReasonErrorKey];

    v14 = [(NSError *)self userInfo];
    v15 = [v14 objectForKey:NSLocalizedRecoverySuggestionErrorKey];

    v16 = [(NSError *)self userInfo];
    v17 = [v16 objectForKey:NSUnderlyingErrorKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 _ZhuGeDescriptionWithLayer:a3 + 1];

      v17 = v18;
    }

    v19 = [(NSError *)self domain];
    v20 = [NSNumber numberWithInteger:[(NSError *)self code]];
    v21 = [NSString stringWithFormat:@"\n%@{\n%@Domain   = %@\n%@Code     = %@\n%@UserInfo = {\n%@Description        = %@\n%@FailureReason      = %@\n%@RecoverySuggestion = %@\n%@UnderlyingError    = %@\n%@}", v6, v7, v19, v7, v20, v7, v8, v12, v8, v23, v8, v15, v8, v17, v6];
  }

  else
  {
    v12 = [(NSError *)self description];
    v21 = [NSString stringWithFormat:@"{\n%@%@\n%@}", v8, v12, v7];
  }

  return v21;
}

@end