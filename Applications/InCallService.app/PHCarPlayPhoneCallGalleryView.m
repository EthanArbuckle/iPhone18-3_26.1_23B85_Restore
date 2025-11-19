@interface PHCarPlayPhoneCallGalleryView
- (BOOL)phoneCallContainer:(id)a3 cellIsDimmedAtIndex:(unint64_t)a4;
- (PHCarPlayPhoneCallGalleryView)initWithFrame:(CGRect)a3;
- (id)mergedCalls;
- (id)mergedStringForMergedCalls;
- (id)phoneCallContainer:(id)a3 avatarViewControllerForViewCellAtIndex:(unint64_t)a4;
- (id)phoneCallContainer:(id)a3 localizedSenderIdentityForViewCellAtIndex:(unint64_t)a4;
- (id)phoneCallContainer:(id)a3 subtitleColorForViewCellAtIndex:(unint64_t)a4;
- (id)phoneCallContainer:(id)a3 subtitleForViewCellAtIndex:(unint64_t)a4;
- (id)phoneCallContainer:(id)a3 titleForViewCellAtIndex:(unint64_t)a4;
- (id)phoneCallForIndex:(unint64_t)a3 isMerged:(BOOL *)a4;
- (id)primaryCalls;
- (unint64_t)numberOfViewCellsForPhoneCallContainer:(id)a3;
- (void)addPrimaryPhoneCall:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)endPhoneCall:(id)a3 animated:(BOOL)a4;
- (void)mergePrimaryPhoneCallsAnimated:(BOOL)a3;
- (void)phoneCallContainer:(id)a3 phoneCallViewTappedAtIndex:(unint64_t)a4;
- (void)phoneCallDataDidChange:(id)a3;
- (void)reloadPhoneCallData;
- (void)setIsShowingAlertSubtitle:(BOOL)a3;
- (void)setIsShowingCallFailure:(BOOL)a3;
- (void)startListeningForCallNotifications;
- (void)stopListeningForCallNotifications;
@end

@implementation PHCarPlayPhoneCallGalleryView

- (void)startListeningForCallNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"phoneCallDataDidChange:" name:@"MPCarPlayInCallViewControllerUpdateClockTickNotification" object:0];
  [v3 addObserver:self selector:"phoneCallDataDidChange:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v3 addObserver:self selector:"phoneCallDataDidChange:" name:TUCallDisplayContextChangedNotification object:0];
}

- (void)reloadPhoneCallData
{
  [(PHCarPlayPhoneCallGalleryView *)self stopListeningForCallNotifications];
  [(PHCarPlayPhoneCallGalleryView *)self startListeningForCallNotifications];
  v3 = [(PHCarPlayPhoneCallGalleryView *)self container];
  [v3 reloadData];
}

- (void)stopListeningForCallNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)primaryCalls
{
  v3 = [(PHCarPlayPhoneCallGalleryView *)self delegate];
  v4 = [v3 primaryPhoneCallsForGalleryView:self];

  return v4;
}

- (id)mergedCalls
{
  v2 = [(PHCarPlayPhoneCallGalleryView *)self delegate];
  v3 = [v2 allConferenceParticipantCalls];

  return v3;
}

- (void)dealloc
{
  [(PHCarPlayPhoneCallGalleryView *)self stopListeningForCallNotifications];
  [(PHCarPlayPhoneCallContainer *)self->_container setDataSource:0];
  [(PHCarPlayPhoneCallContainer *)self->_container setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHCarPlayPhoneCallGalleryView;
  [(PHCarPlayPhoneCallGalleryView *)&v3 dealloc];
}

- (PHCarPlayPhoneCallGalleryView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PHCarPlayPhoneCallGalleryView;
  v3 = [(PHCarPlayPhoneCallGalleryView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(PHCarPlayPhoneCallGalleryView *)v3 setBackgroundColor:v4];

    [(PHCarPlayPhoneCallGalleryView *)v3 setOpaque:0];
    v5 = [PHCarPlayPhoneCallContainer alloc];
    [(PHCarPlayPhoneCallGalleryView *)v3 bounds];
    v6 = [(PHCarPlayPhoneCallContainer *)v5 initWithFrame:?];
    container = v3->_container;
    v3->_container = v6;

    v8 = objc_opt_new();
    labelFactory = v3->_labelFactory;
    v3->_labelFactory = v8;

    [(PHCarPlayPhoneCallGalleryView *)v3 addSubview:v3->_container];
    v10 = _NSDictionaryOfVariableBindings(@"_container", v3->_container, 0);
    v11 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[_container]|" options:0 metrics:0 views:v10];
    [(PHCarPlayPhoneCallGalleryView *)v3 addConstraints:v11];

    v12 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_container]|" options:0 metrics:0 views:v10];
    [(PHCarPlayPhoneCallGalleryView *)v3 addConstraints:v12];

    [(PHCarPlayPhoneCallContainer *)v3->_container setDataSource:v3];
    [(PHCarPlayPhoneCallContainer *)v3->_container setDelegate:v3];
    [(PHCarPlayPhoneCallGalleryView *)v3 startListeningForCallNotifications];
  }

  return v3;
}

