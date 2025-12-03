@interface MailSettingsPlugin
+ (id)appsLocalizedTitle;
+ (id)localizedStringForSpecifierID:(id)d;
+ (id)rootLocalizedTitle;
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
- (BOOL)_shouldShowDefaultAccountButton;
- (MailSettingsPlugin)init;
- (id)_deleteOrMoveMessageActionTitles;
- (id)_markAsReadBehaviorTitles;
- (id)accountTitlesForSpecifier:(id)specifier;
- (id)accountValuesForSpecifier:(id)specifier;
- (id)addLinkPreviews:(id)previews;
- (id)blockedSenderOptions:(id)options;
- (id)ccSelf:(id)self;
- (id)collapseReadMessages:(id)messages;
- (id)confirmDelete:(id)delete;
- (id)conversationViewShowsNewestAtTop:(id)top;
- (id)currentQuoteLevel:(id)level;
- (id)defaultSendingAccount:(id)account;
- (id)deleteOrMoveMessageAction:(id)action;
- (id)enableAutomaticMessageSummarization:(id)summarization;
- (id)enableFollowUp:(id)up;
- (id)enableThreading:(id)threading;
- (id)extensionsEnablement:(id)enablement;
- (id)getCurrentSignatureAsynchronously:(id)asynchronously;
- (id)getCurrentSignatureSynchronously:(id)synchronously;
- (id)getHasHighlightingSafeDomains:(id)domains;
- (id)includeAttachments:(id)attachments;
- (id)includeRelatedMessages:(id)messages;
- (id)linesOfPreview:(id)preview;
- (id)linesOfPreviewTitles;
- (id)loadRemoteImages:(id)images;
- (id)markAsReadBehavior:(id)behavior;
- (id)mutedThreadAction:(id)action;
- (id)selectSpecifier:(id)specifier;
- (id)showMessageListAvatar:(id)avatar;
- (id)showToCC:(id)c;
- (id)specifiers;
- (id)undoSendDelayTime:(id)time;
- (void)_mailAccountsDidChange;
- (void)_refreshAccounts;
- (void)_reloadMailAccounts;
- (void)dealloc;
- (void)emitNavigationEventForRootController;
- (void)setAddLinkPreviews:(id)previews withSpecifier:(id)specifier;
- (void)setCollapseReadMessages:(id)messages withSpecifier:(id)specifier;
- (void)setConfirmDelete:(id)delete withSpecifier:(id)specifier;
- (void)setConversationViewShowsNewestAtTop:(id)top withSpecifier:(id)specifier;
- (void)setDefaultSendingAccount:(id)account withSpecifier:(id)specifier;
- (void)setEnableAutomaticMessageSummarization:(id)summarization withSpecifier:(id)specifier;
- (void)setEnableFollowUp:(id)up withSpecifier:(id)specifier;
- (void)setEnableThreading:(id)threading withSpecifier:(id)specifier;
- (void)setIncludeRelatedMessages:(id)messages withSpecifier:(id)specifier;
- (void)setLoadRemoteImages:(id)images withSpecifier:(id)specifier;
- (void)setMutedThreadAction:(id)action withSpecifier:(id)specifier;
- (void)setShowMessageListAvatar:(id)avatar withSpecifier:(id)specifier;
- (void)setShowToCC:(id)c withSpecifier:(id)specifier;
- (void)signatureDidChange:(id)change;
@end

@implementation MailSettingsPlugin

- (MailSettingsPlugin)init
{
  v17.receiver = self;
  v17.super_class = MailSettingsPlugin;
  v2 = [(MailSettingsPlugin *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(EMDaemonInterface);
    daemonInterface = v2->_daemonInterface;
    v2->_daemonInterface = v3;

    if (!qword_44910)
    {
      v5 = objc_alloc_init(NSNumberFormatter);
      v6 = qword_44910;
      qword_44910 = v5;

      v7 = qword_44910;
      v8 = +[NSLocale autoupdatingCurrentLocale];
      [v7 setLocale:v8];

      [qword_44910 setNumberStyle:1];
    }

    v9 = [[NSConditionLock alloc] initWithCondition:0];
    signatureLock = v2->_signatureLock;
    v2->_signatureLock = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"signatureDidChange:" name:@"SignatureEditingPaneSignatureDidChange" object:0];

    objc_initWeak(&location, v2);
    v12 = kMFMailAccountsChangedNotification;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_AF94;
    v14[3] = &unk_3CE20;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch(v12, &v2->_accountsChangedNotifyToken, &_dispatch_main_q, v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)signatureDidChange:(id)change
{
  [(NSConditionLock *)self->_signatureLock lock];
  signatureLock = self->_signatureLock;

  [(NSConditionLock *)signatureLock unlockWithCondition:0];
}

- (void)dealloc
{
  notify_cancel(self->_accountsChangedNotifyToken);
  v3.receiver = self;
  v3.super_class = MailSettingsPlugin;
  [(MailSettingsPlugin *)&v3 dealloc];
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v7.receiver = self;
  v7.super_class = MailSettingsPlugin;
  v5 = [(MailSettingsPlugin *)&v7 selectSpecifier:specifierCopy];
  [MailSettingsPlugin emitNavigationEventForSpecifier:specifierCopy viewController:v5];

  return v5;
}

- (void)_refreshAccounts
{
  v3 = objc_alloc_init(NSMutableArray);
  allMailAccounts = self->_allMailAccounts;
  self->_allMailAccounts = v3;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = +[MailAccount mailAccounts];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(NSArray *)self->_allMailAccounts addObject:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = +[LocalAccount localAccount];
  if (v9)
  {
    [(NSArray *)self->_allMailAccounts removeObject:v9];
  }
}

- (void)_reloadMailAccounts
{
  +[MailAccount reloadAccounts];

  [(MailSettingsPlugin *)self _refreshAccounts];
}

- (void)_mailAccountsDidChange
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%@: reloading mail accounts", &v8, 0xCu);
  }

  specifiers = [(MailSettingsPlugin *)self specifiers];
  [(MailSettingsPlugin *)self _reloadMailAccounts];
  specifiers2 = [(MailSettingsPlugin *)self specifiers];
  [(MailSettingsPlugin *)self replaceContiguousSpecifiers:specifiers withSpecifiers:specifiers2 animated:0];
}

