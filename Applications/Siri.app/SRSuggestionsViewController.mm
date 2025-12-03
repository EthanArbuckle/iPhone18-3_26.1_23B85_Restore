@interface SRSuggestionsViewController
- (BOOL)isShowingGuide;
- (BOOL)isShowingUserNudge;
- (BOOL)suggestionsViewIsInTextInputMode:(id)mode;
- (SRSuggestionsViewControllerDelegate)delegate;
- (double)contentWidthForSuggestionsView:(id)view;
- (double)statusBarHeightForSuggestionsView:(id)view;
- (double)statusViewHeightForSuggestionsView:(id)view;
- (id)_initialHeaderText;
- (id)_nudgeHeaderText;
- (void)_createGuideController;
- (void)_showHeaderText:(id)text subheaderText:(id)subheaderText largeSubheaderText:(id)largeSubheaderText;
- (void)animateOut;
- (void)didShowSuggestionsForSuggestionsView:(id)view;
- (void)hideAcousticIDSpinner;
- (void)loadView;
- (void)showAcousticIDSpinner;
- (void)showEmptyView;
- (void)showGreeting;
- (void)showUnavailable;
- (void)showUserNudge;
- (void)suggestionsView:(id)view didHideVibrantView:(id)vibrantView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SRSuggestionsViewController

- (void)loadView
{
  v4 = [[SiriUISuggestionsView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setAutoresizingMask:18];
  [v4 setDelegate:self];
  [(SRSuggestionsViewController *)self setView:v4];
  view = [(SRSuggestionsViewController *)self view];
  [view setHidden:1];
}

- (id)_initialHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [SiriUISuggestionsHeaderText alloc];
  v4 = [v2 assistantUILocalizedStringForKey:@"ASSISTANT_INITIAL_QUERY_REGULAR" table:0];
  v5 = [v2 assistantUILocalizedStringForKey:@"ASSISTANT_INITIAL_QUERY_COMPACT" table:0];
  v6 = [v3 initWithRegularString:v4 compactString:v5];

  return v6;
}

- (id)_nudgeHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [SiriUISuggestionsHeaderText alloc];
  v4 = [v2 assistantUILocalizedStringForKey:@"ASSISTANT_LISTENING_NUDGE_REGULAR" table:0];
  v5 = [v2 assistantUILocalizedStringForKey:@"ASSISTANT_LISTENING_NUDGE_COMPACT" table:0];
  v6 = [v3 initWithRegularString:v4 compactString:v5];

  return v6;
}

- (void)showUnavailable
{
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [SiriUISuggestionsHeaderText alloc];
  v4 = [v9 assistantUILocalizedStringForKey:@"ASSISTANT_NOT_AVAILABLE_TITLE" table:0];
  v5 = [v3 initWithRegularString:v4 compactString:0];

  v6 = [SiriUISuggestionsHeaderText alloc];
  v7 = [v9 assistantUILocalizedStringForKey:@"ASSISTANT_NO_NETWORK_SUBTITLE" table:0];
  v8 = [v6 initWithRegularString:v7 compactString:0];

  [v5 setTextAlignment:1];
  [v8 setTextAlignment:1];
  [(SRSuggestionsViewController *)self _showHeaderText:v5 subheaderText:v8 largeSubheaderText:0];
}

- (void)showGreeting
{
  _initialHeaderText = [(SRSuggestionsViewController *)self _initialHeaderText];
  [(SRSuggestionsViewController *)self _showHeaderText:_initialHeaderText subheaderText:0 largeSubheaderText:0];

  view = [(SRSuggestionsViewController *)self view];
  [view clearCurrentSuggestions];

  v5 = UIApp;
  v6 = SUICPPTTestNameSiriBringupToInitialQuery;

  [v5 finishedIPTest:v6];
}

- (void)showUserNudge
{
  _nudgeHeaderText = [(SRSuggestionsViewController *)self _nudgeHeaderText];
  [(SRSuggestionsViewController *)self _showHeaderText:_nudgeHeaderText subheaderText:0 largeSubheaderText:0];

  view = [(SRSuggestionsViewController *)self view];
  [view setGuideHidden:1];
}

- (BOOL)isShowingUserNudge
{
  view = [(SRSuggestionsViewController *)self view];
  headerText = [view headerText];
  regularString = [headerText regularString];
  _nudgeHeaderText = [(SRSuggestionsViewController *)self _nudgeHeaderText];
  regularString2 = [_nudgeHeaderText regularString];
  v8 = [regularString isEqualToString:regularString2];

  return v8;
}

