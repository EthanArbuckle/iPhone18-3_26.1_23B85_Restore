@interface LiveCaptionsTextViewController
- (id)readPreferredContentSizeCategoryNameForAppID:(id)a3;
@end

@implementation LiveCaptionsTextViewController

- (id)readPreferredContentSizeCategoryNameForAppID:(id)a3
{
  v3 = _AXSLiveCaptionsCopyContentSizeCategoryName();

  return v3;
}

@end