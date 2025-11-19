@interface NSHTTPURLResponse(AuthKit)
- (id)_ak_dataForEncodedHeaderWithKey:()AuthKit;
- (id)ak_acceptedTermsInfo;
- (id)ak_stringForEncodedHeaderWithKey:()AuthKit;
@end

@implementation NSHTTPURLResponse(AuthKit)

- (id)ak_stringForEncodedHeaderWithKey:()AuthKit
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = [v9 _ak_dataForEncodedHeaderWithKey:location[0]];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v3 initWithData:v7 encoding:4];
  v5 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)ak_acceptedTermsInfo
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = [a1 _ak_dataForEncodedHeaderWithKey:@"X-Apple-I-Accepted-Terms"];
  v3 = [MEMORY[0x1E6985E00] dictionaryFromObject:v4[0] ofType:@"application/json"];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_ak_dataForEncodedHeaderWithKey:()AuthKit
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [v7 valueForHTTPHeaderField:location[0]];
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

@end