@interface _WKWarningViewTextView
- (CGSize)intrinsicContentSize;
- (_WKWarningViewTextView)initWithAttributedString:(id)a3 forWarning:(id)a4;
@end

@implementation _WKWarningViewTextView

- (_WKWarningViewTextView)initWithAttributedString:(id)a3 forWarning:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _WKWarningViewTextView;
  v6 = [(_WKWarningViewTextView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_warning.m_weakReference, a4);
    [(_WKWarningViewTextView *)v7 setDelegate:a4];
    v8 = colorForItem(4u, a4);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = [a3 mutableCopy];
    v17 = *MEMORY[0x1E69DB650];
    v12 = v17;
    v18[0] = v9;
    [v11 addAttributes:objc_msgSend(MEMORY[0x1E695DF20] range:{"dictionaryWithObjects:forKeys:count:", v18, &v17, 1), 0, objc_msgSend(v11, "length")}];
    [(_WKWarningViewTextView *)v7 setBackgroundColor:colorForItem(1u, a4)];
    v15 = v12;
    v16 = v9;
    -[_WKWarningViewTextView setLinkTextAttributes:](v7, "setLinkTextAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
    [-[_WKWarningViewTextView textStorage](v7 "textStorage")];
    [(_WKWarningViewTextView *)v7 setEditable:0];
    [(_WKWarningViewTextView *)v7 setScrollEnabled:0];
    if (v11)
    {
    }

    if (v9)
    {
    }
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  [objc_loadWeak(&self->_warning.m_weakReference) frame];
  v4 = fmin(v3, 675.0) + -40.0;
  [(_WKWarningViewTextView *)self sizeThatFits:v4, 1.79769313e308];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

@end