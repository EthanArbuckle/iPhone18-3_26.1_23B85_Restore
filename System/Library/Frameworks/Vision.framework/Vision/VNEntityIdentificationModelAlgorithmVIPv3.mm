@interface VNEntityIdentificationModelAlgorithmVIPv3
- (BOOL)isEqual:(id)equal;
- (VNEntityIdentificationModelAlgorithmVIPv3)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEntityIdentificationModelAlgorithmVIPv3

- (VNEntityIdentificationModelAlgorithmVIPv3)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNEntityIdentificationModelAlgorithmVIPv3;
  v5 = [(VNEntityIdentificationModelAlgorithm *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_indexType = [coderCopy decodeIntegerForKey:@"indexType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VNEntityIdentificationModelAlgorithmVIPv3;
  coderCopy = coder;
  [(VNEntityIdentificationModelAlgorithm *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_indexType forKey:{@"indexType", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      indexType = [(VNEntityIdentificationModelAlgorithmVIPv3 *)self indexType];
      indexType2 = [(VNEntityIdentificationModelAlgorithmVIPv3 *)v5 indexType];

      v8 = indexType == indexType2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = VNEntityIdentificationModelAlgorithmVIPv3;
  v4 = [(VNEntityIdentificationModelAlgorithm *)&v9 description];
  v5 = [v3 initWithString:v4];

  indexType = [(VNEntityIdentificationModelAlgorithmVIPv3 *)self indexType];
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