@interface BCChatSuggestRemoteViewController
- (BCChatSuggestRemoteViewController)init;
- (BCChatSuggestRemoteViewController)initWithDeviceState:(id)state presenter:(id)presenter;
- (id)callAlertActionForBizItem:(id)item dialRequestAction:(id)action;
- (id)callAlertActionForBizItem:(id)item dialRequestAction:(id)action senderId:(id)id localizedName:(id)name;
- (id)defaultAlertActionForDialRequestAction:(id)action;
- (id)headerAlertActionForBizItem:(id)item;
- (id)messageAlertActionForBizItem:(id)item dialRequestAction:(id)action;
- (id)supportActionForBizItem:(id)item dialRequestAction:(id)action;
- (int64_t)_latencyFromViewDidLoad;
- (void)_dismiss;
- (void)_logPhoneNumberDisplayedIfNecessary;
- (void)addActionItemsToAlert:(id)alert actionItems:(id)items;
- (void)addPendingActionItemsToAlert;
- (void)brandedHeaderViewController:(id)controller logoFetchingDidFinishForBusinessItem:(id)item success:(BOOL)success;
- (void)brandedHeaderViewController:(id)controller logoFetchingWillBeginForBusinessItem:(id)item;
- (void)configureAlertControllerForBusinessItem:(id)item dialRequestAction:(id)action;
- (void)configureAlertControllerForDialRequestAction:(id)action;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)fetchBizInfoForDialRequestAction:(id)action;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)presentAppleSupportGuidedHelpWithPresenter:(id)presenter;
- (void)sendCancelDialResponseForDialRequestAction;
- (void)setDialRequestAction:(id)action;
- (void)viewDidLoad;
@end

@implementation BCChatSuggestRemoteViewController

- (void)presentAppleSupportGuidedHelpWithPresenter:(id)presenter
{
  swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)();
  swift_unknownObjectRetain();
  self;
  BCChatSuggestRemoteViewController.presentAppleSupportGuidedHelp(presenter:)(presenter);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (BCChatSuggestRemoteViewController)init
{
  v3 = objc_alloc_init(BCPresenter);
  v4 = objc_alloc_init(BCDeviceState);
  v5 = [(BCChatSuggestRemoteViewController *)self initWithDeviceState:v4 presenter:v3];

  [(BCPresenter *)v3 setPresentingViewController:v5];
  v6 = [[BSBrandManager alloc] initWithBrandType:3 cachingEnabled:1];
  brandManager = v5->_brandManager;
  v5->_brandManager = v6;

  return v5;
}

