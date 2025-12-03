@interface VNEntityIdentificationModelReadOptions
- (BOOL)isEqual:(id)equal;
- (VNEntityIdentificationModelReadOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNEntityIdentificationModelReadOptions

- (VNEntityIdentificationModelReadOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VNEntityIdentificationModelReadOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acceptableVersions"];
    acceptableVersions = v5->_acceptableVersions;
    v5->_acceptableVersions = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setAcceptableVersions:self->_acceptableVersions];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      acceptableVersions = [(VNEntityIdentificationModelReadOptions *)self acceptableVersions];
      acceptableVersions2 = [(VNEntityIdentificationModelReadOptions *)v5 acceptableVersions];

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