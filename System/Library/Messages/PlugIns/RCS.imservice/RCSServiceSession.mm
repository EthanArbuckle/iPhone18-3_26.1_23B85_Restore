@interface RCSServiceSession
- (BOOL)_messageUpgradesWhenSentFromCurrentService:(id)a3;
- (BOOL)allowedToOverwriteOriginalGroupIDForChat:(id)a3;
- (BOOL)allowedToSendMessage:(id)a3 toChat:(id)a4;
- (BOOL)chatCanMergeWithSuperChat:(id)a3;
- (BOOL)isGroupMessagingEnabledFor:(id)a3;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)a3;
- (BOOL)replicationRequiredForMessageBodyAttributeName:(id)a3;
- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)a3 simID:(id)a4;
- (BOOL)shouldSendReadReceiptsForChat:(id)a3 style:(unsigned __int8)a4;
- (RCSServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (id)groupIDForChat:(id)a3;
- (id)makeSenderFor:(id)a3 forChat:(id)a4 chatStyle:(unsigned __int8)a5 recipients:(id)a6;
- (id)replicationPhoneNumbers;
- (int64_t)maxRecipientsForPhoneNumber:(id)a3 simID:(id)a4;
- (int64_t)maxSizePerAttachmentWithCount:(int)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5;
- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4;
- (void)_reportTelephonyJunkForMessageItem:(id)a3 chat:(id)a4;
- (void)_updatePhoneNumberCallerID;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)capabilitiesFound:(id)a3 destination:(id)a4 withCapabilities:(id)a5;
- (void)cleanupPendingGroupChangesFor:(id)a3;
- (void)composingIndicator:(id)a3 from:(id)a4 withID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7;
- (void)destinationCapabilitiesUpdated:(id)a3 withCapabilities:(id)a4;
- (void)didDeleteChatGUID:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 originalGroupID:(id)a7 properties:(id)a8 lastAddressedLocalHandle:(id)a9 lastAddressedSIMID:(id)a10;
- (void)didDiscover:(id)a3 destination:(id)a4 withCapabilities:(id)a5 withResult:(id)a6;
- (void)didFinishExit:(id)a3 withResult:(id)a4;
- (void)didFinishFetchChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withRenderData:(id)a5 withResult:(id)a6;
- (void)didFinishGroupChatCreation:(id)a3 forGroupChat:(id)a4 withResult:(id)a5;
- (void)didFinishGroupUpdate:(id)a3 forGroupChat:(id)a4;
- (void)didFinishSubjectChange:(id)a3 withNewSubject:(id)a4 withResult:(id)a5;
- (void)didReceiveMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 fromIDSID:(id)a6;
- (void)didReportChatbotSpam:(id)a3 forChatbot:(id)a4 withResult:(id)a5;
- (void)didReportSpam:(id)a3 forDestination:(id)a4 withResult:(id)a5;
- (void)dispositionInformation:(id)a3 withStatus:(id)a4 withSecurity:(id)a5;
- (void)evictedFromGroup:(id)a3 withGroupInfo:(id)a4 evictedBy:(id)a5;
- (void)fireTimerWithTimer:(id)a3;
- (void)forceReloadChats;
- (void)groupComposingIndicator:(id)a3 fromGroup:(id)a4 from:(id)a5 withID:(id)a6 withIndication:(id)a7;
- (void)handler:(id)a3 messageIDDelivered:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 timeStamp:(id)a7 storageContext:(id)a8;
- (void)incomingGroupChat:(id)a3 withGroupInformation:(id)a4;
- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7;
- (void)leaveChat:(id)a3 style:(unsigned __int8)a4;
- (void)messageReceived:(id)a3 withID:(id)a4 ofType:(id)a5;
- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)requestToDisableAnonymization:(id)a3 from:(id)a4 withID:(id)a5;
- (void)requestToEnableDisplayedNotifications:(id)a3 from:(id)a4 withID:(id)a5;
- (void)revokeSentMessage:(id)a3 inChat:(id)a4;
- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8;
- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7;
- (void)subjectUpdated:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 updatedBy:(id)a6;
- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4;
- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9;
- (void)waitForChatRelayReadiness:(id)a3 withBlock:(id)a4;
@end

@implementation RCSServiceSession

- (BOOL)isGroupMessagingEnabledFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo17RCSServiceSessionC3RCSE23isGroupMessagingEnabled3forSbSo7IMDChatC_tF_0(v4);

  return v6 & 1;
}

- (int64_t)maxSizePerAttachmentWithCount:(int)a3 lastAddressedHandle:(id)a4 lastAddressedSIMID:(id)a5
{
  if (!a5)
  {
    return 104857600;
  }

  v6 = sub_F07EC();
  v8 = v7;
  v9 = self;
  sub_3FF00(v6, v8, &selRef_maxTransferSize);
  v11 = v10;
  LOBYTE(v6) = v12;

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  else
  {
    return 104857600;
  }
}

- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.systemConfigurationChanged(_:with:)(v6, v7);
}

- (void)messageReceived:(id)a3 withID:(id)a4 ofType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.messageReceived(_:with:ofType:)(v8, v9, v10);
}

- (void)dispositionInformation:(id)a3 withStatus:(id)a4 withSecurity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  _sSo17RCSServiceSessionC3RCSE22dispositionInformation_4withAEySo31CTXPCServiceSubscriptionContextC_So32CTLazuliMessageDispositionStatusCSo0J8SecurityCSgtF_0(v8, v9);
}

- (void)groupComposingIndicator:(id)a3 fromGroup:(id)a4 from:(id)a5 withID:(id)a6 withIndication:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  RCSServiceSession.groupComposingIndicator(_:fromGroup:from:with:withIndication:)(v12, v13, v14, v15, v16);
}

- (void)composingIndicator:(id)a3 from:(id)a4 withID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  RCSServiceSession.composingIndicator(_:from:with:withIndication:with:)(v12, v13, v14, v15, a7);
}

- (void)requestToDisableAnonymization:(id)a3 from:(id)a4 withID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  _sSo17RCSServiceSessionC3RCSE7request22toDisableAnonymization4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0M9MessageIDCtF_0(v8, v9, v10);
}

- (void)requestToEnableDisplayedNotifications:(id)a3 from:(id)a4 withID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  _sSo17RCSServiceSessionC3RCSE7request30toEnableDisplayedNotifications4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0N9MessageIDCtF_0(v8, v9, v10);
}

- (void)didFinishFetchChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withRenderData:(id)a5 withResult:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_54564(v11, a5);
}

- (void)destinationCapabilitiesUpdated:(id)a3 withCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.destinationCapabilitiesUpdated(_:withCapabilities:)(v6, v7);
}

- (void)didDiscover:(id)a3 destination:(id)a4 withCapabilities:(id)a5 withResult:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  RCSServiceSession.didDiscover(_:destination:withCapabilities:with:)(v10, v11, a5, v13);
}

- (void)forceReloadChats
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 _forceReloadChats:1];
}

- (void)capabilitiesFound:(id)a3 destination:(id)a4 withCapabilities:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.capabilitiesFound(_:destination:withCapabilities:)(v8, v9, v10);
}

- (void)subjectUpdated:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 updatedBy:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  RCSServiceSession.subjectUpdated(_:forGroupChat:withNewSubject:updatedBy:)(v10, v11, a5, a6);
}

- (void)incomingGroupChat:(id)a3 withGroupInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.incomingGroupChat(_:withGroupInformation:)(v6, v7);
}

- (void)didFinishGroupUpdate:(id)a3 forGroupChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.didFinishGroupUpdate(_:forGroupChat:)(v6, v7);
}

- (void)didFinishExit:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.didFinishExit(_:with:)(v6, v7);
}

- (void)evictedFromGroup:(id)a3 withGroupInfo:(id)a4 evictedBy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.evicted(fromGroup:withGroupInfo:evictedBy:)(v8, v9, a5);
}

- (void)didFinishGroupChatCreation:(id)a3 forGroupChat:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.didFinishGroupChatCreation(_:forGroupChat:with:)(v8, v9, v10);
}

- (void)didFinishSubjectChange:(id)a3 withNewSubject:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.didFinishSubjectChange(_:withNewSubject:with:)(v8, a4, v10);
}

- (void)didReportChatbotSpam:(id)a3 forChatbot:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.didReportChatbotSpam(_:forChatbot:with:)(v8, v9, v10);
}

- (void)didReportSpam:(id)a3 forDestination:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  RCSServiceSession.didReportSpam(_:for:with:)(v8, v9, v10);
}

- (void)cleanupPendingGroupChangesFor:(id)a3
{
  v4 = sub_F07EC();
  v6 = v5;
  v7 = self;
  sub_613D0(v4, v6);
}

