@interface NSData
+ (id)crl_dataWithInputStream:(id)stream error:(id *)error;
+ (id)crl_decodeFromHexidecimalString:(id)string;
- (id)crl_compressWithAlgorithm:(int)algorithm operation:(int)operation;
- (id)crl_dispatchDataWithApplier:(id)applier;
- (id)crl_encodeToHexidecimalString;
@end

@implementation NSData

- (id)crl_compressWithAlgorithm:(int)algorithm operation:(int)operation
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100392404;
  v12 = &unk_10185ABA8;
  v14 = &v15;
  v5 = [[CRLStreamDataCompression alloc] initWithAlgorithm:*&algorithm operation:*&operation];
  v13 = v5;
  [(NSData *)self enumerateByteRangesUsingBlock:&v9];
  if (v16[3])
  {
    v6 = [(CRLStreamCompression *)v5 didFinishProcessing:v9];
    *(v16 + 24) = v6;
    if (v6)
    {
      outputData = [(CRLStreamDataCompression *)v5 outputData];
    }

    else
    {
      outputData = 0;
    }
  }

  else
  {
    outputData = 0;
    *(v16 + 24) = 0;
  }

  _Block_object_dispose(&v15, 8);

  return outputData;
}

- (id)crl_encodeToHexidecimalString
{
  v3 = [(NSData *)self length];
  if (v3)
  {
    v4 = [(NSData *)self length];
    bytes = [(NSData *)self bytes];
    v6 = 2 * v4;
    v3 = malloc_type_calloc(2 * v4, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      if (v4)
      {
        v7 = v3 + 1;
        do
        {
          v9 = *bytes++;
          v8 = v9;
          v10 = (v9 >> 4) + 55;
          v11 = (v9 >> 4) | 0x30;
          if (v9 > 0x9F)
          {
            LOBYTE(v11) = v10;
          }

          *(v7 - 1) = v11;
          if ((v8 & 0xFu) <= 9)
          {
            v12 = v8 & 0xF | 0x30;
          }

          else
          {
            v12 = (v8 & 0xF) + 55;
          }

          *v7 = v12;
          v7 += 2;
          --v4;
        }

        while (v4);
      }

      v3 = [[NSString alloc] initWithBytesNoCopy:v3 length:v6 encoding:1 freeWhenDone:1];
    }
  }

  return v3;
}

+ (id)crl_decodeFromHexidecimalString:(id)string
{
  stringCopy = string;
  if (![stringCopy length] || (objc_msgSend(stringCopy, "length") & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    v4 = [stringCopy length];
    v5 = malloc_type_calloc(2 * v4, 1uLL, 0x100004077774924uLL);
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      v8 = 1;
      v9 = v5;
      v10 = v7;
      do
      {
        v11 = [stringCopy characterAtIndex:v8 - 1];
        if (v11 <= 0x39)
        {
          v12 = 0;
        }

        else
        {
          v12 = 57;
        }

        v13 = v12 + v11;
        v14 = [stringCopy characterAtIndex:v8];
        if (v14 <= 0x39)
        {
          v15 = -48;
        }

        else
        {
          v15 = -55;
        }

        *v9++ = v15 + v14 + 16 * v13;
        v8 += 2;
        --v10;
      }

      while (v10);
    }

    v16 = [[NSData alloc] initWithBytesNoCopy:v6 length:v7 freeWhenDone:1];
  }

  return v16;
}

+ (id)crl_dataWithInputStream:(id)stream error:(id *)error
{
  streamCopy = stream;
  [streamCopy open];
  v5 = objc_alloc_init(NSMutableData);
  v6 = [streamCopy read:v9 maxLength:1024];
  if (v6 >= 1)
  {
    for (i = v6; i > 0; i = [streamCopy read:v9 maxLength:1024])
    {
      [v5 appendBytes:v9 length:i];
    }
  }

  return v5;
}

- (id)crl_dispatchDataWithApplier:(id)applier
{
  applierCopy = applier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10055A724;
  v18 = sub_10055A734;
  v5 = &_dispatch_data_empty;
  v19 = &_dispatch_data_empty;
  dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10055A73C;
  v10[3] = &unk_10186ED18;
  v6 = v10[4] = self;
  v11 = v6;
  v13 = &v14;
  v7 = applierCopy;
  v12 = v7;
  [(NSData *)self enumerateByteRangesUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

@end