@interface MapsAppTestRAP
- (BOOL)runTest;
- (SEL)rapSel;
- (void)cleanup:(BOOL)cleanup;
- (void)handleRAPControllerLoaded:(id)loaded;
- (void)handleRAPProblemNotListedControllerLoaded:(id)loaded;
- (void)handleRAPThankYouControllerLoaded:(id)loaded;
- (void)handleSettingsTableViewControllerLoaded:(id)loaded;
- (void)handleTappingFromSettingsButtonIntoSettingsTableViewController;
- (void)overridePrivacyConsent;
- (void)overrideProblemSubmissionURL;
- (void)overrideServerControlledUI;
- (void)restorePrivacyConsent;
- (void)restoreProblemSubmissionURL;
- (void)setRapSel:(SEL)sel;
@end

@implementation MapsAppTestRAP

- (void)setRapSel:(SEL)sel
{
  if (sel)
  {
    selCopy = sel;
  }

  else
  {
    selCopy = 0;
  }

  self->_rapSel = selCopy;
}

- (SEL)rapSel
{
  if (self->_rapSel)
  {
    return self->_rapSel;
  }

  else
  {
    return 0;
  }
}

- (void)handleRAPThankYouControllerLoaded:(id)loaded
{
  [(MapsAppTest *)self finishedSubTest:@"displayRAPThankYouController"];

  [(MapsAppTest *)self finishedTest];
}

- (void)handleRAPProblemNotListedControllerLoaded:(id)loaded
{
  loadedCopy = loaded;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:self->_rapNotificationString object:0];
  object = [loadedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [loadedCopy object];
    rapReportComposerCommentTableViewCell = [object2 rapReportComposerCommentTableViewCell];
    v9 = rapReportComposerCommentTableViewCell;
    if (rapReportComposerCommentTableViewCell)
    {
      [rapReportComposerCommentTableViewCell beginEditingCommentIfPossible];
      [v9 setCommentText:{@"Test, Not a real report"}];
      textDidChange = [v9 textDidChange];

      if (textDidChange)
      {
        textDidChange2 = [v9 textDidChange];
        commentText = [v9 commentText];
        (textDidChange2)[2](textDidChange2, commentText);
      }

      [v4 addObserver:self selector:"handleRAPThankYouControllerLoaded:" name:@"RAPAcknowledgementViewControllerDidAppearNotification" object:0];
      [(MapsAppTest *)self startedSubTest:@"displayRAPThankYouController"];
      navigationController = [object2 navigationController];
      if (objc_opt_respondsToSelector())
      {
        v14 = +[RAPAcknowledgementOptions defaultOptions];
        [navigationController _sendWithFinalOutcome:1 acknowledgementOptions:v14];
      }
    }

    else
    {
      [(MapsAppTest *)self failedTest];
    }
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)handleRAPControllerLoaded:(id)loaded
{
  loadedCopy = loaded;
  v24 = +[NSNotificationCenter defaultCenter];
  [v24 removeObserver:self name:@"RAPReportComposerCategoryViewControllerDidAppearNotification" object:0];
  [(MapsAppTest *)self finishedSubTest:@"displayRAPController"];
  v25 = loadedCopy;
  [loadedCopy object];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = v29 = 0u;
  tableView = [v23 tableView];
  visibleCells = [tableView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(visibleCells);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      viewModel = [v11 viewModel];
      title = [viewModel title];
      v14 = [title isEqualToString:self->_rapQuestionCellTitle];

      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [visibleCells countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v23;
    tableView2 = [v23 tableView];
    v17 = [tableView2 indexPathForCell:v11];

    if (!v17)
    {
      goto LABEL_13;
    }

    v19 = v24;
    v18 = v25;
    if (self->_rapSel)
    {
      rapSel = self->_rapSel;
    }

    else
    {
      rapSel = 0;
    }

    [v24 addObserver:self selector:rapSel name:self->_rapNotificationString object:0];
    tableView3 = [v23 tableView];
    [tableView3 selectRowAtIndexPath:v17 animated:1 scrollPosition:1];

    if (self->_rapCurrentSubTestName)
    {
      [(MapsAppTest *)self startedSubTest:?];
    }

    tableView4 = [v23 tableView];
    [v23 tableView:tableView4 didSelectRowAtIndexPath:v17];
  }

  else
  {
LABEL_9:

    v15 = v23;
LABEL_13:
    [(MapsAppTest *)self failedTest];
    v19 = v24;
    v18 = v25;
  }
}

- (void)handleSettingsTableViewControllerLoaded:(id)loaded
{
  loadedCopy = loaded;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SettingsTableViewControllerDidAppearNotification" object:0];
  object = [loadedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [loadedCopy object];
    v8 = [object2 indexPathForMenuItem:1];
    if (v8)
    {
      [v4 addObserver:self selector:"handleRAPControllerLoaded:" name:@"RAPReportComposerCategoryViewControllerDidAppearNotification" object:0];
      tableView = [object2 tableView];
      [tableView selectRowAtIndexPath:v8 animated:1 scrollPosition:1];

      [(MapsAppTest *)self startedTest];
      [(MapsAppTest *)self startedSubTest:@"displayRAPController"];
      tableView2 = [object2 tableView];
      [object2 tableView:tableView2 didSelectRowAtIndexPath:v8];
    }

    else
    {
      [(MapsAppTest *)self failedTest];
    }
  }

  else
  {
    [(MapsAppTest *)self failedTest];
  }
}

- (void)handleTappingFromSettingsButtonIntoSettingsTableViewController
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestOpenSettings];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleSettingsTableViewControllerLoaded:" name:@"SettingsTableViewControllerDidAppearNotification" object:0];
}

