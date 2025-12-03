@interface CNShareLocationController
+ (BOOL)findMyFunctionalityAvailable;
+ (id)fmlHandleFromContactProperty:(id)property;
+ (id)fmlHandlesFromContact:(id)contact;
- (CNShareLocationController)initWithIDSAvailabilityProvider:(id)provider;
- (CNShareLocationController)initWithIDSAvailabilityProvider:(id)provider fmlSession:(id)session schedulerProvider:(id)schedulerProvider;
- (CNShareLocationProtocol)shareLocationDelegate;
- (id)endOfDayDate;
- (void)actionsMenuProviderWithCompletion:(id)completion;
- (void)canShareWithCompletion:(id)completion;
- (void)friendshipStateWithCompletion:(id)completion;
- (void)initiateIDSRequest;
- (void)isSharingWithCompletion:(id)completion;
- (void)notifySharingStatusDidChange;
- (void)setContact:(id)contact;
- (void)shareLocationWithExpiration:(int64_t)expiration;
- (void)startUpdatingFriends;
- (void)stopSharingLocation;
- (void)stopUpdatingFriends;
@end

@implementation CNShareLocationController

- (CNShareLocationProtocol)shareLocationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareLocationDelegate);

  return WeakRetained;
}

- (void)notifySharingStatusDidChange
{
  shareLocationDelegate = [(CNShareLocationController *)self shareLocationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    shareLocationDelegate2 = [(CNShareLocationController *)self shareLocationDelegate];
    [shareLocationDelegate2 sharingStatusDidChange];
  }
}

- (void)initiateIDSRequest
{
  v69 = *MEMORY[0x1E69E9840];
  bestPropertyCancelable = [(CNShareLocationController *)self bestPropertyCancelable];
  [bestPropertyCancelable cancel];

  v53 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  contact = [(CNShareLocationController *)self contact];
  phoneNumbers = [contact phoneNumbers];

  v6 = [phoneNumbers countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    v9 = *MEMORY[0x1E695C330];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = MEMORY[0x1E695CE08];
        contact2 = [(CNShareLocationController *)self contact];
        identifier = [v11 identifier];
        v15 = [v12 contactPropertyWithContact:contact2 propertyKey:v9 identifier:identifier];

        [v53 addObject:v15];
      }

      v7 = [phoneNumbers countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v7);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  contact3 = [(CNShareLocationController *)self contact];
  emailAddresses = [contact3 emailAddresses];

  v18 = [emailAddresses countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    v21 = *MEMORY[0x1E695C208];
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v23 = *(*(&v58 + 1) + 8 * j);
        v24 = MEMORY[0x1E695CE08];
        contact4 = [(CNShareLocationController *)self contact];
        identifier2 = [v23 identifier];
        v27 = [v24 contactPropertyWithContact:contact4 propertyKey:v21 identifier:identifier2];

        [v53 addObject:v27];
      }

      v19 = [emailAddresses countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v19);
  }

  bestPropertyComparator = [MEMORY[0x1E6996AF0] bestPropertyComparator];
  [v53 sortUsingComparator:bestPropertyComparator];

  firstObject = [v53 firstObject];
  if (firstObject)
  {
    schedulerProvider = [(CNShareLocationController *)self schedulerProvider];
    v31 = objc_alloc(MEMORY[0x1E6996B70]);
    idsAvailabilityProvider = [(CNShareLocationController *)self idsAvailabilityProvider];
    v33 = [v31 initWithIDSAvailabilityProvider:idsAvailabilityProvider];

    v51 = [MEMORY[0x1E6996798] observableWithResult:firstObject];
    contact5 = [(CNShareLocationController *)self contact];
    v35 = v33;
    v52 = v33;
    v36 = [v33 resolveBestFaceTimeIDSPropertyForContact:contact5 schedulerProvider:schedulerProvider];
    v37 = [v36 onErrorHandler:&__block_literal_global_85];

    contact6 = [(CNShareLocationController *)self contact];
    v39 = [v35 resolveBestIMessageIDSPropertyForContact:contact6 schedulerProvider:schedulerProvider];
    v40 = [v39 onErrorHandler:&__block_literal_global_85];

    v41 = MEMORY[0x1E6996798];
    v66[0] = v37;
    v66[1] = v40;
    v66[2] = v51;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v43 = [v41 concatenate:v42];

    v44 = [v43 take:1];
    v45 = objc_alloc_init(MEMORY[0x1E69967D0]);
    future = [v45 future];
    [(CNShareLocationController *)self setBestPropertyFuture:future];

    backgroundScheduler = [schedulerProvider backgroundScheduler];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __47__CNShareLocationController_initiateIDSRequest__block_invoke_88;
    v54[3] = &unk_1E74E4F90;
    v55 = v44;
    v56 = v45;
    v48 = v45;
    v49 = v44;
    v50 = [backgroundScheduler performCancelableBlock:v54];
    [(CNShareLocationController *)self setBestPropertyCancelable:v50];
  }

  else
  {
    schedulerProvider = CNUILogContactCard();
    if (os_log_type_enabled(schedulerProvider, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, schedulerProvider, OS_LOG_TYPE_ERROR, "CNShareLocationController: found no handles to check for IDS availability", buf, 2u);
    }
  }
}

