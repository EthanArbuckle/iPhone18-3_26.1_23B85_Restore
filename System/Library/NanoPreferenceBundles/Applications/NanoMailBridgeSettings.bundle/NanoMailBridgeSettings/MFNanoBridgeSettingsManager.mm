@interface MFNanoBridgeSettingsManager
+ (MFNanoBridgeSettingsManager)sharedInstance;
- (BOOL)_alwaysLoadContentDirectly;
- (BOOL)_askBeforeDeleting;
- (BOOL)_cloudNotificationsEnabled;
- (BOOL)_loadRemoteImages;
- (BOOL)_mobileMailAskBeforeDeleting;
- (BOOL)_mobileMailLoadRemoteImages;
- (BOOL)_mobileMailOrganizeByThread;
- (BOOL)_mobileMailPrivacyProtectionEnabled;
- (BOOL)_organizeByThread;
- (BOOL)privacyProtectionEnabled;
- (MFNanoBridgeSettingsManager)init;
- (NSArray)accountIdentities;
- (NSDictionary)standaloneAccountStateByAccountId;
- (NSString)signature;
- (id)_getValueForKey:(id)key;
- (id)_getValueForKey:(id)key perGizmo:(BOOL)gizmo;
- (id)_includeMailMailbox;
- (id)_includeMailMailboxesFromDisk;
- (id)_loadAccounts;
- (id)_mailboxSelectionFromPreviousOSVersion;
- (id)_mobileMailDefaultAccountId;
- (id)_mobileMailSwipeRightAction;
- (id)_signature;
- (id)_swipeRightAction;
- (id)bridgeSettingsMailboxSelection;
- (id)domainAccessor;
- (id)readFromSharedPreferencesValueForKey:(id)key;
- (unint64_t)_linesOfPreview;
- (void)_saveValueToSharedPreference:(id)preference forKey:(id)key;
- (void)_setAlwaysLoadContentDirectly:(BOOL)directly;
- (void)_setAskBeforeDeleting:(BOOL)deleting;
- (void)_setCloudNotificationsEnabled:(BOOL)enabled;
- (void)_setDefaultAccountId:(id)id;
- (void)_setIncludeMailMailboxes:(id)mailboxes;
- (void)_setLinesOfPreview:(unint64_t)preview;
- (void)_setLoadRemoteImages:(BOOL)images;
- (void)_setOrganizeByThread:(BOOL)thread;
- (void)_setPrivacyProtectionEnabled:(BOOL)enabled;
- (void)_setSignature:(id)signature;
- (void)_setSwipeRightAction:(id)action;
- (void)_setValue:(id)value forKey:(id)key syncWithClient:(BOOL)client perGizmo:(BOOL)gizmo;
- (void)addSharedSettingsToArray:(id)array ifFilterTypes:(unint64_t)types containsFilter:(unint64_t)filter;
- (void)notifyMirrorSettingsFromCompanionChanged;
- (void)notifyMobileMailAccountsChanged;
- (void)notifyMobileMailAskBeforeDeletingChanged;
- (void)notifyMobileMailDefaultAccountUidChanged;
- (void)notifyMobileMailLoadRemoteImagesChanged;
- (void)notifyMobileMailOrganizeByThreadChanged;
- (void)notifyMobileMailPrivacyProtectionChanged;
- (void)notifyMobileMailSwipeRightActionChanged;
- (void)registry:(id)registry didActivate:(id)activate;
- (void)registry:(id)registry didUnpair:(id)unpair;
- (void)reloadCachedAccounts;
- (void)setAccountIdentities:(id)identities;
- (void)setAskBeforeDeleting:(BOOL)deleting;
- (void)setLoadRemoteImages:(BOOL)images;
- (void)setOrganizeByThread:(BOOL)thread;
- (void)setStandaloneAccountStateByAccountId:(id)id;
- (void)setUpdateMailboxSelection:(id)selection;
- (void)updateSharedPreferences;
@end

@implementation MFNanoBridgeSettingsManager

+ (MFNanoBridgeSettingsManager)sharedInstance
{
  if (qword_3C200 != -1)
  {
    sub_1FCB0();
  }

  v3 = qword_3C1F8;

  return v3;
}

