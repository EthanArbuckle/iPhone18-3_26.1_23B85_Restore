@interface SLRequestMultiPart
+ (id)multiPartWithName:(id)name payload:(id)payload type:(id)type multiPartBoundary:(id)boundary;
- (NSString)uniqueIdentifier;
- (id)multiPartHeader;
- (id)partData;
- (id)payloadPreamble;
- (unint64_t)length;
@end

@implementation SLRequestMultiPart

+ (id)multiPartWithName:(id)name payload:(id)payload type:(id)type multiPartBoundary:(id)boundary
{
  boundaryCopy = boundary;
  typeCopy = type;
  payloadCopy = payload;
  nameCopy = name;
  v14 = objc_alloc_init(self);
  [v14 setName:nameCopy];

  [v14 setPayload:payloadCopy];
  [v14 setType:typeCopy];

  [v14 setMultiPartBoundary:boundaryCopy];

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
  payloadPreamble = [(SLRequestMultiPart *)self payloadPreamble];
  [v3 appendData:payloadPreamble];

  payload = [(SLRequestMultiPart *)self payload];
  [v3 appendData:payload];

  payloadEpilogue = [(SLRequestMultiPart *)self payloadEpilogue];
  [v3 appendData:payloadEpilogue];

  return v3;
}

- (id)multiPartHeader
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  name = [(SLRequestMultiPart *)self name];
  v6 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@", name];;
  [v3 addObject:v6];

  filename = [(SLRequestMultiPart *)self filename];
  if (filename)
  {
  }

  else
  {
    type = [(SLRequestMultiPart *)self type];
    v9 = [type commonPrefixWithString:@"image" options:0];
    v10 = [v9 length];

    if (v10)
    {
      [(SLRequestMultiPart *)self setFilename:@"image.jpg"];
    }
  }

  filename2 = [(SLRequestMultiPart *)self filename];

  if (filename2)
  {
    v12 = MEMORY[0x1E696AEC0];
    filename3 = [(SLRequestMultiPart *)self filename];
    v14 = [v12 stringWithFormat:@" filename=./%@", filename3];;
    [v3 addObject:v14];
  }

  [v3 addObject:@"\r\n"];
  type2 = [(SLRequestMultiPart *)self type];

  if (type2)
  {
    v16 = MEMORY[0x1E696AEC0];
    type3 = [(SLRequestMultiPart *)self type];
    v18 = [v16 stringWithFormat:@"Content-Type: %@\r\n", type3];
    [v3 addObject:v18];
  }

  [v3 addObject:@"\r\n"];
  v19 = [v3 componentsJoinedByString:&stru_1F41EC300];

  return v19;
}

- (id)payloadPreamble
{
  v3 = MEMORY[0x1E696AEC0];
  multiPartBoundary = [(SLRequestMultiPart *)self multiPartBoundary];
  v5 = [v3 stringWithFormat:@"--%@\r\n", multiPartBoundary];

  multiPartHeader = [(SLRequestMultiPart *)self multiPartHeader];
  v7 = [v5 stringByAppendingString:multiPartHeader];
  v8 = [v7 dataUsingEncoding:4];

  return v8;
}

- (unint64_t)length
{
  payloadPreamble = [(SLRequestMultiPart *)self payloadPreamble];
  v4 = [payloadPreamble length];
  payload = [(SLRequestMultiPart *)self payload];
  v6 = [payload length] + v4;
  payloadEpilogue = [(SLRequestMultiPart *)self payloadEpilogue];
  v8 = [payloadEpilogue length];

  return v6 + v8;
}

@end