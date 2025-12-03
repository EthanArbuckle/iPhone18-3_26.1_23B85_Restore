@interface EKTextViewWithLabelTextMetrics
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines;
- (EKTextViewWithLabelTextMetrics)initWithFrame:(CGRect)frame;
- (void)setURL:(id)l;
@end

@implementation EKTextViewWithLabelTextMetrics

- (EKTextViewWithLabelTextMetrics)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = EKTextViewWithLabelTextMetrics;
  v3 = [(EKTextViewWithLabelTextMetrics *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    textLayoutManager = [(EKTextViewWithLabelTextMetrics *)v3 textLayoutManager];
    textContainer = [textLayoutManager textContainer];
    layoutManager = [textContainer layoutManager];
    [layoutManager setLimitsLayoutForSuspiciousContents:1];

    [(EKTextViewWithLabelTextMetrics *)v4 setDataDetectorTypes:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setEditable:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setScrollEnabled:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setLineBreakMode:4];
    [(EKTextViewWithLabelTextMetrics *)v4 setTextContainerInset:4.0, 0.0, 8.0, 0.0];
    textContainer2 = [(EKTextViewWithLabelTextMetrics *)v4 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];
  }

  return v4;
}

- (void)setURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKTextViewWithLabelTextMetrics *)self setText:absoluteString];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(int64_t)lines
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = [(EKTextViewWithLabelTextMetrics *)self text:lines];
  font = [(EKTextViewWithLabelTextMetrics *)self font];
  [v9 _legacy_sizeWithFont:font constrainedToSize:-[EKTextViewWithLabelTextMetrics lineBreakMode](self lineBreakMode:{"lineBreakMode"), width, height}];
  v12 = v11;
  v14 = v13;

  v15 = round(v12);
  v16 = round(v14);
  v17 = v7;
  v18 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end