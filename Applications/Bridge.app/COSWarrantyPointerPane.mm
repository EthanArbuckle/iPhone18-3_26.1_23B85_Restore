@interface COSWarrantyPointerPane
- (id)markupString;
- (id)title;
@end

@implementation COSWarrantyPointerPane

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WARRANTY_POINTER" value:&stru_10026E598 table:@"Legal"];

  return v3;
}

- (id)markupString
{
  v2 = +[PBBridgeWatchAttributeController sharedDeviceController];
  activeWatch = [UIApp activeWatch];
  [v2 setDevice:activeWatch];

  LODWORD(activeWatch) = [v2 hasTwoYearWarranty];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (activeWatch)
  {
    v6 = @"WARRANTY_POINTER_DETAIL_2Y";
  }

  else
  {
    v6 = @"WARRANTY_POINTER_DETAIL_1Y";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:@"Legal"];

  return v7;
}

@end