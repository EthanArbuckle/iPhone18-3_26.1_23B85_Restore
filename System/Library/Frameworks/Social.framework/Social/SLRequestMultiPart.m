@interface SLRequestMultiPart
+ (id)multiPartWithName:(id)a3 payload:(id)a4 type:(id)a5 multiPartBoundary:(id)a6;
- (NSString)uniqueIdentifier;
- (id)multiPartHeader;
- (id)partData;
- (id)payloadPreamble;
- (unint64_t)length;
@end

@implementation SLRequestMultiPart

+ (id)multiPartWithName:(id)a3 payload:(id)a4 type:(id)a5 multiPartBoundary:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(a1);
  [v14 setName:v13];

  [v14 setPayload:v12];
  [v14 setType:v11];

  [v14 setMultiPartBoundary:v10];

  return v14;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    Default = CFAllocatorGetDefault();
    v5 = CFUUIDCreate(Default);
    v6 = CFAllocatorGetDefault();
    v7 = CFUUIDCreateString(v6, v5);
    v8 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = &v7->isa;

    CFRelease(v5);
    uniqueIdentifier = self->_uniqueIdentifier;
  }

  return uniqueIdentifier;
}

- (id)partData
{
  v3 = objc_opt_new();
  v4 = [(SLRequestMultiPart *)self payloadPreamble];
  [v3 appendData:v4];

  v5 = [(SLRequestMultiPart *)self payload];
  [v3 appendData:v5];

  v6 = [(SLRequestMultiPart *)self payloadEpilogue];
  [v3 appendData:v6];

  return v3;
}

- (id)multiPartHeader
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SLRequestMultiPart *)self name];
  v6 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@", v5];;
  [v3 addObject:v6];

  v7 = [(SLRequestMultiPart *)self filename];
  if (v7)
  {
  }

  else
  {
    v8 = [(SLRequestMultiPart *)self type];
    v9 = [v8 commonPrefixWithString:@"image" options:0];
    v10 = [v9 length];

    if (v10)
    {
      [(SLRequestMultiPart *)self setFilename:@"image.jpg"];
    }
  }

  v11 = [(SLRequestMultiPart *)self filename];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(SLRequestMultiPart *)self filename];
    v14 = [v12 stringWithFormat:@" filename=./%@", v13];;
    [v3 addObject:v14];
  }

  [v3 addObject:@"\r\n"];
  v15 = [(SLRequestMultiPart *)self type];

  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(SLRequestMultiPart *)self type];
    v18 = [v16 stringWithFormat:@"Content-Type: %@\r\n", v17];
    [v3 addObject:v18];
  }

  [v3 addObject:@"\r\n"];
  v19 = [v3 componentsJoinedByString:&stru_1F41EC300];

  return v19;
}

- (id)payloadPreamble
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SLRequestMultiPart *)self multiPartBoundary];
  v5 = [v3 stringWithFormat:@"--%@\r\n", v4];

  v6 = [(SLRequestMultiPart *)self multiPartHeader];
  v7 = [v5 stringByAppendingString:v6];
  v8 = [v7 dataUsingEncoding:4];

  return v8;
}

- (unint64_t)length
{
  v3 = [(SLRequestMultiPart *)self payloadPreamble];
  v4 = [v3 length];
  v5 = [(SLRequestMultiPart *)self payload];
  v6 = [v5 length] + v4;
  v7 = [(SLRequestMultiPart *)self payloadEpilogue];
  v8 = [v7 length];

  return v6 + v8;
}

@end