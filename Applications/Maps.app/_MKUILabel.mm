@interface _MKUILabel
+ (id)multiLineLabelWithFont:(id)font;
- (double)_maps_lineSpacing;
- (void)_maps_setLineSpacing:(double)spacing;
@end

@implementation _MKUILabel

- (void)_maps_setLineSpacing:(double)spacing
{
  attributedText = [(_MKUILabel *)self attributedText];
  if ([attributedText length])
  {
    [(_MKUILabel *)self _maps_lineSpacing];
    if (v5 != spacing)
    {
      v6 = [[NSMutableAttributedString alloc] initWithAttributedString:attributedText];
      v7 = [v6 length];
      v8 = [v6 attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 mutableCopy];
      }

      else
      {
        v11 = +[NSParagraphStyle defaultParagraphStyle];
        v10 = [v11 mutableCopy];
      }

      [v10 setLineSpacing:spacing];
      [v6 addAttribute:NSParagraphStyleAttributeName value:v10 range:{0, v7}];
      [(_MKUILabel *)self setAttributedText:v6];
    }
  }
}

- (double)_maps_lineSpacing
{
  attributedText = [(_MKUILabel *)self attributedText];
  if ([attributedText length])
  {
    v3 = [attributedText attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:0];
    [v3 lineSpacing];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

+ (id)multiLineLabelWithFont:(id)font
{
  fontCopy = font;
  v4 = [[_MKUILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setLineBreakMode:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setNumberOfLines:0];
  [v4 setTextAlignment:4];
  [v4 setFont:fontCopy];

  return v4;
}

@end