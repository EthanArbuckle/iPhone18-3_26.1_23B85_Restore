@interface PHCallParticipantsViewController
- (BOOL)anyLabelDescriptorIsDynamic;
- (BOOL)isCallRinging;
- (BOOL)isDeviceCapableOfTelephonyCalls;
- (BOOL)isFrontmostCallFaceTimeAudio;
- (BOOL)shouldShowCallDetailsViewButton;
- (BOOL)shouldShowInfoButtonForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (BOOL)shouldShowLargeAvatar;
- (BOOL)shouldShowParticipantImageAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (BOOL)shouldShowParticipantLabel;
- (BOOL)shouldShowSingleDurationLabel;
- (BOOL)usesCompactMulticallUI;
- (NSMutableArray)callGroups;
- (NSNumberFormatter)numberFormatter;
- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache;
- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache contacts:(id)contacts;
- (PHCallParticipantsViewControllerDelegate)delegate;
- (TUCall)prioritizedCall;
- (id)callForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)colorForParticipantLabelView:(id)view;
- (id)colorForStatusLabelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)compactLabelTextForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)contactForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)currentCallGroups;
- (id)customFontForParticipantLabel;
- (id)fontForParticipantLabelView:(id)view;
- (id)fontForParticipantLabelViewStatusLabel:(id)label;
- (id)frontmostCall;
- (id)frontmostCallGroup;
- (id)iconInParticipantsView:(id)view;
- (id)labelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view allowsDuration:(BOOL)duration;
- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)nameForCallGroup:(id)group;
- (id)nameForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (id)supplementalParticipantLabelFormatStringAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (unint64_t)numberOfParticipantLabels;
- (unsigned)activityStateForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (void)_updateCallGroups;
- (void)callContinuityChangedNotification:(id)notification;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callModelChangedNotification:(id)notification;
- (void)callStatusChangedNotification:(id)notification;
- (void)conferenceParticipantsChangedNotification:(id)notification;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)dealloc;
- (void)displayContextChangedNotification:(id)notification;
- (void)fieldModeSendButtonTappedInParticipantsView:(id)view;
- (void)gameControllerDidChangeContext;
- (void)handleAlertDisconnectingCallsNotification:(id)notification;
- (void)isThirdPartyVideoChangedNotification:(id)notification;
- (void)keypadDataSourceChangedNotification:(id)notification;
- (void)loadView;
- (void)localSenderIdentityAccountUUIDChangedNotification:(id)notification;
- (void)participantTappedAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (void)participantViewCallDetailsGestureRecognizerTapped;
- (void)participantViewInfoButtonTappedAtIndex:(unint64_t)index inParticipantsView:(id)view;
- (void)participantsView:(id)view didPerformActionType:(int64_t)type;
- (void)resetNameOverrideString;
- (void)secondTickNotification:(id)notification;
- (void)setAllowsFieldModeSendButton:(BOOL)button;
- (void)setBannerAudioRouteButtonSelected:(BOOL)selected;
- (void)setBannerButtonsState:(unint64_t)state;
- (void)setPrioritizedCall:(id)call;
- (void)tuCallHasBeenRedirectedChangedNotification:(id)notification;
- (void)updateParticipantViewWithSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PHCallParticipantsViewController