- (unint64_t)numberOfViewCellsForPhoneCallContainer:(id)a3
{
  v3 = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  v4 = [v3 count];

  return v4;
}

- (id)phoneCallContainer:(id)a3 titleForViewCellAtIndex:(unint64_t)a4
{
  v10 = 0;
  v5 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:&v10];
  if ([v5 isConversation])
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 activeConversationForCall:v5];

    v8 = [v7 displayName];
  }

  else if (v5)
  {
    if (v10)
    {
      [(PHCarPlayPhoneCallGalleryView *)self mergedStringForMergedCalls];
    }

    else
    {
      [v5 displayName];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)phoneCallContainer:(id)a3 subtitleForViewCellAtIndex:(unint64_t)a4
{
  v6 = [(CNKCallParticipantLabelDescriptorFactory *)self->_labelFactory makeLabel];
  v7 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:0];
  if (!v7)
  {
    v16 = 0;
    v15 = 0;
    v13 = v6;
    goto LABEL_21;
  }

  v8 = [v7 canDisplayAlertUI:{-[PHCarPlayPhoneCallGalleryView isShowingAlertSubtitle](self, "isShowingAlertSubtitle")}];
  v9 = [(PHCarPlayPhoneCallGalleryView *)self traitCollection];
  v10 = [v9 _backlightLuminance] != 1;

  labelFactory = self->_labelFactory;
  v12 = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  v13 = -[CNKCallParticipantLabelDescriptorFactory labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:](labelFactory, "labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:", v7, [v12 count], v8, v10);

  v14 = [v13 strings];
  v15 = [v14 firstObject];

  v16 = [v13 sourceString];
  if ([v13 layoutState] == 1 || objc_msgSend(v13, "layoutState") == 3)
  {
    v17 = [v7 imageURL];
    if (v17)
    {
      v18 = [v7 localizedLabel];
      if (v18)
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    v19 = [v7 callDirectoryName];

    if (v17)
    {
    }

    if (!v19)
    {
      [v13 secondaryString];
      v15 = v17 = v15;
      goto LABEL_12;
    }
  }

LABEL_13:
  v20 = +[TUCallCenter sharedInstance];
  v21 = [v20 callsPassingTest:&stru_100357760];
  v22 = [v21 firstObject];

  v23 = +[TUCallCenter sharedInstance];
  v24 = [v23 activeConversationForCall:v22];

  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = [v24 link];

  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = [v24 state];
  if (!v26)
  {
    v27 = @"CARPLAY_FACETIME_WAITING";
    goto LABEL_19;
  }

  if (v26 == 1)
  {
    v27 = @"CARPLAY_FACETIME_GET_READY_TO_JOIN";
LABEL_19:
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:v27 value:&stru_100361FD0 table:@"PHCarPlay"];

    v15 = v29;
  }

LABEL_20:

LABEL_21:
  v30 = [PHCarPlayPhoneSubtitleResponse alloc];
  v31 = [v13 secondaryString];
  v32 = -[PHCarPlayPhoneSubtitleResponse initWithSubtitle:secondaryString:source:isCallIdentification:](v30, "initWithSubtitle:secondaryString:source:isCallIdentification:", v15, v31, v16, [v13 isCallIdentification]);

  return v32;
}

- (id)phoneCallContainer:(id)a3 subtitleColorForViewCellAtIndex:(unint64_t)a4
{
  v6 = +[UIColor dynamicLabelColor];
  v7 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:0];
  if (v7 && [v7 canDisplayAlertUI:{-[PHCarPlayPhoneCallGalleryView isShowingAlertSubtitle](self, "isShowingAlertSubtitle")}])
  {
    v8 = +[UIColor systemRedColor];

    v6 = v8;
  }

  return v6;
}

