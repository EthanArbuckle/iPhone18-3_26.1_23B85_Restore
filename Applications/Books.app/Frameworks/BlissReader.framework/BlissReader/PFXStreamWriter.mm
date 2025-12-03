@interface PFXStreamWriter
+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)stream name:(id)name;
+ (BOOL)writeDtdToStream:(_xmlTextWriter *)stream name:(id)name pubid:(id)pubid sysid:(id)sysid subset:(id)subset;
+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)stream prefix:(id)prefix uri:(const char *)uri;
+ (_xmlTextWriter)createXmlTextWriterAtEntry:(id)entry inOutputStream:(id)stream isCompressed:(BOOL)compressed;
+ (_xmlTextWriter)createXmlTextWriterWithContext:(id)context;
- (BOOL)endElement;
- (BOOL)endElementsToBase;
- (BOOL)startElement:(id)element prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeAttribute:(id)attribute content:(id)content prefix:(id)prefix ns:(const char *)ns;
- (BOOL)writeString:(id)string;
- (PFXStreamWriter)initWithTextWriter:(_xmlTextWriter *)writer;
- (void)dealloc;
@end

@implementation PFXStreamWriter

- (PFXStreamWriter)initWithTextWriter:(_xmlTextWriter *)writer
{
  v5.receiver = self;
  v5.super_class = PFXStreamWriter;
  result = [(PFXStreamWriter *)&v5 init];
  if (result)
  {
    result->mStreamAPI = writer;
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

- (BOOL)startElement:(id)element prefix:(id)prefix ns:(const char *)ns
{
  v6 = [PFXStreamWriter startElementInStream:self->mStreamAPI name:element prefix:prefix ns:ns];
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

- (BOOL)writeString:(id)string
{
  if (self->mContentAdded)
  {
    v5 = 1;
  }

  else if (string)
  {
    v5 = [string length] != 0;
  }

  else
  {
    v5 = 0;
  }

  self->mContentAdded = v5;
  mStreamAPI = self->mStreamAPI;

  return [PFXStreamWriter writeStringToStream:mStreamAPI text:string];
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

- (BOOL)writeAttribute:(id)attribute content:(id)content prefix:(id)prefix ns:(const char *)ns
{
  if (self->mCurrentDepth)
  {
    return [PFXStreamWriter writeAttributeToStream:self->mStreamAPI name:attribute content:content prefix:prefix ns:ns];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)writeNamespaceToStream:(_xmlTextWriter *)stream prefix:(id)prefix uri:(const char *)uri
{
  if (prefix)
  {
    prefix = [[NSString alloc] initWithFormat:@"xmlns:%@", prefix];
  }

  else
  {
    prefix = @"xmlns";
  }

  v8 = xmlTextWriterWriteAttribute(stream, [(__CFString *)prefix UTF8String], uri);

  return v8 >= 0;
}

+ (BOOL)writeDtdToStream:(_xmlTextWriter *)stream name:(id)name pubid:(id)pubid sysid:(id)sysid subset:(id)subset
{
  xmlTextWriterSetIndent(stream, 1);
  v12 = xmlTextWriterWriteDTD(stream, [name UTF8String], objc_msgSend(pubid, "UTF8String"), objc_msgSend(sysid, "UTF8String"), objc_msgSend(subset, "UTF8String"));
  if ((v12 & 0x80000000) == 0)
  {
    xmlTextWriterSetIndent(stream, 0);
  }

  return v12 >= 0;
}

+ (BOOL)writeAnchorTargetToStream:(_xmlTextWriter *)stream name:(id)name
{
  if (![PFXStreamWriter startElementInStream:stream name:@"span"]|| ![PFXStreamWriter writeAttributeToStream:stream name:@"id" content:name])
  {
    return 0;
  }

  return [PFXStreamWriter endElementInStream:stream];
}

+ (_xmlTextWriter)createXmlTextWriterWithContext:(id)context
{
  IO = xmlOutputBufferCreateIO(sfaxmlNSMutableDataWriteCallback, 0, context, 0);

  return [PFXStreamWriter createXmlTextWriterWithBuffer:IO];
}

+ (_xmlTextWriter)createXmlTextWriterAtEntry:(id)entry inOutputStream:(id)stream isCompressed:(BOOL)compressed
{
  [stream beginUnknownSizeEntryWithName:entry isCompressed:compressed];
  IO = xmlOutputBufferCreateIO(&SFUSimpleXmlOutputWriteCallback, &SFUSimpleXmlOutputCloseCallback, stream, 0);

  return [PFXStreamWriter createXmlTextWriterWithBuffer:IO];
}

@end