@interface VNEntityIdentificationModelInformation
- (BOOL)isEqual:(id)a3;
- (VNEntityIdentificationModelInformation)initWithCoder:(id)a3;
- (VNEntityIdentificationModelInformation)initWithVersion:(unint64_t)a3 algorithm:(id)a4 lastModificationDate:(id)a5 readOnly:(BOOL)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNEntityIdentificationModelInformation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNEntityIdentificationModelInformation *)self version];
      if (v6 == [(VNEntityIdentificationModelInformation *)v5 version]&& (v7 = [(VNEntityIdentificationModelInformation *)self isReadOnly], v7 == [(VNEntityIdentificationModelInformation *)v5 isReadOnly]) && ([(VNEntityIdentificationModelInformation *)self algorithm], v8 = objc_claimAutoreleasedReturnValue(), [(VNEntityIdentificationModelInformation *)v5 algorithm], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, v10))
      {
        v11 = [(VNEntityIdentificationModelInformation *)self lastModificationDate];
        v12 = [(VNEntityIdentificationModelInformation *)v5 lastModificationDate];
        v13 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_lastModificationDate hash]^ __ROR8__([(VNEntityIdentificationModelAlgorithm *)self->_algorithm hash]^ __ROR8__(self->_version, 51), 51);
  v4 = 21845;
  if (self->_readOnly)
  {
    v4 = 43690;
  }

  return v4 ^ __ROR8__(v3, 51);
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_algorithm forKey:@"algorithm"];
  [v5 encodeObject:self->_lastModificationDate forKey:@"lastModDate"];
  [v5 encodeBool:self->_readOnly forKey:@"readOnly"];
}

- (VNEntityIdentificationModelInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
  v8 = [v4 decodeBoolForKey:@"readOnly"];

  v9 = [(VNEntityIdentificationModelInformation *)self initWithVersion:v5 algorithm:v7 lastModificationDate:v6 readOnly:v8];
  return v9;
}

- (VNEntityIdentificationModelInformation)initWithVersion:(unint64_t)a3 algorithm:(id)a4 lastModificationDate:(id)a5 readOnly:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = VNEntityIdentificationModelInformation;
  v12 = [(VNEntityIdentificationModelInformation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_version = a3;
    v14 = [v10 copy];
    algorithm = v13->_algorithm;
    v13->_algorithm = v14;

    objc_storeStrong(&v13->_lastModificationDate, a5);
    v13->_readOnly = a6;
  }

  return v13;
}

@end