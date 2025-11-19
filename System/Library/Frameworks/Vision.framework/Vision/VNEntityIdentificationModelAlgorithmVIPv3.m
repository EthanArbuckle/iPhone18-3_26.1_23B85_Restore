@interface VNEntityIdentificationModelAlgorithmVIPv3
- (BOOL)isEqual:(id)a3;
- (VNEntityIdentificationModelAlgorithmVIPv3)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNEntityIdentificationModelAlgorithmVIPv3

- (VNEntityIdentificationModelAlgorithmVIPv3)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VNEntityIdentificationModelAlgorithmVIPv3;
  v5 = [(VNEntityIdentificationModelAlgorithm *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_indexType = [v4 decodeIntegerForKey:@"indexType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNEntityIdentificationModelAlgorithmVIPv3;
  v4 = a3;
  [(VNEntityIdentificationModelAlgorithm *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_indexType forKey:{@"indexType", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNEntityIdentificationModelAlgorithmVIPv3 *)self indexType];
      v7 = [(VNEntityIdentificationModelAlgorithmVIPv3 *)v5 indexType];

      v8 = v6 == v7;
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

  v6 = [(VNEntityIdentificationModelAlgorithmVIPv3 *)self indexType];
  if (v6)
  {
    if (v6 != 1)
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