- (MFNanoBridgeSettingsManager)init
{
  if (MFDeviceSupportsNanoCompanion())
  {
    v17.receiver = self;
    v17.super_class = MFNanoBridgeSettingsManager;
    v3 = [(MFNanoBridgeSettingsManager *)&v17 init];
    if (v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      mailboxUidById = v3->_mailboxUidById;
      v3->_mailboxUidById = v4;

      v6 = objc_alloc_init(NSMutableDictionary);
      accountByMailboxId = v3->_accountByMailboxId;
      v3->_accountByMailboxId = v6;

      _loadAccounts = [(MFNanoBridgeSettingsManager *)v3 _loadAccounts];
      activeAccounts = v3->_activeAccounts;
      v3->_activeAccounts = _loadAccounts;

      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v10 = qword_3C208;
      v22 = qword_3C208;
      if (!qword_3C208)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_17884;
        v18[3] = &unk_34AF8;
        v18[4] = &v19;
        sub_17884(v18);
        v10 = v20[3];
      }

      v11 = v10;
      _Block_object_dispose(&v19, 8);
      v12 = objc_alloc_init(v10);
      syncManager = v3->_syncManager;
      v3->_syncManager = v12;

      v14 = +[PDRRegistry sharedInstance];
      [v14 addDelegate:v3];

      [(MFNanoBridgeSettingsManager *)v3 updateSharedPreferences];
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)updateSharedPreferences
{
  if ([(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {

    [(MFNanoBridgeSettingsManager *)self notifyMirrorSettingsFromCompanionChanged];
  }
}

- (id)bridgeSettingsMailboxSelection
{
  v16 = objc_alloc_init(MFBridgeSettingsMailboxSelection);
  includeMailMailboxes = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [includeMailMailboxes count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  includeMailMailboxes2 = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v6 = 0;
  v7 = [includeMailMailboxes2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(includeMailMailboxes2);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          mailboxId = [v11 mailboxId];
          [v4 addObject:mailboxId];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v10;
            mailboxFilterType = [v13 mailboxFilterType];

            v6 |= mailboxFilterType;
          }

          else
          {
            objc_opt_class();
            v6 |= objc_opt_isKindOfClass() & 1;
          }
        }
      }

      v7 = [includeMailMailboxes2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(MFBridgeSettingsMailboxSelection *)v16 setInboxesFilterTypes:v6];
  [(MFBridgeSettingsMailboxSelection *)v16 setSelectedMailboxes:v4];

  return v16;
}

- (void)setUpdateMailboxSelection:(id)selection
{
  selectionCopy = selection;
  v15 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mailboxesWithAllMessagesSyncEnabledIds = [selectionCopy mailboxesWithAllMessagesSyncEnabledIds];
  v5 = [mailboxesWithAllMessagesSyncEnabledIds countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(mailboxesWithAllMessagesSyncEnabledIds);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_mailboxUidById objectForKeyedSubscript:v8];
        if (v9)
        {
          v10 = [MFNanoBridgeSettingsAccountSpecificMailbox alloc];
          v11 = [(NSMutableDictionary *)self->_accountByMailboxId objectForKeyedSubscript:v8];
          v12 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)v10 initWithMailboxUid:v9 account:v11];

          [v15 addObject:v12];
        }
      }

      v5 = [mailboxesWithAllMessagesSyncEnabledIds countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 2);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 4);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 8);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 16);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 32);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [selectionCopy aggregatedMailboxesFilterTypes], 64);
  if ([selectionCopy aggregatedMailboxesFilterTypes])
  {
    v13 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
    [v15 addObject:v13];
  }

  [(MFNanoBridgeSettingsManager *)self setIncludeMailMailboxes:v15];
}

- (void)addSharedSettingsToArray:(id)array ifFilterTypes:(unint64_t)types containsFilter:(unint64_t)filter
{
  arrayCopy = array;
  if ((filter & types) != 0)
  {
    v7 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:[MFNanoBridgeSettingsMailbox sourceTypeForMailboxFilterType:filter]];
    [arrayCopy addObject:v7];
  }
}

