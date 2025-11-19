@interface FBAExpandingTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (FBAExpandingTextView)initWithFrame:(CGRect)a3;
- (NSString)placeholderText;
- (_TtC18Feedback_Assistant20FBAExpandingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (double)heightNeededForContentWidth:(double)a3;
- (void)dealloc;
- (void)didChange:(id)a3;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)a3;
- (void)setPlaceholderAttributedText:(id)a3;
- (void)setPlaceholderText:(id)a3;
@end

@implementation FBAExpandingTextView

- (FBAExpandingTextView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = FBAExpandingTextView;
  v3 = [(FBAExpandingTextView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FBAExpandingTextView *)v3 setScrollEnabled:0];
    [(FBAExpandingTextView *)v4 setShowsVerticalScrollIndicator:0];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"didChange:" name:UITextViewTextDidChangeNotification object:0];

    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(FBAExpandingTextView *)v4 setPlaceholderLabel:v6];

    v7 = [(FBAExpandingTextView *)v4 placeholderLabel];
    v8 = +[UIColor secondaryLabelColor];
    [v7 setTextColor:v8];

    v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
    v10 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v20[0] = v9;
    v11 = +[UIColor systemBackgroundColor];
    v20[1] = v10;
    v21[0] = v11;
    v12 = +[UIColor secondarySystemBackgroundColor];
    v21[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    v14 = [UIColor _dynamicColorWithColorsByTraitCollection:v13];
    [(FBAExpandingTextView *)v4 setBackgroundColor:v14];

    v15 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [v15 setLineBreakMode:0];

    v16 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [v16 setNumberOfLines:0];

    v17 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [(FBAExpandingTextView *)v4 addSubview:v17];
  }

  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FBAExpandingTextView();
  [(FBAExpandingTextView *)&v6 dealloc];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("paste:" != a3)
  {
    goto LABEL_5;
  }

  v7 = [(FBAExpandingTextView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = FBAExpandingTextView;
    v8 = [(FBAExpandingTextView *)&v10 canPerformAction:a3 withSender:v6];
    goto LABEL_6;
  }

  v8 = [v7 canPerformPaste];

LABEL_6:
  return v8;
}

- (void)didChange:(id)a3
{
  [(FBAExpandingTextView *)self frame];
  v5 = v4;
  [(FBAExpandingTextView *)self heightNeededForContentWidth:v4];
  [(FBAExpandingTextView *)self setContentSize:v5, v6];
  v8 = [(FBAExpandingTextView *)self placeholderLabel];
  v7 = [(FBAExpandingTextView *)self textStorage];
  [v8 setHidden:{objc_msgSend(v7, "length") != 0}];
}

- (double)heightNeededForContentWidth:(double)a3
{
  if (!qword_10010B0B8)
  {
    v5 = [UITextView alloc];
    [(FBAExpandingTextView *)self frame];
    v6 = [v5 initWithFrame:?];
    v7 = qword_10010B0B8;
    qword_10010B0B8 = v6;
  }

  v8 = [(FBAExpandingTextView *)self text];
  [qword_10010B0B8 setText:v8];

  v9 = [(FBAExpandingTextView *)self font];
  [qword_10010B0B8 setFont:v9];

  [(FBAExpandingTextView *)self textContainerInset];
  [qword_10010B0B8 setTextContainerInset:?];
  [qword_10010B0B8 sizeThatFits:{a3, 1.79769313e308}];
  return v10 + 8.0;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(FBAExpandingTextView *)self contentSize];
  v7 = v6;
  v9.receiver = self;
  v9.super_class = FBAExpandingTextView;
  [(FBAExpandingTextView *)&v9 setContentSize:width, height];
  if (v7 != height)
  {
    v8 = [(FBAExpandingTextView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 textViewDidChangeContentHeight:self];
    }
  }
}

- (void)setPlaceholderText:(id)a3
{
  v7 = a3;
  v4 = [(FBAExpandingTextView *)self placeholderLabel];
  v5 = [v4 text];
  v6 = [v5 isEqualToString:v7];

  if ((v6 & 1) == 0)
  {
    [v4 setText:v7];
    [v4 sizeToFit];
    [(FBAExpandingTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderAttributedText:(id)a3
{
  v9 = a3;
  v4 = [(FBAExpandingTextView *)self placeholderLabel];
  v5 = [v4 attributedText];
  v6 = [v5 isEqualToAttributedString:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [(FBAExpandingTextView *)self placeholderLabel];
    [v7 setAttributedText:v9];

    v8 = [(FBAExpandingTextView *)self placeholderLabel];
    [v8 sizeToFit];

    [(FBAExpandingTextView *)self setNeedsLayout];
  }
}

- (NSString)placeholderText
{
  v2 = [(FBAExpandingTextView *)self placeholderLabel];
  v3 = [v2 text];

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = FBAExpandingTextView;
  [(FBAExpandingTextView *)&v15 layoutSubviews];
  v3 = [(FBAExpandingTextView *)self placeholderLabel];
  v4 = [(FBAExpandingTextView *)self textStorage];
  [v3 setHidden:{objc_msgSend(v4, "length") != 0}];

  [(FBAExpandingTextView *)self bounds];
  v6 = v5 + 10.0;
  v8 = v7 + 5.0;
  v10 = v9 + -20.0;
  v12 = v11 + -10.0;
  v13 = [(FBAExpandingTextView *)self placeholderLabel];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(FBAExpandingTextView *)self placeholderLabel];
  [v14 sizeToFit];
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_1000468AC();

  return v3 & 1;
}

- (_TtC18Feedback_Assistant20FBAExpandingTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end