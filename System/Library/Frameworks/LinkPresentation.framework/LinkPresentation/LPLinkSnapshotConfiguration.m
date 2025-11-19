@interface LPLinkSnapshotConfiguration
- (CGSize)maximumSize;
- (CGSize)size;
- (LPLinkSnapshotConfiguration)initWithCoder:(id)a3;
- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)a3 preferredSizeClass:(unint64_t)a4 maximumSize:(CGSize)a5 scale:(double)a6;
- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)a3 preferredSizeClass:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LPLinkSnapshotConfiguration

- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)a3 preferredSizeClass:(unint64_t)a4 maximumSize:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = LPLinkSnapshotConfiguration;
  v13 = [(LPLinkSnapshotConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, a3);
    v14->_preferredSizeClass = a4;
    v14->_maximumSize.width = width;
    v14->_maximumSize.height = height;
    v14->_scale = a6;
    v15 = v14;
  }

  return v14;
}

- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)a3 preferredSizeClass:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = LPLinkSnapshotConfiguration;
  v13 = [(LPLinkSnapshotConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, a3);
    v14->_preferredSizeClass = a4;
    v14->_size.width = width;
    v14->_size.height = height;
    v14->_scale = a6;
    v15 = v14;
  }

  return v14;
}

- (LPLinkSnapshotConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = LPLinkSnapshotConfiguration;
  v5 = [(LPLinkSnapshotConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v5->_preferredSizeClass = [v4 decodeIntegerForKey:@"preferredSizeClass"];
    v8 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"sizeClassParameters"];
    sizeClassParameters = v5->_sizeClassParameters;
    v5->_sizeClassParameters = v8;

    [v4 decodeFloatForKey:@"maximumWidth"];
    v11 = v10;
    [v4 decodeFloatForKey:@"maximumHeight"];
    v5->_maximumSize.width = v11;
    v5->_maximumSize.height = v12;
    [v4 decodeFloatForKey:@"sizeWidth"];
    v14 = v13;
    [v4 decodeFloatForKey:@"sizeHeight"];
    v5->_size.width = v14;
    v5->_size.height = v15;
    [v4 decodeFloatForKey:@"scale"];
    v5->_scale = v16;
    v17 = [v4 _lp_strictlyDecodeColorForKey:@"overrideBackgroundColor"];
    overrideBackgroundColor = v5->_overrideBackgroundColor;
    v5->_overrideBackgroundColor = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 _lp_encodeObjectIfNotNil:self->_traitCollection forKey:@"traitCollection"];
  [v9 encodeInteger:self->_preferredSizeClass forKey:@"preferredSizeClass"];
  [v9 _lp_encodeObjectIfNotNil:self->_sizeClassParameters forKey:@"sizeClassParameters"];
  width = self->_maximumSize.width;
  *&width = width;
  [v9 encodeFloat:@"maximumWidth" forKey:width];
  height = self->_maximumSize.height;
  *&height = height;
  [v9 encodeFloat:@"maximumHeight" forKey:height];
  v6 = self->_size.width;
  *&v6 = v6;
  [v9 encodeFloat:@"sizeWidth" forKey:v6];
  v7 = self->_size.height;
  *&v7 = v7;
  [v9 encodeFloat:@"sizeHeight" forKey:v7];
  scale = self->_scale;
  *&scale = scale;
  [v9 encodeFloat:@"scale" forKey:scale];
  [v9 _lp_encodeColorIfNotNil:self->_overrideBackgroundColor forKey:@"overrideBackgroundColor"];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end