- (NSDictionary)standaloneAccountStateByAccountId
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kStandaloneAccountStateByAccountIdKey"];
  if (v2)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v3 = [NSArray arrayWithObjects:&v7 count:3];
    v4 = [NSSet setWithArray:v3, v7, v8];
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStandaloneAccountStateByAccountId:(id)id
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:id requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (NSArray)accountIdentities
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kAccountIdentitiesKey"];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_3C218;
    v13 = qword_3C218;
    if (!qword_3C218)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_17B48;
      v9[3] = &unk_34AF8;
      v9[4] = &v10;
      sub_17B48(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v5 = [NSArray arrayWithObjects:v14 count:2];
    v6 = [NSSet setWithArray:v5];
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v2 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAccountIdentities:(id)identities
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:identities requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (void)setAskBeforeDeleting:(BOOL)deleting
{
  deletingCopy = deleting;
  if (![(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {

    [(MFNanoBridgeSettingsManager *)self _setAskBeforeDeleting:deletingCopy];
  }
}

- (void)setLoadRemoteImages:(BOOL)images
{
  imagesCopy = images;
  if (![(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {

    [(MFNanoBridgeSettingsManager *)self _setLoadRemoteImages:imagesCopy];
  }
}

- (void)setOrganizeByThread:(BOOL)thread
{
  threadCopy = thread;
  if (![(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {

    [(MFNanoBridgeSettingsManager *)self _setOrganizeByThread:threadCopy];
  }
}

- (NSString)signature
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  htmlSignature = [v2 htmlSignature];
  v4 = [htmlSignature dataUsingEncoding:4];

  v5 = [NSAttributedString alloc];
  v19[0] = NSDocumentTypeDocumentAttribute;
  v19[1] = NSCharacterEncodingDocumentAttribute;
  v20[0] = NSHTMLTextDocumentType;
  v20[1] = &off_36598;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v18 = 0;
  v7 = [v5 initWithData:v4 options:v6 documentAttributes:0 error:&v18];
  v8 = v18;

  if (v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1FCC4(v8, v9);
    }
  }

  string = [v7 string];
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [string _stringByReplacingCharactersInSet:v11 withCharacter:10];

  if (v12)
  {
    while ([v12 rangeOfString:@"\n\n"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v12 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n"];

      v12 = v13;
    }
  }

  v14 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  return v16;
}

- (BOOL)privacyProtectionEnabled
{
  mirrorSettingsFromCompanion = [(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion];
  if (mirrorSettingsFromCompanion)
  {

    LOBYTE(mirrorSettingsFromCompanion) = [(MFNanoBridgeSettingsManager *)self _mobileMailPrivacyProtectionEnabled];
  }

  return mirrorSettingsFromCompanion;
}

- (void)notifyMirrorSettingsFromCompanionChanged
{
  if ([(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailAskBeforeDeletingChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailLoadRemoteImagesChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailPrivacyProtectionChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailOrganizeByThreadChanged];

    [(MFNanoBridgeSettingsManager *)self notifyMobileMailDefaultAccountUidChanged];
  }

  else
  {

    [(MFNanoBridgeSettingsManager *)self notifyMobileMailPrivacyProtectionChanged];
  }
}

- (void)notifyMobileMailAskBeforeDeletingChanged
{
  _mobileMailAskBeforeDeleting = [(MFNanoBridgeSettingsManager *)self _mobileMailAskBeforeDeleting];

  [(MFNanoBridgeSettingsManager *)self _setAskBeforeDeleting:_mobileMailAskBeforeDeleting];
}

- (void)notifyMobileMailLoadRemoteImagesChanged
{
  _mobileMailLoadRemoteImages = [(MFNanoBridgeSettingsManager *)self _mobileMailLoadRemoteImages];

  [(MFNanoBridgeSettingsManager *)self _setLoadRemoteImages:_mobileMailLoadRemoteImages];
}

- (void)notifyMobileMailPrivacyProtectionChanged
{
  privacyProtectionEnabled = [(MFNanoBridgeSettingsManager *)self privacyProtectionEnabled];

  [(MFNanoBridgeSettingsManager *)self _setPrivacyProtectionEnabled:privacyProtectionEnabled];
}

- (void)notifyMobileMailOrganizeByThreadChanged
{
  _mobileMailOrganizeByThread = [(MFNanoBridgeSettingsManager *)self _mobileMailOrganizeByThread];

  [(MFNanoBridgeSettingsManager *)self _setOrganizeByThread:_mobileMailOrganizeByThread];
}

- (void)notifyMobileMailSwipeRightActionChanged
{
  _mobileMailSwipeRightAction = [(MFNanoBridgeSettingsManager *)self _mobileMailSwipeRightAction];
  [(MFNanoBridgeSettingsManager *)self _setSwipeRightAction:?];
}

- (void)notifyMobileMailDefaultAccountUidChanged
{
  _mobileMailDefaultAccountId = [(MFNanoBridgeSettingsManager *)self _mobileMailDefaultAccountId];
  [(MFNanoBridgeSettingsManager *)self _setDefaultAccountId:?];
}

- (void)notifyMobileMailAccountsChanged
{
  v17 = self->_activeAccounts;
  _loadAccounts = [(MFNanoBridgeSettingsManager *)self _loadAccounts];
  activeAccounts = self->_activeAccounts;
  self->_activeAccounts = _loadAccounts;

  includeMailMailboxes = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v5 = [NSMutableSet setWithArray:?];
  v6 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
  v7 = [v5 containsObject:v6];
  if ([(NSArray *)self->_activeAccounts count]< 2 || [(NSArray *)v17 count]!= &dword_0 + 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = [MailAccount nano_bridgeSettingsInboxesFromAccounts:self->_activeAccounts];
    [v5 addObjectsFromArray:v14];

    goto LABEL_18;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = includeMailMailboxes;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if (!(([v13 type] != &dword_4 + 3) | v7 & 1))
          {
            [v5 addObject:v6];
            LOBYTE(v7) = 1;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  allObjects = [v5 allObjects];
  [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:allObjects];
}

- (void)reloadCachedAccounts
{
  +[MailAccount reloadAccounts];
  _loadAccounts = [(MFNanoBridgeSettingsManager *)self _loadAccounts];
  activeAccounts = self->_activeAccounts;
  self->_activeAccounts = _loadAccounts;
}

- (id)_includeMailMailbox
{
  _mailboxSelectionFromPreviousOSVersion = [(MFNanoBridgeSettingsManager *)self _mailboxSelectionFromPreviousOSVersion];
  if (_mailboxSelectionFromPreviousOSVersion)
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = _mailboxSelectionFromPreviousOSVersion;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "#Nano Mailbox selection list is from legacy OS. %{public}@", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _includeMailMailboxesFromDisk = 0;
    }

    else
    {
      v26 = _mailboxSelectionFromPreviousOSVersion;
      _includeMailMailboxesFromDisk = [NSArray arrayWithObjects:&v26 count:1];
      [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:?];
    }
  }

  else
  {
    _includeMailMailboxesFromDisk = [(MFNanoBridgeSettingsManager *)self _includeMailMailboxesFromDisk];
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = _includeMailMailboxesFromDisk;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "#Nano Mailbox selection list read from disk. %{public}@", buf, 0xCu);
    }
  }

  v4 = +[MailAccount nano_activeMailAccounts];
  v5 = 0;
  if ([v4 count] && _includeMailMailboxesFromDisk)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_includeMailMailboxesFromDisk count]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = _includeMailMailboxesFromDisk;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = *v22;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v4 count] > 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ([v11 isValid])
          {
LABEL_21:
            [v6 addObject:v11];
            goto LABEL_25;
          }

          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v28 = v11;
            _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "#Nano Mailbox no longer available. Ignoring. %{public}@", buf, 0xCu);
          }
        }

LABEL_25:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {
LABEL_27:

        v5 = v6;
        break;
      }
    }
  }

  if ([v5 count])
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "#Nano Mailbox selection list validated. %{public}@", buf, 0xCu);
    }

    v14 = v5;
  }

  else
  {
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "#Nano Mailbox selection list does not exist. Creating default seletion", buf, 2u);
    }

    v16 = +[MFNanoBridgeSettingsMailbox defaultSelectedMailboxes];
    v14 = [v16 mutableCopy];

    if ([v14 count])
    {
      [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:v14];
    }
  }

  return v14;
}

