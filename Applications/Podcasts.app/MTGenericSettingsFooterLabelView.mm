@interface MTGenericSettingsFooterLabelView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (MTGenericSettingsFooterLabelView)init;
- (void)_setupLabel;
- (void)_updateColors;
- (void)layoutSubviews;
@end

@implementation MTGenericSettingsFooterLabelView

- (MTGenericSettingsFooterLabelView)init
{
  v7.receiver = self;
  v7.super_class = MTGenericSettingsFooterLabelView;
  v2 = [(MTGenericSettingsFooterLabelView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MTGenericSettingsFooterLabelView *)v2 _setupLabel];
    v4 = +[UIColor clearColor];
    [(MTGenericSettingsFooterLabelView *)v3 setBackgroundColor:v4];

    textView = [(MTGenericSettingsFooterLabelView *)v3 textView];
    [textView setDelegate:v3];
  }

  return v3;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = MTGenericSettingsFooterLabelView;
  [(MTGenericSettingsFooterLabelView *)&v32 layoutSubviews];
  [(MTGenericSettingsFooterLabelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_opt_class() labelInset];
  v12 = v11;
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  v34 = CGRectInset(v33, v12, 0.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  textView = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView setFrame:{x, y, width, height}];

  if ([(MTGenericSettingsFooterLabelView *)self topAlignLabel])
  {
    textView2 = [(MTGenericSettingsFooterLabelView *)self textView];
    [textView2 sizeToFit];
  }

  if ([(MTGenericSettingsFooterLabelView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    textView3 = [(MTGenericSettingsFooterLabelView *)self textView];
    [textView3 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [(MTGenericSettingsFooterLabelView *)self bounds];
    MaxX = CGRectGetMaxX(v35);
    v36.origin.x = v21;
    v36.origin.y = v23;
    v36.size.width = v25;
    v36.size.height = v27;
    v29 = MaxX - CGRectGetWidth(v36);
    v37.origin.x = v21;
    v37.origin.y = v23;
    v37.size.width = v25;
    v37.size.height = v27;
    v30 = v29 - CGRectGetMinX(v37);
    textView4 = [(MTGenericSettingsFooterLabelView *)self textView];
    [textView4 setFrame:{v30, v23, v25, v27}];
  }
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  absoluteString = [l absoluteString];

  if (absoluteString == UIApplicationOpenSettingsURLString)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 openGlobalSettings];
  }

  return absoluteString != UIApplicationOpenSettingsURLString;
}

- (void)_setupLabel
{
  v3 = objc_alloc_init(UITextView);
  [(MTGenericSettingsFooterLabelView *)self setTextView:v3];

  textView = [(MTGenericSettingsFooterLabelView *)self textView];
  [(MTGenericSettingsFooterLabelView *)self addSubview:textView];

  textView2 = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView2 setTextAlignment:4];

  textView3 = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView3 setEditable:0];

  textView4 = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView4 setScrollEnabled:0];

  v9 = +[UIColor clearColor];
  textView5 = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView5 setBackgroundColor:v9];
}

- (void)_updateColors
{
  v3 = [NSMutableAttributedString alloc];
  textView = [(MTGenericSettingsFooterLabelView *)self textView];
  attributedText = [textView attributedText];
  v10 = [v3 initWithAttributedString:attributedText];

  v6 = +[UIListContentConfiguration groupedFooterConfiguration];
  textProperties = [v6 textProperties];
  resolvedColor = [textProperties resolvedColor];
  [v10 addAttribute:NSForegroundColorAttributeName value:resolvedColor range:{0, objc_msgSend(v10, "length")}];

  textView2 = [(MTGenericSettingsFooterLabelView *)self textView];
  [textView2 setAttributedText:v10];
}

@end