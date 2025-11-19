@interface _ATXPredictionModelDetails
- (_ATXPredictionModelDetails)initWithAssetCompatibilityVersion:(int64_t)a3 assetVersion:(int64_t)a4 abGroup:(id)a5;
- (_ATXPredictionModelDetails)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ATXPredictionModelDetails

- (_ATXPredictionModelDetails)initWithAssetCompatibilityVersion:(int64_t)a3 assetVersion:(int64_t)a4 abGroup:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _ATXPredictionModelDetails;
  v9 = [(_ATXPredictionModelDetails *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetCompatibilityVersion = a3;
    v9->_assetVersion = a4;
    v11 = [v8 copy];
    abGroup = v10->_abGroup;
    v10->_abGroup = v11;
  }

  return v10;
}

- (_ATXPredictionModelDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"assetCompatibilityVersion"];
  v6 = [v4 decodeIntegerForKey:@"assetVersion"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abGroup"];

  v8 = [(_ATXPredictionModelDetails *)self initWithAssetCompatibilityVersion:v5 assetVersion:v6 abGroup:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  assetCompatibilityVersion = self->_assetCompatibilityVersion;
  v5 = a3;
  [v5 encodeInteger:assetCompatibilityVersion forKey:@"assetCompatibilityVersion"];
  [v5 encodeInteger:self->_assetVersion forKey:@"assetVersion"];
  [v5 encodeObject:self->_abGroup forKey:@"abGroup"];
}

@end