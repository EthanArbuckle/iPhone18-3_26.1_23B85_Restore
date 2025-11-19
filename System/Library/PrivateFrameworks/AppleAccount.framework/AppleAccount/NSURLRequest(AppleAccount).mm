@interface NSURLRequest(AppleAccount)
- (id)aa_HTTPBody;
@end

@implementation NSURLRequest(AppleAccount)

- (id)aa_HTTPBody
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a1 HTTPBody];
  v3 = [v2 copy];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [a1 HTTPBodyStream];
    if (v5)
    {
      v6 = [a1 valueForHTTPHeaderField:@"Content-Length"];
      v7 = [v6 integerValue];

      v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v7];
      [v5 open];
      if ([v5 hasBytesAvailable])
      {
        do
        {
          [v8 appendBytes:v11 length:{objc_msgSend(v5, "read:maxLength:", v11, 1024)}];
        }

        while (([v5 hasBytesAvailable] & 1) != 0);
      }

      [v5 close];
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