- (id)linesOfPreviewTitles
{
  v15 = objc_alloc_init(NSMutableArray);
  [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", 0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v14 = *v17;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v16 + 1) + 8 * i);
        v5 = [NSString stringWithFormat:@"%@_LINES", v4];
        v6 = [NSBundle bundleForClass:objc_opt_class()];
        v7 = [v6 localizedStringForKey:v5 value:&stru_3D2B0 table:@"Preferences"];
        v8 = qword_44910;
        v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue]);
        v10 = [v8 stringFromNumber:v9];
        v11 = [NSString stringWithFormat:v7, v10];

        [v15 addObject:v11];
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v2);
  }

  return v15;
}

- (id)specifiers
{
  v173 = objc_alloc_init(NSMutableArray);
  if (![(NSArray *)self->_allMailAccounts count])
  {
    [(MailSettingsPlugin *)self _reloadMailAccounts];
  }

  appPolicy = [(MailSettingsPlugin *)self appPolicy];

  if (!appPolicy)
  {
    v4 = [PSSystemPolicyForApp alloc];
    v5 = [v4 initWithBundleIdentifier:kMFMobileMailBundleIdentifier];
    [(MailSettingsPlugin *)self setAppPolicy:v5];

    appPolicy2 = [(MailSettingsPlugin *)self appPolicy];
    [appPolicy2 setDelegate:self];
  }

  traitCollection = [(MailSettingsPlugin *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    appPolicy3 = [(MailSettingsPlugin *)self appPolicy];
    v172 = [appPolicy3 specifiersForPolicyOptions:1115717633 force:0];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    appPolicy5 = [v10 localizedStringForKey:@"MAIL" value:0 table:@"Preferences"];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"MOBILE_MAIL_SETTINGS_SUBTITLE" value:0 table:@"Preferences"];

    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v14 setIdentifier:@"PLACARD_GROUP"];
    [v173 addObject:v14];
    v15 = [PSSpecifier preferenceSpecifierNamed:appPolicy5 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v15 setIdentifier:appPolicy5];
    [v15 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v15 setProperty:v13 forKey:PSTableCellSubtitleTextKey];
    [v15 setProperty:kMFMobileMailBundleIdentifier forKey:PSLazyIconAppID];
    [v173 addObject:v15];
    appPolicy4 = [(MailSettingsPlugin *)self appPolicy];
    v17 = [appPolicy4 specifiersForPolicyOptions:0x8000000 force:0];

    v18 = [v17 specifierForID:@"ACCOUNTS"];
    if (v18)
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"MAIL_ACCOUNTS" value:&stru_3D2B0 table:@"Preferences"];
      [v18 setName:v20];
    }

    else
    {
      v18 = [v17 specifierForID:@"ADD_ACCOUNT"];
      if (!v18)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    [v173 ps_insertObject:v18 afterObject:v15];
    goto LABEL_11;
  }

  appPolicy5 = [(MailSettingsPlugin *)self appPolicy];
  v172 = [appPolicy5 specifiersForPolicyOptions:1216380929 force:0];
