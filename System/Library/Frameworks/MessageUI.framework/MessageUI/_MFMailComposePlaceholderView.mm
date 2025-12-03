@interface _MFMailComposePlaceholderView
- (_MFMailComposePlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _MFMailComposePlaceholderView

- (_MFMailComposePlaceholderView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = _MFMailComposePlaceholderView;
  v3 = [(_MFMailComposePlaceholderView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MFMailComposePlaceholderView *)v3 setAutoresizingMask:18];
    mailGeneralBackgroundColor = [MEMORY[0x1E69DC888] mailGeneralBackgroundColor];
    [(_MFMailComposePlaceholderView *)v4 setBackgroundColor:mailGeneralBackgroundColor];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v8 = v7;
    +[MFMailComposeView preferredHeaderHeight];
    v10 = v9;

    v11 = [MFMailComposeHeaderView alloc];
    v12 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    v14 = [(MFMailComposeHeaderView *)v11 initWithFrame:*MEMORY[0x1E695EFF8], v13, v8, v10];
    toField = v4->_toField;
    v4->_toField = v14;

    v16 = [[MFMailComposeHeaderView alloc] initWithFrame:v12, v13, v8, v10];
    multiView = v4->_multiView;
    v4->_multiView = v16;

    v18 = [[MFComposeSubjectView alloc] initWithFrame:v12, v13, v8, v10];
    subjectView = v4->_subjectView;
    v4->_subjectView = v18;

    v20 = v4->_toField;
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"TO" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeHeaderView *)v20 setLabel:v22];

    v23 = v4->_multiView;
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CC/BCC" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeHeaderView *)v23 setLabel:v25];

    textView = [(MFComposeSubjectView *)v4->_subjectView textView];
    [textView setUserInteractionEnabled:0];

    [(_MFMailComposePlaceholderView *)v4 addSubview:v4->_toField];
    [(_MFMailComposePlaceholderView *)v4 addSubview:v4->_multiView];
    [(_MFMailComposePlaceholderView *)v4 addSubview:v4->_subjectView];
  }

  return v4;
}

- (void)layoutSubviews
{
  +[MFMailComposeView preferredHeaderHeight];
  v4 = v3;
  [(_MFMailComposePlaceholderView *)self bounds];
  v6 = v5;
  [(MFMailComposeHeaderView *)self->_toField setFrame:0.0, 0.0];
  [(MFMailComposeHeaderView *)self->_multiView setFrame:0.0, v4 + 0.0, v6, v4];
  subjectView = self->_subjectView;

  [(MFComposeSubjectView *)subjectView setFrame:0.0, v4 + v4 + 0.0, v6, v4];
}

@end