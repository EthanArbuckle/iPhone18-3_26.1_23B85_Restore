@interface LPLinkSnapshotConfiguration
- (CGSize)maximumSize;
- (CGSize)size;
- (LPLinkSnapshotConfiguration)initWithCoder:(id)coder;
- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)collection preferredSizeClass:(unint64_t)class maximumSize:(CGSize)size scale:(double)scale;
- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)collection preferredSizeClass:(unint64_t)class size:(CGSize)size scale:(double)scale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPLinkSnapshotConfiguration

- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)collection preferredSizeClass:(unint64_t)class maximumSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = LPLinkSnapshotConfiguration;
  v13 = [(LPLinkSnapshotConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, collection);
    v14->_preferredSizeClass = class;
    v14->_maximumSize.width = width;
    v14->_maximumSize.height = height;
    v14->_scale = scale;
    v15 = v14;
  }

  return v14;
}

- (LPLinkSnapshotConfiguration)initWithTraitCollection:(id)collection preferredSizeClass:(unint64_t)class size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = LPLinkSnapshotConfiguration;
  v13 = [(LPLinkSnapshotConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, collection);
    v14->_preferredSizeClass = class;
    v14->_size.width = width;
    v14->_size.height = height;
    v14->_scale = scale;
    v15 = v14;
  }

  return v14;
}

- (LPLinkSnapshotConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = LPLinkSnapshotConfiguration;
  v5 = [(LPLinkSnapshotConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;

    v5->_preferredSizeClass = [coderCopy decodeIntegerForKey:@"preferredSizeClass"];
    v8 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"sizeClassParameters"];
    sizeClassParameters = v5->_sizeClassParameters;
    v5->_sizeClassParameters = v8;

    [coderCopy decodeFloatForKey:@"maximumWidth"];
    v11 = v10;
    [coderCopy decodeFloatForKey:@"maximumHeight"];
    v5->_maximumSize.width = v11;
    v5->_maximumSize.height = v12;
    [coderCopy decodeFloatForKey:@"sizeWidth"];
    v14 = v13;
    [coderCopy decodeFloatForKey:@"sizeHeight"];
    v5->_size.width = v14;
    v5->_size.height = v15;
    [coderCopy decodeFloatForKey:@"scale"];
    v5->_scale = v16;
    v17 = [coderCopy _lp_strictlyDecodeColorForKey:@"overrideBackgroundColor"];
    overrideBackgroundColor = v5->_overrideBackgroundColor;
    v5->_overrideBackgroundColor = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeObjectIfNotNil:self->_traitCollection forKey:@"traitCollection"];
  [coderCopy encodeInteger:self->_preferredSizeClass forKey:@"preferredSizeClass"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_sizeClassParameters forKey:@"sizeClassParameters"];
  width = self->_maximumSize.width;
  *&width = width;
  [coderCopy encodeFloat:@"maximumWidth" forKey:width];
  height = self->_maximumSize.height;
  *&height = height;
  [coderCopy encodeFloat:@"maximumHeight" forKey:height];
  v6 = self->_size.width;
  *&v6 = v6;
  [coderCopy encodeFloat:@"sizeWidth" forKey:v6];
  v7 = self->_size.height;
  *&v7 = v7;
  [coderCopy encodeFloat:@"sizeHeight" forKey:v7];
  scale = self->_scale;
  *&scale = scale;
  [coderCopy encodeFloat:@"scale" forKey:scale];
  [coderCopy _lp_encodeColorIfNotNil:self->_overrideBackgroundColor forKey:@"overrideBackgroundColor"];
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