LABEL_12:

  [v173 addObjectsFromArray:v172];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SECTION_MESSAGE_LIST" value:&stru_3D2B0 table:@"Preferences"];
  v23 = [PSSpecifier groupSpecifierWithName:v22];
  [v173 addObject:v23];

  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    v24 = _EFLocalizedString();
    v25 = _ConfigurePSSpecifier(v173, v24, self, "setEnableAutomaticMessageSummarization:withSpecifier:", "enableAutomaticMessageSummarization:", 0, 0, 0, 6, 0, 0, 0, 0);

    [v25 setIdentifier:@"SUMMARIZE_MESSAGE_PREVIEWS"];
  }

  if (EMBlackPearlIsFeatureEnabled())
  {
    v26 = _EFLocalizedString();
    v27 = _ConfigurePSSpecifier(v173, v26, self, "setShowMessageListAvatar:withSpecifier:", "showMessageListAvatar:", 0, 0, 0, 6, 0, 0, 0, 0);

    [v27 setIdentifier:@"SHOW_CONTACT_PHOTOS"];
  }

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"SHOW_TOCC_INDICATOR" value:&stru_3D2B0 table:@"Preferences"];
  v30 = _ConfigurePSSpecifier(v173, v29, self, "setShowToCC:withSpecifier:", "showToCC:", 0, 0, 0, 6, 0, 0, 0, 0);

  v156 = v30;
  [v30 setIdentifier:@"SHOW_TOCC_INDICATOR"];
  v31 = [NSBundle bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"LINES_OF_PREVIEW" value:&stru_3D2B0 table:@"Preferences"];
  v33 = objc_opt_class();
  linesOfPreviewTitles = [(MailSettingsPlugin *)self linesOfPreviewTitles];
  v35 = [NSMutableDictionary dictionaryWithObjectsAndKeys:linesOfPreviewTitles, @"titles", 0];
  v36 = _ConfigurePSSpecifier(v173, v32, self, "setLinesOfPreview:withSpecifier:", "linesOfPreview:", 0, 0, v33, 2, 0, v35, 0, &off_3FA68);

  v155 = v36;
  [v36 setIdentifier:@"LINES_OF_PREVIEW"];
  v37 = _EFLocalizedString();
  v38 = objc_opt_class();
  _deleteOrMoveMessageActionTitles = [(MailSettingsPlugin *)self _deleteOrMoveMessageActionTitles];
  v40 = [NSMutableDictionary dictionaryWithObjectsAndKeys:_deleteOrMoveMessageActionTitles, @"titles", 0];
  v41 = _ConfigurePSSpecifier(v173, v37, self, "setDeleteOrMoveMessageAction:withSpecifier:", "deleteOrMoveMessageAction:", 0, 0, v38, 2, 0, v40, 0, &off_3FA80);

  v154 = v41;
  [v41 setIdentifier:@"DELETE_OR_MOVE_MESSAGE_ACTION"];
  v42 = _EFLocalizedString();
  v43 = objc_opt_class();
  _markAsReadBehaviorTitles = [(MailSettingsPlugin *)self _markAsReadBehaviorTitles];
  v45 = [NSMutableDictionary dictionaryWithObjectsAndKeys:_markAsReadBehaviorTitles, @"titles", 0];
  v46 = _ConfigurePSSpecifier(v173, v42, self, "setMarkAsReadBehavior:withSpecifier:", "markAsReadBehavior:", 0, 0, v43, 2, 0, v45, 0, &off_3FA98);

  v47 = [NSBundle bundleForClass:objc_opt_class()];
  v48 = [v47 localizedStringForKey:@"SWIPE_OPTIONS" value:&stru_3D2B0 table:@"Preferences"];
  v49 = objc_opt_class();
  v50 = _ConfigurePSSpecifier(v173, v48, 0, 0, 0, 0, 0, v49, 2, 0, 0, 0, 0);

  v153 = v50;
  [v50 setIdentifier:@"SWIPE_OPTIONS"];
  v51 = [NSBundle bundleForClass:objc_opt_class()];
  v52 = [v51 localizedStringForKey:@"SECTION_MESSAGES" value:&stru_3D2B0 table:@"Preferences"];
  v53 = [PSSpecifier groupSpecifierWithName:v52];
  [v173 addObject:v53];

  v54 = [NSBundle bundleForClass:objc_opt_class()];
  if (+[UIDevice mf_isPadIdiom])
  {
    v55 = @"CONFIRM_MESSAGE_DELETE_LONG";
  }

  else
  {
    v55 = @"CONFIRM_MESSAGE_DELETE";
  }

  v56 = [v54 localizedStringForKey:v55 value:&stru_3D2B0 table:@"Preferences"];
  v57 = _ConfigurePSSpecifier(v173, v56, self, "setConfirmDelete:withSpecifier:", "confirmDelete:", 0, 0, 0, 6, 0, 0, 0, 0);

  v152 = v57;
  [v57 setIdentifier:@"ASK_BEFORE_DELETING"];
  v58 = [NSBundle bundleForClass:objc_opt_class()];
  v59 = [v58 localizedStringForKey:@"TRACKING_PROTECTION" value:&stru_3D2B0 table:@"Preferences"];
  v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v151 = v60;
  [v60 setIdentifier:@"PRIVACY_PROTECTION"];
  [v173 addObject:v60];
  v61 = [NSBundle bundleForClass:objc_opt_class()];
  v62 = [v61 localizedStringForKey:@"SEARCH_PREFERENCE" value:&stru_3D2B0 table:@"Preferences"];
  v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v168 = v63;
  [v63 setIdentifier:@"SEARCH_PREFERENCE"];
  [v173 addObject:v63];
  v64 = _EFLocalizedString();
  v65 = _ConfigurePSSpecifier(v173, v64, self, "setEnableFollowUp:withSpecifier:", "enableFollowUp:", 0, 0, 0, 6, 0, 0, 0, 0);

  v66 = [NSBundle bundleForClass:objc_opt_class()];
  v67 = [v66 localizedStringForKey:@"SECTION_THREADING" value:&stru_3D2B0 table:@"Preferences"];
  v68 = [PSSpecifier groupSpecifierWithName:v67];

  v150 = v68;
  [v173 addObject:v68];
  v69 = [NSBundle bundleForClass:objc_opt_class()];
  v70 = [v69 localizedStringForKey:@"ORGANIZE_BY_THREAD" value:&stru_3D2B0 table:@"Preferences"];
  v71 = _ConfigurePSSpecifier(v173, v70, self, "setEnableThreading:withSpecifier:", "enableThreading:", 0, 0, 0, 6, 0, 0, 0, 0);

  v149 = v71;
  [v71 setIdentifier:@"ORGANIZE_BY_THREAD"];
  v72 = [NSBundle bundleForClass:objc_opt_class()];
  v73 = [v72 localizedStringForKey:@"COLLAPSE_READ_MESSAGES" value:&stru_3D2B0 table:@"Preferences"];
  v74 = _ConfigurePSSpecifier(v173, v73, self, "setCollapseReadMessages:withSpecifier:", "collapseReadMessages:", 0, 0, 0, 6, 0, 0, 0, 0);

  v148 = v74;
  [v74 setIdentifier:@"COLLAPSE_READ_MESSAGES"];
  v75 = [NSBundle bundleForClass:objc_opt_class()];
  v76 = [v75 localizedStringForKey:@"SHOW_NEWEST_MESSAGE_AT_TOP" value:&stru_3D2B0 table:@"Preferences"];
  v77 = _ConfigurePSSpecifier(v173, v76, self, "setConversationViewShowsNewestAtTop:withSpecifier:", "conversationViewShowsNewestAtTop:", 0, 0, 0, 6, 0, 0, 0, 0);

  v147 = v77;
  [v77 setIdentifier:@"MOST_RECENT_MESSAGE_ON_TOP"];
  v78 = [NSBundle bundleForClass:objc_opt_class()];
  v79 = [v78 localizedStringForKey:@"COMPLETE_THREADS" value:&stru_3D2B0 table:@"Preferences"];
  v80 = _ConfigurePSSpecifier(v173, v79, self, "setIncludeRelatedMessages:withSpecifier:", "includeRelatedMessages:", 0, 0, 0, 6, 0, 0, 0, 0);

  v146 = v80;
  [v80 setIdentifier:@"COMPLETE_THREADS"];
  v81 = [NSBundle bundleForClass:objc_opt_class()];
  v82 = [v81 localizedStringForKey:@"MUTED_THREAD_ACTION" value:&stru_3D2B0 table:@"Preferences"];
  v171 = [PSSpecifier preferenceSpecifierNamed:v82 target:self set:"setMutedThreadAction:withSpecifier:" get:"mutedThreadAction:" detail:objc_opt_class() cell:2 edit:0];

  v178[0] = EMUserDefaultMutedThreadActionMarkAsRead;
  v178[1] = EMUserDefaultMutedThreadActionMoveToArchiveOrDelete;
  v83 = [NSArray arrayWithObjects:v178 count:2];
  v84 = [NSBundle bundleForClass:objc_opt_class()];
  v85 = [v84 localizedStringForKey:@"MUTE_ACTION_MARK_AS_READ" value:&stru_3D2B0 table:@"Preferences"];
  v177[0] = v85;
  v86 = [NSBundle bundleForClass:objc_opt_class()];
  v87 = [v86 localizedStringForKey:@"MUTE_ACTION_ARCHIVE_OR_DELETE" value:&stru_3D2B0 table:@"Preferences"];
  v177[1] = v87;
  v88 = [NSArray arrayWithObjects:v177 count:2];
  [v171 setValues:v83 titles:v88];

  [v171 setIdentifier:@"MUTED_THREAD_ACTION"];
  [v173 addObject:v171];
  v89 = [NSBundle bundleForClass:objc_opt_class()];
  v90 = [v89 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS" value:&stru_3D2B0 table:@"Preferences"];
  v167 = [PSSpecifier preferenceSpecifierNamed:v90 target:self set:0 get:"blockedSenderOptions:" detail:objc_opt_class() cell:2 edit:0];

  [v167 setIdentifier:@"BLOCKED_SENDER_OPTIONS"];
  [v173 addObject:v167];
  v91 = [NSBundle bundleForClass:objc_opt_class()];
  v92 = [v91 localizedStringForKey:@"BLOCKED_LIST" value:&stru_3D2B0 table:@"Preferences"];
  v170 = [PSSpecifier preferenceSpecifierNamed:v92 target:self set:0 get:0 detail:0 cell:2 edit:0];

  v93 = PSBundlePathForPreferenceBundle();
  [v170 setProperty:v93 forKey:PSLazilyLoadedBundleKey];

  [v170 setProperty:@"PHBlocklistSettingsListController" forKey:PSDetailControllerClassKey];
  [v170 setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
  [v170 setControllerLoadAction:"lazyLoadBundle:"];
  [v170 setIdentifier:@"BLOCKED_SENDERS"];
  [v173 addObject:v170];
  v94 = [NSBundle bundleForClass:objc_opt_class()];
  v95 = [v94 localizedStringForKey:@"SECTION_COMPOSING" value:&stru_3D2B0 table:@"Preferences"];
  v169 = [PSSpecifier groupSpecifierWithName:v95];

  [v173 addObject:v169];
  v96 = [NSBundle bundleForClass:objc_opt_class()];
  v97 = [v96 localizedStringForKey:@"AUTOMATICALLY_CC_SELF" value:&stru_3D2B0 table:@"Preferences"];
  v164 = _ConfigurePSSpecifier(v173, v97, self, "setCCSelf:withSpecifier:", "ccSelf:", 0, 0, 0, 6, 0, 0, 0, 0);

  [v164 setIdentifier:@"ALWAYS_BCC_MYSELF"];
  v98 = [NSBundle bundleForClass:objc_opt_class()];
  v99 = [v98 localizedStringForKey:@"HIGHLIGHT_ADDRESSES" value:&stru_3D2B0 table:@"Preferences"];
  v100 = objc_opt_class();
  v163 = _ConfigurePSSpecifier(v173, v99, self, 0, "getHasHighlightingSafeDomains:", 0, 0, v100, 2, 0, 0, 0, 0);

  [v163 setIdentifier:@"MARK_ADDRESSES"];
  v101 = [NSBundle bundleForClass:objc_opt_class()];
  v102 = [v101 localizedStringForKey:@"INCREASE_QUOTE_LEVEL" value:&stru_3D2B0 table:@"Preferences"];
  v103 = objc_opt_class();
  v162 = _ConfigurePSSpecifier(v173, v102, self, "setCurrentQuoteLevel:withSpecifier:", "currentQuoteLevel:", 0, 0, v103, 2, 0, 0, 0, 0);

  [v162 setIdentifier:@"INCREASE_QUOTE_LEVEL"];
  v159 = [NSBundle bundleForClass:objc_opt_class()];
  v165 = [v159 localizedStringForKey:@"INCLUDE_ATTACHMENT_REPLIES" value:&stru_3D2B0 table:@"Preferences"];
  v104 = objc_opt_class();
  v145 = [NSBundle bundleForClass:objc_opt_class()];
  v157 = [v145 localizedStringForKey:@"NEVER" value:&stru_3D2B0 table:@"Preferences"];
  v176[0] = v157;
  v144 = [NSBundle bundleForClass:objc_opt_class()];
  v105 = [v144 localizedStringForKey:@"WHEN_ADDING" value:&stru_3D2B0 table:@"Preferences"];
  v176[1] = v105;
  v106 = [NSBundle bundleForClass:objc_opt_class()];
  v107 = [v106 localizedStringForKey:@"ASK" value:&stru_3D2B0 table:@"Preferences"];
  v176[2] = v107;
  v108 = [NSBundle bundleForClass:objc_opt_class()];
  v109 = [v108 localizedStringForKey:@"ALWAYS" value:&stru_3D2B0 table:@"Preferences"];
  v176[3] = v109;
  v110 = [NSArray arrayWithObjects:v176 count:4];
  v111 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v110, @"titles", 0];
  v175[0] = @"IncludeAttachmentRepliesNever";
  v175[1] = @"IncludeAttachmentRepliesWhenAdding";
  v175[2] = @"IncludeAttachmentRepliesAsk";
  v175[3] = @"IncludeAttachmentRepliesAlways";
  v112 = [NSArray arrayWithObjects:v175 count:4];
  v161 = _ConfigurePSSpecifier(v173, v165, self, "setIncludeAttachments:withSpecifier:", "includeAttachments:", 0, 0, v104, 2, 0, v111, 0, v112);

  [v161 setIdentifier:@"INCLUDE_ATTACHMENTS_WITH_REPLIES"];
  v113 = [NSBundle bundleForClass:objc_opt_class()];
  v114 = [v113 localizedStringForKey:@"ADD_LINK_PREVIEWS" value:&stru_3D2B0 table:@"Preferences"];
  v166 = _ConfigurePSSpecifier(v173, v114, self, "setAddLinkPreviews:withSpecifier:", "addLinkPreviews:", 0, 0, 0, 6, 0, 0, 0, 0);

  [v166 setIdentifier:@"ADD_LINK_PREVIEWS"];
  v115 = [NSBundle bundleForClass:objc_opt_class()];
  v116 = [v115 localizedStringForKey:@"SIGNATURE" value:&stru_3D2B0 table:@"Preferences"];
  v117 = objc_opt_class();
  v160 = _ConfigurePSSpecifier(v173, v116, self, "setCurrentSignature:withSpecifier:", "getCurrentSignatureAsynchronously:", 0, 0, v117, 2, 0, 0, 0, 0);

  [v160 setIdentifier:@"SIGNATURE"];
  v118 = [NSBundle bundleForClass:objc_opt_class()];
  v119 = [v118 localizedStringForKey:@"LOAD_REMOTE_IMAGES" value:&stru_3D2B0 table:@"Preferences"];
  v158 = _ConfigurePSSpecifier(v173, v119, self, "setLoadRemoteImages:withSpecifier:", "loadRemoteImages:", 0, 0, 0, 6, 0, 0, 0, 0);

  [v158 setIdentifier:@"LOAD_REMOTE_IMAGES"];
  if ([(MailSettingsPlugin *)self _shouldShowDefaultAccountButton])
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      v120 = [NSBundle bundleForClass:objc_opt_class()];
      [v120 localizedStringForKey:@"DEFAULT_DESC_IPAD" value:&stru_3D2B0 table:@"Preferences"];
    }

    else
    {
      v120 = [NSBundle bundleForClass:objc_opt_class()];
      [v120 localizedStringForKey:@"DEFAULT_DESC_IPHONE" value:&stru_3D2B0 table:@"Preferences"];
    }
    v121 = ;
    [v169 setProperty:v121 forKey:PSFooterTextGroupKey];

    v122 = [NSBundle bundleForClass:objc_opt_class()];
    v123 = [v122 localizedStringForKey:@"DEFAULT_SENDING_ACCOUNT" value:&stru_3D2B0 table:@"Preferences"];
    v124 = [PSSpecifier preferenceSpecifierNamed:v123 target:self set:"setDefaultSendingAccount:withSpecifier:" get:"defaultSendingAccount:" detail:objc_opt_class() cell:2 edit:0];

    v125 = [NSMutableDictionary dictionaryWithObjectsAndKeys:MFDefaultSendingAccountKey, @"key", 0];
    [v124 setUserInfo:v125];

    [v124 setProperty:@"accountValuesForSpecifier:" forKey:PSValuesDataSourceKey];
    [v124 setProperty:@"accountTitlesForSpecifier:" forKey:PSTitlesDataSourceKey];
    [v173 addObject:v124];
  }

  v126 = _EFLocalizedString();
  v127 = [PSSpecifier groupSpecifierWithName:v126];

  [v173 addObject:v127];
  v128 = _EFLocalizedString();
  v129 = objc_opt_class();
  v130 = _EFLocalizedString();
  v174[0] = v130;
  v131 = _EFLocalizedString();
  v174[1] = v131;
  v132 = _EFLocalizedString();
  v174[2] = v132;
  v133 = _EFLocalizedString();
  v174[3] = v133;
  v134 = [NSArray arrayWithObjects:v174 count:4];
  v135 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v134, @"titles", 0];
  v136 = _ConfigurePSSpecifier(v173, v128, self, "setUndoSendDelayTime:withSpecifier:", "undoSendDelayTime:", 0, 0, v129, 2, 0, v135, 0, &off_3FAB0);

  [v136 setIdentifier:@"UNDO_SEND_DELAY"];
  if (_os_feature_enabled_impl())
  {
    v137 = [NSBundle bundleForClass:objc_opt_class()];
    v138 = [v137 localizedStringForKey:@"SECTION_EXTENSIONS" value:&stru_3D2B0 table:@"Preferences"];
    v139 = [PSSpecifier groupSpecifierWithName:v138];

    [v173 addObject:v139];
    v140 = [NSBundle bundleForClass:objc_opt_class()];
    v141 = [v140 localizedStringForKey:@"EXTENSIONS_PREFERENCES" value:&stru_3D2B0 table:@"Preferences"];
    v142 = [PSSpecifier preferenceSpecifierNamed:v141 target:self set:0 get:"extensionsEnablement::" detail:objc_opt_class() cell:2 edit:0];

    [v173 addObject:v142];
  }

  [(MailSettingsPlugin *)self setSpecifiers:v173];

  return v173;
}

