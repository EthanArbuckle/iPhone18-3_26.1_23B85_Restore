@interface _ATXPredictionModelDetails
- (_ATXPredictionModelDetails)initWithAssetCompatibilityVersion:(int64_t)version assetVersion:(int64_t)assetVersion abGroup:(id)group;
- (_ATXPredictionModelDetails)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ATXPredictionModelDetails

- (_ATXPredictionModelDetails)initWithAssetCompatibilityVersion:(int64_t)version assetVersion:(int64_t)assetVersion abGroup:(id)group
{
  groupCopy = group;
  v14.receiver = self;
  v14.super_class = _ATXPredictionModelDetails;
  v9 = [(_ATXPredictionModelDetails *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetCompatibilityVersion = version;
    v9->_assetVersion = assetVersion;
    v11 = [groupCopy copy];
    abGroup = v10->_abGroup;
    v10->_abGroup = v11;
  }

  return v10;
}

- (_ATXPredictionModelDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"assetCompatibilityVersion"];
  v6 = [coderCopy decodeIntegerForKey:@"assetVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abGroup"];

  v8 = [(_ATXPredictionModelDetails *)self initWithAssetCompatibilityVersion:v5 assetVersion:v6 abGroup:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  assetCompatibilityVersion = self->_assetCompatibilityVersion;
  coderCopy = coder;
  [coderCopy encodeInteger:assetCompatibilityVersion forKey:@"assetCompatibilityVersion"];
  [coderCopy encodeInteger:self->_assetVersion forKey:@"assetVersion"];
  [coderCopy encodeObject:self->_abGroup forKey:@"abGroup"];
}

@end