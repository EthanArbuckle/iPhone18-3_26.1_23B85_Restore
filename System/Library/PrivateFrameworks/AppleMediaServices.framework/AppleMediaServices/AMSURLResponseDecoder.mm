@interface AMSURLResponseDecoder
- (AMSURLResponseDecoder)init;
- (id)resultFromResult:(id)a3 error:(id *)a4;
@end

@implementation AMSURLResponseDecoder

- (AMSURLResponseDecoder)init
{
  v7.receiver = self;
  v7.super_class = AMSURLResponseDecoder;
  v2 = [(AMSURLResponseDecoder *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{200, 100}];
    allowedStatusCodes = v2->_allowedStatusCodes;
    v2->_allowedStatusCodes = v3;

    allowedContentTypes = v2->_allowedContentTypes;
    v2->_allowedContentTypes = 0;
  }

  return v2;
}

- (id)resultFromResult:(id)a3 error:(id *)a4
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = [v6 response];
  v10 = [(AMSURLResponseDecoder *)self allowedStatusCodes];
  if (v10)
  {
    v11 = [(AMSURLResponseDecoder *)self allowedStatusCodes];
    v12 = [v11 containsIndex:{objc_msgSend(v9, "statusCode")}];

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v34[0] = @"AMSStatusCode";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "statusCode")}];
      v35[0] = v13;
      v34[1] = @"AMSURL";
      v14 = [v6 response];
      v15 = [v14 URL];
      v16 = AMSHashIfNeeded(v15);
      v35[1] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

      v10 = AMSCustomError(@"AMSErrorDomain", 301, @"Invalid Status Code", @"The response has an invalid status code", v17, 0);
    }
  }

  v18 = [v9 ams_valueForHTTPHeaderField:@"Content-Type"];
  v19 = [(AMSURLResponseDecoder *)self allowedContentTypes];
  if (v19)
  {
    v20 = v19;
    v21 = [(AMSURLResponseDecoder *)self allowedContentTypes];
    v22 = [v21 containsObject:v18];

    if ((v22 & 1) == 0)
    {
      v23 = &stru_1F071BA78;
      if (v18)
      {
        v23 = v18;
      }

      v33[0] = v23;
      v32[0] = @"AMSContentType";
      v32[1] = @"AMSURL";
      v24 = [v6 response];
      v25 = [v24 URL];
      v26 = AMSHashIfNeeded(v25);
      v33[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

      v28 = AMSCustomError(@"AMSErrorDomain", 301, @"Invalid Content Type", @"The response has an invalid content type", v27, 0);

      v10 = v28;
    }
  }

  if (v10)
  {
    if (a4)
    {
      v29 = v10;
      v30 = 0;
      *a4 = v10;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
LABEL_14:
    v30 = v6;
    v10 = 0;
  }

  return v30;
}

@end