- (BOOL)anyLabelDescriptorIsDynamic
{
  numberOfParticipantLabels = [(PHCallParticipantsViewController *)self numberOfParticipantLabels];
  if (numberOfParticipantLabels)
  {
    v4 = numberOfParticipantLabels;
    v5 = 0;
    v6 = 1;
    do
    {
      traitCollection = [(PHCallParticipantsViewController *)self traitCollection];
      v8 = [traitCollection _backlightLuminance] != 1;

      v9 = [(PHCallParticipantsViewController *)self labelForParticipantAtIndex:v5 inParticipantsView:0 allowsDuration:v8];
      LODWORD(v8) = [v9 isDynamic];

      if (v8)
      {
        break;
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (unint64_t)numberOfParticipantLabels
{
  v3 = +[TUCallCenter sharedInstance];
  if ([v3 isAmbiguous])
  {
    shouldShowSingleDurationLabel = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

    if ((shouldShowSingleDurationLabel & 1) == 0)
    {
      callGroups = [(PHCallParticipantsViewController *)self callGroups];
      v6 = [callGroups count];

      v7 = v6 != 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
  v7 = [callGroups2 count];

LABEL_6:
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    return v7 != 0;
  }

  else
  {
    return v7;
  }
}

- (NSMutableArray)callGroups
{
  callGroups = self->_callGroups;
  if (!callGroups)
  {
    v4 = +[NSMutableArray array];
    v5 = self->_callGroups;
    self->_callGroups = v4;

    [(PHCallParticipantsViewController *)self _updateCallGroups];
    callGroups = self->_callGroups;
  }

  return callGroups;
}

- (BOOL)usesCompactMulticallUI
{
  features = [(PHCallParticipantsViewController *)self features];
  if ([features callManagerEnabled])
  {
    callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    v5 = [callDisplayStyleManager callDisplayStyle] != 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PHCallParticipantsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetNameOverrideString
{
  nameOverrideString = [(PHCallParticipantsViewController *)self nameOverrideString];

  if (nameOverrideString)
  {
    [(PHCallParticipantsViewController *)self setNameOverrideString:0];
    participantsView = [(PHCallParticipantsViewController *)self participantsView];
    [participantsView updateParticipantsAnimated:1];

    participantsView2 = [(PHCallParticipantsViewController *)self participantsView];
    [participantsView2 layoutIfNeeded];
  }

  [(PHCallParticipantsViewController *)self setAllowsFieldModeSendButton:0];
}

- (void)_updateCallGroups
{
  if (![(PHCallParticipantsViewController *)self callIsAboutToEndForStewie])
  {
    currentCallGroups = [(PHCallParticipantsViewController *)self currentCallGroups];
    v5 = [currentCallGroups mutableCopy];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      callGroups = [(PHCallParticipantsViewController *)self callGroups];
      *buf = 138412546;
      v133 = callGroups;
      v134 = 2112;
      v135 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_updateCallGroups: CACHED: %@ -> CURRENT: %@", buf, 0x16u);
    }

    v8 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
    v9 = +[TUCallCenter sharedInstance];
    v10 = [v9 callWithStatus:1];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = +[TUCallCenter sharedInstance];
      v12 = [v13 callWithStatus:2];
    }

    if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
    {
      prioritizedCall = [(PHCallParticipantsViewController *)self prioritizedCall];

      if (prioritizedCall)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        view2 = v5;
        v99 = [view2 countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (!v99)
        {
          goto LABEL_26;
        }

        v16 = *v123;
        v101 = v12;
        v98 = v5;
LABEL_13:
        v17 = 0;
        while (1)
        {
          v18 = v16;
          if (*v123 != v16)
          {
            objc_enumerationMutation(view2);
          }

          v19 = *(*(&v122 + 1) + 8 * v17);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v100 = v19;
          calls = [v19 calls];
          v21 = [calls countByEnumeratingWithState:&v118 objects:v130 count:16];
          if (v21)
          {
            break;
          }

LABEL_24:

          v17 = v17 + 1;
          v5 = v98;
          v12 = v101;
          v16 = v18;
          if (v17 == v99)
          {
            v8 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
            v99 = [view2 countByEnumeratingWithState:&v122 objects:v131 count:16];
            if (!v99)
            {
LABEL_26:

              goto LABEL_27;
            }

            goto LABEL_13;
          }
        }

        v22 = v21;
        v23 = *v119;
LABEL_18:
        v24 = 0;
        while (1)
        {
          if (*v119 != v23)
          {
            objc_enumerationMutation(calls);
          }

          v25 = *(*(&v118 + 1) + 8 * v24);
          prioritizedCall2 = [(PHCallParticipantsViewController *)self prioritizedCall];
          LODWORD(v25) = [v25 isEqualToCall:prioritizedCall2];

          if (v25)
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [calls countByEnumeratingWithState:&v118 objects:v130 count:16];
            if (!v22)
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          }
        }

        v37 = sub_100004F84();
        v12 = v101;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          prioritizedCall3 = [(PHCallParticipantsViewController *)self prioritizedCall];
          *buf = 138412290;
          v133 = prioritizedCall3;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Updated call groups using prioritizedCall: %@", buf, 0xCu);
        }

        v129 = v100;
        v39 = [NSArray arrayWithObjects:&v129 count:1];
        v40 = [v39 mutableCopy];
        [(PHCallParticipantsViewController *)self setCallGroups:v40];

        participantsView = [(PHCallParticipantsViewController *)self participantsView];
        [participantsView updateParticipantsAnimated:1];

        shouldShowSingleDurationLabel = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
        participantsView2 = [(PHCallParticipantsViewController *)self participantsView];
        [participantsView2 setShouldShowSingleDurationLabel:shouldShowSingleDurationLabel];

        v3 = view2;
        goto LABEL_106;
      }
    }

LABEL_27:
    v27 = v5;
    if ([v5 count])
    {
      v102 = v12;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
      v29 = [callGroups2 countByEnumeratingWithState:&v114 objects:v128 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v115;
        v32 = 1;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v115 != v31)
            {
              objc_enumerationMutation(callGroups2);
            }

            v34 = *(*(&v114 + 1) + 8 * i);
            calls2 = [v34 calls];
            v36 = [calls2 count];

            if (v36)
            {
              v32 &= [v34 disconnectedReasonRequiresCallBackUI] ^ 1;
            }
          }

          v30 = [callGroups2 countByEnumeratingWithState:&v114 objects:v128 count:16];
        }

        while (v30);
      }

      else
      {
        LOBYTE(v32) = 1;
      }

      v12 = v102;
      v8 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
    }

    else
    {
      LOBYTE(v32) = 1;
    }

    sharedInstance = [v8[391] sharedInstance];
    incomingCall = [sharedInstance incomingCall];
    if (incomingCall && v12 && [v27 count]>= 2)
    {
      handlesCallWaitingCalls = [(PHCallParticipantsViewController *)self handlesCallWaitingCalls];

      if ((handlesCallWaitingCalls & 1) == 0)
      {
        v3 = +[NSMutableArray array];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v47 = v27;
        v48 = [v47 countByEnumeratingWithState:&v110 objects:v127 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v111;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v111 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v110 + 1) + 8 * j);
              if ([v52 status] != 4)
              {
                [v3 addObject:v52];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v110 objects:v127 count:16];
          }

          while (v49);
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_78;
      }
    }

    else
    {
    }

    sharedInstance2 = [v8[391] sharedInstance];
    incomingCalls = [sharedInstance2 incomingCalls];
    if ([incomingCalls count] <= 1)
    {
      handlesCallWaitingCalls2 = [(PHCallParticipantsViewController *)self handlesCallWaitingCalls];

      if ((handlesCallWaitingCalls2 & 1) == 0)
      {
        v3 = v27;
        if ((v32 & 1) == 0)
        {
          goto LABEL_91;
        }

LABEL_78:
        callGroups3 = [(PHCallParticipantsViewController *)self callGroups];
        v63 = [callGroups3 count];

        if (!v63)
        {
          goto LABEL_91;
        }

        v64 = 0;
        while (1)
        {
          callGroups4 = [(PHCallParticipantsViewController *)self callGroups];
          v66 = [callGroups4 objectAtIndex:v64];

          if (([v3 containsObject:v66]& 1) == 0)
          {
            calls3 = [v66 calls];
            if ([calls3 count] == 1)
            {
              isConferenced = [v66 isConferenced];

              if ((isConferenced & 1) != 0 || [v3 count]> 1)
              {
                goto LABEL_90;
              }

              v69 = [v3 count];
              v70 = v69 >= v64 ? v64 : v69;
              [v3 insertObject:v66 atIndex:v70];
              if ([v66 disconnectedReasonRequiresCallBackUI])
              {
                goto LABEL_90;
              }

              v71 = dispatch_time(0, 3000000000);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000CACC4;
              block[3] = &unk_100357110;
              v104 = v66;
              selfCopy = self;
              dispatch_after(v71, &_dispatch_main_q, block);
              calls3 = v104;
            }
          }

LABEL_90:

          ++v64;
          callGroups5 = [(PHCallParticipantsViewController *)self callGroups];
          v73 = [callGroups5 count];

          if (v73 <= v64)
          {
            goto LABEL_91;
          }
        }
      }
    }

    else
    {
    }

    v56 = +[NSMutableArray array];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v3 = v27;
    v57 = [v3 countByEnumeratingWithState:&v106 objects:v126 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v107;
      while (2)
      {
        for (k = 0; k != v58; k = k + 1)
        {
          if (*v107 != v59)
          {
            objc_enumerationMutation(v3);
          }

          v61 = *(*(&v106 + 1) + 8 * k);
          if ([v61 status] == 4)
          {
            [v56 addObject:v61];
            goto LABEL_73;
          }
        }

        v58 = [v3 countByEnumeratingWithState:&v106 objects:v126 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

LABEL_73:

    if ([v56 count])
    {

      v3 = v56;
      goto LABEL_91;
    }

    if ((v32 & 1) == 0)
    {
LABEL_91:
      features = [(PHCallParticipantsViewController *)self features];
      if ([features callManagerEnabled])
      {
        callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
        callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

        if (callDisplayStyle != 3)
        {
          goto LABEL_96;
        }
      }

      else
      {
      }

      v77 = [v3 __imArrayByFilteringWithBlock:&stru_100358F98];
      v78 = [v77 mutableCopy];

      v3 = v78;
LABEL_96:
      if (![v3 count])
      {
        v79 = +[UIApplication sharedApplication];
        delegate = [v79 delegate];
        mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

        if (mostRecentlyDisconnectedAudioCall)
        {
          v82 = [TUCallGroup alloc];
          v83 = +[UIApplication sharedApplication];
          delegate2 = [v83 delegate];
          mostRecentlyDisconnectedAudioCall2 = [delegate2 mostRecentlyDisconnectedAudioCall];
          v86 = [v82 initWithCall:mostRecentlyDisconnectedAudioCall2];

          [v3 addObject:v86];
        }
      }

      callGroups6 = [(PHCallParticipantsViewController *)self callGroups];
      v88 = [callGroups6 count];
      if (v88 != [v3 count])
      {
        delegate3 = [(PHCallParticipantsViewController *)self delegate];
        v90 = objc_opt_respondsToSelector();

        if ((v90 & 1) == 0)
        {
LABEL_103:
          v91 = sub_100004F84();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v133 = v3;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Updated call groups: %@", buf, 0xCu);
          }

          [(PHCallParticipantsViewController *)self setCallGroups:v3];
          participantsView3 = [(PHCallParticipantsViewController *)self participantsView];
          [participantsView3 updateParticipantsAnimated:1];

          shouldShowSingleDurationLabel2 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
          participantsView4 = [(PHCallParticipantsViewController *)self participantsView];
          [participantsView4 setShouldShowSingleDurationLabel:shouldShowSingleDurationLabel2];

          view = [(PHCallParticipantsViewController *)self view];
          [view bounds];
          [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v96, v97];

          view2 = [(PHCallParticipantsViewController *)self view];
          [view2 setNeedsLayout];
LABEL_106:

          goto LABEL_107;
        }

        callGroups6 = [(PHCallParticipantsViewController *)self delegate];
        [callGroups6 callParticipantsViewController:self willShowMultipleLabel:{-[NSObject count](v3, "count") > 1}];
      }

      goto LABEL_103;
    }

    goto LABEL_78;
  }

  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call is about to be ended by presenting Stewie, skip all the updates from now on", buf, 2u);
  }