- (BCChatSuggestRemoteViewController)initWithDeviceState:(id)state presenter:(id)presenter
{
  stateCopy = state;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = BCChatSuggestRemoteViewController;
  v9 = [(BCChatSuggestRemoteViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceState, state);
    objc_storeStrong(&v10->_presenter, presenter);
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BCChatSuggestRemoteViewController;
  [(BCChatSuggestRemoteViewController *)&v5 viewDidLoad];
  [(BCChatSuggestRemoteViewController *)self setViewControllerDidLoadTime:CACurrentMediaTime()];
  v3 = +[UIColor clearColor];
  view = [(BCChatSuggestRemoteViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)addPendingActionItemsToAlert
{
  alertController = [(BCChatSuggestRemoteViewController *)self alertController];

  if (alertController && [(BCChatSuggestRemoteViewController *)self chatSuggestUIPresented])
  {
    alertController2 = [(BCChatSuggestRemoteViewController *)self alertController];
    pendingActionItems = [(BCChatSuggestRemoteViewController *)self pendingActionItems];
    [(BCChatSuggestRemoteViewController *)self addActionItemsToAlert:alertController2 actionItems:pendingActionItems];

    alertController3 = [(BCChatSuggestRemoteViewController *)self alertController];
    view = [alertController3 view];
    [view setNeedsLayout];
  }
}

- (void)addActionItemsToAlert:(id)alert actionItems:(id)items
{
  alertCopy = alert;
  itemsCopy = items;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        if ([v12 actionType] == 3 || objc_msgSend(v12, "actionType") == 4 || objc_msgSend(v12, "actionType") == 6 || objc_msgSend(v12, "actionType") == 5)
        {
          title = [v12 title];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000084E0;
          v18[3] = &unk_1000186E0;
          v18[4] = v12;
          makeBrandedHeaderViewControllerForCallMenu = [UIAlertAction actionWithTitle:title style:0 handler:v18];

          [alertCopy addAction:makeBrandedHeaderViewControllerForCallMenu];
          if (([v12 actionType] == 4 || objc_msgSend(v12, "actionType") == 5) && !-[BCChatSuggestRemoteViewController hasPreferredAction](self, "hasPreferredAction") || objc_msgSend(v12, "actionType") == 3 && !-[BCChatSuggestRemoteViewController hasPreferredAction](self, "hasPreferredAction"))
          {
            [alertCopy setPreferredAction:makeBrandedHeaderViewControllerForCallMenu];
            [(BCChatSuggestRemoteViewController *)self setHasPreferredAction:1];
          }

          goto LABEL_16;
        }

        if ([v12 actionType] == 1)
        {
          bizItem = [(BCChatSuggestRemoteViewController *)self bizItem];
          makeBrandedHeaderViewControllerForCallMenu = [bizItem makeBrandedHeaderViewControllerForCallMenu];

          [makeBrandedHeaderViewControllerForCallMenu setDelegate:self];
          [alertCopy setContentViewController:makeBrandedHeaderViewControllerForCallMenu];
          [alertCopy setTitle:&stru_100018B88];
LABEL_16:

          goto LABEL_17;
        }

        if ([v12 actionType] == 2)
        {
          title2 = [v12 title];
          [alertCopy setTitle:title2];
        }

LABEL_17:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v17 = [itemsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v17;
    }

    while (v17);
  }
}

- (void)setDialRequestAction:(id)action
{
  actionCopy = action;
  v5 = sub_10000BC3C();
  [(BCChatSuggestRemoteViewController *)self setTapId:os_signpost_id_generate(v5)];

  v6 = sub_10000BC3C();
  tapId = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = tapId;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RenderBusinessChatUI", &unk_10001585D, buf, 2u);
    }
  }

  v9 = sub_10000BC3C();
  tapId2 = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = tapId2;
    if (os_signpost_enabled(v9))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RenderBusinessChatCallAction", &unk_10001585D, v17, 2u);
    }
  }

  v12 = sub_10000BC3C();
  tapId3 = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = tapId3;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "RenderBusinessChatMessageAction", &unk_10001585D, v16, 2u);
    }
  }

  if (actionCopy)
  {
    [(BCChatSuggestRemoteViewController *)self fetchBizInfoForDialRequestAction:actionCopy];
  }

  dialRequestAction = self->_dialRequestAction;
  self->_dialRequestAction = actionCopy;
}

