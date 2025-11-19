@interface SBFolderControllerBackgroundViewInvertColorsAccessibility
+ (id)_tintColorForEffect:(unint64_t)a3;
@end

@implementation SBFolderControllerBackgroundViewInvertColorsAccessibility

+ (id)_tintColorForEffect:(unint64_t)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SBFolderControllerBackgroundViewInvertColorsAccessibility;
  v4 = objc_msgSendSuper2(&v10, "_tintColorForEffect:");
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    if (a3 == 4 && (+[AXSpringBoardServer server](AXSpringBoardServer, "server"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isDarkModeActive], v5, v6))
    {
      v7 = [UIColor colorWithWhite:0.0 alpha:0.8];
    }

    else
    {
      if (!UIAccessibilityIsReduceTransparencyEnabled())
      {
        goto LABEL_8;
      }

      v7 = AXInvertColorForColorPreservingAlpha();
    }

    v8 = v7;

    v4 = v8;
  }

LABEL_8:

  return v4;
}

@end