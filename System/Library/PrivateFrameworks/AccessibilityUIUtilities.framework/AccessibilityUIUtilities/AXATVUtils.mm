@interface AXATVUtils
+ (id)sharedInstance;
- (BOOL)isProcessTVAppStore;
- (BOOL)isTVMLKitLoaded;
- (id)accessibilityIdentifierForResourceURL:(id)l;
- (id)accessibilityLabelForID:(id)d;
- (id)accessibilityLabelForResourceURL:(id)l;
- (id)atvaccessibilityLocalizedNameForBundleID:(id)d;
- (id)atvaccessibilityLocalizedString:(id)string;
- (id)currentFocusedView;
@end

@implementation AXATVUtils

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXATVUtils sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __28__AXATVUtils_sharedInstance__block_invoke()
{
  sharedInstance__Shared = objc_alloc_init(AXATVUtils);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isTVMLKitLoaded
{
  if (isTVMLKitLoaded_TVMLKitLoaded)
  {
    return 1;
  }

  result = NSClassFromString(&cfstr_Tvviewelement.isa) != 0;
  isTVMLKitLoaded_TVMLKitLoaded = result;
  return result;
}

- (BOOL)isProcessTVAppStore
{
  if (isProcessTVAppStore_onceToken != -1)
  {
    [AXATVUtils isProcessTVAppStore];
  }

  return isProcessTVAppStore_IsAppStore;
}

void __33__AXATVUtils_isProcessTVAppStore__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isProcessTVAppStore_IsAppStore = [v0 isEqualToString:@"com.apple.TVAppStore"];
}

- (id)atvaccessibilityLocalizedString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localizedStringForKey:stringCopy value:&stru_1F4041FC0 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)atvaccessibilityLocalizedNameForBundleID:(id)d
{
  if ([d isEqualToString:@"com.apple.HeadBoard"])
  {
    v4 = [(AXATVUtils *)self atvaccessibilityLocalizedString:@"name.for.bundle.headboard"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityIdentifierForResourceURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy && ([lCopy scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"resource"), v5, v6))
  {
    host = [v4 host];
    path = [v4 path];
    v9 = [host stringByAppendingString:path];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)accessibilityLabelForID:(id)d
{
  dCopy = d;
  if (([dCopy hasPrefix:@"tomato-splat"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"RTRotten"))
  {
    v5 = @"tv.freshness.rotten";
LABEL_4:
    v6 = [(AXATVUtils *)self atvaccessibilityLocalizedString:v5];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(AXATVUtils *)self atvaccessibilityLocalizedString:@"tv.tomato.rating.format"];
    v9 = [v7 stringWithFormat:v8, v6];

    goto LABEL_5;
  }

  if (([dCopy hasPrefix:@"tomato-fresh"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"RTFresh"))
  {
    v5 = @"tv.freshness.fresh";
    goto LABEL_4;
  }

  if (([dCopy hasPrefix:@"tomato-certified"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"RTCertified"))
  {
    v5 = @"tv.freshness.certified.fresh";
    goto LABEL_4;
  }

  if (([dCopy hasPrefix:@"common-sense"] & 1) != 0 || objc_msgSend(dCopy, "hasPrefix:", @"cs_"))
  {
    v11 = @"tv.common.sense";
LABEL_17:
    v9 = [(AXATVUtils *)self atvaccessibilityLocalizedString:v11];
    goto LABEL_5;
  }

  if ([dCopy hasPrefix:@"overlay-checkmark"])
  {
    v11 = @"tv.played";
    goto LABEL_17;
  }

  if (([dCopy isEqual:@"mpaa-g"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"tv-g") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"g_mask"))
  {
    v11 = @"axid.icon.rating.g";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"pg13"])
  {
    v11 = @"axid.icon.rating.pg13";
    goto LABEL_17;
  }

  if (([dCopy isEqual:@"mpaa-pg"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"tv-pg") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"pg_mask"))
  {
    v11 = @"axid.icon.rating.pg";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-ma"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tvma_mask"))
  {
    v11 = @"axid.icon.rating.tvma";
    goto LABEL_17;
  }

  if (([dCopy isEqual:@"nr"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"tv-nr") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"nr_mask"))
  {
    v11 = @"axid.icon.rating.nr";
    goto LABEL_17;
  }

  if (([dCopy isEqual:@"mpaa-r"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"tv-r") & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"r_mask"))
  {
    v11 = @"axid.icon.rating.r";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"unrated"])
  {
    v11 = @"axid.icon.rating.unrated";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"nc17"])
  {
    v11 = @"axid.icon.rating.nc17";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"y7fv"])
  {
    v11 = @"axid.icon.rating.tvy7fv";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-y7"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tvy7_mask"))
  {
    v11 = @"axid.icon.rating.tvy7";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-y"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tvy_mask"))
  {
    v11 = @"axid.icon.rating.tvy";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-pg"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tvpg_mask"))
  {
    v11 = @"axid.icon.rating.tvpg";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-g"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tvg_mask"))
  {
    v11 = @"axid.icon.rating.tvg";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"tv-14"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"tv14_mask"))
  {
    v11 = @"axid.icon.rating.tv14";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"4k-hdr"])
  {
    v11 = @"axid.icon.4k-hdr";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"hdr"])
  {
    v11 = @"axid.icon.hdr";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"hd"])
  {
    v11 = @"axid.icon.hd";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"cc"])
  {
    v11 = @"axid.icon.closed.captions";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"RT"])
  {
    v11 = @"tv.tomato.rating";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"metadata-ad"])
  {
    v11 = @"axid.icon.ad";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"4k"])
  {
    v11 = @"axid.icon.4k";
    goto LABEL_17;
  }

  if ([dCopy hasPrefix:@"metadata-sdh"])
  {
    v11 = @"axid.icon.sdh";
    goto LABEL_17;
  }

  if (([dCopy hasPrefix:@"dolby-vision"] & 1) != 0 || objc_msgSend(dCopy, "isEqual:", @"dolbyvision_mask"))
  {
    v11 = @"axid.icon.dolby-vision";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"atmos"])
  {
    v11 = @"axid.icon.dolby-atmos";
    goto LABEL_17;
  }

  if ([dCopy axContainsString:@"itunes-extras-badge"])
  {
    v11 = @"axid.icon.itunes-extras";
    goto LABEL_17;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)accessibilityLabelForResourceURL:(id)l
{
  v4 = [(AXATVUtils *)self accessibilityIdentifierForResourceURL:l];
  v5 = [(AXATVUtils *)self accessibilityLabelForID:v4];

  return v5;
}

- (id)currentFocusedView
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [mainScreen safeValueForKey:@"focusedView"];

  return v3;
}

@end