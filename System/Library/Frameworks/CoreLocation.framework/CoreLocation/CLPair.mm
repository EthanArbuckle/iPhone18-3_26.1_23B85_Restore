@interface CLPair
- (CLPair)initWithCoder:(id)coder;
- (CLPair)initWithFirst:(int)first second:(int)second;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPair

- (CLPair)initWithFirst:(int)first second:(int)second
{
  v7.receiver = self;
  v7.super_class = CLPair;
  result = [(CLPair *)&v7 init];
  if (result)
  {
    result->_first = first;
    result->_second = second;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLPair alloc];
  first = self->_first;
  second = self->_second;

  return [(CLPair *)v4 initWithFirst:first second:second];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:-[CLPair first](self forKey:{"first"), @"first"}];
  second = [(CLPair *)self second];

  [coder encodeInt:second forKey:@"second"];
}

- (CLPair)initWithCoder:(id)coder
{
  v4 = [CLPair alloc];
  v5 = [coder decodeIntForKey:@"first"];
  v6 = [coder decodeIntForKey:@"second"];

  return [(CLPair *)v4 initWithFirst:v5 second:v6];
}

@end