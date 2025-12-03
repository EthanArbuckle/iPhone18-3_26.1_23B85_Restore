@interface BESearchResultLabel
- (CGRect)p_boundingRect;
- (CGSize)intrinsicContentSize;
- (_NSRange)boldRange;
- (double)_labelLineSpacing;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutLines;
- (void)layoutSubviews;
- (void)setBoldColor:(id)color;
- (void)setPreferredMaxLayoutWidth:(double)width;
- (void)updateConstraints;
@end

@implementation BESearchResultLabel

- (void)dealloc
{
  [(BESearchResultLabel *)self setBoldColor:0];
  v3.receiver = self;
  v3.super_class = BESearchResultLabel;
  [(BESearchResultLabel *)&v3 dealloc];
}

- (void)updateConstraints
{
  [(BESearchResultLabel *)self layoutLines];
  v3.receiver = self;
  v3.super_class = BESearchResultLabel;
  [(BESearchResultLabel *)&v3 updateConstraints];
}

- (void)setBoldColor:(id)color
{
  objc_storeStrong(&self->_boldColor, color);

  [(BESearchResultLabel *)self invalidateIntrinsicContentSize];
}

- (void)setPreferredMaxLayoutWidth:(double)width
{
  v4.receiver = self;
  v4.super_class = BESearchResultLabel;
  [(BESearchResultLabel *)&v4 setPreferredMaxLayoutWidth:width];
  [(BESearchResultLabel *)self layoutLines];
  [(BESearchResultLabel *)self invalidateIntrinsicContentSize];
}

- (void)layoutLines
{
  selfCopy = self;
  replacement = [(BESearchResultLabel *)self text];
  v3 = [(__CFString *)replacement length];
  if (v3)
  {
    Mutable = CFAttributedStringCreateMutable(0, [(__CFString *)replacement length]);
    v64.location = 0;
    v64.length = 0;
    CFAttributedStringReplaceString(Mutable, v64, replacement);
    font = [(BESearchResultLabel *)selfCopy font];

    v65.length = [(__CFString *)replacement length];
    v65.location = 0;
    v59 = font;
    CFAttributedStringSetAttribute(Mutable, v65, kCTFontAttributeName, font);
    v6 = [(__CFString *)replacement length];
    textColor = [(BESearchResultLabel *)selfCopy textColor];
    cGColor = [textColor CGColor];
    v66.location = 0;
    v66.length = v6;
    CFAttributedStringSetAttribute(Mutable, v66, kCTForegroundColorAttributeName, cGColor);

    font2 = [(BESearchResultLabel *)selfCopy font];
    fontDescriptor = [font2 fontDescriptor];
    v11 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    font3 = [(BESearchResultLabel *)selfCopy font];
    [font3 pointSize];
    v55 = v11;
    v13 = [UIFont fontWithDescriptor:v11 size:?];

    boldRange = [(BESearchResultLabel *)selfCopy boldRange];
    [(BESearchResultLabel *)selfCopy boldRange];
    v16 = v15;
    v67.location = boldRange;
    v67.length = v16;
    v54 = v13;
    CFAttributedStringSetAttribute(Mutable, v67, kCTFontAttributeName, v13);
    boldColor = [(BESearchResultLabel *)selfCopy boldColor];

    if (boldColor)
    {
      boldColor2 = [(BESearchResultLabel *)selfCopy boldColor];
      cGColor2 = [boldColor2 CGColor];
      v68.location = boldRange;
      v68.length = v16;
      CFAttributedStringSetAttribute(Mutable, v68, kCTForegroundColorAttributeName, cGColor2);
    }

    cf = Mutable;
    v20 = CTTypesetterCreateWithAttributedString(Mutable);
    [(BESearchResultLabel *)selfCopy preferredMaxLayoutWidth];
    v22 = v21;
    v23 = CFArrayCreateMutable(0, 5, &kCFTypeArrayCallBacks);
    if ([(__CFString *)replacement length])
    {
      v24 = 0;
      Count = 0;
      do
      {
        v26 = CTTypesetterSuggestLineBreak(v20, v24, v22);
        v69.location = v24;
        v69.length = v26;
        Line = CTTypesetterCreateLine(v20, v69);
        if (!Line)
        {
          break;
        }

        v28 = Line;
        v29 = v26 + v24;
        if (v24 <= [(BESearchResultLabel *)selfCopy boldRange]&& v29 >= [(BESearchResultLabel *)selfCopy boldRange])
        {
          Count = CFArrayGetCount(v23);
        }

        CFArrayAppendValue(v23, v28);
        CFRelease(v28);
        v24 += v26;
      }

      while (v29 < [(__CFString *)replacement length]);
    }

    else
    {
      Count = 0;
    }

    numberOfLines = [(BESearchResultLabel *)selfCopy numberOfLines];
    if (numberOfLines <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = numberOfLines;
    }

    v32 = CFArrayCreateMutable(0, v31, &kCFTypeArrayCallBacks);
    if (CFArrayGetCount(v23) <= v31)
    {
      v72.length = CFArrayGetCount(v23);
      v72.location = 0;
      CFArrayAppendArray(v32, v23, v72);
    }

    else
    {
      if (Count <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = Count;
      }

      v34 = v33 - 1;
      if (v33 - 1 > CFArrayGetCount(v23) - v31)
      {
        v34 = CFArrayGetCount(v23) - v31;
      }

      v35 = 0;
      v36 = v34 + v31;
      theArray = v32;
      v61 = v31 - 1;
      v37 = v34;
      v57 = v34;
      v58 = v20;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v23, v37);
        v40 = v36 < CFArrayGetCount(v23) && v61 == v35;
        if (v35)
        {
          v41 = 1;
        }

        else
        {
          v41 = v34 <= 0;
        }

        if (!v41 || v40)
        {
          StringRange = CTLineGetStringRange(ValueAtIndex);
          location = StringRange.location;
          if (v40)
          {
            v44.length = [(__CFString *)replacement length]- StringRange.location;
          }

          else
          {
            v44.length = StringRange.length + StringRange.location;
            location = 0;
          }

          v44.location = location;
          v45 = CTTypesetterCreateLine(v20, v44);
          v46 = [[NSMutableAttributedString alloc] initWithString:@"…"];
          v70.length = [v46 length];
          v70.location = 0;
          CFAttributedStringSetAttribute(v46, v70, kCTFontAttributeName, v59);
          v47 = [v46 length];
          v48 = selfCopy;
          textColor2 = [(BESearchResultLabel *)selfCopy textColor];
          cGColor3 = [textColor2 CGColor];
          v71.location = 0;
          v71.length = v47;
          CFAttributedStringSetAttribute(v46, v71, kCTForegroundColorAttributeName, cGColor3);

          v51 = CTLineCreateWithAttributedString(v46);
          TruncatedLine = CTLineCreateTruncatedLine(v45, v22, v40, v51);
          if (TruncatedLine)
          {
            v53 = TruncatedLine;
            CFArrayAppendValue(theArray, TruncatedLine);
            CFRelease(v53);
          }

          CFRelease(v45);
          CFRelease(v51);

          selfCopy = v48;
          v34 = v57;
          v20 = v58;
          v32 = theArray;
        }

        else
        {
          CFArrayAppendValue(v32, ValueAtIndex);
        }

        ++v37;
        ++v35;
      }

      while (v37 < v36);
    }

    [(BESearchResultLabel *)selfCopy setLines:v32];
    CFRelease(cf);
    CFRelease(v20);
    CFRelease(v23);
    CFRelease(v32);
  }

  _objc_release_x1(v3);
}

