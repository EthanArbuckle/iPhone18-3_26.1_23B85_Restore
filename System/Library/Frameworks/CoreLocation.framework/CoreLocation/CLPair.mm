@interface CLPair
- (CLPair)initWithCoder:(id)a3;
- (CLPair)initWithFirst:(int)a3 second:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLPair

- (CLPair)initWithFirst:(int)a3 second:(int)a4
{
  v7.receiver = self;
  v7.super_class = CLPair;
  result = [(CLPair *)&v7 init];
  if (result)
  {
    result->_first = a3;
    result->_second = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CLPair alloc];
  first = self->_first;
  second = self->_second;

  return [(CLPair *)v4 initWithFirst:first second:second];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:-[CLPair first](self forKey:{"first"), @"first"}];
  v5 = [(CLPair *)self second];

  [a3 encodeInt:v5 forKey:@"second"];
}

- (CLPair)initWithCoder:(id)a3
{
  v4 = [CLPair alloc];
  v5 = [a3 decodeIntForKey:@"first"];
  v6 = [a3 decodeIntForKey:@"second"];

  return [(CLPair *)v4 initWithFirst:v5 second:v6];
}

@end