@interface PHCallParticipantsViewController
- (BOOL)anyLabelDescriptorIsDynamic;
- (BOOL)isCallRinging;
- (BOOL)isDeviceCapableOfTelephonyCalls;
- (BOOL)isFrontmostCallFaceTimeAudio;
- (BOOL)shouldShowCallDetailsViewButton;
- (BOOL)shouldShowInfoButtonForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (BOOL)shouldShowLargeAvatar;
- (BOOL)shouldShowParticipantImageAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (BOOL)shouldShowParticipantLabel;
- (BOOL)shouldShowSingleDurationLabel;
- (BOOL)usesCompactMulticallUI;
- (NSMutableArray)callGroups;
- (NSNumberFormatter)numberFormatter;
- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4;
- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4 contacts:(id)a5;
- (PHCallParticipantsViewControllerDelegate)delegate;
- (TUCall)prioritizedCall;
- (id)callForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)colorForParticipantLabelView:(id)a3;
- (id)colorForStatusLabelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)compactLabelTextForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)contactForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)currentCallGroups;
- (id)customFontForParticipantLabel;
- (id)fontForParticipantLabelView:(id)a3;
- (id)fontForParticipantLabelViewStatusLabel:(id)a3;
- (id)frontmostCall;
- (id)frontmostCallGroup;
- (id)iconInParticipantsView:(id)a3;
- (id)labelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4 allowsDuration:(BOOL)a5;
- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)nameForCallGroup:(id)a3;
- (id)nameForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (id)supplementalParticipantLabelFormatStringAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (unint64_t)numberOfParticipantLabels;
- (unsigned)activityStateForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (void)_updateCallGroups;
- (void)callContinuityChangedNotification:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)callModelChangedNotification:(id)a3;
- (void)callStatusChangedNotification:(id)a3;
- (void)conferenceParticipantsChangedNotification:(id)a3;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)dealloc;
- (void)displayContextChangedNotification:(id)a3;
- (void)fieldModeSendButtonTappedInParticipantsView:(id)a3;
- (void)gameControllerDidChangeContext;
- (void)handleAlertDisconnectingCallsNotification:(id)a3;
- (void)isThirdPartyVideoChangedNotification:(id)a3;
- (void)keypadDataSourceChangedNotification:(id)a3;
- (void)loadView;
- (void)localSenderIdentityAccountUUIDChangedNotification:(id)a3;
- (void)participantTappedAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (void)participantViewCallDetailsGestureRecognizerTapped;
- (void)participantViewInfoButtonTappedAtIndex:(unint64_t)a3 inParticipantsView:(id)a4;
- (void)participantsView:(id)a3 didPerformActionType:(int64_t)a4;
- (void)resetNameOverrideString;
- (void)secondTickNotification:(id)a3;
- (void)setAllowsFieldModeSendButton:(BOOL)a3;
- (void)setBannerAudioRouteButtonSelected:(BOOL)a3;
- (void)setBannerButtonsState:(unint64_t)a3;
- (void)setPrioritizedCall:(id)a3;
- (void)tuCallHasBeenRedirectedChangedNotification:(id)a3;
- (void)updateParticipantViewWithSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PHCallParticipantsViewController

