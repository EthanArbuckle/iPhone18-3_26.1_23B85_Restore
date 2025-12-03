@interface MessageServiceSession
- (BOOL)_amIMentioned:(id)mentioned inMentions:(id)mentions;
- (BOOL)_convergesDisplayNames;
- (BOOL)_failSendingMessageIfNeeded:(id)needed withContext:(id)context;
- (BOOL)_handleDeviceRegistrationForMessage:(id)message withContext:(id)context;
- (BOOL)_handleTypingIndicatorMessage:(id)message withContext:(id)context;
- (BOOL)_isAllowlistedUnencryptedSender:(id)sender;
- (BOOL)_isFromLinkedID:(id)d fromID:(id)iD;
- (BOOL)_isRegisteredURI:(id)i;
- (BOOL)_originalTimestampWithinAcceptableWindow:(id)window timestamp:(id)timestamp;
- (BOOL)_richLinkPendSendingWithGUID:(id)d;
- (BOOL)_shouldBlackholeChatFromSender:(id)sender toRecipient:(id)recipient forAccount:(id)account;
- (BOOL)_shouldBlackholeGroupChatFromSender:(id)sender toRecipient:(id)recipient withOtherParticipants:(id)participants forAccount:(id)account;
- (BOOL)_shouldIgnoreMessageFromSender:(id)sender balloonBID:(id)d fromMe:(BOOL)me;
- (BOOL)_shouldInitiateTelephonyConversationForMessage:(id)message;
- (BOOL)_shouldOverrideTypingIndicator;
- (BOOL)_shouldSendAppTypingIndicator;
- (BOOL)_transferIsValidForServiceSession:(id)session;
- (BOOL)_updateAutomaticTranslationProperties:(id)properties withIncomingProperties:(id)incomingProperties;
- (BOOL)_updateReadReceiptProperties:(id)properties withIncomingProperties:(id)incomingProperties;
- (BOOL)networkConditionsAllowLogin;
- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds;
- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations;
- (BOOL)shouldDownloadGroupPhoto:(id)photo;
- (BOOL)shouldUploadGroupPhoto:(id)photo;
- (IMDCKUtilities)ckUtilities;
- (IMDMessageStore)messageStore;
- (MessageServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (double)_messageHQUpdateReceiveTimeout;
- (id)_buildSendMessageContextWithChatIdentifier:(id)identifier withChatStyle:(unsigned __int8)style withServiceSession:(id)session withMessage:(id)message destinations:(id)destinations;
- (id)_calculateQueueIdentifierForMessage:(id)message;
- (id)_firstiMessageChat;
- (id)_generateAndStoreGroupActionItemForChat:(id)chat sender:(id)sender;
- (id)_handleIDsForDestinations:(id)destinations;
- (id)_messageDictionaryForDeleteCommandShouldResetPreference:(BOOL)preference;
- (id)_messageDictionaryToReflectWithDeliveryReceipt:(id)receipt;
- (id)_messageItemToConsumeForNewBreadcrumbMessage:(id)message outBreadcrumbItems:(id *)items;
- (id)_processMessageForSending:(id)sending withContext:(id)context;
- (id)_processMessageForSendingToGroupIfNeeded:(id)needed withContext:(id)context;
- (id)_pushHandlerForIDSAccount:(id)account;
- (id)_setCallerIDOnMessage:(id)message onChat:(id)chat withIDSAccount:(id *)account withServiceSession:(id)session;
- (id)bizIDSAccountFromMadridIDSAccount:(id)account;
- (id)callerURI;
- (id)callerURIForMessageServiceType:(unsigned int)type;
- (id)callerURIUsingCalleeURI:(id)i;
- (id)fallBackBizIDSAccount;
- (id)fileTransferDictionaryForChat:(id)chat;
- (id)generateAndStoreAssetChangeStatusItemForChat:(id)chat sender:(id)sender fileTransferGuid:(id)guid assetStatusChange:(id)change;
- (id)idsAccountForFromURI:(id)i toURI:(id)rI;
- (id)idsServiceForIDSAccount:(id)account;
- (id)storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:(id)necessary inChatWithIdentifier:(id)identifier;
- (unint64_t)_computeFlagsForIncomingMessage:(unint64_t)message isFromMe:(BOOL)me unfinished:(BOOL)unfinished isAudioMessage:(BOOL)audioMessage isAutoReply:(BOOL)reply isExpirable:(BOOL)expirable isGroupTypingMessage:(BOOL)typingMessage messageSource:(unint64_t)self0 participants:(id)self1 hasUnseenMention:(BOOL)self2 isSOS:(BOOL)self3 isCritical:(BOOL)self4;
- (unint64_t)_failuresForID:(id)d;
- (unint64_t)_maxFailuresAllowed;
- (unint64_t)_replicationEditDelay;
- (unsigned)messageServiceTypeForURI:(id)i;
- (void)_FTAWDLogForMessage:(id)message withContext:(id)context;
- (void)_autoReportChatAsUnknown:(id)unknown chatIsNew:(BOOL)new;
- (void)_automation_receiveDictionary:(id)dictionary options:(id)options fromHandle:(id)handle;
- (void)_automation_sendDictionary:(id)dictionary options:(id)options toHandles:(id)handles;
- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchContext:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)messageContext isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7;
- (void)_cacheMaintenanceForMessageGUIDsSeenInLastIDSCacheFlush;
- (void)_checkGlobalReadReceiptValueAndUpdateIfNeeded:(id)needed;
- (void)_configurePrimaryServiceSessionWithAccount:(id)account service:(id)service;
- (void)_deactivateServiceIfNeededForContext:(id)context;
- (void)_deliverMessage:(id)message withContext:(id)context withBlock:(id)block;
- (void)_engroupForChat:(id)chat idsAccount:(id)account completion:(id)completion;
- (void)_enqueueBlock:(id)block withTimeout:(double)timeout description:(id)description;
- (void)_fixParticipantsForChat:(id)chat;
- (void)_flushQueuedMessageWrapperBlocks;
- (void)_forwardP2PGroupCommand:(id)command fromPerson:(id)person toPerson:(id)toPerson toGroup:(id)group toToken:(id)token messageID:(id)d;
- (void)_handleDeleteCommandWithMessageDictionary:(id)dictionary;
- (void)_handleDeliveryFailureForMessage:(id)message withContext:(id)context;
- (void)_handleFakeReceiptBlock:(id)block withContext:(id)context withMsg:(id)msg;
- (void)_handleFileTransferUpdated:(id)updated;
- (void)_handleIsMeToMeForMessage:(id)message withContext:(id)context;
- (void)_handleMessageSentToSelf:(id)self withContext:(id)context isLocal:(BOOL)local;
- (void)_handleNicknameReceived:(id)received fromIdentifier:(id)identifier withMessageItem:(id)item isSnapTrustedUser:(BOOL)user;
- (void)_handleScheduledMessageSendFailure:(id)failure;
- (void)_handleUpdateNotificationTimeManagerForMessage:(id)message withContext:(id)context;
- (void)_iMessageBagLoaded:(id)loaded;
- (void)_incrementDecryptionFailureForID:(id)d;
- (void)_logCompletedMessage:(id)message withContext:(id)context;
- (void)_nicknameFetchCompletedMessage:(id)message synchronous:(BOOL)synchronous profile:(id)profile nickNameWasInCache:(BOOL)cache nickNameDownloadError:(id)error;
- (void)_notifyDidSendMessage:(id)message withContext:(id)context;
- (void)_notifyNameAndPhotoControllerOfMessage:(id)message onChat:(id)chat;
- (void)_notifyOfSendMessage:(id)message withContext:(id)context;
- (void)_primeServerBags;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success;
- (void)_refreshGroupPhotoTTLIfNecessary:(id)necessary withContext:(id)context;
- (void)_refreshTranscriptBackgroundTTLIfNecessary:(id)necessary withContext:(id)context;
- (void)_registerKeepMessagesSettingReflection;
- (void)_registerReadReceiptSettingReflection;
- (void)_relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only;
- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (void)_requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)_resetFailureRetries;
- (void)_sendHighResolutionImagesForMessage:(id)message fromID:(id)d fromAccount:(id)account toURIs:(id)is toChat:(id)chat;
- (void)_sendSyndicationAction:(id)action toChat:(id)chat;
- (void)_setWeeklyFailureResetTimer;
- (void)_setupPushHandlerWithAccount:(id)account;
- (void)_storeSentMessage:(id)message withContext:(id)context;
- (void)_updateBlackholeStatusIfNeededWithMessage:(id)message withContext:(id)context;
- (void)_updateChatProperties:(id)properties withProperties:(id)withProperties;
- (void)_updateLastDeviceActivityForCloudKit;
- (void)_updateNetworkOverride;
- (void)_updateOffGridStatusIfNeededWithMessage:(id)message context:(id)context;
- (void)_updateStoredBreadcrumbIfNeeded:(id)needed onChat:(id)chat;
- (void)_updateTransfersForAttributionInfoArray:(id)array message:(id)message;
- (void)addAccount:(id)account;
- (void)addItemToRecentsIfApplicable:(id)applicable;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)cancelScheduledMessageWithGUID:(id)d;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)dealloc;
- (void)didReplaceMessage:(id)message newMessage:(id)newMessage;
- (void)eagerUploadCancel:(id)cancel;
- (void)eagerUploadTransfer:(id)transfer recipients:(id)recipients;
- (void)enqueReplayMessageCallback:(id)callback;
- (void)forwardDeliveryReceiptForMessageID:(id)d withAccount:(id)account callerURI:(id)i;
- (void)generateTranscriptBackground:(id)background destinationURL:(id)l senderContext:(id)context resultBlock:(id)block;
- (void)groupPhotoUploadCompletedForChat:(id)chat fileTransferGuid:(id)guid callerURI:(id)i fromAccount:(id)account message:(id)message displayIDs:(id)ds additionalContext:(id)context success:(BOOL)self0 isPhotoRefresh:(BOOL)self1 error:(unsigned int)self2;
- (void)groupPhotoUploadFailedForChat:(id)chat fileTransferGuid:(id)guid;
- (void)handleBreadcrumbForNewSentMessageItemIfNecessary:(id)necessary withContext:(id)context;
- (void)handler:(id)handler bubblePayloadData:(id)data forMessageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4;
- (void)handler:(id)handler deleteCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler genericNotification:(id)notification incomingMessage:(id)message userInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5;
- (void)handler:(id)handler groupMessageCommand:(id)command encryptedGroupCommand:(id)groupCommand messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5;
- (void)handler:(id)handler incomingMessage:(id)message originalEncryptionType:(id)type messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 incomingEngroup:(id)self2 needsDeliveryReceipt:(id)self3 deliveryContext:(id)self4 storageContext:(id)self5 batchContext:(id)self6 messageContext:(id)self7 isBeingReplayed:(BOOL)self8 mergeID:(id)self9 wantsCheckpointing:(BOOL)checkpointing isSnapTrustedUser:(BOOL)user;
- (void)handler:(id)handler locationShareInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler messageIDDelivered:(id)delivered toIdentifier:(id)identifier status:(id)status deliveryContext:(id)context timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler messageIDPlayed:(id)played toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler messageIDRead:(id)read toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler messageIDReflectedDelivered:(id)delivered incomingMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier status:(id)status deliveryContext:(id)context timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5;
- (void)handler:(id)handler messageIDSaved:(id)saved ofType:(id)type toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier groupContext:(id)context fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5;
- (void)handler:(id)handler nicknameInfoReceived:(id)received userInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4;
- (void)handler:(id)handler payloadDataRequest:(id)request;
- (void)handler:(id)handler payloadDataResponse:(id)response;
- (void)handler:(id)handler receivedError:(id)error forMessageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4 additionalInfo:(id)self5 shouldShowPeerErrors:(BOOL)self6;
- (void)handler:(id)handler recoverCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)handler:(id)handler remoteFileRequest:(id)request;
- (void)handler:(id)handler remoteFileResponse:(id)response;
- (void)handler:(id)handler updateAttachments:(id)attachments toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3 fileTransferUpdates:(id)self4;
- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)messageDeliveryController:(id)controller didFlushCacheForKTPeerURI:(id)i;
- (void)messageDeliveryController:(id)controller didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid;
- (void)messageDeliveryController:(id)controller serverUpdatedTimestampMessage:(id)message;
- (void)networkMonitorDidUpdate:(id)update;
- (void)preWarm;
- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context;
- (void)receivedGroupPhotoUpdate:(id)update chat:(id)chat sender:(id)sender isHidden:(BOOL)hidden;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (void)refreshRegistration;
- (void)refreshServiceCapabilities;
- (void)removeAccount:(id)account;
- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer;
- (void)replayMessage:(id)message;
- (void)requestBackgroundsFromRecentChatsIfNeeded;
- (void)requestProperty:(id)property ofPerson:(id)person;
- (void)requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d;
- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD;
- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendCrossServiceAssociationMessageWithReplacementGUID:(id)d messageGUID:(id)iD callerID:(id)callerID toID:(id)toID;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler;
- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account;
- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh;
- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block;
- (void)sendNicknameInfoToURIs:(id)is chatGUID:(id)d;
- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only;
- (void)sendRecoverCommand:(id)command forChatGUID:(id)d;
- (void)sendRepositionStickerMessage:(id)message chatIdentifier:(id)identifier accountID:(id)d style:(unsigned __int8)style;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers;
- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh;
- (void)stageMessageWrapperBlock:(id)block;
- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID;
- (void)uploadGroupPhotoForChat:(id)chat fileTransferGUID:(id)d itemGUID:(id)iD callerURI:(id)i idsAccount:(id)account isPhotoRefresh:(BOOL)refresh;
@end

@implementation MessageServiceSession

- (MessageServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  v41.receiver = self;
  v41.super_class = MessageServiceSession;
  v10 = [(MessageServiceSession *)&v41 initWithAccount:accountCopy service:serviceCopy replicatingForSession:session];
  v11 = v10;
  if (v10)
  {
    if (!session)
    {
      [(MessageServiceSession *)v10 _configurePrimaryServiceSessionWithAccount:accountCopy service:serviceCopy];
    }

    v12 = objc_alloc_init(NSMutableArray);
    pendingSendBlockQueue = v11->_pendingSendBlockQueue;
    v11->_pendingSendBlockQueue = v12;

    v14 = [[MessageDeliveryController alloc] initWithSession:v11];
    deliveryController = v11->_deliveryController;
    v11->_deliveryController = v14;

    [(MessageDeliveryController *)v11->_deliveryController setDelegate:v11];
    v16 = [[MessageAttachmentController alloc] initWithSession:v11];
    attachmentController = v11->_attachmentController;
    v11->_attachmentController = v16;

    v18 = [[MessageGroupController alloc] initWithSession:v11];
    groupController = v11->_groupController;
    v11->_groupController = v18;

    v20 = [[AttachmentRefreshDeliveryController alloc] initWithSession:v11];
    attachmentRefreshDeliveryController = v11->_attachmentRefreshDeliveryController;
    v11->_attachmentRefreshDeliveryController = v20;

    v22 = [[IMDChatAssetRefreshController alloc] initWithSession:v11];
    groupPhotoRefreshController = v11->_groupPhotoRefreshController;
    v11->_groupPhotoRefreshController = v22;

    v24 = [[IMDChatAssetRefreshController alloc] initWithSession:v11];
    transcriptBackgroundRefreshController = v11->_transcriptBackgroundRefreshController;
    v11->_transcriptBackgroundRefreshController = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    transcriptBackgroundMostRecentRequestDates = v11->_transcriptBackgroundMostRecentRequestDates;
    v11->_transcriptBackgroundMostRecentRequestDates = v26;

    v28 = objc_alloc_init(NSMutableSet);
    transcriptBackgroundTransfersCurrentlyDownloading = v11->_transcriptBackgroundTransfersCurrentlyDownloading;
    v11->_transcriptBackgroundTransfersCurrentlyDownloading = v28;

    v30 = objc_alloc_init(NSMutableDictionary);
    pendingGroupPhotoDownloads = v11->_pendingGroupPhotoDownloads;
    v11->_pendingGroupPhotoDownloads = v30;

    v32 = [[IMDScheduledMessageCoordinator alloc] initWithServiceSession:v11];
    scheduledMessageCoordinator = v11->_scheduledMessageCoordinator;
    v11->_scheduledMessageCoordinator = v32;

    v34 = objc_alloc_init(NSMutableDictionary);
    messageGUIDsSeenInLastIDSCacheFlush = v11->_messageGUIDsSeenInLastIDSCacheFlush;
    v11->_messageGUIDsSeenInLastIDSCacheFlush = v34;

    lastCacheFlushDate = v11->_lastCacheFlushDate;
    v11->_lastCacheFlushDate = 0;

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v11 selector:"_handleFileTransferUpdated:" name:IMDFileTransferUpdatedNotification object:0];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v11 selector:"_handleFileTransferAccepted:" name:IMDFileTransferAcceptedNotification object:0];

    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v11 selector:"_handleFileTransferBatchAccepted:" name:IMDFileTransferBatchAcceptedNotification object:0];
  }

  return v11;
}

- (void)_configurePrimaryServiceSessionWithAccount:(id)account service:(id)service
{
  accountCopy = account;
  [(MessageServiceSession *)self _primeServerBags];
  [(MessageServiceSession *)self _setupPushHandlerWithAccount:accountCopy];

  [(MessageServiceSession *)self _registerReadReceiptSettingReflection];
  [(MessageServiceSession *)self _registerKeepMessagesSettingReflection];
  if (+[IMDeviceUtilities supportsFaceTime])
  {
    v6 = [[IMDCallManager alloc] initWithServiceSession:self];
    callManager = self->_callManager;
    self->_callManager = v6;

    _objc_release_x1();
  }
}

- (void)_primeServerBags
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Priming Message Server bag", buf, 2u);
    }
  }

  v4 = [IDSServerBag sharedInstanceForBagType:1];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_iMessageBagLoaded:" name:IDSServerBagFinishedLoadingNotification object:v4];
  }

  [(MessageServiceSession *)self _updateNetworkOverride];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Priming FaceTime Server bag", v10, 2u);
    }
  }

  v7 = [IDSServerBag sharedInstanceForBagType:0];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "...done", v9, 2u);
    }
  }
}

- (void)_setupPushHandlerWithAccount:(id)account
{
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Setting up push handler", v11, 2u);
    }
  }

  v6 = objc_alloc_init(NSMutableArray);
  messagePushHandlers = self->_messagePushHandlers;
  self->_messagePushHandlers = v6;

  v8 = [MessagePushHandler alloc];
  idsAccount = [accountCopy idsAccount];
  v10 = [(MessagePushHandler *)v8 initWithIDSAccount:idsAccount];

  [(MessagePushHandler *)v10 addListener:self];
  [(NSMutableArray *)self->_messagePushHandlers addObject:v10];
}

- (void)_registerReadReceiptSettingReflection
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Setting up darwin notification observer for read receipts", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  objc_copyWeak(&v5, buf);
  dword_1238D8 = IMDispatchForNotify();

  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_registerKeepMessagesSettingReflection
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Setting up darwin notification observer for Keep Messages Updated", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_8F1C;
  v11 = &unk_111FA0;
  objc_copyWeak(&v12, buf);
  dword_1238DC = IMDispatchForNotify();

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Setting up darwin notification observer for Keep Messages Reset", v7, 2u);
    }
  }

  objc_copyWeak(&v6, buf);
  IMDispatchForNotify();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_messagePushHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) removeListener:self];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  if (dword_1238D8 != -1)
  {
    notify_cancel(dword_1238D8);
    dword_1238D8 = -1;
  }

  if (dword_1238DC != -1)
  {
    notify_cancel(dword_1238DC);
    dword_1238DC = -1;
  }

  [(IMTimer *)self->_resetFailureRetriesTimer invalidate];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:0 object:0];

  v9.receiver = self;
  v9.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v9 dealloc];
}

- (IMDMessageStore)messageStore
{
  messageStore = self->_messageStore;
  if (!messageStore)
  {
    v4 = +[IMDMessageStore sharedInstance];
    v5 = self->_messageStore;
    self->_messageStore = v4;

    messageStore = self->_messageStore;
  }

  return messageStore;
}

- (IMDCKUtilities)ckUtilities
{
  ckUtilities = self->_ckUtilities;
  if (!ckUtilities)
  {
    v4 = +[IMDCKUtilities sharedInstance];
    v5 = self->_ckUtilities;
    self->_ckUtilities = v4;

    ckUtilities = self->_ckUtilities;
  }

  return ckUtilities;
}

- (void)addAccount:(id)account
{
  v8.receiver = self;
  v8.super_class = MessageServiceSession;
  accountCopy = account;
  [(MessageServiceSession *)&v8 addAccount:accountCopy];
  v5 = [MessagePushHandler alloc];
  idsAccount = [accountCopy idsAccount];

  v7 = [(MessagePushHandler *)v5 initWithIDSAccount:idsAccount];
  [(MessagePushHandler *)v7 addListener:self];
  [(NSMutableArray *)self->_messagePushHandlers addObject:v7];
}

- (void)removeAccount:(id)account
{
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v19 removeAccount:accountCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_messagePushHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        account = [v11 account];
        idsAccount = [accountCopy idsAccount];

        if (account == idsAccount)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [v8 removeListener:self];
  [(NSMutableArray *)self->_messagePushHandlers removeObject:v8];
}

- (void)refreshRegistration
{
  v2 = +[IMUnlockMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v2 isUnderFirstDataProtectionLock];

  if ((isUnderFirstDataProtectionLock & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    idsAccounts = [objc_opt_class() idsAccounts];
    v5 = [idsAccounts countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v5)
    {
      v6 = *v30;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(idsAccounts);
          }

          if ([*(*(&v29 + 1) + 8 * i) _validateIDSAccount])
          {
            v8 = +[IMDCKSyncController sharedInstance];
            [v8 idsAccountsDidChange];

            v9 = +[IMDNicknameController sharedInstance];
            [v9 evaluateAccountStateForFeatureEligibility];

            goto LABEL_12;
          }
        }

        v5 = [idsAccounts countByEnumeratingWithState:&v29 objects:v40 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  accounts = [(MessageServiceSession *)self accounts];
  v11 = [accounts countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v11)
  {
    v13 = *v26;
    *&v12 = 138412802;
    v22 = v12;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(accounts);
        }

        v15 = *(*(&v25 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          idsAccount = [v15 idsAccount];
          if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
          {
            v17 = _IDSiMessageProtocolVersionNumber();
            v18 = [NSDictionary dictionaryWithObject:v17 forKey:@"Version"];

            [v15 writeAccountDefaults:v18];
            if ([v15 loginStatus] <= 3)
            {
              if (IMOSLoggingEnabled())
              {
                v19 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  loginStatus = [v15 loginStatus];
                  idsAccount2 = [v15 idsAccount];
                  *buf = v22;
                  v34 = v15;
                  v35 = 2048;
                  v36 = loginStatus;
                  v37 = 2112;
                  v38 = idsAccount2;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "refreshRegistration. Logging into account %@, login status %lu,  [account idsAccount] %@", buf, 0x20u);
                }
              }

              [(MessageServiceSession *)self loginServiceSessionWithAccount:v15, v22];
            }
          }
        }
      }

      v11 = [accounts countByEnumeratingWithState:&v25 objects:v39 count:16];
    }

    while (v11);
  }

  v24.receiver = self;
  v24.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v24 refreshRegistration];
}

- (id)fallBackBizIDSAccount
{
  [objc_opt_class() idsAccounts];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = 0;
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
      if ([v7 serviceType] == 1)
      {
        v8 = [v7 accountType] == 0;
        v9 = v7;

        v4 = v9;
        if (v8)
        {
          break;
        }
      }

      if (v3 == ++v6)
      {
        v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
        v9 = v4;
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MessageServiceSession: Using fallbackBizIDSAccount %@", buf, 0xCu);
    }
  }

  return v9;
}

- (id)idsAccountForFromURI:(id)i toURI:(id)rI
{
  iCopy = i;
  IsBusinessID = IMStringIsBusinessID();
  v7 = &IDSServiceNameiMessageForBusiness;
  if (!IsBusinessID)
  {
    v7 = &IDSServiceNameiMessage;
  }

  v8 = [(MessageServiceSession *)self idsAccountForURI:iCopy IDSServiceName:*v7];

  return v8;
}

- (id)bizIDSAccountFromMadridIDSAccount:(id)account
{
  accountCopy = account;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  idsAccounts = [objc_opt_class() idsAccounts];
  v5 = [idsAccounts countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(idsAccounts);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isBizAccount])
        {
          loginID = [v8 loginID];
          loginID2 = [accountCopy loginID];
          v11 = [loginID isEqualToString:loginID2];

          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                uniqueID = [v8 uniqueID];
                uniqueID2 = [accountCopy uniqueID];
                *buf = 138412546;
                v22 = uniqueID;
                v23 = 2112;
                v24 = uniqueID2;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Found Biz IDSAccount %@ for Madrid IDSAccount %@", buf, 0x16u);
              }
            }

            v12 = v8;
            goto LABEL_16;
          }
        }
      }

      v5 = [idsAccounts countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)_firstiMessageChat
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[IMDChatRegistry sharedInstance];
  chats = [v2 chats];

  v4 = [chats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(chats);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        serviceName = [v7 serviceName];
        v9 = [serviceName isEqualToString:IMServiceNameiMessage];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [chats countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)sessionDidBecomeActive
{
  v10.receiver = self;
  v10.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v10 sessionDidBecomeActive];
  v3 = +[IMUnlockMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v3 isUnderFirstDataProtectionLock];

  v5 = IMOSLoggingEnabled();
  if ((isUnderFirstDataProtectionLock & 1) == 0)
  {
    if (v5)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Scheduling routing, expire timer before first unlock", buf, 2u);
      }
    }

    [(MessageServiceSession *)self _updateRoutingTimerWithInterval:60.0];
    [(MessageServiceSession *)self _updateExpireStateTimerWithInterval:60.0];
    scheduledMessageCoordinator = [(MessageServiceSession *)self scheduledMessageCoordinator];
    [scheduledMessageCoordinator updateTimerForTimeInterval:60.0];
    goto LABEL_10;
  }

  if (v5)
  {
    scheduledMessageCoordinator = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(scheduledMessageCoordinator, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, scheduledMessageCoordinator, OS_LOG_TYPE_INFO, "Not scheduling routing and expire timer before first unlock", buf, 2u);
    }

LABEL_10:
  }

  [(MessageServiceSession *)self _logLocalInfo];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A24C;
  block[3] = &unk_111FC8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[MessageServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v6 sessionWillBecomeInactiveWithAccount:accountCopy];
  [(MessageServiceSession *)self _logLocalInfo];
}

- (void)refreshServiceCapabilities
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accounts = [(MessageServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        broadcaster = [(MessageServiceSession *)self broadcaster];
        accountID = [v8 accountID];
        [broadcaster account:accountID capabilitiesChanged:{-[MessageServiceSession capabilities](self, "capabilities")}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_enqueueBlock:(id)block withTimeout:(double)timeout description:(id)description
{
  blockCopy = block;
  descriptionCopy = description;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      accountID = [(MessageServiceSession *)self accountID];
      v12 = 138412546;
      v13 = accountID;
      v14 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, " Enqueued item for key: %@    timeout: %f", &v12, 0x16u);
    }
  }

  [IMMultiQueue im_enqueuiMessageBlock:blockCopy withTimeout:descriptionCopy description:timeout];
}

- (BOOL)_updateReadReceiptProperties:(id)properties withIncomingProperties:(id)incomingProperties
{
  propertiesCopy = properties;
  incomingPropertiesCopy = incomingProperties;
  v7 = IMChatPropertyReadReceiptsSettingVersionKey;
  v8 = [propertiesCopy _numberForKey:IMChatPropertyReadReceiptsSettingVersionKey];
  v9 = IMChatPropertyEnableReadReceiptForChatKey;
  v10 = [propertiesCopy _numberForKey:IMChatPropertyEnableReadReceiptForChatKey];
  v11 = [incomingPropertiesCopy _numberForKey:@"vR"];
  v12 = [incomingPropertiesCopy _numberForKey:@"eR"];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = 138413058;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "trying to update chat properties: localReadReceiptVersionID: %@ localReadReceiptValue: %@ incomingReadReceiptVersionID: %@ incomingReadReceiptValue: %@", &v18, 0x2Au);
    }
  }

  if ((v8 || [v11 integerValue] <= 0) && (v14 = objc_msgSend(v11, "integerValue"), v14 <= objc_msgSend(v8, "integerValue")))
  {
    v15 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 138413058;
        v19 = v8;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v12;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Updated read receipt version number from %@ to %@ and read receipt value from %@ to %@", &v18, 0x2Au);
      }
    }

    if (v11)
    {
      [propertiesCopy setObject:v11 forKey:v7];
    }

    if (v12)
    {
      [propertiesCopy setObject:v12 forKey:v9];
    }

    v15 = 1;
  }

  return v15;
}

- (BOOL)_updateAutomaticTranslationProperties:(id)properties withIncomingProperties:(id)incomingProperties
{
  propertiesCopy = properties;
  incomingPropertiesCopy = incomingProperties;
  v7 = IMChatPropertyAutomaticTranslationSettingVersionKey;
  v8 = [propertiesCopy _numberForKey:IMChatPropertyAutomaticTranslationSettingVersionKey];
  v9 = IMChatPropertyEnableAutomaticTranslationForChatKey;
  v23 = [propertiesCopy _numberForKey:IMChatPropertyEnableAutomaticTranslationForChatKey];
  v20 = IMChatPropertyAutomaticTranslationLanguageCodeForChatKey;
  v22 = [propertiesCopy _stringForKey:?];
  v19 = IMChatPropertyUserTranslationLanguageCodeForChatKey;
  v21 = [propertiesCopy _stringForKey:?];
  v10 = [incomingPropertiesCopy _numberForKey:@"vTR"];
  v11 = [incomingPropertiesCopy _numberForKey:@"eTR"];
  v12 = [incomingPropertiesCopy _stringForKey:@"lcTR"];
  v13 = [incomingPropertiesCopy _stringForKey:@"tlcTR"];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138414082;
      v25 = v8;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "trying to update chat properties: localAutomaticTranslationVersionID: %@ localAutomaticTranslationValue: %@ localLanguageCode: %@ localToLanguageCode: %@ incomingAutomaticTranslationVersionID: %@ incomingAutomaticTranslationValue: %@ incomingLanguageCode: %@ incomingToLanguageCode: %@", buf, 0x52u);
    }
  }

  if ((v8 || [v10 integerValue] <= 0) && (v15 = objc_msgSend(v10, "integerValue"), v15 <= objc_msgSend(v8, "integerValue")))
  {
    v16 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v25 = v8;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v23;
        v30 = 2112;
        v31 = v11;
        v32 = 2112;
        v33 = v22;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Updated automatic translation version number from %@ to %@, automatic translation value from %@ to %@ and language code from %@ to %@", buf, 0x3Eu);
      }
    }

    if (v10)
    {
      [propertiesCopy setObject:v10 forKey:v7];
    }

    if (v11)
    {
      [propertiesCopy setObject:v11 forKey:v9];
    }

    if (v12)
    {
      [propertiesCopy setObject:v12 forKey:v20];
    }

    if (v13)
    {
      [propertiesCopy setObject:v13 forKey:v19];
    }

    v16 = 1;
  }

  return v16;
}

- (void)_updateChatProperties:(id)properties withProperties:(id)withProperties
{
  propertiesCopy = properties;
  withPropertiesCopy = withProperties;
  properties = [propertiesCopy properties];
  v9 = [properties mutableCopy];

  LOBYTE(properties) = [(MessageServiceSession *)self _updateReadReceiptProperties:v9 withIncomingProperties:withPropertiesCopy];
  v10 = [(MessageServiceSession *)self _updateAutomaticTranslationProperties:v9 withIncomingProperties:withPropertiesCopy];
  if ((properties & 1) != 0 || v10)
  {
    [propertiesCopy updateProperties:v9];
    broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
    guid = [propertiesCopy guid];
    [broadcasterForChatListeners chat:guid propertiesUpdated:v9];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = propertiesCopy;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Updated chat properties for chat: %@ properties: %@", &v14, 0x16u);
      }
    }
  }
}

- (void)_checkGlobalReadReceiptValueAndUpdateIfNeeded:(id)needed
{
  neededCopy = needed;
  globalReadReceiptSettingVersion = [(MessageServiceSession *)self globalReadReceiptSettingVersion];
  v6 = [neededCopy objectForKey:@"gV"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = globalReadReceiptSettingVersion;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Local global read receipt id: %@ incoming global read receipt id: %@", &v11, 0x16u);
    }
  }

  integerValue = [v6 integerValue];
  if (integerValue > [globalReadReceiptSettingVersion integerValue])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Incoming global id is higher than local...so updating", &v11, 2u);
      }
    }

    v10 = [neededCopy objectForKey:@"gR"];
    -[MessageServiceSession _updateGlobalReadReceiptValue:withVersionID:](self, "_updateGlobalReadReceiptValue:withVersionID:", [v10 BOOLValue], v6);
  }
}

- (void)handler:(id)handler receivedError:(id)error forMessageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4 additionalInfo:(id)self5 shouldShowPeerErrors:(BOOL)self6
{
  handlerCopy = handler;
  errorCopy = error;
  dCopy = d;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  iDCopy = iD;
  selfCopy = self;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  infoCopy = info;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "receivedError - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:identifierCopy])
  {
    v29 = 0;
    if (identifierCopy && fromIdentifierCopy)
    {
      v29 = [identifierCopy isEqualToString:fromIdentifierCopy];
    }

    unsignedIntValue = [storageContextCopy unsignedIntValue];
    unsignedIntValue2 = [storageContextCopy unsignedIntValue];
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = @"NO";
        *buf = 138414338;
        v83 = errorCopy;
        if (errors)
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        if (v29)
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

        if (unsignedIntValue)
        {
          v35 = @"YES";
        }

        else
        {
          v35 = @"NO";
        }

        if ((unsignedIntValue2 & 2) != 0)
        {
          v32 = @"YES";
        }

        v84 = 2112;
        v85 = fromIdentifierCopy;
        v86 = 2112;
        v87 = identifierCopy;
        v88 = 2112;
        v89 = tokenCopy;
        v90 = 2112;
        v91 = dCopy;
        v92 = 2112;
        v93 = v33;
        v94 = 2112;
        v95 = v34;
        v96 = 2112;
        v97 = v35;
        v98 = 2112;
        v99 = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Received error: %@ from ID: %@ to ID: %@ from token: %@  for messageID: %@  showError: %@  reflection: %@  from storage: %@  last from storage: %@", buf, 0x5Cu);
      }
    }

    if (v29)
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Early returning for reflected error", buf, 2u);
        }
      }

      goto LABEL_140;
    }

    if ((unsignedIntValue2 & 2) != 0)
    {
      [(MessageServiceSession *)selfCopy noteLastItemFromStorage:dCopy];
    }

    else if (unsignedIntValue)
    {
      [(MessageServiceSession *)selfCopy noteItemFromStorage:dCopy];
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = @"YES";
        *buf = 138412802;
        v83 = iDCopy;
        v84 = 2112;
        if (!receiptCopy)
        {
          v38 = @"NO";
        }

        v85 = v38;
        v86 = 2112;
        v87 = contextCopy;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    intValue = [(__CFString *)errorCopy intValue];
    account = [handlerCopy account];
    v70 = [(MessageServiceSession *)selfCopy imdAccountForIDSAccount:account];

    deliveryController = [(MessageServiceSession *)selfCopy deliveryController];
    _stripFZIDPrefix = [(__CFString *)fromIdentifierCopy _stripFZIDPrefix];
    v71 = [deliveryController activeDeviceForHandle:_stripFZIDPrefix];

    idsDestination = [(__CFString *)v71 idsDestination];
    if (intValue <= 399)
    {
      if (intValue > 199)
      {
        if (intValue == 200)
        {
          if (IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v83 = dCopy;
              v84 = 2112;
              v85 = v71;
              v86 = 2112;
              v87 = idsDestination;
              v88 = 2112;
              v89 = iDCopy;
              _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, " => Pair decryption failure for messageID: %@ activeDevice: %@ activeIDSdestination: %@ fromIDSID: %@", buf, 0x2Au);
            }
          }

          if (([(MessageServiceSession *)selfCopy isReplicating]& 1) == 0)
          {
            LOBYTE(v67) = 0;
            [(MessageServiceSession *)selfCopy _reAttemptMessageDeliveryForGUID:dCopy toIdentifier:identifierCopy fromIdentifier:fromIdentifierCopy fromIDSID:iDCopy isReflection:0 shouldShowError:errors cacheFlushError:v67 imdAccount:v70];
            goto LABEL_137;
          }

          if (IMOSLoggingEnabled())
          {
            v56 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v83 = dCopy;
              _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Not reattempting delivery of guid %@, this is a replicating session", buf, 0xCu);
            }

            goto LABEL_126;
          }

          goto LABEL_137;
        }

        if (intValue != 201)
        {
          if (intValue == 250)
          {
            if (IMOSLoggingEnabled())
            {
              v53 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = dCopy;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, " => Remote encryption credentials are invalid failure for messageID: %@", buf, 0xCu);
              }
            }

            [(MessageServiceSession *)selfCopy didReceiveError:40 forMessageID:dCopy forceError:errors account:v70];
            goto LABEL_137;
          }

          goto LABEL_127;
        }

        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = dCopy;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, " => Pair encryption failure for messageID: %@", buf, 0xCu);
          }
        }

