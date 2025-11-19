@interface LPSummarizedLinkMetadata
- (BOOL)isEqual:(id)a3;
- (LPSummarizedLinkMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
@end

@implementation LPSummarizedLinkMetadata

- (LPSummarizedLinkMetadata)initWithCoder:(id)a3
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [LPSummarizedLinkMetadata allocWithZone:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPSummarizedLinkMetadata;
  if ([(LPSummarizedLinkMetadata *)&v7 isEqual:v4])
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v3 = [a3 unspecializedPresentationPropertiesForStyle:39];

  return v3;
}

@end