@interface AFGetTimerResponse
- (AFGetTimerResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFGetTimerResponse

- (AFGetTimerResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFGetTimerResponse;
  v5 = [(AFSiriResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timer"];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFGetTimerResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_timer forKey:{@"timer", v5.receiver, v5.super_class}];
}

@end