- (void)didReceiveMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 fromIDSID:(id)a6
{
  v10 = sub_F07EC();
  v12 = v11;
  if (a6)
  {
    v13 = sub_F07EC();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a3;
  v16 = self;
  RCSServiceSession.didReceiveMessage(_:forChat:style:fromIDSID:)(v15, v10, v12, a5, v13, a6);
}

- (void)leaveChat:(id)a3 style:(unsigned __int8)a4
{
  v6 = sub_F07EC();
  v8 = v7;
  v9 = self;
  RCSServiceSession.leaveChat(_:style:)(v6, v8, a4);
}

- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChatID:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7
{
  v10 = a3;
  if (a3)
  {
    sub_388C8(&qword_128528, &unk_F36C0);
    v10 = sub_F09FC();
  }

  if (a5)
  {
    v12 = sub_F07EC();
    a5 = v13;
    if (a6)
    {
LABEL_5:
      v14 = sub_F07EC();
      a6 = v15;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_8:
  v16 = self;
  sub_7BDB0(2, v10, v12, a5, v14, a6, a7);
}

- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v9 = a3;
  if (a3)
  {
    sub_388C8(&qword_128528, &unk_F36C0);
    v9 = sub_F09FC();
  }

  if (a4)
  {
    v11 = sub_F07EC();
    a4 = v12;
    if (a5)
    {
LABEL_5:
      v13 = sub_F07EC();
      a5 = v14;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_8:
  v15 = self;
  sub_7BDB0(3, v9, v11, a4, v13, a5, a6);
}

- (id)replicationPhoneNumbers
{
  v2 = self;
  RCSServiceSession.replicationPhoneNumbers()();

  v3 = sub_F0C0C();

  return v3;
}

- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)a3 simID:(id)a4
{
  v6 = sub_F07EC();
  v8 = v7;
  if (a4)
  {
    v9 = sub_F07EC();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12._countAndFlagsBits = v6;
  v12._object = v8;
  v13.value._countAndFlagsBits = v9;
  v13.value._object = a4;
  v14 = RCSServiceSession.replicationRequirementsSatisfied(forPhoneNumber:simID:)(v12, v13);

  return v14;
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)a3
{
  v4 = a3;
  v5 = self;
  RCSServiceSession.replicationRequiredForFeaturesUsed(by:)(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)replicationRequiredForMessageBodyAttributeName:(id)a3
{
  v5 = sub_F07EC();
  v7 = v6;
  if (sub_F07EC() == v5 && v8 == v7)
  {

    return 0;
  }

  else
  {
    v10 = sub_F122C();
    v11 = a3;
    v12 = self;

    if (v10)
    {

      return 0;
    }

    else
    {
      v15.receiver = v12;
      v15.super_class = RCSServiceSession;
      v14 = [(RCSServiceSession *)&v15 replicationRequiredForMessageBodyAttributeName:v11];

      return v14;
    }
  }
}

- (RCSServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  RCSServiceSession.init(account:service:replicatingFor:)(v7, v8, a5);
  return result;
}

- (int64_t)maxRecipientsForPhoneNumber:(id)a3 simID:(id)a4
{
  v6 = objc_opt_self();
  v7 = a3;
  v8 = a4;
  v9 = [v6 sharedManager];
  v10 = [v9 groupMessagingMaxGroupSizeForPhoneNumber:v7 simID:v8];

  return v10;
}

- (id)makeSenderFor:(id)a3 forChat:(id)a4 chatStyle:(unsigned __int8)a5 recipients:(id)a6
{
  sub_388C8(&qword_128568, &qword_F3950);
  sub_F09FC();
  v10 = a3;
  v11 = a4;
  v12 = self;
  RCSServiceSession.makeSender(for:for:chatStyle:recipients:)(v10, v11, a5);
  v14 = v13;

  return v14;
}

- (void)revokeSentMessage:(id)a3 inChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.revokeSentMessage(_:in:)(v6, v7);
}

- (void)didDeleteChatGUID:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 groupID:(id)a6 originalGroupID:(id)a7 properties:(id)a8 lastAddressedLocalHandle:(id)a9 lastAddressedSIMID:(id)a10
{
  v35 = a5;
  v34 = sub_F07EC();
  v15 = v14;
  v33 = sub_F07EC();
  v17 = v16;
  if (a6)
  {
    v32 = sub_F07EC();
    v36 = v18;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v20 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v32 = 0;
  v36 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_F07EC();
  v20 = v19;
  if (a8)
  {
LABEL_4:
    v21 = sub_F076C();
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v22 = a9;
  v23 = a10;
  v24 = self;
  if (v22)
  {
    v25 = sub_F07EC();
    v27 = v26;

    if (v23)
    {
LABEL_10:
      v28 = sub_F07EC();
      v30 = v29;

      goto LABEL_13;
    }
  }

  else
  {
    v25 = 0;
    v27 = 0;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  v28 = 0;
  v30 = 0;
LABEL_13:
  RCSServiceSession.didDeleteChatGUID(_:chatIdentifier:style:groupID:originalGroupID:properties:lastAddressedLocalHandle:lastAddressedSIMID:)(v34, v15, v33, v17, v35, v32, v36, v31, v20, v21, v25, v27, v28, v30);
}

- (BOOL)shouldSendReadReceiptsForChat:(id)a3 style:(unsigned __int8)a4
{
  v6 = sub_F07EC();
  v8 = v7;
  v9 = self;
  v10 = RCSServiceSession.shouldSendReadReceipts(forChat:style:)(v6, v8, a4);

  return v10 & 1;
}

- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7
{
  v9 = a5;
  if (a4)
  {
    sub_F07EC();
    if (v9)
    {
LABEL_3:
      v12 = sub_F07EC();
      v9 = v13;
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  v14 = a3;
  v15 = self;
  sub_93078(a3, v12, v9, a6, a7);
}

- (BOOL)chatCanMergeWithSuperChat:(id)a3
{
  v4 = a3;
  v5 = self;
  CanMerge13withSuperChatSbSo7IMDChatC_tF_0 = _sSo17RCSServiceSessionC3RCSE12chatCanMerge13withSuperChatSbSo7IMDChatC_tF_0(v4);

  return CanMerge13withSuperChatSbSo7IMDChatC_tF_0;
}

- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9
{
  if (a3)
  {
    v27 = sub_F07EC();
    v29 = v12;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    v15 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  v29 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_F07EC();
  v15 = v14;
  if (a5)
  {
LABEL_4:
    v16 = sub_F07EC();
    a5 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  v18 = self;
  v19 = sub_F07EC();
  v21 = v20;
  v22 = sub_F07EC();
  v24 = v23;
  v25 = sub_F07EC();
  RCSServiceSession.updateDisplayName(_:fromDisplayName:fromID:forChatID:identifier:style:messageID:)(v27, v29, v13, v15, v16, a5, v19, v21, v22, v24, a8, v25, v26);
}

- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8
{
  v23 = a6;
  if (a3)
  {
    v10 = sub_F07EC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_F07EC();
  v15 = v14;
  v16 = sub_F07EC();
  v18 = v17;
  v19 = sub_F07EC();
  v21 = v20;
  v22 = self;
  RCSServiceSession.sendGroupPhotoUpdate(_:toChatID:identifier:style:account:isPhotoRefresh:)(v10, v12, v13, v15, v16, v18, v23, v19, v21, a8);
}

- (void)_updatePhoneNumberCallerID
{
  v2.receiver = self;
  v2.super_class = RCSServiceSession;
  [(RCSServiceSession *)&v2 _updatePhoneNumberCallerID];
}

- (id)groupIDForChat:(id)a3
{
  v4 = a3;
  v5 = self;
  RCSServiceSession.groupID(for:)(v4);

  v6 = sub_F07BC();

  return v6;
}

- (BOOL)allowedToSendMessage:(id)a3 toChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession.allowed(toSendMessage:to:)(v6, v7);
  v10 = v9;

  return v10 & 1;
}

- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(*&self->IMDTelephonyServiceSession_opaque[OBJC_IVAR___RCSServiceSession_state] + 136);
  if (v8)
  {
    v9 = v7;
    v10 = *(*v8 + 144);
    v11 = self;

    v10(sub_94000, v9, a4);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)allowedToOverwriteOriginalGroupIDForChat:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = RCSServiceSession.allowedToOverwriteOriginalGroupID(for:)(v4);

  return self & 1;
}

- (void)waitForChatRelayReadiness:(id)a3 withBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_93714(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)_messageUpgradesWhenSentFromCurrentService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo17RCSServiceSessionC3RCSE24_messageUpgradesWhenSent18fromCurrentServiceSbSo13IMMessageItemC_tF_0(v4);

  return v6 & 1;
}

- (void)_reportTelephonyJunkForMessageItem:(id)a3 chat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RCSServiceSession._reportTelephonyJunk(for:chat:)(v6, a4);
}

- (void)fireTimerWithTimer:(id)a3
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_F0AEC();
  v10 = a3;
  v11 = self;
  v12 = v10;
  v13 = sub_F0ADC();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_3CC0C(0, 0, v8, &unk_F3F40, v14);
}

- (void)handler:(id)a3 messageIDDelivered:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 timeStamp:(id)a7 storageContext:(id)a8
{
  if (a4)
  {
    v14 = sub_F07EC();
    v16 = v15;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  if (a5)
  {
LABEL_3:
    sub_F07EC();
  }

LABEL_4:
  if (a6)
  {
    sub_F07EC();
  }

  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = self;
  sub_A7E58(v14, v16);
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_F0AFC();
  v13 = sub_F0B1C();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_F0AEC();
  v14 = v11;
  swift_unknownObjectRetain();
  v15 = v12;
  v16 = sub_F0ADC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = v14;
  v17[6] = a4;
  sub_3CC0C(0, 0, v10, &unk_F42B8, v17);

  swift_unknownObjectRelease();
}

@end