- (unint64_t)_linesOfPreview
{
  v3 = sub_145F8();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v4 unsignedIntegerValue];
LABEL_8:

      return unsignedIntegerValue;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C230;
  v14 = qword_3C230;
  if (!qword_3C230)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultLinesOfPreview");
    qword_3C230 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    unsignedIntegerValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"NSUInteger getNanoMailDefaultLinesOfPreview(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_askBeforeDeleting
{
  v3 = sub_14968();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
LABEL_8:

      return bOOLValue & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C240;
  v14 = qword_3C240;
  if (!qword_3C240)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultAskBeforeDeleting");
    qword_3C240 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    bOOLValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultAskBeforeDeleting(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_loadRemoteImages
{
  v3 = sub_14CD8();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
LABEL_8:

      return bOOLValue & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C250;
  v14 = qword_3C250;
  if (!qword_3C250)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultLoadRemoteImages");
    qword_3C250 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    bOOLValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultLoadRemoteImages(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_organizeByThread
{
  v3 = sub_15048();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
LABEL_8:

      return bOOLValue & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C260;
  v14 = qword_3C260;
  if (!qword_3C260)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultOrganizeByThread");
    qword_3C260 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    bOOLValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultOrganizeByThread(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (id)_swipeRightAction
{
  v3 = sub_153A4();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3 perGizmo:0];

  v5 = v4;
  if (!v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = qword_3C270;
    v15 = qword_3C270;
    if (!qword_3C270)
    {
      v7 = sub_17C2C();
      v13[3] = dlsym(v7, "NanoMailDefaultSwipeRightAction");
      qword_3C270 = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      v10 = +[NSAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultSwipeRightAction(void)"];
      [v10 handleFailureInFunction:v11 file:@"MFNanoBridgeSettingsManager.m" lineNumber:43 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v5 = *v6;
  }

  v8 = v5;

  return v8;
}

- (id)_signature
{
  v3 = sub_15820();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v6 = qword_3C280;
    v23 = qword_3C280;
    if (!qword_3C280)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_18180;
      v18 = &unk_34AF8;
      v19 = &v20;
      sub_18180(&v15);
      v6 = v21[3];
    }

    v7 = v6;
    _Block_object_dispose(&v20, 8);
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v9 = qword_3C288;
    v23 = qword_3C288;
    if (!qword_3C288)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_18264;
      v18 = &unk_34AF8;
      v19 = &v20;
      v10 = sub_17C2C();
      v11 = dlsym(v10, "NanoMailDefaultSignatureLocalizationKey");
      *(v19[1] + 24) = v11;
      qword_3C288 = *(v19[1] + 24);
      v9 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v9)
    {
      v13 = +[NSAssertionHandler currentHandler];
      v14 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultSignatureLocalizationKey(void)"];
      [v13 handleFailureInFunction:v14 file:@"MFNanoBridgeSettingsManager.m" lineNumber:49 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v5 = [v8 localizedStringForKey:*v9 value:&stru_34FF0 table:@"NanoMailKit"];
  }

  return v5;
}

- (BOOL)_alwaysLoadContentDirectly
{
  v3 = sub_15B90();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
LABEL_8:

      return bOOLValue & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C298;
  v14 = qword_3C298;
  if (!qword_3C298)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultAlwaysLoadContentDirectly");
    qword_3C298 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    bOOLValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultAlwaysLoadContentDirectly(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:52 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_cloudNotificationsEnabled
{
  v3 = sub_15F04();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3 perGizmo:0];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
LABEL_8:

      return bOOLValue & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_3C2A8;
  v14 = qword_3C2A8;
  if (!qword_3C2A8)
  {
    v7 = sub_17C2C();
    v12[3] = dlsym(v7, "NanoMailDefaultCloudNotificationsEnabled");
    qword_3C2A8 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    bOOLValue = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultCloudNotificationsEnabled(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)_setIncludeMailMailboxes:(id)mailboxes
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:mailboxes requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (id)_includeMailMailboxesFromDisk
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kIncludeMailBoxesKey"];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mailboxSelectionFromPreviousOSVersion
{
  v3 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"NanoMailIncludeMail"];
  if (v3)
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    [(MFNanoBridgeSettingsManager *)self _setValue:0 forKey:@"NanoMailIncludeMail" syncWithClient:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setLinesOfPreview:(unint64_t)preview
{
  v5 = [NSNumber numberWithUnsignedInteger:preview];
  v4 = sub_145F8();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setAskBeforeDeleting:(BOOL)deleting
{
  v5 = [NSNumber numberWithBool:deleting];
  v4 = sub_14968();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setLoadRemoteImages:(BOOL)images
{
  v5 = [NSNumber numberWithBool:images];
  v4 = sub_14CD8();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setPrivacyProtectionEnabled:(BOOL)enabled
{
  v4 = [NSNumber numberWithBool:enabled];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = qword_3C2B0;
  v12 = qword_3C2B0;
  if (!qword_3C2B0)
  {
    v6 = sub_17C2C();
    v10[3] = dlsym(v6, "NanoMailPrivacyProtectionKey");
    qword_3C2B0 = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    [(MFNanoBridgeSettingsManager *)self _setValue:v4 forKey:*v5 syncWithClient:1];
  }

  else
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"NSString *getNanoMailPrivacyProtectionKey(void)"];
    [v7 handleFailureInFunction:v8 file:@"MFNanoMailSoftLinking.h" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_setAlwaysLoadContentDirectly:(BOOL)directly
{
  v5 = [NSNumber numberWithBool:directly];
  v4 = sub_15B90();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setOrganizeByThread:(BOOL)thread
{
  v5 = [NSNumber numberWithBool:thread];
  v4 = sub_15048();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setSwipeRightAction:(id)action
{
  actionCopy = action;
  v4 = sub_153A4();
  [(MFNanoBridgeSettingsManager *)self _setValue:actionCopy forKey:v4 syncWithClient:1 perGizmo:0];
}

- (void)_setSignature:(id)signature
{
  signatureCopy = signature;
  v4 = sub_15820();
  [(MFNanoBridgeSettingsManager *)self _setValue:signatureCopy forKey:v4 syncWithClient:1];
}

- (void)_setDefaultAccountId:(id)id
{
  idCopy = id;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = qword_3C2B8;
  v12 = qword_3C2B8;
  if (!qword_3C2B8)
  {
    v6 = sub_17C2C();
    v10[3] = dlsym(v6, "NanoMailDefaultAccountUidKey");
    qword_3C2B8 = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    [(MFNanoBridgeSettingsManager *)self _setValue:idCopy forKey:*v5 syncWithClient:1];
  }

  else
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultAccountUidKey(void)"];
    [v7 handleFailureInFunction:v8 file:@"MFNanoMailSoftLinking.h" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_setCloudNotificationsEnabled:(BOOL)enabled
{
  v5 = [NSNumber numberWithBool:enabled];
  v4 = sub_15F04();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (BOOL)_mobileMailAskBeforeDeleting
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"ShowMessageDeleteConfirmation"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_mobileMailLoadRemoteImages
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:EMUserDefaultLoadRemoteContentKey];

  return (v3 & 2) == 0;
}

- (BOOL)_mobileMailPrivacyProtectionEnabled
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:EMUserDefaultLoadRemoteContentKey];

  return (~v3 & 0xC) != 0;
}

- (BOOL)_mobileMailOrganizeByThread
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"DisableThreading"];

  if (v3)
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)_mobileMailSwipeRightAction
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"LeftEdgeSwipeAction"];

  return v3;
}

- (id)_mobileMailDefaultAccountId
{
  v2 = +[NSUserDefaults em_userDefaults];
  uniqueID = [v2 objectForKey:MailDefaultSendingAccountKey];

  if (!uniqueID)
  {
    v4 = +[MailAccount defaultMailAccountForDelivery];
    uniqueID = [v4 uniqueID];
  }

  return uniqueID;
}

- (id)_getValueForKey:(id)key
{
  v3 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:key perGizmo:1];

  return v3;
}

- (id)_getValueForKey:(id)key perGizmo:(BOOL)gizmo
{
  gizmoCopy = gizmo;
  keyCopy = key;
  if (gizmoCopy)
  {
    domainAccessor = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    synchronize = [domainAccessor synchronize];

    domainAccessor2 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    v10 = [domainAccessor2 objectForKey:keyCopy];
  }

  else
  {
    v10 = [(MFNanoBridgeSettingsManager *)self readFromSharedPreferencesValueForKey:keyCopy];
  }

  return v10;
}

- (void)_setValue:(id)value forKey:(id)key syncWithClient:(BOOL)client perGizmo:(BOOL)gizmo
{
  gizmoCopy = gizmo;
  clientCopy = client;
  valueCopy = value;
  keyCopy = key;
  v12 = [(MFNanoBridgeSettingsManager *)self readFromSharedPreferencesValueForKey:keyCopy];
  [(MFNanoBridgeSettingsManager *)self _saveValueToSharedPreference:valueCopy forKey:keyCopy];
  if (gizmoCopy)
  {
    domainAccessor = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    v14 = [domainAccessor objectForKey:keyCopy];

    if (([v14 isEqual:valueCopy] & 1) == 0)
    {
      domainAccessor2 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
      [domainAccessor2 setObject:valueCopy forKey:keyCopy];

      domainAccessor3 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
      synchronize = [domainAccessor3 synchronize];

      if (clientCopy)
      {
        syncManager = self->_syncManager;
        v19 = [NSSet setWithObject:keyCopy];
        [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.NanoMail" keys:v19];
      }
    }
  }

  else
  {
    if (([v12 isEqual:valueCopy] | !clientCopy))
    {
      goto LABEL_8;
    }

    v20 = self->_syncManager;
    v14 = [NSSet setWithObject:keyCopy];
    [(NPSManager *)v20 synchronizeUserDefaultsDomain:@"com.apple.NanoMail" keys:v14];
  }

LABEL_8:
  v21 = sub_15048();
  if ([keyCopy isEqualToString:v21])
  {
  }

  else
  {
    v22 = [keyCopy isEqualToString:@"kIncludeMailBoxesKey"];

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v23 = MFUserAgent();
  isMaild = [v23 isMaild];

  if (isMaild)
  {
    v25 = MFLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1FD3C(keyCopy, v25);
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 postNotificationName:@"MailDefaultsChangedNotification" object:keyCopy userInfo:0];
  }

  else
  {
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = keyCopy;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Bridge Setting has Changed for key: %@", &v29, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MFNanoMailImportantBridgeSettingHasChangedDarwinNotification", 0, 0, 1u);
  }

LABEL_18:
}

- (void)_saveValueToSharedPreference:(id)preference forKey:(id)key
{
  value = preference;
  keyCopy = key;
  CFPreferencesSetValue(keyCopy, value, @"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyApplication);
}

- (id)readFromSharedPreferencesValueForKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)registry:(id)registry didUnpair:(id)unpair
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
}

- (void)registry:(id)registry didActivate:(id)activate
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;

  [(MFNanoBridgeSettingsManager *)self updateSharedPreferences];
}

- (id)_loadAccounts
{
  [(NSMutableDictionary *)self->_mailboxUidById removeAllObjects];
  v14 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = +[MailAccount activeAccounts];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v15 = *v22;
    do
    {
      v16 = v4;
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v14 addObject:v6];
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          allMailboxUids = [v6 allMailboxUids];
          v8 = [allMailboxUids countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v8)
          {
            v9 = *v18;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v18 != v9)
                {
                  objc_enumerationMutation(allMailboxUids);
                }

                v11 = *(*(&v17 + 1) + 8 * j);
                nano_mailboxId = [v11 nano_mailboxId];
                if (nano_mailboxId)
                {
                  [(NSMutableDictionary *)self->_accountByMailboxId setObject:v6 forKeyedSubscript:nano_mailboxId];
                  [(NSMutableDictionary *)self->_mailboxUidById setObject:v11 forKeyedSubscript:nano_mailboxId];
                }
              }

              v8 = [allMailboxUids countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v8);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  return v14;
}

- (id)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_3C2C0;
    v13 = qword_3C2C0;
    if (!qword_3C2C0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_18494;
      v9[3] = &unk_34AF8;
      v9[4] = &v10;
      sub_18494(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithDomain:@"com.apple.NanoMail"];
    v7 = self->_domainAccessor;
    self->_domainAccessor = v6;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

@end