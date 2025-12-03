@interface CRLWPListLabel
- (BOOL)isEqualToListLabel:(id)label;
- (CGSize)size;
- (CRLWPListLabel)initWithType:(unint64_t)type labelString:(id)string textLine:(__CTLine *)line listNumber:(unint64_t)number isTateChuYoko:(BOOL)yoko baselineOffset:(double)offset;
- (__CTFont)labelFont;
- (void)dealloc;
@end

@implementation CRLWPListLabel

- (CRLWPListLabel)initWithType:(unint64_t)type labelString:(id)string textLine:(__CTLine *)line listNumber:(unint64_t)number isTateChuYoko:(BOOL)yoko baselineOffset:(double)offset
{
  yokoCopy = yoko;
  stringCopy = string;
  v22.receiver = self;
  v22.super_class = CRLWPListLabel;
  v16 = [(CRLWPListLabel *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_labelType = type;
    objc_storeStrong(&v16->_labelString, string);
    v17->_textLine = line;
    CFRetain(line);
    v17->_listNumber = number;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v17->_textLine, &v17->_ascent, &v17->_descent, &leading);
    v19 = v17->_ascent + v17->_descent;
    v17->_size.width = TypographicBounds;
    v17->_size.height = v19;
    v17->_isLabelTateChuYoko = yokoCopy;
    if (yokoCopy)
    {
      v17->_size.width = v19 + leading;
      v17->_size.height = TypographicBounds;
    }

    v17->_baselineOffset = offset;
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

- (BOOL)isEqualToListLabel:(id)label
{
  labelCopy = label;
  v5 = labelCopy;
  if (!labelCopy)
  {
    goto LABEL_18;
  }

  v6 = self->_size.width == *(labelCopy + 12) && self->_size.height == *(labelCopy + 13);
  if (!v6 || self->_baselineOffset != *(labelCopy + 3) || self->_labelType != labelCopy[2] || self->_labelIndent != *(labelCopy + 5) || self->_isLabelTateChuYoko != *(labelCopy + 9) || self->_listNumber != labelCopy[10])
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