void __47__CNShareLocationController_initiateIDSRequest__block_invoke_88(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69967A0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 completionHandlerAdapter];
  v7 = [v2 observerWithCompletionHandler:v6];
  v8 = [v3 subscribe:v7];

  [v5 addCancelable:v8];
}

id __47__CNShareLocationController_initiateIDSRequest__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CNUILogContactCard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_199A75000, v3, OS_LOG_TYPE_ERROR, "CNShareLocationController, Contact IDS Property Resolver failed to find best property: %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E6996798] emptyObservable];

  return v4;
}

- (void)stopUpdatingFriends
{
  findMyLocateSession = [(CNShareLocationController *)self findMyLocateSession];

  v4 = CNUILogContactCard();
  findMyLocateSession2 = v4;
  if (findMyLocateSession)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_199A75000, findMyLocateSession2, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession stop updating friends!", v6, 2u);
    }

    findMyLocateSession2 = [(CNShareLocationController *)self findMyLocateSession];
    [findMyLocateSession2 stopUpdatingFriendsWithCompletionHandler:&__block_literal_global_78_44507];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_199A75000, findMyLocateSession2, OS_LOG_TYPE_ERROR, "CNShareLocationController, can't stop updating friends, findMyLocateSession is nil.", buf, 2u);
  }
}

void __48__CNShareLocationController_stopUpdatingFriends__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CNUILogContactCard();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "FindMyLocateSession stopUpdatingFriendsWithCompletion failed with an error. %@ ", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession stopUpdatingFriendsWithCompletion completed.", &v5, 2u);
  }
}

- (void)startUpdatingFriends
{
  findMyLocateSession = [(CNShareLocationController *)self findMyLocateSession];

  if (findMyLocateSession)
  {
    findMyLocateSession2 = [(CNShareLocationController *)self findMyLocateSession];
    [findMyLocateSession2 startUpdatingFriendsWithInitialUpdates:0 completionHandler:&__block_literal_global_44512];

    objc_initWeak(location, self);
    findMyLocateSession3 = [(CNShareLocationController *)self findMyLocateSession];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__CNShareLocationController_startUpdatingFriends__block_invoke_75;
    v7[3] = &unk_1E74E4F48;
    objc_copyWeak(&v8, location);
    [findMyLocateSession3 setFriendshipUpdateCallback:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = CNUILogContactCard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "CNShareLocationController, can't start updating friends, findMyLocateSession is nil.", location, 2u);
    }
  }
}

void __49__CNShareLocationController_startUpdatingFriends__block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained handles];
  v6 = [v3 handle];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 schedulerProvider];
    v10 = [v9 mainThreadScheduler];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__CNShareLocationController_startUpdatingFriends__block_invoke_2;
    v11[3] = &unk_1E74E6C98;
    objc_copyWeak(&v12, (a1 + 32));
    [v10 performBlock:v11];

    objc_destroyWeak(&v12);
  }
}

void __49__CNShareLocationController_startUpdatingFriends__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifySharingStatusDidChange];
}

