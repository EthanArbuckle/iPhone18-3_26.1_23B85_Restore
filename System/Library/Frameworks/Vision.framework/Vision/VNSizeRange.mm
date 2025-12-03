@interface VNSizeRange
- (BOOL)isEqual:(id)equal;
- (VNSizeRange)initWithCoder:(id)coder;
- (VNSizeRange)initWithMinimumDimension:(unint64_t)dimension maximumDimension:(unint64_t)maximumDimension idealDimension:(unint64_t)idealDimension;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSizeRange

- (VNSizeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[VNSizeRange initWithMinimumDimension:maximumDimension:idealDimension:](self, "initWithMinimumDimension:maximumDimension:idealDimension:", [coderCopy decodeIntegerForKey:@"minDimension"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"maxDimension"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"idealDimension"));

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_minimumDimension forKey:@"minDimension"];
  [coderCopy encodeInteger:self->_maximumDimension forKey:@"maxDimension"];
  [coderCopy encodeInteger:self->_idealDimension forKey:@"idealDimension"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      minimumDimension = [(VNSizeRange *)self minimumDimension];
      if (minimumDimension == [(VNSizeRange *)v5 minimumDimension]&& (v7 = [(VNSizeRange *)self maximumDimension], v7 == [(VNSizeRange *)v5 maximumDimension]))
      {
        idealDimension = [(VNSizeRange *)self idealDimension];
        v9 = idealDimension == [(VNSizeRange *)v5 idealDimension];
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

- (VNSizeRange)initWithMinimumDimension:(unint64_t)dimension maximumDimension:(unint64_t)maximumDimension idealDimension:(unint64_t)idealDimension
{
  v12.receiver = self;
  v12.super_class = VNSizeRange;
  v8 = [(VNSizeRange *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_minimumDimension = dimension;
    v8->_maximumDimension = maximumDimension;
    v8->_idealDimension = idealDimension;
    v10 = v8;
  }

  return v9;
}

@end