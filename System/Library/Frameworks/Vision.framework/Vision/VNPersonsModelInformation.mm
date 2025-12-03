@interface VNPersonsModelInformation
- (BOOL)isEqual:(id)equal;
- (VNPersonsModelInformation)initWithCoder:(id)coder;
- (VNPersonsModelInformation)initWithVersion:(unint64_t)version lastModificationDate:(id)date algorithm:(id)algorithm readOnly:(BOOL)only;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNPersonsModelInformation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(VNPersonsModelInformation *)self version];
      if (version == -[VNPersonsModelInformation version](v5, "version") && (-[VNPersonsModelInformation lastModificationDate](self, "lastModificationDate"), v7 = objc_claimAutoreleasedReturnValue(), -[VNPersonsModelInformation lastModificationDate](v5, "lastModificationDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToDate:v8], v8, v7, (v9 & 1) != 0))
      {
        algorithm = [(VNPersonsModelInformation *)self algorithm];
        algorithm2 = [(VNPersonsModelInformation *)v5 algorithm];
        v12 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_lastModificationDate forKey:@"lastModDate"];
  [coderCopy encodeObject:self->_algorithm forKey:@"algorithm"];
  [coderCopy encodeBool:self->_readOnly forKey:@"readOnly"];
}

- (VNPersonsModelInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
  v8 = -[VNPersonsModelInformation initWithVersion:lastModificationDate:algorithm:readOnly:](self, "initWithVersion:lastModificationDate:algorithm:readOnly:", v5, v6, v7, [coderCopy decodeBoolForKey:@"readOnly"]);

  return v8;
}

- (VNPersonsModelInformation)initWithVersion:(unint64_t)version lastModificationDate:(id)date algorithm:(id)algorithm readOnly:(BOOL)only
{
  dateCopy = date;
  algorithmCopy = algorithm;
  v18.receiver = self;
  v18.super_class = VNPersonsModelInformation;
  v13 = [(VNPersonsModelInformation *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_version = version;
    objc_storeStrong(&v13->_lastModificationDate, date);
    v15 = [algorithmCopy copy];
    algorithm = v14->_algorithm;
    v14->_algorithm = v15;

    v14->_readOnly = only;
  }

  return v14;
}

@end