- (void)configureAlertControllerForBusinessItem:(id)item dialRequestAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  deviceState = [(BCChatSuggestRemoteViewController *)self deviceState];
  isLocked = [deviceState isLocked];

  if (isLocked)
  {
    goto LABEL_2;
  }

  headerActionItem = [(BCChatSuggestRemoteViewController *)self headerActionItem];

  if (!headerActionItem)
  {
    info = [actionCopy info];
    v12 = [info objectForSetting:1];

    v13 = [TUHandle handleWithDictionaryRepresentation:v12];
    value = [v13 value];
    v15 = [(BCChatSuggestRemoteViewController *)self headerAlertActionForBizItem:itemCopy];
    [(BCChatSuggestRemoteViewController *)self setHeaderActionItem:v15];

    v16 = [(BCChatSuggestRemoteViewController *)self messageAlertActionForBizItem:itemCopy dialRequestAction:actionCopy];
    headerActionItem2 = [(BCChatSuggestRemoteViewController *)self headerActionItem];
    v39[0] = headerActionItem2;
    v39[1] = v16;
    v18 = [NSArray arrayWithObjects:v39 count:2];
    [(BCChatSuggestRemoteViewController *)self setPendingActionItems:v18];

    brandManager = [(BCChatSuggestRemoteViewController *)self brandManager];
    v20 = BSBrandServiceTypeOnDeviceSupport;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100008AE4;
    v35[3] = &unk_100018708;
    v35[4] = self;
    v36 = itemCopy;
    v37 = actionCopy;
    v38 = v16;
    v21 = v16;
    [brandManager isBrandRegisteredWithIdentifier:value forService:v20 completion:v35];

    bizItem = [(BCChatSuggestRemoteViewController *)self bizItem];
    if (bizItem)
    {
      v23 = bizItem;
      bizItem2 = [(BCChatSuggestRemoteViewController *)self bizItem];
      isAvailableForCalling = [bizItem2 isAvailableForCalling];

      if ((isAvailableForCalling & 1) == 0)
      {
        deviceState2 = [(BCChatSuggestRemoteViewController *)self deviceState];
        isLocked2 = [deviceState2 isLocked];

        if (isLocked2)
        {
          [(BCChatSuggestRemoteViewController *)self _dismiss];

LABEL_16:
          goto LABEL_17;
        }
      }
    }
  }

  if (!-[BCChatSuggestRemoteViewController chatSuggestUIPresented](self, "chatSuggestUIPresented") || (-[BCChatSuggestRemoteViewController pendingActionItems](self, "pendingActionItems"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 count], v28, !v29))
  {
LABEL_13:
    [BCCoreAnalytics logEventForView:@"com.apple.BusinessChatViewService.ChatSuggestAppears" bizItem:itemCopy bizItemReturnedAfterAction:0 latency:[(BCChatSuggestRemoteViewController *)self _latencyFromViewDidLoad]];
    [(BCChatSuggestRemoteViewController *)self _logPhoneNumberDisplayedIfNecessary];
    v12 = sub_10000BC3C();
    tapId = [(BCChatSuggestRemoteViewController *)self tapId];
    if (tapId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v33 = tapId;
      if (os_signpost_enabled(v12))
      {
        *v34 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v33, "RenderBusinessChatMessageAction", &unk_10001585D, v34, 2u);
      }
    }

    goto LABEL_16;
  }

  deviceState3 = [(BCChatSuggestRemoteViewController *)self deviceState];
  isLocked3 = [deviceState3 isLocked];

  if (!isLocked3)
  {
    [(BCChatSuggestRemoteViewController *)self addPendingActionItemsToAlert];
    [(BCChatSuggestRemoteViewController *)self setPendingActionItems:0];
    goto LABEL_13;
  }

LABEL_2:
  [(BCChatSuggestRemoteViewController *)self _dismiss];
LABEL_17:
}

- (void)configureAlertControllerForDialRequestAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(UIAlertController);
  [v5 setPreferredStyle:1];
  [v5 _setShouldAlignToKeyboard:0];
  v6 = [NSMutableArray arrayWithCapacity:2];
  selfCopy = self;
  if ([(BCChatSuggestRemoteViewController *)self simLinePickerEnabled])
  {
    info = [actionCopy info];
    v8 = [info objectForSetting:5];

    if ([(BCChatSuggestRemoteViewController *)self simLinePickerEnabled]&& v8)
    {
      v76 = v5;
      [(BCChatSuggestRemoteViewController *)self setIsDualSim:1];
      info2 = [actionCopy info];
      v10 = [info2 objectForSetting:2];

      info3 = [actionCopy info];
      v12 = [info3 objectForSetting:3];

      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"DUAL_SIM_HEADER_TITLE" value:&stru_100018B88 table:0];
      v15 = [NSString stringWithFormat:v14, v12, v10];

      v16 = [[BCAlertActionItem alloc] initWithTitle:v15 subTitle:0 iconName:0 actionType:2 handler:0];
      bizItem = [(BCChatSuggestRemoteViewController *)self bizItem];

      if (bizItem)
      {
        v72 = v15;
        pendingActionItems = [(BCChatSuggestRemoteViewController *)self pendingActionItems];
        v79 = actionCopy;
        v70 = v6;
        v71 = v16;
        v74 = v10;
        v75 = v8;
        v73 = v12;
        if ([pendingActionItems count])
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v19 = v8;
          v20 = [v19 countByEnumeratingWithState:&v85 objects:v94 count:16];
          if (v20)
          {
            v21 = v20;
            v77 = *v86;
            do
            {
              v22 = 0;
              v23 = pendingActionItems;
              do
              {
                if (*v86 != v77)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v85 + 1) + 8 * v22);
                v25 = +[NSBundle mainBundle];
                v26 = [v25 localizedStringForKey:@"DUAL_SIM_BUSINESS_SUGGEST_NUMBERS_PREFIX" value:&stru_100018B88 table:0];
                v27 = [v19 objectForKeyedSubscript:v24];
                v28 = [NSString stringWithFormat:@"%@ %@", v26, v27];

                bizItem2 = [(BCChatSuggestRemoteViewController *)selfCopy bizItem];
                v30 = [(BCChatSuggestRemoteViewController *)selfCopy callAlertActionForBizItem:bizItem2 dialRequestAction:v79 senderId:v24 localizedName:v28];

                pendingActionItems = [v23 arrayByAddingObject:v30];

                v22 = v22 + 1;
                v23 = pendingActionItems;
              }

              while (v21 != v22);
              v21 = [v19 countByEnumeratingWithState:&v85 objects:v94 count:16];
            }

            while (v21);
          }

          self = selfCopy;
          [(BCChatSuggestRemoteViewController *)selfCopy setPendingActionItems:0];
          v31 = pendingActionItems;
        }

        else
        {
          bizItem3 = [(BCChatSuggestRemoteViewController *)self bizItem];
          v52 = [(BCChatSuggestRemoteViewController *)self headerAlertActionForBizItem:bizItem3];
          [(BCChatSuggestRemoteViewController *)self setHeaderActionItem:v52];

          bizItem4 = [(BCChatSuggestRemoteViewController *)self bizItem];
          v54 = [(BCChatSuggestRemoteViewController *)self messageAlertActionForBizItem:bizItem4 dialRequestAction:actionCopy];

          headerActionItem = [(BCChatSuggestRemoteViewController *)self headerActionItem];
          v96[0] = headerActionItem;
          v96[1] = v54;
          v78 = v54;
          v31 = [NSArray arrayWithObjects:v96 count:2];

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v56 = v8;
          v57 = [v56 countByEnumeratingWithState:&v89 objects:v95 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v90;
            do
            {
              v60 = 0;
              v61 = v31;
              do
              {
                if (*v90 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v62 = *(*(&v89 + 1) + 8 * v60);
                v63 = +[NSBundle mainBundle];
                v64 = [v63 localizedStringForKey:@"DUAL_SIM_BUSINESS_SUGGEST_NUMBERS_PREFIX" value:&stru_100018B88 table:0];
                v65 = [v56 objectForKeyedSubscript:v62];
                v66 = [NSString stringWithFormat:@"%@ %@", v64, v65];

                self = selfCopy;
                bizItem5 = [(BCChatSuggestRemoteViewController *)selfCopy bizItem];
                v68 = [(BCChatSuggestRemoteViewController *)selfCopy callAlertActionForBizItem:bizItem5 dialRequestAction:v79 senderId:v62 localizedName:v66];

                v31 = [v61 arrayByAddingObject:v68];

                v60 = v60 + 1;
                v61 = v31;
              }

              while (v58 != v60);
              v58 = [v56 countByEnumeratingWithState:&v89 objects:v95 count:16];
            }

            while (v58);
          }
        }

        v6 = v70;
        [v70 addObjectsFromArray:v31];
        actionCopy = v79;
      }

      else
      {
        [v6 addObject:v16];
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v31 = v8;
        v42 = [v31 countByEnumeratingWithState:&v81 objects:v93 count:16];
        if (!v42)
        {
LABEL_40:

          v5 = v76;
          goto LABEL_41;
        }

        v43 = v42;
        v71 = v16;
        v72 = v15;
        v73 = v12;
        v74 = v10;
        v75 = v8;
        v44 = v6;
        v45 = *v82;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v82 != v45)
            {
              objc_enumerationMutation(v31);
            }

            v47 = *(*(&v81 + 1) + 8 * i);
            v48 = [v31 objectForKeyedSubscript:v47];
            bizItem6 = [(BCChatSuggestRemoteViewController *)self bizItem];
            v50 = [(BCChatSuggestRemoteViewController *)self callAlertActionForBizItem:bizItem6 dialRequestAction:actionCopy senderId:v47 localizedName:v48];

            [v44 addObject:v50];
          }

          v43 = [v31 countByEnumeratingWithState:&v81 objects:v93 count:16];
        }

        while (v43);
        v6 = v44;
      }

      v10 = v74;
      v8 = v75;
      v15 = v72;
      v12 = v73;
      v16 = v71;
      goto LABEL_40;
    }
  }

  else
  {
    [(BCChatSuggestRemoteViewController *)self simLinePickerEnabled];
    v8 = 0;
  }

  [(BCChatSuggestRemoteViewController *)self setIsDualSim:0];
  bizItem7 = [(BCChatSuggestRemoteViewController *)self bizItem];

  if (bizItem7)
  {
    pendingActionItems2 = [(BCChatSuggestRemoteViewController *)self pendingActionItems];
    bizItem8 = [(BCChatSuggestRemoteViewController *)self bizItem];
    v35 = [(BCChatSuggestRemoteViewController *)self callAlertActionForBizItem:bizItem8 dialRequestAction:actionCopy];

    if ([pendingActionItems2 count])
    {
      v36 = [pendingActionItems2 arrayByAddingObject:v35];

      [(BCChatSuggestRemoteViewController *)self setPendingActionItems:0];
    }

    else
    {
      bizItem9 = [(BCChatSuggestRemoteViewController *)self bizItem];
      v38 = [(BCChatSuggestRemoteViewController *)self headerAlertActionForBizItem:bizItem9];
      [(BCChatSuggestRemoteViewController *)self setHeaderActionItem:v38];

      bizItem10 = [(BCChatSuggestRemoteViewController *)self bizItem];
      v40 = [(BCChatSuggestRemoteViewController *)self messageAlertActionForBizItem:bizItem10 dialRequestAction:actionCopy];

      headerActionItem2 = [(BCChatSuggestRemoteViewController *)self headerActionItem];
      v97[0] = headerActionItem2;
      v97[1] = v40;
      v97[2] = v35;
      v36 = [NSArray arrayWithObjects:v97 count:3];

      self = selfCopy;
    }

    [v6 addObjectsFromArray:v36];
  }

  else
  {
    v36 = [(BCChatSuggestRemoteViewController *)self callAlertActionForBizItem:0 dialRequestAction:actionCopy];
    [v6 addObject:v36];
  }

