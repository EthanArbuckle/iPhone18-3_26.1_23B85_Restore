@interface NSURLRequest(AMSMockURLRequest)
- (id)body;
@end

@implementation NSURLRequest(AMSMockURLRequest)

- (id)body
{
  hTTPBodyStream = [self HTTPBodyStream];

  if (hTTPBodyStream)
  {
    hTTPBodyStream2 = [self HTTPBodyStream];
    data = [MEMORY[0x1E695DF88] data];
    [hTTPBodyStream2 open];
    v5 = malloc_type_malloc(0x1000uLL, 0x9AA6B9FDuLL);
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:@"Malloc Failure" format:{@"Could not allocate %zu bytes to read HTTPBodyStream", 4096}];
    }

    if ([hTTPBodyStream2 hasBytesAvailable])
    {
      do
      {
        v6 = [hTTPBodyStream2 read:v5 maxLength:4096];
        if (v6 < 1)
        {
          if ((v6 & 0x8000000000000000) == 0)
          {
            break;
          }

          [MEMORY[0x1E695DF30] raise:@"StreamReadError" format:{@"An error occurred while reading HTTPBodyStream (%ld)", v6}];
        }

        else
        {
          v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v6];
          [data appendData:v7];
        }
      }

      while (([hTTPBodyStream2 hasBytesAvailable] & 1) != 0);
    }

    free(v5);
    [hTTPBodyStream2 close];
  }

  else
  {
    data = [self HTTPBody];
  }

  return data;
}

@end