@interface CNPhotoPickerVariantsManager
+ (id)avatarBackgroundsFromDictionary:(id)dictionary;
+ (id)avatarPoseConfigurationsForAvatarRecord:(id)record;
+ (id)colorFromRGBArray:(id)array;
+ (id)colorFromRGBString:(id)string;
+ (id)colorGradientBackground:(id)background;
+ (id)colorVariantWithColorNamed:(id)named;
+ (id)compositeColorForTopColor:(id)color bottomColor:(id)bottomColor;
+ (id)defaultEmojisFromDictionary:(id)dictionary;
+ (id)generateGradientColorsByColor;
+ (id)generateMonogramGradientColorsByColor;
+ (id)gradientBackgroundImageForColor:(id)color;
+ (id)gradientBackgroundImageForColor:(id)color bottomColor:(id)bottomColor;
+ (id)gradientStartColor:(id)color;
+ (id)monogramColorGradientBackground:(id)background;
+ (id)nonAlphaColorForBackgroundColor:(id)color;
+ (id)sharingProfileAvatarPoseConfigurationForAvatarRecord:(id)record;
- (CNPhotoPickerVariantsManager)init;
- (id)randomColorVariant;
@end

@implementation CNPhotoPickerVariantsManager

- (id)randomColorVariant
{
  avatarBackgrounds = [(CNPhotoPickerVariantsManager *)self avatarBackgrounds];
  v4 = arc4random_uniform([avatarBackgrounds count]);

  avatarBackgrounds2 = [(CNPhotoPickerVariantsManager *)self avatarBackgrounds];
  v6 = [avatarBackgrounds2 objectAtIndexedSubscript:v4];

  return v6;
}

- (CNPhotoPickerVariantsManager)init
{
  v12.receiver = self;
  v12.super_class = CNPhotoPickerVariantsManager;
  v2 = [(CNPhotoPickerVariantsManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"PhotoPickerVariants" ofType:@"plist"];

    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
    v6 = [objc_opt_class() avatarBackgroundsFromDictionary:v5];
    avatarBackgrounds = v2->_avatarBackgrounds;
    v2->_avatarBackgrounds = v6;

    v8 = [objc_opt_class() defaultEmojisFromDictionary:v5];
    defaultEmojis = v2->_defaultEmojis;
    v2->_defaultEmojis = v8;

    v10 = v2;
  }

  return v2;
}

+ (id)generateMonogramGradientColorsByColor
{
  availableColors = [MEMORY[0x1E69BDC50] availableColors];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __69__CNPhotoPickerVariantsManager_generateMonogramGradientColorsByColor__block_invoke;
  v13 = &unk_1E74E2190;
  v5 = dictionary;
  v14 = v5;
  selfCopy = self;
  [availableColors _cn_each:&v10];
  defaultGradientStartColor = [MEMORY[0x1E69BDC50] defaultGradientStartColor];
  v7 = [objc_opt_class() gradientBackgroundImageForColor:defaultGradientStartColor];
  [v5 setObject:v7 forKeyedSubscript:defaultGradientStartColor];

  v8 = v5;
  return v5;
}

void __69__CNPhotoPickerVariantsManager_generateMonogramGradientColorsByColor__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 color];
  v3 = [objc_opt_class() gradientBackgroundImageForColor:v4];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

+ (id)generateGradientColorsByColor
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"PhotoPickerVariants" ofType:@"plist"];

  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 objectForKeyedSubscript:@"avatarBackgrounds"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CNPhotoPickerVariantsManager_generateGradientColorsByColor__block_invoke;
  v10[3] = &unk_1E74E2168;
  selfCopy = self;
  v8 = dictionary;
  v11 = v8;
  [v7 _cn_each:v10];

  return v8;
}

void __61__CNPhotoPickerVariantsManager_generateGradientColorsByColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"rgbValuesTop"];
  v4 = [v3 objectForKeyedSubscript:@"rgbValuesBottom"];

  v5 = [*(a1 + 40) colorFromRGBArray:v8];
  v6 = [*(a1 + 40) colorFromRGBArray:v4];
  v7 = [objc_opt_class() gradientBackgroundImageForColor:v5 bottomColor:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

+ (id)gradientBackgroundImageForColor:(id)color bottomColor:(id)bottomColor
{
  colorCopy = color;
  bottomColorCopy = bottomColor;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, 0x32uLL, 0x32uLL, 8uLL, 0xC8uLL, DeviceRGB, 1u);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v11 = [whiteColor colorWithAlphaComponent:1.0];
  CGContextSetFillColorWithColor(v9, [v11 CGColor]);

  v21.size.width = 50.0;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.height = 50.0;
  CGContextFillRect(v9, v21);
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, [colorCopy CGColor]);
  if (bottomColorCopy)
  {
    CFArrayAppendValue(Mutable, [bottomColorCopy CGColor]);
  }

  else
  {
    v13 = [self gradientStartColor:colorCopy];
    CFArrayAppendValue(Mutable, [v13 CGColor]);
  }

  v14 = CGGradientCreateWithColors(DeviceRGB, Mutable, 0);
  v20.y = 50.0;
  v19.x = 0.0;
  v19.y = 0.0;
  v20.x = 0.0;
  CGContextDrawLinearGradient(v9, v14, v19, v20, 0);
  Image = CGBitmapContextCreateImage(v9);
  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);
  CGGradientRelease(v14);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceRGB);
  CFRelease(Mutable);

  return v16;
}

