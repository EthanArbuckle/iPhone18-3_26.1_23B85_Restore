@interface LPSharingStatusMetadata
- (BOOL)isEqual:(id)equal;
- (LPSharingStatusMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
@end

@implementation LPSharingStatusMetadata

- (LPSharingStatusMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPSharingStatusMetadata;
  v5 = [(LPSharingStatusMetadata *)&v10 init];
  if (v5)
  {
    v6 = decodeAttributedStringForKey(coderCopy, @"status");
    status = v5->_status;
    v5->_status = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPSharingStatusMetadata allocWithZone:zone];
  if (v4)
  {
    status = [(LPSharingStatusMetadata *)self status];
    [(LPSharingStatusMetadata *)v4 setStatus:status];

    v6 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPSharingStatusMetadata;
  if ([(LPSharingStatusMetadata *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_0(equalCopy[2], self->_status);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  unspecializedPresentationProperties = [transformerCopy unspecializedPresentationProperties];
  if (sizeClassAllowsStatusTransformation([transformerCopy effectiveSizeClass]))
  {
    status = [(LPSharingStatusMetadata *)self status];
    captionBar = [unspecializedPresentationProperties captionBar];
    bottom = [captionBar bottom];
    leading = [bottom leading];
    [leading setAttributedText:status];
  }

  return unspecializedPresentationProperties;
}

@end