- (BOOL)anyLabelDescriptorIsDynamic
{
  v3 = [(PHCallParticipantsViewController *)self numberOfParticipantLabels];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [(PHCallParticipantsViewController *)self traitCollection];
      v8 = [v7 _backlightLuminance] != 1;

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
    v4 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

    if ((v4 & 1) == 0)
    {
      v5 = [(PHCallParticipantsViewController *)self callGroups];
      v6 = [v5 count];

      v7 = v6 != 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(PHCallParticipantsViewController *)self callGroups];
  v7 = [v8 count];

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
  v3 = [(PHCallParticipantsViewController *)self features];
  if ([v3 callManagerEnabled])
  {
    v4 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    v5 = [v4 callDisplayStyle] != 3;
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
  v3 = [(PHCallParticipantsViewController *)self nameOverrideString];

  if (v3)
  {
    [(PHCallParticipantsViewController *)self setNameOverrideString:0];
    v4 = [(PHCallParticipantsViewController *)self participantsView];
    [v4 updateParticipantsAnimated:1];

    v5 = [(PHCallParticipantsViewController *)self participantsView];
    [v5 layoutIfNeeded];
  }

  [(PHCallParticipantsViewController *)self setAllowsFieldModeSendButton:0];
}

- (void)_updateCallGroups
{
  if (![(PHCallParticipantsViewController *)self callIsAboutToEndForStewie])
  {
    v4 = [(PHCallParticipantsViewController *)self currentCallGroups];
    v5 = [v4 mutableCopy];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PHCallParticipantsViewController *)self callGroups];
      *buf = 138412546;
      v133 = v7;
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
      v14 = [(PHCallParticipantsViewController *)self prioritizedCall];

      if (v14)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v15 = v5;
        v99 = [v15 countByEnumeratingWithState:&v122 objects:v131 count:16];
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
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v122 + 1) + 8 * v17);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v100 = v19;
          v20 = [v19 calls];
          v21 = [v20 countByEnumeratingWithState:&v118 objects:v130 count:16];
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
            v99 = [v15 countByEnumeratingWithState:&v122 objects:v131 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v118 + 1) + 8 * v24);
          v26 = [(PHCallParticipantsViewController *)self prioritizedCall];
          LODWORD(v25) = [v25 isEqualToCall:v26];

          if (v25)
          {
            break;
          }

          if (v22 == ++v24)
          {
            v22 = [v20 countByEnumeratingWithState:&v118 objects:v130 count:16];
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
          v38 = [(PHCallParticipantsViewController *)self prioritizedCall];
          *buf = 138412290;
          v133 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Updated call groups using prioritizedCall: %@", buf, 0xCu);
        }

        v129 = v100;
        v39 = [NSArray arrayWithObjects:&v129 count:1];
        v40 = [v39 mutableCopy];
        [(PHCallParticipantsViewController *)self setCallGroups:v40];

        v41 = [(PHCallParticipantsViewController *)self participantsView];
        [v41 updateParticipantsAnimated:1];

        v42 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
        v43 = [(PHCallParticipantsViewController *)self participantsView];
        [v43 setShouldShowSingleDurationLabel:v42];

        v3 = v15;
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
      v28 = [(PHCallParticipantsViewController *)self callGroups];
      v29 = [v28 countByEnumeratingWithState:&v114 objects:v128 count:16];
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
              objc_enumerationMutation(v28);
            }

            v34 = *(*(&v114 + 1) + 8 * i);
            v35 = [v34 calls];
            v36 = [v35 count];

            if (v36)
            {
              v32 &= [v34 disconnectedReasonRequiresCallBackUI] ^ 1;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v114 objects:v128 count:16];
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

    v44 = [v8[391] sharedInstance];
    v45 = [v44 incomingCall];
    if (v45 && v12 && [v27 count]>= 2)
    {
      v46 = [(PHCallParticipantsViewController *)self handlesCallWaitingCalls];

      if ((v46 & 1) == 0)
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

    v53 = [v8[391] sharedInstance];
    v54 = [v53 incomingCalls];
    if ([v54 count] <= 1)
    {
      v55 = [(PHCallParticipantsViewController *)self handlesCallWaitingCalls];

      if ((v55 & 1) == 0)
      {
        v3 = v27;
        if ((v32 & 1) == 0)
        {
          goto LABEL_91;
        }

LABEL_78:
        v62 = [(PHCallParticipantsViewController *)self callGroups];
        v63 = [v62 count];

        if (!v63)
        {
          goto LABEL_91;
        }

        v64 = 0;
        while (1)
        {
          v65 = [(PHCallParticipantsViewController *)self callGroups];
          v66 = [v65 objectAtIndex:v64];

          if (([v3 containsObject:v66]& 1) == 0)
          {
            v67 = [v66 calls];
            if ([v67 count] == 1)
            {
              v68 = [v66 isConferenced];

              if ((v68 & 1) != 0 || [v3 count]> 1)
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
              v105 = self;
              dispatch_after(v71, &_dispatch_main_q, block);
              v67 = v104;
            }
          }

LABEL_90:

          ++v64;
          v72 = [(PHCallParticipantsViewController *)self callGroups];
          v73 = [v72 count];

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
      v74 = [(PHCallParticipantsViewController *)self features];
      if ([v74 callManagerEnabled])
      {
        v75 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
        v76 = [v75 callDisplayStyle];

        if (v76 != 3)
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
        v80 = [v79 delegate];
        v81 = [v80 mostRecentlyDisconnectedAudioCall];

        if (v81)
        {
          v82 = [TUCallGroup alloc];
          v83 = +[UIApplication sharedApplication];
          v84 = [v83 delegate];
          v85 = [v84 mostRecentlyDisconnectedAudioCall];
          v86 = [v82 initWithCall:v85];

          [v3 addObject:v86];
        }
      }

      v87 = [(PHCallParticipantsViewController *)self callGroups];
      v88 = [v87 count];
      if (v88 != [v3 count])
      {
        v89 = [(PHCallParticipantsViewController *)self delegate];
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
          v92 = [(PHCallParticipantsViewController *)self participantsView];
          [v92 updateParticipantsAnimated:1];

          v93 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
          v94 = [(PHCallParticipantsViewController *)self participantsView];
          [v94 setShouldShowSingleDurationLabel:v93];

          v95 = [(PHCallParticipantsViewController *)self view];
          [v95 bounds];
          [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v96, v97];

          v15 = [(PHCallParticipantsViewController *)self view];
          [v15 setNeedsLayout];
LABEL_106:

          goto LABEL_107;
        }

        v87 = [(PHCallParticipantsViewController *)self delegate];
        [v87 callParticipantsViewController:self willShowMultipleLabel:{-[NSObject count](v3, "count") > 1}];
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
  v3 = [v2 currentCallGroups];

  return v3;
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
  v2 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  v3 = [v2 calls];
  v4 = [v3 firstObject];

  return v4;
}

- (id)frontmostCallGroup
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(PHCallParticipantsViewController *)self callGroups];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if ([v8 status] == 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = [(PHCallParticipantsViewController *)self callGroups];
  v9 = [v10 firstObject];

LABEL_12:

  return v9;
}

- (BOOL)shouldShowLargeAvatar
{
  v3 = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHCallParticipantsViewController *)self delegate];
  v6 = [v5 callParticipantsViewControllerShouldShowLargeAvatar:self];

  return v6;
}