LABEL_41:
  [(BCChatSuggestRemoteViewController *)self addActionItemsToAlert:v5 actionItems:v6];
  v69 = [(BCChatSuggestRemoteViewController *)self defaultAlertActionForDialRequestAction:actionCopy];
  [v5 addAction:v69];
  [(BCChatSuggestRemoteViewController *)self setAlertController:v5];
  [(BCChatSuggestRemoteViewController *)self _logPhoneNumberDisplayedIfNecessary];
}

- (id)headerAlertActionForBizItem:(id)item
{
  itemCopy = item;
  name = [itemCopy name];
  isVerified = [itemCopy isVerified];

  if (isVerified)
  {
    v6 = +[BCVSUtilities classBundle];
    v7 = [v6 localizedStringForKey:@"VERIFIED" value:&stru_100018B88 table:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[BCAlertActionItem alloc] initWithTitle:name subTitle:v7 iconName:0 actionType:1 handler:0];

  return v8;
}

- (id)supportActionForBizItem:(id)item dialRequestAction:(id)action
{
  v5 = [NSBundle mainBundle:item];
  v6 = [v5 localizedStringForKey:@"GUIDED_HELP_LABEL" value:&stru_100018B88 table:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009660;
  v9[3] = &unk_100018730;
  v9[4] = self;
  v7 = [[BCAlertActionItem alloc] initWithTitle:v6 subTitle:0 iconName:0 actionType:5 handler:v9];

  return v7;
}

- (void)sendCancelDialResponseForDialRequestAction
{
  dialRequestAction = [(BCChatSuggestRemoteViewController *)self dialRequestAction];
  isValid = [dialRequestAction isValid];

  if (isValid)
  {
    v5 = objc_alloc_init(BSMutableSettings);
    if ([(BCChatSuggestRemoteViewController *)self simLinePickerEnabled]&& [(BCChatSuggestRemoteViewController *)self isDualSim])
    {
      v6 = [NSNumber numberWithInt:0xFFFFFFFFLL];
      [v5 setObject:v6 forSetting:10];
    }

    else
    {
      [v5 setObject:@"Message" forSetting:10];
    }

    dialRequestAction2 = [(BCChatSuggestRemoteViewController *)self dialRequestAction];
    v12 = [BSActionResponse responseWithInfo:v5];
    [dialRequestAction2 sendResponse:v12];

    dialRequestAction3 = sub_10000BC3C();
    if (!os_log_type_enabled(dialRequestAction3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = 136315138;
    v14 = "[BCChatSuggestRemoteViewController sendCancelDialResponseForDialRequestAction]";
    v8 = "%s Sending message to InCallService via XPC Action to place a call";
    v9 = dialRequestAction3;
    v10 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_11:

    goto LABEL_12;
  }

  v5 = sub_10000BC3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    dialRequestAction3 = [(BCChatSuggestRemoteViewController *)self dialRequestAction];
    v13 = 136315394;
    v14 = "[BCChatSuggestRemoteViewController sendCancelDialResponseForDialRequestAction]";
    v15 = 2112;
    v16 = dialRequestAction3;
    v8 = "%s invalid dialrequest message action : %@";
    v9 = v5;
    v10 = 22;
    goto LABEL_10;
  }

LABEL_12:
}

- (id)messageAlertActionForBizItem:(id)item dialRequestAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  v8 = [BCAlertActionItem alloc];
  messageTitle = [itemCopy messageTitle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000099BC;
  v14[3] = &unk_100018758;
  v15 = itemCopy;
  selfCopy = self;
  v17 = actionCopy;
  v10 = actionCopy;
  v11 = itemCopy;
  v12 = [(BCAlertActionItem *)v8 initWithTitle:messageTitle subTitle:0 iconName:0 actionType:4 handler:v14];

  return v12;
}

- (id)callAlertActionForBizItem:(id)item dialRequestAction:(id)action
{
  actionCopy = action;
  itemCopy = item;
  info = [actionCopy info];
  v8 = [info objectForSetting:1];

  v9 = [TUHandle handleWithDictionaryRepresentation:v8];
  value = [v9 value];
  info2 = [actionCopy info];
  v12 = [info2 objectForSetting:2];

  info3 = [actionCopy info];
  v14 = [info3 objectForSetting:3];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CALL_ACTION_TITLE" value:&stru_100018B88 table:0];
  v17 = [NSString stringWithFormat:v16, v14, v12];

  v18 = [BCAlertActionItem alloc];
  callSubtitle = [itemCopy callSubtitle];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100009F48;
  v25[3] = &unk_100018758;
  v25[4] = self;
  v26 = actionCopy;
  v27 = value;
  v20 = value;
  v21 = actionCopy;
  v22 = [(BCAlertActionItem *)v18 initWithTitle:v17 subTitle:callSubtitle iconName:0 actionType:3 handler:v25];

  return v22;
}

- (id)callAlertActionForBizItem:(id)item dialRequestAction:(id)action senderId:(id)id localizedName:(id)name
{
  actionCopy = action;
  idCopy = id;
  nameCopy = name;
  info = [actionCopy info];
  v13 = [info objectForSetting:1];

  v14 = [TUHandle handleWithDictionaryRepresentation:v13];
  value = [v14 value];
  nameCopy = [NSString stringWithFormat:@"%@", nameCopy];
  isDefaultSimAdded = [(BCChatSuggestRemoteViewController *)self isDefaultSimAdded];
  if ((isDefaultSimAdded & 1) == 0)
  {
    [(BCChatSuggestRemoteViewController *)self setIsDefaultSimAdded:1];
  }

  v18 = isDefaultSimAdded ^ 1;
  v19 = [BCAlertActionItem alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000A46C;
  v25[3] = &unk_100018780;
  v29 = v18;
  v25[4] = self;
  v26 = actionCopy;
  v27 = idCopy;
  v28 = value;
  v20 = value;
  v21 = idCopy;
  v22 = actionCopy;
  v23 = [(BCAlertActionItem *)v19 initWithTitle:nameCopy subTitle:0 iconName:0 actionType:3 handler:v25];

  return v23;
}

- (id)defaultAlertActionForDialRequestAction:(id)action
{
  actionCopy = action;
  info = [actionCopy info];
  v6 = [info objectForSetting:4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A8EC;
  v10[3] = &unk_1000187A8;
  v11 = actionCopy;
  selfCopy = self;
  v7 = actionCopy;
  v8 = [UIAlertAction actionWithTitle:v6 style:1 handler:v10];

  return v8;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_10000BC3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BCChatSuggestRemoteViewController configureWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v7 = [(BCChatSuggestRemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000187E8];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:0];
  [v7 setOrientationChangedEventsEnabled:1];
  v8 = +[UIApplication sharedApplication];
  [v7 setLaunchingInterfaceOrientation:{objc_msgSend(v8, "activeInterfaceOrientation")}];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_10000BC3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[BCChatSuggestRemoteViewController prepareForActivationWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v9 = [(BCChatSuggestRemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100018808];
  [v9 setStatusBarHidden:1 withDuration:0.4];
  if ((byte_10001E928 & 1) == 0)
  {
    byte_10001E928 = 1;
    actions = [contextCopy actions];
    allObjects = [actions allObjects];
    firstObject = [allObjects firstObject];
    [(BCChatSuggestRemoteViewController *)self setDialRequestAction:firstObject];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_dismiss
{
  self->_chatSuggestUIPresented = 0;
  pendingActionItems = self->_pendingActionItems;
  self->_pendingActionItems = 0;

  alertController = self->_alertController;
  self->_alertController = 0;

  dialRequestAction = self->_dialRequestAction;
  self->_dialRequestAction = 0;

  bizItem = self->_bizItem;
  self->_bizItem = 0;

  headerActionItem = self->_headerActionItem;
  self->_headerActionItem = 0;

  self->_chatSuggestRemoteViewControllerDismissed = 1;
  _remoteViewControllerProxy = [(BCChatSuggestRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy deactivate];
}

- (void)fetchBizInfoForDialRequestAction:(id)action
{
  actionCopy = action;
  info = [actionCopy info];
  v6 = [info objectForSetting:1];

  v7 = [TUHandle handleWithDictionaryRepresentation:v6];
  if ([v7 type] == 2)
  {
    value = [v7 value];
    v9 = [value length];

    if (v9)
    {
      objc_initWeak(&location, self);
      v10 = objc_alloc_init(BCSBusinessQueryService);
      value2 = [v7 value];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000AFDC;
      v12[3] = &unk_100018858;
      objc_copyWeak(&v14, &location);
      v13 = actionCopy;
      [v10 fetchBusinessItemForPhoneNumber:value2 completion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_logPhoneNumberDisplayedIfNecessary
{
  if (![(BCChatSuggestRemoteViewController *)self phoneNumberUIPresented])
  {
    [(BCChatSuggestRemoteViewController *)self setPhoneNumberUIPresentedTime:CACurrentMediaTime()];
    bizItem = [(BCChatSuggestRemoteViewController *)self bizItem];
    [(BCChatSuggestRemoteViewController *)self setHadBizItemWhenPhoneNumberUIPresented:bizItem != 0];
  }

  [(BCChatSuggestRemoteViewController *)self setPhoneNumberUIPresented:1];
  bizItem2 = [(BCChatSuggestRemoteViewController *)self bizItem];

  if (bizItem2 && ![(BCChatSuggestRemoteViewController *)self phoneNumberDisplayLogged])
  {
    [(BCChatSuggestRemoteViewController *)self setPhoneNumberDisplayLogged:1];
    [(BCChatSuggestRemoteViewController *)self phoneNumberUIPresentedTime];
    v6 = v5;
    [(BCChatSuggestRemoteViewController *)self viewControllerDidLoadTime];
    v8 = ((v6 - v7) * 1000.0);
    hadBizItemWhenPhoneNumberUIPresented = [(BCChatSuggestRemoteViewController *)self hadBizItemWhenPhoneNumberUIPresented];
    bizItem3 = [(BCChatSuggestRemoteViewController *)self bizItem];
    [BCCoreAnalytics logEventForView:@"com.apple.BusinessChatViewService.PhoneNumberAppears" bizItem:bizItem3 bizItemReturnedAfterAction:hadBizItemWhenPhoneNumberUIPresented ^ 1 latency:v8];
  }
}

- (int64_t)_latencyFromViewDidLoad
{
  v3 = CACurrentMediaTime();
  [(BCChatSuggestRemoteViewController *)self viewControllerDidLoadTime];
  return ((v3 - v4) * 1000.0);
}

- (void)brandedHeaderViewController:(id)controller logoFetchingWillBeginForBusinessItem:(id)item
{
  v5 = sub_10000BC3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BCChatSuggestRemoteViewController brandedHeaderViewController:logoFetchingWillBeginForBusinessItem:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v6 = sub_10000BC3C();
  tapId = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = tapId;
    if (os_signpost_enabled(v6))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RenderBusinessChatIcon", &unk_10001585D, &v9, 2u);
    }
  }
}

- (void)brandedHeaderViewController:(id)controller logoFetchingDidFinishForBusinessItem:(id)item success:(BOOL)success
{
  v6 = sub_10000BC3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[BCChatSuggestRemoteViewController brandedHeaderViewController:logoFetchingDidFinishForBusinessItem:success:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  v7 = sub_10000BC3C();
  tapId = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = tapId;
    if (os_signpost_enabled(v7))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "RenderBusinessChatIcon", &unk_10001585D, &v16, 2u);
    }
  }

  v10 = sub_10000BC3C();
  tapId2 = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = tapId2;
    if (os_signpost_enabled(v10))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "RenderBusinessChatUI", &unk_10001585D, &v16, 2u);
    }
  }

  v13 = sub_10000BC3C();
  tapId3 = [(BCChatSuggestRemoteViewController *)self tapId];
  if (tapId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = tapId3;
    if (os_signpost_enabled(v13))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, v15, "ChatSuggestEnd", &unk_10001585D, &v16, 2u);
    }
  }
}

@end