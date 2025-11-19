@interface SRCompactEditableUtteranceViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)a3 delegate:(id)a4 dataSource:(id)a5;
- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)a3 delegate:(id)a4 dataSource:(id)a5 preferences:(id)a6;
- (SRCompactEditableUtteranceViewControllerDelegate)_delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_attributedStringForTip;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didShowTip;
- (void)_setupAlternativesTableView;
- (void)didResignFirstResponderFromUtteranceView:(id)a3;
- (void)editableUtteranceView:(id)a3 didFinishEditingWithText:(id)a4;
- (void)editableUtteranceView:(id)a3 requestsKeyboardWithCompletion:(id)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBeginEditingFromUtteranceView:(id)a3;
@end

@implementation SRCompactEditableUtteranceViewController

- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(SRPreferences);
  v12 = [(SRCompactEditableUtteranceViewController *)self initWithUserUtterance:v10 delegate:v9 dataSource:v8 preferences:v11];

  return v12;
}

- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)a3 delegate:(id)a4 dataSource:(id)a5 preferences:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SRCompactEditableUtteranceViewController;
  v15 = [(SRCompactEditableUtteranceViewController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_userUtterance, a3);
    objc_storeStrong(&v16->_dataSource, a5);
    [(SRCompactEditableUtteranceViewController *)v16 _setDelegate:v12];
    [(SRCompactEditableUtteranceViewController *)v16 _setupAlternativesTableView];
    objc_storeStrong(&v16->_userPreferences, a6);
    if ([(SRPreferences *)v16->_userPreferences showTapToEditTipCount]<= 1)
    {
      v16->_shouldShowTip = 1;
    }
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SRCompactEditableUtteranceViewController;
  [(SRCompactEditableUtteranceViewController *)&v4 viewWillAppear:a3];
  [(SRCompactEditableUtteranceView *)self->_editableUtteranceView beginEditing];
}

- (void)loadView
{
  v3 = [SRCompactEditableUtteranceView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(SRCompactEditableUtteranceView *)v3 initWithFrame:self->_userUtterance userUtterance:self delegate:CGRectZero.origin.x, y, width, height];
  editableUtteranceView = self->_editableUtteranceView;
  self->_editableUtteranceView = v7;

  [(SRCompactEditableUtteranceView *)self->_editableUtteranceView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  +[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled];
  v9 = self->_editableUtteranceView;
  v10 = +[UIColor systemBackgroundColor];
  [(SRCompactEditableUtteranceView *)v9 setBackgroundColor:v10];

  [(SRCompactEditableUtteranceViewController *)self setView:self->_editableUtteranceView];
  v11 = [[SRCompactLinkTappableTextView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  textViewForFooterText = self->_textViewForFooterText;
  self->_textViewForFooterText = &v11->super;

  v13 = self->_textViewForFooterText;
  v14 = [(SRCompactEditableUtteranceViewController *)self _attributedStringForTip];
  [(UITextView *)v13 setAttributedText:v14];

  v15 = self->_textViewForFooterText;
  +[UIFont smallSystemFontSize];
  v16 = [UIFont systemFontOfSize:?];
  [(UITextView *)v15 setFont:v16];

  [(UITextView *)self->_textViewForFooterText setEditable:0];
  [(UITextView *)self->_textViewForFooterText setScrollEnabled:0];
  [(UITextView *)self->_textViewForFooterText setTextContainerInset:7.5, 15.0, 7.5, 15.0];
  [(UITextView *)self->_textViewForFooterText setDelegate:self];
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowAlternativesTableView])
  {
    v17 = self->_editableUtteranceView;
    v18 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [(SRCompactEditableUtteranceView *)v17 setAuxiliaryView:v18];
  }

  else if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip])
  {
    [(SRCompactEditableUtteranceView *)self->_editableUtteranceView setAuxiliaryView:self->_textViewForFooterText];

    [(SRCompactEditableUtteranceViewController *)self _didShowTip];
  }
}

- (void)editableUtteranceView:(id)a3 requestsKeyboardWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [v6 editableUtteranceViewController:self requestsKeyboardWithCompletion:v5];
}

- (void)willBeginEditingFromUtteranceView:(id)a3
{
  v4 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [v4 willBeginEditingFromUtteranceViewController:self];
}

- (void)didResignFirstResponderFromUtteranceView:(id)a3
{
  v4 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [v4 didResignFirstResponderFromUtteranceViewController:self];
}

