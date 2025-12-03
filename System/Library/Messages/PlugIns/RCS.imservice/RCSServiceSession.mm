@interface RCSServiceSession
- (BOOL)_messageUpgradesWhenSentFromCurrentService:(id)service;
- (BOOL)allowedToOverwriteOriginalGroupIDForChat:(id)chat;
- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat;
- (BOOL)chatCanMergeWithSuperChat:(id)chat;
- (BOOL)isGroupMessagingEnabledFor:(id)for;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item;
- (BOOL)replicationRequiredForMessageBodyAttributeName:(id)name;
- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)number simID:(id)d;
- (BOOL)shouldSendReadReceiptsForChat:(id)chat style:(unsigned __int8)style;
- (RCSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (id)groupIDForChat:(id)chat;
- (id)makeSenderFor:(id)for forChat:(id)chat chatStyle:(unsigned __int8)style recipients:(id)recipients;
- (id)replicationPhoneNumbers;
- (int64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d;
- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d;
- (void)_enqueueBlock:(id)block withTimeout:(double)timeout;
- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat;
- (void)_updatePhoneNumberCallerID;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)capabilitiesFound:(id)found destination:(id)destination withCapabilities:(id)capabilities;
- (void)cleanupPendingGroupChangesFor:(id)for;
- (void)composingIndicator:(id)indicator from:(id)from withID:(id)d withIndication:(id)indication withSecurity:(id)security;
- (void)destinationCapabilitiesUpdated:(id)updated withCapabilities:(id)capabilities;
- (void)didDeleteChatGUID:(id)d chatIdentifier:(id)identifier style:(unsigned __int8)style groupID:(id)iD originalGroupID:(id)groupID properties:(id)properties lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)self0;
- (void)didDiscover:(id)discover destination:(id)destination withCapabilities:(id)capabilities withResult:(id)result;
- (void)didFinishExit:(id)exit withResult:(id)result;
- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result;
- (void)didFinishGroupChatCreation:(id)creation forGroupChat:(id)chat withResult:(id)result;
- (void)didFinishGroupUpdate:(id)update forGroupChat:(id)chat;
- (void)didFinishSubjectChange:(id)change withNewSubject:(id)subject withResult:(id)result;
- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style fromIDSID:(id)d;
- (void)didReportChatbotSpam:(id)spam forChatbot:(id)chatbot withResult:(id)result;
- (void)didReportSpam:(id)spam forDestination:(id)destination withResult:(id)result;
- (void)dispositionInformation:(id)information withStatus:(id)status withSecurity:(id)security;
- (void)evictedFromGroup:(id)group withGroupInfo:(id)info evictedBy:(id)by;
- (void)fireTimerWithTimer:(id)timer;
- (void)forceReloadChats;
- (void)groupComposingIndicator:(id)indicator fromGroup:(id)group from:(id)from withID:(id)d withIndication:(id)indication;
- (void)handler:(id)handler messageIDDelivered:(id)delivered toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context;
- (void)incomingGroupChat:(id)chat withGroupInformation:(id)information;
- (void)invitePersonInfo:(id)info withMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)leaveChat:(id)chat style:(unsigned __int8)style;
- (void)messageReceived:(id)received withID:(id)d ofType:(id)type;
- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)requestToDisableAnonymization:(id)anonymization from:(id)from withID:(id)d;
- (void)requestToEnableDisplayedNotifications:(id)notifications from:(id)from withID:(id)d;
- (void)revokeSentMessage:(id)message inChat:(id)chat;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh;
- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only;
- (void)subjectUpdated:(id)updated forGroupChat:(id)chat withNewSubject:(id)subject updatedBy:(id)by;
- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration;
- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID;
- (void)waitForChatRelayReadiness:(id)readiness withBlock:(id)block;
@end

@implementation RCSServiceSession

- (BOOL)isGroupMessagingEnabledFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo17RCSServiceSessionC3RCSE23isGroupMessagingEnabled3forSbSo7IMDChatC_tF_0(forCopy);

  return v6 & 1;
}

- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d
{
  if (!d)
  {
    return 104857600;
  }

  v6 = sub_F07EC();
  v8 = v7;
  selfCopy = self;
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

- (void)systemConfigurationChanged:(id)changed withConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  selfCopy = self;
  RCSServiceSession.systemConfigurationChanged(_:with:)(changedCopy, configurationCopy);
}

