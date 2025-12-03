@interface VNPersonsModelAlgorithmVIPv3
- (BOOL)isEqual:(id)equal;
- (VNPersonsModelAlgorithmVIPv3)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNPersonsModelAlgorithmVIPv3

- (VNPersonsModelAlgorithmVIPv3)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNPersonsModelAlgorithmVIPv3;
  v5 = [(VNPersonsModelAlgorithm *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_indexType = [coderCopy decodeIntegerForKey:@"indexType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNPersonsModelAlgorithmVIPv3;
  [(VNPersonsModelAlgorithm *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_indexType forKey:@"indexType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      indexType = [(VNPersonsModelAlgorithmVIPv3 *)self indexType];
      v7 = indexType == [(VNPersonsModelAlgorithmVIPv3 *)v5 indexType];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = VNPersonsModelAlgorithmVIPv3;
  v4 = [(VNPersonsModelAlgorithm *)&v9 description];
  v5 = [v3 initWithString:v4];

  indexType = [(VNPersonsModelAlgorithmVIPv3 *)self indexType];
  if (indexType)
  {
    if (indexType != 1)
    {
      goto LABEL_6;
    }

    v7 = @" single mean";
  }

  else
  {
    v7 = @" K-means";
  }

  [v5 appendString:v7];
LABEL_6:

  return v5;
}

@end