- (BOOL)_shouldShowDefaultAccountButton
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_allMailAccounts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isActive] && (objc_msgSend(v7, "restrictedFromSendingExternally") & 1) == 0)
        {
          v8 = 1;
          if (v4)
          {
            goto LABEL_13;
          }

          v4 = 1;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)accountValuesForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (!self->_allMailAccounts)
  {
    [(MailSettingsPlugin *)self _reloadMailAccounts];
  }

  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_allMailAccounts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isActive] && (objc_msgSend(v10, "restrictedFromSendingExternally") & 1) == 0)
        {
          uniqueID = [v10 uniqueID];
          [v5 addObject:uniqueID];
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)accountTitlesForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (!self->_allMailAccounts)
  {
    [(MailSettingsPlugin *)self _reloadMailAccounts];
  }

  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_allMailAccounts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isActive] && (objc_msgSend(v10, "restrictedFromSendingExternally") & 1) == 0)
        {
          displayName = [v10 displayName];
          [v5 addObject:displayName];
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)linesOfPreview:(id)preview
{
  v3 = getMailPreferenceValue(EMUserDefaultLinesOfPreviewKey);
  if (!v3)
  {
    v3 = @"2";
  }

  return v3;
}

- (id)deleteOrMoveMessageAction:(id)action
{
  v3 = getMailPreferenceValueWithDefault(EMUserDefaultDeleteOrMoveMessageAction, &off_3F858);

  return v3;
}