LABEL_107:
}

- (id)currentCallGroups
{
  v2 = +[TUCallCenter sharedInstance];
  currentCallGroups = [v2 currentCallGroups];

  return currentCallGroups;
}

- (TUCall)prioritizedCall
{
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)frontmostCall
{
  frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  calls = [frontmostCallGroup calls];
  firstObject = [calls firstObject];

  return firstObject;
}

- (id)frontmostCallGroup
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  v4 = [callGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(callGroups);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if ([v8 status] == 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [callGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    firstObject = v8;

    if (firstObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
  firstObject = [callGroups2 firstObject];

LABEL_12:

  return firstObject;
}

- (BOOL)shouldShowLargeAvatar
{
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHCallParticipantsViewController *)self delegate];
  v6 = [delegate2 callParticipantsViewControllerShouldShowLargeAvatar:self];

  return v6;
}

- (BOOL)shouldShowCallDetailsViewButton
{
  if (![(PHCallParticipantsViewController *)self isFrontmostCallFaceTimeAudio])
  {
    return 0;
  }

  v3 = +[TUCallCenter sharedInstance];
  frontmostCall = [v3 frontmostCall];
  if ([frontmostCall isConnected])
  {
    callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    v6 = [callDisplayStyleManager callDisplayStyle] != 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFrontmostCallFaceTimeAudio
{
  v2 = +[TUCallCenter sharedInstance];
  frontmostCall = [v2 frontmostCall];

  if ([frontmostCall isConversation])
  {
    provider = [frontmostCall provider];
    if ([provider isFaceTimeProvider])
    {
      v5 = [frontmostCall isVideo] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldShowSingleDurationLabel
{
  v3 = +[TUCallCenter sharedInstance];
  if ([v3 isAmbiguous])
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    if ([callGroups count] < 2)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 callWithStatus:1];
      model = [v6 model];
      v8 = [model supportsHolding] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache
{
  managerCopy = manager;
  cacheCopy = cache;
  v17.receiver = self;
  v17.super_class = PHCallParticipantsViewController;
  v9 = [(PHCallParticipantsViewController *)&v17 init];
  if (v9)
  {
    v10 = +[CNKFeatures sharedInstance];
    features = v9->_features;
    v9->_features = v10;

    objc_storeStrong(&v9->_callDisplayStyleManager, manager);
    v12 = objc_opt_new();
    labelDescriptorFactory = v9->_labelDescriptorFactory;
    v9->_labelDescriptorFactory = v12;

    objc_storeStrong(&v9->_contactsCache, cache);
    v14 = +[NSMutableDictionary dictionary];
    callUUIDToContactStore = v9->_callUUIDToContactStore;
    v9->_callUUIDToContactStore = v14;
  }

  return v9;
}

- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)manager contactsCache:(id)cache contacts:(id)contacts
{
  managerCopy = manager;
  cacheCopy = cache;
  contactsCopy = contacts;
  v20.receiver = self;
  v20.super_class = PHCallParticipantsViewController;
  v12 = [(PHCallParticipantsViewController *)&v20 init];
  if (v12)
  {
    v13 = +[CNKFeatures sharedInstance];
    features = v12->_features;
    v12->_features = v13;

    objc_storeStrong(&v12->_callDisplayStyleManager, manager);
    v15 = objc_opt_new();
    labelDescriptorFactory = v12->_labelDescriptorFactory;
    v12->_labelDescriptorFactory = v15;

    objc_storeStrong(&v12->_contactsCache, cache);
    objc_storeStrong(&v12->_contacts, contacts);
    v17 = +[NSMutableDictionary dictionary];
    callUUIDToContactStore = v12->_callUUIDToContactStore;
    v12->_callUUIDToContactStore = v17;
  }

  return v12;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v8 viewDidAppear:appear];
  view = [(PHCallParticipantsViewController *)self view];
  [view bounds];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v5, v6];

  view2 = [(PHCallParticipantsViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3 = +[PHIntervalTimer oneSecondTimer];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v11 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
  [v4 addObserver:self selector:"callStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v4 addObserver:self selector:"localSenderIdentityAccountUUIDChangedNotification:" name:TUCallLocalSenderIdentityAccountUUIDChangedNotification object:0];
  [v4 addObserver:self selector:"conferenceParticipantsChangedNotification:" name:TUCallCenterConferenceParticipantsChangedNotification object:0];
  [v4 addObserver:self selector:"isThirdPartyVideoChangedNotification:" name:TUCallIsThirdPartyVideoChangedNotification object:0];
  [v4 addObserver:self selector:"callModelChangedNotification:" name:TUCallModelChangedNotification object:0];
  [v4 addObserver:self selector:"displayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];
  v5 = +[PHInCallUtilities sharedInstance];
  if ([v5 isIPadIdiom])
  {
    callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

    if (usesLargeFormatUI)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [v4 addObserver:self selector:"keypadDataSourceChangedNotification:" name:@"PHInCallKeypadDataSourceChangedNotification" object:0];
LABEL_6:
  [v4 addObserver:self selector:"callContinuityChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
  [v4 addObserver:self selector:"handleAlertDisconnectingCallsNotification:" name:@"PHAlertDisconnectingCallsNotification" object:0];
  [v4 addObserver:self selector:"tuCallHasBeenRedirectedChangedNotification:" name:TUCallHasBeenRedirectedChangedNotification object:0];
  v8 = +[TUCallCenter sharedInstance];
  conversationManager = [v8 conversationManager];
  [conversationManager addDelegate:self queue:&_dispatch_main_q];

  v10 = +[PHIntervalTimer oneSecondTimer];
  [v10 addObserver:self selector:"secondTickNotification:"];

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v8 viewDidDisappear:disappear];
  v4 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCallCount = [v4 currentAudioAndVideoCallCount];

  if (!currentAudioAndVideoCallCount)
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    [callGroups removeAllObjects];
  }

  v7 = +[PHIntervalTimer oneSecondTimer];
  [v7 removeObserver:self];
}

- (void)loadView
{
  v3 = [PHCallParticipantsView alloc];
  callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v5 = [(PHCallParticipantsView *)v3 initWithCallDisplayStyleManager:callDisplayStyleManager];

  [(PHCallParticipantsView *)v5 setDelegate:self];
  [(PHCallParticipantsViewController *)self setParticipantsView:v5];
  [(PHCallParticipantsViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v2 viewDidLoad];
}

- (void)setPrioritizedCall:(id)call
{
  obj = call;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedCall);
  v5 = [WeakRetained isEqualToCall:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_prioritizedCall, obj);
    [(PHCallParticipantsViewController *)self updateCallGroups];
  }
}

- (void)gameControllerDidChangeContext
{
  view = [(PHCallParticipantsViewController *)self view];
  [view gameControllerDidChangeContext];
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (void)callStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callStatusChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)localSenderIdentityAccountUUIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "localSenderIdentityAccountUUIDChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)conferenceParticipantsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conferenceParticipantsChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)isThirdPartyVideoChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isThirdPartyVideoChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)callModelChangedNotification:(id)notification
{
  v4 = +[TUCallCenter sharedInstance];
  isAmbiguous = [v4 isAmbiguous];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NOT AMBIGUOUS";
    if (isAmbiguous)
    {
      v7 = @"AMBIGUOUS";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callModelChanged: %@", &v10, 0xCu);
  }

  shouldShowSingleDurationLabel = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
  participantsView = [(PHCallParticipantsViewController *)self participantsView];
  [participantsView setShouldShowSingleDurationLabel:shouldShowSingleDurationLabel];
}

- (void)displayContextChangedNotification:(id)notification
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "displayNameChanged", v6, 2u);
  }

  participantsView = [(PHCallParticipantsViewController *)self participantsView];
  [participantsView updateParticipants];
}

- (void)secondTickNotification:(id)notification
{
  if ([(PHCallParticipantsViewController *)self anyLabelDescriptorIsDynamic])
  {
    participantsView = [(PHCallParticipantsViewController *)self participantsView];
    [participantsView updateParticipants];
  }
}

- (void)callContinuityChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callContinuityChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)handleAlertDisconnectingCallsNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleAlertDisconnectingCallsNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self setCallIsAboutToEndForStewie:1];
}

- (void)tuCallHasBeenRedirectedChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "tuCallHasBeenRedirectedChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)keypadDataSourceChangedNotification:(id)notification
{
  notificationCopy = notification;
  numberFormatter = [(PHCallParticipantsViewController *)self numberFormatter];
  object = [notificationCopy object];
  v6 = [numberFormatter numberFromString:object];

  if (v6)
  {
    [NSNumberFormatter localizedStringFromNumber:v6 numberStyle:0];
  }

  else
  {
    [notificationCopy object];
  }
  v7 = ;
  nameOverrideString = [(PHCallParticipantsViewController *)self nameOverrideString];

  if (nameOverrideString)
  {
    if ([(PHCallParticipantsViewController *)self shouldInsertSpaceBeforeNextOverrideStringCharacter])
    {
      nameOverrideString2 = [(PHCallParticipantsViewController *)self nameOverrideString];
      v10 = [NSString stringWithFormat:@"%@ %@", nameOverrideString2, v7];
      [(PHCallParticipantsViewController *)self setNameOverrideString:v10];
    }

    else
    {
      nameOverrideString3 = [(PHCallParticipantsViewController *)self nameOverrideString];
      v12 = [nameOverrideString3 stringByAppendingString:v7];
      [(PHCallParticipantsViewController *)self setNameOverrideString:v12];
    }
  }

  else
  {
    [(PHCallParticipantsViewController *)self setNameOverrideString:v7];
  }

  if ([(PHCallParticipantsViewController *)self allowsFieldModeSendButton])
  {
    nameOverrideString4 = [(PHCallParticipantsViewController *)self nameOverrideString];
    v14 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v15 = [nameOverrideString4 stringByTrimmingCharactersInSet:v14];
    [v7 characterAtIndex:0];
    ShouldAutoDialGivenLastCharacter = PHStringShouldAutoDialGivenLastCharacter();

    if (ShouldAutoDialGivenLastCharacter)
    {
      participantsView = [(PHCallParticipantsViewController *)self participantsView];
      [(PHCallParticipantsViewController *)self fieldModeSendButtonTappedInParticipantsView:participantsView];
    }
  }

  [(PHCallParticipantsViewController *)self setShouldInsertSpaceBeforeNextOverrideStringCharacter:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"setShouldInsertSpaceBeforeNextOverrideStringCharacter" object:0];
  [(PHCallParticipantsViewController *)self performSelector:"setShouldInsertSpaceBeforeNextOverrideStringCharacter" withObject:0 afterDelay:4.0];
  participantsView2 = [(PHCallParticipantsViewController *)self participantsView];
  [participantsView2 updateParticipants];
}

