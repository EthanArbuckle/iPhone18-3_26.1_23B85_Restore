@interface AAPhotoResponse
- (AAPhotoResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation AAPhotoResponse

- (AAPhotoResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = AAPhotoResponse;
  v7 = [(AAResponse *)&v40 initWithHTTPResponse:v6 data:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(AAResponse *)v7 data];
    photoData = v8->_photoData;
    v8->_photoData = v9;

    v11 = [v6 allHeaderFields];
    v12 = [v11 objectForKeyedSubscript:@"X-MMe-Setup-Family-Photo"];

    if (v12)
    {
      v13 = [v12 componentsSeparatedByString:{@", "}];
      if ([v13 count] == 4)
      {
        v14 = CGImageSourceCreateWithData(v8->_photoData, 0);
        if (v14)
        {
          v15 = v14;
          v16 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
          v17 = *MEMORY[0x1E696DEC8];
          v18 = [(__CFDictionary *)v16 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
          v19 = [v18 unsignedIntegerValue];

          v20 = [v13 objectAtIndexedSubscript:1];
          v21 = [v20 integerValue];
          v22 = [v13 objectAtIndexedSubscript:3];
          v23 = v19 - (v21 + [v22 integerValue]);

          v24 = [v13 objectAtIndexedSubscript:0];
          v25 = [v24 integerValue];
          v26 = v23;
          v27 = [v13 objectAtIndexedSubscript:2];
          v28 = [v27 integerValue];
          v29 = [v13 objectAtIndexedSubscript:3];
          v36 = v25;
          v37 = v26;
          v38 = v28;
          v39 = [v29 integerValue];

          v30 = [MEMORY[0x1E696B098] valueWithBytes:&v36 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          cropRect = v8->_cropRect;
          v8->_cropRect = v30;

          CFRelease(v15);
        }
      }
    }

    v32 = [v6 allHeaderFields];
    v33 = [v32 objectForKeyedSubscript:@"ETag"];
    serverCacheTag = v8->_serverCacheTag;
    v8->_serverCacheTag = v33;
  }

  return v8;
}

@end