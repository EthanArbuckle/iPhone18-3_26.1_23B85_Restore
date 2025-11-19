@interface PTChannelDescriptor
- (PTChannelDescriptor)initWithName:(NSString *)name image:(UIImage *)image;
@end

@implementation PTChannelDescriptor

- (PTChannelDescriptor)initWithName:(NSString *)name image:(UIImage *)image
{
  v6 = name;
  v7 = image;
  v14.receiver = self;
  v14.super_class = PTChannelDescriptor;
  v8 = [(PTChannelDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_image, image);
    v11 = _pttTemporaryFilesystemURLForImage(v7);
    imageFileURL = v8->_imageFileURL;
    v8->_imageFileURL = v11;
  }

  return v8;
}

@end