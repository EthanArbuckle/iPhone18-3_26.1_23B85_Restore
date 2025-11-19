@interface CRLWPListLabel
- (BOOL)isEqualToListLabel:(id)a3;
- (CGSize)size;
- (CRLWPListLabel)initWithType:(unint64_t)a3 labelString:(id)a4 textLine:(__CTLine *)a5 listNumber:(unint64_t)a6 isTateChuYoko:(BOOL)a7 baselineOffset:(double)a8;
- (__CTFont)labelFont;
- (void)dealloc;
@end

@implementation CRLWPListLabel

- (CRLWPListLabel)initWithType:(unint64_t)a3 labelString:(id)a4 textLine:(__CTLine *)a5 listNumber:(unint64_t)a6 isTateChuYoko:(BOOL)a7 baselineOffset:(double)a8
{
  v9 = a7;
  v15 = a4;
  v22.receiver = self;
  v22.super_class = CRLWPListLabel;
  v16 = [(CRLWPListLabel *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_labelType = a3;
    objc_storeStrong(&v16->_labelString, a4);
    v17->_textLine = a5;
    CFRetain(a5);
    v17->_listNumber = a6;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v17->_textLine, &v17->_ascent, &v17->_descent, &leading);
    v19 = v17->_ascent + v17->_descent;
    v17->_size.width = TypographicBounds;
    v17->_size.height = v19;
    v17->_isLabelTateChuYoko = v9;
    if (v9)
    {
      v17->_size.width = v19 + leading;
      v17->_size.height = TypographicBounds;
    }

    v17->_baselineOffset = a8;
  }

  return v17;
}

- (void)dealloc
{
  textLine = self->_textLine;
  if (textLine)
  {
    CFRelease(textLine);
  }

  v4.receiver = self;
  v4.super_class = CRLWPListLabel;
  [(CRLWPListLabel *)&v4 dealloc];
}

- (BOOL)isEqualToListLabel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = self->_size.width == *(v4 + 12) && self->_size.height == *(v4 + 13);
  if (!v6 || self->_baselineOffset != *(v4 + 3) || self->_labelType != v4[2] || self->_labelIndent != *(v4 + 5) || self->_isLabelTateChuYoko != *(v4 + 9) || self->_listNumber != v4[10])
  {
    goto LABEL_18;
  }

  textLine = self->_textLine;
  v8 = v5[7];
  if (textLine)
  {
    if (v8 && CFEqual(textLine, v8))
    {
      goto LABEL_15;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  if (v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  shadow = self->_shadow;
  if (shadow == v5[4])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(CRLShadow *)shadow isEqual:?];
  }

LABEL_19:

  return v10;
}

- (__CTFont)labelFont
{
  v2 = CTLineGetGlyphRuns(self->_textLine);
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];

    Attributes = CTRunGetAttributes(v3);
    Value = CFDictionaryGetValue(Attributes, kCTFontAttributeName);
  }

  else
  {
    Value = 0;
  }

  return Value;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end