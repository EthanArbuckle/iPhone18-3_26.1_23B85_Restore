@interface BICImageMetadata
- (BICImageMetadata)initWithIdentifier:(id)a3 intrinsicAspectRatio:(id)a4 imageColor:(id)a5;
@end

@implementation BICImageMetadata

- (BICImageMetadata)initWithIdentifier:(id)a3 intrinsicAspectRatio:(id)a4 imageColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BICImageMetadata;
  v11 = [(BICImageMetadata *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_intrinsicAspectRatio, a4);
    objc_storeStrong(&v11->_imageColor, a5);
  }

  return v11;
}

@end