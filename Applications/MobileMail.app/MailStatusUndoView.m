@interface MailStatusUndoView
- (MailStatusUndoView)initWithFrame:(CGRect)a3;
- (MailStatusUndoViewDelegate)delegate;
- (void)_undoButtonTapped:(id)a3;
@end

@implementation MailStatusUndoView

- (MailStatusUndoView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = MailStatusUndoView;
  v3 = [(MailStatusUndoView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MailStatusUndoView *)v3 _buttonConfiguration];
    v6 = [UIImage systemImageNamed:MFImageGlyphUndoSend];
    [v5 setImage:v6];

    [v5 setImagePadding:3.0];
    v7 = [UIImageSymbolConfiguration configurationWithScale:1];
    [v5 setPreferredSymbolConfigurationForImage:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"UNDO_SEND_BUTTON_TITLE" value:&stru_100662A88 table:@"Main"];
    [v5 setTitle:v9];

    [v5 setButtonSize:1];
    [v5 setTitleLineBreakMode:4];
    v10 = [UIButton buttonWithConfiguration:v5 primaryAction:0];
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
      v25 = [(UIButton *)v10 centerXAnchor];
      v22 = [(MailStatusUndoView *)v4 centerXAnchor];
      v21 = [v25 constraintEqualToAnchor:?];
      v27[0] = v21;
      v24 = [(UIButton *)v10 centerYAnchor];
      v20 = [(MailStatusUndoView *)v4 centerYAnchor];
      v19 = [v24 constraintEqualToAnchor:?];
      v27[1] = v19;
      v23 = [(UIButton *)v10 leadingAnchor];
      v11 = [(MailStatusUndoView *)v4 leadingAnchor];
      v12 = [v23 constraintEqualToAnchor:v11];
      v27[2] = v12;
      v13 = [(UIButton *)v10 trailingAnchor];
      v14 = [(MailStatusUndoView *)v4 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v27[3] = v15;
      v16 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }

    undoButton = v4->_undoButton;
    v4->_undoButton = v10;
  }

  return v4;
}

- (void)_undoButtonTapped:(id)a3
{
  v4 = [(MailStatusUndoView *)self delegate];
  [v4 mailStatusUndoViewUndoButtonTapped:self];
}

- (MailStatusUndoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end