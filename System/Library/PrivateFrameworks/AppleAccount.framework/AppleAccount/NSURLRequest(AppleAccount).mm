@interface NSURLRequest(AppleAccount)
- (id)aa_HTTPBody;
@end

@implementation NSURLRequest(AppleAccount)

- (id)aa_HTTPBody
{
  v12 = *MEMORY[0x1E69E9840];
  hTTPBody = [self HTTPBody];
  v3 = [hTTPBody copy];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    hTTPBodyStream = [self HTTPBodyStream];
    if (hTTPBodyStream)
    {
      v6 = [self valueForHTTPHeaderField:@"Content-Length"];
      integerValue = [v6 integerValue];

      v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:integerValue];
      [hTTPBodyStream open];
      if ([hTTPBodyStream hasBytesAvailable])
      {
        do
        {
          [v8 appendBytes:v11 length:{objc_msgSend(hTTPBodyStream, "read:maxLength:", v11, 1024)}];
        }

        while (([hTTPBodyStream hasBytesAvailable] & 1) != 0);
      }

      [hTTPBodyStream close];
      v4 = [v8 copy];
    }

    else
    {
      v4 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end