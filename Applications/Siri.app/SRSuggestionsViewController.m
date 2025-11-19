@interface SRSuggestionsViewController
- (BOOL)isShowingGuide;
- (BOOL)isShowingUserNudge;
- (BOOL)suggestionsViewIsInTextInputMode:(id)a3;
- (SRSuggestionsViewControllerDelegate)delegate;
- (double)contentWidthForSuggestionsView:(id)a3;
- (double)statusBarHeightForSuggestionsView:(id)a3;
- (double)statusViewHeightForSuggestionsView:(id)a3;
- (id)_initialHeaderText;
- (id)_nudgeHeaderText;
- (void)_createGuideController;
- (void)_showHeaderText:(id)a3 subheaderText:(id)a4 largeSubheaderText:(id)a5;
- (void)animateOut;
- (void)didShowSuggestionsForSuggestionsView:(id)a3;
- (void)hideAcousticIDSpinner;
- (void)loadView;
- (void)showAcousticIDSpinner;
- (void)showEmptyView;
- (void)showGreeting;
- (void)showUnavailable;
- (void)showUserNudge;
- (void)suggestionsView:(id)a3 didHideVibrantView:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SRSuggestionsViewController

- (void)loadView
{
  v4 = [[SiriUISuggestionsView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setAutoresizingMask:18];
  [v4 setDelegate:self];
  [(SRSuggestionsViewController *)self setView:v4];
  v3 = [(SRSuggestionsViewController *)self view];
  [v3 setHidden:1];
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
  v3 = [(SRSuggestionsViewController *)self _initialHeaderText];
  [(SRSuggestionsViewController *)self _showHeaderText:v3 subheaderText:0 largeSubheaderText:0];

  v4 = [(SRSuggestionsViewController *)self view];
  [v4 clearCurrentSuggestions];

  v5 = UIApp;
  v6 = SUICPPTTestNameSiriBringupToInitialQuery;

  [v5 finishedIPTest:v6];
}

- (void)showUserNudge
{
  v3 = [(SRSuggestionsViewController *)self _nudgeHeaderText];
  [(SRSuggestionsViewController *)self _showHeaderText:v3 subheaderText:0 largeSubheaderText:0];

  v4 = [(SRSuggestionsViewController *)self view];
  [v4 setGuideHidden:1];
}

- (BOOL)isShowingUserNudge
{
  v3 = [(SRSuggestionsViewController *)self view];
  v4 = [v3 headerText];
  v5 = [v4 regularString];
  v6 = [(SRSuggestionsViewController *)self _nudgeHeaderText];
  v7 = [v6 regularString];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (void)showEmptyView
{
  [(SRSuggestionsViewController *)self _showHeaderText:0 subheaderText:0 largeSubheaderText:0];
  v3 = [(SRSuggestionsViewController *)self view];
  [v3 setGuideHidden:1];
}

- (void)_showHeaderText:(id)a3 subheaderText:(id)a4 largeSubheaderText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SRSuggestionsViewController *)self view];
  [v11 setHidden:0];

  v12 = [(SRSuggestionsViewController *)self view];
  [v12 setSubheaderText:v9];

  v13 = [(SRSuggestionsViewController *)self view];
  [v13 setLargeSubheaderText:v8];

  v14 = [(SRSuggestionsViewController *)self view];
  [v14 setHeaderText:v10];

  v15 = [(SRSuggestionsViewController *)self view];
  [v15 setGuideHidden:1 animated:1];
}

- (void)showAcousticIDSpinner
{
  v2 = [(SRSuggestionsViewController *)self view];
  [v2 showAcousticIDSpinner];
}

- (void)hideAcousticIDSpinner
{
  v2 = [(SRSuggestionsViewController *)self view];
  [v2 hideAcousticIDSpinner];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SRSuggestionsViewController;
  [(SRSuggestionsViewController *)&v6 viewWillAppear:a3];
  v4 = [(SRSuggestionsViewController *)self view];
  [v4 setOrientation:{objc_msgSend(UIApp, "statusBarOrientation")}];

  v5 = [(SRSuggestionsViewController *)self view];
  [v5 setNeedsLayout];
}

- (BOOL)isShowingGuide
{
  v2 = [(SRSuggestionsViewController *)self view];
  v3 = [v2 isGuideHidden];

  return v3 ^ 1;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = SRSuggestionsViewController;
  [(SRSuggestionsViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(SRSuggestionsViewController *)self view];
  [v5 setOrientation:{objc_msgSend(UIApp, "statusBarOrientation")}];
}

- (void)_createGuideController
{
  v8 = [[AFUISiriLanguage alloc] initWithDelegate:0];
  v3 = [AFConversation alloc];
  v4 = [v8 spokenLanguageCode];
  v5 = [v3 initWithLanguageCode:v4];
  conversation = self->_conversation;
  self->_conversation = v5;

  [(AFConversation *)self->_conversation setDelegate:self];
  v7 = objc_alloc_init(SAUIShowHelp);
  [(AFConversation *)self->_conversation addItemsForShowHelpCommand:v7];
}

- (void)didShowSuggestionsForSuggestionsView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 suggestionsViewDidShowSuggestions:self];
  }
}

- (double)statusBarHeightForSuggestionsView:(id)a3
{
  v4 = [(SRSuggestionsViewController *)self delegate];
  [v4 statusBarFrameForSuggestionsViewController:self];
  MaxY = CGRectGetMaxY(v7);

  return MaxY;
}

- (double)statusViewHeightForSuggestionsView:(id)a3
{
  v4 = [(SRSuggestionsViewController *)self delegate];
  [v4 statusViewHeightForSuggestionsViewController:self];
  v6 = v5;

  return v6;
}

- (void)suggestionsView:(id)a3 didHideVibrantView:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 suggestionsViewController:self didHideVibrantView:v8];
  }
}

- (double)contentWidthForSuggestionsView:(id)a3
{
  v4 = [(SRSuggestionsViewController *)self delegate];
  [v4 contentWidthForSuggestionsViewController:self];
  v6 = v5;

  return v6;
}

- (BOOL)suggestionsViewIsInTextInputMode:(id)a3
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