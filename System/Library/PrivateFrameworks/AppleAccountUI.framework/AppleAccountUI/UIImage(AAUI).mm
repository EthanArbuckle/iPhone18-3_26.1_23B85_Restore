@interface UIImage(AAUI)
+ (id)descriptorForDataclassWithSize:()AAUI;
+ (id)imageForDataclassWithBundleID:()AAUI;
+ (id)imageForDataclassWithType:()AAUI;
+ (id)imageForTableUIWithType:()AAUI;
@end

@implementation UIImage(AAUI)

+ (id)imageForDataclassWithType:()AAUI
{
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v6 = [[v4 alloc] initWithType:v5];

  v7 = [self descriptorForDataclassWithSize:56.0];
  v8 = [v6 prepareImageForDescriptor:v7];

  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [v8 CGImage];
  [v8 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

+ (id)imageForDataclassWithBundleID:()AAUI
{
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5];

  v7 = [self descriptorForDataclassWithSize:56.0];
  v8 = [v6 prepareImageForDescriptor:v7];

  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [v8 CGImage];
  [v8 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

+ (id)descriptorForDataclassWithSize:()AAUI
{
  v2 = objc_alloc(MEMORY[0x1E69A8A30]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v5 = [v2 initWithSize:self scale:{self, v4 * 3.0}];

  [v5 setDrawBorder:1];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v5 setAppearance:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") != 1}];

  currentTraitCollection2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  if ([currentTraitCollection2 layoutDirection])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v5 setLanguageDirection:v8];

  currentTraitCollection3 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v5 setContrast:{objc_msgSend(currentTraitCollection3, "accessibilityContrast") == 1}];

  return v5;
}

+ (id)imageForTableUIWithType:()AAUI
{
  v3 = MEMORY[0x1E69A8A00];
  v4 = a3;
  v5 = [[v3 alloc] initWithType:v4];

  v6 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  v7 = [v5 prepareImageForDescriptor:v6];
  v8 = MEMORY[0x1E69DCAB8];
  cGImage = [v7 CGImage];
  [v7 scale];
  v10 = [v8 imageWithCGImage:cGImage scale:0 orientation:?];

  return v10;
}

@end