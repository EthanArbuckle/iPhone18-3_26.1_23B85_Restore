@interface APWebViewResourceLoadCAReporter
+ (BOOL)_isHTTPOrHTTPSURL:(id)l;
+ (void)_parseResourceLoadResultForError:(id)error response:(id)response result:(int64_t *)result errorDomain:(id *)domain errorCode:(int64_t *)code;
@end

@implementation APWebViewResourceLoadCAReporter

+ (BOOL)_isHTTPOrHTTPSURL:(id)l
{
  scheme = [l scheme];
  v4 = scheme;
  if (scheme)
  {
    if ([scheme caseInsensitiveCompare:@"http"])
    {
      v5 = [v4 caseInsensitiveCompare:@"https"] == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_parseResourceLoadResultForError:(id)error response:(id)response result:(int64_t *)result errorDomain:(id *)domain errorCode:(int64_t *)code
{
  errorCopy = error;
  responseCopy = response;
  *result = 0;
  *domain = 0;
  *code = -1;
  if (errorCopy)
  {
    domain = [errorCopy domain];

    if (domain)
    {
      domain2 = [errorCopy domain];
      v14 = [domain2 length];

      if (v14)
      {
        domain3 = [errorCopy domain];
        *domain = [domain3 copy];

LABEL_12:
        *code = [errorCopy code];
LABEL_13:
        v18 = 2;
LABEL_14:
        *result = v18;
        goto LABEL_15;
      }

      v17 = @"AdEmptyDomainErrors";
    }

    else
    {
      v17 = @"AdNilDomainErrors";
    }

    *domain = v17;
    goto LABEL_12;
  }

  if (!responseCopy)
  {
    *domain = @"AdWebViewErrors";
    *code = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *domain = @"AdWebViewErrors";
    *code = 0;
    goto LABEL_20;
  }

  statusCode = [responseCopy statusCode];
  if ((statusCode - 600) <= 0xFFFFFFFFFFFFFE0BLL)
  {
    *domain = @"AdWebViewErrors";
    *code = 2;
LABEL_20:
    v18 = 3;
    goto LABEL_14;
  }

  if ((statusCode - 200) <= 0x63)
  {
    v18 = 1;
    goto LABEL_14;
  }

  *result = 3;
  *code = statusCode;
  *domain = @"AdHTTPErrors";
LABEL_15:
}

@end