- (id)_deleteOrMoveMessageActionTitles
{
  v2 = _EFLocalizedString();
  v6[0] = v2;
  v3 = _EFLocalizedString();
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)markAsReadBehavior:(id)behavior
{
  v3 = getMailPreferenceValueWithDefault(EMUserDefaultMarkAsReadBehavior, &off_3F858);

  return v3;
}

- (id)_markAsReadBehaviorTitles
{
  v2 = _EFLocalizedString();
  v7[0] = v2;
  v3 = _EFLocalizedString();
  v7[1] = v3;
  v4 = _EFLocalizedString();
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)ccSelf:(id)self
{
  v3 = [NSNumber numberWithBool:getEmailPreferenceBoolValue(EMUserDefaultAlwaysBCCSelf)];

  return v3;
}

- (void)setConfirmDelete:(id)delete withSpecifier:(id)specifier
{
  deleteCopy = delete;
  sub_E9B4(@"ShowMessageDeleteConfirmation", [deleteCopy BOOLValue]);
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 notifyMobileMailAskBeforeDeletingChanged];
}

- (id)confirmDelete:(id)delete
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(@"ShowMessageDeleteConfirmation")];

  return v3;
}

- (id)blockedSenderOptions:(id)options
{
  if (getMailBoolPreferenceValueWithDefault(EMUserDefaultBlockedSenderEnabled, 1))
  {
    v3 = +[NSUserDefaults em_userDefaults];
    v4 = [v3 valueForKey:EMUserDefaultBlockedSenderAction];

    integerValue = [v4 integerValue];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (integerValue != &dword_0 + 1)) != 0)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      [v6 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_MARK_AS_BLOCKED" value:&stru_3D2B0 table:@"Preferences"];
    }

    else
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      [v6 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_MOVE_TO_TRASH" value:&stru_3D2B0 table:@"Preferences"];
    }
    v7 = ;
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v4 localizedStringForKey:@"BLOCKED_SENDER_OPTIONS_NONE" value:&stru_3D2B0 table:@"Preferences"];
  }

  return v7;
}