- (void)showEmptyView
{
  [(SRSuggestionsViewController *)self _showHeaderText:0 subheaderText:0 largeSubheaderText:0];
  view = [(SRSuggestionsViewController *)self view];
  [view setGuideHidden:1];
}

- (void)_showHeaderText:(id)text subheaderText:(id)subheaderText largeSubheaderText:(id)largeSubheaderText
{
  largeSubheaderTextCopy = largeSubheaderText;
  subheaderTextCopy = subheaderText;
  textCopy = text;
  view = [(SRSuggestionsViewController *)self view];
  [view setHidden:0];

  view2 = [(SRSuggestionsViewController *)self view];
  [view2 setSubheaderText:subheaderTextCopy];

  view3 = [(SRSuggestionsViewController *)self view];
  [view3 setLargeSubheaderText:largeSubheaderTextCopy];

  view4 = [(SRSuggestionsViewController *)self view];
  [view4 setHeaderText:textCopy];

  view5 = [(SRSuggestionsViewController *)self view];
  [view5 setGuideHidden:1 animated:1];
}

- (void)showAcousticIDSpinner
{
  view = [(SRSuggestionsViewController *)self view];
  [view showAcousticIDSpinner];
}

- (void)hideAcousticIDSpinner
{
  view = [(SRSuggestionsViewController *)self view];
  [view hideAcousticIDSpinner];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SRSuggestionsViewController;
  [(SRSuggestionsViewController *)&v6 viewWillAppear:appear];
  view = [(SRSuggestionsViewController *)self view];
  [view setOrientation:{objc_msgSend(UIApp, "statusBarOrientation")}];

  view2 = [(SRSuggestionsViewController *)self view];
  [view2 setNeedsLayout];
}

- (BOOL)isShowingGuide
{
  view = [(SRSuggestionsViewController *)self view];
  isGuideHidden = [view isGuideHidden];

  return isGuideHidden ^ 1;
}

- (void)animateOut
{
  [(SRSuggestionsViewController *)self view];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100035810;
  v4 = v3[3] = &unk_100167010;
  v2 = v4;
  [v2 animateOutWithCompletion:v3];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = SRSuggestionsViewController;
  [(SRSuggestionsViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(SRSuggestionsViewController *)self view];
  [view setOrientation:{objc_msgSend(UIApp, "statusBarOrientation")}];
}

- (void)_createGuideController
{
  v8 = [[AFUISiriLanguage alloc] initWithDelegate:0];
  v3 = [AFConversation alloc];
  spokenLanguageCode = [v8 spokenLanguageCode];
  v5 = [v3 initWithLanguageCode:spokenLanguageCode];
  conversation = self->_conversation;
  self->_conversation = v5;

  [(AFConversation *)self->_conversation setDelegate:self];
  v7 = objc_alloc_init(SAUIShowHelp);
  [(AFConversation *)self->_conversation addItemsForShowHelpCommand:v7];
}

- (void)didShowSuggestionsForSuggestionsView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 suggestionsViewDidShowSuggestions:self];
  }
}

- (double)statusBarHeightForSuggestionsView:(id)view
{
  delegate = [(SRSuggestionsViewController *)self delegate];
  [delegate statusBarFrameForSuggestionsViewController:self];
  MaxY = CGRectGetMaxY(v7);

  return MaxY;
}

- (double)statusViewHeightForSuggestionsView:(id)view
{
  delegate = [(SRSuggestionsViewController *)self delegate];
  [delegate statusViewHeightForSuggestionsViewController:self];
  v6 = v5;

  return v6;
}

- (void)suggestionsView:(id)view didHideVibrantView:(id)vibrantView
{
  vibrantViewCopy = vibrantView;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 suggestionsViewController:self didHideVibrantView:vibrantViewCopy];
  }
}

- (double)contentWidthForSuggestionsView:(id)view
{
  delegate = [(SRSuggestionsViewController *)self delegate];
  [delegate contentWidthForSuggestionsViewController:self];
  v6 = v5;

  return v6;
}

- (BOOL)suggestionsViewIsInTextInputMode:(id)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 inTextInputModeForSuggestionsViewController:self];

  return v7;
}

- (SRSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end