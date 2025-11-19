@interface UIImage(CNUI)
+ (id)cnui_actionTypeForTransportType:()CNUI;
+ (id)cnui_carPlayUserActionSymbolImageForActionType:()CNUI;
+ (id)cnui_imageNamed:()CNUI;
+ (id)cnui_imageWithDataPreservingScale:()CNUI;
+ (id)cnui_roundedNavButtonPlatterImage;
+ (id)cnui_symbolImageForContactCardChevron;
+ (id)cnui_symbolImageForContactCardMenuChevron;
+ (id)cnui_symbolImageForDynamicallySizedContactCardChevron;
+ (id)cnui_symbolImageForNavigationListChevron;
+ (id)cnui_symbolImageForTransportType:()CNUI withColor:;
+ (id)cnui_symbolImageForUnknownNumberContactCardChevron;
+ (id)cnui_symbolImageNamed:()CNUI scale:weight:withColor:useFixedSize:compatibleWithTextStyle:;
+ (id)cnui_templateImageNamed:()CNUI withTint:;
+ (id)cnui_tintedImageNamed:()CNUI withTint:;
+ (id)cnui_userActionOutlinedSymbolImageForActionType:()CNUI scale:withColor:;
+ (id)cnui_userActionSymbolImageForActionType:()CNUI scale:withColor:compatibleWithTextStyle:;
- (uint64_t)cnui_CGImageSnapshot;
@end

@implementation UIImage(CNUI)

+ (id)cnui_symbolImageForContactCardChevron
{
  v2 = +[CNUIColorRepository contactCardChevronImageColor];
  v3 = [a1 cnui_symbolImageForContactCardChevronWithColor:v2];

  return v3;
}

- (uint64_t)cnui_CGImageSnapshot
{
  if ([a1 ioSurface])
  {
    v2 = UICreateCGImageFromIOSurface();
    [a1 size];
    v4 = v3;
    [a1 size];
    v6 = v5;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = CGBitmapContextCreate(0, v4, v6, 8uLL, vcvtd_n_u64_f64(v4, 2uLL), DeviceRGB, 1u);
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    v14.size.width = v4;
    v14.size.height = v6;
    CGContextDrawImage(v8, v14, v2);
    Image = CGBitmapContextCreateImage(v8);
    v10 = Image;
    if (Image)
    {
      CFAutorelease(Image);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    CGColorSpaceRelease(DeviceRGB);
    if (v8)
    {
      CFRelease(v8);
    }

    return v10;
  }

  else
  {
    v12 = a1;

    return [v12 CGImage];
  }
}

+ (id)cnui_roundedNavButtonPlatterImage
{
  v0 = [MEMORY[0x1E69DCAB8] cnui_imageNamed:@"contact-card-nav-button-platter"];
  v1 = [v0 imageWithAlignmentRectInsets:{0.0, 4.0, 0.0, 4.0}];

  return v1;
}

+ (id)cnui_symbolImageNamed:()CNUI scale:weight:withColor:useFixedSize:compatibleWithTextStyle:
{
  v13 = a3;
  v14 = a6;
  v15 = a8;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v16 = 0;
  }

  else
  {
    if (a7)
    {
      v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v15 compatibleWithTraitCollection:v17];
      v19 = MEMORY[0x1E69DCAD8];
      [v18 pointSize];
      v20 = [v19 configurationWithPointSize:a5 weight:a4 scale:?];
    }

    else
    {
      v20 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v15 scale:a4];
    }

    v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v13 withConfiguration:v20];
    v16 = v21;
    if (v14)
    {
      v22 = [v21 imageWithTintColor:v14];

      v16 = [v22 imageWithRenderingMode:1];
    }
  }

  return v16;
}

+ (id)cnui_carPlayUserActionSymbolImageForActionType:()CNUI
{
  v2 = [MEMORY[0x1E6996C08] symbolImageNameForActionType:?];
  v3 = [a1 cnui_symbolImageNamed:v2 scale:2 withColor:0 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDD00]];

  return v3;
}