- (BOOL)shouldShowCallDetailsViewButton
{
  if (![(PHCallParticipantsViewController *)self isFrontmostCallFaceTimeAudio])
  {
    return 0;
  }

  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 frontmostCall];
  if ([v4 isConnected])
  {
    v5 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    v6 = [v5 callDisplayStyle] != 3;
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
  v3 = [v2 frontmostCall];

  if ([v3 isConversation])
  {
    v4 = [v3 provider];
    if ([v4 isFaceTimeProvider])
    {
      v5 = [v3 isVideo] ^ 1;
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
    v4 = [(PHCallParticipantsViewController *)self callGroups];
    if ([v4 count] < 2)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 callWithStatus:1];
      v7 = [v6 model];
      v8 = [v7 supportsHolding] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PHCallParticipantsViewController;
  v9 = [(PHCallParticipantsViewController *)&v17 init];
  if (v9)
  {
    v10 = +[CNKFeatures sharedInstance];
    features = v9->_features;
    v9->_features = v10;

    objc_storeStrong(&v9->_callDisplayStyleManager, a3);
    v12 = objc_opt_new();
    labelDescriptorFactory = v9->_labelDescriptorFactory;
    v9->_labelDescriptorFactory = v12;

    objc_storeStrong(&v9->_contactsCache, a4);
    v14 = +[NSMutableDictionary dictionary];
    callUUIDToContactStore = v9->_callUUIDToContactStore;
    v9->_callUUIDToContactStore = v14;
  }

  return v9;
}

- (PHCallParticipantsViewController)initWithCallDisplayStyleManager:(id)a3 contactsCache:(id)a4 contacts:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PHCallParticipantsViewController;
  v12 = [(PHCallParticipantsViewController *)&v20 init];
  if (v12)
  {
    v13 = +[CNKFeatures sharedInstance];
    features = v12->_features;
    v12->_features = v13;

    objc_storeStrong(&v12->_callDisplayStyleManager, a3);
    v15 = objc_opt_new();
    labelDescriptorFactory = v12->_labelDescriptorFactory;
    v12->_labelDescriptorFactory = v15;

    objc_storeStrong(&v12->_contactsCache, a4);
    objc_storeStrong(&v12->_contacts, a5);
    v17 = +[NSMutableDictionary dictionary];
    callUUIDToContactStore = v12->_callUUIDToContactStore;
    v12->_callUUIDToContactStore = v17;
  }

  return v12;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v8 viewDidAppear:a3];
  v4 = [(PHCallParticipantsViewController *)self view];
  [v4 bounds];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v5, v6];

  v7 = [(PHCallParticipantsViewController *)self view];
  [v7 setNeedsLayout];
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

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v11 viewWillAppear:a3];
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
    v6 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
    v7 = [v6 usesLargeFormatUI];

    if (v7)
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
  v9 = [v8 conversationManager];
  [v9 addDelegate:self queue:&_dispatch_main_q];

  v10 = +[PHIntervalTimer oneSecondTimer];
  [v10 addObserver:self selector:"secondTickNotification:"];

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsViewController;
  [(PHCallParticipantsViewController *)&v8 viewDidDisappear:a3];
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 currentAudioAndVideoCallCount];

  if (!v5)
  {
    v6 = [(PHCallParticipantsViewController *)self callGroups];
    [v6 removeAllObjects];
  }

  v7 = +[PHIntervalTimer oneSecondTimer];
  [v7 removeObserver:self];
}

- (void)loadView
{
  v3 = [PHCallParticipantsView alloc];
  v4 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v5 = [(PHCallParticipantsView *)v3 initWithCallDisplayStyleManager:v4];

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

- (void)setPrioritizedCall:(id)a3
{
  obj = a3;
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
  v2 = [(PHCallParticipantsViewController *)self view];
  [v2 gameControllerDidChangeContext];
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

- (void)callStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callStatusChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)localSenderIdentityAccountUUIDChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "localSenderIdentityAccountUUIDChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)conferenceParticipantsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conferenceParticipantsChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)isThirdPartyVideoChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isThirdPartyVideoChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)callModelChangedNotification:(id)a3
{
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 isAmbiguous];

  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NOT AMBIGUOUS";
    if (v5)
    {
      v7 = @"AMBIGUOUS";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callModelChanged: %@", &v10, 0xCu);
  }

  v8 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];
  v9 = [(PHCallParticipantsViewController *)self participantsView];
  [v9 setShouldShowSingleDurationLabel:v8];
}

