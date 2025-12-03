@interface UIImage(AuthKitUI)
+ (id)ak_imageNamed:()AuthKitUI;
+ (id)ak_imageWithColor:()AuthKitUI;
- (id)ak_copyScaledToSize:()AuthKitUI;
@end

@implementation UIImage(AuthKitUI)

+ (id)ak_imageNamed:()AuthKitUI
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = [MEMORY[0x277D755D0] configurationWithWeight:5];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:location[0] withConfiguration:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)ak_imageWithColor:()AuthKitUI
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = 0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    context = CGBitmapContextCreate(0, 1.0, 1.0, 8uLL, 4uLL, DeviceRGB, 1u);
    if (context)
    {
      v8 = location[0];
      v3 = location[0];
      CGContextSetFillColorWithColor(context, [v8 CGColor]);
      CGContextFillRect(context, *ymmword_2224482B8);
      image = CGBitmapContextCreateImage(context);
      if (image)
      {
        v4 = [[selfCopy alloc] initWithCGImage:image];
        v5 = v12;
        v12 = v4;
        MEMORY[0x277D82BD8](v5);
        CGImageRelease(image);
      }

      CGContextRelease(context);
    }

    CGColorSpaceRelease(DeviceRGB);
  }

  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)ak_copyScaledToSize:()AuthKitUI
{
  *&v15 = a3;
  *(&v15 + 1) = a4;
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x277D75568] preferredFormat];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [v13[0] setScale:?];
  MEMORY[0x277D82BD8](mainScreen);
  v4 = objc_alloc(MEMORY[0x277D75560]);
  v12 = [v4 initWithSize:v13[0] format:v15];
  v7 = v12;
  v10 = v15;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v11 = [v7 imageWithActions:?];
  v8 = [v11 imageWithRenderingMode:2];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);

  return v8;
}

@end