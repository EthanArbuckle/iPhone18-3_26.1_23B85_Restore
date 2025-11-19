@interface EKTextViewWithLabelTextMetrics
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (EKTextViewWithLabelTextMetrics)initWithFrame:(CGRect)a3;
- (void)setURL:(id)a3;
@end

@implementation EKTextViewWithLabelTextMetrics

- (EKTextViewWithLabelTextMetrics)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = EKTextViewWithLabelTextMetrics;
  v3 = [(EKTextViewWithLabelTextMetrics *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(EKTextViewWithLabelTextMetrics *)v3 textLayoutManager];
    v6 = [v5 textContainer];
    v7 = [v6 layoutManager];
    [v7 setLimitsLayoutForSuspiciousContents:1];

    [(EKTextViewWithLabelTextMetrics *)v4 setDataDetectorTypes:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setEditable:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setScrollEnabled:0];
    [(EKTextViewWithLabelTextMetrics *)v4 setLineBreakMode:4];
    [(EKTextViewWithLabelTextMetrics *)v4 setTextContainerInset:4.0, 0.0, 8.0, 0.0];
    v8 = [(EKTextViewWithLabelTextMetrics *)v4 textContainer];
    [v8 setLineFragmentPadding:0.0];
  }

  return v4;
}

- (void)setURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKTextViewWithLabelTextMetrics *)self setText:v4];
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = [(EKTextViewWithLabelTextMetrics *)self text:a4];
  v10 = [(EKTextViewWithLabelTextMetrics *)self font];
  [v9 _legacy_sizeWithFont:v10 constrainedToSize:-[EKTextViewWithLabelTextMetrics lineBreakMode](self lineBreakMode:{"lineBreakMode"), width, height}];
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