- (id)includeAttachments:(id)attachments
{
  v3 = getMailPreferenceValueWithDefault(@"IncludeAttachmentReplies", @"IncludeAttachmentRepliesWhenAdding");

  return v3;
}

- (id)undoSendDelayTime:(id)time
{
  v3 = getMailPreferenceValueWithDefault(EMUserDefaultUndoSendDelayTime, &off_3F8B8);

  return v3;
}

- (void)setEnableThreading:(id)threading withSpecifier:(id)specifier
{
  threadingCopy = threading;
  sub_E9B4(@"DisableThreading", [threadingCopy BOOLValue] ^ 1);
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 notifyMobileMailOrganizeByThreadChanged];
}

- (id)enableThreading:(id)threading
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(@"DisableThreading") ^ 1];

  return v3;
}

- (void)setCollapseReadMessages:(id)messages withSpecifier:(id)specifier
{
  messagesCopy = messages;
  sub_E9B4(@"CollapseReadConversationMessages", [messagesCopy BOOLValue]);
}

- (id)collapseReadMessages:(id)messages
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValueWithDefault(@"CollapseReadConversationMessages", 1)];

  return v3;
}

- (void)setConversationViewShowsNewestAtTop:(id)top withSpecifier:(id)specifier
{
  topCopy = top;
  sub_E9B4(@"ConversationViewShowsNewestAtTop", [topCopy BOOLValue]);
}

- (id)conversationViewShowsNewestAtTop:(id)top
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(@"ConversationViewShowsNewestAtTop")];

  return v3;
}

- (void)setIncludeRelatedMessages:(id)messages withSpecifier:(id)specifier
{
  messagesCopy = messages;
  sub_E9B4(@"ConversationViewExcludesRelatedMessages", [messagesCopy BOOLValue] ^ 1);
}

- (id)includeRelatedMessages:(id)messages
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(@"ConversationViewExcludesRelatedMessages") ^ 1];

  return v3;
}

- (void)setShowMessageListAvatar:(id)avatar withSpecifier:(id)specifier
{
  avatarCopy = avatar;
  bOOLValue = [avatarCopy BOOLValue];
  sub_E9B4(EMUserDefaultHideMessageListAvatar, bOOLValue ^ 1);
}

- (id)showMessageListAvatar:(id)avatar
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(EMUserDefaultHideMessageListAvatar) ^ 1];

  return v3;
}

- (void)setShowToCC:(id)c withSpecifier:(id)specifier
{
  cCopy = c;
  sub_E9B4(@"ShowToCCIndicators", [cCopy BOOLValue]);
}

- (id)showToCC:(id)c
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(@"ShowToCCIndicators")];

  return v3;
}

- (void)setEnableFollowUp:(id)up withSpecifier:(id)specifier
{
  upCopy = up;
  bOOLValue = [upCopy BOOLValue];
  sub_E9B4(EMUserDefaultDisableFollowUp, bOOLValue ^ 1);
}

- (id)enableFollowUp:(id)up
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(EMUserDefaultDisableFollowUp) ^ 1];

  return v3;
}

- (void)setEnableAutomaticMessageSummarization:(id)summarization withSpecifier:(id)specifier
{
  summarizationCopy = summarization;
  bOOLValue = [summarizationCopy BOOLValue];
  sub_E9B4(EMUserDefaultDisableAutomaticMessageSummarization, bOOLValue ^ 1);
}

- (id)enableAutomaticMessageSummarization:(id)summarization
{
  v3 = [NSNumber numberWithBool:getMailBoolPreferenceValue(EMUserDefaultDisableAutomaticMessageSummarization) ^ 1];

  return v3;
}