+ (id)gradientBackgroundImageForColor:(id)color
{
  colorCopy = color;
  v4 = [objc_opt_class() gradientBackgroundImageForColor:colorCopy bottomColor:0];

  return v4;
}

+ (id)compositeColorForTopColor:(id)color bottomColor:(id)bottomColor
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  colorCopy = color;
  [bottomColor getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v6 = [MEMORY[0x1E69DC888] colorWithRed:((1.0 - v8) * (v12 * v15) + v11 * v8) / (v8 + v12 * (1.0 - v8)) green:((1.0 - v8) * (v12 * v14) + v10 * v8) / (v8 + v12 * (1.0 - v8)) blue:((1.0 - v8) * (v12 * v13) + v9 * v8) / (v8 + v12 * (1.0 - v8)) alpha:?];

  return v6;
}

+ (id)nonAlphaColorForBackgroundColor:(id)color
{
  colorCopy = color;
  v4 = objc_opt_class();
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 compositeColorForTopColor:colorCopy bottomColor:whiteColor];

  return v6;
}

+ (id)gradientStartColor:(id)color
{
  colorCopy = color;
  v4 = objc_opt_class();
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [whiteColor colorWithAlphaComponent:0.3];
  v7 = [v4 compositeColorForTopColor:v6 bottomColor:colorCopy];

  return v7;
}

+ (id)colorGradientBackground:(id)background
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNPhotoPickerVariantsManager_colorGradientBackground___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = colorGradientBackground__onceToken;
  backgroundCopy = background;
  if (v3 != -1)
  {
    dispatch_once(&colorGradientBackground__onceToken, block);
  }

  v5 = [colorGradientBackground__gradientColors objectForKeyedSubscript:backgroundCopy];

  return v5;
}

uint64_t __56__CNPhotoPickerVariantsManager_colorGradientBackground___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) generateGradientColorsByColor];
  v2 = colorGradientBackground__gradientColors;
  colorGradientBackground__gradientColors = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)monogramColorGradientBackground:(id)background
{
  backgroundCopy = background;
  v5 = backgroundCopy;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CNPhotoPickerVariantsManager_monogramColorGradientBackground___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (monogramColorGradientBackground__onceToken == -1)
  {
    if (backgroundCopy)
    {
LABEL_3:
      v6 = [monogramColorGradientBackground__gradientColors objectForKeyedSubscript:v5];
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&monogramColorGradientBackground__onceToken, block);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  defaultGradientStartColor = [MEMORY[0x1E69BDC50] defaultGradientStartColor];
  v6 = [monogramColorGradientBackground__gradientColors objectForKeyedSubscript:defaultGradientStartColor];

LABEL_6:

  return v6;
}

uint64_t __64__CNPhotoPickerVariantsManager_monogramColorGradientBackground___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) generateMonogramGradientColorsByColor];
  v2 = monogramColorGradientBackground__gradientColors;
  monogramColorGradientBackground__gradientColors = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)sharingProfileAvatarPoseConfigurationForAvatarRecord:(id)record
{
  v3 = [self avatarPoseConfigurationsForAvatarRecord:record];
  v4 = [v3 _cn_firstObjectPassingTest:&__block_literal_global_39];
  if (!v4)
  {
    if ([v3 count])
    {
      v4 = [v3 objectAtIndexedSubscript:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __85__CNPhotoPickerVariantsManager_sharingProfileAvatarPoseConfigurationForAvatarRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqual:@"big_happy"];

  return v3;
}

+ (id)avatarPoseConfigurationsForAvatarRecord:(id)record
{
  recordCopy = record;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getAVTPoseSelectionViewControllerClass_softClass;
  v12 = getAVTPoseSelectionViewControllerClass_softClass;
  if (!getAVTPoseSelectionViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getAVTPoseSelectionViewControllerClass_block_invoke;
    v8[3] = &unk_1E74E7518;
    v8[4] = &v9;
    __getAVTPoseSelectionViewControllerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 poseConfigurationsForTypes:0 avatarRecord:recordCopy];

  return v6;
}

+ (id)colorVariantWithColorNamed:(id)named
{
  namedCopy = named;
  v4 = [CNPhotoPickerVariantsManager colorFromRGBString:namedCopy];
  v5 = [[CNPhotoPickerColorVariant alloc] initWithColor:v4 named:namedCopy];

  return v5;
}

+ (id)colorFromRGBString:(id)string
{
  v3 = colorFromRGBString__cn_once_token_1;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&colorFromRGBString__cn_once_token_1, &__block_literal_global_6105);
  }

  v5 = colorFromRGBString__cn_once_object_1;
  v6 = [stringCopy componentsSeparatedByString:@":"];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CNPhotoPickerVariantsManager_colorFromRGBString___block_invoke_2;
  v11[3] = &unk_1E74E2120;
  v12 = v5;
  v7 = v5;
  v8 = [v6 _cn_map:v11];

  v9 = [objc_opt_class() colorFromRGBArray:v8];

  return v9;
}