void __49__CNShareLocationController_startUpdatingFriends__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CNUILogContactCard();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "FindMyLocateSession startUpdatingFriendsWithCompletion failed with an error. %@ ", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession startUpdatingFriendsWithCompletion completed.", &v5, 2u);
  }
}

- (id)endOfDayDate
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [currentCalendar nextDateAfterDate:date matchingUnit:32 value:4 options:1024];

  return v4;
}

- (void)stopSharingLocation
{
  findMyLocateSession = [(CNShareLocationController *)self findMyLocateSession];

  if (findMyLocateSession)
  {
    findMyLocateSession2 = [(CNShareLocationController *)self findMyLocateSession];
    handles = [(CNShareLocationController *)self handles];
    allObjects = [handles allObjects];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CNShareLocationController_stopSharingLocation__block_invoke;
    v8[3] = &unk_1E74E5200;
    v8[4] = self;
    [findMyLocateSession2 stopSharingLocationWith:allObjects isFromGroup:0 completion:v8];
  }

  else
  {
    v7 = CNUILogContactCard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "CNShareLocationController, can't stop sharing, findMyLocateSession is nil.", buf, 2u);
    }
  }
}

void __48__CNShareLocationController_stopSharingLocation__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CNUILogContactCard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "CNShareLocationController, can't stop sharing: %@ ", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) schedulerProvider];
  v6 = [v5 mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CNShareLocationController_stopSharingLocation__block_invoke_72;
  v7[3] = &unk_1E74E6A88;
  v7[4] = *(a1 + 32);
  [v6 performBlock:v7];
}

- (void)shareLocationWithExpiration:(int64_t)expiration
{
  v22 = *MEMORY[0x1E69E9840];
  bestPropertyFuture = [(CNShareLocationController *)self bestPropertyFuture];
  v19 = 0;
  v6 = [bestPropertyFuture resultWithTimeout:&v19 error:2.0];
  v7 = v19;
  firstObject = [v6 firstObject];

  if (v7)
  {
    v9 = CNUILogContactCard();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 138412290;
    v21 = v7;
    v14 = "CNShareLocationController, failed to get best property when sharing: %@";
    v15 = v9;
    v16 = 12;
LABEL_13:
    _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_3;
  }

  findMyLocateSession = [(CNShareLocationController *)self findMyLocateSession];

  if (!findMyLocateSession)
  {
    v9 = CNUILogContactCard();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 0;
    v14 = "CNShareLocationController, can't start sharing, findMyLocateSession is nil.";
    v15 = v9;
    v16 = 2;
    goto LABEL_13;
  }

  v11 = [objc_opt_class() fmlHandleFromContactProperty:firstObject];
  if (v11)
  {
    v9 = v11;
    findMyLocateSession2 = [(CNShareLocationController *)self findMyLocateSession];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__CNShareLocationController_shareLocationWithExpiration___block_invoke;
    v18[3] = &unk_1E74E5200;
    v18[4] = self;
    [findMyLocateSession2 sendFriendshipOfferTo:v13 end:expiration isFromGroup:0 completion:v18];
  }

  else
  {
    v17 = CNUILogContactCard();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "CNShareLocationController, failed to get best handle from best property when sharing", buf, 2u);
    }

    v9 = 0;
  }

LABEL_3:
}

void __57__CNShareLocationController_shareLocationWithExpiration___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = CNUILogContactCard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_199A75000, v4, OS_LOG_TYPE_ERROR, "CNShareLocationController, can't start sharing: %@ ", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) schedulerProvider];
  v6 = [v5 mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNShareLocationController_shareLocationWithExpiration___block_invoke_70;
  v7[3] = &unk_1E74E6A88;
  v7[4] = *(a1 + 32);
  [v6 performBlock:v7];
}