- (id)currentQuoteLevel:(id)level
{
  MailBoolPreferenceValue = getMailBoolPreferenceValue(@"DisableQuoteIncrease");
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (MailBoolPreferenceValue)
  {
    [v4 localizedStringForKey:@"OFF" value:&stru_3D2B0 table:@"Preferences"];
  }

  else
  {
    [v4 localizedStringForKey:@"ON" value:&stru_3D2B0 table:@"Preferences"];
  }
  v6 = ;

  return v6;
}

- (id)getCurrentSignatureAsynchronously:(id)asynchronously
{
  asynchronouslyCopy = asynchronously;
  [(NSConditionLock *)self->_signatureLock lock];
  condition = [(NSConditionLock *)self->_signatureLock condition];
  if (condition)
  {
    if (condition == 1)
    {
      [(NSConditionLock *)self->_signatureLock unlock];
      v6 = 0;
      goto LABEL_8;
    }

    if (condition == 2)
    {
      v6 = [(NSString *)self->_signatureValue copy];
      [(NSConditionLock *)self->_signatureLock unlock];
      goto LABEL_8;
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_F598;
    v12 = &unk_3CD68;
    selfCopy = self;
    v14 = asynchronouslyCopy;
    dispatch_async(v7, &v9);

    [(NSConditionLock *)self->_signatureLock unlockWithCondition:1, v9, v10, v11, v12, selfCopy];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)getCurrentSignatureSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  if (pthread_main_np())
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MailSettingsPlugin.m" lineNumber:959 description:@"Current thread is main"];
  }

  v6 = +[MFSignatures sharedInstance];
  useAccountSignatures = [v6 useAccountSignatures];

  if (!useAccountSignatures)
  {
    goto LABEL_23;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = +[MailAccount mailAccounts];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {

LABEL_23:
    v10 = 0;
LABEL_24:
    v20 = +[MFSignatures sharedInstance];
    signature = [v20 signature];

LABEL_25:
    v21 = [MFHTMLParser plainTextFromHTMLSnippet:signature];

    v22 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v18 = [v21 stringByTrimmingCharactersInSet:v22];

    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  v12 = *v26;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      if ([v14 isActive])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v11)
          {
            v15 = 0;
            ++v11;
          }

          else
          {
            v15 = v14;
            v11 = 1;
          }

          v10 = v15;
        }
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v9);

  if (v11 < 2 || (v16 = qword_44910, +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v11), v17 = objc_claimAutoreleasedReturnValue(), [v16 stringFromNumber:v17], v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    if (v10)
    {
      signature = [v10 customSignature];
      if (signature)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

LABEL_26:

  return v18;
}

- (id)getHasHighlightingSafeDomains:(id)domains
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveValuesForIntersectionSetting:MCFeatureManagedEmailDomains];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4)
  {
    [v5 localizedStringForKey:@"HIGHLIGHT_ADDRESSES_ON" value:&stru_3D2B0 table:@"Preferences"];
  }

  else
  {
    [v5 localizedStringForKey:@"HIGHLIGHT_ADDRESSES_OFF" value:&stru_3D2B0 table:@"Preferences"];
  }
  v6 = ;

  return v6;
}

- (void)setDefaultSendingAccount:(id)account withSpecifier:(id)specifier
{
  accountCopy = account;
  sub_E52C(MailDefaultSendingAccountKey, accountCopy);
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 notifyMobileMailDefaultAccountUidChanged];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, MFMailDefaultSendingAccountDidChange, 0, 0, 1u);
}

- (id)defaultSendingAccount:(id)account
{
  v3 = +[MailAccount defaultMailAccountForDelivery];
  uniqueID = [v3 uniqueID];

  return uniqueID;
}

- (void)setMutedThreadAction:(id)action withSpecifier:(id)specifier
{
  actionCopy = action;
  sub_E52C(EMUserDefaultMutedThreadActionKey, actionCopy);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, EMUserDefaultMutedThreadActionDidChangeNotification, 0, 0, 1u);
}

- (id)mutedThreadAction:(id)action
{
  v3 = getMailPreferenceValue(EMUserDefaultMutedThreadActionKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = EMUserDefaultMutedThreadActionMarkAsRead;
  }

  v6 = v5;

  return v5;
}

- (id)addLinkPreviews:(id)previews
{
  v3 = [NSNumber numberWithInt:getMailBoolPreferenceValue(EMUserDefaultDisableAddLinkPreviews) ^ 1];

  return v3;
}

- (void)setAddLinkPreviews:(id)previews withSpecifier:(id)specifier
{
  previewsCopy = previews;
  bOOLValue = [previewsCopy BOOLValue];
  sub_E9B4(EMUserDefaultDisableAddLinkPreviews, bOOLValue ^ 1);
}

- (id)loadRemoteImages:(id)images
{
  v3 = [NSNumber numberWithInt:getMailBoolPreferenceValue(EMUserDefaultLoadRemoteContentKey) ^ 1];

  return v3;
}

- (void)setLoadRemoteImages:(id)images withSpecifier:(id)specifier
{
  imagesCopy = images;
  bOOLValue = [imagesCopy BOOLValue];
  sub_E9B4(EMUserDefaultLoadRemoteContentKey, bOOLValue ^ 1);
}

- (id)extensionsEnablement:(id)enablement
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"EXTENSIONS_ENABLED" value:&stru_3D2B0 table:@"Preferences"];

  return v4;
}

- (void)emitNavigationEventForRootController
{
  v3 = +[MailSettingsPlugin rootDeepLinkURL];
  v4 = +[MailSettingsPlugin appsLocalizedTitle];
  v5 = +[MailSettingsPlugin rootLocalizedTitle];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = v4;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [(MailSettingsPlugin *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:kMFMobileMailBundleIdentifier title:v6 localizedNavigationComponents:v8 deepLink:v3];
  }
}

