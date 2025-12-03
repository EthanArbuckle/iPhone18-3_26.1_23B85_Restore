@interface BuddyHelloTextureDataSource
- (BuddyHelloTextureDataSource)initWithImage:(id)image;
- (CGAffineTransform)bookendTextureTransform;
@end

@implementation BuddyHelloTextureDataSource

- (BuddyHelloTextureDataSource)initWithImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = BuddyHelloTextureDataSource;
  v4 = [(BuddyHelloTextureDataSource *)&v11 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    v10 = MTLCreateSystemDefaultDevice();
    v9 = [[MTKTextureLoader alloc] initWithDevice:v10];
    v5 = [v9 newTextureWithCGImage:objc_msgSend(location[0] options:"CGImage") error:{0, 0}];
    v6 = *(selfCopy + 1);
    *(selfCopy + 1) = v5;

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CGAffineTransform)bookendTextureTransform
{
  selfCopy = self;
  v9 = a3;
  [(BuddyHelloTextureDataSource *)self textureVerticalOffset];
  if (v4 == 0.0)
  {
    return memcpy(retstr, &CGAffineTransformIdentity, sizeof(CGAffineTransform));
  }

  [(BuddyHelloTextureDataSource *)selfCopy textureVerticalOffset];
  v7 = v6;
  memcpy(&v8, &CGAffineTransformIdentity, sizeof(v8));
  return CGAffineTransformTranslate(retstr, &v8, 0.0, v7);
}

@end