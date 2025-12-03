@interface LiveCaptionsTextViewController
- (id)readPreferredContentSizeCategoryNameForAppID:(id)d;
@end

@implementation LiveCaptionsTextViewController

- (id)readPreferredContentSizeCategoryNameForAppID:(id)d
{
  v3 = _AXSLiveCaptionsCopyContentSizeCategoryName();

  return v3;
}

@end