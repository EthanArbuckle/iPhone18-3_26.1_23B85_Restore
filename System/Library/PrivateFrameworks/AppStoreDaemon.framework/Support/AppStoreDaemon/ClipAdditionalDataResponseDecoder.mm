@interface ClipAdditionalDataResponseDecoder
- (id)resultFromResult:(id)a3 error:(id *)a4;
@end

@implementation ClipAdditionalDataResponseDecoder

- (id)resultFromResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_self();
  v6 = [v5 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 response];
    v9 = [[NSIndexSet alloc] initWithIndexesInRange:{200, 100}];
    v10 = [v9 containsIndex:{objc_msgSend(v8, "statusCode")}];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Invalid Status Code: %lu", [v8 statusCode]);
      v11 = ASDErrorWithDescription();
      v16 = v11;
    }

    v14 = v11;
    if (v10)
    {
      v17 = v5;
      objc_opt_self();
      v18 = [v17 object];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if (v19)
      {
        v20 = [v17 object];
        v21 = sub_100237FA0(v20, @"status", 0);
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
    if (a4)
    {
      v27 = v14;
      v28 = 0;
      *a4 = v14;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = [[ClipAdditionalDataResult alloc] initWithResult:v5];
  }

  return v28;
}

@end