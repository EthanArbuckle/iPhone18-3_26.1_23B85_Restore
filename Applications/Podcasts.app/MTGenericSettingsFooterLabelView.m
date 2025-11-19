@interface MTGenericSettingsFooterLabelView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
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

    v5 = [(MTGenericSettingsFooterLabelView *)v3 textView];
    [v5 setDelegate:v3];
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
  v17 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v17 setFrame:{x, y, width, height}];

  if ([(MTGenericSettingsFooterLabelView *)self topAlignLabel])
  {
    v18 = [(MTGenericSettingsFooterLabelView *)self textView];
    [v18 sizeToFit];
  }

  if ([(MTGenericSettingsFooterLabelView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v19 = [(MTGenericSettingsFooterLabelView *)self textView];
    [v19 frame];
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
    v31 = [(MTGenericSettingsFooterLabelView *)self textView];
    [v31 setFrame:{v30, v23, v25, v27}];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = [a4 absoluteString];

  if (v6 == UIApplicationOpenSettingsURLString)
  {
    v7 = +[UIApplication sharedApplication];
    [v7 openGlobalSettings];
  }

  return v6 != UIApplicationOpenSettingsURLString;
}

- (void)_setupLabel
{
  v3 = objc_alloc_init(UITextView);
  [(MTGenericSettingsFooterLabelView *)self setTextView:v3];

  v4 = [(MTGenericSettingsFooterLabelView *)self textView];
  [(MTGenericSettingsFooterLabelView *)self addSubview:v4];

  v5 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v5 setTextAlignment:4];

  v6 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v6 setEditable:0];

  v7 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v7 setScrollEnabled:0];

  v9 = +[UIColor clearColor];
  v8 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v8 setBackgroundColor:v9];
}

- (void)_updateColors
{
  v3 = [NSMutableAttributedString alloc];
  v4 = [(MTGenericSettingsFooterLabelView *)self textView];
  v5 = [v4 attributedText];
  v10 = [v3 initWithAttributedString:v5];

  v6 = +[UIListContentConfiguration groupedFooterConfiguration];
  v7 = [v6 textProperties];
  v8 = [v7 resolvedColor];
  [v10 addAttribute:NSForegroundColorAttributeName value:v8 range:{0, objc_msgSend(v10, "length")}];

  v9 = [(MTGenericSettingsFooterLabelView *)self textView];
  [v9 setAttributedText:v10];
}

@end