- (void)messageReceived:(id)received withID:(id)d ofType:(id)type
{
  receivedCopy = received;
  dCopy = d;
  typeCopy = type;
  selfCopy = self;
  RCSServiceSession.messageReceived(_:with:ofType:)(receivedCopy, dCopy, typeCopy);
}

- (void)dispositionInformation:(id)information withStatus:(id)status withSecurity:(id)security
{
  informationCopy = information;
  statusCopy = status;
  securityCopy = security;
  selfCopy = self;
  _sSo17RCSServiceSessionC3RCSE22dispositionInformation_4withAEySo31CTXPCServiceSubscriptionContextC_So32CTLazuliMessageDispositionStatusCSo0J8SecurityCSgtF_0(informationCopy, statusCopy);
}

- (void)groupComposingIndicator:(id)indicator fromGroup:(id)group from:(id)from withID:(id)d withIndication:(id)indication
{
  indicatorCopy = indicator;
  groupCopy = group;
  fromCopy = from;
  dCopy = d;
  indicationCopy = indication;
  selfCopy = self;
  RCSServiceSession.groupComposingIndicator(_:fromGroup:from:with:withIndication:)(indicatorCopy, groupCopy, fromCopy, dCopy, indicationCopy);
}

- (void)composingIndicator:(id)indicator from:(id)from withID:(id)d withIndication:(id)indication withSecurity:(id)security
{
  indicatorCopy = indicator;
  fromCopy = from;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
  selfCopy = self;
  RCSServiceSession.composingIndicator(_:from:with:withIndication:with:)(indicatorCopy, fromCopy, dCopy, indicationCopy, security);
}

- (void)requestToDisableAnonymization:(id)anonymization from:(id)from withID:(id)d
{
  anonymizationCopy = anonymization;
  fromCopy = from;
  dCopy = d;
  selfCopy = self;
  _sSo17RCSServiceSessionC3RCSE7request22toDisableAnonymization4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0M9MessageIDCtF_0(anonymizationCopy, fromCopy, dCopy);
}

- (void)requestToEnableDisplayedNotifications:(id)notifications from:(id)from withID:(id)d
{
  notificationsCopy = notifications;
  fromCopy = from;
  dCopy = d;
  selfCopy = self;
  _sSo17RCSServiceSessionC3RCSE7request30toEnableDisplayedNotifications4from4withySo31CTXPCServiceSubscriptionContextC_So19CTLazuliDestinationCSo0N9MessageIDCtF_0(notificationsCopy, fromCopy, dCopy);
}

- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result
{
  informationCopy = information;
  botCopy = bot;
  dataCopy = data;
  resultCopy = result;
  selfCopy = self;
  sub_54564(botCopy, data);
}

- (void)destinationCapabilitiesUpdated:(id)updated withCapabilities:(id)capabilities
{
  updatedCopy = updated;
  capabilitiesCopy = capabilities;
  selfCopy = self;
  RCSServiceSession.destinationCapabilitiesUpdated(_:withCapabilities:)(updatedCopy, capabilitiesCopy);
}

- (void)didDiscover:(id)discover destination:(id)destination withCapabilities:(id)capabilities withResult:(id)result
{
  discoverCopy = discover;
  destinationCopy = destination;
  capabilitiesCopy = capabilities;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didDiscover(_:destination:withCapabilities:with:)(discoverCopy, destinationCopy, capabilities, resultCopy);
}

- (void)forceReloadChats
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance _forceReloadChats:1];
}

- (void)capabilitiesFound:(id)found destination:(id)destination withCapabilities:(id)capabilities
{
  foundCopy = found;
  destinationCopy = destination;
  capabilitiesCopy = capabilities;
  selfCopy = self;
  RCSServiceSession.capabilitiesFound(_:destination:withCapabilities:)(foundCopy, destinationCopy, capabilitiesCopy);
}

- (void)subjectUpdated:(id)updated forGroupChat:(id)chat withNewSubject:(id)subject updatedBy:(id)by
{
  updatedCopy = updated;
  chatCopy = chat;
  subjectCopy = subject;
  byCopy = by;
  selfCopy = self;
  RCSServiceSession.subjectUpdated(_:forGroupChat:withNewSubject:updatedBy:)(updatedCopy, chatCopy, subject, by);
}