LABEL_76:
        [(MessageServiceSession *)selfCopy didReceiveError:26 forMessageID:dCopy forceError:errors account:v70];
        goto LABEL_137;
      }

      if (!intValue)
      {
        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, " => No error!?", buf, 2u);
          }

          goto LABEL_126;
        }

        goto LABEL_137;
      }

      if (intValue != 120)
      {
        goto LABEL_127;
      }

      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = dCopy;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, " => OTR un-supported error for messageID: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (intValue <= 502)
      {
        if (intValue == 400)
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v83 = dCopy;
              v84 = 2112;
              v85 = infoCopy;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, " => Remote attachment download failure for messageID: %@, additionalInfo: %@", buf, 0x16u);
            }
          }

          if (v71 && [idsDestination isEqualToString:iDCopy] && -[__CFString shouldDisplayAttachmentDownloadFailure](v71, "shouldDisplayAttachmentDownloadFailure"))
          {
            if (IMOSLoggingEnabled())
            {
              v61 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v71;
                _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "Found active device %@", buf, 0xCu);
              }
            }

            [(MessageServiceSession *)selfCopy didReceiveError:37 forMessageID:dCopy forceError:errors account:v70];
          }

          goto LABEL_137;
        }

        if (intValue != 500)
        {
          if (intValue == 502)
          {
            if (IMOSLoggingEnabled())
            {
              v43 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = fromIdentifierCopy;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, " => Receiver (%@) has blackholed our conversation; updating conversation accordingly.", buf, 0xCu);
              }
            }

            v44 = +[IMDMessageStore sharedInstance];
            v68 = [v44 chatForMessageGUID:dCopy];

            if (IMOSLoggingEnabled())
            {
              v45 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                chatIdentifier = [v68 chatIdentifier];
                *buf = 138412802;
                v83 = chatIdentifier;
                v84 = 2112;
                v85 = fromIdentifierCopy;
                v86 = 2112;
                v87 = identifierCopy;
                _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Chat (%@) iMessage history (NO) for sender (%@) and receiver (%@)", buf, 0x20u);
              }
            }

            if (+[IMSpamFilterHelper isInternationalSpamFilteringEnabled])
            {
              v47 = +[IMMetricsCollector sharedInstance];
              [v47 trackSpamEvent:8];

              if (IMStringIsEmail())
              {
                v48 = +[IMDAccountController sharedAccountController];
                hasActivePhoneAccount = [v48 hasActivePhoneAccount];

                v50 = +[IMMetricsCollector sharedInstance];
                v51 = v50;
                if (hasActivePhoneAccount)
                {
                  v52 = 5;
                }

                else
                {
                  v52 = 6;
                }

                [v50 trackSpamEvent:v52];
              }

              [v68 updateReceivedBlackholeError:1];
              [(MessageServiceSession *)selfCopy didReceiveError:43 forMessageID:dCopy forceError:1 account:v70];
            }

            else
            {
              [(MessageServiceSession *)selfCopy didReceiveError:1 forMessageID:dCopy forceError:errors account:v70];
              if (IMOSLoggingEnabled())
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109120;
                  LODWORD(v83) = 502;
                  _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "Received unknown/unhandled error type: %d", buf, 8u);
                }
              }
            }

            goto LABEL_137;
          }

LABEL_127:
          [(MessageServiceSession *)selfCopy didReceiveError:1 forMessageID:dCopy forceError:errors account:v70];
          if (IMOSLoggingEnabled())
          {
            v62 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v83) = intValue;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "Received unknown/unhandled error type: %d", buf, 8u);
            }
          }

          goto LABEL_137;
        }

        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = dCopy;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, " => Empty message for message ID: %@", buf, 0xCu);
          }

LABEL_126:

          goto LABEL_137;
        }

        goto LABEL_137;
      }

      if (intValue == 503)
      {
        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = dCopy;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Sent messageID %@ was junked", buf, 0xCu);
          }

          goto LABEL_126;
        }

LABEL_137:
        account2 = [handlerCopy account];
        [(MessageServiceSession *)selfCopy sendDeliveryReceiptForMessageID:dCopy toID:iDCopy deliveryContext:contextCopy needsDeliveryReceipt:receiptCopy callerID:identifierCopy account:account2];

        if (unsignedIntValue)
        {
          account3 = [handlerCopy account];
          v66 = [(MessageServiceSession *)selfCopy idsServiceForIDSAccount:account3];
          [(MessageServiceSession *)selfCopy noteItemProcessed:(unsignedIntValue2 >> 1) & 1 batchContext:batchContextCopy usingService:v66];
        }

        goto LABEL_140;
      }

      if (intValue != 600)
      {
        if (intValue != 601)
        {
          goto LABEL_127;
        }

        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = dCopy;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, " => Remote Identity decryption failure for messageID: %@", buf, 0xCu);
          }
        }

        goto LABEL_76;
      }

      if (IMOSLoggingEnabled())
      {
        v58 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = dCopy;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, " => Remote identity encryption failure for messageID: %@", buf, 0xCu);
        }
      }
    }

    [(MessageServiceSession *)selfCopy didReceiveError:27 forMessageID:dCopy forceError:errors account:v70];
    goto LABEL_137;
  }

LABEL_140:
}

- (void)handler:(id)handler messageIDDelivered:(id)delivered toIdentifier:(id)identifier status:(id)status deliveryContext:(id)context timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  deliveredCopy = delivered;
  identifierCopy = identifier;
  statusCopy = status;
  contextCopy = context;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  deliveryContextCopy = deliveryContext;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = deliveredCopy;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Received delivery receipt control message for message: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = contextCopy;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "context: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"YES";
      *buf = 138412802;
      v59 = dCopy;
      v60 = 2112;
      if (!receiptCopy)
      {
        v29 = @"NO";
      }

      v61 = v29;
      v62 = 2112;
      v63 = deliveryContextCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
    }
  }

  v41 = statusCopy;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_D0A4;
  v46[3] = &unk_112018;
  v46[4] = self;
  v47 = statusCopy;
  v48 = deliveredCopy;
  v49 = handlerCopy;
  v50 = storageContextCopy;
  v51 = contextCopy;
  v52 = stampCopy;
  v53 = identifierCopy;
  v54 = dCopy;
  v55 = receiptCopy;
  v56 = deliveryContextCopy;
  v57 = batchContextCopy;
  v40 = batchContextCopy;
  v39 = deliveryContextCopy;
  v38 = receiptCopy;
  v37 = dCopy;
  v30 = identifierCopy;
  v31 = stampCopy;
  v32 = contextCopy;
  v33 = storageContextCopy;
  v34 = handlerCopy;
  v35 = deliveredCopy;
  v36 = v41;
  [(MessageServiceSession *)self _enqueueBlock:v46 withTimeout:@"delivery receipt" description:45.0];
}

- (void)handler:(id)handler messageIDReflectedDelivered:(id)delivered incomingMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier status:(id)status deliveryContext:(id)context timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5
{
  handlerCopy = handler;
  deliveredCopy = delivered;
  messageCopy = message;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  statusCopy = status;
  contextCopy = context;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  deliveryContextCopy = deliveryContext;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "messageIDRead - No bindings !!", buf, 2u);
    }
  }

  loginID = [(MessageServiceSession *)self loginID];
  v28 = [loginID isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(loginID) = [identifierCopy isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([registeredURIs containsObject:identifierCopy] | v28 | loginID))
  {
    if ([messageCopy length])
    {
      _FTOptionallyDecompressData = [messageCopy _FTOptionallyDecompressData];
      v30 = JWDecodeDictionary();

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = v30;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Decrypted message from reflected delivery receipt handler messageDictionary: %@", buf, 0xCu);
        }
      }

      if (![v30 count])
      {
        v32 = JWDecodeDictionary();

        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Faild to decrypt, trying a simpler decode for reflected delivery receipt", buf, 2u);
          }
        }

        v30 = v32;
        if (!v32)
        {
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "BAD DATA for reflected delivery receipt", buf, 2u);
            }
          }

          v30 = 0;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Checking if we need to update the global read receipt value and updating if necessary", buf, 2u);
        }
      }

      [(MessageServiceSession *)self _checkGlobalReadReceiptValueAndUpdateIfNeeded:v30];
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Updating chat properties upon reflected delivery", buf, 2u);
        }
      }

      v37 = +[IMDMessageStore sharedInstance];
      v38 = [v37 chatForMessageGUID:deliveredCopy];

      [(MessageServiceSession *)self _updateChatProperties:v38 withProperties:v30];
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_DD84;
    v48[3] = &unk_112040;
    v49 = deliveredCopy;
    v50 = deliveryContextCopy;
    v51 = dCopy;
    v52 = receiptCopy;
    selfCopy = self;
    v54 = stampCopy;
    v55 = handlerCopy;
    v56 = identifierCopy;
    [(MessageServiceSession *)self _enqueueBlock:v48 withTimeout:@"reflected delivery receipt" description:45.0];
  }
}

- (void)handler:(id)handler messageIDRead:(id)read toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  readCopy = read;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  selfCopy = self;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "messageIDRead - No bindings !!", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = readCopy;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Received read receipt for guid:%@ fromIDSID:%@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"YES";
      *buf = 138412802;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      if (!receiptCopy)
      {
        v29 = @"NO";
      }

      *&buf[14] = v29;
      *&buf[22] = 2112;
      v57 = contextCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
    }
  }

  loginID = [(MessageServiceSession *)self loginID];
  v31 = [loginID isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(loginID) = [identifierCopy isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([registeredURIs containsObject:identifierCopy] | v31 | loginID))
  {
    unsignedIntValue = [storageContextCopy unsignedIntValue];
    unsignedIntValue2 = [storageContextCopy unsignedIntValue];
    v34 = unsignedIntValue & 1;
    if ((unsignedIntValue2 & 2) != 0)
    {
      [(MessageServiceSession *)selfCopy noteLastItemFromStorage:readCopy];
    }

    else if (unsignedIntValue)
    {
      [(MessageServiceSession *)selfCopy noteItemFromStorage:readCopy];
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Message Read message", buf, 2u);
      }
    }

    if (unsignedIntValue2 & 2 | v34)
    {
      [(MessageServiceSession *)selfCopy incrementPendingReadReceiptFromStorageCount];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = sub_E5DC;
    v58 = sub_E5EC;
    v59 = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingReadReceiptAssertion" timeout:10.0];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_E5F4;
    v42[3] = &unk_112068;
    v54 = v34;
    v55 = (unsignedIntValue2 & 2) >> 1;
    v42[4] = selfCopy;
    v43 = fromIdentifierCopy;
    v44 = identifierCopy;
    v45 = readCopy;
    v46 = tokenCopy;
    v47 = stampCopy;
    v48 = dCopy;
    v49 = contextCopy;
    v50 = receiptCopy;
    v51 = handlerCopy;
    v52 = batchContextCopy;
    v53 = buf;
    [(MessageServiceSession *)selfCopy _enqueueBlock:v42 withTimeout:@"reflected read receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (void)handler:(id)handler updateAttachments:(id)attachments toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3 fileTransferUpdates:(id)self4
{
  attachmentsCopy = attachments;
  fromIdentifierCopy = fromIdentifier;
  updatesCopy = updates;
  v19 = +[IMFeatureFlags sharedFeatureFlags];
  isLQMHQEnabled = [v19 isLQMHQEnabled];

  if (isLQMHQEnabled && (+[IMDAttachmentUtilities isNetworkLowDataMode]& 1) == 0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_EAFC;
    v21[3] = &unk_112108;
    v22 = attachmentsCopy;
    v23 = fromIdentifierCopy;
    selfCopy = self;
    v25 = updatesCopy;
    [(MessageServiceSession *)self _enqueueBlock:v21 withTimeout:@"update attachments" description:240.0];
  }
}

- (void)handler:(id)handler messageIDPlayed:(id)played toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  playedCopy = played;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  selfCopy = self;
  selfCopy2 = self;
  v26 = playedCopy;
  registeredURIs = [(MessageServiceSession *)selfCopy2 registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "messageIDPlayed - No bindings !!", buf, 2u);
    }
  }

  loginID = [(MessageServiceSession *)selfCopy loginID];
  v30 = [loginID isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(loginID) = [identifierCopy isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([registeredURIs containsObject:identifierCopy] | v30 | loginID))
  {
    unsignedIntValue = [storageContextCopy unsignedIntValue];
    unsignedIntValue2 = [storageContextCopy unsignedIntValue];
    v33 = unsignedIntValue & 1;
    if ((unsignedIntValue2 & 2) != 0)
    {
      [(MessageServiceSession *)selfCopy noteLastItemFromStorage:v26];
    }

    else if (unsignedIntValue)
    {
      [(MessageServiceSession *)selfCopy noteItemFromStorage:v26];
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Message Played message", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = @"YES";
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        if (!receiptCopy)
        {
          v36 = @"NO";
        }

        *&buf[14] = v36;
        *&buf[22] = 2112;
        v59 = contextCopy;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = sub_E5DC;
    v60 = sub_E5EC;
    v61 = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingPlayedReceiptAssertion" timeout:10.0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_FCAC;
    v43[3] = &unk_112068;
    v44 = fromIdentifierCopy;
    v45 = identifierCopy;
    v46 = v26;
    v47 = tokenCopy;
    v48 = selfCopy;
    v49 = stampCopy;
    v50 = dCopy;
    v51 = contextCopy;
    v52 = receiptCopy;
    v53 = handlerCopy;
    v56 = v33;
    v57 = (unsignedIntValue2 & 2) >> 1;
    v54 = batchContextCopy;
    v55 = buf;
    [(MessageServiceSession *)selfCopy _enqueueBlock:v43 withTimeout:@"reflected played receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (void)handler:(id)handler messageIDSaved:(id)saved ofType:(id)type toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier groupContext:(id)context fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5
{
  handlerCopy = handler;
  savedCopy = saved;
  typeCopy = type;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  contextCopy = context;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  deliveryContextCopy = deliveryContext;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "messageIDSaved - No bindings !!", buf, 2u);
    }
  }

  loginID = [(MessageServiceSession *)self loginID];
  v29 = [loginID isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(loginID) = [identifierCopy isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([registeredURIs containsObject:identifierCopy] | v29 | loginID))
  {
    unsignedIntValue = [storageContextCopy unsignedIntValue];
    unsignedIntValue2 = [storageContextCopy unsignedIntValue];
    v35 = unsignedIntValue & 1;
    if ((unsignedIntValue2 & 2) != 0)
    {
      [(MessageServiceSession *)self noteLastItemFromStorage:savedCopy];
    }

    else if (unsignedIntValue)
    {
      [(MessageServiceSession *)self noteItemFromStorage:savedCopy];
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Message Saved message", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = @"YES";
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        if (!receiptCopy)
        {
          v34 = @"NO";
        }

        *&buf[14] = v34;
        *&buf[22] = 2112;
        v62 = deliveryContextCopy;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = sub_E5DC;
    v63 = sub_E5EC;
    v64 = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingSavedReceiptAssertion" timeout:10.0];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10490;
    v44[3] = &unk_112130;
    v45 = fromIdentifierCopy;
    v46 = identifierCopy;
    v47 = savedCopy;
    v48 = tokenCopy;
    selfCopy = self;
    v50 = contextCopy;
    v51 = typeCopy;
    v52 = stampCopy;
    v53 = handlerCopy;
    v54 = dCopy;
    v55 = deliveryContextCopy;
    v56 = receiptCopy;
    v59 = v35;
    v60 = (unsignedIntValue2 & 2) >> 1;
    v57 = batchContextCopy;
    v58 = buf;
    [(MessageServiceSession *)self _enqueueBlock:v44 withTimeout:@"reflected saved receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_isAllowlistedUnencryptedSender:(id)sender
{
  senderCopy = sender;
  if (IMStringIsEmail() && (([senderCopy hasSuffix:@".apple.com"] & 1) != 0 || objc_msgSend(senderCopy, "hasSuffix:", @"@apple.com")))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = senderCopy;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Received message from allowlisted unencrypted sender %@", &v7, 0xCu);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldIgnoreMessageFromSender:(id)sender balloonBID:(id)d fromMe:(BOOL)me
{
  senderCopy = sender;
  dCopy = d;
  v9 = (![senderCopy length] || !me) && (!objc_msgSend(senderCopy, "length") || (IMStringIsBusinessID() & 1) == 0 && objc_msgSend(dCopy, "containsString:", IMBalloonPluginIdentifierBusiness));

  return v9;
}

- (double)_messageHQUpdateReceiveTimeout
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-hq-update-received-timeout"];
  v4 = IMMessageHQUpdateReceivedTimeout;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 doubleValue], v5 > 0.0))
  {
    v6 = v5;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134218240;
        v10 = v6;
        v11 = 2048;
        v12 = v4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Server bag override for message hq update receive timeout. Server: %ld Default: %ld", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)_isRegisteredURI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [objc_opt_class() idsAccounts];
    v21 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v21)
    {
      v4 = *v28;
      v19 = *v28;
      do
      {
        v5 = 0;
        do
        {
          if (*v28 != v4)
          {
            v6 = v5;
            objc_enumerationMutation(obj);
            v5 = v6;
          }

          v20 = v5;
          v7 = *(*(&v27 + 1) + 8 * v5);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          im_registeredURIs = [v7 im_registeredURIs];
          v9 = [im_registeredURIs countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (v9)
          {
            v10 = *v24;
            while (2)
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(im_registeredURIs);
                }

                v12 = *(*(&v23 + 1) + 8 * i);
                if (IMOSLoggingEnabled())
                {
                  v13 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v32 = v12;
                    v33 = 2112;
                    v34 = v7;
                    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Registered URI %@ for account %@", buf, 0x16u);
                  }
                }

                _stripFZIDPrefix = [iCopy _stripFZIDPrefix];
                v15 = [v12 isEqualToIgnoringCase:_stripFZIDPrefix];

                if (v15)
                {

                  v17 = 1;
                  goto LABEL_27;
                }
              }

              v9 = [im_registeredURIs countByEnumeratingWithState:&v23 objects:v35 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          v5 = v20 + 1;
          v4 = v19;
        }

        while ((v20 + 1) != v21);
        v21 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
        v4 = v19;
      }

      while (v21);
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = iCopy;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "URI %@ is not in registered URI set", buf, 0xCu);
      }
    }
  }

  v17 = 0;
LABEL_27:

  return v17;
}

- (BOOL)_isFromLinkedID:(id)d fromID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = iDCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Checking isFromLinkedID toID %@ and fromID %@", &v11, 0x16u);
    }
  }

  v9 = 0;
  if (dCopy && iDCopy)
  {
    if ([(MessageServiceSession *)self _isRegisteredURI:dCopy])
    {
      v9 = [(MessageServiceSession *)self _isRegisteredURI:iDCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)_computeFlagsForIncomingMessage:(unint64_t)message isFromMe:(BOOL)me unfinished:(BOOL)unfinished isAudioMessage:(BOOL)audioMessage isAutoReply:(BOOL)reply isExpirable:(BOOL)expirable isGroupTypingMessage:(BOOL)typingMessage messageSource:(unint64_t)self0 participants:(id)self1 hasUnseenMention:(BOOL)self2 isSOS:(BOOL)self3 isCritical:(BOOL)self4
{
  expirableCopy = expirable;
  replyCopy = reply;
  audioMessageCopy = audioMessage;
  unfinishedCopy = unfinished;
  if (me)
  {
    v19 = [participants count];
    v20 = 32772;
    if (v19 < 3)
    {
      v20 = 36868;
    }

    message |= v20;
  }

  v21 = message | !unfinishedCopy;
  if (audioMessageCopy)
  {
    v21 |= 0x200000uLL;
  }

  if (replyCopy)
  {
    v21 |= 0x40uLL;
  }

  if (expirableCopy)
  {
    v21 |= 0x1000000uLL;
  }

  if (typingMessage)
  {
    v21 |= 0x40000000uLL;
  }

  if (source == 1)
  {
    v21 |= 0x2000000uLL;
  }

  if (mention)
  {
    v21 |= 0x10000000uLL;
  }

  if (s)
  {
    v21 |= 0x8000000000uLL;
  }

  if (critical)
  {
    return v21 | 0x4000000000;
  }

  else
  {
    return v21;
  }
}

- (BOOL)_originalTimestampWithinAcceptableWindow:(id)window timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v7 = [NSDate __im_iMessageDateFromTimeStamp:window];
  v8 = [NSDate __im_iMessageDateFromTimeStamp:timestampCopy];

  v9 = [v7 compare:v8];
  [(MessageServiceSession *)self _messageRetryTimeout];
  v10 = [v7 dateByAddingTimeInterval:?];
  v11 = v9 & [v8 compare:v10];

  return v11 == -1;
}

- (BOOL)_amIMentioned:(id)mentioned inMentions:(id)mentions
{
  mentionedCopy = mentioned;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mentionsCopy = mentions;
  v7 = [mentionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(mentionsCopy);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@"|", v18}];
        if ([v11 count] >= 2)
        {
          v12 = [v11 objectAtIndexedSubscript:1];
          stringByRemovingURLEscapes = [v12 stringByRemovingURLEscapes];

          _stripFZIDPrefix = [mentionedCopy _stripFZIDPrefix];
          v15 = [stringByRemovingURLEscapes isEqualToString:_stripFZIDPrefix];

          if (v15)
          {

            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [mentionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)handler:(id)handler incomingMessage:(id)message originalEncryptionType:(id)type messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 incomingEngroup:(id)self2 needsDeliveryReceipt:(id)self3 deliveryContext:(id)self4 storageContext:(id)self5 batchContext:(id)self6 messageContext:(id)self7 isBeingReplayed:(BOOL)self8 mergeID:(id)self9 wantsCheckpointing:(BOOL)checkpointing isSnapTrustedUser:(BOOL)user
{
  handlerCopy = handler;
  messageCopy = message;
  typeCopy = type;
  dCopy = d;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  selfCopy = self;
  stampCopy = stamp;
  iDCopy = iD;
  engroupCopy = engroup;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  messageContextCopy = messageContext;
  mergeIDCopy = mergeID;
  v28 = +[IMDefaults sharedInstance];
  if (([v28 getBoolFromDomain:@"com.apple.madrid" forKey:@"FailToDecryptMessages"] & 1) == 0)
  {

LABEL_14:
    v34 = +[IMMessageNotificationTimeManager sharedInstance];
    [v34 acquireAssertionToUnsuspendProcess];

    kdebug_trace();
    [(MessageServiceSession *)self _logLocalInfo];
    v76 = sub_3662C();
    v77 = [fromIdentifierCopy isEqualToString:identifierCopy];
    v35 = ([storageContextCopy unsignedIntValue] | replayed) & 1;
    unsignedIntValue = [storageContextCopy unsignedIntValue];
    v78 = v35;
    if ((unsignedIntValue & 2) != 0)
    {
      [(MessageServiceSession *)self noteLastItemFromStorage:dCopy];
      v37 = typeCopy;
    }

    else
    {
      v37 = typeCopy;
      if (v35)
      {
        [(MessageServiceSession *)self noteItemFromStorage:dCopy];
      }
    }

    if (v37)
    {
      v79 = [v37 isEqualToString:@"none"] ^ 1;
    }

    else
    {
      v79 = 0;
    }

    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = sub_E5DC;
    v125 = sub_E5EC;
    v126 = [[IMPowerAssertion alloc] initWithIdentifier:@"IncomingMessageProcessing" timeout:60.0];
    if (qword_124360 != -1)
    {
      sub_BBBCC();
    }

    v38 = off_124358;
    if (off_124358)
    {
      v39 = [NSNumber numberWithBool:v79 ^ 1];
      _stripFZIDPrefix = [fromIdentifierCopy _stripFZIDPrefix];
      _stripFZIDPrefix2 = [identifierCopy _stripFZIDPrefix];
      v38(7, @"iMessageReceived", [NSDictionary dictionaryWithObjectsAndKeys:v39, @"IsTypingIndicator", dCopy, @"MessageGUID", _stripFZIDPrefix, @"Source", _stripFZIDPrefix2, @"Target", 0], 0);
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        if (v77)
        {
          v43 = @"YES";
        }

        else
        {
          v43 = @"NO";
        }

        v44 = +[NSDate date];
        [v44 timeIntervalSinceReferenceDate];
        if (replayed)
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        *buf = 134220802;
        v137 = messageCopy;
        v138 = 2112;
        v139 = dCopy;
        v140 = 2112;
        v141 = fromIdentifierCopy;
        v142 = 2112;
        v143 = identifierCopy;
        v144 = 2048;
        v145 = messageContextCopy;
        v146 = 2112;
        v147 = v43;
        v148 = 2048;
        v149 = v45;
        v150 = 2112;
        v151 = receiptCopy;
        v152 = 2112;
        v153 = contextCopy;
        v154 = 2112;
        v155 = iDCopy;
        v156 = 2112;
        v157 = v46;
        v158 = 2112;
        v159 = mergeIDCopy;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Incoming message data: %p ID: %@  from: %@   to: %@  context: %p  (from me: %@) at time: %f, needsDeliveryReceipt: %@, deliveryContext: %@, fromIDSID %@ isBeingReplayed %@ MergeID:%@", buf, 0x7Au);
      }
    }

    v47 = im_checkpointIDSService();
    im_sendMessageCheckpointIfNecessary();

    v48 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v48 isInternalInstall];

    if (!isInternalInstall)
    {
      goto LABEL_76;
    }

    v50 = +[IMDefaults sharedInstance];
    v51 = [v50 getValueFromDomain:@"com.apple.madrid" forKey:@"numMessagesToDrop"];
    integerValue = [v51 integerValue];

    v53 = integerValue - 1;
    if (integerValue >= 1)
    {
      v54 = +[IMDefaults sharedInstance];
      v55 = [NSNumber numberWithInteger:integerValue - 1];
      [v54 setValue:v55 forDomain:@"com.apple.madrid" forKey:@"numMessagesToDrop"];

      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = [NSNumber numberWithInteger:v53];
          *buf = 138412290;
          v137 = v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "***** Dropping message due to user default. Will drop %@ more messages after this one *****", buf, 0xCu);
        }
      }
    }

    else
    {
LABEL_76:
      if (IMOSLoggingEnabled())
      {
        v58 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          v59 = @"NO";
          if (v79)
          {
            v59 = @"YES";
          }

          *buf = 138412546;
          v137 = messageCopy;
          v138 = 2112;
          v139 = v59;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "Decrypted data %@  isEncrypted? %@", buf, 0x16u);
        }
      }

      if (messageCopy || !v79)
      {
        v74 = +[NSDate date];
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v137 = stampCopy;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "Timestamp: %@ before calling receive message data", buf, 0xCu);
          }
        }

        groupController = [(MessageServiceSession *)self groupController];
        account = [handlerCopy account];
        v67 = [(MessageServiceSession *)self imdAccountForIDSAccount:account];
        service = [handlerCopy service];
        v68 = selfCopy;
        if ((unsignedIntValue & 2) != 0)
        {
          v69 = 1;
        }

        else
        {
          v69 = v78;
        }

        v73 = v69;
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_121AC;
        v96[3] = &unk_1123B8;
        v97 = fromIdentifierCopy;
        v113 = v77;
        v98 = stampCopy;
        v99 = selfCopy;
        v100 = identifierCopy;
        v114 = v78;
        v115 = (unsignedIntValue & 2) >> 1;
        v101 = batchContextCopy;
        v102 = handlerCopy;
        v112 = &v121;
        v103 = dCopy;
        v104 = messageContextCopy;
        v116 = v79;
        v105 = tokenCopy;
        userCopy = user;
        v106 = messageCopy;
        v118 = v76;
        v63 = v74;
        v107 = v63;
        checkpointingCopy = checkpointing;
        v108 = iDCopy;
        v109 = mergeIDCopy;
        replayedCopy = replayed;
        v110 = receiptCopy;
        v111 = contextCopy;
        LOBYTE(v72) = v73;
        [groupController receiveMessageData:v106 account:v67 session:v68 toIdentifier:v100 fromIdentifier:v97 incomingEngroup:engroupCopy service:service timestamp:v98 fromStorage:v72 completionBlock:v96];

        goto LABEL_64;
      }

      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEBUG, "We received an incoming message but it has no data, ignoring", buf, 2u);
        }
      }

      if (v78)
      {
        account2 = [handlerCopy account];
        v62 = [(MessageServiceSession *)self idsServiceForIDSAccount:account2];
        [(MessageServiceSession *)self noteItemProcessed:(unsignedIntValue & 2) != 0 batchContext:batchContextCopy usingService:v62];
      }
    }

    v63 = v122[5];
    v122[5] = 0;
LABEL_64:

    _Block_object_dispose(&v121, 8);
    goto LABEL_65;
  }

  v29 = +[IMLockdownManager sharedInstance];
  isInternalInstall2 = [v29 isInternalInstall];

  if (!isInternalInstall2)
  {
    goto LABEL_14;
  }

  v31 = IMOSLoggingEnabled();
  if (messageCopy)
  {
    if (v31)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v137 = 0x4028000000000000;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, " ** FailToDecryptMessages is enabled, sending decryption failure message with delay %f", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v137 = 0x4028000000000000;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, " ** FailToDecryptMessages is enabled, sending decryption failure message with delay %f", buf, 0xCu);
      }
    }

    v127 = _NSConcreteStackBlock;
    v128 = 3221225472;
    v129 = sub_1206C;
    v130 = &unk_112198;
    selfCopy2 = self;
    v132 = tokenCopy;
    v133 = fromIdentifierCopy;
    v134 = identifierCopy;
    v135 = dCopy;
    im_dispatch_after();
  }

  else
  {
    if (v31)
    {
      v70 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, " ** FailToDecryptMessages is enabled, but this is a typing indicator. Dropping message without sending 120", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v71 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, " ** FailToDecryptMessages is enabled, but this is a typing indicator. Dropping message without sending 120", buf, 2u);
      }
    }
  }

LABEL_65:
}

- (void)handler:(id)handler nicknameInfoReceived:(id)received userInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4
{
  handlerCopy = handler;
  receivedCopy = received;
  infoCopy = info;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "nicknameInfoReceived - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:identifierCopy])
  {
    _FTOptionallyDecompressData = [receivedCopy _FTOptionallyDecompressData];
    JWDecodeDictionary();
    v34 = storageContextCopy;
    v29 = contextCopy;
    v31 = v30 = receiptCopy;

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_194FC;
    v41[3] = &unk_112108;
    v41[4] = self;
    v42 = v31;
    v43 = fromIdentifierCopy;
    v44 = infoCopy;
    v32 = v31;
    receiptCopy = v30;
    contextCopy = v29;
    storageContextCopy = v34;
    v33 = v32;
    [(MessageServiceSession *)self _enqueueBlock:v41 withTimeout:@"nickname received block" description:45.0];
  }
}

- (void)handler:(id)handler locationShareInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  infoCopy = info;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  selfCopy = self;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  v26 = fromIdentifierCopy;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)selfCopy registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:identifierCopy])
  {
    [(MessageServiceSession *)selfCopy _logLocalInfo];
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v39 = infoCopy;
        v40 = 2112;
        v41 = v26;
        v42 = 2112;
        v43 = tokenCopy;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Received location share info: %@ from: %@   token: %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = @"YES";
        *buf = 138412802;
        v39 = dCopy;
        v40 = 2112;
        if (!receiptCopy)
        {
          v32 = @"NO";
        }

        v41 = v32;
        v42 = 2112;
        v43 = contextCopy;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    v33 = +[IMDLocationSharingController sharedInstance];
    [v33 receivedIncomingLocationSharePacket:infoCopy];
  }
}

- (void)handler:(id)handler genericNotification:(id)notification incomingMessage:(id)message userInfo:(id)info toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5
{
  handlerCopy = handler;
  notificationCopy = notification;
  messageCopy = message;
  infoCopy = info;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  selfCopy = self;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:identifierCopy])
  {
    [(MessageServiceSession *)self _logLocalInfo];
    if (!notificationCopy)
    {
      notificationCopy = infoCopy;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v72 = notificationCopy;
        v73 = 2112;
        v74 = fromIdentifierCopy;
        v75 = 2112;
        v76 = tokenCopy;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Received generic notification: %@ from: %@ token: %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = @"YES";
        *buf = 138412802;
        v72 = dCopy;
        v73 = 2112;
        if (!receiptCopy)
        {
          v29 = @"NO";
        }

        v74 = v29;
        v75 = 2112;
        v76 = contextCopy;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    _stripFZIDPrefix = [(__CFString *)fromIdentifierCopy _stripFZIDPrefix];
    if (_stripFZIDPrefix)
    {
      CFDictionarySetValue(theDict, kFZPersonID, _stripFZIDPrefix);
    }

    v31 = [notificationCopy objectForKey:@"c"];
    v60 = [notificationCopy objectForKey:@"p"];
    if ([messageCopy length])
    {
      _FTOptionallyDecompressData = [messageCopy _FTOptionallyDecompressData];
      v33 = JWDecodeDictionary();

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v72 = v33;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Decrypted message from generic notification messageDictionary: %@", buf, 0xCu);
        }
      }

      if (![v33 count])
      {
        v35 = JWDecodeDictionary();

        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Faild to decrypt, trying a simpler decode for generic notification", buf, 2u);
          }
        }

        v33 = v35;
        if (!v35)
        {
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "BAD DATA for generic notification", buf, 2u);
            }
          }

          v33 = 0;
        }
      }

      if (!v31 || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 180), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v31 isEqualToNumber:v38], v38, v39))
      {
        v40 = [v33 objectForKey:@"gC"];

        v31 = v40;
      }

      if (!v60)
      {
        v60 = [v33 objectForKey:@"pID"];
      }
    }

    else
    {
      v33 = notificationCopy;
    }

    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v72 = v31;
        v73 = 2112;
        v74 = v60;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Received generic notification with command: %@ properties: %@", buf, 0x16u);
      }
    }

    if (!v31)
    {
      goto LABEL_91;
    }

    intValue = [v31 intValue];
    switch(intValue)
    {
      case 0x11170u:
        deliveryController = [(MessageServiceSession *)selfCopy deliveryController];
        v53 = [deliveryController idsDeviceFromPushToken:tokenCopy];

        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "Received generic command for nickname updates", buf, 2u);
          }
        }

        if (v53)
        {
          v55 = +[IMDNicknameController sharedInstance];
          [v55 handleNicknameUpdatesFromPeerDevice:v60 fromPeerDevice:dCopy];
        }

        else if (IMOSLoggingEnabled())
        {
          v58 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Received a nickname update message from a device that was not one of our own", buf, 2u);
          }
        }

        goto LABEL_91;
      case 0xEA61u:
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Received generic notification to update global read receipt", buf, 2u);
          }
        }

        deliveryController2 = [(MessageServiceSession *)selfCopy deliveryController];
        v51 = [deliveryController2 idsDeviceFromPushToken:tokenCopy];

        if (v51)
        {
          [(MessageServiceSession *)selfCopy _checkGlobalReadReceiptValueAndUpdateIfNeeded:v60];
        }

        else if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Received a read receipt change message from a device that was not one of our own", buf, 2u);
          }
        }

        break;
      case 0xEA60u:
        if (IMOSLoggingEnabled())
        {
          v43 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Received generic notification to update chat properties", buf, 2u);
          }
        }

        deliveryController3 = [(MessageServiceSession *)selfCopy deliveryController];
        v45 = [deliveryController3 idsDeviceFromPushToken:tokenCopy];

        v46 = [v33 objectForKey:@"cID"];
        v47 = +[IMDChatRegistry sharedInstance];
        v48 = [v47 existingChatWithGUID:v46];

        if (v45 && v48)
        {
          [(MessageServiceSession *)selfCopy _updateChatProperties:v48 withProperties:v60];
        }

        else if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v72 = v45;
            v73 = 2112;
            v74 = v46;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Received a chat property update message from a device that was not one of our own %@, or the chat GUID was unknown %@", buf, 0x16u);
          }
        }

        goto LABEL_91;
      default:
        if (!IMOSLoggingEnabled())
        {
LABEL_91:

          goto LABEL_92;
        }

        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v72 = v31;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Trying to handle generic message that we don't have support for: %@", buf, 0xCu);
        }

        break;
    }

    goto LABEL_91;
  }

  v33 = notificationCopy;
LABEL_92:
}

- (void)_handleDeleteCommandWithMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[IMDRelayServiceController sharedInstance];
  deletionController = [v4 deletionController];
  v64 = [deletionController deleteChatsForCommandDictionary:dictionaryCopy];

  [dictionaryCopy objectForKeyedSubscript:@"chat-clear"];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  obj = v75 = 0u;
  v63 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v63)
  {
    v62 = *v75;
    v60 = IMDCommandChatGroupIDKey;
    do
    {
      v6 = 0;
      do
      {
        if (*v75 != v62)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v65 = v6;
        v8 = *(*(&v74 + 1) + 8 * v6);
        v9 = +[NSMutableArray array];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v10 = [v8 objectForKeyedSubscript:@"guids"];
        v11 = [v10 countByEnumeratingWithState:&v70 objects:v87 count:16];
        if (v11)
        {
          v12 = *v71;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v71 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v70 + 1) + 8 * i);
              v15 = IMAnyServiceGUIDFromLegacyChatGUID();
              chatRegistry = [(MessageServiceSession *)self chatRegistry];
              v17 = [chatRegistry existingChatWithGUID:v15];

              if (v17)
              {
                [v9 addObject:v17];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v70 objects:v87 count:16];
          }

          while (v11);
        }

        if (![v9 count])
        {
          chatRegistry2 = [(MessageServiceSession *)self chatRegistry];
          v19 = [v8 objectForKeyedSubscript:v60];
          v20 = [chatRegistry2 existingChatsWithGroupID:v19];

          v9 = v20;
        }

        if ([v9 count])
        {
          v21 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
          v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v23 = v9;
          v24 = [v23 countByEnumeratingWithState:&v66 objects:v86 count:16];
          if (v24)
          {
            v25 = *v67;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v67 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v66 + 1) + 8 * j);
                chatIdentifier = [v27 chatIdentifier];
                [v21 addObject:chatIdentifier];

                serviceName = [v27 serviceName];
                [v22 addObject:serviceName];

                style = [v27 style];
              }

              v31 = style;
              v24 = [v23 countByEnumeratingWithState:&v66 objects:v86 count:16];
            }

            while (v24);
          }

          else
          {
            v31 = 45;
          }

          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v79 = v21;
              v80 = 2112;
              v81 = v22;
              _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "clearing messages for chat IDS:%@ on services:%@", buf, 0x16u);
            }
          }

          v33 = +[IMDMessageStore sharedInstance];
          v34 = [v33 deleteMessagesWithChatIdentifiers:v21 style:v31 onServices:v22];

          v35 = [v34 count] != 0;
          broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
          [broadcasterForChatListeners historicalMessageGUIDsDeleted:v34 chatGUIDs:0 queryID:0];

          v37 = [(MessageServiceSession *)self broadcasterForChatListenersWithBlackholeStatus:1];
          [v37 historicalMessageGUIDsDeleted:v34 chatGUIDs:0 queryID:0];

          v64 |= v35;
        }

        v6 = v65 + 1;
      }

      while ((v65 + 1) != v63);
      v63 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v63);
  }

  v38 = [dictionaryCopy objectForKeyedSubscript:IMDDeleteCommandMessageGUIDArrayKey];
  if ([v38 count])
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [v38 count];
        *buf = 134217984;
        v79 = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "deleting %lu: messages", buf, 0xCu);
      }
    }

    v41 = +[IMDRelayServiceController sharedInstance];
    deletionController2 = [v41 deletionController];
    v43 = [deletionController2 deleteMessagesForCommandDictionary:dictionaryCopy];

    v64 |= v43;
  }

  v44 = [dictionaryCopy objectForKeyedSubscript:IMDDeleteCommandMessagePartMetadataArrayKey];
  if (![v44 count])
  {
    if ((v64 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v45 = +[IMDRelayServiceController sharedInstance];
  deletionController3 = [v45 deletionController];
  v47 = [deletionController3 deleteMessagePartsForCommandDictionary:dictionaryCopy];

  if ((v64 | v47))
  {
LABEL_44:
    v48 = +[IMDMessageStore sharedInstance];
    [v48 rebuildUnreadMessageCount];
  }

LABEL_45:
  v49 = [dictionaryCopy objectForKeyedSubscript:@"KeepMessages"];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 objectForKeyedSubscript:@"days"];
    v52 = [v50 objectForKeyedSubscript:@"ID"];
    v53 = [v50 objectForKeyedSubscript:@"resetPreference"];
    v54 = IMGetDomainValueForKey();
    if (v51 && v52)
    {
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v79 = v51;
          v80 = 2112;
          v81 = v52;
          v82 = 2112;
          v83 = v53;
          v84 = 2112;
          v85 = v54;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "Updated Keep Message Defaults Days:%@ Version:%@ resettingPreference: %@ currentKeepMessagesValue %@", buf, 0x2Au);
        }
      }

      IMSetDomainValueForKey();
      IMSetDomainValueForKey();
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, IMSettingsKeepMessagesChangedNotification, 0, 0, 1u);
      if ([v53 BOOLValue] && objc_msgSend(v54, "unsignedIntegerValue"))
      {
        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Received resetting keep messages preference. Writing default to show UI", buf, 2u);
          }
        }

        IMSetDomainValueForKey();
        v58 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v58, IMSettingsKeepMessagesWasResetNotification, 0, 0, 1u);
      }
    }
  }
}

