@interface QLTThumbnailRequest
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NSString)contentType;
- (QLTThumbnailRequest)initWithCoder:(id)a3;
- (QLTThumbnailRequest)initWithVersionedFileIdentifier:(id)a3 size:(CGSize)a4 scale:(double)a5 iconMode:(BOOL)a6 flavor:(int)a7 wantsBaseline:(BOOL)a8 minimumDimension:(double)a9 requestedTypes:(unint64_t)a10;
- (float)maximumPixelSize;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (int64_t)requestedMostRepresentativeType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLTThumbnailRequest

- (QLTThumbnailRequest)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v23 = 0.0;
  v24 = 0.0;
  [v8 getValue:&v23 size:16];
  v9 = objc_alloc(objc_opt_class());
  v10 = [v5 decodeObjectOfClasses:v7 forKey:@"fi"];
  [v5 decodeDoubleForKey:@"sc"];
  v12 = v11;
  v13 = [v5 decodeBoolForKey:@"i"];
  v14 = [v5 decodeIntForKey:@"flavor"];
  v15 = [v5 decodeBoolForKey:@"baseline"];
  [v5 decodeDoubleForKey:@"ms"];
  v17 = v16;
  v18 = [v5 decodeIntegerForKey:@"rt"];
  v19 = [v9 initWithVersionedFileIdentifier:v10 size:v13 scale:v14 iconMode:v15 flavor:v18 wantsBaseline:v23 minimumDimension:v24 requestedTypes:{v12, v17}];

  v20 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(QLTThumbnailRequest *)v19 setUuid:v20];

  -[QLTThumbnailRequest setBadgeType:](v19, "setBadgeType:", [v5 decodeIntegerForKey:@"bt"]);
  v21 = [v5 decodeIntegerForKey:@"generationBehavior"];

  [(QLTThumbnailRequest *)v19 setGenerationBehavior:v21];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  fileIdentifier = self->_fileIdentifier;
  v6 = a3;
  [v6 encodeObject:fileIdentifier forKey:@"fi"];
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [v6 encodeObject:v5 forKey:@"si"];

  [v6 encodeDouble:@"sc" forKey:self->_scale];
  [v6 encodeBool:self->_iconMode forKey:@"i"];
  [v6 encodeInteger:self->_badgeType forKey:@"bt"];
  [v6 encodeDouble:@"ms" forKey:self->_minimumDimension];
  [v6 encodeInteger:self->_requestedTypes forKey:@"rt"];
  [v6 encodeObject:self->_uuid forKey:@"uuid"];
  [v6 encodeInteger:self->_flavor forKey:@"flavor"];
  [v6 encodeBool:self->_wantsBaseline forKey:@"baseline"];
  [v6 encodeInteger:self->_generationBehavior forKey:@"generationBehavior"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(QLTThumbnailRequest *)self iconMode];
  v6 = [v4 iconMode];
  if (!v5 && (v6 & 1) != 0)
  {
    goto LABEL_3;
  }

  if (((!v5 | v6) & 1) == 0)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v8 = [(QLTThumbnailRequest *)self badgeType];
  v9 = [v4 badgeType];
  if (v8 || !v9)
  {
    if (!v8 || v9)
    {
      [(QLTThumbnailRequest *)self maximumPixelSize];
      v12 = v11;
      [v4 maximumPixelSize];
      if (v12 >= v13)
      {
        [(QLTThumbnailRequest *)self maximumPixelSize];
        v21 = v20;
        [v4 maximumPixelSize];
        v7 = v21 > v22;
        goto LABEL_10;
      }

      [(QLTThumbnailRequest *)self minimumDimension];
      v15 = v14;
      [v4 minimumDimension];
      if (v15 <= v16)
      {
        goto LABEL_3;
      }

      [(QLTThumbnailRequest *)self minimumDimension];
      v18 = v17;
      [v4 minimumDimension];
      if (v18 <= v19)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = -1;
LABEL_10:

  return v7;
}

- (QLTThumbnailRequest)initWithVersionedFileIdentifier:(id)a3 size:(CGSize)a4 scale:(double)a5 iconMode:(BOOL)a6 flavor:(int)a7 wantsBaseline:(BOOL)a8 minimumDimension:(double)a9 requestedTypes:(unint64_t)a10
{
  height = a4.height;
  width = a4.width;
  v20 = a3;
  v26.receiver = self;
  v26.super_class = QLTThumbnailRequest;
  v21 = [(QLTThumbnailRequest *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_fileIdentifier, a3);
    v22->_size.width = width;
    v22->_size.height = height;
    v22->_scale = a5;
    v22->_iconMode = a6;
    v22->_minimumDimension = a9;
    v22->_requestedTypes = a10;
    v23 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v22->_uuid;
    v22->_uuid = v23;

    v22->_flavor = a7;
    v22->_wantsBaseline = a8;
    v22->_badgeType = 1;
    v22->_generationBehavior = 2;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithVersionedFileIdentifier:self->_fileIdentifier size:self->_iconMode scale:self->_flavor iconMode:self->_wantsBaseline flavor:self->_requestedTypes wantsBaseline:self->_size.width minimumDimension:self->_size.height requestedTypes:{self->_scale, self->_minimumDimension}];
  v5 = [(NSUUID *)self->_uuid copy];
  [v4 setUuid:v5];

  [v4 setBadgeType:self->_badgeType];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      uuid = self->_uuid;
      v7 = [(QLTThumbnailRequest *)v5 uuid];
      if (![(NSUUID *)uuid isEqual:v7])
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v8 = [(QLTThumbnailRequest *)self fileIdentifier];
      v9 = [(QLTThumbnailRequest *)v5 fileIdentifier];
      if (![v8 isEqual:v9])
      {
        goto LABEL_17;
      }

      [(QLTThumbnailRequest *)v5 size];
      v11 = 0;
      if (self->_size.width != v12 || self->_size.height != v10)
      {
        goto LABEL_18;
      }

      scale = self->_scale;
      [(QLTThumbnailRequest *)v5 scale];
      if (scale != v14)
      {
        goto LABEL_17;
      }

      iconMode = self->_iconMode;
      if (iconMode == [(QLTThumbnailRequest *)v5 iconMode]&& (badgeType = self->_badgeType, badgeType == [(QLTThumbnailRequest *)v5 badgeType]) && (minimumDimension = self->_minimumDimension, [(QLTThumbnailRequest *)v5 minimumDimension], minimumDimension == v18) && (requestedTypes = self->_requestedTypes, requestedTypes == [(QLTThumbnailRequest *)v5 requestedTypes]) && (flavor = self->_flavor, flavor == [(QLTThumbnailRequest *)v5 flavor]))
      {
        wantsBaseline = self->_wantsBaseline;
        v11 = wantsBaseline == [(QLTThumbnailRequest *)v5 wantsBaseline];
      }

      else
      {
LABEL_17:
        v11 = 0;
      }

LABEL_18:

      goto LABEL_19;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(QLCacheVersionedFileIdentifier *)self->_fileIdentifier hash];
  width = self->_size.width;
  return v3 ^ [(NSUUID *)self->_uuid hash]^ width;
}

- (float)maximumPixelSize
{
  width = self->_size.width;
  if (width < self->_size.height)
  {
    width = self->_size.height;
  }

  return self->_scale * width;
}

- (NSString)contentType
{
  contentType = self->_contentType;
  if (!contentType)
  {
    v4 = [(QLTThumbnailRequest *)self computeContentType];
    v5 = self->_contentType;
    self->_contentType = v4;

    contentType = self->_contentType;
  }

  return contentType;
}

- (int64_t)requestedMostRepresentativeType
{
  if (self->_requestedTypes)
  {
    return flsl(self->_requestedTypes & 7) - 1;
  }

  else
  {
    return 0;
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end