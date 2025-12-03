@interface AMSMediaResponseDecoder
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation AMSMediaResponseDecoder

- (id)resultFromResult:(id)result error:(id *)error
{
  resultCopy = result;
  response = [resultCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    response2 = [resultCopy response];
    v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{200, 100}];
    statusCode = [response2 statusCode];
    if (statusCode == 401)
    {
      v11 = @"Media token is expired.";
    }

    else
    {
      statusCode = [response2 statusCode];
      if (statusCode == 403)
      {
        v11 = @"Media token is invalid.";
      }

      else
      {
        if ([response2 statusCode] != 404)
        {
          if ([v9 containsIndex:{objc_msgSend(response2, "statusCode")}])
          {
            v12 = 0;
          }

          else
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Response status code is: %lu", objc_msgSend(response2, "statusCode")];
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
        statusCode = 405;
      }
    }

    v12 = AMSError(statusCode, @"Invalid Status Code", v11, 0);
    goto LABEL_13;
  }

  v12 = AMSError(301, @"Invalid Response", @"Response is not of type NSHTTPURLResponse.", 0);
  if (!v12)
  {
LABEL_14:
    v14 = [[AMSMediaResult alloc] initWithResult:resultCopy];
    goto LABEL_15;
  }

LABEL_5:
  if (error)
  {
    v13 = v12;
    v14 = 0;
    *error = v12;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

@end