- (void)displayContextChangedNotification:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "displayNameChanged", v6, 2u);
  }

  v5 = [(PHCallParticipantsViewController *)self participantsView];
  [v5 updateParticipants];
}

- (void)secondTickNotification:(id)a3
{
  if ([(PHCallParticipantsViewController *)self anyLabelDescriptorIsDynamic])
  {
    v4 = [(PHCallParticipantsViewController *)self participantsView];
    [v4 updateParticipants];
  }
}

- (void)callContinuityChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "callContinuityChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)handleAlertDisconnectingCallsNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleAlertDisconnectingCallsNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self setCallIsAboutToEndForStewie:1];
}

- (void)tuCallHasBeenRedirectedChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "tuCallHasBeenRedirectedChangedNotification: %@", &v6, 0xCu);
  }

  [(PHCallParticipantsViewController *)self _updateCallGroups];
}

- (void)keypadDataSourceChangedNotification:(id)a3
{
  v19 = a3;
  v4 = [(PHCallParticipantsViewController *)self numberFormatter];
  v5 = [v19 object];
  v6 = [v4 numberFromString:v5];

  if (v6)
  {
    [NSNumberFormatter localizedStringFromNumber:v6 numberStyle:0];
  }

  else
  {
    [v19 object];
  }
  v7 = ;
  v8 = [(PHCallParticipantsViewController *)self nameOverrideString];

  if (v8)
  {
    if ([(PHCallParticipantsViewController *)self shouldInsertSpaceBeforeNextOverrideStringCharacter])
    {
      v9 = [(PHCallParticipantsViewController *)self nameOverrideString];
      v10 = [NSString stringWithFormat:@"%@ %@", v9, v7];
      [(PHCallParticipantsViewController *)self setNameOverrideString:v10];
    }

    else
    {
      v11 = [(PHCallParticipantsViewController *)self nameOverrideString];
      v12 = [v11 stringByAppendingString:v7];
      [(PHCallParticipantsViewController *)self setNameOverrideString:v12];
    }
  }

  else
  {
    [(PHCallParticipantsViewController *)self setNameOverrideString:v7];
  }

  if ([(PHCallParticipantsViewController *)self allowsFieldModeSendButton])
  {
    v13 = [(PHCallParticipantsViewController *)self nameOverrideString];
    v14 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v15 = [v13 stringByTrimmingCharactersInSet:v14];
    [v7 characterAtIndex:0];
    ShouldAutoDialGivenLastCharacter = PHStringShouldAutoDialGivenLastCharacter();

    if (ShouldAutoDialGivenLastCharacter)
    {
      v17 = [(PHCallParticipantsViewController *)self participantsView];
      [(PHCallParticipantsViewController *)self fieldModeSendButtonTappedInParticipantsView:v17];
    }
  }

  [(PHCallParticipantsViewController *)self setShouldInsertSpaceBeforeNextOverrideStringCharacter:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"setShouldInsertSpaceBeforeNextOverrideStringCharacter" object:0];
  [(PHCallParticipantsViewController *)self performSelector:"setShouldInsertSpaceBeforeNextOverrideStringCharacter" withObject:0 afterDelay:4.0];
  v18 = [(PHCallParticipantsViewController *)self participantsView];
  [v18 updateParticipants];
}

