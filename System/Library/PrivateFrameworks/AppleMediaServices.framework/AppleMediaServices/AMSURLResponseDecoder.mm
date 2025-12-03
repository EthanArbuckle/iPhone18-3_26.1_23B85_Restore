@interface AMSURLResponseDecoder
- (AMSURLResponseDecoder)init;
- (id)resultFromResult:(id)result error:(id *)error;
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

- (id)resultFromResult:(id)result error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  response = [resultCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  response2 = [resultCopy response];
  allowedStatusCodes = [(AMSURLResponseDecoder *)self allowedStatusCodes];
  if (allowedStatusCodes)
  {
    allowedStatusCodes2 = [(AMSURLResponseDecoder *)self allowedStatusCodes];
    v12 = [allowedStatusCodes2 containsIndex:{objc_msgSend(response2, "statusCode")}];

    if (v12)
    {
      allowedStatusCodes = 0;
    }

    else
    {
      v34[0] = @"AMSStatusCode";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(response2, "statusCode")}];
      v35[0] = v13;
      v34[1] = @"AMSURL";
      response3 = [resultCopy response];
      v15 = [response3 URL];
      v16 = AMSHashIfNeeded(v15);
      v35[1] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

      allowedStatusCodes = AMSCustomError(@"AMSErrorDomain", 301, @"Invalid Status Code", @"The response has an invalid status code", v17, 0);
    }
  }

  v18 = [response2 ams_valueForHTTPHeaderField:@"Content-Type"];
  allowedContentTypes = [(AMSURLResponseDecoder *)self allowedContentTypes];
  if (allowedContentTypes)
  {
    v20 = allowedContentTypes;
    allowedContentTypes2 = [(AMSURLResponseDecoder *)self allowedContentTypes];
    v22 = [allowedContentTypes2 containsObject:v18];

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
      response4 = [resultCopy response];
      v25 = [response4 URL];
      v26 = AMSHashIfNeeded(v25);
      v33[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

      v28 = AMSCustomError(@"AMSErrorDomain", 301, @"Invalid Content Type", @"The response has an invalid content type", v27, 0);

      allowedStatusCodes = v28;
    }
  }

  if (allowedStatusCodes)
  {
    if (error)
    {
      v29 = allowedStatusCodes;
      v30 = 0;
      *error = allowedStatusCodes;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
LABEL_14:
    v30 = resultCopy;
    allowedStatusCodes = 0;
  }

  return v30;
}

@end