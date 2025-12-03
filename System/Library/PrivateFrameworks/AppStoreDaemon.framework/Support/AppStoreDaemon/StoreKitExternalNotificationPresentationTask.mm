@interface StoreKitExternalNotificationPresentationTask
- (void)mainWithCompletionHandler:(id)handler;
- (void)processMessageActions:(NSArray *)actions with:(id)with completionHandler:;
@end

@implementation StoreKitExternalNotificationPresentationTask

- (void)processMessageActions:(NSArray *)actions with:(id)with completionHandler:
{
  v5 = v4;
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(with);
  v13 = _Block_copy(v5);
  v14 = swift_allocObject();
  v14[2] = actions;
  v14[3] = v12;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004354C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004366D0;
  v17[5] = v16;
  actionsCopy = actions;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_1004344E0, v17);
}

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(&self->super._finished + 1);
    if (v6)
    {
      v7 = v6[2];
      v6 = v6[3];
      v8 = v7;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6;
    v10 = v8;
    bundleIdentifier = [v9 bundleIdentifier];
    *buf = 138412546;
    v36 = v7;
    v37 = 2114;
    v38 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Running external notification sheet task for %{public}@", buf, 0x16u);
  }

  v12 = *(&self->super._finished + 1);
  if (v12)
  {
    v12 = v12[2];
  }

  v13 = v12;
  v14 = [AMSEngagementPlacementInfo alloc];
  v15 = *(&self->super._finished + 1);
  if (v15)
  {
    v16 = *(v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 initWithPlacement:@"ThirdPartyPurchaseAppLaunch" context:v16];
  v18 = [AMSEngagementMessageEvent alloc];
  v34 = v17;
  v19 = [NSArray arrayWithObjects:&v34 count:1];
  v20 = [v18 initWithServiceType:@"appstored" placementInfo:v19];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001D1F20;
  v32[3] = &unk_10051B8A8;
  v32[4] = self;
  v33 = handlerCopy;
  v21 = handlerCopy;
  v22 = objc_retainBlock(v32);
  v23 = +[BagService appstoredService];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001D21A0;
  v27[3] = &unk_10051B920;
  v28 = v20;
  v29 = v13;
  selfCopy = self;
  v31 = v22;
  v24 = v13;
  v25 = v20;
  v26 = v22;
  [v23 recentBagWithCompletionHandler:v27];
}

@end