- (void)handler:(id)handler deleteCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  commandCopy = command;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  selfCopy = self;
  deliveryController = [(MessageServiceSession *)self deliveryController];
  v23 = [deliveryController idsDeviceFromPushToken:tokenCopy];

  if (v23 || (-[MessageServiceSession deliveryController](self, "deliveryController"), v24 = objc_claimAutoreleasedReturnValue(), [v24 idsDeviceForFromID:dCopy], v23 = objc_claimAutoreleasedReturnValue(), v24, v23))
  {
    _FTOptionallyDecompressData = [commandCopy _FTOptionallyDecompressData];
    v26 = JWDecodeDictionary();

    isActive = [v23 isActive];
    v28 = [v26 objectForKey:@"chat"];
    v29 = [v28 objectAtIndex:0];
    v30 = [v29 objectForKey:IMDChatWasReportedAsJunkKey];
    bOOLValue = [v30 BOOLValue];

    v32 = [v26 objectForKey:IMDDeleteCommandIsScheduledMessageKey];
    bOOLValue2 = [v32 BOOLValue];

    ckUtilities = [(MessageServiceSession *)selfCopy ckUtilities];
    cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

    v36 = IMOSLoggingEnabled();
    if (((isActive | cloudKitSyncingEnabled | bOOLValue) | bOOLValue2))
    {
      if (v36)
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138413314;
          v54 = v26;
          v55 = 1024;
          *v56 = cloudKitSyncingEnabled & 1;
          *&v56[4] = 1024;
          *&v56[6] = bOOLValue;
          v57 = 1024;
          v58 = isActive;
          v59 = 1024;
          v60 = bOOLValue2;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Handling delete command: %@ (cloudkitSyncEnabled: %d, wasReportedAsJunk: %d, senderIsPairedWatch: %d, isScheduledMessage: %d)", buf, 0x24u);
        }
      }

      if ([(MessageServiceSession *)selfCopy shouldInferRecoverableDeleteForCommandDictionary:v26])
      {
        v38 = [NSDate __im_iMessageDateFromTimeStamp:stampCopy];
        v39 = [(MessageServiceSession *)selfCopy deleteCommandDictionaryWithIncomingDictionary:v26 inferredRecoverableDeleteForLegacyCommandsWithDate:v38];

        v26 = v39;
      }

      [(MessageServiceSession *)selfCopy _logLocalInfo];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1B190;
      v51[3] = &unk_1123E0;
      v51[4] = selfCopy;
      v26 = v26;
      v52 = v26;
      [(MessageServiceSession *)selfCopy _enqueueBlock:v51 withTimeout:@"deleteCommand block" description:45.0];
    }

    else if (v36)
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = v26;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "sender is not watch and iCloudSync not enabled and not reported as junk and is not a scheduled message, dropping delete command: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v54 = tokenCopy;
      v55 = 2112;
      *v56 = dCopy;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Received a delete command, but it was not from one of our own devices From: %@, ID:%@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)handler recoverCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)d needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  handlerCopy = handler;
  commandCopy = command;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  selfCopy = self;
  dCopy = d;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  deliveryController = [(MessageServiceSession *)self deliveryController];
  v26 = [deliveryController idsDeviceFromPushToken:tokenCopy];

  if (v26 || (-[MessageServiceSession deliveryController](self, "deliveryController"), v27 = objc_claimAutoreleasedReturnValue(), [v27 idsDeviceForFromID:dCopy], v26 = objc_claimAutoreleasedReturnValue(), v27, v26))
  {
    _FTOptionallyDecompressData = [commandCopy _FTOptionallyDecompressData];
    v29 = JWDecodeDictionary();

    ckUtilities = [(MessageServiceSession *)selfCopy ckUtilities];
    cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

    v32 = IMOSLoggingEnabled();
    if (cloudKitSyncingEnabled)
    {
      if (v32)
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v45 = v29;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Handling recover command: %@ cloudkitSyncEnabled: YES)", buf, 0xCu);
        }
      }

      [(MessageServiceSession *)selfCopy _logLocalInfo];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1B5B0;
      v42[3] = &unk_1123E0;
      v42[4] = selfCopy;
      v43 = v29;
      [(MessageServiceSession *)selfCopy _enqueueBlock:v42 withTimeout:@"recoverCommand block" description:45.0];
    }

    else if (v32)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v29;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "iCloudSync not enabled dropping recover command: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = tokenCopy;
      v46 = 2112;
      v47 = dCopy;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Received a recover command, but it was not from one of our own devices From: %@, ID:%@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)handler groupMessageCommand:(id)command encryptedGroupCommand:(id)groupCommand messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)self0 fromIDSID:(id)self1 needsDeliveryReceipt:(id)self2 deliveryContext:(id)self3 storageContext:(id)self4 batchContext:(id)self5
{
  handlerCopy = handler;
  commandCopy = command;
  groupCommandCopy = groupCommand;
  dCopy = d;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  iDCopy = iD;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:{identifierCopy, context}])
  {
    [(MessageServiceSession *)self _logLocalInfo];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1B938;
    v36[3] = &unk_112408;
    v37 = commandCopy;
    v38 = fromIdentifierCopy;
    v39 = tokenCopy;
    v40 = iDCopy;
    v41 = receiptCopy;
    v42 = contextCopy;
    v43 = groupCommandCopy;
    selfCopy = self;
    v45 = handlerCopy;
    v46 = dCopy;
    v47 = identifierCopy;
    v48 = stampCopy;
    v49 = storageContextCopy;
    v50 = batchContextCopy;
    [(MessageServiceSession *)self _enqueueBlock:v36 withTimeout:@"groupMessageCommand block" description:45.0];
  }
}

- (void)handler:(id)handler bubblePayloadData:(id)data forMessageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp fromIDSID:(id)self0 needsDeliveryReceipt:(id)self1 deliveryContext:(id)self2 storageContext:(id)self3 batchContext:(id)self4
{
  handlerCopy = handler;
  dataCopy = data;
  dCopy = d;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  stampCopy = stamp;
  selfCopy = self;
  iDCopy = iD;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  batchContextCopy = batchContext;
  registeredURIs = [(MessageServiceSession *)self registeredURIs];
  if (!registeredURIs && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "bubblePayload - No bindings !!", buf, 2u);
    }
  }

  if ([registeredURIs containsObject:{identifierCopy, stampCopy}])
  {
    v26 = JWDecodeDictionary();
    v27 = [v26 objectForKey:@"bid"];
    if (v27)
    {
      v28 = [v26 objectForKey:@"p"];
      v29 = [v26 objectForKey:@"bpdi"];
      v30 = v29;
      if (v28 || [v29 count])
      {
        [(MessageServiceSession *)selfCopy _logLocalInfo];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1C1B8;
        v43[3] = &unk_112040;
        v44 = dCopy;
        v45 = v27;
        v46 = selfCopy;
        v47 = handlerCopy;
        v48 = v28;
        v49 = v30;
        v50 = fromIdentifierCopy;
        v51 = tokenCopy;
        [(MessageServiceSession *)selfCopy _enqueueBlock:v43 withTimeout:@"bubble payload block" description:45.0];
      }

      else if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = dCopy;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Did not get any data for message guid %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "bubblePayload - No bundle id !!", buf, 2u);
      }
    }
  }
}

- (void)handler:(id)handler remoteFileResponse:(id)response
{
  handlerCopy = handler;
  responseCopy = response;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = responseCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Incomming Remote File response %@", &v10, 0xCu);
    }
  }

  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController remoteFileResponse:responseCopy];
}

- (void)handler:(id)handler remoteFileRequest:(id)request
{
  handlerCopy = handler;
  requestCopy = request;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = requestCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Incomming Remote File Request %@", &v10, 0xCu);
    }
  }

  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController remotefileRequest:requestCopy attempts:0 shouldRetry:1];
}

- (void)networkMonitorDidUpdate:(id)update
{
  updateCopy = update;
  v8.receiver = self;
  v8.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v8 networkMonitorDidUpdate:updateCopy];
  if ([updateCopy immediatelyReachable])
  {
    v5 = +[IMTransferServicesController sharedInstance];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = +[IMTransferServicesController sharedInstance];
      [v7 updateUltraConstrainedAttachments:{objc_msgSend(updateCopy, "attachmentPolicy") == &dword_0 + 2}];
    }
  }
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success
{
  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Processing messages for relay", v7, 2u);
      }
    }

    v4 = +[IMDServiceController sharedController];
    v5 = [v4 serviceWithName:IMServiceNameiMessageLite];

    IMSetDomainBoolForKey();
    v6 = +[IMDMessageStore sharedInstance];
    [v6 enumerateMessagesToRelayOnService:v5 usingBlock:&stru_112470];
  }
}

- (void)_relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only
{
  messageCopy = message;
  chatCopy = chat;
  v10 = objc_alloc_init(NSMutableArray);
  v36 = 0;
  v32 = chatCopy;
  v11 = _LastAddressedURIForChatLogMetricIfNeeded(chatCopy, 0, self, &v36, 0);
  v30 = v36;
  if (v11)
  {
    [v10 addObject:v11];
  }

  if (!only)
  {
    participants = [chatCopy participants];
    v13 = URIsFromHandles(participants);

    [v10 addObjectsFromArray:v13];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1D228;
  v33[3] = &unk_112498;
  onlyCopy = only;
  v14 = messageCopy;
  v34 = v14;
  v29 = objc_retainBlock(v33);
  deliveryController = [(MessageServiceSession *)self deliveryController];
  guid = [v32 guid];
  v31 = [deliveryController messageDictionaryWithMessageItem:v14 isBusiness:0 chatIdentifier:guid toParticipants:v10 originallyToParticipants:v10 additionalContext:0 msgPayloadUploadDictionary:0 originalPayload:0];

  v17 = +[NSString stringGUID];
  v18 = IDSGetUUIDData();
  deliveryController2 = [(MessageServiceSession *)self deliveryController];
  guid2 = [v32 guid];
  v21 = [NSSet setWithObject:IDSRegistrationPropertySupportsSenderKey];
  LOWORD(v28) = 0;
  v22 = [deliveryController2 idsOptionsWithMessageItem:v14 toID:0 fromID:v11 sendGUIDData:v18 alternateCallbackID:v17 isBusinessMessage:0 chatIdentifier:guid2 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:v21 deliveryContext:0 isGroupChat:v28 canInlineAttachments:0 msgPayloadUploadDictionary:v31 messageDictionary:?];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      guid3 = [v14 guid];
      *buf = 138412290;
      v38 = guid3;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Sending message for relay: %@", buf, 0xCu);
    }
  }

  deliveryController3 = [(MessageServiceSession *)self deliveryController];
  v26 = [NSSet setWithArray:v10];
  LOBYTE(v27) = 1;
  [deliveryController3 sendMessageDictionary:&__NSDictionary0__struct encryptDictionary:0 fromID:v11 fromAccount:v30 toURIs:v26 toGroup:0 priority:300 options:v22 willSendBlock:0 callCompletionOnSuccess:v27 completionBlock:v29];
}

- (void)messageDeliveryController:(id)controller didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  controllerCopy = controller;
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  if (!guidCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v32 = "[MessageServiceSession messageDeliveryController:didFlushCacheForRemoteURI:fromURI:guid:]";
      v33 = 2112;
      v34 = iCopy;
      v35 = 2112;
      v36 = rICopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Skipping cache check in %s for remoteURI %@ fromURI %@, as our messageGUID is nil.", buf, 0x20u);
    }

    goto LABEL_6;
  }

  if ([(MessageServiceSession *)self isReplicating])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = guidCopy;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not reattempting delivery of messageGUID %@, this is a replicating session", buf, 0xCu);
      }

LABEL_6:
    }
  }

  else
  {
    v15 = +[NSDate date];
    lastCacheFlushDate = [(MessageServiceSession *)self lastCacheFlushDate];
    [v15 timeIntervalSinceDate:lastCacheFlushDate];
    v18 = v17;

    lastCacheFlushDate2 = [(MessageServiceSession *)self lastCacheFlushDate];
    if (!lastCacheFlushDate2 || ([(MessageServiceSession *)self _messageRetryTimeout], v21 = v20, lastCacheFlushDate2, v18 > v21))
    {
      [(MessageServiceSession *)self _cacheMaintenanceForMessageGUIDsSeenInLastIDSCacheFlush];
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_BBD58(self, v22, v18);
      }
    }

    messageGUIDsSeenInLastIDSCacheFlush = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
    v24 = [messageGUIDsSeenInLastIDSCacheFlush objectForKey:guidCopy];
    v25 = v24 == 0;

    if (v25)
    {
      v27 = +[NSDate now];
      messageGUIDsSeenInLastIDSCacheFlush2 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
      [messageGUIDsSeenInLastIDSCacheFlush2 setObject:v27 forKey:guidCopy];

      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_BBE70();
      }

      LOBYTE(v30) = 1;
      [(MessageServiceSession *)self _reAttemptMessageDeliveryForGUID:guidCopy toIdentifier:rICopy fromIdentifier:iCopy fromIDSID:0 isReflection:0 shouldShowError:0 cacheFlushError:v30 imdAccount:0];
    }

    else
    {
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_BBDFC();
      }
    }
  }

LABEL_23:
}

- (void)messageDeliveryController:(id)controller serverUpdatedTimestampMessage:(id)message
{
  messageCopy = message;
  guid = [messageCopy guid];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  chatRegistry = [(MessageServiceSession *)self chatRegistry];
  chats = [chatRegistry chats];

  v9 = [chats countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(chats);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        lastMessage = [v13 lastMessage];
        guid2 = [lastMessage guid];
        v16 = [guid2 isEqualToIgnoringCase:guid];

        if (v16)
        {
          [v13 setLastMessage:messageCopy];
          goto LABEL_11;
        }
      }

      v10 = [chats countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_cacheMaintenanceForMessageGUIDsSeenInLastIDSCacheFlush
{
  v3 = +[NSDate date];
  lastCacheFlushDate = [(MessageServiceSession *)self lastCacheFlushDate];
  [v3 timeIntervalSinceDate:lastCacheFlushDate];
  v6 = v5;

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v30 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Cache maintenance for messageGUIDsSeenInLastIDSCacheFlush: it has been %f since last flush.", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  messageGUIDsSeenInLastIDSCacheFlush = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
  v10 = [messageGUIDsSeenInLastIDSCacheFlush countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v10)
  {
    v12 = *v26;
    *&v11 = 138412802;
    v24 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(messageGUIDsSeenInLastIDSCacheFlush);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        messageGUIDsSeenInLastIDSCacheFlush2 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
        v16 = [messageGUIDsSeenInLastIDSCacheFlush2 objectForKey:v14];

        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:v16];
        v19 = v18;

        [(MessageServiceSession *)self _messageRetryTimeout];
        if (v19 >= v20)
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              [(MessageServiceSession *)self _messageRetryTimeout];
              *buf = v24;
              v30 = v14;
              v31 = 2048;
              v32 = v19;
              v33 = 2048;
              v34 = v22;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Discarding %@ from cache as it is too old (%f > %f)", buf, 0x20u);
            }
          }
        }

        else
        {
          [v8 setObject:v16 forKeyedSubscript:v14];
        }

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [messageGUIDsSeenInLastIDSCacheFlush countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v10);
  }

  [(MessageServiceSession *)self setMessageGUIDsSeenInLastIDSCacheFlush:v8];
  v23 = +[NSDate now];
  [(MessageServiceSession *)self setLastCacheFlushDate:v23];
}

- (void)messageDeliveryController:(id)controller didFlushCacheForKTPeerURI:(id)i
{
  iCopy = i;
  v6 = +[IMDBroadcastController sharedProvider];
  broadcasterForKeyTransparencyListeners = [v6 broadcasterForKeyTransparencyListeners];
  [broadcasterForKeyTransparencyListeners refreshStatusForKTPeerURI:iCopy];
}

- (void)_forwardP2PGroupCommand:(id)command fromPerson:(id)person toPerson:(id)toPerson toGroup:(id)group toToken:(id)token messageID:(id)d
{
  commandCopy = command;
  personCopy = person;
  toPersonCopy = toPerson;
  groupCopy = group;
  tokenCopy = token;
  dCopy = d;
  if (personCopy && commandCopy && toPersonCopy)
  {
    _stripFZIDPrefix = [toPersonCopy _stripFZIDPrefix];

    _stripFZIDPrefix2 = [personCopy _stripFZIDPrefix];

    _bestGuessURI = [_stripFZIDPrefix2 _bestGuessURI];
    v20 = [(MessageServiceSession *)self idsAccountForFromURI:_bestGuessURI toURI:_stripFZIDPrefix];
    v21 = v20;
    if (v20)
    {
      idsAccount = v20;
    }

    else
    {
      idsAccount = [(MessageServiceSession *)self idsAccount];
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v56 = commandCopy;
        v57 = 2112;
        v58 = _stripFZIDPrefix2;
        v59 = 2112;
        v60 = _stripFZIDPrefix;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Request to forward P2P group command: %@  fromID: %@ to person: %@", buf, 0x20u);
      }
    }

    [(MessageServiceSession *)self _logLocalInfo];
    if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
    {
      if ([(MessageServiceSession *)self isReplicating])
      {
        theDict = [(__CFDictionary *)commandCopy mutableCopy];
        service = [(MessageServiceSession *)self service];
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [service replicationSourceID]);

        if (v24)
        {
          CFDictionarySetValue(theDict, @"rp", v24);
        }
      }

      else
      {
        theDict = commandCopy;
      }

      v45 = objc_alloc_init(NSMutableDictionary);
      v26 = [NSNumber numberWithUnsignedInt:190];
      if (v26)
      {
        CFDictionarySetValue(v45, @"c", v26);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_BBEE4();
      }

      v27 = _stripFZIDPrefix;
      if (v27)
      {
        CFDictionarySetValue(v45, @"id", v27);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_BBF74();
      }

      if (theDict)
      {
        CFDictionarySetValue(v45, @"p", theDict);
      }

      v46 = +[NSSet set];
      if ([(MessageServiceSession *)self isReplicating])
      {
        v54 = IDSRegistrationPropertySupportsHybridGroupsV1;
        v28 = [NSArray arrayWithObjects:&v54 count:1];
        v29 = [NSSet setWithArray:v28];

        v46 = v29;
      }

      v30 = JWEncodeDictionary();
      groupController = [(MessageServiceSession *)self groupController];
      v32 = [groupController shouldCompressGroupPayload:theDict];

      if (v32)
      {
        _FTCopyGzippedData = [v30 _FTCopyGzippedData];

        v30 = _FTCopyGzippedData;
      }

      v34 = objc_alloc_init(NSMutableDictionary);
      v52[0] = IDSSendMessageOptionTopLevelDictionaryKey;
      v52[1] = IDSSendMessageOptionSkipPayloadCheckKey;
      v53[0] = &__kCFBooleanTrue;
      v53[1] = &__kCFBooleanTrue;
      v52[2] = IDSSendMessageOptionCommandKey;
      v35 = [NSNumber numberWithInteger:190];
      v53[2] = v35;
      v52[3] = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
      v52[4] = IDSSendMessageOptionDataToEncryptKey;
      v53[3] = v46;
      v53[4] = v30;
      v52[5] = IDSSendMessageOptionWantsResponseKey;
      v53[5] = &off_119260;
      v36 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:6];
      [v34 addEntriesFromDictionary:v36];

      if (dCopy)
      {
        v37 = IDSGetUUIDData();
        [v34 setObject:v37 forKeyedSubscript:IDSSendMessageOptionUUIDKey];
      }

      _bestGuessURI2 = [v27 _bestGuessURI];
      v39 = _bestGuessURI2;
      if (tokenCopy)
      {
        v39 = [IDSDestination destinationWithAlias:_bestGuessURI2 pushToken:tokenCopy];
      }

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v56 = groupCopy;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Sending P2P command to engroup: %@", buf, 0xCu);
        }
      }

      deliveryController = [(MessageServiceSession *)self deliveryController];
      v42 = +[NSDictionary dictionary];
      v43 = [NSSet setWithObject:v39];
      v44 = [v34 copy];
      [deliveryController sendMessageDictionary:v42 fromID:_bestGuessURI fromAccount:idsAccount toURIs:v43 toGroup:groupCopy priority:300 options:v44 completionBlock:&stru_1124B8];

      commandCopy = theDict;
    }

    else if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, " ** Not sending command, device is not registered", buf, 2u);
      }
    }
  }

  else
  {
    _stripFZIDPrefix = toPersonCopy;
    _stripFZIDPrefix2 = personCopy;
  }
}

- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block
{
  infoCopy = info;
  dCopy = d;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = infoCopy;
      v29 = 2112;
      v30 = dCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Request to send location sharing info: %@   to person: %@", buf, 0x16u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v11 = [(MessageServiceSession *)self callerURIUsingCalleeURI:dCopy];
  v12 = [(MessageServiceSession *)self idsAccountForFromURI:v11 toURI:dCopy];
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v12])
  {
    v22 = +[NSString stringGUID];
    v21 = [NSSet setWithObject:IDSRegistrationPropertySupportsLocationSharing];
    v13 = IDSGetUUIDData();
    v14 = [NSNumber numberWithInteger:195];
    v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v13, IDSSendMessageOptionUUIDKey, v14, IDSSendMessageOptionCommandKey, v21, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, 0];

    deliveryController = [(MessageServiceSession *)self deliveryController];
    v17 = [NSDictionary dictionaryWithObjectsAndKeys:infoCopy, @"p", 0];
    _bestGuessURI = [dCopy _bestGuessURI];
    v19 = [NSSet setWithObject:_bestGuessURI];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1E940;
    v24[3] = &unk_1124E0;
    v25 = dCopy;
    v26 = blockCopy;
    [deliveryController sendMessageDictionary:v17 fromID:v11 fromAccount:v12 toURIs:v19 toGroup:0 priority:300 options:v15 completionBlock:v24];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, " ** Not sending command, device is not registered", buf, 2u);
      }
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (id)idsServiceForIDSAccount:(id)account
{
  accountCopy = account;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_messagePushHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = *v31;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      account = [v9 account];
      v11 = [account isEqual:accountCopy];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_9:
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_messagePushHandlers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = *v27;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v26 + 1) + 8 * v16);
      account2 = [v17 account];
      loginID = [account2 loginID];
      loginID2 = [accountCopy loginID];
      v21 = [loginID isEqual:loginID2];

      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v12 = v17;

    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_21:
    service = [v12 service];
  }

  else
  {
LABEL_19:

LABEL_22:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Couldn't find push handler", v25, 2u);
      }
    }

    v12 = 0;
    service = 0;
  }

  return service;
}

- (void)_engroupForChat:(id)chat idsAccount:(id)account completion:(id)completion
{
  chatCopy = chat;
  accountCopy = account;
  completionCopy = completion;
  if (!chatCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Trying to look up an engroup on a nil chat", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  engramID = [chatCopy engramID];
  v12 = [engramID length];

  if (!v12)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Trying to look up an engroup for a chat that does not have an engram ID", buf, 2u);
      }
    }

LABEL_9:
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_21;
  }

  v13 = [(MessageServiceSession *)self idsServiceForIDSAccount:accountCopy];
  if (v13)
  {
    groupController = [(MessageServiceSession *)self groupController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1F050;
    v18[3] = &unk_112508;
    v19 = chatCopy;
    v20 = completionCopy;
    [groupController engroupForChat:v19 service:v13 completionBlock:v18];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = chatCopy;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Got a nil service back when trying to look up engroup for chat: %@", buf, 0xCu);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_21:
}

- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  infoCopy = info;
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  val = self;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v71 = infoCopy;
      v72 = 2112;
      v73 = chatCopy;
      v74 = 1024;
      v75 = styleCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Request to invite person: %@   chat: %@  style: %c", buf, 0x1Cu);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v66 = chatCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v66 style:&styleCopy];
  v51 = v66;

  v12 = v51;
  if (v51)
  {
    v13 = [(MessageServiceSession *)self chatForChatIdentifier:v51 style:styleCopy updatingAccount:1];
    v65 = 0;
    v49 = _LastAddressedURIForChatLogMetricIfNeeded(v13, 0, self, &v65, 0);
    v50 = v65;
    v44 = [(MessageServiceSession *)self idsServiceForIDSAccount:?];
    [(MessageServiceSession *)self _fixParticipantsForChat:v13];
    v14 = +[IMDFileTransferCenter sharedInstance];
    groupPhotoGuid = [v13 groupPhotoGuid];
    v16 = [v14 transferForGUID:groupPhotoGuid];
    _dictionaryToSend = [v16 _dictionaryToSend];

    backgroundPropertiesForNewGroupParticipant = [v13 backgroundPropertiesForNewGroupParticipant];
    objc_initWeak(buf, self);
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [infoCopy count]);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = infoCopy;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v19)
    {
      v20 = *v62;
      v21 = kFZPersonID;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v61 + 1) + 8 * i) objectForKeyedSubscript:v21];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v19);
    }

    v48 = [(MessageServiceSession *)val dictionaryForHandlesToGUIDsFromHandleInfo:v18];
    groupController = [(MessageServiceSession *)val groupController];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1F828;
    v57[3] = &unk_112530;
    v41 = v17;
    v58 = v41;
    objc_copyWeak(&v60, buf);
    v59 = v13;
    v40 = v59;
    [groupController addParticipants:v48 toChat:_dictionaryToSend fromID:backgroundPropertiesForNewGroupParticipant fromAccount:v57 session:? service:? groupPhoto:? transcriptBackground:? completionBlock:?];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v18;
    v25 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
    if (v25)
    {
      v26 = *v54;
      v27 = kFZPersonID;
      v28 = kFZPersonUnformattedName;
      v29 = kFZPersonCountryCode;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v53 + 1) + 8 * j);
          v32 = [v31 objectForKeyedSubscript:v27];
          if (v32)
          {
            v33 = objc_alloc_init(IMDChatMemberStatusChangeContext);
            [v33 setStatus:2];
            [v33 setHandleID:v32];
            v34 = [v31 objectForKeyedSubscript:v28];
            [v33 setUnformattedNumber:v34];

            v35 = [v31 objectForKeyedSubscript:v29];
            [v33 setCountryCode:v35];

            [v33 setChatIdentifier:v51];
            [v33 setStyle:styleCopy];
            v36 = [(MessageServiceSession *)val imdAccountForIDSAccount:v50];
            [v33 setAccount:v36];

            _stripFZIDPrefix = [v49 _stripFZIDPrefix];
            [v33 setDestinationCallerID:_stripFZIDPrefix];

            v38 = [v48 objectForKeyedSubscript:v32];
            [v33 setMessageID:v38];

            v39 = [(MessageServiceSession *)val didChangeMemberStatus:v33];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
      }

      while (v25);
    }

    objc_destroyWeak(&v60);
    objc_destroyWeak(buf);

    v12 = v51;
  }
}

- (id)generateAndStoreAssetChangeStatusItemForChat:(id)chat sender:(id)sender fileTransferGuid:(id)guid assetStatusChange:(id)change
{
  chatCopy = chat;
  senderCopy = sender;
  guidCopy = guid;
  changeCopy = change;
  v14 = IMOSLoggingEnabled();
  if (chatCopy)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        isHidden = [changeCopy isHidden];
        v18 = @"NO";
        *v57 = 138413058;
        *&v57[4] = guid;
        *&v57[12] = 2112;
        if (isHidden)
        {
          v18 = @"YES";
        }

        *&v57[14] = senderCopy;
        v58 = 2112;
        v59 = guidCopy;
        v60 = 2112;
        v61 = v18;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Generating IMGroupActionItem for chat asset update. chatGuid %@ sender %@ fileTransferGuid %@ isHidden %@", v57, 0x2Au);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v57 = 138412290;
        *&v57[4] = chatCopy;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " => chat: %@", v57, 0xCu);
      }
    }

    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    if ([senderCopy isEqualToString:lastAddressedLocalHandle])
    {
    }

    else
    {
      account = [(MessageServiceSession *)self account];
      loginID = [account loginID];
      _stripFZIDPrefix = [loginID _stripFZIDPrefix];
      v26 = [senderCopy isEqualToString:_stripFZIDPrefix];

      if (!v26)
      {
LABEL_25:
        isFiltered = [chatCopy isFiltered];
        participants = [chatCopy participants];
        LOBYTE(isFiltered) = [(MessageServiceSession *)self shouldDisplayGroupNameAndPhotoWith:isFiltered handles:participants];

        if ((isFiltered & 1) == 0)
        {
          v30 = +[ChatAssetStatusChangeContext contextWithAssetChangeType:isHidden:hasSensitiveContent:](ChatAssetStatusChangeContext, "contextWithAssetChangeType:isHidden:hasSensitiveContent:", [changeCopy type], 1, objc_msgSend(changeCopy, "hasSensitiveContent"));

          changeCopy = v30;
        }

        if ([changeCopy type] == 1)
        {
          if (guidCopy)
          {
            v31 = guidCopy;
          }

          else
          {
            v31 = +[NSString stringGUID];
          }

          v35 = v31;
        }

        else
        {
          v32 = IMMessageGuidFromIMFileTransferGuid();
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = +[NSString stringGUID];
          }

          v35 = v34;
        }

        messageStore = [(MessageServiceSession *)self messageStore];
        v37 = [messageStore itemWithGUID:v35];

        if (!v37)
        {
          goto LABEL_44;
        }

        if ([changeCopy isHidden])
        {
          if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *v57 = 0;
              _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "We've already created a status item for this transfer, and the new one is hidden, don't show anything new.", v57, 2u);
            }
          }

          v22 = 0;
          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = +[NSString stringGUID];
          v40 = IMLogHandleForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *v57 = 138412802;
            *&v57[4] = v35;
            *&v57[12] = 2112;
            *&v57[14] = v39;
            v58 = 2112;
            v59 = v37;
            _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "We already have an item for guid: %@, and it is not a IMGroupActionItem. That shouldn't be possible. Generating a new GUID to prevent us overwriting an existing message with an IMGroupActionItem. New guid: %@ Existing item: %@", v57, 0x20u);
          }
        }

        else
        {
LABEL_44:
          v39 = v35;
        }

        v41 = [IMGroupActionItem alloc];
        v42 = +[NSDate date];
        v43 = [v41 initWithSender:senderCopy time:v42 guid:v39 type:3];

        service = [(MessageServiceSession *)self service];
        internalName = [service internalName];
        [v43 setService:internalName];

        account2 = [(MessageServiceSession *)self account];
        accountID = [account2 accountID];
        [v43 setAccountID:accountID];

        account3 = [(MessageServiceSession *)self account];
        loginID2 = [account3 loginID];
        [v43 setAccount:loginID2];

        chatIdentifier = [chatCopy chatIdentifier];
        [v43 setRoomName:chatIdentifier];

        type = [changeCopy type];
        if (guidCopy)
        {
          resolvedGroupActionType = [changeCopy resolvedGroupActionType];
        }

        else if (type)
        {
          resolvedGroupActionType = &dword_4 + 2;
        }

        else
        {
          resolvedGroupActionType = &dword_0 + 2;
        }

        [v43 setActionType:resolvedGroupActionType];
        messageStore2 = [(MessageServiceSession *)self messageStore];
        v22 = [messageStore2 storeItem:v43 forceReplace:0];

        chatStore = [(MessageServiceSession *)self chatStore];
        guid2 = [v22 guid];
        [chatStore addMessageWithGUID:guid2 toChat:chatCopy];

        v35 = v39;
LABEL_54:

        goto LABEL_55;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *v57 = 138412290;
        *&v57[4] = senderCopy;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Setting sender to nil (myself) because sender %@ is the lastAddressedLocalHandle or the current account's login ID", v57, 0xCu);
      }
    }

    senderCopy = 0;
    goto LABEL_25;
  }

  if (v14)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v57 = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "generateAndStoreAssetChangeStatusItemForChat passed a nil chat. early returning nil", v57, 2u);
    }
  }

  v22 = 0;
LABEL_55:

  return v22;
}

- (void)groupPhotoUploadCompletedForChat:(id)chat fileTransferGuid:(id)guid callerURI:(id)i fromAccount:(id)account message:(id)message displayIDs:(id)ds additionalContext:(id)context success:(BOOL)self0 isPhotoRefresh:(BOOL)self1 error:(unsigned int)self2
{
  chatCopy = chat;
  guidCopy = guid;
  iCopy = i;
  accountCopy = account;
  messageCopy = message;
  dsCopy = ds;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v26 = guid;
      v27 = @"NO";
      *buf = 138413058;
      if (success)
      {
        v27 = @"YES";
      }

      v38 = guid;
      v39 = 2112;
      v40 = guidCopy;
      v41 = 2112;
      v42 = v27;
      v43 = 1024;
      errorCopy = error;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "upload group photo complete. chatGuid %@ fileTransferGuid %@ success %@ error %u", buf, 0x26u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = chatCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

  if (chatCopy && [chatCopy style] != 45)
  {
    if (success)
    {
      v29 = +[IMDFileTransferCenter sharedInstance];
      v30 = [v29 transferForGUID:guidCopy];

      v31 = +[NSDate date];
      [v30 setRefreshDate:v31];

      v32 = +[IMDAttachmentStore sharedInstance];
      guid2 = [messageCopy guid];
      [v32 storeAttachment:v30 associateWithMessageWithGUID:guid2];

      groupController = [(MessageServiceSession *)self groupController];
      _dictionaryToSend = [v30 _dictionaryToSend];
      [groupController setGroupPhoto:_dictionaryToSend forChat:chatCopy fromID:iCopy fromAccount:accountCopy session:self isPhotoRefresh:refresh];
    }

    else
    {
      [(MessageServiceSession *)self groupPhotoUploadFailedForChat:chatCopy fileTransferGuid:guidCopy];
    }
  }
}

- (void)groupPhotoUploadFailedForChat:(id)chat fileTransferGuid:(id)guid
{
  chatCopy = chat;
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v22 = 138412546;
      v23 = guidCopy;
      v24 = 2112;
      v25 = guid;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "group photo %@ upload failed for chatGuid %@", &v22, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = chatCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, " => chat: %@", &v22, 0xCu);
    }
  }

  groupPhotoGuid = [chatCopy groupPhotoGuid];
  v11 = [groupPhotoGuid isEqualToString:guidCopy];

  if (v11)
  {
    groupPhotoUploadFailureCount = [chatCopy groupPhotoUploadFailureCount];
    integerValue = [groupPhotoUploadFailureCount integerValue];

    v14 = integerValue + 1;
    v15 = [NSNumber numberWithInteger:integerValue + 1];
    [chatCopy updateGroupPhotoUploadFailureCount:v15];

    LOBYTE(integerValue) = integerValue < IMGroupPhotoMaxUploadCount;
    v16 = IMOSLoggingEnabled();
    if (integerValue)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = 134217984;
          v23 = v14;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, " => ready to retry group photo. new failure count: %zd", &v22, 0xCu);
        }
      }

      v18 = +[IMDFileTransferCenter sharedInstance];
      [v18 setRecoverableErrorForTransfer:guidCopy error:27];
    }

    else
    {
      if (v16)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 134217984;
          v23 = v14;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, " => too many upload failures (%zd). failing transfer", &v22, 0xCu);
        }
      }

      v21 = +[IMDFileTransferCenter sharedInstance];
      [v21 failTransfer:guidCopy reason:27];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " => This chat has a different group photo guid now. not retrying", &v22, 2u);
    }
  }
}

- (BOOL)shouldUploadGroupPhoto:(id)photo
{
  photoCopy = photo;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:photoCopy];

  totalBytes = [v5 totalBytes];
  if (totalBytes > 0x200000 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      totalBytes2 = [v5 totalBytes];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "**Not** uploading group photo, too big. Size: %llu", &v9, 0xCu);
    }
  }

  return totalBytes <= 0x200000;
}

- (void)uploadGroupPhotoForChat:(id)chat fileTransferGUID:(id)d itemGUID:(id)iD callerURI:(id)i idsAccount:(id)account isPhotoRefresh:(BOOL)refresh
{
  chatCopy = chat;
  dCopy = d;
  iDCopy = iD;
  iCopy = i;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      *buf = 138413314;
      v51 = guid;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = iDCopy;
      v56 = 2112;
      v57 = iCopy;
      v58 = 2112;
      v59 = accountCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "uploading group photo. chatGuid: %@ fileTransferGUID: %@ itemGUID: %@ callerURI: %@ idsAccount: %@", buf, 0x34u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = chatCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

  participants = [chatCopy participants];
  v19 = [participants arrayByApplyingSelector:"ID"];

  v20 = [(MessageServiceSession *)self shouldUploadGroupPhoto:dCopy];
  if (((dCopy != 0) & v20) == 1)
  {
    v21 = [IMMessageItem alloc];
    account = [(MessageServiceSession *)self account];
    loginID = [account loginID];
    v24 = +[NSDate date];
    v49 = dCopy;
    v25 = [NSArray arrayWithObjects:&v49 count:1];
    v26 = [v21 initWithSender:loginID time:v24 body:0 attributes:0 fileTransferGUIDs:v25 flags:5 error:0 guid:iDCopy threadIdentifier:0];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_20E90;
    v43[3] = &unk_112558;
    v43[4] = self;
    v27 = chatCopy;
    v44 = v27;
    v28 = dCopy;
    v45 = v28;
    v46 = iCopy;
    v47 = accountCopy;
    refreshCopy = refresh;
    v29 = objc_retainBlock(v43);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_20EE8;
    v39[3] = &unk_112580;
    v40 = v27;
    v41 = v28;
    selfCopy = self;
    v30 = objc_retainBlock(v39);
    attachmentController = [(MessageServiceSession *)self attachmentController];
    sender = [v26 sender];
    [attachmentController sendAttachmentsForMessage:v26 canSendInline:0 displayIDs:v19 additionalContext:0 mode:2 fromID:sender recipients:v19 completionBlock:v29 uploadFailureBlock:v30];
  }

  else if (dCopy || ((v20 ^ 1) & 1) != 0)
  {
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_BC004();
    }
  }

  else
  {
    BYTE1(v34) = refresh;
    LOBYTE(v34) = 1;
    [MessageServiceSession groupPhotoUploadCompletedForChat:"groupPhotoUploadCompletedForChat:fileTransferGuid:callerURI:fromAccount:message:displayIDs:additionalContext:success:isPhotoRefresh:error:" fileTransferGuid:chatCopy callerURI:0 fromAccount:iCopy message:accountCopy displayIDs:0 additionalContext:v19 success:0 isPhotoRefresh:v34 error:?];
  }
}

- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  styleCopy = style;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v27 = updateCopy;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = identifierCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "ChatBot Logo - Update brand logo %@ to chatID %@ identifier %@", buf, 0x20u);
    }
  }

  v24 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v24 style:&styleCopy];
  v17 = v24;

  if (v17)
  {
    v18 = [(MessageServiceSession *)self chatForChatIdentifier:v17 style:styleCopy updatingAccount:1];
    v19 = [ChatAssetStatusChangeContext contextWithAssetChangeType:0 isHidden:1 hasSensitiveContent:0];
    v20 = [(MessageServiceSession *)self generateAndStoreAssetChangeStatusItemForChat:v18 sender:0 fileTransferGuid:updateCopy assetStatusChange:v19];
    attachmentController = [(MessageServiceSession *)self attachmentController];
    guid = [v20 guid];
    [attachmentController updateGroupPhoto:updateCopy forChat:v18 messageGuid:guid];
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "sendBrandLogoUpdate early return -- no chat identifier", buf, 2u);
    }
  }
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  styleCopy = style;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v47 = updateCopy;
      v48 = 2112;
      v49 = dCopy;
      v50 = 2112;
      v51 = identifierCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Request to send group photo update %@ to chatID %@ identifier %@", buf, 0x20u);
    }
  }

  v44 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v44 style:&styleCopy];
  v42 = v44;

  if (v42)
  {
    v16 = [(MessageServiceSession *)self chatForChatIdentifier:v42 style:styleCopy updatingAccount:1];
    v43 = 0;
    v37 = _LastAddressedURIForChatLogMetricIfNeeded(v16, 0, self, &v43, 0);
    v36 = v43;
    v38 = [ChatAssetStatusChangeContext contextWithAssetChangeType:0 isHidden:refreshCopy hasSensitiveContent:0];
    v17 = [(MessageServiceSession *)self generateAndStoreAssetChangeStatusItemForChat:v16 sender:0 fileTransferGuid:updateCopy assetStatusChange:v38];
    groupPhotoGuid = [v16 groupPhotoGuid];
    v19 = [groupPhotoGuid isEqualToString:updateCopy];

    if ((v19 & 1) == 0)
    {
      broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
      account = [(MessageServiceSession *)self account];
      accountID = [account accountID];
      chatIdentifier = [v16 chatIdentifier];
      style = [v16 style];
      groupID = [v16 groupID];
      personCentricID = [v16 personCentricID];
      [broadcasterForChatListeners account:accountID chat:chatIdentifier style:style chatProperties:0 groupID:groupID chatPersonCentricID:personCentricID messageReceived:v17];
    }

    guid = [v17 guid];
    [(MessageServiceSession *)self uploadGroupPhotoForChat:v16 fileTransferGUID:updateCopy itemGUID:guid callerURI:v37 idsAccount:v36 isPhotoRefresh:refreshCopy];

    attachmentController = [(MessageServiceSession *)self attachmentController];
    guid2 = [v17 guid];
    [attachmentController updateGroupPhoto:updateCopy forChat:v16 messageGuid:guid2];

    broadcasterForChatListeners2 = [(MessageServiceSession *)self broadcasterForChatListeners];
    chatIdentifier2 = [v16 chatIdentifier];
    style2 = [v16 style];
    account2 = [(MessageServiceSession *)self account];
    accountID2 = [account2 accountID];
    [broadcasterForChatListeners2 groupPhotoUpdatedForChatIdentifier:chatIdentifier2 style:style2 account:accountID2 userInfo:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "sendGroupPhotoUpdate early return -- no chat identifier", buf, 2u);
    }
  }
}

- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  v11 = +[IMDChatRegistry sharedInstance];
  v12 = [v11 existingChatWithGUID:dCopy];

  if (v12)
  {
    groupController = [(MessageServiceSession *)self groupController];
    v14 = +[NSDate date];
    [groupController requestGroupPhotoIfNecessary:v12 incomingParticipantVersion:0x7FFFFFFFFFFFFFFFLL incomingGroupPhotoCreationDate:v14 toIdentifier:toIdentifierCopy fromIdentifier:identifierCopy messageIsFromStorage:0 session:self];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = dCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed to find a chat for chatGUID: %@", buf, 0xCu);
    }
  }
}

- (void)generateTranscriptBackground:(id)background destinationURL:(id)l senderContext:(id)context resultBlock:(id)block
{
  backgroundCopy = background;
  lCopy = l;
  contextCopy = context;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = backgroundCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Requesting blastdoor of transcript background poster at path %@", buf, 0xCu);
    }
  }

  v14 = +[IMTranscodeController sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_21F60;
  v16[3] = &unk_112340;
  v17 = blockCopy;
  v15 = blockCopy;
  [v14 generatePosterConfigFromSource:backgroundCopy destination:lCopy senderContext:contextCopy completionBlock:v16 blockUntilReply:0];
}

- (void)removePersonInfo:(id)info chatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  styleCopy = style;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v65 = infoCopy;
      v66 = 2112;
      v67 = identifierCopy;
      v68 = 1024;
      v69 = styleCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Request to remove person: %@   chat: %@  style: %c", buf, 0x1Cu);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v60 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v60 style:&styleCopy];
  v45 = v60;

  v11 = v45;
  if (v45)
  {
    v40 = [(MessageServiceSession *)self chatForChatIdentifier:v45 style:styleCopy updatingAccount:1];
    if ([v40 state])
    {
      v59 = 0;
      v43 = _LastAddressedURIForChatLogMetricIfNeeded(v40, 0, self, &v59, 0);
      v44 = v59;
      v37 = [(MessageServiceSession *)self idsServiceForIDSAccount:?];
      [(MessageServiceSession *)self _fixParticipantsForChat:v40];
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [infoCopy count]);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v13 = infoCopy;
      v14 = [v13 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v14)
      {
        v15 = *v56;
        v16 = kFZPersonID;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v56 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v55 + 1) + 8 * i) objectForKeyedSubscript:v16];
            if (v18)
            {
              [v12 addObject:v18];
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v14);
      }

      v42 = [(MessageServiceSession *)self dictionaryForHandlesToGUIDsFromHandleInfo:v13];
      groupController = [(MessageServiceSession *)self groupController];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_22564;
      v51[3] = &unk_1125A8;
      v36 = v12;
      v52 = v36;
      selfCopy = self;
      v54 = v40;
      [groupController removeParticipants:v42 toChat:v54 fromID:v43 fromAccount:v44 session:self service:v37 completionBlock:v51];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v13;
      v20 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v20)
      {
        v21 = *v48;
        v22 = kFZPersonID;
        v23 = kFZPersonUnformattedName;
        v24 = kFZPersonCountryCode;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v47 + 1) + 8 * j);
            v27 = [v26 objectForKeyedSubscript:v22];
            if (v27)
            {
              v28 = objc_alloc_init(IMDChatMemberStatusChangeContext);
              [v28 setStatus:3];
              [v28 setHandleID:v27];
              v29 = [v26 objectForKeyedSubscript:v23];
              [v28 setUnformattedNumber:v29];

              v30 = [v26 objectForKeyedSubscript:v24];
              [v28 setCountryCode:v30];

              [v28 setChatIdentifier:v45];
              [v28 setStyle:styleCopy];
              v31 = [(MessageServiceSession *)self imdAccountForIDSAccount:v44];
              [v28 setAccount:v31];

              _stripFZIDPrefix = [v43 _stripFZIDPrefix];
              [v28 setDestinationCallerID:_stripFZIDPrefix];

              v33 = [v42 objectForKeyedSubscript:v27];
              [v28 setMessageID:v33];

              v34 = [(MessageServiceSession *)self didChangeMemberStatus:v28];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
        }

        while (v20);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "*** Failed to remove person because we have already left the chat", buf, 2u);
      }
    }

    v11 = v45;
  }
}

- (void)stageMessageWrapperBlock:(id)block
{
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = blockCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock blockWrapper %@", buf, 0xCu);
    }
  }

  if (blockCopy)
  {
    block = [blockCopy block];
    v7 = block == 0;

    if (!v7)
    {
      pendingSendBlockQueue = self->_pendingSendBlockQueue;
      if (!pendingSendBlockQueue)
      {
        v9 = objc_alloc_init(NSMutableArray);
        v10 = self->_pendingSendBlockQueue;
        self->_pendingSendBlockQueue = v9;

        pendingSendBlockQueue = self->_pendingSendBlockQueue;
      }

      if (-[NSMutableArray count](pendingSendBlockQueue, "count") || ([blockCopy isDelayedRichLinkBlock] & 1) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_pendingSendBlockQueue count]];
            *buf = 138412546;
            v19 = blockCopy;
            v20 = 2112;
            v21 = v12;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock enqueing block %@, pending block count %@", buf, 0x16u);
          }
        }

        v13 = self->_pendingSendBlockQueue;
        if (v13)
        {
          CFArrayAppendValue(v13, blockCopy);
        }

        if ([blockCopy isDelayedRichLinkBlock])
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock dispatching _flushQueuedMessageWrapperBlocks", buf, 2u);
            }
          }

          [(MessageServiceSession *)self _richLinkDelayTimeInterval];
          im_dispatch_after();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_pendingSendBlockQueue count]];
            *buf = 138412546;
            v19 = blockCopy;
            v20 = 2112;
            v21 = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock calling block immediately %@ [_pendingSendBlockQueue count]:%@ ", buf, 0x16u);
          }
        }

        block2 = [blockCopy block];
        block2[2]();
      }
    }
  }
}

- (BOOL)_richLinkPendSendingWithGUID:(id)d
{
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_pendingSendBlockQueue;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        gUID = [v9 GUID];
        if ([gUID isEqualToString:dCopy])
        {
          isDelayedRichLinkBlock = [v9 isDelayedRichLinkBlock];

          if (isDelayedRichLinkBlock)
          {
            LODWORD(v6) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

LABEL_12:

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v6)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "_richLinkPendSendingWithGUID GUID %@ result %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)_flushQueuedMessageWrapperBlocks
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_pendingSendBlockQueue count]];
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "_flushQueuedMessageWrapperBlocks _pendingSendBlockQueue %@", buf, 0xCu);
    }
  }

  if ([(NSMutableArray *)self->_pendingSendBlockQueue count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = *&self->IMDAppleServiceSession_opaque[v21];
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = *v24;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          block = [v9 block];
          if (v5 && ([v9 isDelayedRichLinkBlock] & 1) != 0)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [NSNumber numberWithUnsignedInteger:v5];
                *buf = 138412546;
                v28 = v9;
                v29 = 2112;
                v30 = v14;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "_flushQueuedMessageWrapperBlocks stopped dequeuing at block %@ index %@", buf, 0x16u);
              }
            }

            goto LABEL_27;
          }

          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = [NSNumber numberWithUnsignedInteger:v5];
              *buf = 138412290;
              v28 = v12;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "_flushQueuedMessageWrapperBlocks dequeing block at index %@", buf, 0xCu);
            }
          }

          if (block)
          {
            block[2](block);
          }

          ++v5;
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [NSNumber numberWithUnsignedInteger:0];
        v17 = [NSNumber numberWithUnsignedInteger:v5];
        *buf = 138412546;
        v28 = v16;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "MessageServiceSession removing objects in range.location%@ range.length%@", buf, 0x16u);
      }
    }

    [*&self->IMDAppleServiceSession_opaque[v21] removeObjectsInRange:{0, v5}];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*&self->IMDAppleServiceSession_opaque[v21] count]);
        firstObject = [*&self->IMDAppleServiceSession_opaque[v21] firstObject];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = firstObject;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "_flushQueuedMessageWrapperBlocks state at the end of dequeuing [_pendingSendBlockQueue count] %@ first block %@", buf, 0x16u);
      }
    }
  }
}

- (void)eagerUploadTransfer:(id)transfer recipients:(id)recipients
{
  recipientsCopy = recipients;
  transferCopy = transfer;
  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController eagerUploadTransfer:transferCopy recipients:recipientsCopy];
}

- (void)eagerUploadCancel:(id)cancel
{
  cancelCopy = cancel;
  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController eagerUploadCancel:cancelCopy];
}

- (void)_sendHighResolutionImagesForMessage:(id)message fromID:(id)d fromAccount:(id)account toURIs:(id)is toChat:(id)chat
{
  messageCopy = message;
  dCopy = d;
  accountCopy = account;
  isCopy = is;
  chatCopy = chat;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = objc_alloc_init(NSMutableArray);
  v35 = v12;
  [v12 setObject:v13 forKeyedSubscript:@"fileTransferUpdates"];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v15 = [fileTransferGUIDs countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v15)
  {
LABEL_17:

    goto LABEL_18;
  }

  v16 = 0;
  v17 = *v44;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(fileTransferGUIDs);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      v20 = +[IMDFileTransferCenter sharedInstance];
      v21 = [v20 transferForGUID:v19];

      userInfo = [v21 userInfo];
      v23 = userInfo;
      if (userInfo && [userInfo count])
      {
        [v13 addObject:v23];
        v16 = 1;
      }
    }

    v15 = [fileTransferGUIDs countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v15);

  if (v16)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Sending a FTCommandIDUpdateAttachmentsMessage command", buf, 2u);
      }
    }

    v25 = [NSNumber numberWithInteger:108];
    v26 = JWEncodeDictionary();
    guid = [messageCopy guid];
    v28 = IDSGetUUIDData();
    v29 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v25, IDSSendMessageOptionCommandKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v26, IDSSendMessageOptionDataToEncryptKey, v28, IDSSendMessageOptionUUIDKey, 0];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_23D80;
    v36[3] = &unk_112630;
    v36[4] = self;
    v37 = dCopy;
    v38 = accountCopy;
    v39 = isCopy;
    v40 = v29;
    v41 = &stru_112608;
    fileTransferGUIDs = v29;
    [(MessageServiceSession *)self _engroupForChat:chatCopy idsAccount:v38 completion:v36];

    goto LABEL_17;
  }

LABEL_18:
}

- (id)_calculateQueueIdentifierForMessage:(id)message
{
  messageCopy = message;
  cloudKitChatID = [messageCopy cloudKitChatID];
  sender = [messageCopy sender];

  v6 = [NSString stringWithFormat:@"%@-%@", cloudKitChatID, sender];

  uTF8String = [v6 UTF8String];
  v8 = [NSMutableData dataWithLength:32];
  LODWORD(sender) = strlen(uTF8String);
  CC_SHA256(uTF8String, sender, [v8 mutableBytes]);

  return v8;
}

- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only
{
  messageCopy = message;
  dCopy = d;
  styleCopy = style;
  identifierCopy = identifier;
  [(MessageServiceSession *)self _logLocalInfo];
  v78 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v78 style:&styleCopy];
  v61 = v78;

  v62 = [(MessageServiceSession *)self chatForChatIdentifier:v61 style:styleCopy updatingAccount:1];
  v77 = 0;
  v60 = _LastAddressedURIForChatLogMetricIfNeeded(v62, 0, self, &v77, 0);
  v63 = v77;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:?])
  {
    v12 = [(MessageServiceSession *)self shouldSendReadReceiptsForChat:v61 style:styleCopy];
    if (styleCopy == 45)
    {
      v13 = v12;
      isOscarChat = [v62 isOscarChat];
      v15 = IMOSLoggingEnabled();
      if (!isOscarChat)
      {
        if (v15)
        {
          v54 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v85 = messageCopy;
            v86 = 2112;
            v87 = v61;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "send read receipt for message: %@   to identifier: %@", buf, 0x16u);
          }
        }

        goto LABEL_17;
      }

      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v85 = v62;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Not sending remote read receipt for junk chat: %@", buf, 0xCu);
        }

LABEL_15:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v85) = styleCopy;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Not sending remote read receipt for non 1-1 chat style: %c", buf, 8u);
      }

      goto LABEL_15;
    }

    v13 = 0;
LABEL_17:
    v82[0] = IDSSendMessageOptionTopLevelDictionaryKey;
    v82[1] = IDSSendMessageOptionSkipPayloadCheckKey;
    v83[0] = &__kCFBooleanTrue;
    v83[1] = &__kCFBooleanTrue;
    v83[2] = &off_119278;
    v82[2] = IDSSendMessageOptionCommandKey;
    v82[3] = IDSSendMessageOptionUUIDKey;
    guid = [messageCopy guid];
    v21 = IDSGetUUIDData();
    v83[3] = v21;
    v82[4] = IDSSendMessageOptionTimeoutKey;
    v22 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v83[4] = v22;
    v58 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:5];

    v23 = +[IMFeatureFlags sharedFeatureFlags];
    LODWORD(v21) = [v23 isEnhancedReadReceiptProcessingEnabled];

    if (v21)
    {
      if (v13)
      {
        participants = [v62 participants];
        v25 = URIsFromHandles(participants);
        v26 = [v25 mutableCopy];

        deliveryController = [(MessageServiceSession *)self deliveryController];
        v28 = +[NSDictionary dictionary];
        v29 = [NSSet setWithArray:v26];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_24A14;
        v74[3] = &unk_112658;
        v75 = messageCopy;
        v76 = v26;
        v30 = v26;
        [deliveryController sendMessageDictionary:v28 fromID:v60 fromAccount:v63 toURIs:v29 toGroup:0 priority:300 options:v58 completionBlock:v74];
      }

      theDict = [v58 mutableCopy];
      v31 = [NSSet setWithArray:&off_119620];
      if (v31)
      {
        CFDictionarySetValue(theDict, IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey, v31);
      }

      deliveryController2 = [(MessageServiceSession *)self deliveryController];
      v33 = +[NSDictionary dictionary];
      v81 = v60;
      v34 = [NSArray arrayWithObjects:&v81 count:1];
      v35 = [NSSet setWithArray:v34];
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_24BD8;
      v71[3] = &unk_112658;
      v36 = messageCopy;
      v72 = v36;
      v37 = v60;
      v73 = v37;
      [deliveryController2 sendMessageDictionary:v33 fromID:v37 fromAccount:v63 toURIs:v35 toGroup:0 priority:300 options:theDict completionBlock:v71];

      value = [(MessageServiceSession *)self _calculateQueueIdentifierForMessage:v36];
      v56 = [(MessageServiceSession *)self _makeEnhancedReadReceiptDictFor:v36 inChat:v62 callerID:v37];
      v38 = JWEncodeDictionary();
      _FTCopyGzippedData = [v38 _FTCopyGzippedData];

      v40 = [v58 mutableCopy];
      CFDictionarySetValue(v40, IDSSendMessageOptionWantsCertifiedDeliveryKey, &__kCFBooleanTrue);
      if (value)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionQueueOneIdentifierKey, value);
      }

      if ([_FTCopyGzippedData length] && _FTCopyGzippedData)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionDataToEncryptKey, _FTCopyGzippedData);
      }

      v41 = [NSSet setWithArray:&off_119638];
      if (v41)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, v41);
      }

      deliveryController3 = [(MessageServiceSession *)self deliveryController];
      v43 = +[NSDictionary dictionary];
      v80 = v37;
      v44 = [NSArray arrayWithObjects:&v80 count:1];
      v45 = [NSSet setWithArray:v44];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_24D9C;
      v68[3] = &unk_112658;
      v69 = v36;
      v70 = v37;
      [deliveryController3 sendMessageDictionary:v43 fromID:v70 fromAccount:v63 toURIs:v45 toGroup:0 priority:300 options:v40 completionBlock:v68];

      v46 = &v72;
      v47 = &v73;
    }

    else
    {
      v48 = objc_alloc_init(NSMutableArray);
      v49 = v48;
      if (v60)
      {
        [v48 addObject:v60];
      }

      if (v13)
      {
        participants2 = [v62 participants];
        v51 = URIsFromHandles(participants2);
        [v49 addObjectsFromArray:v51];
      }

      value = [(MessageServiceSession *)self deliveryController];
      v56 = +[NSDictionary dictionary];
      _FTCopyGzippedData = [NSSet setWithArray:v49];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_24F60;
      v65[3] = &unk_112658;
      v66 = messageCopy;
      v67 = v49;
      theDict = v49;
      [value sendMessageDictionary:v56 fromID:v60 fromAccount:v63 toURIs:_FTCopyGzippedData toGroup:0 priority:300 options:v58 completionBlock:v65];
      v46 = &v66;
      v47 = &v67;
    }

    guid2 = [messageCopy guid];
    v53 = [(MessageServiceSession *)self imdAccountForIDSAccount:v63];
    [(MessageServiceSession *)self didSendMessageReadReceiptForMessageID:guid2 account:v53];

    goto LABEL_36;
  }

  guid3 = [messageCopy guid];
  v18 = [(MessageServiceSession *)self imdAccountForIDSAccount:v63];
  [(MessageServiceSession *)self didSendMessageReadReceiptForMessageID:guid3 account:v18];

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " ** Device is not regisistered, failing read receipt", buf, 2u);
    }
  }

LABEL_36:
}

- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  dCopy = d;
  styleCopy = style;
  identifierCopy = identifier;
  [(MessageServiceSession *)self _logLocalInfo];
  v48 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v48 style:&styleCopy];
  v42 = v48;

  v43 = [(MessageServiceSession *)self chatForChatIdentifier:v42 style:styleCopy updatingAccount:1];
  v47 = 0;
  v40 = _LastAddressedURIForChatLogMetricIfNeeded(v43, 0, self, &v47, 0);
  v41 = v47;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:?])
  {
    v11 = [(MessageServiceSession *)self shouldSendReadReceiptsForChat:v42 style:styleCopy];
    if (styleCopy == 45)
    {
      v12 = v11;
      isOscarChat = [v43 isOscarChat];
      v14 = IMOSLoggingEnabled();
      if (!isOscarChat)
      {
        if (v14)
        {
          v37 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v51 = messageCopy;
            v52 = 2112;
            v53 = v42;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "send played receipt for message: %@   to identifier: %@", buf, 0x16u);
          }
        }

        goto LABEL_17;
      }

      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v43;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Not sending remote played read receipt for junk chat: %@", buf, 0xCu);
        }

LABEL_15:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v51) = styleCopy;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Not sending remote played receipt for non 1-1 chat style: %c", buf, 8u);
      }

      goto LABEL_15;
    }

    v12 = 0;
LABEL_17:
    if ([v43 isBlackholed])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v43;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Not sending remote played receipt for blackholed chat: %@", buf, 0xCu);
        }
      }

      v12 = 0;
    }

    v20 = objc_alloc_init(NSMutableArray);
    v21 = v20;
    if (v40)
    {
      [v20 addObject:v40];
    }

    if (v12)
    {
      participants = [v43 participants];
      v23 = URIsFromHandles(participants);
      [v21 addObjectsFromArray:v23];
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_257B0;
    v44[3] = &unk_112658;
    v24 = messageCopy;
    v45 = v24;
    v46 = v21;
    v25 = v21;
    v26 = objc_retainBlock(v44);
    v27 = [NSNumber numberWithInteger:105];
    guid = [v24 guid];
    v29 = IDSGetUUIDData();
    v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v31 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v27, IDSSendMessageOptionCommandKey, v29, IDSSendMessageOptionUUIDKey, v30, IDSSendMessageOptionTimeoutKey, 0];

    deliveryController = [(MessageServiceSession *)self deliveryController];
    v33 = +[NSDictionary dictionary];
    v34 = [NSSet setWithArray:v25];
    [deliveryController sendMessageDictionary:v33 fromID:v40 fromAccount:v41 toURIs:v34 toGroup:0 priority:300 options:v31 completionBlock:v26];

    guid2 = [v24 guid];
    v36 = [(MessageServiceSession *)self imdAccountForIDSAccount:v41];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid2 account:v36];

    goto LABEL_28;
  }

  guid3 = [messageCopy guid];
  v17 = [(MessageServiceSession *)self imdAccountForIDSAccount:v41];
  [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid3 account:v17];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, " ** Device is not regisistered, failing played receipt", buf, 2u);
    }
  }

LABEL_28:
}

- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler
{
  messageCopy = message;
  dCopy = d;
  guidCopy = guid;
  styleCopy = style;
  handlerCopy = handler;
  identifierCopy = identifier;
  [(MessageServiceSession *)self _logLocalInfo];
  v54 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v54 style:&styleCopy];
  v43 = v54;

  guid = [messageCopy guid];
  v46 = [(MessageServiceSession *)self chatForChatIdentifier:v43 style:styleCopy updatingAccount:1];
  v53 = 0;
  v44 = _LastAddressedURIForChatLogMetricIfNeeded(v46, 0, self, &v53, 0);
  v15 = v53;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v15])
  {
    v16 = styleCopy == 45;
    if (styleCopy != 45 && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v57) = styleCopy;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Not sending delivered quietly receipt for non 1-1 chat style: %c", buf, 8u);
      }
    }

    if ([v46 isBlackholed])
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v46;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Not sending delivered quietly receipt for blackholed chat: %@", buf, 0xCu);
        }
      }

      v16 = 0;
    }

    v19 = objc_alloc_init(NSMutableArray);
    v20 = v19;
    if (v44)
    {
      [v19 addObject:v44];
    }

    if (v16)
    {
      participants = [v46 participants];
      v22 = URIsFromHandles(participants);

      [v20 addObjectsFromArray:v22];
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_25FB0;
    v50[3] = &unk_112658;
    v23 = guid;
    v51 = v23;
    v52 = v20;
    v38 = v20;
    v24 = objc_retainBlock(v50);
    v25 = [NSNumber numberWithInteger:112];
    v26 = IDSGetUUIDData();
    v27 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v28 = [NSSet setWithObject:IDSRegistrationPropertySupportsDeliveredQuietlyAndNotifyRecipient];
    v29 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v25, IDSSendMessageOptionCommandKey, v26, IDSSendMessageOptionUUIDKey, v27, IDSSendMessageOptionTimeoutKey, v28, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, 0];

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_26144;
    v47[3] = &unk_112680;
    v48 = dCopy;
    v49 = handlerCopy;
    v30 = objc_retainBlock(v47);
    deliveryController = [(MessageServiceSession *)self deliveryController];
    v32 = +[NSDictionary dictionary];
    v33 = [NSSet setWithArray:v38];
    [deliveryController sendMessageDictionary:v32 fromID:v44 fromAccount:v15 toURIs:v33 toGroup:0 priority:300 options:v29 willSendBlock:v30 completionBlock:v24];

    v34 = [(MessageServiceSession *)self imdAccountForIDSAccount:v15];
    [(MessageServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:v23 account:v34];
  }

  else
  {
    guid2 = [messageCopy guid];
    v36 = [(MessageServiceSession *)self imdAccountForIDSAccount:v15];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid2 account:v36];

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, " ** Device is not regisistered, failing delivered quietly receipt", buf, 2u);
      }
    }
  }
}

- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  guidCopy = guid;
  styleCopy = style;
  identifierCopy = identifier;
  [(MessageServiceSession *)self _logLocalInfo];
  v44 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v44 style:&styleCopy];
  v36 = v44;

  guid = [messageCopy guid];
  v39 = [(MessageServiceSession *)self chatForChatIdentifier:v36 style:styleCopy updatingAccount:1];
  v43 = 0;
  v37 = _LastAddressedURIForChatLogMetricIfNeeded(v39, 0, self, &v43, 0);
  v11 = v43;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v11])
  {
    v12 = styleCopy == 45;
    if (styleCopy != 45 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v47) = styleCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Not sending notify recipient receipt for non 1-1 chat style: %c", buf, 8u);
      }
    }

    if ([v39 isBlackholed])
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v39;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not sending notify recipient receipt for blackholed chat: %@", buf, 0xCu);
        }
      }

      v12 = 0;
    }

    v15 = objc_alloc_init(NSMutableArray);
    v16 = v15;
    if (v37)
    {
      [v15 addObject:v37];
    }

    if (v12)
    {
      participants = [v39 participants];
      v18 = URIsFromHandles(participants);

      [v16 addObjectsFromArray:v18];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_2698C;
    v40[3] = &unk_112658;
    v19 = guid;
    v41 = v19;
    v42 = v16;
    v33 = v16;
    v20 = objc_retainBlock(v40);
    v21 = [NSNumber numberWithInteger:113];
    v22 = IDSGetUUIDData();
    v23 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v24 = [NSSet setWithObject:IDSRegistrationPropertySupportsDeliveredQuietlyAndNotifyRecipient];
    v25 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v21, IDSSendMessageOptionCommandKey, v22, IDSSendMessageOptionUUIDKey, v23, IDSSendMessageOptionTimeoutKey, v24, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, 0];

    deliveryController = [(MessageServiceSession *)self deliveryController];
    v27 = +[NSDictionary dictionary];
    v28 = [NSSet setWithArray:v33];
    [deliveryController sendMessageDictionary:v27 fromID:v37 fromAccount:v11 toURIs:v28 toGroup:0 priority:300 options:v25 willSendBlock:0 completionBlock:v20];

    v29 = [(MessageServiceSession *)self imdAccountForIDSAccount:v11];
    [(MessageServiceSession *)self didSendNotifyRecipientCommandForMessageID:v19 account:v29];
  }

  else
  {
    guid2 = [messageCopy guid];
    v31 = [(MessageServiceSession *)self imdAccountForIDSAccount:v11];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid2 account:v31];

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, " ** Device is not regisistered, failing notify recipient receipt", buf, 2u);
      }
    }
  }
}

- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0
{
  messageCopy = message;
  previousMessageCopy = previousMessage;
  styleCopy = style;
  accountCopy = account;
  textCopy = text;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v49 = identifierCopy;

  v17 = [(MessageServiceSession *)self chatForChatIdentifier:v49 style:styleCopy updatingAccount:1];
  if (v17)
  {
    messageStore = [(MessageServiceSession *)self messageStore];
    v73 = 0;
    v46 = [messageStore storeEditedMessage:messageCopy editedPartIndex:index editType:type previousMessage:previousMessageCopy chat:v17 updatedAssociatedMessageItems:&v73];
    v43 = v73;
    v45 = objc_alloc_init(NSMutableArray);
    if (v46)
    {
      [v45 addObject:v46];
    }

    if ([v43 count])
    {
      [v45 addObjectsFromArray:v43];
    }

    v18 = [v45 copy];
    v40 = IMCreateSerializedItemsFromArray();

    broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
    account = [(MessageServiceSession *)self account];
    accountID = [account accountID];
    [broadcasterForChatListeners account:accountID chat:v49 style:styleCopy messagesUpdated:v40];

    v72 = 0;
    v22 = _LastAddressedURIForChatLogMetricIfNeeded(v17, 0, self, &v72, 0);
    v38 = v72;
    v23 = objc_alloc_init(NSMutableArray);
    v24 = v23;
    if (v22)
    {
      [v23 addObject:v22];
    }

    participants = [v17 participants];
    v39 = URIsFromHandles(participants);

    [v24 addObjectsFromArray:v39];
    guid = [messageCopy guid];
    objc_initWeak(&location, self);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_27208;
    v67[3] = &unk_1126A8;
    objc_copyWeak(v70, &location);
    v27 = guid;
    v68 = v27;
    v70[1] = index;
    v69 = previousMessageCopy;
    v28 = objc_retainBlock(v67);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_273C0;
    v64[3] = &unk_1126D0;
    objc_copyWeak(v66, &location);
    v37 = v27;
    v65 = v37;
    v66[1] = index;
    v66[2] = type;
    v29 = objc_retainBlock(v64);
    if ([(MessageServiceSession *)self isReplicating]&& (v30 = [(MessageServiceSession *)self _replicationEditDelay]) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          guid2 = [messageCopy guid];
          *buf = 138412546;
          v77 = guid2;
          v78 = 1024;
          LODWORD(v79) = v30;
          when = guid2;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Deferring message edit of %@ for replication by %u seconds", buf, 0x12u);
        }
      }

      whena = dispatch_time(0, 1000000000 * v30);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_274F4;
      block[3] = &unk_1126F8;
      v61 = v30;
      v51 = messageCopy;
      selfCopy = self;
      v53 = v46;
      indexCopy = index;
      typeCopy = type;
      v54 = v24;
      v55 = v49;
      v56 = v38;
      v57 = v22;
      v58 = textCopy;
      v59 = v28;
      v60 = v29;
      dispatch_after(whena, &_dispatch_main_q, block);

      deliveryController = v51;
    }

    else
    {
      deliveryController = [(MessageServiceSession *)self deliveryController];
      [deliveryController sendEditedMessage:v46 partIndex:index editType:type destinations:v24 chatIdentifier:v49 account:v38 fromID:v22 backwardCompatabilityText:textCopy unsupportedDestinationsHandler:v28 completionBlock:v29];
    }

    objc_destroyWeak(v66);
    objc_destroyWeak(v70);
    objc_destroyWeak(&location);
  }

  else if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v77 = messageCopy;
      v78 = 2112;
      v79 = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Could not find chat for edited message. message: %@ chat: %@", buf, 0x16u);
    }
  }
}

- (void)sendRepositionStickerMessage:(id)message chatIdentifier:(id)identifier accountID:(id)d style:(unsigned __int8)style
{
  messageCopy = message;
  dCopy = d;
  styleCopy = style;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v11 = identifierCopy;

  v12 = [(MessageServiceSession *)self chatForChatIdentifier:v11 style:styleCopy updatingAccount:1];
  if (v12)
  {
    messageStore = [(MessageServiceSession *)self messageStore];
    v36 = [messageStore storeRepositionedStickerLocally:messageCopy];
    v33 = objc_alloc_init(NSMutableArray);
    if (v36)
    {
      guid = [messageCopy guid];
      v14 = [messageStore messageWithGUID:guid];

      if (!v14)
      {
        v31 = IMLogHandleForCategory();
        v29 = v31;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_BC0B8();
          v29 = v31;
        }

        goto LABEL_8;
      }

      [v33 addObject:v14];
    }

    v15 = [v33 copy];
    v32 = IMCreateSerializedItemsFromArray();

    broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
    account = [(MessageServiceSession *)self account];
    accountID = [account accountID];
    [broadcasterForChatListeners account:accountID chat:v11 style:styleCopy messagesUpdated:v32];

    v41 = 0;
    v19 = _LastAddressedURIForChatLogMetricIfNeeded(v12, 0, self, &v41, 0);
    v20 = v41;
    v21 = objc_alloc_init(NSMutableArray);
    v22 = v21;
    if (v19)
    {
      [v21 addObject:v19];
    }

    participants = [v12 participants];
    v24 = URIsFromHandles(participants);

    [v22 addObjectsFromArray:v24];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_27A14;
    v38[3] = &unk_112658;
    v25 = messageCopy;
    v39 = v25;
    v40 = v22;
    v26 = v22;
    v27 = objc_retainBlock(v38);
    deliveryController = [(MessageServiceSession *)self deliveryController];
    [deliveryController sendRepositionedStickerMetadata:v36 forEditedMessage:v25 destinations:v26 account:v20 fromID:v19 completionBlock:v27];

    v29 = v32;
LABEL_8:

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = messageCopy;
      v46 = 2112;
      v47 = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Could not find chat for sticker reposition. message: %@ chat: %@", buf, 0x16u);
    }
  }

LABEL_13:
}

- (unint64_t)_replicationEditDelay
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"replication-edit-delay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109120;
        v7[1] = [v3 unsignedIntegerValue];
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Server bag value for replication edit delay: %u", v7, 8u);
      }
    }

    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = &dword_1C + 2;
  }

  return unsignedIntegerValue;
}

- (id)_handleIDsForDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = destinationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = IDSCopyRawAddressForDestination();
        if ([v11 length])
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  array = [v4 array];

  return array;
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  dCopy = d;
  v66[0] = style;
  identifierCopy = identifier;
  [(MessageServiceSession *)self _logLocalInfo];
  v65 = identifierCopy;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v65 style:v66];
  v13 = v65;

  v14 = [(MessageServiceSession *)self chatForChatIdentifier:v13 style:v66[0] updatingAccount:1];
  v64 = 0;
  v15 = _LastAddressedURIForChatLogMetricIfNeeded(v14, 0, self, &v64, 0);
  v16 = v64;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v16])
  {
    v53 = v16;
    v56 = dCopy;
    [(MessageServiceSession *)self _fixParticipantsForChat:v14];
    v17 = objc_alloc_init(NSMutableArray);
    v18 = v17;
    if (v15)
    {
      [v17 addObject:v15];
    }

    v54 = v15;
    v55 = v13;
    v59 = v14;
    if (([messageCopy isFromMe] & 1) == 0)
    {
      sender = [messageCopy sender];
      v20 = [NSArray arrayWithObject:sender];
      _URIsFromIDs = [v20 _URIsFromIDs];
      [v18 addObjectsFromArray:_URIsFromIDs];
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_283C0;
    v60[3] = &unk_112658;
    v57 = messageCopy;
    v22 = messageCopy;
    v61 = v22;
    v52 = v18;
    v62 = v52;
    v51 = objc_retainBlock(v60);
    v23 = IDSSendMessageOptionTopLevelDictionaryKey;
    v24 = IDSSendMessageOptionSkipPayloadCheckKey;
    v25 = [NSNumber numberWithInteger:106];
    v26 = IDSSendMessageOptionCommandKey;
    v58 = v22;
    guid = [v22 guid];
    v28 = IDSGetUUIDData();
    v29 = IDSSendMessageOptionUUIDKey;
    v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v50 = [NSDictionary dictionaryWithObjectsAndKeys:v23, &__kCFBooleanTrue, v24, v25, v26, v28, v29, v30, IDSSendMessageOptionTimeoutKey, 0];

    groupController = [(MessageServiceSession *)self groupController];
    v15 = v54;
    v32 = [groupController newGroupMessagePayloadForChat:v59 fromID:v54];

    v33 = objc_alloc_init(NSMutableDictionary);
    v34 = v33;
    if (v32)
    {
      CFDictionarySetValue(v33, @"p", v32);
    }

    v49 = v32;
    v35 = [NSNumber numberWithInt:1];
    if ([v58 isAudioMessage])
    {
      v36 = 0;
    }

    else
    {
      balloonBundleID = [v58 balloonBundleID];
      v41 = [balloonBundleID length];

      if (!v41)
      {
LABEL_17:
        if (v35)
        {
          CFDictionarySetValue(v34, @"aT", v35);
        }

        deliveryController = [(MessageServiceSession *)self deliveryController];
        v44 = [NSSet setWithArray:v52];
        v45 = v34;
        v46 = v34;
        v16 = v53;
        [deliveryController sendMessageDictionary:v45 fromID:v54 fromAccount:v53 toURIs:v44 toGroup:0 priority:300 options:v50 completionBlock:v51];

        guid2 = [v58 guid];
        v48 = [(MessageServiceSession *)self imdAccountForIDSAccount:v53];
        [(MessageServiceSession *)self didSendMessageSavedReceiptForMessageID:guid2 account:v48];

        dCopy = v56;
        messageCopy = v57;
        v13 = v55;
        v14 = v59;
        goto LABEL_20;
      }

      v36 = 2;
    }

    v42 = [NSNumber numberWithInt:v36];

    v35 = v42;
    goto LABEL_17;
  }

  guid3 = [messageCopy guid];
  v38 = [(MessageServiceSession *)self imdAccountForIDSAccount:v16];
  [(MessageServiceSession *)self didSendMessageSavedReceiptForMessageID:guid3 account:v38];

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, " ** Device is not regisistered, failing saved receipt", buf, 2u);
    }
  }