- (void)incomingGroupChat:(id)chat withGroupInformation:(id)information
{
  chatCopy = chat;
  informationCopy = information;
  selfCopy = self;
  RCSServiceSession.incomingGroupChat(_:withGroupInformation:)(chatCopy, informationCopy);
}

- (void)didFinishGroupUpdate:(id)update forGroupChat:(id)chat
{
  updateCopy = update;
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession.didFinishGroupUpdate(_:forGroupChat:)(updateCopy, chatCopy);
}

- (void)didFinishExit:(id)exit withResult:(id)result
{
  exitCopy = exit;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didFinishExit(_:with:)(exitCopy, resultCopy);
}

- (void)evictedFromGroup:(id)group withGroupInfo:(id)info evictedBy:(id)by
{
  groupCopy = group;
  infoCopy = info;
  byCopy = by;
  selfCopy = self;
  RCSServiceSession.evicted(fromGroup:withGroupInfo:evictedBy:)(groupCopy, infoCopy, by);
}

- (void)didFinishGroupChatCreation:(id)creation forGroupChat:(id)chat withResult:(id)result
{
  creationCopy = creation;
  chatCopy = chat;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didFinishGroupChatCreation(_:forGroupChat:with:)(creationCopy, chatCopy, resultCopy);
}

- (void)didFinishSubjectChange:(id)change withNewSubject:(id)subject withResult:(id)result
{
  changeCopy = change;
  subjectCopy = subject;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didFinishSubjectChange(_:withNewSubject:with:)(changeCopy, subject, resultCopy);
}

- (void)didReportChatbotSpam:(id)spam forChatbot:(id)chatbot withResult:(id)result
{
  spamCopy = spam;
  chatbotCopy = chatbot;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didReportChatbotSpam(_:forChatbot:with:)(spamCopy, chatbotCopy, resultCopy);
}

- (void)didReportSpam:(id)spam forDestination:(id)destination withResult:(id)result
{
  spamCopy = spam;
  destinationCopy = destination;
  resultCopy = result;
  selfCopy = self;
  RCSServiceSession.didReportSpam(_:for:with:)(spamCopy, destinationCopy, resultCopy);
}

- (void)cleanupPendingGroupChangesFor:(id)for
{
  v4 = sub_F07EC();
  v6 = v5;
  selfCopy = self;
  sub_613D0(v4, v6);
}

- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style fromIDSID:(id)d
{
  v10 = sub_F07EC();
  v12 = v11;
  if (d)
  {
    v13 = sub_F07EC();
    d = v14;
  }

  else
  {
    v13 = 0;
  }

  messageCopy = message;
  selfCopy = self;
  RCSServiceSession.didReceiveMessage(_:forChat:style:fromIDSID:)(messageCopy, v10, v12, style, v13, d);
}

- (void)leaveChat:(id)chat style:(unsigned __int8)style
{
  v6 = sub_F07EC();
  v8 = v7;
  selfCopy = self;
  RCSServiceSession.leaveChat(_:style:)(v6, v8, style);
}

