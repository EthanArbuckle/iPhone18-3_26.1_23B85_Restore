@interface CRLiOSInspectorLabel
- (BOOL)p_isAccessibilitySize;
- (CGSize)intrinsicContentSize;
- (CRLiOSInspectorLabel)initWithFrame:(CGRect)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation CRLiOSInspectorLabel

- (CRLiOSInspectorLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CRLiOSInspectorLabel;
  v3 = [(CRLiOSInspectorLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSInspectorLabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSInspectorLabel *)v4 setAdjustsFontSizeToFitWidth:1];
    [(CRLiOSInspectorLabel *)v4 setMinimumScaleFactor:0.5];
    [(CRLiOSInspectorLabel *)v4 setNumberOfLines:0];
    [(CRLiOSInspectorLabel *)v4 setAllowsDefaultTighteningForTruncation:1];
    [(CRLiOSInspectorLabel *)v4 setLineBreakMode:4];
  }

  return v4;
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = CRLiOSInspectorLabel;
  [(CRLiOSInspectorLabel *)&v7 updateConstraints];
  v3 = [(CRLiOSInspectorLabel *)self p_isAccessibilitySize];
  v4 = [(CRLiOSInspectorLabel *)self externalNumberOfLines];
  if (v3)
  {
    [(CRLiOSInspectorLabel *)&v6 setNumberOfLines:v4, v5.receiver, v5.super_class, self, CRLiOSInspectorLabel];
  }

  else if (!v4)
  {
    [(CRLiOSInspectorLabel *)&v5 setNumberOfLines:2, self, CRLiOSInspectorLabel, v6.receiver, v6.super_class];
  }
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = CRLiOSInspectorLabel;
  [(CRLiOSInspectorLabel *)&v10 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLiOSInspectorLabel *)self containsTrailingMargin];
  v8 = v4 + 16.0;
  if (!v7)
  {
    v8 = v4;
  }

  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setNumberOfLines:(int64_t)a3
{
  [(CRLiOSInspectorLabel *)self setExternalNumberOfLines:?];
  v5.receiver = self;
  v5.super_class = CRLiOSInspectorLabel;
  [(CRLiOSInspectorLabel *)&v5 setNumberOfLines:a3];
}

- (BOOL)p_isAccessibilitySize
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

@end