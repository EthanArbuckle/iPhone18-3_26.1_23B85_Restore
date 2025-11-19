@interface PFXStreamWriter
+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)a3 name:(id)a4;
+ (BOOL)writeDtdToStream:(_xmlTextWriter *)a3 name:(id)a4 pubid:(id)a5 sysid:(id)a6 subset:(id)a7;
+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)a3 prefix:(id)a4 uri:(const char *)a5;
+ (_xmlTextWriter)createXmlTextWriterAtEntry:(id)a3 inOutputStream:(id)a4 isCompressed:(BOOL)a5;
+ (_xmlTextWriter)createXmlTextWriterWithContext:(id)a3;
- (BOOL)endElement;
- (BOOL)endElementsToBase;
- (BOOL)startElement:(id)a3 prefix:(id)a4 ns:(const char *)a5;
- (BOOL)writeAttribute:(id)a3 content:(id)a4 prefix:(id)a5 ns:(const char *)a6;
- (BOOL)writeString:(id)a3;
- (PFXStreamWriter)initWithTextWriter:(_xmlTextWriter *)a3;
- (void)dealloc;
@end

@implementation PFXStreamWriter

- (PFXStreamWriter)initWithTextWriter:(_xmlTextWriter *)a3
{
  v5.receiver = self;
  v5.super_class = PFXStreamWriter;
  result = [(PFXStreamWriter *)&v5 init];
  if (result)
  {
    result->mStreamAPI = a3;
    result->mCurrentDepth = 0;
    result->mContentAdded = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PFXStreamWriter;
  [(PFXStreamWriter *)&v2 dealloc];
}

- (BOOL)startElement:(id)a3 prefix:(id)a4 ns:(const char *)a5
{
  v6 = [PFXStreamWriter startElementInStream:self->mStreamAPI name:a3 prefix:a4 ns:a5];
  if (v6)
  {
    self->mContentAdded = 1;
    ++self->mCurrentDepth;
  }

  return v6;
}

- (BOOL)endElement
{
  if (self->mCurrentDepth)
  {
    v3 = [PFXStreamWriter endElementInStream:self->mStreamAPI];
    if (v3)
    {
      --self->mCurrentDepth;
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)writeString:(id)a3
{
  if (self->mContentAdded)
  {
    v5 = 1;
  }

  else if (a3)
  {
    v5 = [a3 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  self->mContentAdded = v5;
  mStreamAPI = self->mStreamAPI;

  return [PFXStreamWriter writeStringToStream:mStreamAPI text:a3];
}

- (BOOL)endElementsToBase
{
  do
  {
    mCurrentDepth = self->mCurrentDepth;
  }

  while (mCurrentDepth && [(PFXStreamWriter *)self endElement]);
  return mCurrentDepth == 0;
}

- (BOOL)writeAttribute:(id)a3 content:(id)a4 prefix:(id)a5 ns:(const char *)a6
{
  if (self->mCurrentDepth)
  {
    return [PFXStreamWriter writeAttributeToStream:self->mStreamAPI name:a3 content:a4 prefix:a5 ns:a6];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)a3 prefix:(id)a4 uri:(const char *)a5
{
  if (a4)
  {
    v7 = [[NSString alloc] initWithFormat:@"xmlns:%@", a4];
  }

  else
  {
    v7 = @"xmlns";
  }

  v8 = xmlTextWriterWriteAttribute(a3, [(__CFString *)v7 UTF8String], a5);

  return v8 >= 0;
}

+ (BOOL)writeDtdToStream:(_xmlTextWriter *)a3 name:(id)a4 pubid:(id)a5 sysid:(id)a6 subset:(id)a7
{
  xmlTextWriterSetIndent(a3, 1);
  v12 = xmlTextWriterWriteDTD(a3, [a4 UTF8String], objc_msgSend(a5, "UTF8String"), objc_msgSend(a6, "UTF8String"), objc_msgSend(a7, "UTF8String"));
  if ((v12 & 0x80000000) == 0)
  {
    xmlTextWriterSetIndent(a3, 0);
  }

  return v12 >= 0;
}

+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)a3 name:(id)a4
{
  if (![PFXStreamWriter startElementInStream:a3 name:@"span"]|| ![PFXStreamWriter writeAttributeToStream:a3 name:@"id" content:a4])
  {
    return 0;
  }

  return [PFXStreamWriter endElementInStream:a3];
}

+ (_xmlTextWriter)createXmlTextWriterWithContext:(id)a3
{
  IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, a3, 0);

  return [PFXStreamWriter createXmlTextWriterWithBuffer:IO];
}

+ (_xmlTextWriter)createXmlTextWriterAtEntry:(id)a3 inOutputStream:(id)a4 isCompressed:(BOOL)a5
{
  [a4 beginUnknownSizeEntryWithName:a3 isCompressed:a5];
  IO = xmlOutputBufferCreateIO(&SFUSimpleXmlOutputWriteCallback, &SFUSimpleXmlOutputCloseCallback, a4, 0);

  return [PFXStreamWriter createXmlTextWriterWithBuffer:IO];
}

@end