- (void)invitePersonInfo:(id)info withMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  infoCopy = info;
  if (info)
  {
    sub_388C8(&qword_128528, &unk_F36C0);
    infoCopy = sub_F09FC();
  }

  if (d)
  {
    v12 = sub_F07EC();
    d = v13;
    if (identifier)
    {
LABEL_5:
      v14 = sub_F07EC();
      identifier = v15;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (identifier)
    {
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_8:
  selfCopy = self;
  sub_7BDB0(2, infoCopy, v12, d, v14, identifier, style);
}

- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  infoCopy = info;
  if (info)
  {
    sub_388C8(&qword_128528, &unk_F36C0);
    infoCopy = sub_F09FC();
  }

  if (d)
  {
    v11 = sub_F07EC();
    d = v12;
    if (identifier)
    {
LABEL_5:
      v13 = sub_F07EC();
      identifier = v14;
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (identifier)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_8:
  selfCopy = self;
  sub_7BDB0(3, infoCopy, v11, d, v13, identifier, style);
}

- (id)replicationPhoneNumbers
{
  selfCopy = self;
  RCSServiceSession.replicationPhoneNumbers()();

  v3 = sub_F0C0C();

  return v3;
}

- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)number simID:(id)d
{
  v6 = sub_F07EC();
  v8 = v7;
  if (d)
  {
    v9 = sub_F07EC();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12._countAndFlagsBits = v6;
  v12._object = v8;
  v13.value._countAndFlagsBits = v9;
  v13.value._object = d;
  v14 = RCSServiceSession.replicationRequirementsSatisfied(forPhoneNumber:simID:)(v12, v13);

  return v14;
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  RCSServiceSession.replicationRequiredForFeaturesUsed(by:)(itemCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)replicationRequiredForMessageBodyAttributeName:(id)name
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
    nameCopy = name;
    selfCopy = self;

    if (v10)
    {

      return 0;
    }

    else
    {
      v15.receiver = selfCopy;
      v15.super_class = RCSServiceSession;
      v14 = [(RCSServiceSession *)&v15 replicationRequiredForMessageBodyAttributeName:nameCopy];

      return v14;
    }
  }
}

- (RCSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  RCSServiceSession.init(account:service:replicatingFor:)(accountCopy, serviceCopy, session);
  return result;
}

- (int64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d
{
  v6 = objc_opt_self();
  numberCopy = number;
  dCopy = d;
  sharedManager = [v6 sharedManager];
  v10 = [sharedManager groupMessagingMaxGroupSizeForPhoneNumber:numberCopy simID:dCopy];

  return v10;
}

- (id)makeSenderFor:(id)for forChat:(id)chat chatStyle:(unsigned __int8)style recipients:(id)recipients
{
  sub_388C8(&qword_128568, &qword_F3950);
  sub_F09FC();
  forCopy = for;
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession.makeSender(for:for:chatStyle:recipients:)(forCopy, chatCopy, style);
  v14 = v13;

  return v14;
}

- (void)revokeSentMessage:(id)message inChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession.revokeSentMessage(_:in:)(messageCopy, chatCopy);
}

- (void)didDeleteChatGUID:(id)d chatIdentifier:(id)identifier style:(unsigned __int8)style groupID:(id)iD originalGroupID:(id)groupID properties:(id)properties lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)self0
{
  styleCopy = style;
  v34 = sub_F07EC();
  v15 = v14;
  v33 = sub_F07EC();
  v17 = v16;
  if (iD)
  {
    v32 = sub_F07EC();
    v36 = v18;
    if (groupID)
    {
      goto LABEL_3;
    }

LABEL_6:
    v31 = 0;
    v20 = 0;
    if (properties)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v32 = 0;
  v36 = 0;
  if (!groupID)
  {
    goto LABEL_6;
  }

LABEL_3:
  v31 = sub_F07EC();
  v20 = v19;
  if (properties)
  {
LABEL_4:
    v21 = sub_F076C();
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  handleCopy = handle;
  mIDCopy = mID;
  selfCopy = self;
  if (handleCopy)
  {
    v25 = sub_F07EC();
    v27 = v26;

    if (mIDCopy)
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
    if (mIDCopy)
    {
      goto LABEL_10;
    }
  }

  v28 = 0;
  v30 = 0;
LABEL_13:
  RCSServiceSession.didDeleteChatGUID(_:chatIdentifier:style:groupID:originalGroupID:properties:lastAddressedLocalHandle:lastAddressedSIMID:)(v34, v15, v33, v17, styleCopy, v32, v36, v31, v20, v21, v25, v27, v28, v30);
}

- (BOOL)shouldSendReadReceiptsForChat:(id)chat style:(unsigned __int8)style
{
  v6 = sub_F07EC();
  v8 = v7;
  selfCopy = self;
  v10 = RCSServiceSession.shouldSendReadReceipts(forChat:style:)(v6, v8, style);

  return v10 & 1;
}

- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only
{
  identifierCopy = identifier;
  if (d)
  {
    sub_F07EC();
    if (identifierCopy)
    {
LABEL_3:
      v12 = sub_F07EC();
      identifierCopy = v13;
      goto LABEL_6;
    }
  }

  else if (identifier)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  messageCopy = message;
  selfCopy = self;
  sub_93078(message, v12, identifierCopy, style, only);
}

- (BOOL)chatCanMergeWithSuperChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  CanMerge13withSuperChatSbSo7IMDChatC_tF_0 = _sSo17RCSServiceSessionC3RCSE12chatCanMerge13withSuperChatSbSo7IMDChatC_tF_0(chatCopy);

  return CanMerge13withSuperChatSbSo7IMDChatC_tF_0;
}

- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID
{
  if (name)
  {
    v27 = sub_F07EC();
    v29 = v12;
    if (displayName)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    v15 = 0;
    if (d)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  v29 = 0;
  if (!displayName)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_F07EC();
  v15 = v14;
  if (d)
  {
LABEL_4:
    v16 = sub_F07EC();
    d = v17;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  selfCopy = self;
  v19 = sub_F07EC();
  v21 = v20;
  v22 = sub_F07EC();
  v24 = v23;
  v25 = sub_F07EC();
  RCSServiceSession.updateDisplayName(_:fromDisplayName:fromID:forChatID:identifier:style:messageID:)(v27, v29, v13, v15, v16, d, v19, v21, v22, v24, style, v25, v26);
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh
{
  styleCopy = style;
  if (update)
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
  selfCopy = self;
  RCSServiceSession.sendGroupPhotoUpdate(_:toChatID:identifier:style:account:isPhotoRefresh:)(v10, v12, v13, v15, v16, v18, styleCopy, v19, v21, refresh);
}

- (void)_updatePhoneNumberCallerID
{
  v2.receiver = self;
  v2.super_class = RCSServiceSession;
  [(RCSServiceSession *)&v2 _updatePhoneNumberCallerID];
}

- (id)groupIDForChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession.groupID(for:)(chatCopy);

  v6 = sub_F07BC();

  return v6;
}

- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession.allowed(toSendMessage:to:)(messageCopy, chatCopy);
  v10 = v9;

  return v10 & 1;
}

- (void)_enqueueBlock:(id)block withTimeout:(double)timeout
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(*&self->IMDTelephonyServiceSession_opaque[OBJC_IVAR___RCSServiceSession_state] + 136);
  if (v8)
  {
    v9 = v7;
    v10 = *(*v8 + 144);
    selfCopy = self;

    v10(sub_94000, v9, timeout);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)allowedToOverwriteOriginalGroupIDForChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  LOBYTE(self) = RCSServiceSession.allowedToOverwriteOriginalGroupID(for:)(chatCopy);

  return self & 1;
}

- (void)waitForChatRelayReadiness:(id)readiness withBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  readinessCopy = readiness;
  selfCopy = self;
  sub_93714(readinessCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)_messageUpgradesWhenSentFromCurrentService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = _sSo17RCSServiceSessionC3RCSE24_messageUpgradesWhenSent18fromCurrentServiceSbSo13IMMessageItemC_tF_0(serviceCopy);

  return v6 & 1;
}

- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat
{
  itemCopy = item;
  chatCopy = chat;
  selfCopy = self;
  RCSServiceSession._reportTelephonyJunk(for:chat:)(itemCopy, chat);
}

- (void)fireTimerWithTimer:(id)timer
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_F0AEC();
  timerCopy = timer;
  selfCopy = self;
  v12 = timerCopy;
  v13 = sub_F0ADC();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = selfCopy;
  v14[5] = v12;
  sub_3CC0C(0, 0, v8, &unk_F3F40, v14);
}

- (void)handler:(id)handler messageIDDelivered:(id)delivered toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context
{
  if (delivered)
  {
    v14 = sub_F07EC();
    v16 = v15;
    if (!identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  if (identifier)
  {
LABEL_3:
    sub_F07EC();
  }

LABEL_4:
  if (fromIdentifier)
  {
    sub_F07EC();
  }

  handlerCopy = handler;
  stampCopy = stamp;
  contextCopy = context;
  selfCopy = self;
  sub_A7E58(v14, v16);
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  requestCopy = request;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_F0AFC();
  v13 = sub_F0B1C();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_F0AEC();
  v14 = requestCopy;
  swift_unknownObjectRetain();
  v15 = selfCopy;
  v16 = sub_F0ADC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = v14;
  v17[6] = handler;
  sub_3CC0C(0, 0, v10, &unk_F42B8, v17);

  swift_unknownObjectRelease();
}

@end