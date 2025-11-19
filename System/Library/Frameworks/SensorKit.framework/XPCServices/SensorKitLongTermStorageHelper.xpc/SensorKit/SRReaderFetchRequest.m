@interface SRReaderFetchRequest
- (NSString)description;
- (SRReaderFetchRequest)init;
- (SRReaderFetchRequest)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_readerRequest forKey:@"ReaderRequest"];
  [a3 encodeBool:self->_bypassHoldingPeriod forKey:@"BypassHoldingPeriod"];
  [a3 encodeDouble:@"From" forKey:self->_from];
  [a3 encodeDouble:@"To" forKey:self->_to];
  cursor = self->_cursor;

  [a3 encodeObject:cursor forKey:@"Cursor"];
}

- (SRReaderFetchRequest)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SRReaderFetchRequest;
  v4 = [(SRReaderFetchRequest *)&v8 init];
  if (v4)
  {
    v4->_readerRequest = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"ReaderRequest"];
    v4->_bypassHoldingPeriod = [a3 decodeBoolForKey:@"BypassHoldingPeriod"];
    [a3 decodeDoubleForKey:@"From"];
    v4->_from = v5;
    [a3 decodeDoubleForKey:@"To"];
    v4->_to = v6;
    v4->_cursor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Cursor"];
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  cursor = self->_cursor;
  return [NSString stringWithFormat:@"%@ (%p): from: %f, to: %f, cursor: %@, %@", v4, self, *&self->_from, *&self->_to, cursor, self->_readerRequest];
}

@end