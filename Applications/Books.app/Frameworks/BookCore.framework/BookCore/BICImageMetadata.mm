@interface BICImageMetadata
- (BICImageMetadata)initWithIdentifier:(id)identifier intrinsicAspectRatio:(id)ratio imageColor:(id)color;
@end

@implementation BICImageMetadata

- (BICImageMetadata)initWithIdentifier:(id)identifier intrinsicAspectRatio:(id)ratio imageColor:(id)color
{
  identifierCopy = identifier;
  ratioCopy = ratio;
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = BICImageMetadata;
  v11 = [(BICImageMetadata *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_intrinsicAspectRatio, ratio);
    objc_storeStrong(&v11->_imageColor, color);
  }

  return v11;
}

@end