@interface FBAExpandingTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (FBAExpandingTextView)initWithFrame:(CGRect)frame;
- (NSString)placeholderText;
- (_TtC18Feedback_Assistant20FBAExpandingTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (double)heightNeededForContentWidth:(double)width;
- (void)dealloc;
- (void)didChange:(id)change;
- (void)layoutSubviews;
- (void)setContentSize:(CGSize)size;
- (void)setPlaceholderAttributedText:(id)text;
- (void)setPlaceholderText:(id)text;
@end

@implementation FBAExpandingTextView

- (FBAExpandingTextView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = FBAExpandingTextView;
  v3 = [(FBAExpandingTextView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FBAExpandingTextView *)v3 setScrollEnabled:0];
    [(FBAExpandingTextView *)v4 setShowsVerticalScrollIndicator:0];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"didChange:" name:UITextViewTextDidChangeNotification object:0];

    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(FBAExpandingTextView *)v4 setPlaceholderLabel:v6];

    placeholderLabel = [(FBAExpandingTextView *)v4 placeholderLabel];
    v8 = +[UIColor secondaryLabelColor];
    [placeholderLabel setTextColor:v8];

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

    placeholderLabel2 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [placeholderLabel2 setLineBreakMode:0];

    placeholderLabel3 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [placeholderLabel3 setNumberOfLines:0];

    placeholderLabel4 = [(FBAExpandingTextView *)v4 placeholderLabel];
    [(FBAExpandingTextView *)v4 addSubview:placeholderLabel4];
  }

  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FBAExpandingTextView();
  [(FBAExpandingTextView *)&v6 dealloc];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("paste:" != action)
  {
    goto LABEL_5;
  }

  delegate = [(FBAExpandingTextView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_5:
    v10.receiver = self;
    v10.super_class = FBAExpandingTextView;
    canPerformPaste = [(FBAExpandingTextView *)&v10 canPerformAction:action withSender:senderCopy];
    goto LABEL_6;
  }

  canPerformPaste = [delegate canPerformPaste];

LABEL_6:
  return canPerformPaste;
}

- (void)didChange:(id)change
{
  [(FBAExpandingTextView *)self frame];
  v5 = v4;
  [(FBAExpandingTextView *)self heightNeededForContentWidth:v4];
  [(FBAExpandingTextView *)self setContentSize:v5, v6];
  placeholderLabel = [(FBAExpandingTextView *)self placeholderLabel];
  textStorage = [(FBAExpandingTextView *)self textStorage];
  [placeholderLabel setHidden:{objc_msgSend(textStorage, "length") != 0}];
}

- (double)heightNeededForContentWidth:(double)width
{
  if (!qword_10010B0B8)
  {
    v5 = [UITextView alloc];
    [(FBAExpandingTextView *)self frame];
    v6 = [v5 initWithFrame:?];
    v7 = qword_10010B0B8;
    qword_10010B0B8 = v6;
  }

  text = [(FBAExpandingTextView *)self text];
  [qword_10010B0B8 setText:text];

  font = [(FBAExpandingTextView *)self font];
  [qword_10010B0B8 setFont:font];

  [(FBAExpandingTextView *)self textContainerInset];
  [qword_10010B0B8 setTextContainerInset:?];
  [qword_10010B0B8 sizeThatFits:{width, 1.79769313e308}];
  return v10 + 8.0;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(FBAExpandingTextView *)self contentSize];
  v7 = v6;
  v9.receiver = self;
  v9.super_class = FBAExpandingTextView;
  [(FBAExpandingTextView *)&v9 setContentSize:width, height];
  if (v7 != height)
  {
    delegate = [(FBAExpandingTextView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate textViewDidChangeContentHeight:self];
    }
  }
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  placeholderLabel = [(FBAExpandingTextView *)self placeholderLabel];
  text = [placeholderLabel text];
  v6 = [text isEqualToString:textCopy];

  if ((v6 & 1) == 0)
  {
    [placeholderLabel setText:textCopy];
    [placeholderLabel sizeToFit];
    [(FBAExpandingTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderAttributedText:(id)text
{
  textCopy = text;
  placeholderLabel = [(FBAExpandingTextView *)self placeholderLabel];
  attributedText = [placeholderLabel attributedText];
  v6 = [attributedText isEqualToAttributedString:textCopy];

  if ((v6 & 1) == 0)
  {
    placeholderLabel2 = [(FBAExpandingTextView *)self placeholderLabel];
    [placeholderLabel2 setAttributedText:textCopy];

    placeholderLabel3 = [(FBAExpandingTextView *)self placeholderLabel];
    [placeholderLabel3 sizeToFit];

    [(FBAExpandingTextView *)self setNeedsLayout];
  }
}

- (NSString)placeholderText
{
  placeholderLabel = [(FBAExpandingTextView *)self placeholderLabel];
  text = [placeholderLabel text];

  return text;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = FBAExpandingTextView;
  [(FBAExpandingTextView *)&v15 layoutSubviews];
  placeholderLabel = [(FBAExpandingTextView *)self placeholderLabel];
  textStorage = [(FBAExpandingTextView *)self textStorage];
  [placeholderLabel setHidden:{objc_msgSend(textStorage, "length") != 0}];

  [(FBAExpandingTextView *)self bounds];
  v6 = v5 + 10.0;
  v8 = v7 + 5.0;
  v10 = v9 + -20.0;
  v12 = v11 + -10.0;
  placeholderLabel2 = [(FBAExpandingTextView *)self placeholderLabel];
  [placeholderLabel2 setFrame:{v6, v8, v10, v12}];

  placeholderLabel3 = [(FBAExpandingTextView *)self placeholderLabel];
  [placeholderLabel3 sizeToFit];
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_1000468AC();

  return v3 & 1;
}

- (_TtC18Feedback_Assistant20FBAExpandingTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end