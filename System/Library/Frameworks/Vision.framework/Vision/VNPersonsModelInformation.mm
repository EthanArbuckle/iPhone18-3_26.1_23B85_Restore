@interface VNPersonsModelInformation
- (BOOL)isEqual:(id)a3;
- (VNPersonsModelInformation)initWithCoder:(id)a3;
- (VNPersonsModelInformation)initWithVersion:(unint64_t)a3 lastModificationDate:(id)a4 algorithm:(id)a5 readOnly:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNPersonsModelInformation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNPersonsModelInformation *)self version];
      if (v6 == -[VNPersonsModelInformation version](v5, "version") && (-[VNPersonsModelInformation lastModificationDate](self, "lastModificationDate"), v7 = objc_claimAutoreleasedReturnValue(), -[VNPersonsModelInformation lastModificationDate](v5, "lastModificationDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToDate:v8], v8, v7, (v9 & 1) != 0))
      {
        v10 = [(VNPersonsModelInformation *)self algorithm];
        v11 = [(VNPersonsModelInformation *)v5 algorithm];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_version forKey:@"version"];
  [v4 encodeObject:self->_lastModificationDate forKey:@"lastModDate"];
  [v4 encodeObject:self->_algorithm forKey:@"algorithm"];
  [v4 encodeBool:self->_readOnly forKey:@"readOnly"];
}

- (VNPersonsModelInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
  v8 = -[VNPersonsModelInformation initWithVersion:lastModificationDate:algorithm:readOnly:](self, "initWithVersion:lastModificationDate:algorithm:readOnly:", v5, v6, v7, [v4 decodeBoolForKey:@"readOnly"]);

  return v8;
}

- (VNPersonsModelInformation)initWithVersion:(unint64_t)a3 lastModificationDate:(id)a4 algorithm:(id)a5 readOnly:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = VNPersonsModelInformation;
  v13 = [(VNPersonsModelInformation *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_version = a3;
    objc_storeStrong(&v13->_lastModificationDate, a4);
    v15 = [v12 copy];
    algorithm = v14->_algorithm;
    v14->_algorithm = v15;

    v14->_readOnly = a6;
  }

  return v14;
}

@end