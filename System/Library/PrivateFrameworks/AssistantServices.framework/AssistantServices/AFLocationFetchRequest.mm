@interface AFLocationFetchRequest
- (AFLocationFetchRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFLocationFetchRequest

- (AFLocationFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFLocationFetchRequest;
  v5 = [(AFLocationFetchRequest *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"desiredAccuracy"];
    v5->_desiredAccuracy = v6;
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    [coderCopy decodeDoubleForKey:@"timeout"];
    v5->_timeout = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  desiredAccuracy = self->_desiredAccuracy;
  coderCopy = coder;
  [coderCopy encodeDouble:@"desiredAccuracy" forKey:desiredAccuracy];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy encodeDouble:@"timeout" forKey:self->_timeout];
}

@end