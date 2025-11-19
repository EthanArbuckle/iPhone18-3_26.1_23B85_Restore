@interface NSError(HKHTTP)
+ (id)hk_HTTPErrorRepresentingResponse:()HKHTTP request:;
@end

@implementation NSError(HKHTTP)

+ (id)hk_HTTPErrorRepresentingResponse:()HKHTTP request:
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 statusCode] < 100 || objc_msgSend(v7, "statusCode") >= 400)
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [NSError(HKHTTP) hk_HTTPErrorRepresentingResponse:a2 request:a1];
      }
    }

    v10 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(v7, "statusCode")}];
    v11 = [v10 capitalizedString];

    if ([v7 statusCode] < 100 || objc_msgSend(v7, "statusCode") >= 600)
    {

      v11 = @"Invalid Status Code";
    }

    v21 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld %@", objc_msgSend(v7, "statusCode"), v11];
    v22[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v13 mutableCopy];

    if (v8)
    {
      v15 = [v8 URL];
      v16 = [v15 copy];
      [v14 setObject:v16 forKeyedSubscript:@"HKHTTPErrorRequestURL"];
    }

    if (v7)
    {
      v17 = [v7 allHeaderFields];
      v18 = [v17 copy];
      [v14 setObject:v18 forKeyedSubscript:@"HKHTTPErrorResponseHeaderFields"];
    }

    v9 = [a1 errorWithDomain:@"HKHTTPErrorDomain" code:objc_msgSend(v7 userInfo:{"statusCode"), v14}];
  }

  else
  {
    v9 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)hk_HTTPErrorRepresentingResponse:()HKHTTP request:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSError+HKHTTP.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"response == nil || [response isKindOfClass:[NSHTTPURLResponse class]]"}];
}

@end