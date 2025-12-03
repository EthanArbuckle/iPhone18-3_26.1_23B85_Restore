@interface VKImageAnalysisBarButtonItemAccessibility
+ (id)imageForMode:(unint64_t)mode;
@end

@implementation VKImageAnalysisBarButtonItemAccessibility

+ (id)imageForMode:(unint64_t)mode
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VKImageAnalysisBarButtonItemAccessibility;
  v4 = objc_msgSendSuper2(&v7, sel_imageForMode_);
  v5 = AXImageAnalysisLabel(mode);
  if (v5)
  {
    [v4 setAccessibilityLabel:v5];
  }

  return v4;
}

@end