@interface SRCompactEditableUtteranceViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)utterance delegate:(id)delegate dataSource:(id)source;
- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)utterance delegate:(id)delegate dataSource:(id)source preferences:(id)preferences;
- (SRCompactEditableUtteranceViewControllerDelegate)_delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_attributedStringForTip;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didShowTip;
- (void)_setupAlternativesTableView;
- (void)didResignFirstResponderFromUtteranceView:(id)view;
- (void)editableUtteranceView:(id)view didFinishEditingWithText:(id)text;
- (void)editableUtteranceView:(id)view requestsKeyboardWithCompletion:(id)completion;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBeginEditingFromUtteranceView:(id)view;
@end

@implementation SRCompactEditableUtteranceViewController

- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)utterance delegate:(id)delegate dataSource:(id)source
{
  sourceCopy = source;
  delegateCopy = delegate;
  utteranceCopy = utterance;
  v11 = objc_alloc_init(SRPreferences);
  v12 = [(SRCompactEditableUtteranceViewController *)self initWithUserUtterance:utteranceCopy delegate:delegateCopy dataSource:sourceCopy preferences:v11];

  return v12;
}

- (SRCompactEditableUtteranceViewController)initWithUserUtterance:(id)utterance delegate:(id)delegate dataSource:(id)source preferences:(id)preferences
{
  utteranceCopy = utterance;
  delegateCopy = delegate;
  sourceCopy = source;
  preferencesCopy = preferences;
  v18.receiver = self;
  v18.super_class = SRCompactEditableUtteranceViewController;
  v15 = [(SRCompactEditableUtteranceViewController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_userUtterance, utterance);
    objc_storeStrong(&v16->_dataSource, source);
    [(SRCompactEditableUtteranceViewController *)v16 _setDelegate:delegateCopy];
    [(SRCompactEditableUtteranceViewController *)v16 _setupAlternativesTableView];
    objc_storeStrong(&v16->_userPreferences, preferences);
    if ([(SRPreferences *)v16->_userPreferences showTapToEditTipCount]<= 1)
    {
      v16->_shouldShowTip = 1;
    }
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SRCompactEditableUtteranceViewController;
  [(SRCompactEditableUtteranceViewController *)&v4 viewWillAppear:appear];
  [(SRCompactEditableUtteranceView *)self->_editableUtteranceView beginEditing];
}

- (void)loadView
{
  v3 = [SRCompactEditableUtteranceView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(SRCompactEditableUtteranceView *)v3 initWithFrame:self->_userUtterance userUtterance:self delegate:CGRectZero.origin.x, y, width, height];
  editableUtteranceView = self->_editableUtteranceView;
  self->_editableUtteranceView = height;

  [(SRCompactEditableUtteranceView *)self->_editableUtteranceView recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  +[SiriSharedUIEnhancedMaterialUtilities isEnhancedMaterialEnabled];
  v9 = self->_editableUtteranceView;
  v10 = +[UIColor systemBackgroundColor];
  [(SRCompactEditableUtteranceView *)v9 setBackgroundColor:v10];

  [(SRCompactEditableUtteranceViewController *)self setView:self->_editableUtteranceView];
  height2 = [[SRCompactLinkTappableTextView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  textViewForFooterText = self->_textViewForFooterText;
  self->_textViewForFooterText = &height2->super;

  v13 = self->_textViewForFooterText;
  _attributedStringForTip = [(SRCompactEditableUtteranceViewController *)self _attributedStringForTip];
  [(UITextView *)v13 setAttributedText:_attributedStringForTip];

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
    _alternativesTableView = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [(SRCompactEditableUtteranceView *)v17 setAuxiliaryView:_alternativesTableView];
  }

  else if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip])
  {
    [(SRCompactEditableUtteranceView *)self->_editableUtteranceView setAuxiliaryView:self->_textViewForFooterText];

    [(SRCompactEditableUtteranceViewController *)self _didShowTip];
  }
}

- (void)editableUtteranceView:(id)view requestsKeyboardWithCompletion:(id)completion
{
  completionCopy = completion;
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [_delegate editableUtteranceViewController:self requestsKeyboardWithCompletion:completionCopy];
}

- (void)willBeginEditingFromUtteranceView:(id)view
{
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [_delegate willBeginEditingFromUtteranceViewController:self];
}

- (void)didResignFirstResponderFromUtteranceView:(id)view
{
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [_delegate didResignFirstResponderFromUtteranceViewController:self];
}

- (void)editableUtteranceView:(id)view didFinishEditingWithText:(id)text
{
  textCopy = text;
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [_delegate editableUtteranceViewController:self didFinishEditingWithText:textCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(SRCompactEditableUtteranceViewControllerDataSource *)self->_dataSource numberOfAlternativeUtterances:view];
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = off_10018D430;
  pathCopy = path;
  v8 = [view dequeueReusableCellWithIdentifier:v6];
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  dataSource = self->_dataSource;
  v11 = [pathCopy row];

  v12 = [(SRCompactEditableUtteranceViewControllerDataSource *)dataSource attributedStringAtIndex:v11];
  textLabel = [v8 textLabel];
  [textLabel setAttributedText:v12];

  textLabel2 = [v8 textLabel];
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [textLabel2 setFont:v15];

  textLabel3 = [v8 textLabel];
  [textLabel3 recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];

  textLabel4 = [v8 textLabel];
  [textLabel4 setNumberOfLines:0];

  [v8 setSelectionStyle:0];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 siriUILocalizedStringForKey:@"TITLE_FOR_SPEECH_ALTERNATIVE_LIST" table:0];
  v6 = [NSLocale alloc];
  v7 = AFUIGetLanguageCode();
  v8 = [v6 initWithLocaleIdentifier:v7];
  v9 = [v5 uppercaseStringWithLocale:v8];

  return v9;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textLabel = [headerViewCopy textLabel];
    v6 = +[UIColor labelColor];
    [textLabel setTextColor:v6];
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip:view])
  {
    [(SRCompactEditableUtteranceViewController *)self _didShowTip];
    v5 = [[UITableViewHeaderFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UITextView *)self->_textViewForFooterText setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:self->_textViewForFooterText];
    topAnchor = [v5 topAnchor];
    topAnchor2 = [(UITextView *)self->_textViewForFooterText topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v8 setActive:1];

    bottomAnchor = [v5 bottomAnchor];
    bottomAnchor2 = [(UITextView *)self->_textViewForFooterText bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v11 setActive:1];

    leadingAnchor = [v5 leadingAnchor];
    leadingAnchor2 = [(UITextView *)self->_textViewForFooterText leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 setActive:1];

    trailingAnchor = [v5 trailingAnchor];
    trailingAnchor2 = [(UITextView *)self->_textViewForFooterText trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v17 setActive:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v6 = 0.0;
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowTip])
  {
    [viewCopy bounds];
    [(UITextView *)self->_textViewForFooterText sizeThatFits:v7, 1.79769313e308];
    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  v6 = [pathCopy row];

  [_delegate editableUtteranceViewController:self alternativeSelectedAtIndex:v6];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  _delegate = [(SRCompactEditableUtteranceViewController *)self _delegate];
  [_delegate editableUtteranceViewController:self openURL:lCopy];

  return 0;
}

- (void)_setupAlternativesTableView
{
  if ([(SRCompactEditableUtteranceViewController *)self _shouldShowAlternativesTableView])
  {
    v3 = [[UITableView alloc] initWithFrame:1 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(SRCompactEditableUtteranceViewController *)self _setAlternativesTableView:v3];

    _alternativesTableView = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [_alternativesTableView registerClass:objc_opt_class() forCellReuseIdentifier:off_10018D430];

    _alternativesTableView2 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [_alternativesTableView2 setScrollEnabled:0];

    _alternativesTableView3 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [_alternativesTableView3 setDelegate:self];

    _alternativesTableView4 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [_alternativesTableView4 setDataSource:self];

    _alternativesTableView5 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    v9 = +[UIColor clearColor];
    [_alternativesTableView5 setBackgroundColor:v9];

    _alternativesTableView6 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    v11 = +[UIColor separatorColor];
    [_alternativesTableView6 setSeparatorColor:v11];

    _alternativesTableView7 = [(SRCompactEditableUtteranceViewController *)self _alternativesTableView];
    [_alternativesTableView7 registerClass:objc_opt_class() forCellReuseIdentifier:off_10018D430];
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