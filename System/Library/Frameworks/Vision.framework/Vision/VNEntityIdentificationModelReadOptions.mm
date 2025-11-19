@interface VNEntityIdentificationModelReadOptions
- (BOOL)isEqual:(id)a3;
- (VNEntityIdentificationModelReadOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNEntityIdentificationModelReadOptions

- (VNEntityIdentificationModelReadOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VNEntityIdentificationModelReadOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acceptableVersions"];
    acceptableVersions = v5->_acceptableVersions;
    v5->_acceptableVersions = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setAcceptableVersions:self->_acceptableVersions];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNEntityIdentificationModelReadOptions *)self acceptableVersions];
      v7 = [(VNEntityIdentificationModelReadOptions *)v5 acceptableVersions];

      v8 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end