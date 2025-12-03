@interface SRReaderFetchRequest
- (NSString)description;
- (SRReaderFetchRequest)init;
- (SRReaderFetchRequest)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRReaderFetchRequest

- (SRReaderFetchRequest)init
{
  v4.receiver = self;
  v4.super_class = SRReaderFetchRequest;
  v2 = [(SRReaderFetchRequest *)&v4 init];
  if (v2)
  {
    v2->_readerRequest = objc_alloc_init(SRReaderRequest);
  }

  return v2;
}

- (void)dealloc
{
  self->_readerRequest = 0;

  v3.receiver = self;
  v3.super_class = SRReaderFetchRequest;
  [(SRReaderFetchRequest *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_readerRequest forKey:@"ReaderRequest"];
  [coder encodeBool:self->_bypassHoldingPeriod forKey:@"BypassHoldingPeriod"];
  [coder encodeDouble:@"From" forKey:self->_from];
  [coder encodeDouble:@"To" forKey:self->_to];
  cursor = self->_cursor;

  [coder encodeObject:cursor forKey:@"Cursor"];
}

- (SRReaderFetchRequest)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = SRReaderFetchRequest;
  v6 = [(SRReaderFetchRequest *)&v10 init];
  if (v6)
  {
    v6->_readerRequest = [coder decodeObjectOfClass:objc_opt_class() forKey:@"ReaderRequest"];
    v6->_bypassHoldingPeriod = [coder decodeBoolForKey:@"BypassHoldingPeriod"];
    [coder decodeDoubleForKey:@"From"];
    v6->_from = v7;
    [coder decodeDoubleForKey:@"To"];
    v6->_to = v8;
    v6->_cursor = [coder decodeObjectOfClass:objc_opt_class() forKey:@"Cursor"];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cursor = self->_cursor;
  return [v3 stringWithFormat:@"%@ (%p): from: %f, to: %f, cursor: %@, %@", v5, self, *&self->_from, *&self->_to, cursor, self->_readerRequest];
}

@end