- (id)phoneCallContainer:(id)a3 avatarViewControllerForViewCellAtIndex:(unint64_t)a4
{
  v18 = 0;
  v4 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:&v18];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = [v4 contactIdentifier];
  if ([v6 length])
  {
    v7 = v18;

    if (v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_17;
    }

    v6 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v5];
    v9 = [[CNContactStore alloc] initWithConfiguration:v6];
    v10 = [v5 contactIdentifier];
    v26 = CNContactImageDataAvailableKey;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v17 = 0;
    v12 = [v9 unifiedContactWithIdentifier:v10 keysToFetch:v11 error:&v17];
    v13 = v17;

    if (v12 && [v12 imageDataAvailable])
    {
      v14 = [CNAvatarViewControllerSettings settingsWithContactStore:v9 threeDTouchEnabled:0];
      v8 = [[CNAvatarViewController alloc] initWithSettings:v14];
      v25 = v12;
      v15 = [NSArray arrayWithObjects:&v25 count:1];
      [v8 setContacts:v15];
    }

    else
    {
      if (!v13)
      {
        v8 = 0;
        goto LABEL_15;
      }

      v14 = sub_100004F84();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v20 = v9;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a contact using contact store (%@) call (%@) error (%@)", buf, 0x20u);
      }

      v8 = 0;
    }

LABEL_15:
    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

- (id)phoneCallContainer:(id)a3 localizedSenderIdentityForViewCellAtIndex:(unint64_t)a4
{
  if (+[PHDevice isGeminiCapable])
  {
    v6 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:0];
    v7 = v6;
    if (v6 && ([v6 provider], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "prioritizedSenderIdentities"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10 >= 2))
    {
      v11 = [v7 localSenderIdentity];
      v12 = [v11 localizedShortName];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)phoneCallContainer:(id)a3 cellIsDimmedAtIndex:(unint64_t)a4
{
  v4 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:a4 isMerged:0];
  v5 = [v4 status];
  v6 = (v5 > 4) | (5u >> v5);

  return v6 & 1;
}

- (void)phoneCallContainer:(id)a3 phoneCallViewTappedAtIndex:(unint64_t)a4
{
  v4 = [TUCallCenter sharedInstance:a3];
  v5 = [v4 currentCallGroups];
  v6 = [v5 count];

  if (v6 < 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 currentCallGroups];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 isOnHold];
          v15 = +[TUCallCenter sharedInstance];
          v16 = v15;
          if (v14)
          {
            [v15 unholdCall:v13];
          }

          else
          {
            [v15 holdCall:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v17 = +[TUCallCenter sharedInstance];
    [v17 swapCalls];
  }
}

- (id)mergedStringForMergedCalls
{
  v3 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v4 = [v3 count];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4 >= 3)
  {
    v7 = @"CARPLAY_CALLS_%@_%@_AND_OTHERS";
  }

  else
  {
    v7 = @"CARPLAY_CALLS_%@_AND_%@";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100361FD0 table:@"PHCarPlay"];

  v9 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v10 = [v9 count];

  if (v10 < 2)
  {
    v17 = 0;
  }

  else
  {
    v11 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 displayFirstName];
    v14 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
    v15 = [v14 objectAtIndexedSubscript:1];
    v16 = [v15 displayFirstName];
    v17 = [NSString stringWithFormat:v8, v13, v16];
  }

  return v17;
}

- (id)phoneCallForIndex:(unint64_t)a3 isMerged:(BOOL *)a4
{
  v7 = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  if ([v7 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
    if (a4)
    {
      v9 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
      if ([v9 count] >= 2 && (objc_msgSend(v8, "isConferenced") & 1) != 0)
      {
        v10 = [(PHCarPlayPhoneCallGalleryView *)self delegate];
        v11 = [v10 representativePhoneCallForConferenceForGalleryView:self];
        *a4 = v8 == v11;
      }

      else
      {
        *a4 = 0;
      }
    }
  }

  return v8;
}

- (void)addPrimaryPhoneCall:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = [(PHCarPlayPhoneCallGalleryView *)self container];
  [v5 reloadDataAnimated:v4];
}

- (void)mergePrimaryPhoneCallsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = [(PHCarPlayPhoneCallGalleryView *)self container];
    [v7 setNeedsMerge];

    v8 = [(PHCarPlayPhoneCallGalleryView *)self container];
    [v8 reloadDataAnimated:v3];
  }
}

- (void)endPhoneCall:(id)a3 animated:(BOOL)a4
{
  v4 = [(PHCarPlayPhoneCallGalleryView *)self container:a3];
  [v4 reloadDataAnimated:1];
}

- (void)setIsShowingCallFailure:(BOOL)a3
{
  v3 = [(PHCarPlayPhoneCallGalleryView *)self container];
  [v3 reloadData];
}

- (void)setIsShowingAlertSubtitle:(BOOL)a3
{
  if (self->_isShowingAlertSubtitle != a3)
  {
    self->_isShowingAlertSubtitle = a3;
    v4 = [(PHCarPlayPhoneCallGalleryView *)self container];
    [v4 reloadData];
  }
}

- (void)phoneCallDataDidChange:(id)a3
{
  v3 = [(PHCarPlayPhoneCallGalleryView *)self container];
  [v3 reloadData];
}

@end