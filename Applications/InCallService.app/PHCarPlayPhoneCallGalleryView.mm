@interface PHCarPlayPhoneCallGalleryView
- (BOOL)phoneCallContainer:(id)container cellIsDimmedAtIndex:(unint64_t)index;
- (PHCarPlayPhoneCallGalleryView)initWithFrame:(CGRect)frame;
- (id)mergedCalls;
- (id)mergedStringForMergedCalls;
- (id)phoneCallContainer:(id)container avatarViewControllerForViewCellAtIndex:(unint64_t)index;
- (id)phoneCallContainer:(id)container localizedSenderIdentityForViewCellAtIndex:(unint64_t)index;
- (id)phoneCallContainer:(id)container subtitleColorForViewCellAtIndex:(unint64_t)index;
- (id)phoneCallContainer:(id)container subtitleForViewCellAtIndex:(unint64_t)index;
- (id)phoneCallContainer:(id)container titleForViewCellAtIndex:(unint64_t)index;
- (id)phoneCallForIndex:(unint64_t)index isMerged:(BOOL *)merged;
- (id)primaryCalls;
- (unint64_t)numberOfViewCellsForPhoneCallContainer:(id)container;
- (void)addPrimaryPhoneCall:(id)call animated:(BOOL)animated;
- (void)dealloc;
- (void)endPhoneCall:(id)call animated:(BOOL)animated;
- (void)mergePrimaryPhoneCallsAnimated:(BOOL)animated;
- (void)phoneCallContainer:(id)container phoneCallViewTappedAtIndex:(unint64_t)index;
- (void)phoneCallDataDidChange:(id)change;
- (void)reloadPhoneCallData;
- (void)setIsShowingAlertSubtitle:(BOOL)subtitle;
- (void)setIsShowingCallFailure:(BOOL)failure;
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
  container = [(PHCarPlayPhoneCallGalleryView *)self container];
  [container reloadData];
}

- (void)stopListeningForCallNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)primaryCalls
{
  delegate = [(PHCarPlayPhoneCallGalleryView *)self delegate];
  v4 = [delegate primaryPhoneCallsForGalleryView:self];

  return v4;
}

