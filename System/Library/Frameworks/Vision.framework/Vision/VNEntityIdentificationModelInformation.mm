@interface VNEntityIdentificationModelInformation
- (BOOL)isEqual:(id)equal;
- (VNEntityIdentificationModelInformation)initWithCoder:(id)coder;
- (VNEntityIdentificationModelInformation)initWithVersion:(unint64_t)version algorithm:(id)algorithm lastModificationDate:(id)date readOnly:(BOOL)only;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEntityIdentificationModelInformation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(VNEntityIdentificationModelInformation *)self version];
      if (version == [(VNEntityIdentificationModelInformation *)v5 version]&& (v7 = [(VNEntityIdentificationModelInformation *)self isReadOnly], v7 == [(VNEntityIdentificationModelInformation *)v5 isReadOnly]) && ([(VNEntityIdentificationModelInformation *)self algorithm], v8 = objc_claimAutoreleasedReturnValue(), [(VNEntityIdentificationModelInformation *)v5 algorithm], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v8, v10))
      {
        lastModificationDate = [(VNEntityIdentificationModelInformation *)self lastModificationDate];
        lastModificationDate2 = [(VNEntityIdentificationModelInformation *)v5 lastModificationDate];
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

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_algorithm forKey:@"algorithm"];
  [coderCopy encodeObject:self->_lastModificationDate forKey:@"lastModDate"];
  [coderCopy encodeBool:self->_readOnly forKey:@"readOnly"];
}

- (VNEntityIdentificationModelInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
  v8 = [coderCopy decodeBoolForKey:@"readOnly"];

  v9 = [(VNEntityIdentificationModelInformation *)self initWithVersion:v5 algorithm:v7 lastModificationDate:v6 readOnly:v8];
  return v9;
}

- (VNEntityIdentificationModelInformation)initWithVersion:(unint64_t)version algorithm:(id)algorithm lastModificationDate:(id)date readOnly:(BOOL)only
{
  algorithmCopy = algorithm;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = VNEntityIdentificationModelInformation;
  v12 = [(VNEntityIdentificationModelInformation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_version = version;
    v14 = [algorithmCopy copy];
    algorithm = v13->_algorithm;
    v13->_algorithm = v14;

    objc_storeStrong(&v13->_lastModificationDate, date);
    v13->_readOnly = only;
  }

  return v13;
}

@end