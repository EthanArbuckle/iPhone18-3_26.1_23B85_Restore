@interface LPSharingStatusMetadata
- (BOOL)isEqual:(id)a3;
- (LPSharingStatusMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
@end

@implementation LPSharingStatusMetadata

- (LPSharingStatusMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPSharingStatusMetadata;
  v5 = [(LPSharingStatusMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeAttributedStringForKey(v4, @"status");
    status = v5->_status;
    v5->_status = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPSharingStatusMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPSharingStatusMetadata *)self status];
    [(LPSharingStatusMetadata *)v4 setStatus:v5];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPSharingStatusMetadata;
  if ([(LPSharingStatusMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(v4[2], self->_status);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 unspecializedPresentationProperties];
  if (sizeClassAllowsStatusTransformation([v4 effectiveSizeClass]))
  {
    v6 = [(LPSharingStatusMetadata *)self status];
    v7 = [v5 captionBar];
    v8 = [v7 bottom];
    v9 = [v8 leading];
    [v9 setAttributedText:v6];
  }

  return v5;
}

@end