+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = objc_opt_class();
  if ([v7 isSubclassOfClass:objc_opt_class()])
  {
    v8 = controllerCopy;
    identifier = [specifierCopy identifier];
    if (identifier)
    {
      v10 = +[MailSettingsPlugin appsLocalizedTitle];
      v11 = +[MailSettingsPlugin rootLocalizedTitle];
      v12 = [MailSettingsPlugin localizedStringForSpecifierID:identifier];
      v13 = v12;
      if (v10 && v12 && v11)
      {
        v14 = +[MailSettingsPlugin rootDeepLinkURL];
        v15 = [v14 URLByAppendingPathComponent:identifier];

        v17[0] = v10;
        v17[1] = v11;
        v16 = [NSArray arrayWithObjects:v17 count:2];
        [v8 pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:kMFMobileMailBundleIdentifier title:v13 localizedNavigationComponents:v16 deepLink:v15];
      }
    }
  }
}

+ (id)localizedStringForSpecifierID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    if ([dCopy isEqualToString:@"SIRI_AND_SEARCH"])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      bundleURL = [v5 bundleURL];

      v7 = @"AssistantShared";
      v8 = @"ASSISTANT_AND_SEARCH";
    }

    else
    {
      v26[0] = @"UNDO_SEND_DELAY";
      v26[1] = @"SUMMARIZE_MESSAGE_PREVIEWS";
      v27[0] = @"Undo Send Delay";
      v27[1] = @"Summarize Message Previews";
      v26[2] = @"SHOW_CONTACT_PHOTOS";
      v26[3] = @"DELETE_OR_MOVE_MESSAGE_ACTION";
      v27[2] = @"Show Contact Photos";
      v27[3] = @"Delete or Move Message Action";
      v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
      v11 = [v10 objectForKeyedSubscript:v4];
      if (v11)
      {
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        bundleURL = [v12 bundleURL];

        v8 = v11;
        v7 = @"Localizable";
      }

      else
      {
        v24[0] = @"ADD_ACCOUNTS";
        v24[1] = @"NOTIFICATIONS";
        v25[0] = @"ADD_ACCOUNT";
        v25[1] = @"NOTIFICATIONS";
        v24[2] = @"PREFERRED_LANGUAGE";
        v24[3] = @"DEFAULT_MAIL_APP";
        v25[2] = @"LANGUAGE";
        v25[3] = @"DEFAULT_MAIL_APP";
        v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
        v14 = [v13 objectForKeyedSubscript:v4];
        if (v14)
        {
          v15 = [NSBundle bundleForClass:objc_opt_class()];
          bundleURL = [v15 bundleURL];

          v8 = v14;
          v7 = @"PSSystemPolicy";
        }

        else
        {
          v22[0] = @"ACCOUNTS";
          v22[1] = @"LINES_OF_PREVIEW";
          v23[0] = @"MAIL_ACCOUNTS";
          v23[1] = @"LINES_OF_PREVIEW";
          v22[2] = @"PRIVACY_PROTECTION";
          v22[3] = @"SWIPE_OPTIONS";
          v23[2] = @"TRACKING_PROTECTION";
          v23[3] = @"SWIPE_OPTIONS";
          v22[4] = @"MUTED_THREAD_ACTION";
          v22[5] = @"BLOCKED_SENDER_OPTIONS";
          v23[4] = @"MUTED_THREAD_ACTION";
          v23[5] = @"BLOCKED_SENDER_OPTIONS";
          v22[6] = @"BLOCKED_SENDERS";
          v22[7] = @"MARK_ADDRESSES";
          v23[6] = @"BLOCKED_LIST";
          v23[7] = @"HIGHLIGHT_ADDRESSES";
          v22[8] = @"INCREASE_QUOTE_LEVEL";
          v22[9] = @"INCLUDE_ATTACHMENTS_WITH_REPLIES";
          v23[8] = @"INCREASE_QUOTE_LEVEL";
          v23[9] = @"INCLUDE_ATTACHMENT_REPLIES";
          v22[10] = @"ADD_LINK_PREVIEWS";
          v22[11] = @"SIGNATURE";
          v23[10] = @"ADD_LINK_PREVIEWS";
          v23[11] = @"SIGNATURE";
          v22[12] = @"ORGANIZE_BY_THREAD";
          v22[13] = @"SHOW_TOCC_INDICATOR";
          v23[12] = @"ORGANIZE_BY_THREAD";
          v23[13] = @"SHOW_TOCC_INDICATOR";
          v22[14] = @"ALWAYS_BCC_MYSELF";
          v22[15] = @"COLLAPSE_READ_MESSAGES";
          v23[14] = @"AUTOMATICALLY_CC_SELF";
          v23[15] = @"COLLAPSE_READ_MESSAGES";
          v22[16] = @"MOST_RECENT_MESSAGE_ON_TOP";
          v22[17] = @"COMPLETE_THREADS";
          v23[16] = @"SHOW_NEWEST_MESSAGE_AT_TOP";
          v23[17] = @"COMPLETE_THREADS";
          v22[18] = @"ASK_BEFORE_DELETING";
          v22[19] = @"SEARCH_PREFERENCE";
          v23[18] = @"ASK_BEFORE_DELETING";
          v23[19] = @"SEARCH_PREFERENCE";
          v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:20];
          v8 = [v16 objectForKeyedSubscript:v4];
          if (v8)
          {
            v17 = [NSBundle bundleForClass:objc_opt_class()];
            bundleURL = [v17 bundleURL];

            v18 = v8;
            v7 = @"Preferences";
          }

          else
          {
            v7 = 0;
            bundleURL = 0;
          }
        }
      }
    }

    v9 = 0;
    if (v7 && bundleURL && v8)
    {
      v19 = [_NSLocalizedStringResource alloc];
      v20 = +[NSLocale currentLocale];
      v9 = [v19 initWithKey:v8 table:v7 locale:v20 bundleURL:bundleURL];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)appsLocalizedTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"APPS" table:@"Preferences" locale:v3 bundleURL:bundleURL];

  return v6;
}

+ (id)rootLocalizedTitle
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"MAIL" table:@"Preferences" locale:v3 bundleURL:bundleURL];

  return v6;
}

@end