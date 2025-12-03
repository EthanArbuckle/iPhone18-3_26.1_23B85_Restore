@interface LPARAssetAttachmentSubstitute
- (LPARAssetAttachmentSubstitute)initWithARAsset:(id)asset;
- (LPARAssetAttachmentSubstitute)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LPARAssetAttachmentSubstitute

- (LPARAssetAttachmentSubstitute)initWithARAsset:(id)asset
{
  v7.receiver = self;
  v7.super_class = LPARAssetAttachmentSubstitute;
  v3 = [(LPARAsset *)&v7 _initWithARAsset:asset];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPARAssetAttachmentSubstitute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = LPARAssetAttachmentSubstitute;
  v5 = [(LPARAsset *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"richLinkARAssetAttachmentSubstituteIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = LPARAssetAttachmentSubstitute;
  [(LPARAsset *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_index forKey:@"richLinkARAssetAttachmentSubstituteIndex"];
}

@end