- (void)editableUtteranceView:(id)a3 didFinishEditingWithText:(id)a4
{
  v5 = a4;
  v6 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [v6 editableUtteranceViewController:self didFinishEditingWithText:v5];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(SRCompactEditableUtteranceViewControllerDataSource *)self->_dataSource numberOfAlternativeUtterances:a3];
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = off_10018D430;
  v7 = a4;
  v8 = [a3 dequeueReusableCellWithIdentifier:v6];
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  dataSource = self->_dataSource;
  v11 = [v7 row];

  v12 = [(SRCompactEditableUtteranceViewControllerDataSource *)dataSource attributedStringAtIndex:v11];
  v13 = [v8 textLabel];
  [v13 setAttributedText:v12];

  v14 = [v8 textLabel];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v14 setFont:v15];

  v16 = [v8 textLabel];
  [v16 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  v17 = [v8 textLabel];
  [v17 setNumberOfLines:0];

  [v8 setSelectionStyle:0];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 siriUILocalizedStringForKey:@"TITLE_FOR_SPEECH_ALTERNATIVE_LIST" table:0];
  v6 = [NSLocale alloc];
  v7 = AFUIGetLanguageCode();
  v8 = [v6 initWithLocaleIdentifier:v7];
  v9 = [v5 uppercaseStringWithLocale:v8];

  return v9;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v7 textLabel];
    v6 = +[UIColor labelColor];
    [v5 setTextColor:v6];
  }
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip:a3])
  {
    [(SRCompactEditableUtteranceViewController *)self _didShowTip];
    v5 = [[UITableViewHeaderFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UITextView *)self->_textViewForFooterText setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:self->_textViewForFooterText];
    v6 = [v5 topAnchor];
    v7 = [(UITextView *)self->_textViewForFooterText topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [v5 bottomAnchor];
    v10 = [(UITextView *)self->_textViewForFooterText bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v5 leadingAnchor];
    v13 = [(UITextView *)self->_textViewForFooterText leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [v5 trailingAnchor];
    v16 = [(UITextView *)self->_textViewForFooterText trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = 0.0;
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip])
  {
    [v5 bounds];
    [(UITextView *)self->_textViewForFooterText sizeThatFits:v7, 1.79769313e308];
    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  v6 = [v5 row];

  [v7 editableUtteranceViewController:self alternativeSelectedAtIndex:v6];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [v8 editableUtteranceViewController:self openURL:v7];

  return 0;
}

- (void)_setupAlternativesTableView
{
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowAlternativesTableView])
  {
    v3 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(SRCompactEditableUtteranceViewController *)self _setAlternativesTableView:v3];

    v4 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [v4 registerClass:objc_opt_class() forCellReuseIdentifier:off_10018D430];

    v5 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [v5 setScrollEnabled:0];

    v6 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [v6 setDelegate:self];

    v7 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [v7 setDataSource:self];

    v8 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];

    v10 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    v11 = +[UIColor separatorColor];
    [v10 setSeparatorColor:v11];

    v13 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [v13 registerClass:objc_opt_class() forCellReuseIdentifier:off_10018D430];
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[SRCompactEditableUtteranceViewController _setupAlternativesTableView]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #compact: no alternative utterances to display", buf, 0xCu);
    }
  }
}

- (id)_attributedStringForTip
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 siriUILocalizedStringForKey:@"TEXT_FOR_SPEECH_ALTERNATIVE_LIST_TIP" table:0];
  v4 = [v2 siriUILocalizedStringForKey:@"TEXT_FOR_SPEECH_ALTERNATIVE_LIST_TIP_LINK" table:0];
  v5 = [v3 rangeOfString:v4 options:4];
  v7 = v6;
  v8 = [[NSAttributedString alloc] initWithString:v3];
  v9 = [v8 mutableCopy];

  [v9 addAttribute:NSLinkAttributeName value:@"prefs:root=SIRI%23-64&path=VOICE_FEEDBACK_ID%23-64" range:{v5, v7}];
  v10 = +[UIColor secondaryLabelColor];
  [v9 addAttribute:NSForegroundColorAttributeName value:v10 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

- (void)_didShowTip
{
  if (![(SRCompactEditableUtteranceViewController *)self _didUpdateShowTipCount])
  {
    [(SRCompactEditableUtteranceViewController *)self _setDidUpdateShowTipCount:1];
    v3 = [(SRPreferences *)self->_userPreferences showTapToEditTipCount]+ 1;
    userPreferences = self->_userPreferences;

    [(SRPreferences *)userPreferences setShowTapToEditTipCount:v3];
  }
}

- (SRCompactEditableUtteranceViewControllerDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end