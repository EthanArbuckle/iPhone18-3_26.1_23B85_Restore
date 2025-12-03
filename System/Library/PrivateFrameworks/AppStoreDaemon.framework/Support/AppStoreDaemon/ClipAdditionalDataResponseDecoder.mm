@interface ClipAdditionalDataResponseDecoder
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation ClipAdditionalDataResponseDecoder

- (id)resultFromResult:(id)result error:(id *)error
{
  resultCopy = result;
  objc_opt_self();
  response = [resultCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    response2 = [resultCopy response];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{200, 100}];
    v10 = [v9 containsIndex:{objc_msgSend(response2, "statusCode")}];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Invalid Status Code: %lu", [response2 statusCode]);
      v11 = ASDErrorWithDescription();
      v16 = v11;
    }

    v14 = v11;
    if (v10)
    {
      v17 = resultCopy;
      objc_opt_self();
      object = [v17 object];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        object2 = [v17 object];
        v21 = sub_100237FA0(object2, @"status", 0);
        v22 = v14;
        if (v21)
        {
          v23 = [NSString stringWithFormat:@"Invalid Response Status: %lu", v21];
          v22 = ASDErrorWithDescription();
          v24 = v22;
        }
      }

      else
      {
        v22 = ASDErrorWithDescription();
        v25 = v22;
      }

      v26 = v22;
      v14 = v26;
    }
  }

  else
  {
    v12 = ASDErrorWithDescription();
    v13 = v12;

    v14 = v12;
  }

  if (v14)
  {
    if (error)
    {
      v27 = v14;
      v28 = 0;
      *error = v14;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = [[ClipAdditionalDataResult alloc] initWithResult:resultCopy];
  }

  return v28;
}

@end