LABEL_20:
}

- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers
{
  actionCopy = action;
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (!actionCopy)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_BC164();
    }

    goto LABEL_25;
  }

  if (![identifiersCopy count])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_BC128();
    }

LABEL_25:

    goto LABEL_33;
  }

  if (([actionCopy syndicationActionType] & 0x20) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Not sending Syndication action for SMS Spoof detected content", buf, 2u);
      }
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = +[IMDChatRegistry sharedInstance];
          v15 = [v14 allExistingChatsWithIdentifier:v13];

          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v15 count];
              *buf = 134217984;
              v35 = v17;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Sending syndication actions to %ld chats", buf, 0xCu);
            }
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v19)
          {
            v20 = *v26;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [(MessageServiceSession *)self _sendSyndicationAction:actionCopy toChat:*(*(&v25 + 1) + 8 * j)];
              }

              v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v19);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v10);
    }

    v8 = v24;
  }

LABEL_33:
}

- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d
{
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  dCopy = d;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = identifiersCopy;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v10)
  {
    v12 = *v30;
    *&v11 = 134217984;
    v23 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v15 = +[IMDChatRegistry sharedInstance];
        v16 = [v15 allExistingChatsWithIdentifier:v14];

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v16 count];
            *buf = v23;
            v35 = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending syndication actions to %ld chats", buf, 0xCu);
          }
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v20)
        {
          v21 = *v26;
          do
          {
            v22 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v25 + 1) + 8 * v22) updateCollaborationMetadata:metadataCopy forMessageGUID:dCopy];
              v22 = v22 + 1;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v20);
        }

        v13 = v13 + 1;
      }

      while (v13 != v10);
      v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }
}

- (void)_sendSyndicationAction:(id)action toChat:(id)chat
{
  actionCopy = action;
  chatCopy = chat;
  v7 = chatCopy;
  if (chatCopy)
  {
    v33 = 0;
    v28 = _LastAddressedURIForChatLogMetricIfNeeded(chatCopy, 0, self, &v33, 0);
    v8 = v33;
    if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v8])
    {
      if (v28)
      {
        v9 = +[NSMutableDictionary dictionary];
        [actionCopy addParametersToSendMessageDictionary:v9];
        v27 = [v7 makeGroupContextDictionaryWithCallerID:v28];
        if (v27)
        {
          [v9 setObject:v27 forKeyedSubscript:@"cprm"];
        }

        v25 = JWEncodeDictionary();
        _FTCopyGzippedData = [v25 _FTCopyGzippedData];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [v25 length];
            v12 = [_FTCopyGzippedData length];
            *buf = 67109376;
            v38 = v11;
            v39 = 1024;
            v40 = v12;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Compressed SyndicationAction from: %u to: %u in sendSyndicationAction", buf, 0xEu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [_FTCopyGzippedData length];
            *buf = 67109120;
            v38 = v14;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Adding SyndicationAction data to be encrypted of size %u", buf, 8u);
          }
        }

        v35[0] = IDSSendMessageOptionTopLevelDictionaryKey;
        v35[1] = IDSSendMessageOptionSkipPayloadCheckKey;
        v36[0] = &__kCFBooleanTrue;
        v36[1] = &__kCFBooleanTrue;
        v36[2] = &off_119290;
        v35[2] = IDSSendMessageOptionCommandKey;
        v35[3] = IDSSendMessageOptionUUIDKey;
        v15 = +[NSString stringGUID];
        v16 = IDSGetUUIDData();
        v36[3] = v16;
        v35[4] = IDSSendMessageOptionTimeoutKey;
        v17 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
        v36[4] = v17;
        v35[5] = IDSSendMessageOptionDataToEncryptKey;
        v36[5] = _FTCopyGzippedData;
        v24 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:6];

        v34 = v28;
        v18 = [NSArray arrayWithObjects:&v34 count:1];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_29070;
        v30[3] = &unk_112658;
        v19 = actionCopy;
        v31 = v19;
        v32 = v18;
        v20 = v18;
        v21 = objc_retainBlock(v30);
        deliveryController = [(MessageServiceSession *)self deliveryController];
        v23 = [NSSet setWithArray:v20];
        [deliveryController sendMessageDictionary:&__NSDictionary0__struct fromID:v28 fromAccount:v8 toURIs:v23 toGroup:0 priority:300 options:v24 completionBlock:v21];

        [(MessageServiceSession *)self didSendSyndicationActionItem:v19 forChat:v7];
      }

      else
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_BC1DC();
        }
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_BC1A0();
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_BC218();
    }
  }
}

- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD
{
  payloadCopy = payload;
  attachmentsCopy = attachments;
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [payloadCopy length]);
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [attachmentsCopy count]);
      *buf = 138413058;
      v56 = v15;
      v57 = 2112;
      v58 = v16;
      v59 = 2112;
      v60 = dCopy;
      v61 = 2112;
      v62 = iDCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "sendBalloonPayload [payload length] %@ [attachments count] %@ GUID %@ bundleID %@", buf, 0x2Au);
    }
  }

  if (iDCopy)
  {
    if (payloadCopy && [payloadCopy length])
    {
      v17 = [IDSServerBag sharedInstanceForBagType:1];
      v18 = [v17 objectForKey:@"md-balloon-transport-override"];
      v19 = [v18 intValue] == 0;

      if (v19)
      {
        v21 = +[IMDMessageStore sharedInstance];
        v44 = [v21 messageWithGUID:dCopy];

        if (v44)
        {
          v22 = +[IMDMessageStore sharedInstance];
          v43 = [v22 chatForMessage:v44];

          if (v43)
          {
            v54 = 0;
            v42 = _LastAddressedURIForChatLogMetricIfNeeded(v43, 0, self, &v54, 0);
            v23 = v54;
            if ((!v23 || !v42) && IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v56 = v43;
                v57 = 2112;
                v58 = v23;
                _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Could not find IDSAccount for chat: %@, idsAccount %@", buf, 0x16u);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v56 = dCopy;
                v57 = 2112;
                v58 = v43;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Found chat to send bubble message (%@) on: %@", buf, 0x16u);
              }
            }

            v26 = +[IMDFileTransferCenter sharedInstance];
            v27 = [v26 guidsForStoredAttachmentPayloadData:attachmentsCopy messageGUID:dCopy];
            [v44 setFileTransferGUIDs:v27];

            [v44 setPayloadData:payloadCopy];
            v28 = +[NSMutableArray array];
            v29 = v28;
            if (v42)
            {
              [v28 addObject:v42];
            }

            participants = [v43 participants];
            v31 = URIsFromHandles(participants);
            [v29 addObjectsFromArray:v31];

            v32 = [(MessageServiceSession *)self imdAccountForIDSAccount:v23];
            chatIdentifier = [v43 chatIdentifier];
            style = [v43 style];
            accountID = [v32 accountID];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_299D4;
            v45[3] = &unk_112768;
            v45[4] = self;
            v46 = dCopy;
            v47 = iDCopy;
            v48 = payloadCopy;
            v49 = attachmentsCopy;
            v50 = v43;
            v51 = v23;
            v33 = v23;
            v52 = v42;
            v53 = v29;
            v34 = v29;
            v35 = v42;
            v36 = v33;
            [(MessageServiceSession *)self didSendBalloonPayload:v44 forChat:chatIdentifier style:style messageGUID:v46 account:accountID completionBlock:v45];
          }

          else if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v56 = v44;
              _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", buf, 0xCu);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v56 = dCopy;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Chat: Could not send balloon payload for missing message GUID: %@", buf, 0xCu);
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "The server has disabled balloon to balloon via the iMessage config bag!", buf, 2u);
        }

LABEL_45:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v56 = dCopy;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Chat: Could not send balloon payload for missing payload: %@", buf, 0xCu);
      }

      goto LABEL_45;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v56 = dCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Chat: Could not send balloon payload for missing bundle id: %@", buf, 0xCu);
    }

    goto LABEL_45;
  }
}

- (void)sendCrossServiceAssociationMessageWithReplacementGUID:(id)d messageGUID:(id)iD callerID:(id)callerID toID:(id)toID
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  toIDCopy = toID;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v32 = dCopy;
      v33 = 2112;
      v34 = iDCopy;
      v35 = 2112;
      v36 = callerIDCopy;
      v37 = 2112;
      v38 = toIDCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "In cross service association method for replacementGUID: %@ messageGUID: %@, toID %@ callerID: %@", buf, 0x2Au);
    }
  }

  if (!callerIDCopy)
  {
    callerIDCopy = [(MessageServiceSession *)self callerURIUsingCalleeURI:toIDCopy];
  }

  v26 = [(MessageServiceSession *)self idsAccountForFromURI:callerIDCopy toURI:toIDCopy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_2A65C;
  v28[3] = &unk_112658;
  v14 = dCopy;
  v29 = v14;
  v15 = iDCopy;
  v30 = v15;
  v16 = objc_retainBlock(v28);
  v17 = objc_alloc_init(NSMutableArray);
  v18 = v17;
  if (toIDCopy)
  {
    [v17 addObject:toIDCopy];
  }

  if (callerIDCopy)
  {
    [v18 addObject:callerIDCopy];
  }

  v19 = [NSNumber numberWithInteger:135];
  v20 = IDSGetUUIDData();
  v21 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v22 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionSkipPayloadCheckKey, v19, IDSSendMessageOptionCommandKey, v20, IDSSendMessageOptionUUIDKey, v21, IDSSendMessageOptionTimeoutKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsCertifiedDeliveryKey, 0];

  deliveryController = [(MessageServiceSession *)self deliveryController];
  v24 = [NSDictionary dictionaryWithObject:v14 forKey:@"Ur"];
  v25 = [NSSet setWithArray:v18];
  [deliveryController sendMessageDictionary:v24 fromID:callerIDCopy fromAccount:v26 toURIs:v25 toGroup:0 priority:300 options:v22 completionBlock:v16];
}

- (void)_automation_sendDictionary:(id)dictionary options:(id)options toHandles:(id)handles
{
  handlesCopy = handles;
  optionsCopy = options;
  dictionaryCopy = dictionary;
  v16 = [(MessageServiceSession *)self callerURIForMessageServiceType:0];
  firstObject = [handlesCopy firstObject];
  v12 = [(MessageServiceSession *)self idsAccountForFromURI:v16 toURI:firstObject];

  deliveryController = [(MessageServiceSession *)self deliveryController];
  __im_canonicalIDSIDsFromAddresses = [handlesCopy __im_canonicalIDSIDsFromAddresses];

  v15 = [NSSet setWithArray:__im_canonicalIDSIDsFromAddresses];
  [deliveryController sendMessageDictionary:dictionaryCopy fromID:v16 fromAccount:v12 toURIs:v15 toGroup:0 priority:300 options:optionsCopy completionBlock:&stru_112788];
}

- (void)_automation_receiveDictionary:(id)dictionary options:(id)options fromHandle:(id)handle
{
  dictionaryCopy = dictionary;
  handleCopy = handle;
  optionsCopy = options;
  v11 = +[IMDLocalDaemon sharedDaemon];
  iMessageIDSHandler = [v11 iMessageIDSHandler];

  [iMessageIDSHandler setRunningInAutomation:1];
  v13 = [IDSService alloc];
  v28 = [v13 initWithService:IDSServiceNameiMessage];
  v14 = [optionsCopy objectForKeyedSubscript:@"message-context"];

  if (v14)
  {
    v15 = [IDSMessageContext alloc];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"message-context"];
    v14 = [v15 initWithDictionary:v16 boostContext:0];
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"IDSIncomingMessagePushPayload"];
  v18 = [v17 mutableCopy];

  v19 = [handleCopy componentsSeparatedByString:@"/"];
  lastObject = [v19 lastObject];
  [v18 setObject:lastObject forKeyedSubscript:@"sP"];

  idsAccount = [(MessageServiceSession *)self idsAccount];
  displayName = [idsAccount displayName];
  [displayName _bestGuessURI];
  v24 = v23 = self;
  [v18 setObject:v24 forKeyedSubscript:@"tP"];

  v25 = [dictionaryCopy mutableCopy];
  v26 = [v18 copy];
  [v25 setObject:v26 forKeyedSubscript:@"IDSIncomingMessagePushPayload"];

  v29 = [v25 copy];
  idsAccount2 = [(MessageServiceSession *)v23 idsAccount];
  [iMessageIDSHandler service:v28 account:idsAccount2 incomingTopLevelMessage:v29 fromID:handleCopy messageContext:v14];
}

- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  receiptCopy = receipt;
  callerIDCopy = callerID;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v34 = dCopy;
      v35 = 2112;
      v36 = iDCopy;
      v37 = 2112;
      v38 = contextCopy;
      v39 = 2112;
      v40 = receiptCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "In delivery receipt method for messageID: %@ toID %@ deliveryContext: %@, needsDeliveryReceipt :%@ ", buf, 0x2Au);
    }
  }

  if ([receiptCopy BOOLValue])
  {
    if (callerIDCopy)
    {
      if (!accountCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      callerIDCopy = [(MessageServiceSession *)self callerURIUsingCalleeURI:iDCopy];
      if (!accountCopy)
      {
LABEL_10:
        accountCopy = [(MessageServiceSession *)self idsAccount];
      }
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_2B074;
    v31[3] = &unk_112200;
    v32 = dCopy;
    v28 = objc_retainBlock(v31);
    v19 = objc_alloc_init(NSMutableArray);
    v20 = v19;
    if (iDCopy)
    {
      [v19 addObject:iDCopy];
    }

    v21 = [NSNumber numberWithInteger:101];
    v22 = IDSGetUUIDData();
    v23 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v24 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v21, IDSSendMessageOptionCommandKey, v22, IDSSendMessageOptionUUIDKey, v23, IDSSendMessageOptionTimeoutKey, 0];

    if (contextCopy)
    {
      [v24 setObject:contextCopy forKey:@"Dc"];
    }

    deliveryController = [(MessageServiceSession *)self deliveryController];
    v26 = +[NSDictionary dictionary];
    v27 = [NSSet setWithArray:v20];
    [deliveryController sendMessageDictionary:v26 fromID:callerIDCopy fromAccount:accountCopy toURIs:v27 toGroup:0 priority:300 options:v24 completionBlock:v28];
  }
}

- (id)_messageDictionaryToReflectWithDeliveryReceipt:(id)receipt
{
  receiptCopy = receipt;
  v5 = objc_alloc_init(NSMutableDictionary);
  properties = [receiptCopy properties];

  v7 = [properties valueForKey:IMChatPropertyEnableReadReceiptForChatKey];
  if (!v7)
  {
    v7 = [NSNumber numberWithInteger:0];
  }

  v8 = [properties valueForKey:IMChatPropertyReadReceiptsSettingVersionKey];
  if (!v8)
  {
    v8 = [NSNumber numberWithInteger:0];
  }

  globalReadReceiptSettingVersion = [(MessageServiceSession *)self globalReadReceiptSettingVersion];
  v10 = globalReadReceiptSettingVersion;
  v11 = &off_1192A8;
  if (globalReadReceiptSettingVersion)
  {
    v11 = globalReadReceiptSettingVersion;
  }

  v12 = v11;

  v13 = [NSNumber numberWithBool:[(MessageServiceSession *)self readReceiptsGloballyEnabled]];
  if (v7)
  {
    CFDictionarySetValue(v5, @"eR", v7);
  }

  if (v8)
  {
    CFDictionarySetValue(v5, @"vR", v8);
  }

  if (v13)
  {
    CFDictionarySetValue(v5, @"gR", v13);
  }

  CFDictionarySetValue(v5, @"gV", v12);

  return v5;
}

- (void)sendNicknameInfoToURIs:(id)is chatGUID:(id)d
{
  isCopy = is;
  dCopy = d;
  v8 = [IDSServerBag sharedInstanceForBagType:0];
  v9 = [v8 objectForKey:@"enable-snap-v2-back-compat"];
  bOOLValue = [v9 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_36;
  }

  if (IMSharedHelperNickNameEnabled())
  {
    if (dCopy)
    {
      v11 = +[IMDChatRegistry sharedInstance];
      v12 = [v11 existingChatWithGUID:dCopy];

      if (!v12)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = dCopy;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "We did not have a chat to send nickname info to %@", buf, 0xCu);
          }
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_30;
      }

      v37 = 0;
      v13 = _LastAddressedURIForChatLogMetricIfNeeded(v12, 0, self, &v37, 0);
      v14 = v37;
    }

    else
    {
      v13 = [(MessageServiceSession *)self callerURIForMessageServiceType:0];
      v14 = [(MessageServiceSession *)self idsAccountForURI:v13 IDSServiceName:IDSServiceNameiMessage];
    }

    v16 = [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v14];
    if (v16 && [v13 length])
    {
      +[NSString stringGUID];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_2B9B8;
      v33 = v34[3] = &unk_112658;
      v35 = v33;
      v31 = isCopy;
      v36 = v31;
      v32 = objc_retainBlock(v34);
      v17 = [NSNumber numberWithInteger:131];
      v18 = IDSGetUUIDData();
      v19 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v20 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v17, IDSSendMessageOptionCommandKey, v18, IDSSendMessageOptionUUIDKey, v19, IDSSendMessageOptionTimeoutKey, 0];

      v21 = +[IMDNicknameController sharedInstance];
      newNicknameInfoToSend = [v21 newNicknameInfoToSend];

      LOBYTE(v21) = [newNicknameInfoToSend count] == 0;
      v23 = IMOSLoggingEnabled();
      if (v21)
      {
        if (v23)
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "No nickname info to send to others", buf, 2u);
          }
        }
      }

      else
      {
        if (v23)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v39 = v33;
            v40 = 2112;
            v41 = v31;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Sending nickname info %@ to participants %@", buf, 0x16u);
          }
        }

        deliveryController = [(MessageServiceSession *)self deliveryController];
        v26 = [NSSet setWithArray:v31];
        [deliveryController sendMessageDictionary:newNicknameInfoToSend encryptDictionary:1 fromID:v13 fromAccount:v14 toURIs:v26 toGroup:0 priority:300 options:v20 willSendBlock:0 completionBlock:v32];
      }

      goto LABEL_36;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (v16)
        {
          v28 = @"YES";
        }

        *buf = 138412546;
        v39 = v28;
        v40 = 2112;
        v41 = v13;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "** Device is not registered %@, failing nickname info or we don't have a callerURI %@", buf, 0x16u);
      }
    }

LABEL_30:

    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Nicknames are disabled, rejecting nickname send", buf, 2u);
    }
  }

LABEL_36:
}

- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations
{
  devicesCopy = devices;
  destinationsCopy = destinations;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v52 = devicesCopy;
      v53 = 2112;
      v54 = destinationsCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Sending nickname updates to my other devices %@ and peers %@", buf, 0x16u);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    v8 = objc_alloc_init(NSMutableSet);
    if ([(__CFString *)destinationsCopy count])
    {
      [(__CFString *)v8 addObjectsFromArray:destinationsCopy];
    }

    else
    {
      v42 = [(MessageServiceSession *)self idsServiceForIDSAccount:idsAccount];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          devices = [v42 devices];
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [devices count]);
          *buf = 138412290;
          v52 = v15;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Going to send nickname updates to %@ accounts", buf, 0xCu);
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      devices2 = [v42 devices];
      v17 = [devices2 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v17)
      {
        v18 = *v46;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(devices2);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = IDSCopyIDForDevice();
            [(__CFString *)v8 addObject:v21];
          }

          v17 = [devices2 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v17);
      }

      v22 = [(__CFString *)v8 count];
      devices3 = [idsAccount devices];
      v24 = [devices3 count];

      if (v24 == 0 || idsAccount == 0 || v22 == 0 || ([idsAccount devices], v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == 0, v25, v26))
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            devices4 = [idsAccount devices];
            v38 = devices4;
            v39 = @"NO";
            *buf = 138413058;
            if (v24)
            {
              v40 = @"YES";
            }

            else
            {
              v40 = @"NO";
            }

            if (v22)
            {
              v39 = @"YES";
            }

            v52 = v39;
            v53 = 2112;
            v54 = v40;
            v55 = 2112;
            v56 = idsAccount;
            v57 = 2112;
            v58 = devices4;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "We did not have ids accounts to send nickname info out -- bailing {haveIDSDevicesToSendTo %@ haveTokenURISToSendTo %@ idsAccount %@ devices %@}", buf, 0x2Au);
          }
        }

        v12 = 0;
        goto LABEL_46;
      }
    }

    v42 = [(MessageServiceSession *)self callerURIForIDSAccount:idsAccount];
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [NSNumber numberWithUnsignedInt:70000];
    if (v10)
    {
      CFDictionarySetValue(v9, @"c", v10);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_BBEE4();
    }

    v27 = +[NSString stringGUID];
    v28 = [NSNumber numberWithInteger:180];
    v29 = IDSGetUUIDData();
    v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v31 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v28, IDSSendMessageOptionCommandKey, v29, IDSSendMessageOptionUUIDKey, v30, IDSSendMessageOptionTimeoutKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v9, IDSSendMessageOptionDeliveryStatusContextKey, 0];

    v49[0] = @"gC";
    v32 = [NSNumber numberWithUnsignedInt:70000];
    v49[1] = @"pID";
    v50[0] = v32;
    v50[1] = devicesCopy;
    v33 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v52 = v33;
        v53 = 2112;
        v54 = v8;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Sending generic command to update nickname properties with message dictionary %@ to destinations %@", buf, 0x16u);
      }
    }

    deliveryController = [(MessageServiceSession *)self deliveryController];
    [deliveryController sendMessageDictionary:v33 encryptDictionary:1 fromID:v42 fromAccount:idsAccount toURIs:v8 toGroup:0 priority:300 options:v31 willSendBlock:0 completionBlock:&stru_1127A8];

    v12 = 1;
LABEL_46:

    goto LABEL_47;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "**Not sending nick name update as device is not registered", buf, 2u);
    }
  }

  v12 = 0;
LABEL_47:

  return v12;
}

- (void)forwardDeliveryReceiptForMessageID:(id)d withAccount:(id)account callerURI:(id)i
{
  dCopy = d;
  accountCopy = account;
  iCopy = i;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = dCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Forwarding delivery receipt to all other devices  (messageID %@)", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(NSMutableArray);
  [v11 addObject:iCopy];
  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:dCopy];

  if (v13)
  {
    v14 = [(MessageServiceSession *)self _messageDictionaryToReflectWithDeliveryReceipt:v13];
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Reflecting delivery receipt with chat properties: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = dCopy;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "IMDChat not found for forwarding a delivery receipt with messageID: %@", buf, 0xCu);
      }
    }

    v14 = &__NSDictionary0__struct;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Forwarding delivery receipt with messageDictionary: %@", buf, 0xCu);
    }
  }

  v18 = [NSNumber numberWithInteger:107];
  v19 = IDSGetUUIDData();
  v20 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v21 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v18, IDSSendMessageOptionCommandKey, v19, IDSSendMessageOptionUUIDKey, v20, IDSSendMessageOptionTimeoutKey, 0];

  deliveryController = [(MessageServiceSession *)self deliveryController];
  v23 = [NSSet setWithArray:v11];
  [deliveryController sendMessageDictionary:v14 encryptDictionary:1 fromID:iCopy fromAccount:accountCopy toURIs:v23 toGroup:0 priority:300 options:v21 willSendBlock:0 completionBlock:&stru_1127C8];
}

- (void)_handleFileTransferUpdated:(id)updated
{
  updatedCopy = updated;
  object = [updatedCopy object];
  if (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pendingGroupPhotoDownloads = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
      guid = [object guid];
      v8 = [pendingGroupPhotoDownloads objectForKey:guid];

      if (v8)
      {
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v34 = 138412546;
            v35 = object;
            v36 = 2112;
            v37 = v8;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Processing pending group photo download %@ %@", &v34, 0x16u);
          }
        }

        if ([object transferState] < 6)
        {
          v13 = [object transferState] > 3;
          v14 = IMOSLoggingEnabled();
          if (v13)
          {
            if (v14)
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                LOWORD(v34) = 0;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, " => transfer in finalizing/finished state. Sending through download completion and removing from map", &v34, 2u);
              }
            }

            v16 = [v8 _stringForKey:@"chat"];
            v17 = +[IMDChatRegistry sharedInstance];
            v18 = [v17 existingChatWithGUID:v16];

            v19 = [v8 _stringForKey:@"sender"];
            v20 = [v8 _numberForKey:@"isHidden"];
            bOOLValue = [v20 BOOLValue];

            pendingGroupPhotoDownloads2 = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
            guid2 = [object guid];
            [pendingGroupPhotoDownloads2 removeObjectForKey:guid2];

            if (v18)
            {
              guid3 = [object guid];
              [(MessageServiceSession *)self groupPhotoDownloadCompletedForChat:v18 fileTransferError:0 success:1 transferGuid:guid3 sender:v19 isHidden:bOOLValue];
            }
          }

          else if (v14)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              LOWORD(v34) = 0;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, " => transfer still in process", &v34, 2u);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              LOWORD(v34) = 0;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, " => transfer in error state. removing from map", &v34, 2u);
            }
          }

          pendingGroupPhotoDownloads3 = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
          guid4 = [object guid];
          [pendingGroupPhotoDownloads3 removeObjectForKey:guid4];
        }
      }

      isFromMomentShare = [object isFromMomentShare];
      if ((([object transferState] == &dword_4 + 1) & isFromMomentShare) == 1)
      {
        messageStore = [(MessageServiceSession *)self messageStore];
        messageGUID = [object messageGUID];
        v29 = [messageStore messageWithGUID:messageGUID];

        broadcasterForChatListeners = [(MessageServiceSession *)self broadcasterForChatListeners];
        account = [(MessageServiceSession *)self account];
        accountID = [account accountID];
        cloudKitChatID = [v29 cloudKitChatID];
        [broadcasterForChatListeners account:accountID chat:cloudKitChatID style:0 messageUpdated:v29];
      }

LABEL_32:

      goto LABEL_33;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = updatedCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "transfer updated called with non-transfer object %@", &v34, 0xCu);
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)shouldDownloadGroupPhoto:(id)photo
{
  photoCopy = photo;
  userInfo = [photoCopy userInfo];
  v5 = [userInfo _stringForKey:@"file-size"];

  v6 = objc_alloc_init(NSNumberFormatter);
  v7 = [v6 numberFromString:v5];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue >= 0x20C801 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = unsignedIntegerValue;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "**Not** downloading group photo, too big. Size: %lu", &v11, 0xCu);
    }
  }

  return unsignedIntegerValue < 0x20C801;
}

- (void)receivedGroupPhotoUpdate:(id)update chat:(id)chat sender:(id)sender isHidden:(BOOL)hidden
{
  updateCopy = update;
  chatCopy = chat;
  senderCopy = sender;
  v11 = [IMFileTransfer guidForFileTransferDictionary:updateCopy];
  groupPhotoGuid = [chatCopy groupPhotoGuid];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Received group photo update.", buf, 2u);
    }
  }

  if (groupPhotoGuid | v11)
  {
    v17 = +[IMDFileTransferCenter sharedInstance];
    v69 = [v17 transferForGUID:v11];

    if (v69 && [v69 existsAtLocalPath])
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          localPath = [v69 localPath];
          *buf = 138412290;
          v79 = localPath;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "The existingTransfer has group photo at local path: %@", buf, 0xCu);
        }
      }

      if (IMAreObjectsLogicallySame())
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            guid = [chatCopy guid];
            *buf = 138412802;
            v79 = v11;
            v80 = 2112;
            v81 = groupPhotoGuid;
            v82 = 2112;
            v83 = guid;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Received group photo with the same guid as we have -- dropping this message. Incoming guid: %@ existing guid: %@ chatGuid: %@", buf, 0x20u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = chatCopy;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
          }
        }

        goto LABEL_99;
      }
    }

    v68 = IMMessageGuidFromIMFileTransferGuid();
    if (!v68)
    {
      goto LABEL_46;
    }

    messageStore = [(MessageServiceSession *)self messageStore];
    v24 = [messageStore itemWithGUID:v68];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = v24;
        if ([v65 actionType] == &dword_0 + 1 || objc_msgSend(v65, "actionType") == &dword_0 + 3)
        {
          messageStore2 = [(MessageServiceSession *)self messageStore];
          v26 = IMMessageGuidFromIMFileTransferGuid();
          v63 = [messageStore2 itemWithGUID:v26];

          time = [v63 time];
          time2 = [v65 time];
          v29 = [time compare:time2] == -1;

          if (!v29)
          {

LABEL_45:
LABEL_46:
            v32 = [updateCopy count] == 0;
            v33 = IMOSLoggingEnabled();
            if (v32)
            {
              if (v33)
              {
                v40 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Received group photo update with empty file transfer dict -- deleting group photo", buf, 2u);
                }
              }

              [(MessageServiceSession *)self groupPhotoDownloadCompletedForChat:chatCopy fileTransferError:0 success:1 transferGuid:0 sender:senderCopy isHidden:0];
            }

            else
            {
              if (v33)
              {
                v34 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v79 = senderCopy;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Received group photo update with non-empty fileTransferDict, from %@", buf, 0xCu);
                }
              }

              v35 = objc_alloc_init(IMFileTransfer);
              [v35 _updateWithDictionaryRepresentationForWhitelistedKeys:updateCopy];
              guid2 = [v35 guid];
              if ([(MessageServiceSession *)self shouldDownloadGroupPhoto:v35])
              {
                if ([guid2 length])
                {
                  v36 = +[IMDFileTransferCenter sharedInstance];
                  guid3 = [v35 guid];
                  [v36 addTransfer:v35 forGUID:guid3];

                  v38 = IMMessageGuidFromIMFileTransferGuid();
                  v39 = v38;
                  if (v38)
                  {
                    v62 = v38;
                  }

                  else
                  {
                    v62 = +[NSString stringGUID];
                  }

                  v46 = [IMMessageItem alloc];
                  v47 = +[NSDate date];
                  v77 = guid2;
                  v48 = [NSArray arrayWithObjects:&v77 count:1];
                  v64 = [v46 initWithSender:senderCopy time:v47 body:0 attributes:0 fileTransferGUIDs:v48 flags:1 error:0 guid:v62 threadIdentifier:0];

                  if ([v64 isFromMe])
                  {
                    service = [v64 service];
                    [IMSenderContext fromMeContextWithServiceName:service];
                  }

                  else
                  {
                    v50 = +[IMDChatRegistry sharedInstance];
                    sender = [v64 sender];
                    v52 = [v50 hasKnownSenderChatWithChatIdentifier:sender];

                    service = [v64 service];
                    [IMSenderContext contextWithKnownSender:v52 serviceName:service];
                  }
                  v61 = ;

                  attachmentController = [(MessageServiceSession *)self attachmentController];
                  _stripFZIDPrefix = [senderCopy _stripFZIDPrefix];
                  v76 = senderCopy;
                  v55 = [NSArray arrayWithObjects:&v76 count:1];
                  v56 = IMServiceNameForCanonicalIDSAddresses();
                  v71[0] = _NSConcreteStackBlock;
                  v71[1] = 3221225472;
                  v71[2] = sub_2EF8C;
                  v71[3] = &unk_112818;
                  v71[4] = self;
                  v72 = chatCopy;
                  v73 = guid2;
                  v74 = senderCopy;
                  hiddenCopy = hidden;
                  [attachmentController retrieveAttachmentsForMessage:v64 inlineAttachments:0 displayID:_stripFZIDPrefix topic:v56 comingFromStorage:0 shouldForceAutoDownload:1 senderContext:v61 completionBlock:v71];

                  v57 = +[IMDAttachmentStore sharedInstance];
                  guid4 = [v64 guid];
                  [v57 storeAttachment:v35 associateWithMessageWithGUID:guid4];
                }

                else if (IMOSLoggingEnabled())
                {
                  v43 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, " No group photo update file transfer transferGuid for some reason, doing nothing.", buf, 2u);
                  }
                }
              }

              else
              {
              }
            }

            goto LABEL_98;
          }

          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v79 = v11;
              v80 = 2112;
              v81 = groupPhotoGuid;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Attempting to update photo with an older group action item. transferGuid: %@, itemGuid: %@", buf, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = chatCopy;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v79 = v11;
              v80 = 2112;
              v81 = groupPhotoGuid;
              _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "Attempting to update photo with an invalid group action item. transferGuid: %@, itemGuid: %@", buf, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = chatCopy;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v79 = v11;
            v80 = 2112;
            v81 = groupPhotoGuid;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Attempting to update group photo with invalid chat item type. transferGuid: %@, itemGuid: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = chatCopy;
            _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
          }
        }
      }

LABEL_98:
LABEL_99:

      goto LABEL_100;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v79 = v11;
        v80 = 2112;
        v81 = groupPhotoGuid;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Overriding isHidden to show because we are missing the item locally. transferGuid: %@, itemGuid: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = chatCopy;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
      }
    }

    hidden = 0;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid5 = [chatCopy guid];
      *buf = 138412290;
      v79 = guid5;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Received no GUID, and we already don't have one -- dropping this message. ChatGuid: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = chatCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

LABEL_100:
}

- (id)fileTransferDictionaryForChat:(id)chat
{
  chatCopy = chat;
  v4 = +[IMDFileTransferCenter sharedInstance];
  groupPhotoGuid = [chatCopy groupPhotoGuid];

  v6 = [v4 transferForGUID:groupPhotoGuid];
  _dictionaryToSend = [v6 _dictionaryToSend];

  return _dictionaryToSend;
}

- (id)_messageDictionaryForDeleteCommandShouldResetPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v4 = [NSMutableDictionary dictionaryWithCapacity:3];
  v5 = IMGetDomainValueForKey();
  v6 = IMGetDomainValueForKey();
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v4 setObject:v6 forKey:@"days"];
    [v4 setObject:v5 forKey:@"ID"];
  }

  if (preferenceCopy)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"resetPreference"];
  }

  v11 = @"KeepMessages";
  v12 = v4;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 existingChatWithGUID:dCopy];

  wasReportedAsJunk = [v9 wasReportedAsJunk];
  ckUtilities = [(MessageServiceSession *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  v13 = [commandCopy objectForKeyedSubscript:IMDDeleteCommandIsScheduledMessageKey];

  v14 = cloudKitSyncingEnabled | wasReportedAsJunk | (v13 != 0);
  if ((cloudKitSyncingEnabled | wasReportedAsJunk) & 1 | (v13 != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v36 = cloudKitSyncingEnabled;
        *&v36[4] = 1024;
        *&v36[6] = wasReportedAsJunk;
        *v37 = 1024;
        *&v37[2] = v13 != 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Forwarding delete command to all other devices: cloudKitSyncingEnabled: %d wasReportedJunk: %d isScheduledMessage: %d", buf, 0x14u);
      }
    }

    goto LABEL_11;
  }

  deliveryController = [(MessageServiceSession *)self deliveryController];
  pairedDevice = [deliveryController pairedDevice];

  v18 = IMOSLoggingEnabled();
  if (pairedDevice)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Send delete command only to the paired device", buf, 2u);
      }
    }

LABEL_11:
    if (v9)
    {
      v34 = 0;
      v20 = _LastAddressedURIForChatLogMetricIfNeeded(v9, 0, self, &v34, 0);
      idsAccount = v34;
      if (!idsAccount)
      {
        goto LABEL_23;
      }
    }

    else
    {
      idsAccount = [(MessageServiceSession *)self idsAccount];
      v20 = [(MessageServiceSession *)self callerURIUsingCalleeURI:0];
      if (!idsAccount)
      {
        goto LABEL_23;
      }
    }

    if (v20 && [v20 length])
    {
      v33 = objc_alloc_init(NSMutableArray);
      if (v14)
      {
        [v33 addObject:v20];
      }

      else
      {
        [v33 addObject:IDSDefaultPairedDevice];
      }

      v24 = JWEncodeDictionary();
      _FTCopyGzippedData = [v24 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v36 = commandCopy;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Forwarding delete command :%@", buf, 0xCu);
        }
      }

      v27 = [NSNumber numberWithInteger:181];
      v28 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v29 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v27, IDSSendMessageOptionCommandKey, _FTCopyGzippedData, IDSSendMessageOptionDataToEncryptKey, v28, IDSSendMessageOptionTimeoutKey, 0];

      deliveryController2 = [(MessageServiceSession *)self deliveryController];
      v31 = +[NSDictionary dictionary];
      v32 = [NSSet setWithArray:v33];
      [deliveryController2 sendMessageDictionary:v31 encryptDictionary:1 fromID:v20 fromAccount:idsAccount toURIs:v32 toGroup:0 priority:300 options:v29 willSendBlock:0 completionBlock:&stru_112838];

      goto LABEL_33;
    }

LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *v36 = idsAccount;
        *&v36[8] = 2112;
        *v37 = v20;
        *&v37[8] = 2112;
        v38 = commandCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Not enough information to forward delete command, idsAccount:%@ callerURI:%@ command:%@", buf, 0x20u);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v18)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *v36 = commandCopy;
      *&v36[8] = 1024;
      *v37 = 0;
      *&v37[4] = 1024;
      *&v37[6] = 0;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "iCloud syncing not enabled, and was not reported junk, dropping delete command to all other devices, (command %@) cloudkitSyncingEnabled: %d wasReportedJunk: %d isScheduledMessage: %d", buf, 0x1Eu);
    }
  }

LABEL_34:
}

- (void)sendRecoverCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  ckUtilities = [(MessageServiceSession *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Recently Deleted | Forwarding Recover command to all other devices: cloudKitSyncingEnabled: YES", buf, 2u);
    }

    goto LABEL_10;
  }

  deliveryController = [(MessageServiceSession *)self deliveryController];
  pairedDevice = [deliveryController pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (pairedDevice)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Send recover command only to the paired device", buf, 2u);
    }

LABEL_10:

LABEL_11:
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:dCopy];

    if (v14)
    {
      v30 = 0;
      v15 = _LastAddressedURIForChatLogMetricIfNeeded(v14, 0, self, &v30, 0);
      idsAccount = v30;
      if (!idsAccount)
      {
        goto LABEL_19;
      }
    }

    else
    {
      idsAccount = [(MessageServiceSession *)self idsAccount];
      v15 = [(MessageServiceSession *)self callerURIUsingCalleeURI:0];
      if (!idsAccount)
      {
        goto LABEL_19;
      }
    }

    if (v15 && [v15 length])
    {
      v17 = objc_alloc_init(NSMutableArray);
      v18 = v17;
      if (cloudKitSyncingEnabled)
      {
        [v17 addObject:v15];
      }

      else
      {
        [v17 addObject:IDSDefaultPairedDevice];
      }

      v21 = JWEncodeDictionary();
      _FTCopyGzippedData = [v21 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = commandCopy;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Recently Deleted | Forwarding recover command :%@", buf, 0xCu);
        }
      }

      v31[0] = IDSSendMessageOptionTopLevelDictionaryKey;
      v31[1] = IDSSendMessageOptionSkipPayloadCheckKey;
      v32[0] = &__kCFBooleanTrue;
      v32[1] = &__kCFBooleanTrue;
      v31[2] = IDSSendMessageOptionCommandKey;
      v31[3] = IDSSendMessageOptionDataToEncryptKey;
      v32[2] = &off_1192D8;
      v32[3] = _FTCopyGzippedData;
      v31[4] = IDSSendMessageOptionTimeoutKey;
      v24 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v32[4] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];

      deliveryController2 = [(MessageServiceSession *)self deliveryController];
      v27 = +[NSDictionary dictionary];
      v28 = [NSSet setWithArray:v18];
      [deliveryController2 sendMessageDictionary:v27 encryptDictionary:1 fromID:v15 fromAccount:idsAccount toURIs:v28 toGroup:0 priority:300 options:v25 willSendBlock:0 completionBlock:&stru_112858];

      goto LABEL_33;
    }

LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v34 = idsAccount;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = commandCopy;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Recently Deleted | Not enough information to forward Recover command, idsAccount:%@ callerURI:%@ command:%@", buf, 0x20u);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v12)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = commandCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Recently Deleted | iCloud syncing not enabled, dropping recover command to all other devices, (command %@) cloudkitSyncingEnabled: NO", buf, 0xCu);
    }
  }

LABEL_34:
}

- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID
{
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  iDCopy = iD;
  styleCopy = style;
  messageIDCopy = messageID;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v18 = identifierCopy;

  if (v18)
  {
    v19 = +[IMDChatRegistry sharedInstance];
    v20 = [v19 existingChatWithGUID:iDCopy];

    if (!v20)
    {
      v20 = [(MessageServiceSession *)self chatForChatIdentifier:v18 style:styleCopy updatingAccount:1];
    }

    v37 = 0;
    v27 = _LastAddressedURIForChatLogMetricIfNeeded(v20, dCopy, self, &v37, 0);
    v26 = v37;
    [(MessageServiceSession *)self _fixParticipantsForChat:v20];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v41 = nameCopy;
        v42 = 2112;
        v43 = v20;
        v44 = 2112;
        v45 = iDCopy;
        v46 = 2112;
        v47 = v27;
        v48 = 2112;
        v49 = v18;
        v50 = 1024;
        v51 = styleCopy;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Request to update name: %@   forChat: %@ lastAddressed: %@  (GUID: %@  Identifier: %@  Style: %c)", buf, 0x3Au);
      }
    }

    groupController = [(MessageServiceSession *)self groupController];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_30440;
    v32[3] = &unk_112880;
    v23 = nameCopy;
    v33 = v23;
    v24 = iDCopy;
    v34 = v24;
    v25 = v18;
    v35 = v25;
    v36 = styleCopy;
    [groupController setName:v23 fromName:displayNameCopy forChat:v20 fromID:v27 fromAccount:v26 messageID:messageIDCopy session:self completionBlock:v32];

    v31.receiver = self;
    v31.super_class = MessageServiceSession;
    [(MessageServiceSession *)&v31 updateDisplayName:v23 fromDisplayName:displayNameCopy fromID:dCopy forChatID:v24 identifier:v25 style:styleCopy messageID:messageIDCopy];
  }
}

- (id)_generateAndStoreGroupActionItemForChat:(id)chat sender:(id)sender
{
  chatCopy = chat;
  senderCopy = sender;
  v8 = +[IMFeatureFlags sharedFeatureFlags];
  isBIAEnabled = [v8 isBIAEnabled];

  if (isBIAEnabled)
  {
    if (chatCopy)
    {
      v10 = [IMGroupActionItem alloc];
      v11 = +[NSDate date];
      v12 = +[NSString stringGUID];
      v13 = [v10 initWithSender:senderCopy time:v11 guid:v12 type:3];

      [v13 setActionType:0];
      service = [(MessageServiceSession *)self service];
      internalName = [service internalName];
      [v13 setService:internalName];

      account = [(MessageServiceSession *)self account];
      accountID = [account accountID];
      [v13 setAccountID:accountID];

      account2 = [(MessageServiceSession *)self account];
      loginID = [account2 loginID];
      [v13 setAccount:loginID];

      messageStore = [(MessageServiceSession *)self messageStore];
      v21 = [messageStore storeItem:v13 forceReplace:0];

      chatStore = [(MessageServiceSession *)self chatStore];
      guid = [v21 guid];
      [chatStore addMessageWithGUID:guid toChat:chatCopy];

      goto LABEL_9;
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "_generateAndStoreGroupActionItemForChat passed a nil chat. Early returning", v26, 2u);
      }
    }
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)sendCommand:(id)command withProperties:(id)properties toPerson:(id)person toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  commandCopy = command;
  propertiesCopy = properties;
  personCopy = person;
  dCopy = d;
  identifierCopy = identifier;
  styleCopy = style;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v88 = commandCopy;
      v89 = 2112;
      v90 = propertiesCopy;
      v91 = 2112;
      v92 = personCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Request to send command: %@   with properties: %@   to person: %@", buf, 0x20u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  if (identifierCopy)
  {
    v76 = identifierCopy;
    [(MessageServiceSession *)self canonicalizeChatIdentifier:&v76 style:&styleCopy];
    v69 = v76;

    v17 = [(MessageServiceSession *)self chatForChatIdentifier:v69 style:styleCopy updatingAccount:1];
    v75 = 0;
    v70 = _LastAddressedURIForChatLogMetricIfNeeded(v17, 0, self, &v75, 0);
    v18 = v75;

    if (v70 && v18)
    {
LABEL_12:
      v65 = v18;
      if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v18])
      {
        unsignedIntValue = [commandCopy unsignedIntValue];
        v22 = IMOSLoggingEnabled();
        if (unsignedIntValue == 60001)
        {
          if (v22)
          {
            v27 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending a generic notification to update global read receipt value and updating local chats", buf, 2u);
            }
          }

          v28 = [propertiesCopy objectForKey:?];
          -[MessageServiceSession overwritePerChatReadReceiptSettingsWithGlobalValue:](self, "overwritePerChatReadReceiptSettingsWithGlobalValue:", [v28 BOOLValue]);

          v29 = objc_alloc_init(NSMutableDictionary);
          v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [commandCopy unsignedIntValue]);
          if (v30)
          {
            CFDictionarySetValue(v29, @"c", v30);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BBEE4();
          }

          theDicta = +[NSString stringGUID];
          v49 = [NSNumber numberWithInteger:180];
          v50 = IDSGetUUIDData();
          v51 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
          v62 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v49, IDSSendMessageOptionCommandKey, v50, IDSSendMessageOptionUUIDKey, v51, IDSSendMessageOptionTimeoutKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v29, IDSSendMessageOptionDeliveryStatusContextKey, 0];

          v80[0] = @"gR";
          v52 = [propertiesCopy objectForKey:@"GlobalReadReceiptChangedValue"];
          v80[1] = @"gV";
          v81[0] = v52;
          v53 = [propertiesCopy objectForKey:@"GlobalReadReceiptVersionIDKey"];
          v81[1] = v53;
          v54 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];

          v78[0] = @"gC";
          v55 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [commandCopy unsignedIntValue]);
          v78[1] = @"pID";
          v79[0] = v55;
          v79[1] = v54;
          v56 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];

          if (IMOSLoggingEnabled())
          {
            v57 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = v56;
              _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Sending generic notification to update global read receipt value with messageDictionary: %@", buf, 0xCu);
            }
          }

          deliveryController = [(MessageServiceSession *)self deliveryController];
          v59 = [NSSet setWithObject:v70];
          [deliveryController sendMessageDictionary:v56 encryptDictionary:1 fromID:v70 fromAccount:v65 toURIs:v59 toGroup:0 priority:300 options:v62 willSendBlock:0 completionBlock:&stru_1128E0];

          goto LABEL_66;
        }

        idsAccount = v18;
        if (unsignedIntValue == 60000)
        {
          if (v22)
          {
            v23 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Sending a generic notification to update chat properties", buf, 2u);
            }
          }

          theDict = objc_alloc_init(NSMutableDictionary);
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [commandCopy unsignedIntValue]);
          if (v24)
          {
            CFDictionarySetValue(theDict, @"c", v24);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BBEE4();
          }

          v61 = +[NSString stringGUID];
          v31 = [NSNumber numberWithInteger:180];
          v32 = IDSGetUUIDData();
          v33 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
          v60 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v31, IDSSendMessageOptionCommandKey, v32, IDSSendMessageOptionUUIDKey, v33, IDSSendMessageOptionTimeoutKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, theDict, IDSSendMessageOptionDeliveryStatusContextKey, 0];

          v85[0] = IMChatPropertyReadReceiptsSettingVersionKey;
          v85[1] = IMChatPropertyEnableReadReceiptForChatKey;
          v86[0] = @"vR";
          v86[1] = @"eR";
          v85[2] = IMChatPropertyAutomaticTranslationSettingVersionKey;
          v85[3] = IMChatPropertyEnableAutomaticTranslationForChatKey;
          v86[2] = @"vTR";
          v86[3] = @"eTR";
          v85[4] = IMChatPropertyAutomaticTranslationLanguageCodeForChatKey;
          v85[5] = IMChatPropertyUserTranslationLanguageCodeForChatKey;
          v86[4] = @"lcTR";
          v86[5] = @"tlcTR";
          v34 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:6];
          v35 = +[NSMutableDictionary dictionary];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          allKeys = [v34 allKeys];
          v37 = [allKeys countByEnumeratingWithState:&v71 objects:v84 count:16];
          if (v37)
          {
            v38 = *v72;
            do
            {
              for (i = 0; i != v37; i = i + 1)
              {
                if (*v72 != v38)
                {
                  objc_enumerationMutation(allKeys);
                }

                v40 = *(*(&v71 + 1) + 8 * i);
                v41 = [v34 objectForKey:v40];
                v42 = [propertiesCopy objectForKey:v40];
                if (v42)
                {
                  v43 = v41 == 0;
                }

                else
                {
                  v43 = 1;
                }

                if (!v43)
                {
                  [v35 setObject:v42 forKey:v41];
                }
              }

              v37 = [allKeys countByEnumeratingWithState:&v71 objects:v84 count:16];
            }

            while (v37);
          }

          v82[0] = @"gC";
          v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [commandCopy unsignedIntValue]);
          v83[0] = v44;
          v83[1] = v35;
          v82[1] = @"pID";
          v82[2] = @"cID";
          v83[2] = dCopy;
          v45 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:3];

          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v88 = v45;
              _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "Sending generic notification to update chat properties with messageDictionary: %@", buf, 0xCu);
            }
          }

          deliveryController2 = [(MessageServiceSession *)self deliveryController];
          v48 = [NSSet setWithObject:v70];
          [deliveryController2 sendMessageDictionary:v45 encryptDictionary:1 fromID:v70 fromAccount:v65 toURIs:v48 toGroup:0 priority:300 options:v60 willSendBlock:0 completionBlock:&stru_1128C0];

          goto LABEL_66;
        }

        if (!v22)
        {
LABEL_67:

          goto LABEL_68;
        }

        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v88 = commandCopy;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Not sending message type: %@   => not supported", buf, 0xCu);
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_66:
          idsAccount = v65;
          goto LABEL_67;
        }

        v25 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, " ** Not sending command, device is not registered", buf, 2u);
        }
      }

      goto LABEL_66;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
    v18 = 0;
  }

  v19 = [(MessageServiceSession *)self callerURIUsingCalleeURI:v69];

  idsAccount = [(MessageServiceSession *)self idsAccount];

  if (v19)
  {
    v18 = idsAccount;
    v70 = v19;
    goto LABEL_12;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, " ** Not sending command, no caller URI", buf, 2u);
    }
  }

LABEL_68:
}

- (void)_updateNetworkOverride
{
  v3 = [IDSServerBag sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"md-network-override"];
  intValue = [v4 intValue];

  if (intValue)
  {
    if (self->_networkOverride)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Enabling network override", buf, 2u);
      }
    }

    self->_networkOverride = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    accounts = [(MessageServiceSession *)self accounts];
    v8 = [accounts countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          [(MessageServiceSession *)self logoutServiceSessionWithAccount:*(*(&v19 + 1) + 8 * i)];
        }

        v8 = [accounts countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (!self->_networkOverride)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Disabling network override", buf, 2u);
      }
    }

    self->_networkOverride = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    accounts = [(MessageServiceSession *)self accounts];
    v12 = [accounts countByEnumeratingWithState:&v15 objects:v24 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(accounts);
          }

          [(MessageServiceSession *)self loginServiceSessionWithAccount:*(*(&v15 + 1) + 8 * j)];
        }

        v12 = [accounts countByEnumeratingWithState:&v15 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)_iMessageBagLoaded:(id)loaded
{
  loadedCopy = loaded;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Bag finished loading", v6, 2u);
    }
  }

  [(MessageServiceSession *)self _updateNetworkOverride];
}

- (BOOL)networkConditionsAllowLogin
{
  if (IMSMSFallbackEnabled())
  {
    if (self->_networkOverride)
    {
      v3 = IMOSLoggingEnabled();
      if (v3)
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Network override is in place, forcing network down", buf, 2u);
        }

        LOBYTE(v3) = 0;
      }
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MessageServiceSession;
      LOBYTE(v3) = [(MessageServiceSession *)&v6 networkConditionsAllowLogin];
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)requestProperty:(id)property ofPerson:(id)person
{
  propertyCopy = property;
  personCopy = person;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = propertyCopy;
      v14 = 2112;
      v15 = personCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Requesting property: %@   for person: %@", &v12, 0x16u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  if ([propertyCopy length])
  {
    v9 = [personCopy length] == 0;
    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, " => Empty person ID", &v12, 2u);
        }

        goto LABEL_18;
      }
    }

    else if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = propertyCopy;
        v14 = 2112;
        v15 = personCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "** Unknown property type query: %@ for person ID: %@", &v12, 0x16u);
      }

LABEL_18:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, " => Empty property name", &v12, 2u);
    }

    goto LABEL_18;
  }
}

- (void)_resetFailureRetries
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      failureMap = self->_failureMap;
      v6 = 138412290;
      v7 = failureMap;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Resetting failure map: %@", &v6, 0xCu);
    }
  }

  v5 = self->_failureMap;
  self->_failureMap = 0;
}

- (unint64_t)_failuresForID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(NSMutableDictionary *)self->_failureMap objectForKey:dCopy];
        v10 = 138412546;
        v11 = dCopy;
        v12 = 2048;
        unsignedIntegerValue = [v6 unsignedIntegerValue];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Failures For ID %@ are %lu", &v10, 0x16u);
      }
    }

    v7 = [(NSMutableDictionary *)self->_failureMap objectForKey:dCopy];
    unsignedIntegerValue2 = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  return unsignedIntegerValue2;
}

- (void)_incrementDecryptionFailureForID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    failureMap = self->_failureMap;
    if (!failureMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = self->_failureMap;
      self->_failureMap = Mutable;

      failureMap = self->_failureMap;
    }

    v8 = [(NSMutableDictionary *)failureMap objectForKey:dCopy];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v8 intValue] + 1));

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = dCopy;
        v13 = 1024;
        intValue = [v9 intValue];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Incrementing failure for ID: %@ to %d", &v11, 0x12u);
      }
    }

    [(NSMutableDictionary *)self->_failureMap setObject:v9 forKey:dCopy];
    [(MessageServiceSession *)self _setWeeklyFailureResetTimer];
  }
}

- (unint64_t)_maxFailuresAllowed
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"md-decryption-failure-retries-per-week-v2"];

  if (v3)
  {
    LODWORD(v4) = [v3 intValue];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 67109120;
        v12 = v4;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Server Bag provided us with: %d retries", &v11, 8u);
      }
    }

    v6 = IMOSLoggingEnabled();
    if ((v4 & 0x80000000) != 0)
    {
      if (v6)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 67109120;
          v12 = v4;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Server Bag provided negative value: %d, returning 0", &v11, 8u);
        }
      }

      v4 = 0;
    }

    else
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v11 = 67109120;
          v12 = v4;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, " => returning retries: %d", &v11, 8u);
        }
      }

      v4 = v4;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 67109120;
        v12 = 10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Server Bag has no value for retries, using the default: %d retries", &v11, 8u);
      }
    }

    v4 = 10;
  }

  return v4;
}

- (void)_setWeeklyFailureResetTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32B6C;
  block[3] = &unk_111FC8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addItemToRecentsIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  balloonBundleID = [applicableCopy balloonBundleID];
  v5 = [balloonBundleID isEqualToString:IMBalloonPluginIdentifierHandwriting];

  if (v5)
  {
    payloadData = [applicableCopy payloadData];
    v7 = IMSharedHelperMD5OfData();
    v8 = +[IMRecentItemsList sharedInstance];
    balloonBundleID2 = [applicableCopy balloonBundleID];
    [v8 addRecentItemWithData:payloadData GUID:v7 infoDictionary:0 forDomain:balloonBundleID2];
  }

  else
  {
    fileTransferGUIDs = [applicableCopy fileTransferGUIDs];
    v11 = [fileTransferGUIDs count];

    if (v11)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      fileTransferGUIDs2 = [applicableCopy fileTransferGUIDs];
      v13 = [fileTransferGUIDs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = *v22;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(fileTransferGUIDs2);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            v17 = +[IMDFileTransferCenter sharedInstance];
            v18 = [v17 transferForGUID:v16];
            LOBYTE(v16) = [v18 isSticker];

            if (v16)
            {

              if (IMOSLoggingEnabled())
              {
                v19 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  *v20 = 0;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Posting IMRecentItemsListUpdatedNotification for sticker", v20, 2u);
                }
              }

              notify_post([kIMRecentItemsListUpdatedNotification UTF8String]);
              goto LABEL_18;
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [fileTransferGUIDs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_18:
}

- (BOOL)_transferIsValidForServiceSession:(id)session
{
  sessionCopy = session;
  accountID = [sessionCopy accountID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  accounts = [(MessageServiceSession *)self accounts];
  v7 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(accounts);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      accountID2 = [sessionCopy accountID];
      accountID3 = [v11 accountID];
      v14 = [accountID2 isEqualToString:accountID3];

      if (v14)
      {
        goto LABEL_12;
      }

      if (v8 == ++v10)
      {
        v8 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!accountID)
  {
    v16 = +[IMDAccountController sharedInstance];
    service = [(MessageServiceSession *)self service];
    accounts = [v16 activeAccountsForService:service];

    if ([accounts count] != &dword_0 + 1)
    {
      if ([accounts count] < 2)
      {
        v15 = 0;
      }

      else
      {
        v19 = [accounts objectAtIndex:0];
        v15 = v19 == self;
      }

      goto LABEL_13;
    }

LABEL_12:
    v15 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)callerURI
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "CallerID callerURI is DEPRECATED: Use callerURIForMessageServiceType: instead.", v6, 2u);
    }
  }

  v4 = [(MessageServiceSession *)self callerURIForMessageServiceType:0];

  return v4;
}

- (id)callerURIUsingCalleeURI:(id)i
{
  v4 = [(MessageServiceSession *)self messageServiceTypeForURI:i];

  return [(MessageServiceSession *)self callerURIForMessageServiceType:v4];
}

- (id)callerURIForMessageServiceType:(unsigned int)type
{
  v40 = IMPreferredAccountMap();
  v4 = [v40 objectForKey:IMServiceNameiMessage];
  v42 = [v4 objectForKey:@"guid"];

  idsAccounts = [objc_opt_class() idsAccounts];
  if (v42)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = idsAccounts;
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v6)
    {
      v7 = *v53;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v52 + 1) + 8 * v8);
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqualToString:v42];

        if (v11)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v57 = v9;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, " Found preferred account for caller id: %@", buf, 0xCu);
        }
      }

      firstObject = v9;

      if (type == 1 && firstObject)
      {
        v14 = firstObject;
        firstObject = [(MessageServiceSession *)self bizIDSAccountFromMadridIDSAccount:v14];
      }

      if (firstObject)
      {
        goto LABEL_52;
      }
    }

    else
    {
LABEL_10:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v40;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "No account id found in prefs: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      accounts = [(MessageServiceSession *)self accounts];
      *buf = 138412546;
      v57 = v42;
      v58 = 2112;
      v59 = accounts;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "No ids account found with that account id: %@, accounts: %@", buf, 0x16u);
    }
  }

  v18 = objc_alloc_init(NSMutableArray);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = idsAccounts;
  v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v20)
  {
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        if (![v23 accountType])
        {
          v24 = [(MessageServiceSession *)self callerURIForIDSAccount:v23];
          v25 = v24 == 0;

          if (!v25)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Found phone number account", buf, 2u);
              }
            }

            [v18 addObject:v23];
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v20);
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_33B14;
  v47[3] = &unk_112908;
  v47[4] = self;
  [v18 sortUsingComparator:v47];
  firstObject = [v18 firstObject];
  if (firstObject)
  {
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "No phone number account found, falling back to whatever we have", buf, 2u);
      }
    }

    if (type)
    {
      [(MessageServiceSession *)self fallBackBizIDSAccount];
    }

    else
    {
      [v19 anyObject];
    }
    firstObject = ;

    if (!firstObject)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "- no caller id at all", buf, 2u);
        }
      }

      v28 = 0;
      goto LABEL_69;
    }
  }

LABEL_52:
  v28 = [(MessageServiceSession *)self callerURIForIDSAccount:firstObject];
  if ([v28 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = idsAccounts;
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v62 count:16];
    if (v30)
    {
      v31 = *v44;
      while (2)
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v43 + 1) + 8 * j);
          if (![v33 accountType])
          {
            v34 = [(MessageServiceSession *)self callerURIForIDSAccount:v33];

            v28 = v34;
            goto LABEL_63;
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v43 objects:v62 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_63:
  }

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      registeredURIs = [firstObject registeredURIs];
      *buf = 138412802;
      v57 = v28;
      v58 = 2112;
      v59 = firstObject;
      v60 = 2112;
      v61 = registeredURIs;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "found caller id (%@) from ids account %@, registered URIs %@", buf, 0x20u);
    }
  }

LABEL_69:

  return v28;
}

- (unsigned)messageServiceTypeForURI:(id)i
{
  iCopy = i;
  if ([iCopy length])
  {
    IsBusinessID = IMStringIsBusinessID();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "CallerID -messageServiceTypeForURI: - Did not find serviceType. Using MessageServiceTypeiMessage.", v7, 2u);
      }
    }

    IsBusinessID = 0;
  }

  return IsBusinessID;
}

- (void)replayMessage:(id)message
{
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = messageCopy;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Replaying message %@", buf, 0xCu);
    }
  }

  if (!messageCopy && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "MessageServiceSession replay message was nil %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = messageCopy;
    loginID = [v33 loginID];
    accountUniqueID = [v33 accountUniqueID];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = 96;
    v7 = self->_messagePushHandlers;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v8)
    {
      v9 = *v41;
LABEL_13:
      v10 = 0;
      while (1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        account = [v11 account];
        uniqueID = [account uniqueID];
        v14 = [uniqueID isEqualToIgnoringCase:accountUniqueID];

        if (v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v8)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          account2 = [v11 account];
          loginID2 = [account2 loginID];
          *buf = 138412546;
          v46 = loginID2;
          v47 = 2112;
          v48 = loginID;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Got push handler account %@ %@", buf, 0x16u);
        }
      }

      firstObject = v11;

      if (firstObject)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_19:
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "MessageReplay: Could not find account using unique ID. Falling back to login ID", buf, 2u);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = *&self->IMDAppleServiceSession_opaque[v32];
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = *v37;
LABEL_31:
      v23 = 0;
      while (1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        account3 = [v24 account];
        loginID3 = [account3 loginID];
        v27 = [loginID3 isEqualToIgnoringCase:loginID];

        if (v27)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v21)
          {
            goto LABEL_31;
          }

          goto LABEL_37;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          account4 = [v24 account];
          loginID4 = [account4 loginID];
          *buf = 138412546;
          v46 = loginID4;
          v47 = 2112;
          v48 = loginID;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Got push handler account %@ %@", buf, 0x16u);
        }
      }

      firstObject = v24;

      if (firstObject)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_37:
    }

    firstObject = [*&self->IMDAppleServiceSession_opaque[v32] firstObject];
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = firstObject;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "MessageReplay: Could not fine account using loginID. Picking a random push handler %@", buf, 0xCu);
      }
    }

LABEL_47:
    [firstObject replayMessage:v33];
  }
}

- (void)enqueReplayMessageCallback:(id)callback
{
  callbackCopy = callback;
  v5 = callbackCopy;
  if (callbackCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_342E4;
    v6[3] = &unk_112930;
    v7 = callbackCopy;
    [(MessageServiceSession *)self _enqueueBlock:v6 withTimeout:@"Callback block for message replay batch" description:10.0];
  }
}

- (void)handler:(id)handler payloadDataRequest:(id)request
{
  handlerCopy = handler;
  requestCopy = request;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = requestCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got payload Data request %@", &v10, 0xCu);
    }
  }

  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController handlePayloadDataRequest:requestCopy attempts:0];
}

- (void)handler:(id)handler payloadDataResponse:(id)response
{
  handlerCopy = handler;
  responseCopy = response;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [responseCopy objectForKey:@"guid"];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got payload Data response for message %@", &v11, 0xCu);
    }
  }

  attachmentController = [(MessageServiceSession *)self attachmentController];
  [attachmentController handlePayloadDataResponse:responseCopy];
}

- (void)preWarm
{
  v4 = +[IMTransferServicesController sharedInstance];
  gUID = [(MessageServiceSession *)self GUID];
  [v4 preWarmMMCSForOwnerID:gUID];
}

- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer
{
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [transferCopy guid];
      *buf = 138412290;
      v14 = guid;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Scheduled Message | Renewing TTL for scheduled message attachment %@", buf, 0xCu);
    }
  }

  userInfo = [transferCopy userInfo];
  v8 = objc_alloc_init(FTiMessageRequestMMCSFileRefreshToken);
  AttachmentRefreshUtilConfigureStickerToken(v8, userInfo);
  attachmentRefreshDeliveryController = [(MessageServiceSession *)self attachmentRefreshDeliveryController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_348BC;
  v11[3] = &unk_112958;
  v12 = transferCopy;
  v10 = transferCopy;
  [attachmentRefreshDeliveryController sendFTMessage:v8 attempts:0 withCompletionBlock:v11];
}

- (void)didReplaceMessage:(id)message newMessage:(id)newMessage
{
  messageCopy = message;
  newMessageCopy = newMessage;
  if ([messageCopy scheduleType] == &dword_0 + 2 || objc_msgSend(newMessageCopy, "scheduleType") == &dword_0 + 2)
  {
    scheduledMessageCoordinator = [(MessageServiceSession *)self scheduledMessageCoordinator];
    [scheduledMessageCoordinator handleMessageDidReplace:messageCopy newMessage:newMessageCopy];
  }
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = dsCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting priority message for message guids %@", buf, 0xCu);
    }
  }

  if ([dsCopy count])
  {
    idsAccount = [(MessageServiceSession *)self idsAccount];
    if (idsAccount && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
    {
      deliveryController = [(MessageServiceSession *)self deliveryController];
      localDevice = [deliveryController localDevice];

      v28 = IDSCopyIDForDevice();
      v9 = localDevice != 0;
      v10 = IMOSLoggingEnabled();
      if (localDevice)
      {
        if (v10)
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v32 = dsCopy;
            v33 = 2112;
            v34 = v28;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "  Reflect priority message for message guids: %@ to watch using destination: %@", buf, 0x16u);
          }
        }

        v25 = [(MessageServiceSession *)self callerURIForIDSAccount:idsAccount];
        v12 = objc_opt_new();
        [v12 setObject:dsCopy forKeyedSubscript:@"pm"];
        v27 = JWEncodeDictionary();
        _FTCopyGzippedData = [v27 _FTCopyGzippedData];
        v30[0] = _FTCopyGzippedData;
        v29[0] = IDSSendMessageOptionDataToEncryptKey;
        v29[1] = IDSSendMessageOptionUUIDKey;
        v13 = [dsCopy objectAtIndexedSubscript:0];
        v14 = IDSGetUUIDData();
        v30[1] = v14;
        v29[2] = IDSSendMessageOptionTopLevelDictionaryKey;
        v29[3] = IDSSendMessageOptionSkipPayloadCheckKey;
        v30[2] = &__kCFBooleanTrue;
        v30[3] = &__kCFBooleanTrue;
        v30[4] = &off_1192F0;
        v29[4] = IDSSendMessageOptionCommandKey;
        v29[5] = IDSSendMessageOptionTimeoutKey;
        v15 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
        v30[5] = v15;
        v29[6] = IDSSendMessageOptionWantsDeliveryStatusKey;
        v29[7] = IDSSendMessageOptionAlwaysSkipSelfKey;
        v30[6] = &__kCFBooleanTrue;
        v30[7] = &__kCFBooleanTrue;
        v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "  Sending FTCommandIDPriorityMessage (c=126)", buf, 2u);
          }
        }

        deliveryController2 = [(MessageServiceSession *)self deliveryController];
        v19 = +[NSDictionary dictionary];
        v20 = [NSSet setWithObject:v28];
        [deliveryController2 sendMessageDictionary:v19 encryptDictionary:1 fromID:v25 fromAccount:idsAccount toURIs:v20 toGroup:0 priority:300 options:v16 willSendBlock:0 completionBlock:&stru_112978];
      }

      else if (v10)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = dsCopy;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "  Don't have connected watch to send priority message with guids: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v32 = dsCopy;
          v33 = 2112;
          v34 = idsAccount;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "  Unable to reflect priority message for message guids (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "  No message guids, bailing.", buf, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_convergesDisplayNames
{
  if ([(MessageServiceSession *)self isReplicating])
  {
    account = [(MessageServiceSession *)self account];
    service = [account service];
    v5 = [service supportsCapability:IMServiceCapabilityGroupIdentity] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchContext:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)messageContext isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7
{
  itemCopy = item;
  chatCopy = chat;
  accountCopy = account;
  tokenCopy = token;
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  participantsCopy = participants;
  nameCopy = name;
  iDCopy = iD;
  contextCopy = context;
  receiptCopy = receipt;
  dictionaryCopy = dictionary;
  attachmentsCopy = attachments;
  arrayCopy = array;
  nicknameDictionaryCopy = nicknameDictionary;
  prefixCopy = prefix;
  validationTokenCopy = validationToken;
  subscriptionValidationTokenCopy = subscriptionValidationToken;
  encryptionValidationTokenCopy = encryptionValidationToken;
  serviceCopy = service;
  messageContextCopy = messageContext;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = itemCopy;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Starting processing post blastdoor for messageItem: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = chatCopy;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "   Chat: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = accountCopy;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "   Account: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = tokenCopy;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "   fromToken: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "   fromIDSID: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "   fromIdentifier: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = toIdentifierCopy;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "   toIdentifier: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = participantsCopy;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "   participants: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = nameCopy;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "   groupName: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      isTypingMessage = [itemCopy isTypingMessage];
      v60 = @"NO";
      if (isTypingMessage)
      {
        v60 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v60;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "   isTypingIndicator: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = @"NO";
      if (me)
      {
        v62 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v62;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "   isFromMe: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v63 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = @"NO";
      if (storage)
      {
        v64 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v64;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_INFO, "   isLastFromStorage: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = @"NO";
      if (fromStorage)
      {
        v66 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v66;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "   isFromStorage: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = @"NO";
      if (sender)
      {
        v68 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v68;
      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "   isFromTrustedSender: %@", &buf, 0xCu);
    }
  }

  v69 = +[IMMessageNotificationTimeManager sharedInstance];
  [v69 acquireAssertionToUnsuspendProcess];

  v99 = +[NSDate date];
  v98 = sub_3662C();
  guid = [itemCopy guid];
  v181[0] = _NSConcreteStackBlock;
  v181[1] = 3221225472;
  v181[2] = sub_3668C;
  v181[3] = &unk_1129A0;
  v70 = toIdentifierCopy;
  v182 = v70;
  v123 = [participantsCopy __imArrayByApplyingBlock:v181];
  _stripFZIDPrefix = [identifierCopy _stripFZIDPrefix];
  v95 = blockCopy;
  if ([participantsCopy count] <= 2 && me && objc_msgSend(v123, "count"))
  {
    lastObject = [v123 lastObject];
    _stripFZIDPrefix2 = [lastObject _stripFZIDPrefix];

    _stripFZIDPrefix = _stripFZIDPrefix2;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v185 = 0x3032000000;
  v186 = sub_36714;
  v187 = sub_36724;
  v90 = chatCopy;
  v188 = v90;
  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_3672C;
  v142[3] = &unk_112A40;
  fromStorageCopy = fromStorage;
  v142[4] = self;
  storageCopy = storage;
  v74 = contextCopy;
  v143 = v74;
  v75 = serviceCopy;
  v144 = v75;
  v104 = arrayCopy;
  v145 = v104;
  v134 = itemCopy;
  v146 = v134;
  v126 = guid;
  v147 = v126;
  v94 = participantsCopy;
  v148 = v94;
  p_buf = &buf;
  v93 = v70;
  v149 = v93;
  meCopy = me;
  v97 = nameCopy;
  v150 = v97;
  v76 = _stripFZIDPrefix;
  v151 = v76;
  v91 = accountCopy;
  v152 = v91;
  v92 = tokenCopy;
  v153 = v92;
  blackholedCopy = blackholed;
  senderCopy = sender;
  v131 = identifierCopy;
  v154 = v131;
  v175 = v98;
  v127 = v99;
  v155 = v127;
  usedCopy = used;
  v129 = v123;
  v156 = v129;
  filteredCopy = filtered;
  v102 = iDCopy;
  v157 = v102;
  sourceCopy = source;
  requeryCopy = requery;
  v107 = nicknameDictionaryCopy;
  v158 = v107;
  trustedSenderCopy = trustedSender;
  checkpointingCopy = checkpointing;
  v100 = dCopy;
  v159 = v100;
  v122 = encryptionValidationTokenCopy;
  v160 = v122;
  v120 = subscriptionValidationTokenCopy;
  v161 = v120;
  v114 = prefixCopy;
  v162 = v114;
  v116 = validationTokenCopy;
  v163 = v116;
  v111 = receiptCopy;
  v164 = v111;
  v124 = messageContextCopy;
  v165 = v124;
  notificationCopy = notification;
  v113 = dictionaryCopy;
  v166 = v113;
  v77 = objc_retainBlock(v142);
  v78 = im_checkpointIDSService();
  im_sendMessageCheckpointIfNecessary();

  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_3A9D4;
  v135[3] = &unk_112368;
  v79 = v77;
  v138 = v79;
  fromStorageCopy2 = fromStorage;
  v118 = v95;
  v139 = v118;
  v135[4] = self;
  storageCopy2 = storage;
  v80 = v74;
  v136 = v80;
  v81 = v75;
  v137 = v81;
  v82 = objc_retainBlock(v135);
  if (fromStorage)
  {
    [(MessageServiceSession *)self noteItemProcessed:storage batchContext:v80 usingService:v81];
  }

  if ([v134 isFromMe])
  {
    service = [v134 service];
    [IMSenderContext fromMeContextWithServiceName:service];
  }

  else
  {
    v84 = +[IMDChatRegistry sharedInstance];
    v85 = [v84 hasKnownSenderChatWithChatIdentifier:v76];

    service = [v134 service];
    [IMSenderContext contextWithKnownSender:v85 serviceName:service];
  }
  v86 = ;

  attachmentController = [(MessageServiceSession *)self attachmentController];
  v183 = v131;
  v88 = [NSArray arrayWithObjects:&v183 count:1];
  v89 = IMServiceNameForCanonicalIDSAddresses();
  [attachmentController retrieveAttachmentsForMessage:v134 inlineAttachments:attachmentsCopy displayID:v76 topic:v89 comingFromStorage:fromStorage shouldForceAutoDownload:0 senderContext:v86 completionBlock:v82];

  _Block_object_dispose(&buf, 8);
}

- (void)_updateTransfersForAttributionInfoArray:(id)array message:(id)message
{
  arrayCopy = array;
  messageCopy = message;
  if ([arrayCopy count])
  {
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v8 = [fileTransferGUIDs count];
    v9 = [arrayCopy count];

    if (v8 == v9)
    {
      fileTransferGUIDs2 = [messageCopy fileTransferGUIDs];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_3B004;
      v15[3] = &unk_1120B8;
      v16 = arrayCopy;
      [fileTransferGUIDs2 enumerateObjectsUsingBlock:v15];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        fileTransferGUIDs3 = [messageCopy fileTransferGUIDs];
        v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [fileTransferGUIDs3 count]);
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [arrayCopy count]);
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MessageServiceSession: not updating attribution info: number of guids %@ does not match number of attribution infos %@", buf, 0x16u);
      }
    }
  }
}

- (void)_handleNicknameReceived:(id)received fromIdentifier:(id)identifier withMessageItem:(id)item isSnapTrustedUser:(BOOL)user
{
  userCopy = user;
  receivedCopy = received;
  identifierCopy = identifier;
  itemCopy = item;
  if (IMSharedHelperNickNameEnabled())
  {
    selfCopy = self;
    v29 = itemCopy;
    v12 = [receivedCopy _stringForKey:MessageDictionaryNicknameCloudKitRecordKey];
    v13 = [receivedCopy _dataForKey:MessageDictionaryNicknameCloudKitDecryptionRecordKey];
    v14 = [receivedCopy _stringForKey:MessageDictionaryWallpaperUpdateKey];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;

    v26 = v17;
    v27 = NSBOOLFromString();
    v18 = [receivedCopy _dataForKey:MessageDictionaryNicknameWallpaperTagKey];
    v19 = [receivedCopy _dataForKey:MessageDictionaryNicknameLowResWallpaperTagKey];
    v20 = [receivedCopy _dataForKey:MessageDictionaryNicknameWallpaperMetadataTagKey];
    v21 = [receivedCopy _dataForKey:MessageDictionaryNicknameAvatarRecipeDataTagKey];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"YES";
        if (!userCopy)
        {
          v23 = @"NO";
        }

        *buf = 138412546;
        v34 = v12;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "This message came from user with nickname cloudKitRecord  %@, SNaP trusted user: %@", buf, 0x16u);
      }
    }

    v24 = +[IMDNicknameController sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_3B418;
    v31[3] = &unk_112A68;
    v31[4] = selfCopy;
    v32 = v29;
    BYTE1(v25) = !userCopy;
    LOBYTE(v25) = v27;
    [v24 NicknameWithRecordID:v12 URI:identifierCopy decryptionKey:v13 wallpaperDataTag:v18 wallpaperLowResDataTag:v19 wallpaperMetadataTag:v20 avatarRecipeDataTag:v21 hasWallpaperUpdate:v25 dropNicknameForUnknownContacts:v31 withCompletionBlock:?];

    itemCopy = v29;
  }
}

