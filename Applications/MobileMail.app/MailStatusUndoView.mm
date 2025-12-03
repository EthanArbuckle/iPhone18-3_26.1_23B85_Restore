@interface MailStatusUndoView
- (MailStatusUndoView)initWithFrame:(CGRect)frame;
- (MailStatusUndoViewDelegate)delegate;
- (void)_undoButtonTapped:(id)tapped;
@end

@implementation MailStatusUndoView

- (MailStatusUndoView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = MailStatusUndoView;
  v3 = [(MailStatusUndoView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _buttonConfiguration = [(MailStatusUndoView *)v3 _buttonConfiguration];
    v6 = [UIImage systemImageNamed:MFImageGlyphUndoSend];
    [_buttonConfiguration setImage:v6];

    [_buttonConfiguration setImagePadding:3.0];
    v7 = [UIImageSymbolConfiguration configurationWithScale:1];
    [_buttonConfiguration setPreferredSymbolConfigurationForImage:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNDO_SEND_BUTTON_TITLE" value:&stru_100662A88 table:@"Main"];
    [_buttonConfiguration setTitle:v9];

    [_buttonConfiguration setButtonSize:1];
    [_buttonConfiguration setTitleLineBreakMode:4];
    v10 = [UIButton buttonWithConfiguration:_buttonConfiguration primaryAction:0];
    [(UIButton *)v10 setShowsLargeContentViewer:1];
    [(UIButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v10 addTarget:v4 action:"_undoButtonTapped:" forControlEvents:64];
    [(MailStatusUndoView *)v4 addSubview:v10];
    if (MUISolariumFeatureEnabled())
    {
      [(UIButton *)v10 mf_pinToView:v4 usingLayoutMargins:0];
    }

    else
    {
      centerXAnchor = [(UIButton *)v10 centerXAnchor];
      centerXAnchor2 = [(MailStatusUndoView *)v4 centerXAnchor];
      v21 = [centerXAnchor constraintEqualToAnchor:?];
      v27[0] = v21;
      centerYAnchor = [(UIButton *)v10 centerYAnchor];
      centerYAnchor2 = [(MailStatusUndoView *)v4 centerYAnchor];
      v19 = [centerYAnchor constraintEqualToAnchor:?];
      v27[1] = v19;
      leadingAnchor = [(UIButton *)v10 leadingAnchor];
      leadingAnchor2 = [(MailStatusUndoView *)v4 leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v27[2] = v12;
      trailingAnchor = [(UIButton *)v10 trailingAnchor];
      trailingAnchor2 = [(MailStatusUndoView *)v4 trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v27[3] = v15;
      v16 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }

    undoButton = v4->_undoButton;
    v4->_undoButton = v10;
  }

  return v4;
}

- (void)_undoButtonTapped:(id)tapped
{
  delegate = [(MailStatusUndoView *)self delegate];
  [delegate mailStatusUndoViewUndoButtonTapped:self];
}

- (MailStatusUndoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end