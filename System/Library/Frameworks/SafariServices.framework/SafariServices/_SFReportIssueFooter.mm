@interface _SFReportIssueFooter
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (NSString)footerText;
- (_SFReportIssueFooter)initWithFrame:(CGRect)a3;
- (_SFReportIssueFooterDelegate)delegate;
- (void)createTextViewForFooter;
- (void)setFooterText:(id)a3;
@end

@implementation _SFReportIssueFooter

- (_SFReportIssueFooter)initWithFrame:(CGRect)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _SFReportIssueFooter;
  v3 = [(_SFReportIssueFooter *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SFReportIssueFooter *)v3 createTextViewForFooter];
    [(_SFReportIssueFooter *)v4 addSubview:v4->_textView];
    v16 = MEMORY[0x1E696ACD8];
    v20 = [(UITextView *)v4->_textView topAnchor];
    v19 = [(_SFReportIssueFooter *)v4 topAnchor];
    v18 = [v20 constraintEqualToAnchor:v19 constant:16.0];
    v22[0] = v18;
    v17 = [(UITextView *)v4->_textView leadingAnchor];
    v5 = [(_SFReportIssueFooter *)v4 leadingAnchor];
    v6 = [v17 constraintEqualToAnchor:v5 constant:16.0];
    v22[1] = v6;
    v7 = [(UITextView *)v4->_textView trailingAnchor];
    v8 = [(_SFReportIssueFooter *)v4 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-8.0];
    v22[2] = v9;
    v10 = [(UITextView *)v4->_textView bottomAnchor];
    v11 = [(_SFReportIssueFooter *)v4 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v22[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v16 activateConstraints:v13];

    v14 = v4;
  }

  return v4;
}

- (void)createTextViewForFooter
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!self->_textView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
    textView = self->_textView;
    self->_textView = v3;

    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)self->_textView setTextColor:v5];

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UITextView *)self->_textView setFont:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69DD168]);
    v8 = self->_textView;
    self->_textView = v7;

    [(UITextView *)self->_textView setDelegate:self];
    [(UITextView *)self->_textView setEditable:0];
    [(UITextView *)self->_textView setSelectable:1];
    [(UITextView *)self->_textView setScrollEnabled:0];
    v9 = [(UITextView *)self->_textView textContainer];
    [v9 setLineFragmentPadding:0.0];

    [(UITextView *)self->_textView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)self->_textView setBackgroundColor:v10];

    v13 = *MEMORY[0x1E69DB650];
    v11 = [MEMORY[0x1E69DC888] linkColor];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(UITextView *)self->_textView setLinkTextAttributes:v12];
  }
}

- (void)setFooterText:(id)a3
{
  v4 = MEMORY[0x1E696AD40];
  v5 = a3;
  v13 = [[v4 alloc] initWithString:v5];

  v6 = _WBSLocalizedString();
  v7 = [v13 length];
  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v13 addAttribute:*MEMORY[0x1E69DB688] value:v8 range:{0, v7}];
  v9 = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v13 addAttribute:v9 value:v10 range:{0, v7}];

  v11 = *MEMORY[0x1E69DB650];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v13 addAttribute:v11 value:v12 range:{0, v7}];

  [v13 safari_replaceOccurrenceOfString:@"%learn-more%" withString:v6 link:@"learn-more://"];
  [(UITextView *)self->_textView setAttributedText:v13];
  [(UITextView *)self->_textView setAdjustsFontForContentSizeCategory:1];
}

- (NSString)footerText
{
  v2 = [(UITextView *)self->_textView attributedText];
  v3 = [v2 string];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = a3;
  v9 = a4;
  v10 = _WBSLocalizedString();
  v11 = _WBSLocalizedString();
  v12 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getOBWelcomeControllerClass_softClass;
  v31 = getOBWelcomeControllerClass_softClass;
  if (!getOBWelcomeControllerClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getOBWelcomeControllerClass_block_invoke;
    location[3] = &unk_1E848F710;
    location[4] = &v28;
    __getOBWelcomeControllerClass_block_invoke(location);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  v15 = [[v13 alloc] initWithTitle:v10 detailText:v11 icon:v12];
  v16 = [v15 buttonTray];
  [v16 setPrivacyLinkForBundles:&unk_1F5023CE0];

  objc_initWeak(location, v15);
  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  v18 = MEMORY[0x1E69DC628];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75___SFReportIssueFooter_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
  v25[3] = &unk_1E848FC70;
  objc_copyWeak(&v26, location);
  v19 = [v18 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:v25];
  v20 = [v17 initWithBarButtonSystemItem:0 primaryAction:v19];
  v21 = [v15 navigationItem];
  [v21 setRightBarButtonItem:v20];

  v22 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v15];
  v23 = [(_SFReportIssueFooter *)self delegate];
  [v23 presentLearnMoreViewController:v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);

  return 0;
}

- (_SFReportIssueFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end