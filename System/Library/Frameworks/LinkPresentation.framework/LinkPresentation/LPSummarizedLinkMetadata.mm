@interface LPSummarizedLinkMetadata
- (BOOL)isEqual:(id)equal;
- (LPSummarizedLinkMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
@end

@implementation LPSummarizedLinkMetadata

- (LPSummarizedLinkMetadata)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = LPSummarizedLinkMetadata;
  v3 = [(LPSummarizedLinkMetadata *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [LPSummarizedLinkMetadata allocWithZone:zone];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPSummarizedLinkMetadata;
  if ([(LPSummarizedLinkMetadata *)&v7 isEqual:equalCopy])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  v3 = [transformer unspecializedPresentationPropertiesForStyle:39];

  return v3;
}

@end