void __51__CNPhotoPickerVariantsManager_colorFromRGBString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v0 setNumberStyle:1];
  v1 = colorFromRGBString__cn_once_object_1;
  colorFromRGBString__cn_once_object_1 = v0;
}

+ (id)colorFromRGBArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] <= 2)
  {
    +[CNUIColorRepository photoPickerAvatarBackgroundDefaultColor];
  }

  else
  {
    v4 = [arrayCopy objectAtIndexedSubscript:0];
    [v4 floatValue];
    v6 = (v5 / 255.0);

    v7 = [arrayCopy objectAtIndexedSubscript:1];
    [v7 floatValue];
    v9 = (v8 / 255.0);

    v10 = [arrayCopy objectAtIndexedSubscript:2];
    [v10 floatValue];
    v12 = (v11 / 255.0);

    [MEMORY[0x1E69DC888] colorWithRed:v6 green:v9 blue:v12 alpha:1.0];
  }
  v13 = ;

  return v13;
}

+ (id)defaultEmojisFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CNPhotoPickerVariantsManager_defaultEmojisFromDictionary___block_invoke;
  v10[3] = &unk_1E74E4478;
  v11 = dictionaryCopy;
  selfCopy = self;
  v5 = defaultEmojisFromDictionary__onceToken;
  v6 = dictionaryCopy;
  if (v5 != -1)
  {
    dispatch_once(&defaultEmojisFromDictionary__onceToken, v10);
  }

  v7 = defaultEmojisFromDictionary__defaultEmojis;
  v8 = defaultEmojisFromDictionary__defaultEmojis;

  return v7;
}

void __60__CNPhotoPickerVariantsManager_defaultEmojisFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"defaultEmojis"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CNPhotoPickerVariantsManager_defaultEmojisFromDictionary___block_invoke_2;
  v5[3] = &__block_descriptor_40_e49___CNPhotoPickerDefaultEmoji_16__0__NSDictionary_8l;
  v5[4] = *(a1 + 40);
  v3 = [v2 _cn_map:v5];
  v4 = defaultEmojisFromDictionary__defaultEmojis;
  defaultEmojisFromDictionary__defaultEmojis = v3;
}

CNPhotoPickerDefaultEmoji *__60__CNPhotoPickerVariantsManager_defaultEmojisFromDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"emojiString"];
  v5 = [v3 objectForKeyedSubscript:@"backgroundColor"];

  v6 = [v5 componentsJoinedByString:@":"];
  v7 = [*(a1 + 32) colorFromRGBArray:v5];
  v8 = [CNPhotoPickerDefaultEmoji alloc];
  v9 = [[CNPhotoPickerColorVariant alloc] initWithColor:v7 named:v6];
  v10 = [(CNPhotoPickerDefaultEmoji *)v8 initWithEmojiString:v4 colorVariant:v9];

  return v10;
}

+ (id)avatarBackgroundsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CNPhotoPickerVariantsManager_avatarBackgroundsFromDictionary___block_invoke;
  v10[3] = &unk_1E74E4478;
  v11 = dictionaryCopy;
  selfCopy = self;
  v5 = avatarBackgroundsFromDictionary__onceToken;
  v6 = dictionaryCopy;
  if (v5 != -1)
  {
    dispatch_once(&avatarBackgroundsFromDictionary__onceToken, v10);
  }

  v7 = avatarBackgroundsFromDictionary__avatarBackgrounds;
  v8 = avatarBackgroundsFromDictionary__avatarBackgrounds;

  return v7;
}

void __64__CNPhotoPickerVariantsManager_avatarBackgroundsFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"avatarBackgrounds"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CNPhotoPickerVariantsManager_avatarBackgroundsFromDictionary___block_invoke_2;
  v5[3] = &__block_descriptor_40_e49___CNPhotoPickerColorVariant_16__0__NSDictionary_8l;
  v5[4] = *(a1 + 40);
  v3 = [v2 _cn_map:v5];
  v4 = avatarBackgroundsFromDictionary__avatarBackgrounds;
  avatarBackgroundsFromDictionary__avatarBackgrounds = v3;
}

CNPhotoPickerColorVariant *__64__CNPhotoPickerVariantsManager_avatarBackgroundsFromDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"rgbValuesTop"];
  v4 = [v3 componentsJoinedByString:@":"];
  v5 = [*(a1 + 32) colorFromRGBArray:v3];
  v6 = [[CNPhotoPickerColorVariant alloc] initWithColor:v5 named:v4];

  return v6;
}

@end