- (void)restoreProblemSubmissionURL
{
  if (self->_rapDefaultURL)
  {
    GEOURLConfigKey();
    GEOConfigSetString();
    rapDefaultURL = self->_rapDefaultURL;
    self->_rapDefaultURL = 0;
  }
}

- (void)overrideProblemSubmissionURL
{
  if (!self->_rapDefaultURL)
  {
    v3 = GEOURLString();
    rapDefaultURL = self->_rapDefaultURL;
    self->_rapDefaultURL = v3;

    GEOURLConfigKey();

    GEOConfigSetString();
  }
}

- (void)restorePrivacyConsent
{
  if (self->_hasOverriddenPrivacyConsent)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setBool:self->_rapHasPrivacyConsent forKey:@"RAPHasReceived2015PrivacyConsent"];

    self->_hasOverriddenPrivacyConsent = 0;
  }
}

- (void)overridePrivacyConsent
{
  if (!self->_hasOverriddenPrivacyConsent)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    self->_rapHasPrivacyConsent = [v3 BOOLForKey:@"RAPHasReceived2015PrivacyConsent"];

    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:1 forKey:@"RAPHasReceived2015PrivacyConsent"];

    self->_hasOverriddenPrivacyConsent = 1;
  }
}

- (void)overrideServerControlledUI
{
  self->_isServerControlledUIEnabled = GEOConfigGetBOOL();

  GEOConfigSetBOOL();
}

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(MapsAppTestRAP *)self restoreProblemSubmissionURL];
  [(MapsAppTestRAP *)self restorePrivacyConsent];
  [(MapsAppTestRAP *)self restoreServerControlledUI];
  rapQuestionCellTitle = self->_rapQuestionCellTitle;
  self->_rapQuestionCellTitle = 0;

  self->_rapSel = 0;
  rapNotificationString = self->_rapNotificationString;
  self->_rapNotificationString = 0;

  rapCurrentSubTestName = self->_rapCurrentSubTestName;
  self->_rapCurrentSubTestName = 0;

  v8.receiver = self;
  v8.super_class = MapsAppTestRAP;
  [(MapsAppTest *)&v8 cleanup:cleanupCopy];
}

- (BOOL)runTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  [(MapsAppTestRAP *)self overrideProblemSubmissionURL];
  [(MapsAppTestRAP *)self overridePrivacyConsent];
  [(MapsAppTestRAP *)self overrideServerControlledUI];
  v4 = [[RAPProblemNotListedQuestion alloc] initWithReport:0 parentQuestion:0];
  localizedTitle = [(RAPProblemNotListedQuestion *)v4 localizedTitle];
  rapQuestionCellTitle = self->_rapQuestionCellTitle;
  self->_rapQuestionCellTitle = localizedTitle;

  self->_rapSel = "handleRAPProblemNotListedControllerLoaded:";
  objc_storeStrong(&self->_rapNotificationString, @"RAPReportComposerCommentViewControllerDidAppearNotification");
  [(MapsAppTestRAP *)self handleTappingFromSettingsButtonIntoSettingsTableViewController];

  return 1;
}

@end