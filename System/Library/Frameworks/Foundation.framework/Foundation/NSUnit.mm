@interface NSUnit
- (BOOL)isEqual:(id)equal;
- (NSUnit)initWithCoder:(id)coder;
- (NSUnit)initWithSymbol:(NSString *)symbol;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSUnit

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSUnit;
  [(NSUnit *)&v3 dealloc];
}

- (NSUnit)initWithSymbol:(NSString *)symbol
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSUnit;
  v4 = [(NSUnit *)&v6 init];
  if (v4)
  {
    v4->_symbol = [(NSString *)symbol copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _effectiveUnitClass = [equal _effectiveUnitClass];
  if (_effectiveUnitClass != [(NSUnit *)self _effectiveUnitClass])
  {
    return 0;
  }

  symbol = [equal symbol];
  symbol2 = [(NSUnit *)self symbol];

  return [symbol isEqual:symbol2];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSUnit;
  return [-[NSUnit description](&v3 description)];
}

- (NSUnit)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnit cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.symbol"];
  if (v5)
  {

    return [(NSUnit *)self initWithSymbol:v5];
  }

  else
  {

    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4865, 0)}];
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnit encoder does not allow non-keyed coding!" userInfo:0]);
  }

  symbol = self->_symbol;

  [coder encodeObject:symbol forKey:@"NS.symbol"];
}

@end