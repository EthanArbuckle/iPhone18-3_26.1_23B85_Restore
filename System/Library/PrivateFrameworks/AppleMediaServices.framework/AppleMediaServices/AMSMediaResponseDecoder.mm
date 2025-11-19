@interface AMSMediaResponseDecoder
- (id)resultFromResult:(id)a3 error:(id *)a4;
@end

@implementation AMSMediaResponseDecoder

- (id)resultFromResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 response];
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{200, 100}];
    v10 = [v8 statusCode];
    if (v10 == 401)
    {
      v11 = @"Media token is expired.";
    }

    else
    {
      v10 = [v8 statusCode];
      if (v10 == 403)
      {
        v11 = @"Media token is invalid.";
      }

      else
      {
        if ([v8 statusCode] != 404)
        {
          if ([v9 containsIndex:{objc_msgSend(v8, "statusCode")}])
          {
            v12 = 0;
          }

          else
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Response status code is: %lu", objc_msgSend(v8, "statusCode")];
            v12 = AMSError(301, @"Invalid Status Code", v16, 0);
          }

LABEL_13:

          if (!v12)
          {
            goto LABEL_14;
          }

          goto LABEL_5;
        }

        v11 = @"Media resource not found.";
        v10 = 405;
      }
    }

    v12 = AMSError(v10, @"Invalid Status Code", v11, 0);
    goto LABEL_13;
  }

  v12 = AMSError(301, @"Invalid Response", @"Response is not of type NSHTTPURLResponse.", 0);
  if (!v12)
  {
LABEL_14:
    v14 = [[AMSMediaResult alloc] initWithResult:v5];
    goto LABEL_15;
  }

LABEL_5:
  if (a4)
  {
    v13 = v12;
    v14 = 0;
    *a4 = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

@end