- (void)_nicknameFetchCompletedMessage:(id)message synchronous:(BOOL)synchronous profile:(id)profile nickNameWasInCache:(BOOL)cache nickNameDownloadError:(id)error
{
  cacheCopy = cache;
  messageCopy = message;
  profileCopy = profile;
  errorCopy = error;
  v14 = IMOSLoggingEnabled();
  if (!profileCopy || errorCopy)
  {
    if (v14)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v24 = 134218242;
        *&v24[4] = profileCopy;
        *&v24[12] = 2112;
        *&v24[14] = errorCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Ignoring nickname update (profile: %p) (error: %@)", v24, 0x16u);
      }
    }
  }

  else
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        *v24 = 138412802;
        *&v24[4] = profileCopy;
        *&v24[12] = 2112;
        if (cacheCopy)
        {
          v16 = @"YES";
        }

        *&v24[14] = 0;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Got NickName Object  %@ error %@ wasInCache %@", v24, 0x20u);
      }
    }

    if (!cacheCopy)
    {
      displayName = [profileCopy displayName];
      if ([displayName length])
      {
        v18 = IMSharedHelperNickNameEnabled();

        if (v18)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              displayName2 = [profileCopy displayName];
              *v24 = 138412290;
              *&v24[4] = displayName2;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Profile display name %@", v24, 0xCu);
            }
          }

          broadcaster = [(MessageServiceSession *)self broadcaster];
          dataRepresentation = [profileCopy dataRepresentation];
          [broadcaster updateNicknameData:dataRepresentation];
        }
      }

      else
      {
      }
    }
  }
}

- (void)_autoReportChatAsUnknown:(id)unknown chatIsNew:(BOOL)new
{
  newCopy = new;
  unknownCopy = unknown;
  v7 = unknownCopy;
  if (unknownCopy && newCopy && [unknownCopy isBlackholed])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    participants = [v7 participants];
    v10 = [participants countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(participants);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) ID];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [participants countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    chatRegistry = [(MessageServiceSession *)self chatRegistry];
    style = [v7 style];
    service = [v7 service];
    internalName = [service internalName];
    v25 = internalName;
    v19 = [NSArray arrayWithObjects:&v25 count:1];
    guid = [v7 guid];
    [chatRegistry markAsSpamForIDs:v8 style:style onServices:v19 chatID:guid queryID:0 autoReport:1];
  }
}

- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v32 = dCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting mark unread for message (%@)", buf, 0xCu);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if (idsAccount && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:dCopy idsAccount:idsAccount];
    v8 = [v7 length];
    v9 = v8 != 0;
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v32 = dCopy;
          *&v32[8] = 2112;
          v33 = v7;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "  Reflect mark as unread for guid: %@ to peer devices using callerID: %@", buf, 0x16u);
        }
      }

      v29 = @"uG";
      v30 = dCopy;
      v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v26 = JWEncodeDictionary();
      _FTCopyGzippedData = [v26 _FTCopyGzippedData];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v26 length];
          v13 = [_FTCopyGzippedData length];
          *buf = 67109376;
          *v32 = v12;
          *&v32[4] = 1024;
          *&v32[6] = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "  Compressed message data from: %u to: %u in sendMessageDictionary", buf, 0xEu);
        }
      }

      v28[0] = _FTCopyGzippedData;
      v27[0] = IDSSendMessageOptionDataToEncryptKey;
      v27[1] = IDSSendMessageOptionUUIDKey;
      v14 = IDSGetUUIDData();
      v28[1] = v14;
      v27[2] = IDSSendMessageOptionTopLevelDictionaryKey;
      v27[3] = IDSSendMessageOptionSkipPayloadCheckKey;
      v28[2] = &__kCFBooleanTrue;
      v28[3] = &__kCFBooleanTrue;
      v28[4] = &off_119308;
      v27[4] = IDSSendMessageOptionCommandKey;
      v27[5] = IDSSendMessageOptionTimeoutKey;
      v15 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v28[5] = v15;
      v28[6] = &__kCFBooleanTrue;
      v27[6] = IDSSendMessageOptionWantsDeliveryStatusKey;
      v27[7] = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
      v16 = [NSSet setWithObject:IDSRegistrationPropertySupportsRetractAndEditMessages];
      v28[7] = v16;
      v27[8] = IDSSendMessageOptionAlwaysSkipSelfKey;
      v28[8] = &__kCFBooleanTrue;
      v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:9];

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v32 = v25;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Sending FTCommandIDMarkAsUnreadMessage (c=111) with messageDictionary:%@", buf, 0xCu);
        }
      }

      deliveryController = [(MessageServiceSession *)self deliveryController];
      v20 = +[NSDictionary dictionary];
      v21 = [NSSet setWithObject:v7];
      [deliveryController sendMessageDictionary:v20 encryptDictionary:1 fromID:v7 fromAccount:idsAccount toURIs:v21 toGroup:0 priority:300 options:v17 willSendBlock:0 completionBlock:&stru_112A88];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v32 = dCopy;
        *&v32[8] = 2112;
        v33 = idsAccount;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "  Unable to reflect mark unread for message (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting recover junk chat for message guid %@", buf, 0xCu);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if (idsAccount && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:dCopy idsAccount:idsAccount];
    v8 = [v7 length];
    v9 = v8 != 0;
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v23 = dCopy;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "  Reflect recover junk chat for message guid: %@ to peer devices using callerID: %@", buf, 0x16u);
        }
      }

      v20[0] = IDSSendMessageOptionUUIDKey;
      v11 = IDSGetUUIDData();
      v21[0] = v11;
      v21[1] = &__kCFBooleanTrue;
      v20[1] = IDSSendMessageOptionTopLevelDictionaryKey;
      v20[2] = IDSSendMessageOptionSkipPayloadCheckKey;
      v21[2] = &__kCFBooleanTrue;
      v21[3] = &off_119320;
      v20[3] = IDSSendMessageOptionCommandKey;
      v20[4] = IDSSendMessageOptionTimeoutKey;
      v12 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v21[4] = v12;
      v20[5] = IDSSendMessageOptionWantsDeliveryStatusKey;
      v20[6] = IDSSendMessageOptionAlwaysSkipSelfKey;
      v21[5] = &__kCFBooleanTrue;
      v21[6] = &__kCFBooleanTrue;
      v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "  Sending FTCommandIDRecoverJunkMessage (c=119)", buf, 2u);
        }
      }

      deliveryController = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [deliveryController sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:idsAccount toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112AA8, v20[0]}];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = idsAccount;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect recover junk chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting accept chat for message guid %@", buf, 0xCu);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if (idsAccount && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:dCopy idsAccount:idsAccount];
    v8 = [v7 length];
    v9 = v8 != 0;
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v23 = dCopy;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "  Reflect accept chat for message guid: %@ to peer devices using callerID: %@", buf, 0x16u);
        }
      }

      v20[0] = IDSSendMessageOptionUUIDKey;
      v11 = IDSGetUUIDData();
      v21[0] = v11;
      v21[1] = &__kCFBooleanTrue;
      v20[1] = IDSSendMessageOptionTopLevelDictionaryKey;
      v20[2] = IDSSendMessageOptionSkipPayloadCheckKey;
      v21[2] = &__kCFBooleanTrue;
      v21[3] = &off_119338;
      v20[3] = IDSSendMessageOptionCommandKey;
      v20[4] = IDSSendMessageOptionTimeoutKey;
      v12 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v21[4] = v12;
      v20[5] = IDSSendMessageOptionWantsDeliveryStatusKey;
      v20[6] = IDSSendMessageOptionAlwaysSkipSelfKey;
      v21[5] = &__kCFBooleanTrue;
      v21[6] = &__kCFBooleanTrue;
      v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "  Sending FTCommandIDAcceptChat (c=124)", buf, 2u);
        }
      }

      deliveryController = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [deliveryController sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:idsAccount toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112AC8, v20[0]}];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = idsAccount;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect accept chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = dsCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting mark as reviewed for chat guids %@", buf, 0xCu);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if (!idsAccount || ![(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = dsCopy;
      v34 = 2112;
      v35 = idsAccount;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "  Unable to reflect mark as reviewed for chat guids (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (![dsCopy count])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_14;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "  Unable to reflect mark as reviewed, no guids provided", buf, 2u);
    }

    goto LABEL_13;
  }

  v7 = +[IMDChatRegistry sharedInstance];
  firstObject = [dsCopy firstObject];
  v29 = [v7 existingChatWithGUID:firstObject];

  lastAddressedLocalHandle = [v29 lastAddressedLocalHandle];
  v10 = lastAddressedLocalHandle;
  if (lastAddressedLocalHandle)
  {
    v11 = lastAddressedLocalHandle;
  }

  else
  {
    v11 = [(MessageServiceSession *)self callerURIForIDSAccount:idsAccount];
  }

  v15 = v11;

  v16 = [v15 length];
  v13 = v16 != 0;
  if (v16)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v33 = dsCopy;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "  Reflect mark as reviewed for chat guids: %@ to peer devices using callerID: %@", buf, 0x16u);
      }
    }

    v18 = objc_opt_new();
    [v18 setObject:dsCopy forKeyedSubscript:@"rc"];
    v28 = JWEncodeDictionary();
    _FTCopyGzippedData = [v28 _FTCopyGzippedData];
    v31[0] = _FTCopyGzippedData;
    v30[0] = IDSSendMessageOptionDataToEncryptKey;
    v30[1] = IDSSendMessageOptionUUIDKey;
    v19 = +[NSString stringGUID];
    v20 = IDSGetUUIDData();
    v31[1] = v20;
    v30[2] = IDSSendMessageOptionTopLevelDictionaryKey;
    v30[3] = IDSSendMessageOptionSkipPayloadCheckKey;
    v31[2] = &__kCFBooleanTrue;
    v31[3] = &__kCFBooleanTrue;
    v31[4] = &off_119350;
    v30[4] = IDSSendMessageOptionCommandKey;
    v30[5] = IDSSendMessageOptionTimeoutKey;
    v21 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v31[5] = v21;
    v30[6] = IDSSendMessageOptionWantsDeliveryStatusKey;
    v30[7] = IDSSendMessageOptionAlwaysSkipSelfKey;
    v31[6] = &__kCFBooleanTrue;
    v31[7] = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:8];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "  Sending FTCommandIDMarkAsReviewed (c=127)", buf, 2u);
      }
    }

    deliveryController = [(MessageServiceSession *)self deliveryController];
    v25 = +[NSDictionary dictionary];
    v26 = [NSSet setWithObject:v15];
    [deliveryController sendMessageDictionary:v25 encryptDictionary:1 fromID:v15 fromAccount:idsAccount toURIs:v26 toGroup:0 priority:300 options:v22 willSendBlock:0 completionBlock:&stru_112AE8];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_BC318(idsAccount, v18);
    }
  }

LABEL_15:
  return v13;
}

- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = dCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting junk chat for message guid %@", buf, 0xCu);
    }
  }

  idsAccount = [(MessageServiceSession *)self idsAccount];
  if (idsAccount && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:dCopy idsAccount:idsAccount];
    v8 = [v7 length];
    v9 = v8 != 0;
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v23 = dCopy;
          v24 = 2112;
          v25 = v7;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "  Reflect junk chat for message guid: %@ to peer devices using callerID: %@", buf, 0x16u);
        }
      }

      v20[0] = IDSSendMessageOptionUUIDKey;
      v11 = IDSGetUUIDData();
      v21[0] = v11;
      v21[1] = &__kCFBooleanTrue;
      v20[1] = IDSSendMessageOptionTopLevelDictionaryKey;
      v20[2] = IDSSendMessageOptionSkipPayloadCheckKey;
      v21[2] = &__kCFBooleanTrue;
      v21[3] = &off_119368;
      v20[3] = IDSSendMessageOptionCommandKey;
      v20[4] = IDSSendMessageOptionTimeoutKey;
      v12 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v21[4] = v12;
      v20[5] = IDSSendMessageOptionWantsDeliveryStatusKey;
      v20[6] = IDSSendMessageOptionAlwaysSkipSelfKey;
      v21[5] = &__kCFBooleanTrue;
      v21[6] = &__kCFBooleanTrue;
      v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "  Sending FTCommandIDJunkChat (c=125)", buf, 2u);
        }
      }

      deliveryController = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [deliveryController sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:idsAccount toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112B08, v20[0]}];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = idsAccount;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect junk chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldBlackholeChatFromSender:(id)sender toRecipient:(id)recipient forAccount:(id)account
{
  senderCopy = sender;
  recipientCopy = recipient;
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 existingSMSChatForID:senderCopy];

  if (v9)
  {
    lastSentMessageDate = [v9 lastSentMessageDate];
    v11 = lastSentMessageDate != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[IMDAccountController sharedAccountController];
  activeAccountsAreEligibleForHawking = [v12 activeAccountsAreEligibleForHawking];

  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 receiverIsCandidateForHawking:recipientCopy];

  v16 = [IMSpamFilterHelper shouldBlackholeMessageFromSender:senderCopy toRecipient:recipientCopy ifRecipientIsCandidate:v15 givenHistory:v11 forEligibleAccounts:activeAccountsAreEligibleForHawking];
  return v16;
}

- (BOOL)_shouldBlackholeGroupChatFromSender:(id)sender toRecipient:(id)recipient withOtherParticipants:(id)participants forAccount:(id)account
{
  senderCopy = sender;
  recipientCopy = recipient;
  participantsCopy = participants;
  accountCopy = account;
  v43[0] = senderCopy;
  v43[1] = recipientCopy;
  v36 = recipientCopy;
  v13 = [NSArray arrayWithObjects:v43 count:2];
  v14 = [IMSpamFilterHelper sanitizeParticipants:participantsCopy excludingHandles:v13];

  v15 = +[IMDChatRegistry sharedInstance];
  v37 = senderCopy;
  _stripFZIDPrefix = [senderCopy _stripFZIDPrefix];
  v17 = [v15 existingChatForID:_stripFZIDPrefix account:accountCopy];
  lastSeenMessageGuid = [v17 lastSeenMessageGuid];
  v19 = lastSeenMessageGuid != 0;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (v19)
        {
          v19 = 1;
        }

        else
        {
          v25 = *(*(&v38 + 1) + 8 * i);
          v26 = +[IMDChatRegistry sharedInstance];
          _stripFZIDPrefix2 = [v25 _stripFZIDPrefix];
          v28 = [v26 existingChatForID:_stripFZIDPrefix2 account:accountCopy];
          lastSeenMessageGuid2 = [v28 lastSeenMessageGuid];
          v19 = lastSeenMessageGuid2 != 0;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v22);
  }

  v30 = +[IMDAccountController sharedAccountController];
  activeAccountsAreEligibleForHawking = [v30 activeAccountsAreEligibleForHawking];

  v32 = +[IMDAccountController sharedAccountController];
  v33 = [v32 receiverIsCandidateForHawking:v36];

  v34 = [IMSpamFilterHelper shouldBlackholeGroupMessageFromSender:v37 toRecipient:v36 ifRecipientIsCandidate:v33 withOtherParticipants:v20 givenHistory:v19 forEligibleAccounts:activeAccountsAreEligibleForHawking];
  return v34;
}

- (id)_pushHandlerForIDSAccount:(id)account
{
  accountCopy = account;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_messagePushHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      account = [v9 account];
      v11 = [account isEqual:accountCopy];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_9:
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = self->_messagePushHandlers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = *v26;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v26 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v25 + 1) + 8 * v16);
      account2 = [v17 account];
      loginID = [account2 loginID];
      loginID2 = [accountCopy loginID];
      v21 = [loginID isEqual:loginID2];

      if (v21)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v12 = v17;

    if (v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_19:
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Couldn't find push handler", v24, 2u);
    }
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (void)handleBreadcrumbForNewSentMessageItemIfNecessary:(id)necessary withContext:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  chat = [contextCopy chat];
  chatIdentifier = [chat chatIdentifier];
  v10 = [(MessageServiceSession *)self storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:necessaryCopy inChatWithIdentifier:chatIdentifier];

  if ([necessaryCopy isBreadcrumb])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      consumedSessionPayloads = [necessaryCopy consumedSessionPayloads];
      v15 = 138412546;
      v16 = necessaryCopy;
      v17 = 2048;
      v18 = [consumedSessionPayloads count];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Sending breadcrumb %@ with payload history: %tu items.", &v15, 0x16u);
    }
  }

  chat2 = [contextCopy chat];
  chatIdentifier2 = [chat2 chatIdentifier];
  [(MessageServiceSession *)self _updateStoredBreadcrumbIfNeeded:v10 onChat:chatIdentifier2];
}

- (id)storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:(id)necessary inChatWithIdentifier:(id)identifier
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(__CFString *)necessaryCopy associatedMessageType]== &stru_F58.reserved2;
  if (([(__CFString *)necessaryCopy isTypingMessage]& 1) != 0 || [(__CFString *)necessaryCopy scheduleType]!= 0 || v8)
  {
    breadcrumbText = IMLogHandleForCategory();
    if (os_log_type_enabled(breadcrumbText, OS_LOG_TYPE_INFO))
    {
      if ([(__CFString *)necessaryCopy isTypingMessage])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (v8)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      scheduleType = [(__CFString *)necessaryCopy scheduleType];
      *buf = 138412802;
      v91 = v10;
      v92 = 2112;
      v93 = v11;
      v94 = 2048;
      v95 = scheduleType;
      _os_log_impl(&dword_0, breadcrumbText, OS_LOG_TYPE_INFO, "Not breadcrumbing, isTypingMessage: %@, isCustomAcknowledgement: %@, scheduleType: %lu", buf, 0x20u);
    }

    goto LABEL_15;
  }

  breadcrumbText = [(__CFString *)necessaryCopy breadcrumbText];
  if (![breadcrumbText length])
  {
    balloonBundleID = [(__CFString *)necessaryCopy balloonBundleID];
    v15 = [balloonBundleID length];

    if (!v15)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_60;
    }
  }

  balloonBundleID2 = [(__CFString *)necessaryCopy balloonBundleID];
  v17 = [balloonBundleID2 isEqualToString:IMBalloonPluginIdentifierDT];

  if ([breadcrumbText length])
  {
    balloonBundleID3 = [(__CFString *)necessaryCopy balloonBundleID];
    v19 = [balloonBundleID3 length] == 0;
  }

  else
  {
    v19 = 0;
  }

  v88 = 0;
  v20 = [(MessageServiceSession *)self _messageItemToConsumeForNewBreadcrumbMessage:necessaryCopy outBreadcrumbItems:&v88];
  v21 = v88;
  if ([(__CFString *)necessaryCopy associatedMessageType]== &dword_0 + 2)
  {
    v22 = [NSMutableArray alloc];
    v23 = IMGetConsumedSessionPayloadsForBreadcrumbItems();
    v24 = [v22 initWithArray:v23];

    payloadData = [(__CFString *)v20 payloadData];
    if (payloadData)
    {
      v26 = payloadData;
      associatedMessageType = [(__CFString *)v20 associatedMessageType];
      v28 = v20;
      v29 = v17;
      v30 = v21;
      v31 = identifierCopy;
      v32 = associatedMessageType;

      v33 = v32 == &dword_0 + 3;
      identifierCopy = v31;
      v21 = v30;
      v17 = v29;
      v20 = v28;
      if (!v33)
      {
        payloadData2 = [(__CFString *)v28 payloadData];
        [v24 addObject:payloadData2];
      }
    }

    [(__CFString *)necessaryCopy setConsumedSessionPayloads:v24];
  }

  if ((v19 | v17))
  {
    breadcrumbText2 = breadcrumbText;
  }

  else
  {
    breadcrumbText2 = [(__CFString *)v20 breadcrumbText];
  }

  v36 = breadcrumbText2;
  v37 = IMLogHandleForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v91 = v20;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Found item to consume: %@", buf, 0xCu);
  }

  if ([(__CFString *)v20 associatedMessageType]== &dword_0 + 3)
  {
    goto LABEL_32;
  }

  if (v20)
  {
    v83 = identifierCopy;
    v38 = [[IMAssociatedMessageItem alloc] initWithMessageItem:v20];
    associatedMessageGUID = [(__CFString *)necessaryCopy associatedMessageGUID];
    [v38 setAssociatedMessageGUID:associatedMessageGUID];

    [v38 setAssociatedMessageType:3];
    [v38 setBody:v36];
    v40 = v20;
LABEL_35:
    destinationCallerID = [(__CFString *)v40 destinationCallerID];
    [v38 setDestinationCallerID:destinationCallerID];

    v42 = +[IMDMessageStore sharedInstance];
    LOBYTE(v66) = 1;
    v13 = [v42 storeMessage:v38 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v66];

    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      body = [(__CFString *)v13 body];
      v45 = [body length];
      *buf = 138412546;
      v91 = v13;
      v92 = 2048;
      v93 = v45;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Stored breadcrumb: %@ with body length %tu", buf, 0x16u);
    }

    if (v13)
    {
      if (!v20)
      {
        v80 = v38;
        v82 = v21;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v46 = +[IMDChatRegistry sharedInstance];
        v47 = [v46 allExistingChatsWithIdentifier:v83];

        v48 = [v47 countByEnumeratingWithState:&v84 objects:v89 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v85;
          do
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v85 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v84 + 1) + 8 * i);
              v53 = +[IMDChatRegistry sharedInstance];
              [v53 addItem:v13 toChat:v52];
            }

            v49 = [v47 countByEnumeratingWithState:&v84 objects:v89 count:16];
          }

          while (v49);
        }

        v21 = v82;
        v20 = 0;
        v38 = v80;
      }

      v54 = v13;
    }

    else
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_BCEC0(v38, v64);
      }
    }

    identifierCopy = v83;

    goto LABEL_59;
  }

  balloonBundleID4 = [(__CFString *)necessaryCopy balloonBundleID];

  if (!balloonBundleID4)
  {
    v79 = [IMAssociatedMessageItem alloc];
    senderInfo = [(__CFString *)necessaryCopy senderInfo];
    time = [(__CFString *)necessaryCopy time];
    isFromMe = [(__CFString *)necessaryCopy isFromMe];
    v57 = 12289;
    if (isFromMe)
    {
      v57 = 45061;
    }

    v75 = v57;
    account = [(__CFString *)necessaryCopy account];
    accountID = [(__CFString *)necessaryCopy accountID];
    v72 = accountID;
    v74 = IMServiceNameiMessage;
    handle = [(__CFString *)necessaryCopy handle];
    v78 = handle;
    v83 = identifierCopy;
    if (handle)
    {
      v60 = handle;
    }

    else
    {
      v60 = identifierCopy;
    }

    v73 = v60;
    roomName = [(__CFString *)necessaryCopy roomName];
    unformattedID = [(__CFString *)necessaryCopy unformattedID];
    countryCode = [(__CFString *)necessaryCopy countryCode];
    expireState = [(__CFString *)necessaryCopy expireState];
    balloonBundleID5 = [(__CFString *)necessaryCopy balloonBundleID];
    guid = [(__CFString *)necessaryCopy guid];
    biaReferenceID = [(__CFString *)necessaryCopy biaReferenceID];
    LODWORD(v67) = 0;
    v38 = [v79 initWithSenderInfo:senderInfo time:time timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:v36 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:v75 guid:0 messageID:0 account:account accountID:accountID service:v74 handle:v73 roomName:roomName unformattedID:unformattedID countryCode:countryCode expireState:expireState balloonBundleID:balloonBundleID5 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 errorType:v67 associatedMessageGUID:guid associatedMessageType:3 associatedMessageRange:0 bizIntent:0x7FFFFFFFFFFFFFFFLL locale:0 biaReferenceID:0 messageSummaryInfo:biaReferenceID partCount:0 threadIdentifier:0 dateRecovered:{0, 0}];

    v40 = necessaryCopy;
    goto LABEL_35;
  }

LABEL_32:
  v13 = 0;
LABEL_59:

LABEL_60:

  return v13;
}

- (id)_messageItemToConsumeForNewBreadcrumbMessage:(id)message outBreadcrumbItems:(id *)items
{
  messageCopy = message;
  associatedMessageGUID = [messageCopy associatedMessageGUID];
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 messagesWithAssociatedGUID:associatedMessageGUID shouldLoadAttachments:0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_55B9C;
  v33[3] = &unk_113370;
  v9 = messageCopy;
  v34 = v9;
  v10 = [v8 __imArrayByFilteringWithBlock:v33];

  if (items)
  {
    v11 = v10;
    *items = v10;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v27 = associatedMessageGUID;
    v28 = 0;
    messageID = 0;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        guid = [v9 guid];
        guid2 = [v18 guid];
        v21 = [guid isEqualToString:guid2];

        if ((v21 & 1) == 0)
        {
          if ([v18 associatedMessageType] == &dword_0 + 2)
          {
            v24 = v18;

            associatedMessageGUID = v27;
            v23 = v28;
            goto LABEL_22;
          }

          if ([v18 associatedMessageType] == &dword_0 + 3 && messageID < objc_msgSend(v18, "messageID"))
          {
            messageID = [v18 messageID];
            v22 = v18;

            v28 = v22;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    associatedMessageGUID = v27;
    if (messageID)
    {
      v23 = v28;
      v24 = v23;
      goto LABEL_22;
    }

    v23 = v28;
  }

  else
  {

    v23 = 0;
  }

  if ([v9 associatedMessageType] == &dword_0 + 2)
  {
    v25 = +[IMDMessageStore sharedInstance];
    v24 = [v25 messageWithGUID:associatedMessageGUID];
  }

  else
  {
    v24 = 0;
  }

LABEL_22:

  return v24;
}

- (void)_updateStoredBreadcrumbIfNeeded:(id)needed onChat:(id)chat
{
  neededCopy = needed;
  chatCopy = chat;
  v24 = neededCopy;
  if (neededCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = +[IMDChatRegistry sharedInstance];
    v8 = [v7 allExistingChatsWithIdentifier:chatCopy];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        v25 = v10;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          chatIdentifier = [v13 chatIdentifier];
          v15 = [chatIdentifier isEqualToString:chatCopy];

          if (v15)
          {
            v16 = +[IMDBroadcastController sharedProvider];
            v17 = [v16 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v13, "isBlackholed")}];
            [v13 accountID];
            v19 = v18 = chatCopy;
            chatIdentifier2 = [v13 chatIdentifier];
            style = [v13 style];
            groupID = [v13 groupID];
            personCentricID = [v13 personCentricID];
            [v17 account:v19 chat:chatIdentifier2 style:style chatProperties:0 groupID:groupID chatPersonCentricID:personCentricID messageReceived:v24];

            chatCopy = v18;
            v10 = v25;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d
{
  dCopy = d;
  deliveryController = [(MessageServiceSession *)self deliveryController];
  [deliveryController cancelScheduledMessageWithGUID:dCopy fromID:@"0000000000"];
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  destinationsCopy = destinations;
  dCopy = d;
  v10 = +[IMDChatStore sharedInstance];
  v11 = [v10 chatsGUIDsForMessageWithGUID:dCopy];
  lastObject = [v11 lastObject];

  v12 = +[IMDChatRegistry sharedInstance];
  v13 = [v12 existingChatWithGUID:lastObject];

  v14 = _LastAddressedURIForChatLogMetricIfNeeded(v13, 0, self, 0, 0);
  deliveryController = [(MessageServiceSession *)self deliveryController];
  [deliveryController cancelScheduledMessageWithGUID:dCopy fromID:v14 destinations:destinationsCopy cancelType:type];
}

- (void)_notifyOfSendMessage:(id)message withContext:(id)context
{
  contextCopy = context;
  messageCopy = message;
  chat = [contextCopy chat];
  [(MessageServiceSession *)self _notifyNameAndPhotoControllerOfMessage:messageCopy onChat:chat];

  [(MessageServiceSession *)self _updateBlackholeStatusIfNeededWithMessage:messageCopy withContext:contextCopy];

  [(MessageServiceSession *)self _updateLastDeviceActivityForCloudKit];
}

- (void)_notifyNameAndPhotoControllerOfMessage:(id)message onChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (([messageCopy isTypingMessage] & 1) == 0 && IMSharedHelperNickNameEnabled() && objc_msgSend(messageCopy, "shouldSendMeCard"))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Queuing up nickname info to send if needed", v9, 2u);
      }
    }

    v8 = +[IMDNicknameController sharedInstance];
    [v8 queueChatToSendNicknamePostUploadIfNeeded:chatCopy];
  }
}

- (void)_updateBlackholeStatusIfNeededWithMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  if (([messageCopy isTypingMessage] & 1) == 0)
  {
    chat = [contextCopy chat];
    isBlackholed = [chat isBlackholed];

    if (isBlackholed)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          chat2 = [contextCopy chat];
          guid = [chat2 guid];
          v19 = 138412290;
          v20 = guid;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Response is causing chat (%@) to be removed from blackhole.", &v19, 0xCu);
        }
      }

      chat3 = [contextCopy chat];
      [chat3 updateIsBlackholed:0];

      chat4 = [contextCopy chat];
      participants = [chat4 participants];
      v15 = [participants count] == &dword_0 + 1;

      v16 = +[IMMetricsCollector sharedInstance];
      v17 = v16;
      if (v15)
      {
        v18 = 22;
      }

      else
      {
        v18 = 23;
      }

      [v16 trackSpamEvent:v18];
    }
  }
}

- (void)_updateLastDeviceActivityForCloudKit
{
  v2 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v2 isInternalInstall];

  if (isInternalInstall)
  {
    v4 = +[NSDate date];
    IMSetDomainValueForKey();
  }
}

- (id)_setCallerIDOnMessage:(id)message onChat:(id)chat withIDSAccount:(id *)account withServiceSession:(id)session
{
  messageCopy = message;
  chatCopy = chat;
  sessionCopy = session;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      v28 = 138412290;
      v29 = guid;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Picking callerID for guid %@", &v28, 0xCu);
    }
  }

  v15 = -[MessageServiceSession _lastAddressedURIForChatLogMetricIfNeededOnChat:withIDSAccount:withServiceSession:shouldLog:](self, "_lastAddressedURIForChatLogMetricIfNeededOnChat:withIDSAccount:withServiceSession:shouldLog:", chatCopy, account, sessionCopy, [messageCopy isTypingMessage] ^ 1);
  balloonBundleID = [messageCopy balloonBundleID];
  v17 = IMBalloonExtensionIDWithSuffix();
  if ([balloonBundleID isEqualToString:v17])
  {
  }

  else
  {
    balloonBundleID2 = [messageCopy balloonBundleID];
    v19 = IMBalloonExtensionIDWithSuffix();
    v20 = [balloonBundleID2 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  account = [messageCopy account];
  v22 = account;
  if (account)
  {
    if (([account hasPrefix:@"e:"] & 1) != 0 || objc_msgSend(v22, "hasPrefix:", @"E:"))
    {
      _stripFZIDPrefix = [v22 _stripFZIDPrefix];

      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = _stripFZIDPrefix;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Rewritting callerURI using %@ for PeopleMessageService balloon", &v28, 0xCu);
        }
      }

      v15 = _bestGuessURI;
    }

    else
    {
      _stripFZIDPrefix = v22;
    }
  }

  else
  {
    _stripFZIDPrefix = 0;
  }

LABEL_19:
  _stripFZIDPrefix2 = [v15 _stripFZIDPrefix];
  [messageCopy setDestinationCallerID:_stripFZIDPrefix2];

  return v15;
}

- (BOOL)_handleDeviceRegistrationForMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  idsAccount = [contextCopy idsAccount];
  v9 = [(MessageServiceSession *)self _isDeviceRegisteredForAccount:idsAccount];

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        idsAccount2 = [contextCopy idsAccount];
        v14 = 138412290;
        v15 = idsAccount2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, " ** Device is not regisistered for account %@, failing send message", &v14, 0xCu);
      }
    }

    [messageCopy setErrorCode:33];
    if ([messageCopy scheduleType] == &dword_0 + 2)
    {
      [(MessageServiceSession *)self _handleScheduledMessageSendFailure:messageCopy];
    }

    [(MessageServiceSession *)self _didSendMessage:messageCopy withContext:contextCopy forceDate:0 fromStorage:0];
    [(MessageServiceSession *)self _FTAWDLogForMessage:messageCopy withContext:contextCopy];
    v12 = +[IMPowerLog sharedInstance];
    [v12 logMessageSendFailureWithError:@"DeviceNotRegistered"];

    [(MessageServiceSession *)self _stopTimingMessageSend];
  }

  return v9;
}

- (BOOL)_failSendingMessageIfNeeded:(id)needed withContext:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  v8 = IMGetCachedDomainBoolForKey();
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = 0x4010000000000000;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, " ** FailSendingMessages is enabled, failing send message after %f seconds", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = 0x4010000000000000;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, " ** FailSendingMessages is enabled, failing send message after %f seconds", buf, 0xCu);
      }
    }

    v12 = neededCopy;
    v13 = contextCopy;
    im_dispatch_after();
    [(MessageServiceSession *)self _storeSentMessage:v12 withContext:v13];
  }

  return v8;
}

- (BOOL)_handleTypingIndicatorMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  _shouldOverrideTypingIndicator = [(MessageServiceSession *)self _shouldOverrideTypingIndicator];
  if (_shouldOverrideTypingIndicator && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "The server has disabled typing indicators via the iMessage config bag!", &v28, 2u);
    }
  }

  chat = [contextCopy chat];
  if ([chat style] == 45)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[IMFeatureFlags sharedFeatureFlags];
    if ([v12 isGroupTypingIndicatorsEnabled])
    {
      chat2 = [contextCopy chat];
      v11 = [chat2 style] != 43;
    }

    else
    {
      v11 = 1;
    }
  }

  if ((_shouldOverrideTypingIndicator | v11) == 1)
  {
    if (([messageCopy isFinished] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          chat3 = [contextCopy chat];
          style = [chat3 style];
          v26 = @"NO";
          if (_shouldOverrideTypingIndicator)
          {
            v26 = @"YES";
          }

          v28 = 67109378;
          LODWORD(v29[0]) = style;
          WORD2(v29[0]) = 2112;
          *(v29 + 6) = v26;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Not sending typing indicator to chat style: %c typingIndicatorOverride: %@", &v28, 0x12u);
        }
      }

      goto LABEL_40;
    }

    if ([messageCopy isFinished] && objc_msgSend(messageCopy, "isEmpty"))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          chat4 = [contextCopy chat];
          style2 = [chat4 style];
          v17 = @"NO";
          if (_shouldOverrideTypingIndicator)
          {
            v17 = @"YES";
          }

          v28 = 67109378;
          LODWORD(v29[0]) = style2;
          WORD2(v29[0]) = 2112;
          *(v29 + 6) = v17;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not sending a cancel typing indicator to chat style: %c typingIndicatorOverride: %@", &v28, 0x12u);
        }
      }

LABEL_40:
      [(MessageServiceSession *)self _storeSentMessage:messageCopy withContext:contextCopy];
      [(MessageServiceSession *)self _didSendMessage:messageCopy withContext:contextCopy forceDate:0 fromStorage:0];
      v22 = 0;
      goto LABEL_41;
    }
  }

  if (![(MessageServiceSession *)self _shouldSendAppTypingIndicator])
  {
    if ([messageCopy isTypingMessage])
    {
      balloonBundleID = [messageCopy balloonBundleID];
      v19 = [balloonBundleID length] == 0;

      if (!v19)
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v28 = 138412290;
            v29[0] = messageCopy;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Not sending app typing indicator due to server overrride for msg %@", &v28, 0xCu);
          }
        }

        goto LABEL_40;
      }
    }
  }

  if (([messageCopy isTypingMessage] & 1) == 0)
  {
    v21 = +[IMMetricsCollector sharedInstance];
    [v21 trackEvent:IMMetricsCollectorEventiMessageSent];
  }

  v22 = 1;
LABEL_41:

  return v22;
}

- (BOOL)_shouldOverrideTypingIndicator
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"md-typing-indicator-override"];
  v4 = [v3 intValue] != 0;

  return v4;
}

- (BOOL)_shouldSendAppTypingIndicator
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"dont-send-app-typing-indicator"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue ^ 1;
}

- (id)_processMessageForSending:(id)sending withContext:(id)context
{
  sendingCopy = sending;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_8AAF4;
  v26 = sub_8AB04;
  v27 = 0;
  isBeingRetried = [sendingCopy isBeingRetried];
  serviceSession = [contextCopy serviceSession];
  chat = [contextCopy chat];
  chatIdentifier = [chat chatIdentifier];
  chat2 = [contextCopy chat];
  style = [chat2 style];
  imdAccount = [contextCopy imdAccount];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_8AB0C;
  v21[3] = &unk_114560;
  v21[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_8ABA0;
  v18[3] = &unk_114588;
  v18[4] = self;
  v14 = contextCopy;
  v19 = v14;
  v20 = &v22;
  [serviceSession processMessageForSending:sendingCopy toChat:chatIdentifier style:style allowWatchdog:isBeingRetried ^ 1 account:imdAccount didReplaceMessageBlock:v21 completionBlock:v18];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)_processMessageForSendingToGroupIfNeeded:(id)needed withContext:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_8AAF4;
  v28 = sub_8AB04;
  v29 = 0;
  serviceSession = [contextCopy serviceSession];
  groupController = [serviceSession groupController];
  chat = [contextCopy chat];
  fromURI = [contextCopy fromURI];
  idsAccount = [contextCopy idsAccount];
  serviceSession2 = [contextCopy serviceSession];
  idsService = [contextCopy idsService];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8B060;
  v19[3] = &unk_1145B0;
  v14 = contextCopy;
  v20 = v14;
  selfCopy = self;
  v15 = neededCopy;
  v22 = v15;
  v23 = &v24;
  [groupController sendMessage:v15 toChat:chat fromID:fromURI fromAccount:idsAccount session:serviceSession2 service:idsService completionBlock:v19];

  v16 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v16;
}