- (id)contactForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  if ([(PHCallParticipantsViewController *)self shouldShowParticipantImageAtIndex:index inParticipantsView:view])
  {
    if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
    {
      frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
    }

    else
    {
      callGroups = [(PHCallParticipantsViewController *)self callGroups];
      if ([callGroups count] <= index)
      {
        frontmostCallGroup = 0;
      }

      else
      {
        callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
        frontmostCallGroup = [callGroups2 objectAtIndexedSubscript:index];
      }
    }

    calls = [frontmostCallGroup calls];
    v11 = [calls count];

    if (v11 == 1)
    {
      calls2 = [frontmostCallGroup calls];
      firstObject = [calls2 firstObject];

      callUUIDToContactStore = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
      uniqueProxyIdentifierUUID = [firstObject uniqueProxyIdentifierUUID];
      v16 = [callUUIDToContactStore objectForKeyedSubscript:uniqueProxyIdentifierUUID];

      if (v16)
      {
        callUUIDToContactStore2 = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
        uniqueProxyIdentifierUUID2 = [firstObject uniqueProxyIdentifierUUID];
        v19 = [callUUIDToContactStore2 objectForKeyedSubscript:uniqueProxyIdentifierUUID2];
      }

      else
      {
        callUUIDToContactStore2 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:firstObject];
        v19 = [[CNContactStore alloc] initWithConfiguration:callUUIDToContactStore2];
        uniqueProxyIdentifierUUID2 = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
        uniqueProxyIdentifierUUID3 = [firstObject uniqueProxyIdentifierUUID];
        [uniqueProxyIdentifierUUID2 setObject:v19 forKeyedSubscript:uniqueProxyIdentifierUUID3];
      }

      contactIdentifier = [firstObject contactIdentifier];
      v22 = +[PHAudioCallViewController contactKeysToFetch];
      contactsCache = [(PHCallParticipantsViewController *)self contactsCache];
      v7 = [v19 contactForIdentifier:contactIdentifier keysToFetch:v22 usingCache:contactsCache];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  if (PHDeviceSupportsDualSim())
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    v7 = [callGroups objectAtIndexedSubscript:index];

    calls = [v7 calls];
    firstObject = [calls firstObject];
    provider = [firstObject provider];
    prioritizedSenderIdentities = [provider prioritizedSenderIdentities];
    v12 = [prioritizedSenderIdentities count];

    if (v12 < 2)
    {
      localizedShortName = 0;
    }

    else
    {
      calls2 = [v7 calls];
      firstObject2 = [calls2 firstObject];
      localSenderIdentity = [firstObject2 localSenderIdentity];

      localizedShortName = [localSenderIdentity localizedShortName];
    }
  }

  else
  {
    localizedShortName = 0;
  }

  return localizedShortName;
}

- (BOOL)shouldShowInfoButtonForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v6 = [TUCallCenter sharedInstance:index];
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  v8 = [callGroups objectAtIndex:index];

  if ([v6 currentCallCount])
  {
    calls = [v8 calls];
    if ([calls count] < 2)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [v6 isAmbiguous] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  frontmostCall = [v6 frontmostCall];
  if ([frontmostCall isConversation])
  {
    frontmostCall2 = [v6 frontmostCall];
    remoteParticipantHandles = [frontmostCall2 remoteParticipantHandles];
    if ([remoteParticipantHandles count] < 2)
    {
      isTelephonyProvider = 0;
    }

    else
    {
      frontmostCall3 = [v6 frontmostCall];
      provider = [frontmostCall3 provider];
      isTelephonyProvider = [provider isTelephonyProvider];
    }
  }

  else
  {
    isTelephonyProvider = 0;
  }

  return (v10 | isTelephonyProvider) & 1;
}

- (id)nameForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI:index])
  {
    frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    frontmostCallGroup = [callGroups objectAtIndexedSubscript:index];
  }

  v8 = [(PHCallParticipantsViewController *)self nameForCallGroup:frontmostCallGroup];

  return v8;
}

