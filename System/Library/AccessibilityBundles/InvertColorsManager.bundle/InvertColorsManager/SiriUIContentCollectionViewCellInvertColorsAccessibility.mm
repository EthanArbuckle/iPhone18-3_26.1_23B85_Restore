@interface SiriUIContentCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_axSetTextColorForView:(id)view;
- (void)layoutSubviews;
@end

@implementation SiriUIContentCollectionViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    v3 = @"_tagPhraseLabel";
  }

  else
  {
    AXSafeClassFromString();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v3 = @"_textContainerView";
  }

  v4 = [(SiriUIContentCollectionViewCellInvertColorsAccessibility *)self safeUIViewForKey:v3];
  [(SiriUIContentCollectionViewCellInvertColorsAccessibility *)self _axSetTextColorForView:v4];
}

- (void)_axSetTextColorForView:(id)view
{
  viewCopy = view;
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    +[UIColor siriui_lightTextColor];
  }

  else
  {
    +[UIColor siriui_blendEffectColor];
  }
  v4 = ;
  [viewCopy setTextColor:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUIContentCollectionViewCellInvertColorsAccessibility;
  [(SiriUIContentCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SiriUIContentCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end