- (void)actionsMenuProviderWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke;
  v5[3] = &unk_1E74E4F00;
  objc_copyWeak(&v6, &location);
  completionCopy[2](completionCopy, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__44525;
  v24 = __Block_byref_object_dispose__44526;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__44525;
  v18[4] = __Block_byref_object_dispose__44526;
  v19 = MEMORY[0x1E695E0F0];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_33;
  v14[3] = &unk_1E74E4ED8;
  v16 = v18;
  v17 = &v20;
  v14[4] = WeakRetained;
  v9 = v8;
  v15 = v9;
  [WeakRetained friendshipStateWithCompletion:v14];
  v10 = CNUILogContactCard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession building shareMyLocation actions menu.", v13, 2u);
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v21[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_33(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    v12 = MEMORY[0x1E69DC628];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"SHARE_LOCATION_INDEFINITELY_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"infinity"];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_4;
    v48[3] = &unk_1E74E7608;
    v48[4] = *(a1 + 32);
    v16 = [v12 actionWithTitle:v14 image:v15 identifier:0 handler:v48];
    v17 = [v11 arrayByAddingObject:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(*(a1 + 48) + 8) + 40);
    v21 = MEMORY[0x1E69DC628];
    v22 = CNContactsUIBundle();
    v23 = [v22 localizedStringForKey:@"SHARE_LOCATION_END_OF_DAY_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_6;
    v47[3] = &unk_1E74E7608;
    v47[4] = *(a1 + 32);
    v25 = [v21 actionWithTitle:v23 image:v24 identifier:0 handler:v47];
    v26 = [v20 arrayByAddingObject:v25];
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v29 = *(*(*(a1 + 48) + 8) + 40);
    v30 = MEMORY[0x1E69DC628];
    v31 = CNContactsUIBundle();
    v32 = [v31 localizedStringForKey:@"SHARE_LOCATION_ONE_HOUR_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_8;
    v46[3] = &unk_1E74E7608;
    v46[4] = *(a1 + 32);
    v34 = [v30 actionWithTitle:v32 image:v33 identifier:0 handler:v46];
    v35 = [v29 arrayByAddingObject:v34];
    v36 = *(*(a1 + 48) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;
  }

  else if (!a2)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = MEMORY[0x1E69DC628];
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"SHARE_LOCATION_STOP_SHARING_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_2;
    v49[3] = &unk_1E74E7608;
    v49[4] = *(a1 + 32);
    v7 = [v4 actionWithTitle:v6 image:0 identifier:0 handler:v49];
    v8 = [v3 arrayByAddingObject:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v38 = MEMORY[0x1E69DCC60];
  v39 = CNContactsUIBundle();
  v40 = [v39 localizedStringForKey:@"SHARE_LOCATION_ALERT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
  v41 = [v38 menuWithTitle:v40 children:*(*(*(a1 + 48) + 8) + 40)];
  v42 = *(*(a1 + 56) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v41;

  v44 = CNUILogContactCard();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_199A75000, v44, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession shareMyLocation actions menu complete.", v45, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerProvider];
  v3 = [v2 backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_3;
  v4[3] = &unk_1E74E6A88;
  v4[4] = *(a1 + 32);
  [v3 performBlock:v4];
}

void __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerProvider];
  v3 = [v2 backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_5;
  v4[3] = &unk_1E74E6A88;
  v4[4] = *(a1 + 32);
  [v3 performBlock:v4];
}

void __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerProvider];
  v3 = [v2 backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_7;
  v4[3] = &unk_1E74E6A88;
  v4[4] = *(a1 + 32);
  [v3 performBlock:v4];
}

void __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerProvider];
  v3 = [v2 backgroundScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CNShareLocationController_actionsMenuProviderWithCompletion___block_invoke_9;
  v4[3] = &unk_1E74E6A88;
  v4[4] = *(a1 + 32);
  [v3 performBlock:v4];
}

- (void)friendshipStateWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = [(CNShareLocationController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CNShareLocationController_friendshipStateWithCompletion___block_invoke;
  v7[3] = &unk_1E74E6DD0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

uint64_t __59__CNShareLocationController_friendshipStateWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) handles];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = [*(a1 + 32) findMyLocateSession];

      if (v8)
      {
        v9 = [*(a1 + 32) findMyLocateSession];
        v10 = [v9 friendshipState:v7];

        if (v10 < 2)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)isSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CNShareLocationController_isSharingWithCompletion___block_invoke;
  v6[3] = &unk_1E74E4EB0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CNShareLocationController *)self friendshipStateWithCompletion:v6];
}

- (void)canShareWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([objc_opt_class() findMyFunctionalityAvailable] && (v5 = +[FindMyLocateSession hasCorrectPermissionsForLocationSharing](_TtC10ContactsUI19FindMyLocateSession, "hasCorrectPermissionsForLocationSharing"), -[CNShareLocationController handles](self, "handles"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5) && v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__CNShareLocationController_canShareWithCompletion___block_invoke;
    v8[3] = &unk_1E74E4EB0;
    v9 = completionCopy;
    [(CNShareLocationController *)self friendshipStateWithCompletion:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (([(CNContact *)self->_contact isEqual:contactCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_contact, contact);
    v6 = [objc_opt_class() fmlHandlesFromContact:contactCopy];
    [(CNShareLocationController *)self setHandles:v6];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__CNShareLocationController_setContact___block_invoke;
    v7[3] = &unk_1E74E67A8;
    v7[4] = self;
    [(CNShareLocationController *)self canShareWithCompletion:v7];
  }
}

uint64_t __40__CNShareLocationController_setContact___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) initiateIDSRequest];
  }

  return result;
}

- (CNShareLocationController)initWithIDSAvailabilityProvider:(id)provider fmlSession:(id)session schedulerProvider:(id)schedulerProvider
{
  providerCopy = provider;
  sessionCopy = session;
  schedulerProviderCopy = schedulerProvider;
  v16.receiver = self;
  v16.super_class = CNShareLocationController;
  v12 = [(CNShareLocationController *)&v16 init];
  if (v12)
  {
    if (LoadAppleAccount_loadPredicate != -1)
    {
      dispatch_once(&LoadAppleAccount_loadPredicate, &__block_literal_global_180);
    }

    objc_storeStrong(&v12->_idsAvailabilityProvider, provider);
    objc_storeStrong(&v12->_schedulerProvider, schedulerProvider);
    objc_storeStrong(&v12->_findMyLocateSession, session);
    v13 = dispatch_queue_create("CNShareLocationController.serialQueue", 0);
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v13;
  }

  return v12;
}

- (CNShareLocationController)initWithIDSAvailabilityProvider:(id)provider
{
  providerCopy = provider;
  if ([objc_opt_class() findMyFunctionalityAvailable])
  {
    v5 = objc_alloc_init(_TtC10ContactsUI19FindMyLocateSession);
  }

  else
  {
    v5 = 0;
  }

  v6 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v6 defaultSchedulerProvider];
  v8 = [(CNShareLocationController *)self initWithIDSAvailabilityProvider:providerCopy fmlSession:v5 schedulerProvider:defaultSchedulerProvider];

  return v8;
}