- (id)nameForCallGroup:(id)group
{
  groupCopy = group;
  nameOverrideString = [(PHCallParticipantsViewController *)self nameOverrideString];
  if (nameOverrideString)
  {
    goto LABEL_29;
  }

  calls = [groupCopy calls];
  if ([calls count] == 1)
  {
    calls2 = [groupCopy calls];
    firstObject = [calls2 firstObject];
    isConversation = [firstObject isConversation];

    if (isConversation)
    {
      v10 = +[TUCallCenter sharedInstance];
      calls3 = [groupCopy calls];
      firstObject2 = [calls3 firstObject];
      v13 = [v10 activeConversationForCall:firstObject2];

      displayName = [v13 displayName];

      if (displayName)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  if ([groupCopy status] != 4)
  {
    v15 = +[TUCallCenter sharedInstance];
    if ([v15 isAmbiguous])
    {
      shouldShowSingleDurationLabel = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

      if ((shouldShowSingleDurationLabel & 1) == 0)
      {
        v17 = +[NSBundle mainBundle];
        displayName = [v17 localizedStringForKey:@"AMBIGUOUS_CALL_LABEL" value:&stru_100361FD0 table:@"InCallService"];

        if (displayName)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
    }
  }

  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  if ([callGroups count] != 1 || objc_msgSend(groupCopy, "status") != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  calls4 = [groupCopy calls];
  firstObject3 = [calls4 firstObject];
  provider = [firstObject3 provider];
  if (![provider isTelephonyProvider])
  {

    goto LABEL_19;
  }

  calls5 = [groupCopy calls];
  firstObject4 = [calls5 firstObject];
  callDirectoryName = [firstObject4 callDirectoryName];
  if (callDirectoryName)
  {
  }

  else
  {
    calls6 = [groupCopy calls];
    firstObject5 = [calls6 firstObject];
    isBranded = [firstObject5 isBranded];

    if ((isBranded & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  calls7 = [groupCopy calls];
  firstObject6 = [calls7 firstObject];

  if ([firstObject6 isScreening] && (objc_msgSend(firstObject6, "smartHoldingSession"), v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
  {
    displayName = [firstObject6 localizedLabel];
  }

  else
  {
    calls8 = [groupCopy calls];
    firstObject7 = [calls8 firstObject];
    callDurationString = [firstObject7 callDurationString];
    if (callDurationString)
    {
      calls9 = [groupCopy calls];
      firstObject8 = [calls9 firstObject];
      displayName = [firstObject8 callDurationString];
    }

    else
    {
      displayName = [NSString localizedStringWithFormat:@"%02d:%02d", 0, 0];
    }
  }

  if (!displayName)
  {
LABEL_20:
    callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
    v26 = [callGroups2 count];

    if (v26 == 2)
    {
      calls10 = [groupCopy calls];
      firstObject9 = [calls10 firstObject];

      if ([firstObject9 isBranded])
      {
        localizedLabel = [firstObject9 localizedLabel];
        goto LABEL_25;
      }

      callDirectoryName2 = [firstObject9 callDirectoryName];

      if (callDirectoryName2)
      {
        localizedLabel = [firstObject9 callDirectoryName];
LABEL_25:
        displayName = localizedLabel;

        if (displayName)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

LABEL_28:
    nameOverrideString = [groupCopy displayName];
LABEL_29:
    displayName = nameOverrideString;
  }

LABEL_30:

  return displayName;
}

- (id)callForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v6 = [TUCallCenter sharedInstance:index];
  if ([v6 isAmbiguous])
  {
    shouldShowSingleDurationLabel = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

    if ((shouldShowSingleDurationLabel & 1) == 0)
    {
      callGroups = [(PHCallParticipantsViewController *)self callGroups];
      firstObject = [callGroups firstObject];
      goto LABEL_6;
    }
  }

  else
  {
  }

  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  firstObject = [callGroups objectAtIndexedSubscript:index];
LABEL_6:
  v10 = firstObject;

  if (![(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_11;
  }

  callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
  if ([callGroups2 count] >= 2)
  {
    status = [v10 status];

    if (status != 2)
    {
      goto LABEL_11;
    }

    [(PHCallParticipantsViewController *)self frontmostCallGroup];
    v10 = callGroups2 = v10;
  }

LABEL_11:

  return v10;
}

- (id)labelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view allowsDuration:(BOOL)duration
{
  durationCopy = duration;
  v7 = [(PHCallParticipantsViewController *)self callForParticipantAtIndex:index inParticipantsView:view];
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    shouldRenderAlertTextColor = [delegate2 shouldRenderAlertTextColor];
  }

  else
  {
    shouldRenderAlertTextColor = 0;
  }

  labelDescriptorFactory = self->_labelDescriptorFactory;
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  v14 = -[CNKCallParticipantLabelDescriptorFactory labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:](labelDescriptorFactory, "labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:", v7, [callGroups count], shouldRenderAlertTextColor, durationCopy);

  return v14;
}

- (id)supplementalParticipantLabelFormatStringAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  viewCopy = view;
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  v8 = [callGroups count];

  if (v8 >= 2 && (-[PHCallParticipantsViewController callDisplayStyleManager](self, "callDisplayStyleManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 usesLargeFormatUI], v9, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v12 = [(PHCallParticipantsViewController *)self callForParticipantAtIndex:index inParticipantsView:viewCopy];
    supplementalInCallString = [v12 supplementalInCallString];
    if (supplementalInCallString && ([v12 status] | 2) == 3)
    {
      v14 = +[NSBundle conversationKit];
      v15 = [v14 localizedStringForKey:@"%@_FROM_OR_VIA_FORMAT_%@" value:&stru_100361FD0 table:@"CallStatus"];
      v11 = [NSString stringWithFormat:v15, @"%@", supplementalInCallString];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unsigned)activityStateForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI:index])
  {
    frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    frontmostCallGroup = [callGroups objectAtIndexedSubscript:index];
  }

  v8 = +[TUCallCenter sharedInstance];
  isAmbiguous = [v8 isAmbiguous];

  if (isAmbiguous)
  {
    goto LABEL_5;
  }

  if ([frontmostCallGroup status] == 2)
  {
    calls = [frontmostCallGroup calls];
    firstObject = [calls firstObject];
    statusIsProvisional = [firstObject statusIsProvisional];

    if (statusIsProvisional)
    {
      v10 = 2;
      goto LABEL_18;
    }
  }

  if ([frontmostCallGroup status] == 5)
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ([frontmostCallGroup status] == 6 && (objc_msgSend(frontmostCallGroup, "calls"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "disconnectedReasonRequiresCallBackUI"), v15, v14, (v16 & 1) != 0))
  {
LABEL_5:
    v10 = 3;
  }

  else if ([frontmostCallGroup status] == 2)
  {
    v10 = 1;
  }

  else if ([frontmostCallGroup status] == 6)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

LABEL_18:

  return v10;
}

- (BOOL)shouldShowParticipantImageAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v6 = [(PHCallParticipantsViewController *)self parentViewController:index];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    parentViewController = [(PHCallParticipantsViewController *)self parentViewController];
    features = [(PHCallParticipantsViewController *)self features];
    isHeroImageEnabled = [features isHeroImageEnabled];

    if ((isHeroImageEnabled & 1) != 0 || (-[PHCallParticipantsViewController callDisplayStyleManager](self, "callDisplayStyleManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 callDisplayStyle], v11, v12 == 3))
    {
      shouldShowCircularAvatar = [parentViewController shouldShowCircularAvatar];
    }

    else
    {
      shouldShowCircularAvatar = [parentViewController isShowingBackgroundImage] ^ 1;
    }
  }

  else
  {
    shouldShowCircularAvatar = 1;
  }

  parentViewController2 = [(PHCallParticipantsViewController *)self parentViewController];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    parentViewController3 = [(PHCallParticipantsViewController *)self parentViewController];
    isShowingBackgroundImage = [parentViewController3 isShowingBackgroundImage];

    if (isShowingBackgroundImage)
    {
LABEL_10:
      v18 = 0;
      return v18 & 1;
    }
  }

  else if (!shouldShowCircularAvatar)
  {
    goto LABEL_10;
  }

  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    if ([callGroups count])
    {
      callGroups2 = [(PHCallParticipantsViewController *)self callGroups];
      frontmostCallGroup = [callGroups2 objectAtIndexedSubscript:index];
    }

    else
    {
      frontmostCallGroup = 0;
    }
  }

  calls = [frontmostCallGroup calls];
  firstObject = [calls firstObject];

  handle = [firstObject handle];
  siriDisplayName = [handle siriDisplayName];
  if (siriDisplayName)
  {
    v26 = siriDisplayName;
    handle2 = [firstObject handle];
    shouldHideContact = [handle2 shouldHideContact];

    v18 = shouldHideContact ^ 1;
  }

  else
  {

    v18 = 1;
  }

  return v18 & 1;
}

- (BOOL)isCallRinging
{
  frontmostCallGroup = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  v3 = [frontmostCallGroup status] == 4;

  return v3;
}

- (BOOL)shouldShowParticipantLabel
{
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(PHCallParticipantsViewController *)self delegate];
  participantsViewShouldShowParticipantLabel = [delegate2 participantsViewShouldShowParticipantLabel];

  return participantsViewShouldShowParticipantLabel;
}

- (void)participantTappedAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v6 = [(PHCallParticipantsViewController *)self callGroups:index];
  if ([v6 count])
  {
    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    v8 = [callGroups objectAtIndexedSubscript:index];
    calls = [v8 calls];
    firstObject = [calls firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 callWithStatus:1];

  if ([firstObject isOnHold])
  {
    model = [v11 model];
    supportsHolding = [model supportsHolding];

    if (supportsHolding)
    {
      v14 = +[TUCallCenter sharedInstance];
      [v14 swapCalls];
    }
  }

  participantsView = [(PHCallParticipantsViewController *)self participantsView];
  [participantsView updateParticipantsAnimated:1];
}

- (void)participantViewInfoButtonTappedAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v8 = objc_alloc_init(PHConferenceParticipantsViewController);
  callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    navigationController = [[UINavigationController alloc] initWithRootViewController:v8];
    [navigationController setModalPresentationStyle:0];
    [(PHCallParticipantsViewController *)self presentViewController:navigationController animated:1 completion:0];
  }

  else
  {
    navigationController = [(PHCallParticipantsViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

- (void)participantViewCallDetailsGestureRecognizerTapped
{
  delegate = [(PHCallParticipantsViewController *)self delegate];
  [delegate callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:self];
}

- (id)compactLabelTextForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v5 = [(PHCallParticipantsViewController *)self callGroups:index];
  if ([v5 count] <= index)
  {
    v10 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:index];
    calls = [v6 calls];
    v8 = [calls count];

    if (v8 < 2)
    {
      v10 = 0;
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"CONFERENCE" value:&stru_100361FD0 table:@"InCallService"];
    }
  }

  return v10;
}

- (void)setBannerButtonsState:(unint64_t)state
{
  view = [(PHCallParticipantsViewController *)self view];
  [view setBannerButtonsState:state];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)selected
{
  selectedCopy = selected;
  view = [(PHCallParticipantsViewController *)self view];
  [view setBannerAudioRouteButtonSelected:selectedCopy];
}

- (id)colorForStatusLabelForParticipantAtIndex:(unint64_t)index inParticipantsView:(id)view
{
  v6 = [(PHCallParticipantsViewController *)self callDisplayStyleManager:index];
  v7 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [v6 callDisplayStyle]);

  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    frontmostCall = [(PHCallParticipantsViewController *)self frontmostCall];
    v13 = [delegate2 customColorForStatusLabelWithCall:frontmostCall];

    if (v13)
    {
      v14 = v13;

      v7 = v14;
    }
  }

  delegate3 = [(PHCallParticipantsViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate4 = [(PHCallParticipantsViewController *)self delegate];
    shouldRenderAlertTextColor = [delegate4 shouldRenderAlertTextColor];
  }

  else
  {
    shouldRenderAlertTextColor = 0;
  }

  if ([callGroups count] > index)
  {
    v19 = [callGroups objectAtIndex:index];
    if (([v19 isSOS] | shouldRenderAlertTextColor))
    {
      v20 = +[UIColor systemRedColor];

      v7 = v20;
    }

    if ((shouldRenderAlertTextColor & 1) == 0 && [v19 isBranded])
    {
      v21 = +[UIColor labelColor];

      v7 = v21;
    }
  }

  return v7;
}

- (id)colorForParticipantLabelView:(id)view
{
  v4 = +[UIColor labelColor];
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    frontmostCall = [(PHCallParticipantsViewController *)self frontmostCall];
    v9 = [delegate2 customColorForParticipantLabelWithCall:frontmostCall];

    if (v9)
    {
      v10 = v9;

      v4 = v10;
    }
  }

  return v4;
}

- (id)fontForParticipantLabelView:(id)view
{
  updatedParticipantMarqueeLabelFont = [view updatedParticipantMarqueeLabelFont];
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    shouldRenderAlertTextFont = [delegate2 shouldRenderAlertTextFont];

    v9 = shouldRenderAlertTextFont ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v10 isIPadIdiom];

  if ((isIPadIdiom & 1) == 0 && (v9 & 1) == 0)
  {
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];

    fontDescriptor = [v12 fontDescriptor];
    v14 = [fontDescriptor fontDescriptorWithDesign:UIFontDescriptorSystemDesignDefault];
    v15 = [UIFont fontWithDescriptor:v14 size:0.0];

    fontDescriptor2 = [v15 fontDescriptor];
    v17 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:2];
    v18 = [UIFont fontWithDescriptor:v17 size:96.0];

    updatedParticipantMarqueeLabelFont = v12;
    goto LABEL_21;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  v20 = [callGroups countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = v20;
  v22 = *v29;
  while (2)
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v29 != v22)
      {
        objc_enumerationMutation(callGroups);
      }

      v24 = *(*(&v28 + 1) + 8 * i);
      if (-[CNKFeatures isEnhancedEmergencyEnabled](self->_features, "isEnhancedEmergencyEnabled") && [v24 isEmergency])
      {
        v26 = UIFontWeightBold;
        v25 = 76.0;
        goto LABEL_20;
      }

      if ([v24 isSOS])
      {
        [updatedParticipantMarqueeLabelFont pointSize];
        v26 = UIFontWeightSemibold;
LABEL_20:
        v18 = [UIFont systemFontOfSize:v25 weight:v26];

        goto LABEL_21;
      }
    }

    v21 = [callGroups countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_17:

  updatedParticipantMarqueeLabelFont = updatedParticipantMarqueeLabelFont;
  v18 = updatedParticipantMarqueeLabelFont;
LABEL_21:

  return v18;
}

- (id)customFontForParticipantLabel
{
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    frontmostCall = [(PHCallParticipantsViewController *)self frontmostCall];
    v7 = [delegate2 customFontForParticipantLabelWithCall:frontmostCall];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fontForParticipantLabelViewStatusLabel:(id)label
{
  callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v5 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);

  delegate = [(PHCallParticipantsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) != 0 && (-[PHCallParticipantsViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldRenderAlertTextFont], v8, v9))
  {
    [v5 pointSize];
    v10 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

- (id)iconInParticipantsView:(id)view
{
  callGroups = [(PHCallParticipantsViewController *)self callGroups];
  firstObject = [callGroups firstObject];

  if (firstObject && ([firstObject provider], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSystemProvider"), v5, (v6 & 1) == 0))
  {
    provider = [firstObject provider];
    bundleIdentifier = [provider bundleIdentifier];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v7 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:5 scale:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)participantsView:(id)view didPerformActionType:(int64_t)type
{
  delegate = [(PHCallParticipantsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PHCallParticipantsViewController *)self delegate];
    [delegate2 callParticipantsViewController:self didPerformActionType:type];
  }
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([conversationCopy isOneToOneModeEnabled] && (objc_msgSend(conversationCopy, "isVideo") & 1) == 0)
  {
    [(PHCallParticipantsViewController *)self _updateCallGroups];
  }
}

- (void)setAllowsFieldModeSendButton:(BOOL)button
{
  buttonCopy = button;
  participantsView = [(PHCallParticipantsViewController *)self participantsView];
  [participantsView setAllowsFieldModeSendButton:buttonCopy];
}

- (void)fieldModeSendButtonTappedInParticipantsView:(id)view
{
  nameOverrideString = [(PHCallParticipantsViewController *)self nameOverrideString];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [nameOverrideString stringByTrimmingCharactersInSet:v5];

  if ([v6 length] && (PHLaunchFieldTestApplicationIfNecessaryForDestinationID() & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Field Mode: Dialing digits %@", &v12, 0xCu);
    }

    callGroups = [(PHCallParticipantsViewController *)self callGroups];
    lastObject = [callGroups lastObject];

    v10 = +[TUCallCenter sharedInstance];
    provider = [lastObject provider];
    [v10 sendFieldModeDigits:v6 forProvider:provider];
  }
}

- (BOOL)isDeviceCapableOfTelephonyCalls
{
  v2 = +[FTDeviceSupport sharedInstance];
  isTelephonyDevice = [v2 isTelephonyDevice];

  return isTelephonyDevice;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PHCallParticipantsViewController;
  coordinatorCopy = coordinator;
  [(PHCallParticipantsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CDA7C;
  v8[3] = &unk_100358FC0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_100359000];
}

- (void)updateParticipantViewWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  callDisplayStyleManager = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (!usesLargeFormatUI)
  {
    return;
  }

  if (width <= 0.0)
  {
    return;
  }

  if (height <= 0.0)
  {
    return;
  }

  callDisplayStyleManager2 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (!callDisplayStyle)
  {
    return;
  }

  delegate = [(PHCallParticipantsViewController *)self delegate];
  firstObject = [(NSArray *)self->_contacts firstObject];
  v12 = [delegate callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:firstObject];

  v13 = +[TUCallCenter sharedInstance];
  conferenceCall = [v13 conferenceCall];

  v15 = +[TUCallCenter sharedInstance];
  currentCalls = [v15 currentCalls];
  v17 = [currentCalls count];

  firstObject2 = [(NSArray *)self->_contacts firstObject];
  if (conferenceCall || v17 >= 2 || v12)
  {
    participantsView = [(PHCallParticipantsViewController *)self participantsView];
    v19 = participantsView;
  }

  else
  {
    firstObject3 = [(NSArray *)self->_contacts firstObject];
    imageData = [firstObject3 imageData];

    participantsView = [(PHCallParticipantsViewController *)self participantsView];
    v19 = participantsView;
    if (imageData)
    {
      v20 = 1;
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_10:
  [participantsView updateSubviewWithLayout:v20 forContact:firstObject2];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  v5 = [(PHCallParticipantsViewController *)self view:style];
  [v5 bounds];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v6, v7];

  view = [(PHCallParticipantsViewController *)self view];
  [view setNeedsLayout];
}

@end