+ (id)cnui_userActionSymbolImageForActionType:()CNUI scale:withColor:compatibleWithTextStyle:
{
  v9 = MEMORY[0x1E6996C08];
  v10 = a6;
  v11 = a5;
  v12 = [v9 symbolImageNameForActionType:a3];
  v13 = [a1 cnui_symbolImageNamed:v12 scale:2 withColor:v11 useFixedSize:1 compatibleWithTextStyle:v10];

  return v13;
}

+ (id)cnui_userActionOutlinedSymbolImageForActionType:()CNUI scale:withColor:
{
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = MEMORY[0x1E6996C08];
  v9 = a5;
  v10 = [v8 symbolOulinedImageNameForActionType:a3];
  v11 = [a1 cnui_symbolImageNamed:v10 scale:2 withColor:v9 useFixedSize:1 compatibleWithTextStyle:v7];

  return v11;
}

+ (id)cnui_actionTypeForTransportType:()CNUI
{
  v4 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x5Fu >> v4))
  {
    v5 = **(&unk_1E74E75A0 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)cnui_symbolImageForTransportType:()CNUI withColor:
{
  if (a3 == 6)
  {
    v5 = *MEMORY[0x1E69DDCF8];
    v6 = a4;
    v7 = [a1 cnui_symbolImageNamed:@"staroflife.fill" scale:3 withColor:v6 useFixedSize:1 compatibleWithTextStyle:v5];
  }

  else
  {
    v9 = a4;
    v6 = [a1 cnui_actionTypeForTransportType:a3];
    v7 = [a1 cnui_userActionSymbolImageForActionType:v6 scale:2 withColor:v9];
  }

  return v7;
}

+ (id)cnui_symbolImageForContactCardMenuChevron
{
  v2 = +[CNUIColorRepository contactCardChevronImageColor];
  v3 = [a1 cnui_symbolImageNamed:@"chevron.up.chevron.down" scale:1 weight:7 withColor:v2 useFixedSize:0 compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];

  return v3;
}

+ (id)cnui_symbolImageForNavigationListChevron
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = +[CNUIColorRepository navigationListDisclosureImageColor];
  v2 = [v0 cnui_symbolImageNamed:@"chevron.down" scale:1 weight:7 withColor:v1 useFixedSize:0 compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];

  return v2;
}

+ (id)cnui_symbolImageForUnknownNumberContactCardChevron
{
  v2 = +[CNUIColorRepository contactCardChevronImageColor];
  v3 = [a1 cnui_symbolImageForUnknownNumberContactCardChevronWithColor:v2];

  return v3;
}

+ (id)cnui_symbolImageForDynamicallySizedContactCardChevron
{
  v2 = +[CNUIColorRepository contactCardChevronImageColor];
  v3 = [a1 cnui_symbolImageForDynamicallySizedContactCardChevronWithColor:v2];

  return v3;
}

+ (id)cnui_imageWithDataPreservingScale:()CNUI
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [[v3 alloc] _initWithData:v4 preserveScale:1];

  return v5;
}

+ (id)cnui_tintedImageNamed:()CNUI withTint:
{
  v6 = a4;
  v7 = [a1 cnui_imageNamed:a3];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 imageWithTintColor:v6];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (id)cnui_imageNamed:()CNUI
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v3 imageNamed:v4 inBundle:v5];

  return v6;
}

+ (id)cnui_templateImageNamed:()CNUI withTint:
{
  v6 = a3;
  v7 = a4;
  if (cnui_templateImageNamed_withTint__cn_once_token_1 != -1)
  {
    dispatch_once(&cnui_templateImageNamed_withTint__cn_once_token_1, &__block_literal_global_65924);
  }

  v8 = cnui_templateImageNamed_withTint__cn_once_object_1;
  v9 = v8;
  if (v6)
  {
    v10 = [v8 objectForKey:v6];
    if (!v10)
    {
      v11 = [a1 cnui_imageNamed:v6];
      v10 = [v11 imageWithRenderingMode:2];

      [v9 setObject:v10 forKey:v6];
    }

    if (v7)
    {
      v12 = [v10 imageWithTintColor:v7];

      v10 = v12;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end