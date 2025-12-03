@interface SHServerErrorResponse
- (NSError)error;
- (SHServerErrorResponse)initWithErrorDictionary:(id)dictionary;
- (int64_t)errorCodeForResponseCode:(id)code;
@end

@implementation SHServerErrorResponse

- (SHServerErrorResponse)initWithErrorDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SHServerErrorResponse;
  v6 = [(SHServerErrorResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_errorDictionary, dictionary);
  }

  return v7;
}

- (NSError)error
{
  v3 = +[NSMutableDictionary dictionary];
  errorDictionary = [(SHServerErrorResponse *)self errorDictionary];
  v5 = [errorDictionary objectForKeyedSubscript:@"detail"];

  if (v5)
  {
    errorDictionary2 = [(SHServerErrorResponse *)self errorDictionary];
    v7 = [errorDictionary2 objectForKeyedSubscript:@"detail"];
    [v3 setValue:v7 forKey:NSLocalizedDescriptionKey];
  }

  errorDictionary3 = [(SHServerErrorResponse *)self errorDictionary];
  v9 = [errorDictionary3 objectForKeyedSubscript:@"code"];
  v10 = [SHError errorWithCode:[(SHServerErrorResponse *)self errorCodeForResponseCode:v9] underlyingError:0 keyOverrides:v3];

  return v10;
}

- (int64_t)errorCodeForResponseCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"sh.001"])
  {
    v4 = 200;
  }

  else if ([codeCopy isEqualToString:@"sh.002"])
  {
    v4 = 201;
  }

  else
  {
    v4 = 202;
  }

  return v4;
}

@end