- (void)_refreshGroupPhotoTTLIfNecessary:(id)necessary withContext:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  chat = [contextCopy chat];
  groupMessageContext = [contextCopy groupMessageContext];
  if (groupMessageContext && ([contextCopy groupMessageContext], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isGroupChat"), v10, groupMessageContext, (v11 & 1) != 0))
  {
    groupPhotoGuid = [chat groupPhotoGuid];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v33 = chat;
        v34 = 2112;
        v35 = groupPhotoGuid;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Chat: %@, groupPhotoGuid= %@ ", buf, 0x16u);
      }
    }

    v14 = +[IMDFileTransferCenter sharedInstance];
    v15 = [v14 transferForGUID:groupPhotoGuid];

    if (v15)
    {
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Transfer from IMDFileTransferCenter is nil. Try the IMDAttachmentStore", buf, 2u);
      }
    }

    v17 = +[IMDAttachmentStore sharedInstance];
    chat2 = [contextCopy chat];
    groupPhotoGuid2 = [chat2 groupPhotoGuid];
    v15 = [v17 attachmentWithGUID:groupPhotoGuid2];

    if (v15)
    {
LABEL_13:
      serviceSession = [contextCopy serviceSession];
      groupPhotoRefreshController = [serviceSession groupPhotoRefreshController];
      chat3 = [contextCopy chat];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_8B968;
      v29[3] = &unk_113B08;
      v29[4] = self;
      v30 = v15;
      v31 = chat;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_8BA2C;
      v27[3] = &unk_111FC8;
      v28 = v30;
      v23 = v30;
      [groupPhotoRefreshController refreshTTLForChatAsset:v23 chat:chat3 resendBlock:v29 successBlock:v27];
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Transfer from IMDAttachmentStore is nil. Can't refresh the TTL for group photo.", buf, 2u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      displayName = [chat displayName];
      *buf = 138412290;
      v33 = displayName;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Not refreshing for chat: %@ ", buf, 0xCu);
    }
  }
}

- (void)_refreshTranscriptBackgroundTTLIfNecessary:(id)necessary withContext:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  v8 = +[IMFeatureFlags sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [v8 isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    chat = [contextCopy chat];
    transcriptBackgroundPath = [chat transcriptBackgroundPath];
    if (!transcriptBackgroundPath)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = chat;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "We don't have a transcript background, so there is nothing to refresh. Chat: %@", buf, 0xCu);
        }
      }

      goto LABEL_22;
    }

    transcriptBackgroundProperties = [chat transcriptBackgroundProperties];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v41 = chat;
        v42 = 2112;
        v43 = transcriptBackgroundProperties;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Chat: %@, properties= %@ ", buf, 0x16u);
      }
    }

    v13 = IMTranscriptBackgroundRefreshDateKey;
    v14 = [transcriptBackgroundProperties objectForKeyedSubscript:IMTranscriptBackgroundRefreshDateKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v31 = [transcriptBackgroundProperties objectForKeyedSubscript:v13];
      if (!transcriptBackgroundProperties)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v31 = 0;
      if (!transcriptBackgroundProperties)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = [transcriptBackgroundProperties objectForKeyedSubscript:IMTranscriptBackgroundOwnerIDKey];
    [v17 setObject:v18 forKeyedSubscript:@"mmcs-owner"];

    v19 = IMTranscriptBackgroundSignatureKey;
    v20 = [transcriptBackgroundProperties objectForKeyedSubscript:IMTranscriptBackgroundSignatureKey];
    objc_opt_class();
    LOBYTE(v18) = objc_opt_isKindOfClass();

    v21 = [transcriptBackgroundProperties objectForKeyedSubscript:v19];
    v22 = v21;
    if (v18)
    {
      _FTDataFromBase64String = [v21 _FTDataFromBase64String];
      __imHexString = [_FTDataFromBase64String __imHexString];
      [v17 setObject:__imHexString forKeyedSubscript:@"mmcs-signature-hex"];
    }

    else
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if ((v25 & 1) == 0)
      {
LABEL_20:
        v26 = [transcriptBackgroundProperties objectForKeyedSubscript:{IMTranscriptBackgroundRequestURLStringKey, v31}];
        [v17 setObject:v26 forKeyedSubscript:@"mmcs-url"];

        v27 = [transcriptBackgroundProperties objectForKeyedSubscript:IMTranscriptBackgroundEncryptionDataKey];
        [v17 setObject:v27 forKeyedSubscript:@"decryption-key"];

        v28 = [transcriptBackgroundProperties objectForKeyedSubscript:IMTranscriptBackgroundOutFileSizeKey];
        [v17 setObject:v28 forKeyedSubscript:@"file-size"];

        serviceSession = [contextCopy serviceSession];
        transcriptBackgroundRefreshController = [serviceSession transcriptBackgroundRefreshController];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_8C040;
        v36[3] = &unk_1145D8;
        v36[4] = self;
        v37 = transcriptBackgroundPath;
        v38 = chat;
        v39 = transcriptBackgroundProperties;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_8C0FC;
        v33[3] = &unk_1139F0;
        v34 = v39;
        v35 = v38;
        [transcriptBackgroundRefreshController refreshTTLForChatAsset:v17 chat:v35 refreshDate:v31 resendBlock:v36 successBlock:v33];

        goto LABEL_21;
      }

      v22 = [transcriptBackgroundProperties objectForKeyedSubscript:v19];
      _FTDataFromBase64String = [v22 __imHexString];
      [v17 setObject:_FTDataFromBase64String forKeyedSubscript:@"mmcs-signature-hex"];
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)_deliverMessage:(id)message withContext:(id)context withBlock:(id)block
{
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_8C378;
  v26 = &unk_114650;
  v11 = contextCopy;
  v27 = v11;
  v12 = messageCopy;
  v28 = v12;
  selfCopy = self;
  v13 = blockCopy;
  v30 = v13;
  v14 = objc_retainBlock(&v23);
  v15 = objc_alloc_init(MessageServiceSessionSendBlockWrapper);
  v16 = [v14 copy];
  guid = [v12 guid];
  [(MessageServiceSessionSendBlockWrapper *)v15 setGUID:guid];

  [(MessageServiceSessionSendBlockWrapper *)v15 setBlock:v16];
  balloonBundleID = [v12 balloonBundleID];
  if ([balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks])
  {
    fileTransferGUIDs = [v12 fileTransferGUIDs];
    if ([fileTransferGUIDs count])
    {
      v20 = 0;
    }

    else
    {
      v20 = [v12 isTypingMessage] ^ 1;
    }
  }

  else
  {
    v20 = 0;
  }

  [(MessageServiceSessionSendBlockWrapper *)v15 setIsDelayedRichLinkBlock:v20];
  serviceSession = [v11 serviceSession];
  [serviceSession stageMessageWrapperBlock:v15];

  serviceSession2 = [v11 serviceSession];
  [serviceSession2 addItemToRecentsIfApplicable:v12];
}

- (void)_updateOffGridStatusIfNeededWithMessage:(id)message context:(id)context
{
  messageCopy = message;
  contextCopy = context;
  if (([messageCopy isTypingMessage] & 1) == 0)
  {
    chat = [contextCopy chat];
    style = [chat style];

    if (style == 45)
    {
      chat2 = [contextCopy chat];
      serviceName = [chat2 serviceName];
      v12 = [serviceName isEqualToString:IMServiceNameiMessageLite];

      if ((v12 & 1) == 0)
      {
        chat3 = [contextCopy chat];
        chatIdentifier = [chat3 chatIdentifier];

        guid = [messageCopy guid];
        imdAccount = [contextCopy imdAccount];
        v32 = IMGetDomainBoolForKey();
        isPendingSatelliteSend = [messageCopy isPendingSatelliteSend];
        chat4 = [contextCopy chat];
        recipient = [chat4 recipient];
        cachedOffGridMode = [recipient cachedOffGridMode];

        v21 = IMOSLoggingEnabled();
        if (isPendingSatelliteSend == cachedOffGridMode)
        {
          if (v21)
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              isPendingSatelliteSend2 = [messageCopy isPendingSatelliteSend];
              v30 = @"NO";
              if (cachedOffGridMode)
              {
                v31 = @"YES";
              }

              else
              {
                v31 = @"NO";
              }

              if (isPendingSatelliteSend2)
              {
                v30 = @"YES";
              }

              *buf = 138412546;
              v40 = v31;
              v41 = 2112;
              v42 = v30;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Recipient is off grid (%@) message pending satellite send (%@) agree, treating as active off grid status", buf, 0x16u);
            }
          }

          [(MessageServiceSession *)self didReceiveOffGridStatus:((v32 | cachedOffGridMode) | isPendingSatelliteSend) & 1 forID:chatIdentifier messageGUID:guid account:imdAccount];
        }

        else
        {
          if (v21)
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              isPendingSatelliteSend3 = [messageCopy isPendingSatelliteSend];
              v24 = @"NO";
              if (cachedOffGridMode)
              {
                v25 = @"YES";
              }

              else
              {
                v25 = @"NO";
              }

              if (isPendingSatelliteSend3)
              {
                v24 = @"YES";
              }

              *buf = 138412546;
              v40 = v25;
              v41 = 2112;
              v42 = v24;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Recipient is off grid (%@) message pending satellite send (%@) do not match, fetching off grid mode", buf, 0x16u);
            }
          }

          chat5 = [contextCopy chat];
          recipient2 = [chat5 recipient];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_8CB90;
          v33[3] = &unk_1146A0;
          v34 = chatIdentifier;
          selfCopy = self;
          v38 = v32;
          v36 = guid;
          v37 = imdAccount;
          [recipient2 isOffGridModeWithCompletion:v33];
        }
      }
    }
  }
}

- (void)_handleFakeReceiptBlock:(id)block withContext:(id)context withMsg:(id)msg
{
  blockCopy = block;
  contextCopy = context;
  msgCopy = msg;
  chat = [contextCopy chat];
  style = [chat style];

  if (style == 45)
  {
    fromURI = [contextCopy fromURI];
    v25 = [fromURI isEqualToString:blockCopy];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid = [msgCopy guid];
        v15 = @"NO";
        *buf = 138412802;
        v27 = guid;
        v28 = 2112;
        if (v25)
        {
          v15 = @"YES";
        }

        v29 = blockCopy;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Received legacy saved receipt for: %@   from: %@  from me: %@", buf, 0x20u);
      }
    }

    if ([msgCopy isAudioMessage])
    {
      v16 = 0;
    }

    else
    {
      balloonBundleID = [msgCopy balloonBundleID];
      v18 = [balloonBundleID length] == 0;

      if (v18)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    serviceSession = [contextCopy serviceSession];
    guid2 = [msgCopy guid];
    chat2 = [contextCopy chat];
    chatIdentifier = [chat2 chatIdentifier];
    v23 = [NSDate __im_iMessageDateFromTimeStamp:0];
    imdAccount = [contextCopy imdAccount];
    [serviceSession didReceiveMessageSavedForMessageID:guid2 ofType:v16 forChat:chatIdentifier fromHandle:blockCopy fromMe:v25 date:v23 account:imdAccount completionBlock:0];
  }
}

- (void)_handleIsMeToMeForMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  messageDeliveryContext = [contextCopy messageDeliveryContext];
  if (![messageDeliveryContext fromMeToMe])
  {
    goto LABEL_5;
  }

  messageDeliveryContext2 = [contextCopy messageDeliveryContext];
  success = [messageDeliveryContext2 success];

  if ((success & 1) == 0)
  {
    messageDeliveryContext3 = [contextCopy messageDeliveryContext];
    error = [messageDeliveryContext3 error];

    if (error - 21 <= 1)
    {
      v11 = [MessageDeliveryContext alloc];
      messageDeliveryContext = [contextCopy messageDeliveryContext];
      displayIDs = [messageDeliveryContext displayIDs];
      messageDeliveryContext4 = [contextCopy messageDeliveryContext];
      fromMeToMe = [messageDeliveryContext4 fromMeToMe];
      messageDeliveryContext5 = [contextCopy messageDeliveryContext];
      v16 = -[MessageDeliveryContext initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:](v11, "initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:", displayIDs, 1, 0, fromMeToMe, [messageDeliveryContext5 shouldDeactivate], objc_msgSend(messageCopy, "backwardsCompatibleVersion"));
      [contextCopy setMessageDeliveryContext:v16];

LABEL_5:
    }
  }
}

- (void)_handleDeliveryFailureForMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  messageDeliveryContext = [contextCopy messageDeliveryContext];
  success = [messageDeliveryContext success];
  v9 = IMOSLoggingEnabled();
  if (success)
  {
    if (!v9)
    {
      goto LABEL_36;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      body = [messageCopy body];
      string = [body string];
      v12 = MarcoLoggingStringForMessageData();
      displayIDs = [messageDeliveryContext displayIDs];
      error = [messageDeliveryContext error];
      groupMessageContext = [contextCopy groupMessageContext];
      isGroupChat = [groupMessageContext isGroupChat];
      fromMeToMe = [messageDeliveryContext fromMeToMe];
      v18 = @"NO";
      *buf = 138413570;
      v40 = guid;
      if (isGroupChat)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v41 = 2112;
      v42 = v12;
      if (fromMeToMe)
      {
        v18 = @"YES";
      }

      v43 = 2112;
      v44 = displayIDs;
      v45 = 1024;
      error2 = error;
      v47 = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Finished sending message: (guid: %@) %@ to people: %@ error: %d is chat: %@ from me - to me: %@", buf, 0x3Au);
    }

    goto LABEL_35;
  }

  if (v9)
  {
    v20 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      body2 = [messageCopy body];
      string2 = [body2 string];
      v23 = MarcoLoggingStringForMessageData();
      guid2 = [messageCopy guid];
      displayIDs2 = [messageDeliveryContext displayIDs];
      *buf = 138413058;
      v40 = v23;
      v41 = 2112;
      v42 = guid2;
      v43 = 2112;
      v44 = displayIDs2;
      v45 = 1024;
      error2 = [messageDeliveryContext error];
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Failed sending message: %@  withGUID: %@  to people: %@   error: %d", buf, 0x26u);
    }
  }

  if ([messageDeliveryContext error] == 40)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, " **********************************************************************************", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, " ************ INVALID LOCAL ENCRYPTION CREDENTIALS, DEACTIVATING SERVICE **********", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, " **********************************************************************************", buf, 2u);
      }
    }

    v29 = [MessageDeliveryContext alloc];
    displayIDs3 = [messageDeliveryContext displayIDs];
    v31 = -[MessageDeliveryContext initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:](v29, "initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:", displayIDs3, [messageDeliveryContext success], objc_msgSend(messageDeliveryContext, "error"), objc_msgSend(messageDeliveryContext, "fromMeToMe"), 1, objc_msgSend(messageCopy, "backwardsCompatibleVersion"));
    [contextCopy setMessageDeliveryContext:v31];
  }

  if ([messageCopy needsRelay])
  {
    IMSetDomainBoolForKey();
  }

  if (([messageCopy isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid3 = [messageCopy guid];
      error3 = [messageDeliveryContext error];
      *buf = 138412546;
      v40 = guid3;
      v41 = 1024;
      LODWORD(v42) = error3;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Error sending message:%@ error: %d", buf, 0x12u);
    }

LABEL_35:
  }

LABEL_36:
  if ([messageCopy isFailedHQTransfer])
  {
    error4 = 0;
  }

  else
  {
    error4 = [messageDeliveryContext error];
  }

  [messageCopy setErrorCode:error4];
  if ([messageCopy scheduleType] == &dword_0 + 2 && objc_msgSend(messageCopy, "errorCode"))
  {
    [(MessageServiceSession *)self _handleScheduledMessageSendFailure:messageCopy];
  }

  fromURI = [contextCopy fromURI];
  [messageCopy setDestinationCallerID:fromURI];
}

- (void)_handleUpdateNotificationTimeManagerForMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  notificationIDSTokenURI = [messageCopy notificationIDSTokenURI];
  messageDeliveryContext = [contextCopy messageDeliveryContext];
  if (![messageDeliveryContext success] || (objc_msgSend(messageCopy, "isTypingMessage") & 1) != 0)
  {

    goto LABEL_4;
  }

  v24 = [notificationIDSTokenURI length];

  if (!v24)
  {
LABEL_4:
    messageDeliveryContext2 = [contextCopy messageDeliveryContext];
    if ([messageDeliveryContext2 success])
    {
      isTypingMessage = [messageCopy isTypingMessage];

      if ((isTypingMessage & 1) == 0)
      {
        v11 = +[IMMessageNotificationTimeManager sharedInstance];
        chat = [contextCopy chat];
        chatIdentifier = [chat chatIdentifier];
        [v11 tearDownSessionForChatIdentifier:chatIdentifier];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = +[IMDChatRegistry sharedInstance];
        chat2 = [contextCopy chat];
        chatIdentifier2 = [chat2 chatIdentifier];
        chat3 = [contextCopy chat];
        v18 = [v14 allExistingSupportedServiceChatsWithIdentifier:chatIdentifier2 style:{objc_msgSend(chat3, "style")}];

        v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v19)
        {
          v20 = *v35;
          do
          {
            v21 = 0;
            do
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v34 + 1) + 8 * v21);
              guid = [messageCopy guid];
              [v22 updateLastSeenMessageGuidIfNeeded:guid];

              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v19);
        }
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      guid2 = [messageCopy guid];
      chat4 = [contextCopy chat];
      chatIdentifier3 = [chat4 chatIdentifier];
      *buf = 138412802;
      v40 = guid2;
      v41 = 2112;
      v42 = notificationIDSTokenURI;
      v43 = 2112;
      v44 = chatIdentifier3;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Successfully sent message, setting message item with guid %@ notificationIDSTokenURI %@ for chatIdentifier %@", buf, 0x20u);
    }
  }

  v29 = +[IMMessageNotificationTimeManager sharedInstance];
  [v29 setLatestNotificationIDSTokenURI:notificationIDSTokenURI];

  v30 = +[IMMessageNotificationTimeManager sharedInstance];
  v31 = +[NSDate date];
  chat5 = [contextCopy chat];
  chatIdentifier4 = [chat5 chatIdentifier];
  [v30 setDate:v31 forChatIdentifier:chatIdentifier4];

LABEL_21:
}

- (void)_deactivateServiceIfNeededForContext:(id)context
{
  contextCopy = context;
  messageDeliveryContext = [contextCopy messageDeliveryContext];
  shouldDeactivate = [messageDeliveryContext shouldDeactivate];

  if (shouldDeactivate)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "*** Told to deactivate service, deactivating", buf, 2u);
      }
    }

    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "***** Request to deactivate and purge my identity", v14, 2u);
    }

    idsAccount = [contextCopy idsAccount];
    [idsAccount deactivateAndPurgeIdentify];

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, " => Deactivating", v13, 2u);
    }

    v10 = +[IMDAccountController sharedInstance];
    imdAccount = [contextCopy imdAccount];
    accountID = [imdAccount accountID];
    [v10 deactivateAccount:accountID];
  }
}

- (void)_notifyDidSendMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  if ([messageCopy isTypingMessage])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[IMDMessageStore sharedInstance];
    guid = [messageCopy guid];
    v8 = [v9 hasStoredMessageWithGUID:guid];
  }

  messageDeliveryContext = [contextCopy messageDeliveryContext];
  v12 = [messageDeliveryContext fromMeToMe] | v8;

  if (v12)
  {
    messageDeliveryContext2 = [contextCopy messageDeliveryContext];
    success = [messageDeliveryContext2 success];

    if (success)
    {
      [(MessageServiceSession *)self _didSendMessage:messageCopy withContext:contextCopy forceDate:0 fromStorage:0];
      messageDeliveryContext3 = [contextCopy messageDeliveryContext];
      if ([messageDeliveryContext3 fromMeToMe])
      {
        groupMessageContext = [contextCopy groupMessageContext];
        isGroupChat = [groupMessageContext isGroupChat];

        if ((isGroupChat & 1) == 0)
        {
          [(MessageServiceSession *)self _handleMessageSentToSelf:messageCopy withContext:contextCopy isLocal:1];
        }
      }

      else
      {
      }

      if ([messageCopy isFinished] && (objc_msgSend(messageCopy, "isBeingRetried") & 1) == 0)
      {
        serviceSession = [contextCopy serviceSession];
        guid2 = [messageCopy guid];
        imdAccount = [contextCopy imdAccount];
        messageDeliveryContext4 = [contextCopy messageDeliveryContext];
        [serviceSession notifyDidSendMessageID:guid2 account:imdAccount shouldNotify:{objc_msgSend(messageDeliveryContext4, "isBackwardsCompatibleMessage") ^ 1}];

        v36 = IMMetricsCollectorAttachmentCount;
        fileTransferGUIDs = [messageCopy fileTransferGUIDs];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [fileTransferGUIDs count]);
        v37 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        v28 = +[IMMetricsCollector sharedInstance];
        [v28 trackEvent:IMMetricsCollectorStatisticSentMessage withDictionary:v27];
      }
    }

    else
    {
      messageDeliveryContext5 = [contextCopy messageDeliveryContext];
      success2 = [messageDeliveryContext5 success];

      if ((success2 & 1) == 0)
      {
        [(MessageServiceSession *)self _didSendMessage:messageCopy withContext:contextCopy forceDate:0 fromStorage:0];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = messageCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Not reflecting this to the application, this message looks like it was deleted: %@", &v34, 0xCu);
    }
  }

  v29 = +[NSDate date];
  sendDate = [contextCopy sendDate];
  [v29 timeIntervalSinceDate:sendDate];
  v32 = v31;

  v33 = [NSNumber numberWithDouble:v32];
  [contextCopy setSendDuration:v33];
  [(MessageServiceSession *)self _FTAWDLogForMessage:messageCopy withContext:contextCopy];
}

- (void)_handleMessageSentToSelf:(id)self withContext:(id)context isLocal:(BOOL)local
{
  selfCopy = self;
  contextCopy = context;
  if ([selfCopy isFromMe] && (objc_msgSend(selfCopy, "isTypingMessage") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        chat = [contextCopy chat];
        chatIdentifier = [chat chatIdentifier];
        chat2 = [contextCopy chat];
        *buf = 138412802;
        v15 = selfCopy;
        v16 = 2112;
        v17 = chatIdentifier;
        v18 = 1024;
        style = [chat2 style];
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Need to handle message sent to myself: %@   chat: %@  style: %d", buf, 0x1Cu);
      }
    }

    v12 = selfCopy;
    v13 = contextCopy;
    im_dispatch_after();
  }
}

- (BOOL)_shouldInitiateTelephonyConversationForMessage:(id)message
{
  groupActivity = [message groupActivity];
  if (groupActivity)
  {
    v4 = +[IMFeatureFlags sharedFeatureFlags];
    isAVLessSharePlayEnabled = [v4 isAVLessSharePlayEnabled];
  }

  else
  {
    isAVLessSharePlayEnabled = 0;
  }

  return isAVLessSharePlayEnabled;
}

- (id)_buildSendMessageContextWithChatIdentifier:(id)identifier withChatStyle:(unsigned __int8)style withServiceSession:(id)session withMessage:(id)message destinations:(id)destinations
{
  styleCopy = style;
  sessionCopy = session;
  messageCopy = message;
  destinationsCopy = destinations;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [sessionCopy canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v14 = identifierCopy;

  if (v14)
  {
    v15 = [sessionCopy chatForChatIdentifier:v14 style:styleCopy updatingAccount:1];
    v46 = 0;
    v44 = [(MessageServiceSession *)self _setCallerIDOnMessage:messageCopy onChat:v15 withIDSAccount:&v46 withServiceSession:sessionCopy];
    v16 = v46;
    v42 = [sessionCopy idsServiceForIDSAccount:v16];
    accounts = [sessionCopy accounts];
    v43 = IMDAccountForIDSAccount(v16, accounts, sessionCopy);

    _UpdateLastAddressedHandle(messageCopy, v44, v15);
    [(MessageServiceSession *)self _fixParticipantsForChat:v15];
    participants = [v15 participants];
    v19 = URIsFromHandles(participants);

    v20 = v19;
    v21 = v20;
    if ([messageCopy isBeingRetried])
    {
      retryToParticipant = [messageCopy retryToParticipant];
      v23 = IMOSLoggingEnabled();
      if (retryToParticipant)
      {
        if (v23)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v50 = retryToParticipant;
            v51 = 2112;
            v52 = v20;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Sending retry message only to participant %@, instead of %@", buf, 0x16u);
          }
        }

        v71 = retryToParticipant;
        v21 = [NSArray arrayWithObjects:&v71 count:1];
      }

      else
      {
        v21 = v20;
        if (v23)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Sending retry message but couldn't find retryTo participant", buf, 2u);
          }

          v21 = v20;
        }
      }
    }

    if (destinationsCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v50 = destinationsCopy;
          v51 = 2112;
          v52 = v21;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending message to participants %@ instead of %@", buf, 0x16u);
        }
      }

      v28 = URIsFromHandles(destinationsCopy);

      v21 = v28;
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        selfCopy = self;
        body = [messageCopy body];
        string = [body string];
        v39 = MarcoLoggingStringForMessageData();
        guid = [messageCopy guid];
        associatedMessageGUID = [messageCopy associatedMessageGUID];
        associatedMessageType = [messageCopy associatedMessageType];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        fileTransferGUIDs = [messageCopy fileTransferGUIDs];
        *buf = 138414850;
        v50 = v39;
        v51 = 2112;
        v52 = guid;
        v53 = 2112;
        v54 = v14;
        v55 = 2112;
        v56 = v15;
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = selfCopy;
        v61 = 2112;
        v62 = v43;
        v63 = 2112;
        v64 = associatedMessageGUID;
        v65 = 2048;
        v66 = associatedMessageType;
        v67 = 2112;
        v68 = v31;
        v69 = 2112;
        v70 = fileTransferGUIDs;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "send message: %@  guid: %@  to identifier: %@   chat: %@   callerURI: %@   self: %@   account: %@ associatedMessageGUID: %@  associatedMessageType: %lld  messageItemClass: %@ fileTransferGUID %@", buf, 0x70u);
      }
    }

    v25 = [[SendMessageContext alloc] initWithChat:v15 withIMDAccount:v43 withIDSAccount:v16 withCallerURI:v44 serviceSession:sessionCopy withIDSService:v42 withParticipantURIs:v21 withOriginalParticipantURIs:v20];
    v33 = +[NSDate date];
    [(SendMessageContext *)v25 setSendDate:v33];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_fixParticipantsForChat:(id)chat
{
  chatCopy = chat;
  participants = [chatCopy participants];
  v4 = [participants count];

  if (!v4)
  {
    v5 = +[IMDAccountController sharedInstance];
    v6 = +[IMDServiceController sharedController];
    v7 = [v6 serviceWithName:IMServiceNameSMS];
    v8 = [v5 accountsForService:v7];

    if ([v8 count])
    {
      v9 = +[IMDChatRegistry sharedInstance];
      chatIdentifier = [chatCopy chatIdentifier];
      lastObject = [v8 lastObject];
      v12 = [v9 existingChatWithIdentifier:chatIdentifier account:lastObject];

      LODWORD(v9) = [chatCopy style];
      if (v9 == [v12 style])
      {
        participants2 = [v12 participants];

        if (participants2)
        {
          participants3 = [v12 participants];
          [chatCopy addParticipants:participants3];
        }
      }
    }
  }

  [chatCopy recoverParticipantsIfNeeded];
}

- (void)_storeSentMessage:(id)message withContext:(id)context
{
  contextCopy = context;
  messageCopy = message;
  chat = [contextCopy chat];
  chatIdentifier = [chat chatIdentifier];
  chat2 = [contextCopy chat];
  style = [chat2 style];
  chat3 = [contextCopy chat];

  account = [chat3 account];
  v14.receiver = self;
  v14.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v14 sendMessage:messageCopy toChat:chatIdentifier style:style account:account];
}

- (void)_handleScheduledMessageSendFailure:(id)failure
{
  failureCopy = failure;
  editedPartIndexes = [failureCopy editedPartIndexes];
  if ([editedPartIndexes count])
  {

LABEL_4:
    [failureCopy setErrorCode:0];
    deliveryController = [(MessageServiceSession *)self deliveryController];
    [deliveryController handleScheduledMessageSendFailure:failureCopy];
    goto LABEL_5;
  }

  retractedPartIndexes = [failureCopy retractedPartIndexes];
  v6 = [retractedPartIndexes count];

  if (v6)
  {
    goto LABEL_4;
  }

  [failureCopy setScheduleState:4];
  deliveryController = [failureCopy guid];
  [IMDScheduledMessageCoordinator notifyPeersWithScheduledMessageUpdate:deliveryController scheduleState:4];
LABEL_5:
}

- (void)_logCompletedMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  v18 = +[IMPowerLog sharedInstance];
  guid = [messageCopy guid];
  fromURI = [contextCopy fromURI];
  _stripFZIDPrefix = [fromURI _stripFZIDPrefix];
  groupMessageContext = [contextCopy groupMessageContext];
  isGroupChat = [groupMessageContext isGroupChat];
  if (isGroupChat)
  {
    handle = @"Group";
  }

  else
  {
    handle = [messageCopy handle];
  }

  chat = [contextCopy chat];
  powerLogConversationType = [chat powerLogConversationType];
  powerLogMessageType = [messageCopy powerLogMessageType];
  sendDuration = [contextCopy sendDuration];
  v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [messageCopy errorCode]);
  service = [messageCopy service];
  [v18 logMessageSentWithGUID:guid fromIdentifier:_stripFZIDPrefix toIdentifier:handle conversationType:powerLogConversationType messageType:powerLogMessageType sendDuration:sendDuration errorCode:v13 messageProtocol:service];

  if ((isGroupChat & 1) == 0)
  {
  }
}

- (void)_FTAWDLogForMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  v103 = IMMetricsCollectorError;
  v86 = messageCopy;
  v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", sub_904FC([messageCopy errorCode]));
  v104 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v80 = [v7 mutableCopy];

  v8 = +[IMMetricsCollector sharedInstance];
  [v8 trackEvent:IMMetricsCollectorEventOutgoingMessage withDictionary:v80];

  isTypingMessage = [v86 isTypingMessage];
  chat = [contextCopy chat];
  style = [chat style];

  handle = [v86 handle];
  IsEmail = IMStringIsEmail();

  fileTransferGUIDs = [v86 fileTransferGUIDs];
  v78 = [fileTransferGUIDs count];

  if (([v86 isTypingMessage] & 1) == 0)
  {
    sendDuration = [contextCopy sendDuration];
    v14 = sendDuration == 0;

    if (!v14)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          sendDuration2 = [contextCopy sendDuration];
          guid = [v86 guid];
          *buf = 138412546;
          v100 = sendDuration2;
          v101 = 2112;
          v102 = guid;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Send Duration: %@ GUID %@", buf, 0x16u);
        }
      }
    }
  }

  v18 = +[FTNetworkSupport sharedInstance];
  wiFiActiveAndReachable = [v18 wiFiActiveAndReachable];

  if (wiFiActiveAndReachable)
  {
    v20 = 2;
  }

  else
  {
    v21 = +[FTNetworkSupport sharedInstance];
    dataActiveAndReachable = [v21 dataActiveAndReachable];

    if (dataActiveAndReachable)
    {
      v20 = 8;
    }

    else
    {
      v20 = 1;
    }
  }

  v97[0] = IMMetricsCollectorFzErrorKey;
  v23 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v86 errorCode]);
  v98[0] = v23;
  v97[1] = IMMetricsCollectorMessageErrorKey;
  v24 = [NSNumber numberWithLong:0];
  v98[1] = v24;
  v97[2] = IMMetricsCollectorIsTypingIndicatorKey;
  v25 = [NSNumber numberWithBool:isTypingMessage];
  v98[2] = v25;
  v97[3] = IMMetricsCollectorIsGroupMessageKey;
  v26 = [NSNumber numberWithBool:style != 45];
  v98[3] = v26;
  v97[4] = IMMetricsCollectorIsToPhoneNumberKey;
  v27 = [NSNumber numberWithBool:IsEmail ^ 1];
  v98[4] = v27;
  v97[5] = IMMetricsCollectorIsToEmailKey;
  v28 = [NSNumber numberWithInt:IsEmail];
  v98[5] = v28;
  v97[6] = IMMetricsCollectorHasAttachmentsKey;
  v29 = [NSNumber numberWithBool:v78 != 0];
  v98[6] = v29;
  v97[7] = IMMetricsCollectorSendDurationKey;
  sendDuration3 = [contextCopy sendDuration];
  v98[7] = sendDuration3;
  v97[8] = IMMetricsCollectorConnectionTypeKey;
  v31 = [NSNumber numberWithLong:v20];
  v98[8] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:9];
  v82 = [v32 mutableCopy];

  if (v78)
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    fileTransferGUIDs2 = [v86 fileTransferGUIDs];
    v34 = [fileTransferGUIDs2 countByEnumeratingWithState:&v91 objects:v96 count:16];
    if (v34)
    {
      v35 = *v92;
      while (2)
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v92 != v35)
          {
            objc_enumerationMutation(fileTransferGUIDs2);
          }

          v37 = *(*(&v91 + 1) + 8 * i);
          v38 = +[IMDFileTransferCenter sharedInstance];
          v39 = [v38 transferForGUID:v37];

          type = [v39 type];
          if ([type length])
          {
            v41 = [UTType typeWithIdentifier:type];
            if (v41 && ([UTTypeImage conformsToType:v41] & 1) != 0)
            {
              v42 = [NSNumber numberWithBool:[IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v39 isSending:1]];
              [v82 setObject:v42 forKey:IMMetricsCollectorIsAttachmentSentWithLQMEnabledKey];

              goto LABEL_26;
            }
          }
        }

        v34 = [fileTransferGUIDs2 countByEnumeratingWithState:&v91 objects:v96 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

  v43 = +[IMMetricsCollector sharedInstance];
  v44 = [v82 copy];
  [v43 trackEvent:IMMetricsCollectorEventIMessageSentMessageSingleComponent withDictionary:v44];

  isReplicating = [(MessageServiceSession *)self isReplicating];
  chat2 = [contextCopy chat];
  isBusinessChat = [chat2 isBusinessChat];

  v48 = @"text";
  if (isTypingMessage)
  {
    v48 = @"typingIndicator";
  }

  v49 = v48;
  if (v78)
  {

    v79 = @"attachment";
  }

  else
  {
    v79 = v49;
  }

  v50 = @"individual";
  if (style != 45)
  {
    v50 = @"group";
  }

  v51 = v50;
  if (isBusinessChat)
  {

    v51 = @"business";
  }

  v81 = v51;
  if (style == 45)
  {
    v84 = 0;
  }

  else
  {
    v52 = @"iMessage";
    if (isReplicating)
    {
      v52 = @"iMessage_Hybrid";
    }

    v84 = v52;
  }

  bodyData = [v86 bodyData];
  v54 = [bodyData length];
  payloadData = [v86 payloadData];
  v56 = [payloadData length];

  fileTransferGUIDs3 = [v86 fileTransferGUIDs];
  v58 = fileTransferGUIDs3;
  v59 = &v54[v56];
  if (fileTransferGUIDs3)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v60 = [fileTransferGUIDs3 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (v60)
    {
      v61 = *v88;
      do
      {
        for (j = 0; j != v60; j = j + 1)
        {
          if (*v88 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v87 + 1) + 8 * j);
          v64 = +[IMDFileTransferCenter sharedInstance];
          v65 = [v64 transferForGUID:v63];
          totalBytes = [v65 totalBytes];

          v59 = &v59[totalBytes];
        }

        v60 = [v58 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v60);
    }
  }

  v67 = +[IMMetricsCollector sharedInstance];
  originalServiceName = [v86 originalServiceName];
  sendDuration4 = [contextCopy sendDuration];
  v70 = [v86 errorCode] == 0;
  chat3 = [contextCopy chat];
  lastAddressedLocalHandle = [chat3 lastAddressedLocalHandle];
  handle2 = [v86 handle];
  v74 = +[IMMetricsCollector stringForFZErrorType:](IMMetricsCollector, "stringForFZErrorType:", [v86 errorCode]);
  LOBYTE(v75) = v70;
  [v67 trackSentMessageEventOfType:@"iMessage" subtype:v79 originalServiceName:originalServiceName messageSize:v59 sendDuration:sendDuration4 receiverType:v81 receiverGroupType:v84 wasSuccessful:v75 sourceHandle:lastAddressedLocalHandle destinationHandle:handle2 error:v74];
}

- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  styleCopy = style;
  v12 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  if (background)
  {
    sub_BD504();
    v16 = sub_BD544();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_BD544();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  if (identifier)
  {
    v18 = sub_BD8B4();
    identifier = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = sub_BD8B4();
  v22 = v21;
  selfCopy = self;
  MessageServiceSession.setTranscriptBackground(_:andSendToChatIdentifier:chatStyle:transferID:isRefresh:)(v15, v18, identifier, styleCopy, v20, v22, refreshCopy);

  sub_75B0(v15, &qword_123ED0, &unk_CE4D0);
}

- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d
{
  styleCopy = style;
  v10 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  if (upload)
  {
    sub_BD504();
    v14 = sub_BD544();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_BD544();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (identifier)
  {
    v16 = sub_BD8B4();
    identifier = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_BD8B4();
  v20 = v19;
  selfCopy = self;
  MessageServiceSession.retryTranscriptBackgroundUpload(_:chatIdentifier:style:transferID:)(v13, v16, identifier, styleCopy, v18, v20);

  sub_75B0(v13, &qword_123ED0, &unk_CE4D0);
}

- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context
{
  v10 = sub_BD8B4();
  v12 = v11;
  commandCopy = command;
  forCopy = for;
  contextCopy = context;
  selfCopy = self;
  MessageServiceSession.receiveIncomingBlastdoorBackgroundCommand(_:for:sender:senderContext:)(command, forCopy, v10, v12, contextCopy);
}

- (void)_requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  v8 = sub_BD8B4();
  v10 = v9;
  v11 = sub_BD8B4();
  v13 = v12;
  backgroundCopy = background;
  selfCopy = self;
  sub_A9E48(backgroundCopy, v8, v10, v11, v13);
}

- (void)requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  fromIdentifierCopy = fromIdentifier;
  if (identifier)
  {
    v10 = sub_BD8B4();
    v12 = v11;
    if (fromIdentifierCopy)
    {
LABEL_3:
      v13 = sub_BD8B4();
      fromIdentifierCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (fromIdentifier)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  backgroundCopy = background;
  selfCopy = self;
  MessageServiceSession.requestTranscriptBackground(_:toIdentifier:fromIdentifier:messageIsFromStorage:)(background, v10, v12, v13, fromIdentifierCopy, storage);
}

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  storageCopy = storage;
  fromIdentifierCopy = fromIdentifier;
  if (identifier)
  {
    v12 = sub_BD8B4();
    v14 = v13;
    if (fromIdentifierCopy)
    {
LABEL_3:
      v15 = sub_BD8B4();
      fromIdentifierCopy = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (fromIdentifier)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  necessaryCopy = necessary;
  selfCopy = self;
  MessageServiceSession.requestTranscriptBackgroundIfNecessary(_:incomingVersion:toIdentifier:fromIdentifier:messageIsFromStorage:)(necessary, version, v12, v14, v15, fromIdentifierCopy, storageCopy);
}

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  styleCopy = style;
  if (identifier)
  {
    v6 = sub_BD8B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  MessageServiceSession.refetchChatBackgroundIfNeeded(forChatIdentifier:chatStyle:)(v6, v8, styleCopy);
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  swift_unknownObjectRetain();
  selfCopy = self;
  MessageServiceSession.calculateReachability(with:responseHandler:)(requestCopy, handler);

  swift_unknownObjectRelease();
}

- (void)requestBackgroundsFromRecentChatsIfNeeded
{
  selfCopy = self;
  MessageServiceSession.requestBackgroundsFromRecentChatsIfNeeded()();
}

@end