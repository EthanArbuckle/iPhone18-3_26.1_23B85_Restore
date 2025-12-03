@interface NTKActivityDateComplicationLabel
- (CGSize)_highlightInset;
- (double)_cornerRadius;
@end

@implementation NTKActivityDateComplicationLabel

- (CGSize)_highlightInset
{
  device = [(NTKActivityDateComplicationLabel *)self device];
  NTKUtilityComplicationHighlightPadding();
  v5 = v4;
  v7 = v6;

  v12.receiver = self;
  v12.super_class = NTKActivityDateComplicationLabel;
  [(NTKActivityDateComplicationLabel *)&v12 _highlightInset];
  v9 = v8 - v5;
  v11 = v10 - v7;
  result.height = v11;
  result.width = v9;
  return result;
}

- (double)_cornerRadius
{
  device = [(NTKActivityDateComplicationLabel *)self device];
  NTKUtilityComplicationHighlightCornerRadius();
  v4 = v3;

  return v4;
}

@end