- (id)contactForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  if ([(PHCallParticipantsViewController *)self shouldShowParticipantImageAtIndex:a3 inParticipantsView:a4])
  {
    if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
    {
      v6 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
    }

    else
    {
      v8 = [(PHCallParticipantsViewController *)self callGroups];
      if ([v8 count] <= a3)
      {
        v6 = 0;
      }

      else
      {
        v9 = [(PHCallParticipantsViewController *)self callGroups];
        v6 = [v9 objectAtIndexedSubscript:a3];
      }
    }

    v10 = [v6 calls];
    v11 = [v10 count];

    if (v11 == 1)
    {
      v12 = [v6 calls];
      v13 = [v12 firstObject];

      v14 = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
      v15 = [v13 uniqueProxyIdentifierUUID];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (v16)
      {
        v17 = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
        v18 = [v13 uniqueProxyIdentifierUUID];
        v19 = [v17 objectForKeyedSubscript:v18];
      }

      else
      {
        v17 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v13];
        v19 = [[CNContactStore alloc] initWithConfiguration:v17];
        v18 = [(PHCallParticipantsViewController *)self callUUIDToContactStore];
        v20 = [v13 uniqueProxyIdentifierUUID];
        [v18 setObject:v19 forKeyedSubscript:v20];
      }

      v21 = [v13 contactIdentifier];
      v22 = +[PHAudioCallViewController contactKeysToFetch];
      v23 = [(PHCallParticipantsViewController *)self contactsCache];
      v7 = [v19 contactForIdentifier:v21 keysToFetch:v22 usingCache:v23];
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

- (id)localizedSenderIdentityForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  if (PHDeviceSupportsDualSim())
  {
    v6 = [(PHCallParticipantsViewController *)self callGroups];
    v7 = [v6 objectAtIndexedSubscript:a3];

    v8 = [v7 calls];
    v9 = [v8 firstObject];
    v10 = [v9 provider];
    v11 = [v10 prioritizedSenderIdentities];
    v12 = [v11 count];

    if (v12 < 2)
    {
      v16 = 0;
    }

    else
    {
      v13 = [v7 calls];
      v14 = [v13 firstObject];
      v15 = [v14 localSenderIdentity];

      v16 = [v15 localizedShortName];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)shouldShowInfoButtonForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = [TUCallCenter sharedInstance:a3];
  v7 = [(PHCallParticipantsViewController *)self callGroups];
  v8 = [v7 objectAtIndex:a3];

  if ([v6 currentCallCount])
  {
    v9 = [v8 calls];
    if ([v9 count] < 2)
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

  v11 = [v6 frontmostCall];
  if ([v11 isConversation])
  {
    v12 = [v6 frontmostCall];
    v13 = [v12 remoteParticipantHandles];
    if ([v13 count] < 2)
    {
      v16 = 0;
    }

    else
    {
      v14 = [v6 frontmostCall];
      v15 = [v14 provider];
      v16 = [v15 isTelephonyProvider];
    }
  }

  else
  {
    v16 = 0;
  }

  return (v10 | v16) & 1;
}

- (id)nameForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI:a3])
  {
    v6 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    v7 = [(PHCallParticipantsViewController *)self callGroups];
    v6 = [v7 objectAtIndexedSubscript:a3];
  }

  v8 = [(PHCallParticipantsViewController *)self nameForCallGroup:v6];

  return v8;
}