- (id)mergedCalls
{
  delegate = [(PHCarPlayPhoneCallGalleryView *)self delegate];
  allConferenceParticipantCalls = [delegate allConferenceParticipantCalls];

  return allConferenceParticipantCalls;
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

- (PHCarPlayPhoneCallGalleryView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PHCarPlayPhoneCallGalleryView;
  v3 = [(PHCarPlayPhoneCallGalleryView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (unint64_t)numberOfViewCellsForPhoneCallContainer:(id)container
{
  primaryCalls = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  v4 = [primaryCalls count];

  return v4;
}

- (id)phoneCallContainer:(id)container titleForViewCellAtIndex:(unint64_t)index
{
  v10 = 0;
  v5 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:&v10];
  if ([v5 isConversation])
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 activeConversationForCall:v5];

    displayName = [v7 displayName];
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
    displayName = ;
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (id)phoneCallContainer:(id)container subtitleForViewCellAtIndex:(unint64_t)index
{
  makeLabel = [(CNKCallParticipantLabelDescriptorFactory *)self->_labelFactory makeLabel];
  v7 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:0];
  if (!v7)
  {
    sourceString = 0;
    firstObject = 0;
    v13 = makeLabel;
    goto LABEL_21;
  }

  v8 = [v7 canDisplayAlertUI:{-[PHCarPlayPhoneCallGalleryView isShowingAlertSubtitle](self, "isShowingAlertSubtitle")}];
  traitCollection = [(PHCarPlayPhoneCallGalleryView *)self traitCollection];
  v10 = [traitCollection _backlightLuminance] != 1;

  labelFactory = self->_labelFactory;
  primaryCalls = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  v13 = -[CNKCallParticipantLabelDescriptorFactory labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:](labelFactory, "labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:", v7, [primaryCalls count], v8, v10);

  strings = [v13 strings];
  firstObject = [strings firstObject];

  sourceString = [v13 sourceString];
  if ([v13 layoutState] == 1 || objc_msgSend(v13, "layoutState") == 3)
  {
    imageURL = [v7 imageURL];
    if (imageURL)
    {
      localizedLabel = [v7 localizedLabel];
      if (localizedLabel)
      {

LABEL_12:
        goto LABEL_13;
      }
    }

    callDirectoryName = [v7 callDirectoryName];

    if (imageURL)
    {
    }

    if (!callDirectoryName)
    {
      [v13 secondaryString];
      firstObject = imageURL = firstObject;
      goto LABEL_12;
    }
  }

LABEL_13:
  v20 = +[TUCallCenter sharedInstance];
  v21 = [v20 callsPassingTest:&stru_100357760];
  firstObject2 = [v21 firstObject];

  v23 = +[TUCallCenter sharedInstance];
  v24 = [v23 activeConversationForCall:firstObject2];

  if (!v24)
  {
    goto LABEL_20;
  }

  link = [v24 link];

  if (!link)
  {
    goto LABEL_20;
  }

  state = [v24 state];
  if (!state)
  {
    v27 = @"CARPLAY_FACETIME_WAITING";
    goto LABEL_19;
  }

  if (state == 1)
  {
    v27 = @"CARPLAY_FACETIME_GET_READY_TO_JOIN";
LABEL_19:
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:v27 value:&stru_100361FD0 table:@"PHCarPlay"];

    firstObject = v29;
  }

LABEL_20:

LABEL_21:
  v30 = [PHCarPlayPhoneSubtitleResponse alloc];
  secondaryString = [v13 secondaryString];
  v32 = -[PHCarPlayPhoneSubtitleResponse initWithSubtitle:secondaryString:source:isCallIdentification:](v30, "initWithSubtitle:secondaryString:source:isCallIdentification:", firstObject, secondaryString, sourceString, [v13 isCallIdentification]);

  return v32;
}

- (id)phoneCallContainer:(id)container subtitleColorForViewCellAtIndex:(unint64_t)index
{
  v6 = +[UIColor dynamicLabelColor];
  v7 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:0];
  if (v7 && [v7 canDisplayAlertUI:{-[PHCarPlayPhoneCallGalleryView isShowingAlertSubtitle](self, "isShowingAlertSubtitle")}])
  {
    v8 = +[UIColor systemRedColor];

    v6 = v8;
  }

  return v6;
}

- (id)phoneCallContainer:(id)container avatarViewControllerForViewCellAtIndex:(unint64_t)index
{
  v18 = 0;
  v4 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:&v18];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  contactIdentifier = [v4 contactIdentifier];
  if ([contactIdentifier length])
  {
    v7 = v18;

    if (v7)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_17;
    }

    contactIdentifier = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v5];
    v9 = [[CNContactStore alloc] initWithConfiguration:contactIdentifier];
    contactIdentifier2 = [v5 contactIdentifier];
    v26 = CNContactImageDataAvailableKey;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v17 = 0;
    v12 = [v9 unifiedContactWithIdentifier:contactIdentifier2 keysToFetch:v11 error:&v17];
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

- (id)phoneCallContainer:(id)container localizedSenderIdentityForViewCellAtIndex:(unint64_t)index
{
  if (+[PHDevice isGeminiCapable])
  {
    v6 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:0];
    v7 = v6;
    if (v6 && ([v6 provider], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "prioritizedSenderIdentities"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10 >= 2))
    {
      localSenderIdentity = [v7 localSenderIdentity];
      localizedShortName = [localSenderIdentity localizedShortName];
    }

    else
    {
      localizedShortName = 0;
    }
  }

  else
  {
    localizedShortName = 0;
  }

  return localizedShortName;
}

