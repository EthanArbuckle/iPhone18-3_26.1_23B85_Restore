@interface VNSizeRange
- (BOOL)isEqual:(id)a3;
- (VNSizeRange)initWithCoder:(id)a3;
- (VNSizeRange)initWithMinimumDimension:(unint64_t)a3 maximumDimension:(unint64_t)a4 idealDimension:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNSizeRange

- (VNSizeRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[VNSizeRange initWithMinimumDimension:maximumDimension:idealDimension:](self, "initWithMinimumDimension:maximumDimension:idealDimension:", [v4 decodeIntegerForKey:@"minDimension"], objc_msgSend(v4, "decodeIntegerForKey:", @"maxDimension"), objc_msgSend(v4, "decodeIntegerForKey:", @"idealDimension"));

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_minimumDimension forKey:@"minDimension"];
  [v4 encodeInteger:self->_maximumDimension forKey:@"maxDimension"];
  [v4 encodeInteger:self->_idealDimension forKey:@"idealDimension"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNSizeRange *)self minimumDimension];
      if (v6 == [(VNSizeRange *)v5 minimumDimension]&& (v7 = [(VNSizeRange *)self maximumDimension], v7 == [(VNSizeRange *)v5 maximumDimension]))
      {
        v8 = [(VNSizeRange *)self idealDimension];
        v9 = v8 == [(VNSizeRange *)v5 idealDimension];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (VNSizeRange)initWithMinimumDimension:(unint64_t)a3 maximumDimension:(unint64_t)a4 idealDimension:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = VNSizeRange;
  v8 = [(VNSizeRange *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_minimumDimension = a3;
    v8->_maximumDimension = a4;
    v8->_idealDimension = a5;
    v10 = v8;
  }

  return v9;
}

@end