- (CGRect)p_boundingRect
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  lines = [(BESearchResultLabel *)self lines];
  v8 = lines;
  if (lines)
  {
    v9 = [(__CFArray *)lines count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v25 = height;
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0);
        v13 = BoundsWithOptions.origin.x;
        v14 = BoundsWithOptions.origin.y;
        v15 = BoundsWithOptions.size.width;
        v16 = BoundsWithOptions.size.height;
        ++v11;
        [(BESearchResultLabel *)self _labelLineSpacing];
        v18 = v17;
        v27.origin.x = v13;
        v27.origin.y = v14;
        v27.size.width = v15;
        v27.size.height = v16;
        v19 = -(CGRectGetMaxY(v27) - v11 * v18);
        v28.origin.x = v13;
        v28.origin.y = v14;
        v28.size.width = v15;
        v28.size.height = v16;
        v20 = v19 - CGRectGetMinY(v28);
        v29.origin.x = v13;
        v29.origin.y = v14;
        v29.size.width = v15;
        v29.size.height = v16;
        v33 = CGRectOffset(v29, 0.0, v20);
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.height = v25;
        v30.size.width = width;
        v31 = CGRectUnion(v30, v33);
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
      }

      while (v10 != v11);
    }
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)_labelLineSpacing
{
  if (!+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v2 = &kBESearchResultLabelLineSpacing;
    return *v2;
  }

  if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
  {
    v2 = &kBESearchResultLabelAccessibilityLargestLineSpacing;
    return *v2;
  }

  v4 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge];
  result = 40.0;
  if (!v4)
  {
    return 30.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = BESearchResultLabel;
  [(BESearchResultLabel *)&v2 layoutSubviews];
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(BESearchResultLabel *)self lines:rect.origin.x];
  v5 = v4;
  if (v4)
  {
    v6 = [(__CFArray *)v4 count];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGAffineTransformMakeScale(&v19, 1.0, -1.0);
    CGContextSetTextMatrix(CurrentContext, &v19);
    if (v6)
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        [(BESearchResultLabel *)self _labelLineSpacing];
        v9 = v9 + v11;
        CGContextSetTextPosition(CurrentContext, 0.0, v9);
        shadowColor = [(BESearchResultLabel *)self shadowColor];

        if (shadowColor)
        {
          [(BESearchResultLabel *)self shadowOffset];
          v14 = v13;
          v16 = v15;
          shadowColor2 = [(BESearchResultLabel *)self shadowColor];
          cGColor = [shadowColor2 CGColor];
          v20.width = v14;
          v20.height = v16;
          CGContextSetShadowWithColor(CurrentContext, v20, 0.0, cGColor);
        }

        CTLineDraw(ValueAtIndex, CurrentContext);
        ++v8;
      }

      while (v6 != v8);
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = BESearchResultLabel;
  [(BESearchResultLabel *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  text = [(BESearchResultLabel *)self text];
  v8 = [text length];

  if (v8)
  {
    [(BESearchResultLabel *)self p_boundingRect];
    v4 = v9;
    v6 = v10;
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (_NSRange)boldRange
{
  p_boldRange = &self->_boldRange;
  location = self->_boldRange.location;
  length = p_boldRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end