+ (BOOL)findMyFunctionalityAvailable
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  v4 = *MEMORY[0x1E69964F8];
  v12 = 0;
  v5 = [entitlementVerifier currentProcessHasBooleanEntitlement:v4 error:&v12];

  if ((v5 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNShareLocationController.m", 418, 4, @"Missing entitlement for FindMyLocate. Please add com.apple.findmy.findmylocate.friendshipservice to the entitlements and mach services in the app.", v6, v7, v8, v9, v11);
  }

  return v5;
}

+ (id)fmlHandleFromContactProperty:(id)property
{
  propertyCopy = property;
  v4 = [propertyCopy key];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C330]];

  if (!v5)
  {
    v8 = [propertyCopy key];
    v9 = [v8 isEqualToString:*MEMORY[0x1E695C208]];

    if (!v9)
    {
      goto LABEL_7;
    }

    value = [propertyCopy value];
    if (!value)
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = [CNFMLHandle handleWithIdentifier:value];

    goto LABEL_8;
  }

  value2 = [propertyCopy value];
  value = [value2 unformattedInternationalStringValue];

  if (value)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

+ (id)fmlHandlesFromContact:(id)contact
{
  v41 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v6 = [emailAddresses countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v34 + 1) + 8 * i) value];
        [v4 addObject:value];
      }

      v7 = [emailAddresses countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v12 = [phoneNumbers countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value2 = [*(*(&v30 + 1) + 8 * j) value];
        unformattedInternationalStringValue = [value2 unformattedInternationalStringValue];
        [v4 addObject:unformattedInternationalStringValue];
      }

      v13 = [phoneNumbers countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v13);
  }

  v18 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [CNFMLHandle handleWithIdentifier:*(*(&v26 + 1) + 8 * k), v26];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  return v18;
}

@end