- (BOOL)phoneCallContainer:(id)container cellIsDimmedAtIndex:(unint64_t)index
{
  v4 = [(PHCarPlayPhoneCallGalleryView *)self phoneCallForIndex:index isMerged:0];
  status = [v4 status];
  v6 = (status > 4) | (5u >> status);

  return v6 & 1;
}

- (void)phoneCallContainer:(id)container phoneCallViewTappedAtIndex:(unint64_t)index
{
  v4 = [TUCallCenter sharedInstance:container];
  currentCallGroups = [v4 currentCallGroups];
  v6 = [currentCallGroups count];

  if (v6 < 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = +[TUCallCenter sharedInstance];
    currentCallGroups2 = [v7 currentCallGroups];

    v9 = [currentCallGroups2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(currentCallGroups2);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          isOnHold = [v13 isOnHold];
          v15 = +[TUCallCenter sharedInstance];
          v16 = v15;
          if (isOnHold)
          {
            [v15 unholdCall:v13];
          }

          else
          {
            [v15 holdCall:v13];
          }
        }

        v10 = [currentCallGroups2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  mergedCalls = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v4 = [mergedCalls count];
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

  mergedCalls2 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v10 = [mergedCalls2 count];

  if (v10 < 2)
  {
    v17 = 0;
  }

  else
  {
    mergedCalls3 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
    v12 = [mergedCalls3 objectAtIndexedSubscript:0];
    displayFirstName = [v12 displayFirstName];
    mergedCalls4 = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
    v15 = [mergedCalls4 objectAtIndexedSubscript:1];
    displayFirstName2 = [v15 displayFirstName];
    v17 = [NSString stringWithFormat:v8, displayFirstName, displayFirstName2];
  }

  return v17;
}

- (id)phoneCallForIndex:(unint64_t)index isMerged:(BOOL *)merged
{
  primaryCalls = [(PHCarPlayPhoneCallGalleryView *)self primaryCalls];
  if ([primaryCalls count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [primaryCalls objectAtIndexedSubscript:index];
    if (merged)
    {
      mergedCalls = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
      if ([mergedCalls count] >= 2 && (objc_msgSend(v8, "isConferenced") & 1) != 0)
      {
        delegate = [(PHCarPlayPhoneCallGalleryView *)self delegate];
        v11 = [delegate representativePhoneCallForConferenceForGalleryView:self];
        *merged = v8 == v11;
      }

      else
      {
        *merged = 0;
      }
    }
  }

  return v8;
}

- (void)addPrimaryPhoneCall:(id)call animated:(BOOL)animated
{
  animatedCopy = animated;
  container = [(PHCarPlayPhoneCallGalleryView *)self container];
  [container reloadDataAnimated:animatedCopy];
}

- (void)mergePrimaryPhoneCallsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mergedCalls = [(PHCarPlayPhoneCallGalleryView *)self mergedCalls];
  v6 = [mergedCalls count];

  if (v6 >= 2)
  {
    container = [(PHCarPlayPhoneCallGalleryView *)self container];
    [container setNeedsMerge];

    container2 = [(PHCarPlayPhoneCallGalleryView *)self container];
    [container2 reloadDataAnimated:animatedCopy];
  }
}

- (void)endPhoneCall:(id)call animated:(BOOL)animated
{
  v4 = [(PHCarPlayPhoneCallGalleryView *)self container:call];
  [v4 reloadDataAnimated:1];
}

- (void)setIsShowingCallFailure:(BOOL)failure
{
  container = [(PHCarPlayPhoneCallGalleryView *)self container];
  [container reloadData];
}

- (void)setIsShowingAlertSubtitle:(BOOL)subtitle
{
  if (self->_isShowingAlertSubtitle != subtitle)
  {
    self->_isShowingAlertSubtitle = subtitle;
    container = [(PHCarPlayPhoneCallGalleryView *)self container];
    [container reloadData];
  }
}

- (void)phoneCallDataDidChange:(id)change
{
  container = [(PHCarPlayPhoneCallGalleryView *)self container];
  [container reloadData];
}

@end