- (id)nameForCallGroup:(id)a3
{
  v4 = a3;
  v5 = [(PHCallParticipantsViewController *)self nameOverrideString];
  if (v5)
  {
    goto LABEL_29;
  }

  v6 = [v4 calls];
  if ([v6 count] == 1)
  {
    v7 = [v4 calls];
    v8 = [v7 firstObject];
    v9 = [v8 isConversation];

    if (v9)
    {
      v10 = +[TUCallCenter sharedInstance];
      v11 = [v4 calls];
      v12 = [v11 firstObject];
      v13 = [v10 activeConversationForCall:v12];

      v14 = [v13 displayName];

      if (v14)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  if ([v4 status] != 4)
  {
    v15 = +[TUCallCenter sharedInstance];
    if ([v15 isAmbiguous])
    {
      v16 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

      if ((v16 & 1) == 0)
      {
        v17 = +[NSBundle mainBundle];
        v14 = [v17 localizedStringForKey:@"AMBIGUOUS_CALL_LABEL" value:&stru_100361FD0 table:@"InCallService"];

        if (v14)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
    }
  }

  v18 = [(PHCallParticipantsViewController *)self callGroups];
  if ([v18 count] != 1 || objc_msgSend(v4, "status") != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [v4 calls];
  v20 = [v19 firstObject];
  v21 = [v20 provider];
  if (![v21 isTelephonyProvider])
  {

    goto LABEL_19;
  }

  v22 = [v4 calls];
  v23 = [v22 firstObject];
  v24 = [v23 callDirectoryName];
  if (v24)
  {
  }

  else
  {
    v32 = [v4 calls];
    v33 = [v32 firstObject];
    v42 = [v33 isBranded];

    if ((v42 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v34 = [v4 calls];
  v35 = [v34 firstObject];

  if ([v35 isScreening] && (objc_msgSend(v35, "smartHoldingSession"), v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
  {
    v14 = [v35 localizedLabel];
  }

  else
  {
    v37 = [v4 calls];
    v38 = [v37 firstObject];
    v39 = [v38 callDurationString];
    if (v39)
    {
      v40 = [v4 calls];
      v41 = [v40 firstObject];
      v14 = [v41 callDurationString];
    }

    else
    {
      v14 = [NSString localizedStringWithFormat:@"%02d:%02d", 0, 0];
    }
  }

  if (!v14)
  {
LABEL_20:
    v25 = [(PHCallParticipantsViewController *)self callGroups];
    v26 = [v25 count];

    if (v26 == 2)
    {
      v27 = [v4 calls];
      v28 = [v27 firstObject];

      if ([v28 isBranded])
      {
        v29 = [v28 localizedLabel];
        goto LABEL_25;
      }

      v30 = [v28 callDirectoryName];

      if (v30)
      {
        v29 = [v28 callDirectoryName];
LABEL_25:
        v14 = v29;

        if (v14)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

LABEL_28:
    v5 = [v4 displayName];
LABEL_29:
    v14 = v5;
  }

LABEL_30:

  return v14;
}

- (id)callForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = [TUCallCenter sharedInstance:a3];
  if ([v6 isAmbiguous])
  {
    v7 = [(PHCallParticipantsViewController *)self shouldShowSingleDurationLabel];

    if ((v7 & 1) == 0)
    {
      v8 = [(PHCallParticipantsViewController *)self callGroups];
      v9 = [v8 firstObject];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(PHCallParticipantsViewController *)self callGroups];
  v9 = [v8 objectAtIndexedSubscript:a3];
LABEL_6:
  v10 = v9;

  if (![(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    goto LABEL_11;
  }

  v11 = [(PHCallParticipantsViewController *)self callGroups];
  if ([v11 count] >= 2)
  {
    v12 = [v10 status];

    if (v12 != 2)
    {
      goto LABEL_11;
    }

    [(PHCallParticipantsViewController *)self frontmostCallGroup];
    v10 = v11 = v10;
  }

LABEL_11:

  return v10;
}

- (id)labelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4 allowsDuration:(BOOL)a5
{
  v5 = a5;
  v7 = [(PHCallParticipantsViewController *)self callForParticipantAtIndex:a3 inParticipantsView:a4];
  v8 = [(PHCallParticipantsViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PHCallParticipantsViewController *)self delegate];
    v11 = [v10 shouldRenderAlertTextColor];
  }

  else
  {
    v11 = 0;
  }

  labelDescriptorFactory = self->_labelDescriptorFactory;
  v13 = [(PHCallParticipantsViewController *)self callGroups];
  v14 = -[CNKCallParticipantLabelDescriptorFactory labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:](labelDescriptorFactory, "labelDescriptorWithStringsForCall:callCount:alertAvailable:allowsDuration:", v7, [v13 count], v11, v5);

  return v14;
}

- (id)supplementalParticipantLabelFormatStringAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = a4;
  v7 = [(PHCallParticipantsViewController *)self callGroups];
  v8 = [v7 count];

  if (v8 >= 2 && (-[PHCallParticipantsViewController callDisplayStyleManager](self, "callDisplayStyleManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 usesLargeFormatUI], v9, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v12 = [(PHCallParticipantsViewController *)self callForParticipantAtIndex:a3 inParticipantsView:v6];
    v13 = [v12 supplementalInCallString];
    if (v13 && ([v12 status] | 2) == 3)
    {
      v14 = +[NSBundle conversationKit];
      v15 = [v14 localizedStringForKey:@"%@_FROM_OR_VIA_FORMAT_%@" value:&stru_100361FD0 table:@"CallStatus"];
      v11 = [NSString stringWithFormat:v15, @"%@", v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unsigned)activityStateForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI:a3])
  {
    v6 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    v7 = [(PHCallParticipantsViewController *)self callGroups];
    v6 = [v7 objectAtIndexedSubscript:a3];
  }

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 isAmbiguous];

  if (v9)
  {
    goto LABEL_5;
  }

  if ([v6 status] == 2)
  {
    v11 = [v6 calls];
    v12 = [v11 firstObject];
    v13 = [v12 statusIsProvisional];

    if (v13)
    {
      v10 = 2;
      goto LABEL_18;
    }
  }

  if ([v6 status] == 5)
  {
    v10 = 0;
    goto LABEL_18;
  }

  if ([v6 status] == 6 && (objc_msgSend(v6, "calls"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "disconnectedReasonRequiresCallBackUI"), v15, v14, (v16 & 1) != 0))
  {
LABEL_5:
    v10 = 3;
  }

  else if ([v6 status] == 2)
  {
    v10 = 1;
  }

  else if ([v6 status] == 6)
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

- (BOOL)shouldShowParticipantImageAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = [(PHCallParticipantsViewController *)self parentViewController:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(PHCallParticipantsViewController *)self parentViewController];
    v9 = [(PHCallParticipantsViewController *)self features];
    v10 = [v9 isHeroImageEnabled];

    if ((v10 & 1) != 0 || (-[PHCallParticipantsViewController callDisplayStyleManager](self, "callDisplayStyleManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 callDisplayStyle], v11, v12 == 3))
    {
      v13 = [v8 shouldShowCircularAvatar];
    }

    else
    {
      v13 = [v8 isShowingBackgroundImage] ^ 1;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [(PHCallParticipantsViewController *)self parentViewController];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [(PHCallParticipantsViewController *)self parentViewController];
    v17 = [v16 isShowingBackgroundImage];

    if (v17)
    {
LABEL_10:
      v18 = 0;
      return v18 & 1;
    }
  }

  else if (!v13)
  {
    goto LABEL_10;
  }

  if ([(PHCallParticipantsViewController *)self usesCompactMulticallUI])
  {
    v19 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  }

  else
  {
    v20 = [(PHCallParticipantsViewController *)self callGroups];
    if ([v20 count])
    {
      v21 = [(PHCallParticipantsViewController *)self callGroups];
      v19 = [v21 objectAtIndexedSubscript:a3];
    }

    else
    {
      v19 = 0;
    }
  }

  v22 = [v19 calls];
  v23 = [v22 firstObject];

  v24 = [v23 handle];
  v25 = [v24 siriDisplayName];
  if (v25)
  {
    v26 = v25;
    v27 = [v23 handle];
    v28 = [v27 shouldHideContact];

    v18 = v28 ^ 1;
  }

  else
  {

    v18 = 1;
  }

  return v18 & 1;
}

- (BOOL)isCallRinging
{
  v2 = [(PHCallParticipantsViewController *)self frontmostCallGroup];
  v3 = [v2 status] == 4;

  return v3;
}

- (BOOL)shouldShowParticipantLabel
{
  v3 = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(PHCallParticipantsViewController *)self delegate];
  v6 = [v5 participantsViewShouldShowParticipantLabel];

  return v6;
}

- (void)participantTappedAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = [(PHCallParticipantsViewController *)self callGroups:a3];
  if ([v6 count])
  {
    v7 = [(PHCallParticipantsViewController *)self callGroups];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 calls];
    v16 = [v9 firstObject];
  }

  else
  {
    v16 = 0;
  }

  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 callWithStatus:1];

  if ([v16 isOnHold])
  {
    v12 = [v11 model];
    v13 = [v12 supportsHolding];

    if (v13)
    {
      v14 = +[TUCallCenter sharedInstance];
      [v14 swapCalls];
    }
  }

  v15 = [(PHCallParticipantsViewController *)self participantsView];
  [v15 updateParticipantsAnimated:1];
}

- (void)participantViewInfoButtonTappedAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v8 = objc_alloc_init(PHConferenceParticipantsViewController);
  v5 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v6 = [v5 usesLargeFormatUI];

  if (v6)
  {
    v7 = [[UINavigationController alloc] initWithRootViewController:v8];
    [v7 setModalPresentationStyle:0];
    [(PHCallParticipantsViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v7 = [(PHCallParticipantsViewController *)self navigationController];
    [v7 pushViewController:v8 animated:1];
  }
}

- (void)participantViewCallDetailsGestureRecognizerTapped
{
  v3 = [(PHCallParticipantsViewController *)self delegate];
  [v3 callParticipantsViewControllerDidTapCallDetailsGestureRecognizer:self];
}

- (id)compactLabelTextForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v5 = [(PHCallParticipantsViewController *)self callGroups:a3];
  if ([v5 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:a3];
    v7 = [v6 calls];
    v8 = [v7 count];

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

- (void)setBannerButtonsState:(unint64_t)a3
{
  v4 = [(PHCallParticipantsViewController *)self view];
  [v4 setBannerButtonsState:a3];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHCallParticipantsViewController *)self view];
  [v4 setBannerAudioRouteButtonSelected:v3];
}

- (id)colorForStatusLabelForParticipantAtIndex:(unint64_t)a3 inParticipantsView:(id)a4
{
  v6 = [(PHCallParticipantsViewController *)self callDisplayStyleManager:a3];
  v7 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [v6 callDisplayStyle]);

  v8 = [(PHCallParticipantsViewController *)self callGroups];
  v9 = [(PHCallParticipantsViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PHCallParticipantsViewController *)self delegate];
    v12 = [(PHCallParticipantsViewController *)self frontmostCall];
    v13 = [v11 customColorForStatusLabelWithCall:v12];

    if (v13)
    {
      v14 = v13;

      v7 = v14;
    }
  }

  v15 = [(PHCallParticipantsViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(PHCallParticipantsViewController *)self delegate];
    v18 = [v17 shouldRenderAlertTextColor];
  }

  else
  {
    v18 = 0;
  }

  if ([v8 count] > a3)
  {
    v19 = [v8 objectAtIndex:a3];
    if (([v19 isSOS] | v18))
    {
      v20 = +[UIColor systemRedColor];

      v7 = v20;
    }

    if ((v18 & 1) == 0 && [v19 isBranded])
    {
      v21 = +[UIColor labelColor];

      v7 = v21;
    }
  }

  return v7;
}

- (id)colorForParticipantLabelView:(id)a3
{
  v4 = +[UIColor labelColor];
  v5 = [(PHCallParticipantsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PHCallParticipantsViewController *)self delegate];
    v8 = [(PHCallParticipantsViewController *)self frontmostCall];
    v9 = [v7 customColorForParticipantLabelWithCall:v8];

    if (v9)
    {
      v10 = v9;

      v4 = v10;
    }
  }

  return v4;
}

- (id)fontForParticipantLabelView:(id)a3
{
  v4 = [a3 updatedParticipantMarqueeLabelFont];
  v5 = [(PHCallParticipantsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PHCallParticipantsViewController *)self delegate];
    v8 = [v7 shouldRenderAlertTextFont];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = +[PHInCallUtilities sharedInstance];
  v11 = [v10 isIPadIdiom];

  if ((v11 & 1) == 0 && (v9 & 1) == 0)
  {
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleLargeTitle];

    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithDesign:UIFontDescriptorSystemDesignDefault];
    v15 = [UIFont fontWithDescriptor:v14 size:0.0];

    v16 = [v15 fontDescriptor];
    v17 = [v16 fontDescriptorWithSymbolicTraits:2];
    v18 = [UIFont fontWithDescriptor:v17 size:96.0];

    v4 = v12;
    goto LABEL_21;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [(PHCallParticipantsViewController *)self callGroups];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(v19);
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
        [v4 pointSize];
        v26 = UIFontWeightSemibold;
LABEL_20:
        v18 = [UIFont systemFontOfSize:v25 weight:v26];

        goto LABEL_21;
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v4 = v4;
  v18 = v4;
LABEL_21:

  return v18;
}

- (id)customFontForParticipantLabel
{
  v3 = [(PHCallParticipantsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHCallParticipantsViewController *)self delegate];
    v6 = [(PHCallParticipantsViewController *)self frontmostCall];
    v7 = [v5 customFontForParticipantLabelWithCall:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fontForParticipantLabelViewStatusLabel:(id)a3
{
  v4 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v5 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v4 callDisplayStyle]);

  v6 = [(PHCallParticipantsViewController *)self delegate];
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

- (id)iconInParticipantsView:(id)a3
{
  v3 = [(PHCallParticipantsViewController *)self callGroups];
  v4 = [v3 firstObject];

  if (v4 && ([v4 provider], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSystemProvider"), v5, (v6 & 1) == 0))
  {
    v8 = [v4 provider];
    v9 = [v8 bundleIdentifier];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    v7 = [UIImage _applicationIconImageForBundleIdentifier:v9 format:5 scale:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)participantsView:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = [(PHCallParticipantsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PHCallParticipantsViewController *)self delegate];
    [v8 callParticipantsViewController:self didPerformActionType:a4];
  }
}

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v5 = a4;
  if ([v5 isOneToOneModeEnabled] && (objc_msgSend(v5, "isVideo") & 1) == 0)
  {
    [(PHCallParticipantsViewController *)self _updateCallGroups];
  }
}

- (void)setAllowsFieldModeSendButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHCallParticipantsViewController *)self participantsView];
  [v4 setAllowsFieldModeSendButton:v3];
}

- (void)fieldModeSendButtonTappedInParticipantsView:(id)a3
{
  v4 = [(PHCallParticipantsViewController *)self nameOverrideString];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v6 length] && (PHLaunchFieldTestApplicationIfNecessaryForDestinationID() & 1) == 0)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Field Mode: Dialing digits %@", &v12, 0xCu);
    }

    v8 = [(PHCallParticipantsViewController *)self callGroups];
    v9 = [v8 lastObject];

    v10 = +[TUCallCenter sharedInstance];
    v11 = [v9 provider];
    [v10 sendFieldModeDigits:v6 forProvider:v11];
  }
}

- (BOOL)isDeviceCapableOfTelephonyCalls
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 isTelephonyDevice];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PHCallParticipantsViewController;
  v7 = a4;
  [(PHCallParticipantsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CDA7C;
  v8[3] = &unk_100358FC0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_100359000];
}

- (void)updateParticipantViewWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v7 = [v6 usesLargeFormatUI];

  if (!v7)
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

  v8 = [(PHCallParticipantsViewController *)self callDisplayStyleManager];
  v9 = [v8 callDisplayStyle];

  if (!v9)
  {
    return;
  }

  v10 = [(PHCallParticipantsViewController *)self delegate];
  v11 = [(NSArray *)self->_contacts firstObject];
  v12 = [v10 callParticipantsViewControllerHasHighResolutionImageOrWallpaperForContact:v11];

  v13 = +[TUCallCenter sharedInstance];
  v14 = [v13 conferenceCall];

  v15 = +[TUCallCenter sharedInstance];
  v16 = [v15 currentCalls];
  v17 = [v16 count];

  v23 = [(NSArray *)self->_contacts firstObject];
  if (v14 || v17 >= 2 || v12)
  {
    v18 = [(PHCallParticipantsViewController *)self participantsView];
    v19 = v18;
  }

  else
  {
    v21 = [(NSArray *)self->_contacts firstObject];
    v22 = [v21 imageData];

    v18 = [(PHCallParticipantsViewController *)self participantsView];
    v19 = v18;
    if (v22)
    {
      v20 = 1;
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_10:
  [v18 updateSubviewWithLayout:v20 forContact:v23];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v5 = [(PHCallParticipantsViewController *)self view:a3];
  [v5 bounds];
  [(PHCallParticipantsViewController *)self updateParticipantViewWithSize:v6, v7];

  v8 = [(PHCallParticipantsViewController *)self view];
  [v8 setNeedsLayout];
}

@end