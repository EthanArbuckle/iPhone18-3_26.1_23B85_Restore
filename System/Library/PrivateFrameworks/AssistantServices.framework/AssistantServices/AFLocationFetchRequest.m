@interface AFLocationFetchRequest
- (AFLocationFetchRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFLocationFetchRequest

- (AFLocationFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFLocationFetchRequest;
  v5 = [(AFLocationFetchRequest *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"desiredAccuracy"];
    v5->_desiredAccuracy = v6;
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    [v4 decodeDoubleForKey:@"timeout"];
    v5->_timeout = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  desiredAccuracy = self->_desiredAccuracy;
  v5 = a3;
  [v5 encodeDouble:@"desiredAccuracy" forKey:desiredAccuracy];
  [v5 encodeInteger:self->_style forKey:@"style"];
  [v5 encodeDouble:@"timeout" forKey:self->_timeout];
}

@end