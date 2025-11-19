@interface SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI
- (id)_axWallpaperDescription;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityMediaAnalysisOptions;
@end

@implementation SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI

- (id)_axWallpaperDescription
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self accessibilityIdentifier];
  if (([v3 hasPrefix:@"WALLPAPER_"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"WALLPAPER_HOME_SCREEN_") & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"WALLPAPER_LOCK_SCREEN_"))
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"WALLPAPER_HOME_SCREEN_" withString:&stru_2A23B0DB8];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"WALLPAPER_LOCK_SCREEN_" withString:&stru_2A23B0DB8];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"WALLPAPER_" withString:&stru_2A23B0DB8];

    v7 = AXWallpaperLabel(v6);
    if ([v7 isEqualToString:v6])
    {
      v16.receiver = self;
      v16.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
      v8 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v16 accessibilityLabel];
      v9 = [v8 isEqualToString:@"Dynamic"];

      if (v9)
      {
        v10 = AXWallpaperLabel(v3);
      }

      else
      {
        v15.receiver = self;
        v15.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
        v11 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v15 accessibilityLabel];
        v10 = AXWallpaperLabel(v11);

        v7 = v11;
      }

      v7 = v10;
    }

    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_29C77E000, v12, OS_LOG_TYPE_INFO, "Wallpaper: %@/%@", buf, 0x16u);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
  v3 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v8 accessibilityTraits];
  v4 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self _axWallpaperDescription];
  v5 = [v4 length];

  v6 = *MEMORY[0x29EDC7F88];
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | v3;
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  v3 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self _axWallpaperDescription];
  v4 = [v3 length];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
  return [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v6 _accessibilityMediaAnalysisOptions];
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  if (a3 == 2701)
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI _accessibilityMediaAnalysisOptions](self, "_accessibilityMediaAnalysisOptions")}];
    if (!v5)
    {
LABEL_4:
      v7.receiver = self;
      v7.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
      v5 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v7 _iosAccessibilityAttributeValue:a3];
    }
  }

  else
  {
    if (a3 != 2001)
    {
      goto LABEL_4;
    }

    v5 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self accessibilityLabel];
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  return v5;
}

- (id)accessibilityLabel
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"Dynamic"])
  {
    v4 = @"dynamic.wallpapers";
LABEL_5:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"Still"])
  {
    v4 = @"still.wallpapers";
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI;
  v6 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)&v13 accessibilityLabel];
  v7 = [(SwiftUIAccessibilityNode__WallpaperSettings__SwiftUI *)self _axWallpaperDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v5 = v9;
  v10 = AXLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_29C77E000, v10, OS_LOG_TYPE_INFO, "%@ Wallpaper swift UI label: %@", buf, 0x16u);
  }

LABEL_12:
  v11 = *MEMORY[0x29EDCA608];

  return v5;
}

@end