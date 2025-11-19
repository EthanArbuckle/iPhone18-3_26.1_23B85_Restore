@interface MessageServiceSession
- (BOOL)_amIMentioned:(id)a3 inMentions:(id)a4;
- (BOOL)_convergesDisplayNames;
- (BOOL)_failSendingMessageIfNeeded:(id)a3 withContext:(id)a4;
- (BOOL)_handleDeviceRegistrationForMessage:(id)a3 withContext:(id)a4;
- (BOOL)_handleTypingIndicatorMessage:(id)a3 withContext:(id)a4;
- (BOOL)_isAllowlistedUnencryptedSender:(id)a3;
- (BOOL)_isFromLinkedID:(id)a3 fromID:(id)a4;
- (BOOL)_isRegisteredURI:(id)a3;
- (BOOL)_originalTimestampWithinAcceptableWindow:(id)a3 timestamp:(id)a4;
- (BOOL)_richLinkPendSendingWithGUID:(id)a3;
- (BOOL)_shouldBlackholeChatFromSender:(id)a3 toRecipient:(id)a4 forAccount:(id)a5;
- (BOOL)_shouldBlackholeGroupChatFromSender:(id)a3 toRecipient:(id)a4 withOtherParticipants:(id)a5 forAccount:(id)a6;
- (BOOL)_shouldIgnoreMessageFromSender:(id)a3 balloonBID:(id)a4 fromMe:(BOOL)a5;
- (BOOL)_shouldInitiateTelephonyConversationForMessage:(id)a3;
- (BOOL)_shouldOverrideTypingIndicator;
- (BOOL)_shouldSendAppTypingIndicator;
- (BOOL)_transferIsValidForServiceSession:(id)a3;
- (BOOL)_updateAutomaticTranslationProperties:(id)a3 withIncomingProperties:(id)a4;
- (BOOL)_updateReadReceiptProperties:(id)a3 withIncomingProperties:(id)a4;
- (BOOL)networkConditionsAllowLogin;
- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)a3;
- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3;
- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)a3;
- (BOOL)sendNicknameUpdatesToPeerDevices:(id)a3 toDestinations:(id)a4;
- (BOOL)shouldDownloadGroupPhoto:(id)a3;
- (BOOL)shouldUploadGroupPhoto:(id)a3;
- (IMDCKUtilities)ckUtilities;
- (IMDMessageStore)messageStore;
- (MessageServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5;
- (double)_messageHQUpdateReceiveTimeout;
- (id)_buildSendMessageContextWithChatIdentifier:(id)a3 withChatStyle:(unsigned __int8)a4 withServiceSession:(id)a5 withMessage:(id)a6 destinations:(id)a7;
- (id)_calculateQueueIdentifierForMessage:(id)a3;
- (id)_firstiMessageChat;
- (id)_generateAndStoreGroupActionItemForChat:(id)a3 sender:(id)a4;
- (id)_handleIDsForDestinations:(id)a3;
- (id)_messageDictionaryForDeleteCommandShouldResetPreference:(BOOL)a3;
- (id)_messageDictionaryToReflectWithDeliveryReceipt:(id)a3;
- (id)_messageItemToConsumeForNewBreadcrumbMessage:(id)a3 outBreadcrumbItems:(id *)a4;
- (id)_processMessageForSending:(id)a3 withContext:(id)a4;
- (id)_processMessageForSendingToGroupIfNeeded:(id)a3 withContext:(id)a4;
- (id)_pushHandlerForIDSAccount:(id)a3;
- (id)_setCallerIDOnMessage:(id)a3 onChat:(id)a4 withIDSAccount:(id *)a5 withServiceSession:(id)a6;
- (id)bizIDSAccountFromMadridIDSAccount:(id)a3;
- (id)callerURI;
- (id)callerURIForMessageServiceType:(unsigned int)a3;
- (id)callerURIUsingCalleeURI:(id)a3;
- (id)fallBackBizIDSAccount;
- (id)fileTransferDictionaryForChat:(id)a3;
- (id)generateAndStoreAssetChangeStatusItemForChat:(id)a3 sender:(id)a4 fileTransferGuid:(id)a5 assetStatusChange:(id)a6;
- (id)idsAccountForFromURI:(id)a3 toURI:(id)a4;
- (id)idsServiceForIDSAccount:(id)a3;
- (id)storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:(id)a3 inChatWithIdentifier:(id)a4;
- (unint64_t)_computeFlagsForIncomingMessage:(unint64_t)a3 isFromMe:(BOOL)a4 unfinished:(BOOL)a5 isAudioMessage:(BOOL)a6 isAutoReply:(BOOL)a7 isExpirable:(BOOL)a8 isGroupTypingMessage:(BOOL)a9 messageSource:(unint64_t)a10 participants:(id)a11 hasUnseenMention:(BOOL)a12 isSOS:(BOOL)a13 isCritical:(BOOL)a14;
- (unint64_t)_failuresForID:(id)a3;
- (unint64_t)_maxFailuresAllowed;
- (unint64_t)_replicationEditDelay;
- (unsigned)messageServiceTypeForURI:(id)a3;
- (void)_FTAWDLogForMessage:(id)a3 withContext:(id)a4;
- (void)_autoReportChatAsUnknown:(id)a3 chatIsNew:(BOOL)a4;
- (void)_automation_receiveDictionary:(id)a3 options:(id)a4 fromHandle:(id)a5;
- (void)_automation_sendDictionary:(id)a3 options:(id)a4 toHandles:(id)a5;
- (void)_blastDoorProcessingWithIMMessageItem:(id)a3 chat:(id)a4 account:(id)a5 fromToken:(id)a6 fromIDSID:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 participants:(id)a10 groupName:(id)a11 groupID:(id)a12 isFromMe:(BOOL)a13 isLastFromStorage:(BOOL)a14 isFromStorage:(BOOL)a15 batchContext:(id)a16 hideLockScreenNotification:(BOOL)a17 wantsCheckpointing:(BOOL)a18 needsDeliveryReceipt:(id)a19 messageBalloonPayloadAttachmentDictionary:(id)a20 inlineAttachments:(id)a21 attributionInfoArray:(id)a22 nicknameDictionary:(id)a23 availabilityVerificationRecipientChannelIDPrefix:(id)a24 availabilityVerificationRecipientEncryptionValidationToken:(id)a25 availabilityOffGridRecipientSubscriptionValidationToken:(id)a26 availabilityOffGridRecipientEncryptionValidationToken:(id)a27 idsService:(id)a28 messageContext:(id)a29 isFromTrustedSender:(BOOL)a30 isFromSnapTrustedSender:(BOOL)a31 wasContextUsed:(BOOL)a32 isBlackholed:(BOOL)a33 shouldTrackForRequery:(BOOL)a34 isFiltered:(int64_t)a35 spamDetectionSource:(int64_t)a36 completionBlock:(id)a37;
- (void)_cacheMaintenanceForMessageGUIDsSeenInLastIDSCacheFlush;
- (void)_checkGlobalReadReceiptValueAndUpdateIfNeeded:(id)a3;
- (void)_configurePrimaryServiceSessionWithAccount:(id)a3 service:(id)a4;
- (void)_deactivateServiceIfNeededForContext:(id)a3;
- (void)_deliverMessage:(id)a3 withContext:(id)a4 withBlock:(id)a5;
- (void)_engroupForChat:(id)a3 idsAccount:(id)a4 completion:(id)a5;
- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4 description:(id)a5;
- (void)_fixParticipantsForChat:(id)a3;
- (void)_flushQueuedMessageWrapperBlocks;
- (void)_forwardP2PGroupCommand:(id)a3 fromPerson:(id)a4 toPerson:(id)a5 toGroup:(id)a6 toToken:(id)a7 messageID:(id)a8;
- (void)_handleDeleteCommandWithMessageDictionary:(id)a3;
- (void)_handleDeliveryFailureForMessage:(id)a3 withContext:(id)a4;
- (void)_handleFakeReceiptBlock:(id)a3 withContext:(id)a4 withMsg:(id)a5;
- (void)_handleFileTransferUpdated:(id)a3;
- (void)_handleIsMeToMeForMessage:(id)a3 withContext:(id)a4;
- (void)_handleMessageSentToSelf:(id)a3 withContext:(id)a4 isLocal:(BOOL)a5;
- (void)_handleNicknameReceived:(id)a3 fromIdentifier:(id)a4 withMessageItem:(id)a5 isSnapTrustedUser:(BOOL)a6;
- (void)_handleScheduledMessageSendFailure:(id)a3;
- (void)_handleUpdateNotificationTimeManagerForMessage:(id)a3 withContext:(id)a4;
- (void)_iMessageBagLoaded:(id)a3;
- (void)_incrementDecryptionFailureForID:(id)a3;
- (void)_logCompletedMessage:(id)a3 withContext:(id)a4;
- (void)_nicknameFetchCompletedMessage:(id)a3 synchronous:(BOOL)a4 profile:(id)a5 nickNameWasInCache:(BOOL)a6 nickNameDownloadError:(id)a7;
- (void)_notifyDidSendMessage:(id)a3 withContext:(id)a4;
- (void)_notifyNameAndPhotoControllerOfMessage:(id)a3 onChat:(id)a4;
- (void)_notifyOfSendMessage:(id)a3 withContext:(id)a4;
- (void)_primeServerBags;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)a3;
- (void)_refreshGroupPhotoTTLIfNecessary:(id)a3 withContext:(id)a4;
- (void)_refreshTranscriptBackgroundTTLIfNecessary:(id)a3 withContext:(id)a4;
- (void)_registerKeepMessagesSettingReflection;
- (void)_registerReadReceiptSettingReflection;
- (void)_relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5;
- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5;
- (void)_requestTranscriptBackground:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6;
- (void)_resetFailureRetries;
- (void)_sendHighResolutionImagesForMessage:(id)a3 fromID:(id)a4 fromAccount:(id)a5 toURIs:(id)a6 toChat:(id)a7;
- (void)_sendSyndicationAction:(id)a3 toChat:(id)a4;
- (void)_setWeeklyFailureResetTimer;
- (void)_setupPushHandlerWithAccount:(id)a3;
- (void)_storeSentMessage:(id)a3 withContext:(id)a4;
- (void)_updateBlackholeStatusIfNeededWithMessage:(id)a3 withContext:(id)a4;
- (void)_updateChatProperties:(id)a3 withProperties:(id)a4;
- (void)_updateLastDeviceActivityForCloudKit;
- (void)_updateNetworkOverride;
- (void)_updateOffGridStatusIfNeededWithMessage:(id)a3 context:(id)a4;
- (void)_updateStoredBreadcrumbIfNeeded:(id)a3 onChat:(id)a4;
- (void)_updateTransfersForAttributionInfoArray:(id)a3 message:(id)a4;
- (void)addAccount:(id)a3;
- (void)addItemToRecentsIfApplicable:(id)a3;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)cancelScheduledMessageWithGUID:(id)a3;
- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5;
- (void)dealloc;
- (void)didReplaceMessage:(id)a3 newMessage:(id)a4;
- (void)eagerUploadCancel:(id)a3;
- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4;
- (void)enqueReplayMessageCallback:(id)a3;
- (void)forwardDeliveryReceiptForMessageID:(id)a3 withAccount:(id)a4 callerURI:(id)a5;
- (void)generateTranscriptBackground:(id)a3 destinationURL:(id)a4 senderContext:(id)a5 resultBlock:(id)a6;
- (void)groupPhotoUploadCompletedForChat:(id)a3 fileTransferGuid:(id)a4 callerURI:(id)a5 fromAccount:(id)a6 message:(id)a7 displayIDs:(id)a8 additionalContext:(id)a9 success:(BOOL)a10 isPhotoRefresh:(BOOL)a11 error:(unsigned int)a12;
- (void)groupPhotoUploadFailedForChat:(id)a3 fileTransferGuid:(id)a4;
- (void)handleBreadcrumbForNewSentMessageItemIfNecessary:(id)a3 withContext:(id)a4;
- (void)handler:(id)a3 bubblePayloadData:(id)a4 forMessageID:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14;
- (void)handler:(id)a3 deleteCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 genericNotification:(id)a4 incomingMessage:(id)a5 userInfo:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15;
- (void)handler:(id)a3 groupMessageCommand:(id)a4 encryptedGroupCommand:(id)a5 messageID:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15;
- (void)handler:(id)a3 incomingMessage:(id)a4 originalEncryptionType:(id)a5 messageID:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 incomingEngroup:(id)a12 needsDeliveryReceipt:(id)a13 deliveryContext:(id)a14 storageContext:(id)a15 batchContext:(id)a16 messageContext:(id)a17 isBeingReplayed:(BOOL)a18 mergeID:(id)a19 wantsCheckpointing:(BOOL)a20 isSnapTrustedUser:(BOOL)a21;
- (void)handler:(id)a3 locationShareInfo:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 messageIDDelivered:(id)a4 toIdentifier:(id)a5 status:(id)a6 deliveryContext:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 messageIDPlayed:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 messageIDRead:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 messageIDReflectedDelivered:(id)a4 incomingMessage:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 status:(id)a8 deliveryContext:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15;
- (void)handler:(id)a3 messageIDSaved:(id)a4 ofType:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 groupContext:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15;
- (void)handler:(id)a3 nicknameInfoReceived:(id)a4 userInfo:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14;
- (void)handler:(id)a3 payloadDataRequest:(id)a4;
- (void)handler:(id)a3 payloadDataResponse:(id)a4;
- (void)handler:(id)a3 receivedError:(id)a4 forMessageID:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14 additionalInfo:(id)a15 shouldShowPeerErrors:(BOOL)a16;
- (void)handler:(id)a3 recoverCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13;
- (void)handler:(id)a3 remoteFileRequest:(id)a4;
- (void)handler:(id)a3 remoteFileResponse:(id)a4;
- (void)handler:(id)a3 updateAttachments:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13 fileTransferUpdates:(id)a14;
- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChat:(id)a5 style:(unsigned __int8)a6;
- (void)messageDeliveryController:(id)a3 didFlushCacheForKTPeerURI:(id)a4;
- (void)messageDeliveryController:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6;
- (void)messageDeliveryController:(id)a3 serverUpdatedTimestampMessage:(id)a4;
- (void)networkMonitorDidUpdate:(id)a3;
- (void)preWarm;
- (void)receiveIncomingBlastdoorBackgroundCommand:(id)a3 for:(id)a4 sender:(id)a5 senderContext:(id)a6;
- (void)receivedGroupPhotoUpdate:(id)a3 chat:(id)a4 sender:(id)a5 isHidden:(BOOL)a6;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4;
- (void)refreshRegistration;
- (void)refreshServiceCapabilities;
- (void)removeAccount:(id)a3;
- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)renewTTLForScheduledAttachmentTransfer:(id)a3;
- (void)replayMessage:(id)a3;
- (void)requestBackgroundsFromRecentChatsIfNeeded;
- (void)requestProperty:(id)a3 ofPerson:(id)a4;
- (void)requestTranscriptBackground:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6;
- (void)requestTranscriptBackgroundIfNecessary:(id)a3 incomingVersion:(unint64_t)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 messageIsFromStorage:(BOOL)a7;
- (void)retryTranscriptBackgroundUpload:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 transferID:(id)a6;
- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6;
- (void)sendBrandLogoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7;
- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 toChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8;
- (void)sendCrossServiceAssociationMessageWithReplacementGUID:(id)a3 messageGUID:(id)a4 callerID:(id)a5 toID:(id)a6;
- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)a3 forIncomingMessageFromIDSID:(id)a4 toChatGuid:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 withWillSendToDestinationsHandler:(id)a8;
- (void)sendDeliveryReceiptForMessageID:(id)a3 toID:(id)a4 deliveryContext:(id)a5 needsDeliveryReceipt:(id)a6 callerID:(id)a7 account:(id)a8;
- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10;
- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8;
- (void)sendLocationSharingInfo:(id)a3 toID:(id)a4 completionBlock:(id)a5;
- (void)sendNicknameInfoToURIs:(id)a3 chatGUID:(id)a4;
- (void)sendNotifyRecipientCommandForMessage:(id)a3 toChatGuid:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7;
- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendRepositionStickerMessage:(id)a3 chatIdentifier:(id)a4 accountID:(id)a5 style:(unsigned __int8)a6;
- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6;
- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4;
- (void)sendUpdatedCollaborationMetadata:(id)a3 toChatsWithIdentifiers:(id)a4 forMessageGUID:(id)a5;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)a3;
- (void)setTranscriptBackground:(id)a3 andSendToChatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 transferID:(id)a6 isRefresh:(BOOL)a7;
- (void)stageMessageWrapperBlock:(id)a3;
- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9;
- (void)uploadGroupPhotoForChat:(id)a3 fileTransferGUID:(id)a4 itemGUID:(id)a5 callerURI:(id)a6 idsAccount:(id)a7 isPhotoRefresh:(BOOL)a8;
@end

@implementation MessageServiceSession

- (MessageServiceSession)initWithAccount:(id)a3 service:(id)a4 replicatingForSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v41.receiver = self;
  v41.super_class = MessageServiceSession;
  v10 = [(MessageServiceSession *)&v41 initWithAccount:v8 service:v9 replicatingForSession:a5];
  v11 = v10;
  if (v10)
  {
    if (!a5)
    {
      [(MessageServiceSession *)v10 _configurePrimaryServiceSessionWithAccount:v8 service:v9];
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

- (void)_configurePrimaryServiceSessionWithAccount:(id)a3 service:(id)a4
{
  v5 = a3;
  [(MessageServiceSession *)self _primeServerBags];
  [(MessageServiceSession *)self _setupPushHandlerWithAccount:v5];

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

- (void)_setupPushHandlerWithAccount:(id)a3
{
  v4 = a3;
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
  v9 = [v4 idsAccount];
  v10 = [(MessagePushHandler *)v8 initWithIDSAccount:v9];

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

- (void)addAccount:(id)a3
{
  v8.receiver = self;
  v8.super_class = MessageServiceSession;
  v4 = a3;
  [(MessageServiceSession *)&v8 addAccount:v4];
  v5 = [MessagePushHandler alloc];
  v6 = [v4 idsAccount];

  v7 = [(MessagePushHandler *)v5 initWithIDSAccount:v6];
  [(MessagePushHandler *)v7 addListener:self];
  [(NSMutableArray *)self->_messagePushHandlers addObject:v7];
}

- (void)removeAccount:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v19 removeAccount:v4];
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
        v12 = [v11 account];
        v13 = [v4 idsAccount];

        if (v12 == v13)
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
  v3 = [v2 isUnderFirstDataProtectionLock];

  if ((v3 & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [objc_opt_class() idsAccounts];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v5)
    {
      v6 = *v30;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v4);
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

        v5 = [v4 countByEnumeratingWithState:&v29 objects:v40 count:16];
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
  v10 = [(MessageServiceSession *)self accounts];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v39 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 idsAccount];
          if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v16])
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
                  v20 = [v15 loginStatus];
                  v21 = [v15 idsAccount];
                  *buf = v22;
                  v34 = v15;
                  v35 = 2048;
                  v36 = v20;
                  v37 = 2112;
                  v38 = v21;
                  _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "refreshRegistration. Logging into account %@, login status %lu,  [account idsAccount] %@", buf, 0x20u);
                }
              }

              [(MessageServiceSession *)self loginServiceSessionWithAccount:v15, v22];
            }
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v39 count:16];
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

- (id)idsAccountForFromURI:(id)a3 toURI:(id)a4
{
  v5 = a3;
  IsBusinessID = IMStringIsBusinessID();
  v7 = &IDSServiceNameiMessageForBusiness;
  if (!IsBusinessID)
  {
    v7 = &IDSServiceNameiMessage;
  }

  v8 = [(MessageServiceSession *)self idsAccountForURI:v5 IDSServiceName:*v7];

  return v8;
}

- (id)bizIDSAccountFromMadridIDSAccount:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [objc_opt_class() idsAccounts];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isBizAccount])
        {
          v9 = [v8 loginID];
          v10 = [v3 loginID];
          v11 = [v9 isEqualToString:v10];

          if (v11)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = [v8 uniqueID];
                v15 = [v3 uniqueID];
                *buf = 138412546;
                v22 = v14;
                v23 = 2112;
                v24 = v15;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Found Biz IDSAccount %@ for Madrid IDSAccount %@", buf, 0x16u);
              }
            }

            v12 = v8;
            goto LABEL_16;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
  v3 = [v2 chats];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 serviceName];
        v9 = [v8 isEqualToString:IMServiceNameiMessage];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [v3 isUnderFirstDataProtectionLock];

  v5 = IMOSLoggingEnabled();
  if ((v4 & 1) == 0)
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
    v6 = [(MessageServiceSession *)self scheduledMessageCoordinator];
    [v6 updateTimerForTimeInterval:60.0];
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Not scheduling routing and expire timer before first unlock", buf, 2u);
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

- (void)sessionWillBecomeInactiveWithAccount:(id)a3
{
  v4 = a3;
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
  [(MessageServiceSession *)&v6 sessionWillBecomeInactiveWithAccount:v4];
  [(MessageServiceSession *)self _logLocalInfo];
}

- (void)refreshServiceCapabilities
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MessageServiceSession *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(MessageServiceSession *)self broadcaster];
        v10 = [v8 accountID];
        [v9 account:v10 capabilitiesChanged:{-[MessageServiceSession capabilities](self, "capabilities")}];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_enqueueBlock:(id)a3 withTimeout:(double)a4 description:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(MessageServiceSession *)self accountID];
      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, " Enqueued item for key: %@    timeout: %f", &v12, 0x16u);
    }
  }

  [IMMultiQueue im_enqueuiMessageBlock:v8 withTimeout:v9 description:a4];
}

- (BOOL)_updateReadReceiptProperties:(id)a3 withIncomingProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = IMChatPropertyReadReceiptsSettingVersionKey;
  v8 = [v5 _numberForKey:IMChatPropertyReadReceiptsSettingVersionKey];
  v9 = IMChatPropertyEnableReadReceiptForChatKey;
  v10 = [v5 _numberForKey:IMChatPropertyEnableReadReceiptForChatKey];
  v11 = [v6 _numberForKey:@"vR"];
  v12 = [v6 _numberForKey:@"eR"];
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
      [v5 setObject:v11 forKey:v7];
    }

    if (v12)
    {
      [v5 setObject:v12 forKey:v9];
    }

    v15 = 1;
  }

  return v15;
}

- (BOOL)_updateAutomaticTranslationProperties:(id)a3 withIncomingProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = IMChatPropertyAutomaticTranslationSettingVersionKey;
  v8 = [v5 _numberForKey:IMChatPropertyAutomaticTranslationSettingVersionKey];
  v9 = IMChatPropertyEnableAutomaticTranslationForChatKey;
  v23 = [v5 _numberForKey:IMChatPropertyEnableAutomaticTranslationForChatKey];
  v20 = IMChatPropertyAutomaticTranslationLanguageCodeForChatKey;
  v22 = [v5 _stringForKey:?];
  v19 = IMChatPropertyUserTranslationLanguageCodeForChatKey;
  v21 = [v5 _stringForKey:?];
  v10 = [v6 _numberForKey:@"vTR"];
  v11 = [v6 _numberForKey:@"eTR"];
  v12 = [v6 _stringForKey:@"lcTR"];
  v13 = [v6 _stringForKey:@"tlcTR"];
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
      [v5 setObject:v10 forKey:v7];
    }

    if (v11)
    {
      [v5 setObject:v11 forKey:v9];
    }

    if (v12)
    {
      [v5 setObject:v12 forKey:v20];
    }

    if (v13)
    {
      [v5 setObject:v13 forKey:v19];
    }

    v16 = 1;
  }

  return v16;
}

- (void)_updateChatProperties:(id)a3 withProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 properties];
  v9 = [v8 mutableCopy];

  LOBYTE(v8) = [(MessageServiceSession *)self _updateReadReceiptProperties:v9 withIncomingProperties:v7];
  v10 = [(MessageServiceSession *)self _updateAutomaticTranslationProperties:v9 withIncomingProperties:v7];
  if ((v8 & 1) != 0 || v10)
  {
    [v6 updateProperties:v9];
    v11 = [(MessageServiceSession *)self broadcasterForChatListeners];
    v12 = [v6 guid];
    [v11 chat:v12 propertiesUpdated:v9];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Updated chat properties for chat: %@ properties: %@", &v14, 0x16u);
      }
    }
  }
}

- (void)_checkGlobalReadReceiptValueAndUpdateIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(MessageServiceSession *)self globalReadReceiptSettingVersion];
  v6 = [v4 objectForKey:@"gV"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Local global read receipt id: %@ incoming global read receipt id: %@", &v11, 0x16u);
    }
  }

  v8 = [v6 integerValue];
  if (v8 > [v5 integerValue])
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

    v10 = [v4 objectForKey:@"gR"];
    -[MessageServiceSession _updateGlobalReadReceiptValue:withVersionID:](self, "_updateGlobalReadReceiptValue:withVersionID:", [v10 BOOLValue], v6);
  }
}

- (void)handler:(id)a3 receivedError:(id)a4 forMessageID:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14 additionalInfo:(id)a15 shouldShowPeerErrors:(BOOL)a16
{
  v81 = a3;
  v80 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v75 = a8;
  v72 = a9;
  v79 = a10;
  v25 = self;
  v77 = a11;
  v78 = a12;
  v26 = a13;
  v76 = a14;
  v74 = a15;
  v27 = [(MessageServiceSession *)self registeredURIs];
  if (!v27 && IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "receivedError - No bindings !!", buf, 2u);
    }
  }

  if ([v27 containsObject:v23])
  {
    v29 = 0;
    if (v23 && v24)
    {
      v29 = [v23 isEqualToString:v24];
    }

    v30 = [v26 unsignedIntValue];
    v73 = [v26 unsignedIntValue];
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = @"NO";
        *buf = 138414338;
        v83 = v80;
        if (a16)
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

        if (v30)
        {
          v35 = @"YES";
        }

        else
        {
          v35 = @"NO";
        }

        if ((v73 & 2) != 0)
        {
          v32 = @"YES";
        }

        v84 = 2112;
        v85 = v24;
        v86 = 2112;
        v87 = v23;
        v88 = 2112;
        v89 = v75;
        v90 = 2112;
        v91 = v22;
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

    if ((v73 & 2) != 0)
    {
      [(MessageServiceSession *)v25 noteLastItemFromStorage:v22];
    }

    else if (v30)
    {
      [(MessageServiceSession *)v25 noteItemFromStorage:v22];
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = @"YES";
        *buf = 138412802;
        v83 = v79;
        v84 = 2112;
        if (!v77)
        {
          v38 = @"NO";
        }

        v85 = v38;
        v86 = 2112;
        v87 = v78;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    v39 = [(__CFString *)v80 intValue];
    v40 = [v81 account];
    v70 = [(MessageServiceSession *)v25 imdAccountForIDSAccount:v40];

    v41 = [(MessageServiceSession *)v25 deliveryController];
    v42 = [(__CFString *)v24 _stripFZIDPrefix];
    v71 = [v41 activeDeviceForHandle:v42];

    v69 = [(__CFString *)v71 idsDestination];
    if (v39 <= 399)
    {
      if (v39 > 199)
      {
        if (v39 == 200)
        {
          if (IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v83 = v22;
              v84 = 2112;
              v85 = v71;
              v86 = 2112;
              v87 = v69;
              v88 = 2112;
              v89 = v79;
              _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, " => Pair decryption failure for messageID: %@ activeDevice: %@ activeIDSdestination: %@ fromIDSID: %@", buf, 0x2Au);
            }
          }

          if (([(MessageServiceSession *)v25 isReplicating]& 1) == 0)
          {
            LOBYTE(v67) = 0;
            [(MessageServiceSession *)v25 _reAttemptMessageDeliveryForGUID:v22 toIdentifier:v23 fromIdentifier:v24 fromIDSID:v79 isReflection:0 shouldShowError:a16 cacheFlushError:v67 imdAccount:v70];
            goto LABEL_137;
          }

          if (IMOSLoggingEnabled())
          {
            v56 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v83 = v22;
              _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Not reattempting delivery of guid %@, this is a replicating session", buf, 0xCu);
            }

            goto LABEL_126;
          }

          goto LABEL_137;
        }

        if (v39 != 201)
        {
          if (v39 == 250)
          {
            if (IMOSLoggingEnabled())
            {
              v53 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v22;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, " => Remote encryption credentials are invalid failure for messageID: %@", buf, 0xCu);
              }
            }

            [(MessageServiceSession *)v25 didReceiveError:40 forMessageID:v22 forceError:a16 account:v70];
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
            v83 = v22;
            _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, " => Pair encryption failure for messageID: %@", buf, 0xCu);
          }
        }

LABEL_76:
        [(MessageServiceSession *)v25 didReceiveError:26 forMessageID:v22 forceError:a16 account:v70];
        goto LABEL_137;
      }

      if (!v39)
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

      if (v39 != 120)
      {
        goto LABEL_127;
      }

      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = v22;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, " => OTR un-supported error for messageID: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v39 <= 502)
      {
        if (v39 == 400)
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v83 = v22;
              v84 = 2112;
              v85 = v74;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, " => Remote attachment download failure for messageID: %@, additionalInfo: %@", buf, 0x16u);
            }
          }

          if (v71 && [v69 isEqualToString:v79] && -[__CFString shouldDisplayAttachmentDownloadFailure](v71, "shouldDisplayAttachmentDownloadFailure"))
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

            [(MessageServiceSession *)v25 didReceiveError:37 forMessageID:v22 forceError:a16 account:v70];
          }

          goto LABEL_137;
        }

        if (v39 != 500)
        {
          if (v39 == 502)
          {
            if (IMOSLoggingEnabled())
            {
              v43 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v24;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, " => Receiver (%@) has blackholed our conversation; updating conversation accordingly.", buf, 0xCu);
              }
            }

            v44 = +[IMDMessageStore sharedInstance];
            v68 = [v44 chatForMessageGUID:v22];

            if (IMOSLoggingEnabled())
            {
              v45 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = [v68 chatIdentifier];
                *buf = 138412802;
                v83 = v46;
                v84 = 2112;
                v85 = v24;
                v86 = 2112;
                v87 = v23;
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
                v49 = [v48 hasActivePhoneAccount];

                v50 = +[IMMetricsCollector sharedInstance];
                v51 = v50;
                if (v49)
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
              [(MessageServiceSession *)v25 didReceiveError:43 forMessageID:v22 forceError:1 account:v70];
            }

            else
            {
              [(MessageServiceSession *)v25 didReceiveError:1 forMessageID:v22 forceError:a16 account:v70];
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
          [(MessageServiceSession *)v25 didReceiveError:1 forMessageID:v22 forceError:a16 account:v70];
          if (IMOSLoggingEnabled())
          {
            v62 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v83) = v39;
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
            v83 = v22;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, " => Empty message for message ID: %@", buf, 0xCu);
          }

LABEL_126:

          goto LABEL_137;
        }

        goto LABEL_137;
      }

      if (v39 == 503)
      {
        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = v22;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Sent messageID %@ was junked", buf, 0xCu);
          }

          goto LABEL_126;
        }

LABEL_137:
        v64 = [v81 account];
        [(MessageServiceSession *)v25 sendDeliveryReceiptForMessageID:v22 toID:v79 deliveryContext:v78 needsDeliveryReceipt:v77 callerID:v23 account:v64];

        if (v30)
        {
          v65 = [v81 account];
          v66 = [(MessageServiceSession *)v25 idsServiceForIDSAccount:v65];
          [(MessageServiceSession *)v25 noteItemProcessed:(v73 >> 1) & 1 batchContext:v76 usingService:v66];
        }

        goto LABEL_140;
      }

      if (v39 != 600)
      {
        if (v39 != 601)
        {
          goto LABEL_127;
        }

        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v83 = v22;
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
          v83 = v22;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, " => Remote identity encryption failure for messageID: %@", buf, 0xCu);
        }
      }
    }

    [(MessageServiceSession *)v25 didReceiveError:27 forMessageID:v22 forceError:a16 account:v70];
    goto LABEL_137;
  }

LABEL_140:
}

- (void)handler:(id)a3 messageIDDelivered:(id)a4 toIdentifier:(id)a5 status:(id)a6 deliveryContext:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v43 = a3;
  v18 = a4;
  v42 = a5;
  v19 = a6;
  v45 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = v18;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Received delivery receipt control message for message: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = v45;
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
      v59 = v21;
      v60 = 2112;
      if (!v22)
      {
        v29 = @"NO";
      }

      v61 = v29;
      v62 = 2112;
      v63 = v23;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
    }
  }

  v41 = v19;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_D0A4;
  v46[3] = &unk_112018;
  v46[4] = self;
  v47 = v19;
  v48 = v18;
  v49 = v43;
  v50 = v24;
  v51 = v45;
  v52 = v20;
  v53 = v42;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v25;
  v40 = v25;
  v39 = v23;
  v38 = v22;
  v37 = v21;
  v30 = v42;
  v31 = v20;
  v32 = v45;
  v33 = v24;
  v34 = v43;
  v35 = v18;
  v36 = v41;
  [(MessageServiceSession *)self _enqueueBlock:v46 withTimeout:@"delivery receipt" description:45.0];
}

- (void)handler:(id)a3 messageIDReflectedDelivered:(id)a4 incomingMessage:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 status:(id)a8 deliveryContext:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15
{
  v44 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v24 = a13;
  v42 = a14;
  v43 = a15;
  v25 = [(MessageServiceSession *)self registeredURIs];
  if (!v25 && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "messageIDRead - No bindings !!", buf, 2u);
    }
  }

  v27 = [(MessageServiceSession *)self loginID];
  v28 = [v27 isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(v27) = [v23 isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([v25 containsObject:v23] | v28 | v27))
  {
    if ([v22 length])
    {
      v29 = [v22 _FTOptionallyDecompressData];
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
      v38 = [v37 chatForMessageGUID:v21];

      [(MessageServiceSession *)self _updateChatProperties:v38 withProperties:v30];
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_DD84;
    v48[3] = &unk_112040;
    v49 = v21;
    v50 = v24;
    v51 = v46;
    v52 = v47;
    v53 = self;
    v54 = v45;
    v55 = v44;
    v56 = v23;
    [(MessageServiceSession *)self _enqueueBlock:v48 withTimeout:@"reflected delivery receipt" description:45.0];
  }
}

- (void)handler:(id)a3 messageIDRead:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v36 = a3;
  v19 = a4;
  v20 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v21 = a9;
  v41 = a10;
  v22 = a11;
  v23 = a12;
  v40 = a13;
  v24 = self;
  v25 = [(MessageServiceSession *)self registeredURIs];
  if (!v25 && IMOSLoggingEnabled())
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
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v21;
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
      *&buf[4] = v21;
      *&buf[12] = 2112;
      if (!v41)
      {
        v29 = @"NO";
      }

      *&buf[14] = v29;
      *&buf[22] = 2112;
      v57 = v22;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
    }
  }

  v30 = [(MessageServiceSession *)self loginID];
  v31 = [v30 isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(v30) = [v20 isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([v25 containsObject:v20] | v31 | v30))
  {
    v32 = [v23 unsignedIntValue];
    v33 = [v23 unsignedIntValue];
    v34 = v32 & 1;
    if ((v33 & 2) != 0)
    {
      [(MessageServiceSession *)v24 noteLastItemFromStorage:v19];
    }

    else if (v32)
    {
      [(MessageServiceSession *)v24 noteItemFromStorage:v19];
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

    if (v33 & 2 | v34)
    {
      [(MessageServiceSession *)v24 incrementPendingReadReceiptFromStorageCount];
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
    v55 = (v33 & 2) >> 1;
    v42[4] = v24;
    v43 = v37;
    v44 = v20;
    v45 = v19;
    v46 = v38;
    v47 = v39;
    v48 = v21;
    v49 = v22;
    v50 = v41;
    v51 = v36;
    v52 = v40;
    v53 = buf;
    [(MessageServiceSession *)v24 _enqueueBlock:v42 withTimeout:@"reflected read receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (void)handler:(id)a3 updateAttachments:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13 fileTransferUpdates:(id)a14
{
  v16 = a4;
  v17 = a6;
  v18 = a14;
  v19 = +[IMFeatureFlags sharedFeatureFlags];
  v20 = [v19 isLQMHQEnabled];

  if (v20 && (+[IMDAttachmentUtilities isNetworkLowDataMode]& 1) == 0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_EAFC;
    v21[3] = &unk_112108;
    v22 = v16;
    v23 = v17;
    v24 = self;
    v25 = v18;
    [(MessageServiceSession *)self _enqueueBlock:v21 withTimeout:@"update attachments" description:240.0];
  }
}

- (void)handler:(id)a3 messageIDPlayed:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v37 = a3;
  v19 = a4;
  v20 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v42 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = self;
  v25 = self;
  v26 = v19;
  v27 = [(MessageServiceSession *)v25 registeredURIs];
  if (!v27 && IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "messageIDPlayed - No bindings !!", buf, 2u);
    }
  }

  v29 = [(MessageServiceSession *)v24 loginID];
  v30 = [v29 isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(v29) = [v20 isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([v27 containsObject:v20] | v30 | v29))
  {
    v31 = [v22 unsignedIntValue];
    v32 = [v22 unsignedIntValue];
    v33 = v31 & 1;
    if ((v32 & 2) != 0)
    {
      [(MessageServiceSession *)v24 noteLastItemFromStorage:v26];
    }

    else if (v31)
    {
      [(MessageServiceSession *)v24 noteItemFromStorage:v26];
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
        *&buf[4] = v41;
        *&buf[12] = 2112;
        if (!v42)
        {
          v36 = @"NO";
        }

        *&buf[14] = v36;
        *&buf[22] = 2112;
        v59 = v21;
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
    v44 = v38;
    v45 = v20;
    v46 = v26;
    v47 = v39;
    v48 = v24;
    v49 = v40;
    v50 = v41;
    v51 = v21;
    v52 = v42;
    v53 = v37;
    v56 = v33;
    v57 = (v32 & 2) >> 1;
    v54 = v23;
    v55 = buf;
    [(MessageServiceSession *)v24 _enqueueBlock:v43 withTimeout:@"reflected played receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (void)handler:(id)a3 messageIDSaved:(id)a4 ofType:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 groupContext:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15
{
  v36 = a3;
  v43 = a4;
  v37 = a5;
  v21 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = [(MessageServiceSession *)self registeredURIs];
  if (!v26 && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "messageIDSaved - No bindings !!", buf, 2u);
    }
  }

  v28 = [(MessageServiceSession *)self loginID];
  v29 = [v28 isEqualToIgnoringCase:@"e:___TESTACCOUNT___@___TESTACCOUNT___.com"];

  LODWORD(v28) = [v21 isEqualToIgnoringCase:IDSDefaultPairedDevice];
  if (([v26 containsObject:v21] | v29 | v28))
  {
    v30 = [v24 unsignedIntValue];
    v31 = [v24 unsignedIntValue];
    v35 = v30 & 1;
    if ((v31 & 2) != 0)
    {
      [(MessageServiceSession *)self noteLastItemFromStorage:v43];
    }

    else if (v30)
    {
      [(MessageServiceSession *)self noteItemFromStorage:v43];
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
        *&buf[4] = v42;
        *&buf[12] = 2112;
        if (!v22)
        {
          v34 = @"NO";
        }

        *&buf[14] = v34;
        *&buf[22] = 2112;
        v62 = v23;
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
    v45 = v38;
    v46 = v21;
    v47 = v43;
    v48 = v40;
    v49 = self;
    v50 = v39;
    v51 = v37;
    v52 = v41;
    v53 = v36;
    v54 = v42;
    v55 = v23;
    v56 = v22;
    v59 = v35;
    v60 = (v31 & 2) >> 1;
    v57 = v25;
    v58 = buf;
    [(MessageServiceSession *)self _enqueueBlock:v44 withTimeout:@"reflected saved receipt" description:45.0];

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_isAllowlistedUnencryptedSender:(id)a3
{
  v3 = a3;
  if (IMStringIsEmail() && (([v3 hasSuffix:@".apple.com"] & 1) != 0 || objc_msgSend(v3, "hasSuffix:", @"@apple.com")))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
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

- (BOOL)_shouldIgnoreMessageFromSender:(id)a3 balloonBID:(id)a4 fromMe:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = (![v7 length] || !a5) && (!objc_msgSend(v7, "length") || (IMStringIsBusinessID() & 1) == 0 && objc_msgSend(v8, "containsString:", IMBalloonPluginIdentifierBusiness));

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

- (BOOL)_isRegisteredURI:(id)a3
{
  v3 = a3;
  if (v3)
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
          v8 = [v7 im_registeredURIs];
          v9 = [v8 countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (v9)
          {
            v10 = *v24;
            while (2)
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(v8);
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

                v14 = [v3 _stripFZIDPrefix];
                v15 = [v12 isEqualToIgnoringCase:v14];

                if (v15)
                {

                  v17 = 1;
                  goto LABEL_27;
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v23 objects:v35 count:16];
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
        v32 = v3;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "URI %@ is not in registered URI set", buf, 0xCu);
      }
    }
  }

  v17 = 0;
LABEL_27:

  return v17;
}

- (BOOL)_isFromLinkedID:(id)a3 fromID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Checking isFromLinkedID toID %@ and fromID %@", &v11, 0x16u);
    }
  }

  v9 = 0;
  if (v6 && v7)
  {
    if ([(MessageServiceSession *)self _isRegisteredURI:v6])
    {
      v9 = [(MessageServiceSession *)self _isRegisteredURI:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)_computeFlagsForIncomingMessage:(unint64_t)a3 isFromMe:(BOOL)a4 unfinished:(BOOL)a5 isAudioMessage:(BOOL)a6 isAutoReply:(BOOL)a7 isExpirable:(BOOL)a8 isGroupTypingMessage:(BOOL)a9 messageSource:(unint64_t)a10 participants:(id)a11 hasUnseenMention:(BOOL)a12 isSOS:(BOOL)a13 isCritical:(BOOL)a14
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  if (a4)
  {
    v19 = [a11 count];
    v20 = 32772;
    if (v19 < 3)
    {
      v20 = 36868;
    }

    a3 |= v20;
  }

  v21 = a3 | !v17;
  if (v16)
  {
    v21 |= 0x200000uLL;
  }

  if (v15)
  {
    v21 |= 0x40uLL;
  }

  if (v14)
  {
    v21 |= 0x1000000uLL;
  }

  if (a9)
  {
    v21 |= 0x40000000uLL;
  }

  if (a10 == 1)
  {
    v21 |= 0x2000000uLL;
  }

  if (a12)
  {
    v21 |= 0x10000000uLL;
  }

  if (a13)
  {
    v21 |= 0x8000000000uLL;
  }

  if (a14)
  {
    return v21 | 0x4000000000;
  }

  else
  {
    return v21;
  }
}

- (BOOL)_originalTimestampWithinAcceptableWindow:(id)a3 timestamp:(id)a4
{
  v6 = a4;
  v7 = [NSDate __im_iMessageDateFromTimeStamp:a3];
  v8 = [NSDate __im_iMessageDateFromTimeStamp:v6];

  v9 = [v7 compare:v8];
  [(MessageServiceSession *)self _messageRetryTimeout];
  v10 = [v7 dateByAddingTimeInterval:?];
  v11 = v9 & [v8 compare:v10];

  return v11 == -1;
}

- (BOOL)_amIMentioned:(id)a3 inMentions:(id)a4
{
  v5 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@"|", v18}];
        if ([v11 count] >= 2)
        {
          v12 = [v11 objectAtIndexedSubscript:1];
          v13 = [v12 stringByRemovingURLEscapes];

          v14 = [v5 _stripFZIDPrefix];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {

            v16 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)handler:(id)a3 incomingMessage:(id)a4 originalEncryptionType:(id)a5 messageID:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 incomingEngroup:(id)a12 needsDeliveryReceipt:(id)a13 deliveryContext:(id)a14 storageContext:(id)a15 batchContext:(id)a16 messageContext:(id)a17 isBeingReplayed:(BOOL)a18 mergeID:(id)a19 wantsCheckpointing:(BOOL)a20 isSnapTrustedUser:(BOOL)a21
{
  v91 = a3;
  v92 = a4;
  v89 = a5;
  v95 = a6;
  v93 = a7;
  v94 = a8;
  v83 = a9;
  v27 = self;
  v81 = a10;
  v84 = a11;
  v80 = a12;
  v85 = a13;
  v86 = a14;
  v90 = a15;
  v82 = a16;
  v87 = a17;
  v88 = a19;
  v28 = +[IMDefaults sharedInstance];
  if (([v28 getBoolFromDomain:@"com.apple.madrid" forKey:@"FailToDecryptMessages"] & 1) == 0)
  {

LABEL_14:
    v34 = +[IMMessageNotificationTimeManager sharedInstance];
    [v34 acquireAssertionToUnsuspendProcess];

    kdebug_trace();
    [(MessageServiceSession *)self _logLocalInfo];
    v76 = sub_3662C();
    v77 = [v94 isEqualToString:v93];
    v35 = ([v90 unsignedIntValue] | a18) & 1;
    v36 = [v90 unsignedIntValue];
    v78 = v35;
    if ((v36 & 2) != 0)
    {
      [(MessageServiceSession *)self noteLastItemFromStorage:v95];
      v37 = v89;
    }

    else
    {
      v37 = v89;
      if (v35)
      {
        [(MessageServiceSession *)self noteItemFromStorage:v95];
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
      v40 = [v94 _stripFZIDPrefix];
      v41 = [v93 _stripFZIDPrefix];
      v38(7, @"iMessageReceived", [NSDictionary dictionaryWithObjectsAndKeys:v39, @"IsTypingIndicator", v95, @"MessageGUID", v40, @"Source", v41, @"Target", 0], 0);
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
        if (a18)
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        *buf = 134220802;
        v137 = v92;
        v138 = 2112;
        v139 = v95;
        v140 = 2112;
        v141 = v94;
        v142 = 2112;
        v143 = v93;
        v144 = 2048;
        v145 = v87;
        v146 = 2112;
        v147 = v43;
        v148 = 2048;
        v149 = v45;
        v150 = 2112;
        v151 = v85;
        v152 = 2112;
        v153 = v86;
        v154 = 2112;
        v155 = v84;
        v156 = 2112;
        v157 = v46;
        v158 = 2112;
        v159 = v88;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Incoming message data: %p ID: %@  from: %@   to: %@  context: %p  (from me: %@) at time: %f, needsDeliveryReceipt: %@, deliveryContext: %@, fromIDSID %@ isBeingReplayed %@ MergeID:%@", buf, 0x7Au);
      }
    }

    v47 = im_checkpointIDSService();
    im_sendMessageCheckpointIfNecessary();

    v48 = +[IMLockdownManager sharedInstance];
    v49 = [v48 isInternalInstall];

    if (!v49)
    {
      goto LABEL_76;
    }

    v50 = +[IMDefaults sharedInstance];
    v51 = [v50 getValueFromDomain:@"com.apple.madrid" forKey:@"numMessagesToDrop"];
    v52 = [v51 integerValue];

    v53 = v52 - 1;
    if (v52 >= 1)
    {
      v54 = +[IMDefaults sharedInstance];
      v55 = [NSNumber numberWithInteger:v52 - 1];
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
          v137 = v92;
          v138 = 2112;
          v139 = v59;
          _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "Decrypted data %@  isEncrypted? %@", buf, 0x16u);
        }
      }

      if (v92 || !v79)
      {
        v74 = +[NSDate date];
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v137 = v81;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "Timestamp: %@ before calling receive message data", buf, 0xCu);
          }
        }

        v65 = [(MessageServiceSession *)self groupController];
        v66 = [v91 account];
        v67 = [(MessageServiceSession *)self imdAccountForIDSAccount:v66];
        v75 = [v91 service];
        v68 = v27;
        if ((v36 & 2) != 0)
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
        v97 = v94;
        v113 = v77;
        v98 = v81;
        v99 = v27;
        v100 = v93;
        v114 = v78;
        v115 = (v36 & 2) >> 1;
        v101 = v82;
        v102 = v91;
        v112 = &v121;
        v103 = v95;
        v104 = v87;
        v116 = v79;
        v105 = v83;
        v117 = a21;
        v106 = v92;
        v118 = v76;
        v63 = v74;
        v107 = v63;
        v119 = a20;
        v108 = v84;
        v109 = v88;
        v120 = a18;
        v110 = v85;
        v111 = v86;
        LOBYTE(v72) = v73;
        [v65 receiveMessageData:v106 account:v67 session:v68 toIdentifier:v100 fromIdentifier:v97 incomingEngroup:v80 service:v75 timestamp:v98 fromStorage:v72 completionBlock:v96];

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
        v61 = [v91 account];
        v62 = [(MessageServiceSession *)self idsServiceForIDSAccount:v61];
        [(MessageServiceSession *)self noteItemProcessed:(v36 & 2) != 0 batchContext:v82 usingService:v62];
      }
    }

    v63 = v122[5];
    v122[5] = 0;
LABEL_64:

    _Block_object_dispose(&v121, 8);
    goto LABEL_65;
  }

  v29 = +[IMLockdownManager sharedInstance];
  v30 = [v29 isInternalInstall];

  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = IMOSLoggingEnabled();
  if (v92)
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
    v131 = self;
    v132 = v83;
    v133 = v94;
    v134 = v93;
    v135 = v95;
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

- (void)handler:(id)a3 nicknameInfoReceived:(id)a4 userInfo:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14
{
  v40 = a3;
  v39 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v35 = a14;
  v26 = [(MessageServiceSession *)self registeredURIs];
  if (!v26 && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "nicknameInfoReceived - No bindings !!", buf, 2u);
    }
  }

  if ([v26 containsObject:v21])
  {
    v28 = [v39 _FTOptionallyDecompressData];
    JWDecodeDictionary();
    v34 = v25;
    v29 = v24;
    v31 = v30 = v23;

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_194FC;
    v41[3] = &unk_112108;
    v41[4] = self;
    v42 = v31;
    v43 = v22;
    v44 = v20;
    v32 = v31;
    v23 = v30;
    v24 = v29;
    v25 = v34;
    v33 = v32;
    [(MessageServiceSession *)self _enqueueBlock:v41 withTimeout:@"nickname received block" description:45.0];
  }
}

- (void)handler:(id)a3 locationShareInfo:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v34 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v36 = a7;
  v35 = a8;
  v22 = self;
  v37 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v21;
  v27 = a13;
  v28 = [(MessageServiceSession *)v22 registeredURIs];
  if (!v28 && IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([v28 containsObject:v20])
  {
    [(MessageServiceSession *)v22 _logLocalInfo];
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v39 = v19;
        v40 = 2112;
        v41 = v26;
        v42 = 2112;
        v43 = v36;
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
        v39 = v37;
        v40 = 2112;
        if (!v23)
        {
          v32 = @"NO";
        }

        v41 = v32;
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    v33 = +[IMDLocationSharingController sharedInstance];
    [v33 receivedIncomingLocationSharePacket:v19];
  }
}

- (void)handler:(id)a3 genericNotification:(id)a4 incomingMessage:(id)a5 userInfo:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15
{
  v61 = a3;
  v21 = a4;
  v22 = a5;
  v68 = a6;
  v23 = a7;
  v70 = a8;
  v69 = a9;
  v62 = a10;
  v67 = a11;
  v24 = self;
  v65 = a12;
  v66 = a13;
  v63 = a14;
  v64 = a15;
  v25 = [(MessageServiceSession *)self registeredURIs];
  if (!v25 && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([v25 containsObject:v23])
  {
    [(MessageServiceSession *)self _logLocalInfo];
    if (!v21)
    {
      v21 = v68;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v72 = v21;
        v73 = 2112;
        v74 = v70;
        v75 = 2112;
        v76 = v69;
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
        v72 = v67;
        v73 = 2112;
        if (!v65)
        {
          v29 = @"NO";
        }

        v74 = v29;
        v75 = 2112;
        v76 = v66;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "fromIDSID:%@, needsDeliveryReceipt %@, deliveryContext %@", buf, 0x20u);
      }
    }

    theDict = objc_alloc_init(NSMutableDictionary);
    v30 = [(__CFString *)v70 _stripFZIDPrefix];
    if (v30)
    {
      CFDictionarySetValue(theDict, kFZPersonID, v30);
    }

    v31 = [v21 objectForKey:@"c"];
    v60 = [v21 objectForKey:@"p"];
    if ([v22 length])
    {
      v32 = [v22 _FTOptionallyDecompressData];
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
      v33 = v21;
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

    v42 = [v31 intValue];
    switch(v42)
    {
      case 0x11170u:
        v52 = [(MessageServiceSession *)v24 deliveryController];
        v53 = [v52 idsDeviceFromPushToken:v69];

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
          [v55 handleNicknameUpdatesFromPeerDevice:v60 fromPeerDevice:v67];
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

        v50 = [(MessageServiceSession *)v24 deliveryController];
        v51 = [v50 idsDeviceFromPushToken:v69];

        if (v51)
        {
          [(MessageServiceSession *)v24 _checkGlobalReadReceiptValueAndUpdateIfNeeded:v60];
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

        v44 = [(MessageServiceSession *)v24 deliveryController];
        v45 = [v44 idsDeviceFromPushToken:v69];

        v46 = [v33 objectForKey:@"cID"];
        v47 = +[IMDChatRegistry sharedInstance];
        v48 = [v47 existingChatWithGUID:v46];

        if (v45 && v48)
        {
          [(MessageServiceSession *)v24 _updateChatProperties:v48 withProperties:v60];
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

  v33 = v21;
LABEL_92:
}

- (void)_handleDeleteCommandWithMessageDictionary:(id)a3
{
  v59 = a3;
  v4 = +[IMDRelayServiceController sharedInstance];
  v5 = [v4 deletionController];
  v64 = [v5 deleteChatsForCommandDictionary:v59];

  [v59 objectForKeyedSubscript:@"chat-clear"];
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
              v16 = [(MessageServiceSession *)self chatRegistry];
              v17 = [v16 existingChatWithGUID:v15];

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
          v18 = [(MessageServiceSession *)self chatRegistry];
          v19 = [v8 objectForKeyedSubscript:v60];
          v20 = [v18 existingChatsWithGroupID:v19];

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
                v28 = [v27 chatIdentifier];
                [v21 addObject:v28];

                v29 = [v27 serviceName];
                [v22 addObject:v29];

                v30 = [v27 style];
              }

              v31 = v30;
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
          v36 = [(MessageServiceSession *)self broadcasterForChatListeners];
          [v36 historicalMessageGUIDsDeleted:v34 chatGUIDs:0 queryID:0];

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

  v38 = [v59 objectForKeyedSubscript:IMDDeleteCommandMessageGUIDArrayKey];
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
    v42 = [v41 deletionController];
    v43 = [v42 deleteMessagesForCommandDictionary:v59];

    v64 |= v43;
  }

  v44 = [v59 objectForKeyedSubscript:IMDDeleteCommandMessagePartMetadataArrayKey];
  if (![v44 count])
  {
    if ((v64 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v45 = +[IMDRelayServiceController sharedInstance];
  v46 = [v45 deletionController];
  v47 = [v46 deleteMessagePartsForCommandDictionary:v59];

  if ((v64 | v47))
  {
LABEL_44:
    v48 = +[IMDMessageStore sharedInstance];
    [v48 rebuildUnreadMessageCount];
  }

LABEL_45:
  v49 = [v59 objectForKeyedSubscript:@"KeepMessages"];
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

- (void)handler:(id)a3 deleteCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v42 = a3;
  v50 = a4;
  v43 = a5;
  v44 = a6;
  v19 = a7;
  v20 = a8;
  v49 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  v48 = a13;
  v21 = self;
  v22 = [(MessageServiceSession *)self deliveryController];
  v23 = [v22 idsDeviceFromPushToken:v19];

  if (v23 || (-[MessageServiceSession deliveryController](self, "deliveryController"), v24 = objc_claimAutoreleasedReturnValue(), [v24 idsDeviceForFromID:v49], v23 = objc_claimAutoreleasedReturnValue(), v24, v23))
  {
    v25 = [v50 _FTOptionallyDecompressData];
    v26 = JWDecodeDictionary();

    v27 = [v23 isActive];
    v28 = [v26 objectForKey:@"chat"];
    v29 = [v28 objectAtIndex:0];
    v30 = [v29 objectForKey:IMDChatWasReportedAsJunkKey];
    v31 = [v30 BOOLValue];

    v32 = [v26 objectForKey:IMDDeleteCommandIsScheduledMessageKey];
    v33 = [v32 BOOLValue];

    v34 = [(MessageServiceSession *)v21 ckUtilities];
    v35 = [v34 cloudKitSyncingEnabled];

    v36 = IMOSLoggingEnabled();
    if (((v27 | v35 | v31) | v33))
    {
      if (v36)
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138413314;
          v54 = v26;
          v55 = 1024;
          *v56 = v35 & 1;
          *&v56[4] = 1024;
          *&v56[6] = v31;
          v57 = 1024;
          v58 = v27;
          v59 = 1024;
          v60 = v33;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Handling delete command: %@ (cloudkitSyncEnabled: %d, wasReportedAsJunk: %d, senderIsPairedWatch: %d, isScheduledMessage: %d)", buf, 0x24u);
        }
      }

      if ([(MessageServiceSession *)v21 shouldInferRecoverableDeleteForCommandDictionary:v26])
      {
        v38 = [NSDate __im_iMessageDateFromTimeStamp:v20];
        v39 = [(MessageServiceSession *)v21 deleteCommandDictionaryWithIncomingDictionary:v26 inferredRecoverableDeleteForLegacyCommandsWithDate:v38];

        v26 = v39;
      }

      [(MessageServiceSession *)v21 _logLocalInfo];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1B190;
      v51[3] = &unk_1123E0;
      v51[4] = v21;
      v26 = v26;
      v52 = v26;
      [(MessageServiceSession *)v21 _enqueueBlock:v51 withTimeout:@"deleteCommand block" description:45.0];
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
      v54 = v19;
      v55 = 2112;
      *v56 = v49;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Received a delete command, but it was not from one of our own devices From: %@, ID:%@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)a3 recoverCommand:(id)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 fromToken:(id)a7 timeStamp:(id)a8 fromIDSID:(id)a9 needsDeliveryReceipt:(id)a10 deliveryContext:(id)a11 storageContext:(id)a12 batchContext:(id)a13
{
  v36 = a3;
  v19 = a4;
  v37 = a5;
  v38 = a6;
  v20 = a7;
  v39 = a8;
  v21 = self;
  v22 = a9;
  v40 = a10;
  v41 = a11;
  v23 = a12;
  v24 = a13;
  v25 = [(MessageServiceSession *)self deliveryController];
  v26 = [v25 idsDeviceFromPushToken:v20];

  if (v26 || (-[MessageServiceSession deliveryController](self, "deliveryController"), v27 = objc_claimAutoreleasedReturnValue(), [v27 idsDeviceForFromID:v22], v26 = objc_claimAutoreleasedReturnValue(), v27, v26))
  {
    v28 = [v19 _FTOptionallyDecompressData];
    v29 = JWDecodeDictionary();

    v30 = [(MessageServiceSession *)v21 ckUtilities];
    v31 = [v30 cloudKitSyncingEnabled];

    v32 = IMOSLoggingEnabled();
    if (v31)
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

      [(MessageServiceSession *)v21 _logLocalInfo];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1B5B0;
      v42[3] = &unk_1123E0;
      v42[4] = v21;
      v43 = v29;
      [(MessageServiceSession *)v21 _enqueueBlock:v42 withTimeout:@"recoverCommand block" description:45.0];
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
      v45 = v20;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Received a recover command, but it was not from one of our own devices From: %@, ID:%@", buf, 0x16u);
    }
  }
}

- (void)handler:(id)a3 groupMessageCommand:(id)a4 encryptedGroupCommand:(id)a5 messageID:(id)a6 toIdentifier:(id)a7 fromIdentifier:(id)a8 fromToken:(id)a9 timeStamp:(id)a10 fromIDSID:(id)a11 needsDeliveryReceipt:(id)a12 deliveryContext:(id)a13 storageContext:(id)a14 batchContext:(id)a15
{
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v21 = a6;
  v22 = a7;
  v35 = a8;
  v34 = a9;
  v33 = a10;
  v32 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v31 = a15;
  v26 = [(MessageServiceSession *)self registeredURIs];
  if (!v26 && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "genericNotification - No bindings !!", buf, 2u);
    }
  }

  if ([v26 containsObject:{v22, a13}])
  {
    [(MessageServiceSession *)self _logLocalInfo];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1B938;
    v36[3] = &unk_112408;
    v37 = v29;
    v38 = v35;
    v39 = v34;
    v40 = v32;
    v41 = v23;
    v42 = v24;
    v43 = v28;
    v44 = self;
    v45 = v30;
    v46 = v21;
    v47 = v22;
    v48 = v33;
    v49 = v25;
    v50 = v31;
    [(MessageServiceSession *)self _enqueueBlock:v36 withTimeout:@"groupMessageCommand block" description:45.0];
  }
}

- (void)handler:(id)a3 bubblePayloadData:(id)a4 forMessageID:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 fromToken:(id)a8 timeStamp:(id)a9 fromIDSID:(id)a10 needsDeliveryReceipt:(id)a11 deliveryContext:(id)a12 storageContext:(id)a13 batchContext:(id)a14
{
  v39 = a3;
  v20 = a4;
  v42 = a5;
  v21 = a6;
  v40 = a7;
  v41 = a8;
  v33 = a9;
  v22 = self;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v23 = a14;
  v24 = [(MessageServiceSession *)self registeredURIs];
  if (!v24 && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "bubblePayload - No bindings !!", buf, 2u);
    }
  }

  if ([v24 containsObject:{v21, v33}])
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
        [(MessageServiceSession *)v22 _logLocalInfo];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1C1B8;
        v43[3] = &unk_112040;
        v44 = v42;
        v45 = v27;
        v46 = v22;
        v47 = v39;
        v48 = v28;
        v49 = v30;
        v50 = v40;
        v51 = v41;
        [(MessageServiceSession *)v22 _enqueueBlock:v43 withTimeout:@"bubble payload block" description:45.0];
      }

      else if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v42;
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

- (void)handler:(id)a3 remoteFileResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Incomming Remote File response %@", &v10, 0xCu);
    }
  }

  v9 = [(MessageServiceSession *)self attachmentController];
  [v9 remoteFileResponse:v7];
}

- (void)handler:(id)a3 remoteFileRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " Incomming Remote File Request %@", &v10, 0xCu);
    }
  }

  v9 = [(MessageServiceSession *)self attachmentController];
  [v9 remotefileRequest:v7 attempts:0 shouldRetry:1];
}

- (void)networkMonitorDidUpdate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v8 networkMonitorDidUpdate:v4];
  if ([v4 immediatelyReachable])
  {
    v5 = +[IMTransferServicesController sharedInstance];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = +[IMTransferServicesController sharedInstance];
      [v7 updateUltraConstrainedAttachments:{objc_msgSend(v4, "attachmentPolicy") == &dword_0 + 2}];
    }
  }
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)a3
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

- (void)_relayLegacySatelliteMessage:(id)a3 toChat:(id)a4 localWatchOnly:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v36 = 0;
  v32 = v9;
  v11 = _LastAddressedURIForChatLogMetricIfNeeded(v9, 0, self, &v36, 0);
  v30 = v36;
  if (v11)
  {
    [v10 addObject:v11];
  }

  if (!a5)
  {
    v12 = [v9 participants];
    v13 = URIsFromHandles(v12);

    [v10 addObjectsFromArray:v13];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1D228;
  v33[3] = &unk_112498;
  v35 = a5;
  v14 = v8;
  v34 = v14;
  v29 = objc_retainBlock(v33);
  v15 = [(MessageServiceSession *)self deliveryController];
  v16 = [v32 guid];
  v31 = [v15 messageDictionaryWithMessageItem:v14 isBusiness:0 chatIdentifier:v16 toParticipants:v10 originallyToParticipants:v10 additionalContext:0 msgPayloadUploadDictionary:0 originalPayload:0];

  v17 = +[NSString stringGUID];
  v18 = IDSGetUUIDData();
  v19 = [(MessageServiceSession *)self deliveryController];
  v20 = [v32 guid];
  v21 = [NSSet setWithObject:IDSRegistrationPropertySupportsSenderKey];
  LOWORD(v28) = 0;
  v22 = [v19 idsOptionsWithMessageItem:v14 toID:0 fromID:v11 sendGUIDData:v18 alternateCallbackID:v17 isBusinessMessage:0 chatIdentifier:v20 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:v21 deliveryContext:0 isGroupChat:v28 canInlineAttachments:0 msgPayloadUploadDictionary:v31 messageDictionary:?];

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v14 guid];
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Sending message for relay: %@", buf, 0xCu);
    }
  }

  v25 = [(MessageServiceSession *)self deliveryController];
  v26 = [NSSet setWithArray:v10];
  LOBYTE(v27) = 1;
  [v25 sendMessageDictionary:&__NSDictionary0__struct encryptDictionary:0 fromID:v11 fromAccount:v30 toURIs:v26 toGroup:0 priority:300 options:v22 willSendBlock:0 callCompletionOnSuccess:v27 completionBlock:v29];
}

- (void)messageDeliveryController:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
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
      v34 = v11;
      v35 = 2112;
      v36 = v12;
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
        v32 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not reattempting delivery of messageGUID %@, this is a replicating session", buf, 0xCu);
      }

LABEL_6:
    }
  }

  else
  {
    v15 = +[NSDate date];
    v16 = [(MessageServiceSession *)self lastCacheFlushDate];
    [v15 timeIntervalSinceDate:v16];
    v18 = v17;

    v19 = [(MessageServiceSession *)self lastCacheFlushDate];
    if (!v19 || ([(MessageServiceSession *)self _messageRetryTimeout], v21 = v20, v19, v18 > v21))
    {
      [(MessageServiceSession *)self _cacheMaintenanceForMessageGUIDsSeenInLastIDSCacheFlush];
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_BBD58(self, v22, v18);
      }
    }

    v23 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
    v24 = [v23 objectForKey:v13];
    v25 = v24 == 0;

    if (v25)
    {
      v27 = +[NSDate now];
      v28 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
      [v28 setObject:v27 forKey:v13];

      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_BBE70();
      }

      LOBYTE(v30) = 1;
      [(MessageServiceSession *)self _reAttemptMessageDeliveryForGUID:v13 toIdentifier:v12 fromIdentifier:v11 fromIDSID:0 isReflection:0 shouldShowError:0 cacheFlushError:v30 imdAccount:0];
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

- (void)messageDeliveryController:(id)a3 serverUpdatedTimestampMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 guid];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(MessageServiceSession *)self chatRegistry];
  v8 = [v7 chats];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 lastMessage];
        v15 = [v14 guid];
        v16 = [v15 isEqualToIgnoringCase:v6];

        if (v16)
        {
          [v13 setLastMessage:v5];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v4 = [(MessageServiceSession *)self lastCacheFlushDate];
  [v3 timeIntervalSinceDate:v4];
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
  v9 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [(MessageServiceSession *)self messageGUIDsSeenInLastIDSCacheFlush];
        v16 = [v15 objectForKey:v14];

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
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v10);
  }

  [(MessageServiceSession *)self setMessageGUIDsSeenInLastIDSCacheFlush:v8];
  v23 = +[NSDate now];
  [(MessageServiceSession *)self setLastCacheFlushDate:v23];
}

- (void)messageDeliveryController:(id)a3 didFlushCacheForKTPeerURI:(id)a4
{
  v4 = a4;
  v6 = +[IMDBroadcastController sharedProvider];
  v5 = [v6 broadcasterForKeyTransparencyListeners];
  [v5 refreshStatusForKTPeerURI:v4];
}

- (void)_forwardP2PGroupCommand:(id)a3 fromPerson:(id)a4 toPerson:(id)a5 toGroup:(id)a6 toToken:(id)a7 messageID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v50 = a6;
  v51 = a7;
  v17 = a8;
  if (v15 && v14 && v16)
  {
    v18 = [v16 _stripFZIDPrefix];

    v19 = [v15 _stripFZIDPrefix];

    v49 = [v19 _bestGuessURI];
    v20 = [(MessageServiceSession *)self idsAccountForFromURI:v49 toURI:v18];
    v21 = v20;
    if (v20)
    {
      v48 = v20;
    }

    else
    {
      v48 = [(MessageServiceSession *)self idsAccount];
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v56 = v14;
        v57 = 2112;
        v58 = v19;
        v59 = 2112;
        v60 = v18;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Request to forward P2P group command: %@  fromID: %@ to person: %@", buf, 0x20u);
      }
    }

    [(MessageServiceSession *)self _logLocalInfo];
    if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v48])
    {
      if ([(MessageServiceSession *)self isReplicating])
      {
        theDict = [(__CFDictionary *)v14 mutableCopy];
        v23 = [(MessageServiceSession *)self service];
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 replicationSourceID]);

        if (v24)
        {
          CFDictionarySetValue(theDict, @"rp", v24);
        }
      }

      else
      {
        theDict = v14;
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

      v27 = v18;
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
      v31 = [(MessageServiceSession *)self groupController];
      v32 = [v31 shouldCompressGroupPayload:theDict];

      if (v32)
      {
        v33 = [v30 _FTCopyGzippedData];

        v30 = v33;
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

      if (v17)
      {
        v37 = IDSGetUUIDData();
        [v34 setObject:v37 forKeyedSubscript:IDSSendMessageOptionUUIDKey];
      }

      v38 = [v27 _bestGuessURI];
      v39 = v38;
      if (v51)
      {
        v39 = [IDSDestination destinationWithAlias:v38 pushToken:v51];
      }

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v56 = v50;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Sending P2P command to engroup: %@", buf, 0xCu);
        }
      }

      v41 = [(MessageServiceSession *)self deliveryController];
      v42 = +[NSDictionary dictionary];
      v43 = [NSSet setWithObject:v39];
      v44 = [v34 copy];
      [v41 sendMessageDictionary:v42 fromID:v49 fromAccount:v48 toURIs:v43 toGroup:v50 priority:300 options:v44 completionBlock:&stru_1124B8];

      v14 = theDict;
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
    v18 = v16;
    v19 = v15;
  }
}

- (void)sendLocationSharingInfo:(id)a3 toID:(id)a4 completionBlock:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v23;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Request to send location sharing info: %@   to person: %@", buf, 0x16u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v11 = [(MessageServiceSession *)self callerURIUsingCalleeURI:v8];
  v12 = [(MessageServiceSession *)self idsAccountForFromURI:v11 toURI:v8];
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v12])
  {
    v22 = +[NSString stringGUID];
    v21 = [NSSet setWithObject:IDSRegistrationPropertySupportsLocationSharing];
    v13 = IDSGetUUIDData();
    v14 = [NSNumber numberWithInteger:195];
    v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v13, IDSSendMessageOptionUUIDKey, v14, IDSSendMessageOptionCommandKey, v21, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, 0];

    v16 = [(MessageServiceSession *)self deliveryController];
    v17 = [NSDictionary dictionaryWithObjectsAndKeys:v23, @"p", 0];
    v18 = [v8 _bestGuessURI];
    v19 = [NSSet setWithObject:v18];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1E940;
    v24[3] = &unk_1124E0;
    v25 = v8;
    v26 = v9;
    [v16 sendMessageDictionary:v17 fromID:v11 fromAccount:v12 toURIs:v19 toGroup:0 priority:300 options:v15 completionBlock:v24];
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

    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (id)idsServiceForIDSAccount:(id)a3
{
  v4 = a3;
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
      v10 = [v9 account];
      v11 = [v10 isEqual:v4];

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
      v18 = [v17 account];
      v19 = [v18 loginID];
      v20 = [v4 loginID];
      v21 = [v19 isEqual:v20];

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
    v22 = [v12 service];
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
    v22 = 0;
  }

  return v22;
}

- (void)_engroupForChat:(id)a3 idsAccount:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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

  v11 = [v8 engramID];
  v12 = [v11 length];

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
    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_21;
  }

  v13 = [(MessageServiceSession *)self idsServiceForIDSAccount:v9];
  if (v13)
  {
    v14 = [(MessageServiceSession *)self groupController];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1F050;
    v18[3] = &unk_112508;
    v19 = v8;
    v20 = v10;
    [v14 engroupForChat:v19 service:v13 completionBlock:v18];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Got a nil service back when trying to look up engroup for chat: %@", buf, 0xCu);
      }
    }

    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_21:
}

- (void)invitePersonInfo:(id)a3 withMessage:(id)a4 toChat:(id)a5 style:(unsigned __int8)a6
{
  v46 = a3;
  v45 = a4;
  v10 = a5;
  v67 = a6;
  val = self;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v71 = v46;
      v72 = 2112;
      v73 = v10;
      v74 = 1024;
      v75 = v67;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Request to invite person: %@   chat: %@  style: %c", buf, 0x1Cu);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v66 = v10;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v66 style:&v67];
  v51 = v66;

  v12 = v51;
  if (v51)
  {
    v13 = [(MessageServiceSession *)self chatForChatIdentifier:v51 style:v67 updatingAccount:1];
    v65 = 0;
    v49 = _LastAddressedURIForChatLogMetricIfNeeded(v13, 0, self, &v65, 0);
    v50 = v65;
    v44 = [(MessageServiceSession *)self idsServiceForIDSAccount:?];
    [(MessageServiceSession *)self _fixParticipantsForChat:v13];
    v14 = +[IMDFileTransferCenter sharedInstance];
    v15 = [v13 groupPhotoGuid];
    v16 = [v14 transferForGUID:v15];
    v43 = [v16 _dictionaryToSend];

    v42 = [v13 backgroundPropertiesForNewGroupParticipant];
    objc_initWeak(buf, self);
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v46 count]);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v46;
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
    v24 = [(MessageServiceSession *)val groupController];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1F828;
    v57[3] = &unk_112530;
    v41 = v17;
    v58 = v41;
    objc_copyWeak(&v60, buf);
    v59 = v13;
    v40 = v59;
    [v24 addParticipants:v48 toChat:v43 fromID:v42 fromAccount:v57 session:? service:? groupPhoto:? transcriptBackground:? completionBlock:?];

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
            [v33 setStyle:v67];
            v36 = [(MessageServiceSession *)val imdAccountForIDSAccount:v50];
            [v33 setAccount:v36];

            v37 = [v49 _stripFZIDPrefix];
            [v33 setDestinationCallerID:v37];

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

- (id)generateAndStoreAssetChangeStatusItemForChat:(id)a3 sender:(id)a4 fileTransferGuid:(id)a5 assetStatusChange:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v10 guid];
        v17 = [v13 isHidden];
        v18 = @"NO";
        *v57 = 138413058;
        *&v57[4] = v16;
        *&v57[12] = 2112;
        if (v17)
        {
          v18 = @"YES";
        }

        *&v57[14] = v11;
        v58 = 2112;
        v59 = v12;
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
        *&v57[4] = v10;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " => chat: %@", v57, 0xCu);
      }
    }

    v20 = [v10 lastAddressedLocalHandle];
    if ([v11 isEqualToString:v20])
    {
    }

    else
    {
      v23 = [(MessageServiceSession *)self account];
      v24 = [v23 loginID];
      v25 = [v24 _stripFZIDPrefix];
      v26 = [v11 isEqualToString:v25];

      if (!v26)
      {
LABEL_25:
        v28 = [v10 isFiltered];
        v29 = [v10 participants];
        LOBYTE(v28) = [(MessageServiceSession *)self shouldDisplayGroupNameAndPhotoWith:v28 handles:v29];

        if ((v28 & 1) == 0)
        {
          v30 = +[ChatAssetStatusChangeContext contextWithAssetChangeType:isHidden:hasSensitiveContent:](ChatAssetStatusChangeContext, "contextWithAssetChangeType:isHidden:hasSensitiveContent:", [v13 type], 1, objc_msgSend(v13, "hasSensitiveContent"));

          v13 = v30;
        }

        if ([v13 type] == 1)
        {
          if (v12)
          {
            v31 = v12;
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

        v36 = [(MessageServiceSession *)self messageStore];
        v37 = [v36 itemWithGUID:v35];

        if (!v37)
        {
          goto LABEL_44;
        }

        if ([v13 isHidden])
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
        v43 = [v41 initWithSender:v11 time:v42 guid:v39 type:3];

        v44 = [(MessageServiceSession *)self service];
        v45 = [v44 internalName];
        [v43 setService:v45];

        v46 = [(MessageServiceSession *)self account];
        v47 = [v46 accountID];
        [v43 setAccountID:v47];

        v48 = [(MessageServiceSession *)self account];
        v49 = [v48 loginID];
        [v43 setAccount:v49];

        v50 = [v10 chatIdentifier];
        [v43 setRoomName:v50];

        v51 = [v13 type];
        if (v12)
        {
          v52 = [v13 resolvedGroupActionType];
        }

        else if (v51)
        {
          v52 = &dword_4 + 2;
        }

        else
        {
          v52 = &dword_0 + 2;
        }

        [v43 setActionType:v52];
        v53 = [(MessageServiceSession *)self messageStore];
        v22 = [v53 storeItem:v43 forceReplace:0];

        v54 = [(MessageServiceSession *)self chatStore];
        v55 = [v22 guid];
        [v54 addMessageWithGUID:v55 toChat:v10];

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
        *&v57[4] = v11;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Setting sender to nil (myself) because sender %@ is the lastAddressedLocalHandle or the current account's login ID", v57, 0xCu);
      }
    }

    v11 = 0;
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

- (void)groupPhotoUploadCompletedForChat:(id)a3 fileTransferGuid:(id)a4 callerURI:(id)a5 fromAccount:(id)a6 message:(id)a7 displayIDs:(id)a8 additionalContext:(id)a9 success:(BOOL)a10 isPhotoRefresh:(BOOL)a11 error:(unsigned int)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v17 guid];
      v26 = v25;
      v27 = @"NO";
      *buf = 138413058;
      if (a10)
      {
        v27 = @"YES";
      }

      v38 = v25;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v27;
      v43 = 1024;
      v44 = a12;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "upload group photo complete. chatGuid %@ fileTransferGuid %@ success %@ error %u", buf, 0x26u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

  if (v17 && [v17 style] != 45)
  {
    if (a10)
    {
      v29 = +[IMDFileTransferCenter sharedInstance];
      v30 = [v29 transferForGUID:v18];

      v31 = +[NSDate date];
      [v30 setRefreshDate:v31];

      v32 = +[IMDAttachmentStore sharedInstance];
      v33 = [v21 guid];
      [v32 storeAttachment:v30 associateWithMessageWithGUID:v33];

      v34 = [(MessageServiceSession *)self groupController];
      v35 = [v30 _dictionaryToSend];
      [v34 setGroupPhoto:v35 forChat:v17 fromID:v19 fromAccount:v20 session:self isPhotoRefresh:a11];
    }

    else
    {
      [(MessageServiceSession *)self groupPhotoUploadFailedForChat:v17 fileTransferGuid:v18];
    }
  }
}

- (void)groupPhotoUploadFailedForChat:(id)a3 fileTransferGuid:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 guid];
      v22 = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "group photo %@ upload failed for chatGuid %@", &v22, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, " => chat: %@", &v22, 0xCu);
    }
  }

  v10 = [v5 groupPhotoGuid];
  v11 = [v10 isEqualToString:v6];

  if (v11)
  {
    v12 = [v5 groupPhotoUploadFailureCount];
    v13 = [v12 integerValue];

    v14 = v13 + 1;
    v15 = [NSNumber numberWithInteger:v13 + 1];
    [v5 updateGroupPhotoUploadFailureCount:v15];

    LOBYTE(v13) = v13 < IMGroupPhotoMaxUploadCount;
    v16 = IMOSLoggingEnabled();
    if (v13)
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
      [v18 setRecoverableErrorForTransfer:v6 error:27];
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
      [v21 failTransfer:v6 reason:27];
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

- (BOOL)shouldUploadGroupPhoto:(id)a3
{
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  v6 = [v5 totalBytes];
  if (v6 > 0x200000 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [v5 totalBytes];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "**Not** uploading group photo, too big. Size: %llu", &v9, 0xCu);
    }
  }

  return v6 <= 0x200000;
}

- (void)uploadGroupPhotoForChat:(id)a3 fileTransferGUID:(id)a4 itemGUID:(id)a5 callerURI:(id)a6 idsAccount:(id)a7 isPhotoRefresh:(BOOL)a8
{
  v38 = a3;
  v14 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v38 guid];
      *buf = 138413314;
      v51 = v16;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = v35;
      v56 = 2112;
      v57 = v36;
      v58 = 2112;
      v59 = v37;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "uploading group photo. chatGuid: %@ fileTransferGUID: %@ itemGUID: %@ callerURI: %@ idsAccount: %@", buf, 0x34u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v38;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

  v18 = [v38 participants];
  v19 = [v18 arrayByApplyingSelector:"ID"];

  v20 = [(MessageServiceSession *)self shouldUploadGroupPhoto:v14];
  if (((v14 != 0) & v20) == 1)
  {
    v21 = [IMMessageItem alloc];
    v22 = [(MessageServiceSession *)self account];
    v23 = [v22 loginID];
    v24 = +[NSDate date];
    v49 = v14;
    v25 = [NSArray arrayWithObjects:&v49 count:1];
    v26 = [v21 initWithSender:v23 time:v24 body:0 attributes:0 fileTransferGUIDs:v25 flags:5 error:0 guid:v35 threadIdentifier:0];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_20E90;
    v43[3] = &unk_112558;
    v43[4] = self;
    v27 = v38;
    v44 = v27;
    v28 = v14;
    v45 = v28;
    v46 = v36;
    v47 = v37;
    v48 = a8;
    v29 = objc_retainBlock(v43);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_20EE8;
    v39[3] = &unk_112580;
    v40 = v27;
    v41 = v28;
    v42 = self;
    v30 = objc_retainBlock(v39);
    v31 = [(MessageServiceSession *)self attachmentController];
    v32 = [v26 sender];
    [v31 sendAttachmentsForMessage:v26 canSendInline:0 displayIDs:v19 additionalContext:0 mode:2 fromID:v32 recipients:v19 completionBlock:v29 uploadFailureBlock:v30];
  }

  else if (v14 || ((v20 ^ 1) & 1) != 0)
  {
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_BC004();
    }
  }

  else
  {
    BYTE1(v34) = a8;
    LOBYTE(v34) = 1;
    [MessageServiceSession groupPhotoUploadCompletedForChat:"groupPhotoUploadCompletedForChat:fileTransferGuid:callerURI:fromAccount:message:displayIDs:additionalContext:success:isPhotoRefresh:error:" fileTransferGuid:v38 callerURI:0 fromAccount:v36 message:v37 displayIDs:0 additionalContext:v19 success:0 isPhotoRefresh:v34 error:?];
  }
}

- (void)sendBrandLogoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v25 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "ChatBot Logo - Update brand logo %@ to chatID %@ identifier %@", buf, 0x20u);
    }
  }

  v24 = v14;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v24 style:&v25];
  v17 = v24;

  if (v17)
  {
    v18 = [(MessageServiceSession *)self chatForChatIdentifier:v17 style:v25 updatingAccount:1];
    v19 = [ChatAssetStatusChangeContext contextWithAssetChangeType:0 isHidden:1 hasSensitiveContent:0];
    v20 = [(MessageServiceSession *)self generateAndStoreAssetChangeStatusItemForChat:v18 sender:0 fileTransferGuid:v12 assetStatusChange:v19];
    v21 = [(MessageServiceSession *)self attachmentController];
    v22 = [v20 guid];
    [v21 updateGroupPhoto:v12 forChat:v18 messageGuid:v22];
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

- (void)sendGroupPhotoUpdate:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 account:(id)a7 isPhotoRefresh:(BOOL)a8
{
  v41 = a8;
  v13 = a3;
  v40 = a4;
  v14 = a5;
  v45 = a6;
  v39 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v47 = v13;
      v48 = 2112;
      v49 = v40;
      v50 = 2112;
      v51 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Request to send group photo update %@ to chatID %@ identifier %@", buf, 0x20u);
    }
  }

  v44 = v14;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v44 style:&v45];
  v42 = v44;

  if (v42)
  {
    v16 = [(MessageServiceSession *)self chatForChatIdentifier:v42 style:v45 updatingAccount:1];
    v43 = 0;
    v37 = _LastAddressedURIForChatLogMetricIfNeeded(v16, 0, self, &v43, 0);
    v36 = v43;
    v38 = [ChatAssetStatusChangeContext contextWithAssetChangeType:0 isHidden:v41 hasSensitiveContent:0];
    v17 = [(MessageServiceSession *)self generateAndStoreAssetChangeStatusItemForChat:v16 sender:0 fileTransferGuid:v13 assetStatusChange:v38];
    v18 = [v16 groupPhotoGuid];
    v19 = [v18 isEqualToString:v13];

    if ((v19 & 1) == 0)
    {
      v35 = [(MessageServiceSession *)self broadcasterForChatListeners];
      v20 = [(MessageServiceSession *)self account];
      v21 = [v20 accountID];
      v22 = [v16 chatIdentifier];
      v23 = [v16 style];
      v24 = [v16 groupID];
      v25 = [v16 personCentricID];
      [v35 account:v21 chat:v22 style:v23 chatProperties:0 groupID:v24 chatPersonCentricID:v25 messageReceived:v17];
    }

    v26 = [v17 guid];
    [(MessageServiceSession *)self uploadGroupPhotoForChat:v16 fileTransferGUID:v13 itemGUID:v26 callerURI:v37 idsAccount:v36 isPhotoRefresh:v41];

    v27 = [(MessageServiceSession *)self attachmentController];
    v28 = [v17 guid];
    [v27 updateGroupPhoto:v13 forChat:v16 messageGuid:v28];

    v29 = [(MessageServiceSession *)self broadcasterForChatListeners];
    v30 = [v16 chatIdentifier];
    v31 = [v16 style];
    v32 = [(MessageServiceSession *)self account];
    v33 = [v32 accountID];
    [v29 groupPhotoUpdatedForChatIdentifier:v30 style:v31 account:v33 userInfo:0];
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

- (void)_requestGroupPhotoResendForChatGUID:(id)a3 fromIdentifier:(id)a4 toIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMDChatRegistry sharedInstance];
  v12 = [v11 existingChatWithGUID:v8];

  if (v12)
  {
    v13 = [(MessageServiceSession *)self groupController];
    v14 = +[NSDate date];
    [v13 requestGroupPhotoIfNecessary:v12 incomingParticipantVersion:0x7FFFFFFFFFFFFFFFLL incomingGroupPhotoCreationDate:v14 toIdentifier:v10 fromIdentifier:v9 messageIsFromStorage:0 session:self];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed to find a chat for chatGUID: %@", buf, 0xCu);
    }
  }
}

- (void)generateTranscriptBackground:(id)a3 destinationURL:(id)a4 senderContext:(id)a5 resultBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Requesting blastdoor of transcript background poster at path %@", buf, 0xCu);
    }
  }

  v14 = +[IMTranscodeController sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_21F60;
  v16[3] = &unk_112340;
  v17 = v12;
  v15 = v12;
  [v14 generatePosterConfigFromSource:v9 destination:v10 senderContext:v11 completionBlock:v16 blockUntilReply:0];
}

- (void)removePersonInfo:(id)a3 chatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v39 = a3;
  v38 = a4;
  v9 = a5;
  v61 = a6;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v65 = v39;
      v66 = 2112;
      v67 = v9;
      v68 = 1024;
      v69 = v61;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Request to remove person: %@   chat: %@  style: %c", buf, 0x1Cu);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  v60 = v9;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v60 style:&v61];
  v45 = v60;

  v11 = v45;
  if (v45)
  {
    v40 = [(MessageServiceSession *)self chatForChatIdentifier:v45 style:v61 updatingAccount:1];
    if ([v40 state])
    {
      v59 = 0;
      v43 = _LastAddressedURIForChatLogMetricIfNeeded(v40, 0, self, &v59, 0);
      v44 = v59;
      v37 = [(MessageServiceSession *)self idsServiceForIDSAccount:?];
      [(MessageServiceSession *)self _fixParticipantsForChat:v40];
      v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v39 count]);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v13 = v39;
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
      v19 = [(MessageServiceSession *)self groupController];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_22564;
      v51[3] = &unk_1125A8;
      v36 = v12;
      v52 = v36;
      v53 = self;
      v54 = v40;
      [v19 removeParticipants:v42 toChat:v54 fromID:v43 fromAccount:v44 session:self service:v37 completionBlock:v51];

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
              [v28 setStyle:v61];
              v31 = [(MessageServiceSession *)self imdAccountForIDSAccount:v44];
              [v28 setAccount:v31];

              v32 = [v43 _stripFZIDPrefix];
              [v28 setDestinationCallerID:v32];

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

- (void)stageMessageWrapperBlock:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock blockWrapper %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [v4 block];
    v7 = v6 == 0;

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

      if (-[NSMutableArray count](pendingSendBlockQueue, "count") || ([v4 isDelayedRichLinkBlock] & 1) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [NSNumber numberWithUnsignedInteger:[(NSMutableArray *)self->_pendingSendBlockQueue count]];
            *buf = 138412546;
            v19 = v4;
            v20 = 2112;
            v21 = v12;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock enqueing block %@, pending block count %@", buf, 0x16u);
          }
        }

        v13 = self->_pendingSendBlockQueue;
        if (v13)
        {
          CFArrayAppendValue(v13, v4);
        }

        if ([v4 isDelayedRichLinkBlock])
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
            v19 = v4;
            v20 = 2112;
            v21 = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "stageMessageWrapperBlock calling block immediately %@ [_pendingSendBlockQueue count]:%@ ", buf, 0x16u);
          }
        }

        v17 = [v4 block];
        v17[2]();
      }
    }
  }
}

- (BOOL)_richLinkPendSendingWithGUID:(id)a3
{
  v4 = a3;
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
        v10 = [v9 GUID];
        if ([v10 isEqualToString:v4])
        {
          v11 = [v9 isDelayedRichLinkBlock];

          if (v11)
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
      v20 = v4;
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
          v10 = [v9 block];
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

          if (v10)
          {
            v10[2](v10);
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
        v20 = [*&self->IMDAppleServiceSession_opaque[v21] firstObject];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "_flushQueuedMessageWrapperBlocks state at the end of dequeuing [_pendingSendBlockQueue count] %@ first block %@", buf, 0x16u);
      }
    }
  }
}

- (void)eagerUploadTransfer:(id)a3 recipients:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MessageServiceSession *)self attachmentController];
  [v8 eagerUploadTransfer:v7 recipients:v6];
}

- (void)eagerUploadCancel:(id)a3
{
  v4 = a3;
  v5 = [(MessageServiceSession *)self attachmentController];
  [v5 eagerUploadCancel:v4];
}

- (void)_sendHighResolutionImagesForMessage:(id)a3 fromID:(id)a4 fromAccount:(id)a5 toURIs:(id)a6 toChat:(id)a7
{
  v11 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = objc_alloc_init(NSMutableArray);
  v35 = v12;
  [v12 setObject:v13 forKeyedSubscript:@"fileTransferUpdates"];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = [v11 fileTransferGUIDs];
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      v20 = +[IMDFileTransferCenter sharedInstance];
      v21 = [v20 transferForGUID:v19];

      v22 = [v21 userInfo];
      v23 = v22;
      if (v22 && [v22 count])
      {
        [v13 addObject:v23];
        v16 = 1;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
    v27 = [v11 guid];
    v28 = IDSGetUUIDData();
    v29 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v25, IDSSendMessageOptionCommandKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v26, IDSSendMessageOptionDataToEncryptKey, v28, IDSSendMessageOptionUUIDKey, 0];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_23D80;
    v36[3] = &unk_112630;
    v36[4] = self;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v29;
    v41 = &stru_112608;
    v14 = v29;
    [(MessageServiceSession *)self _engroupForChat:v34 idsAccount:v38 completion:v36];

    goto LABEL_17;
  }

LABEL_18:
}

- (id)_calculateQueueIdentifierForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 cloudKitChatID];
  v5 = [v3 sender];

  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  v7 = [v6 UTF8String];
  v8 = [NSMutableData dataWithLength:32];
  LODWORD(v5) = strlen(v7);
  CC_SHA256(v7, v5, [v8 mutableBytes]);

  return v8;
}

- (void)sendReadReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6 reflectOnly:(BOOL)a7
{
  v64 = a3;
  v59 = a4;
  v79 = a6;
  v11 = a5;
  [(MessageServiceSession *)self _logLocalInfo];
  v78 = v11;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v78 style:&v79];
  v61 = v78;

  v62 = [(MessageServiceSession *)self chatForChatIdentifier:v61 style:v79 updatingAccount:1];
  v77 = 0;
  v60 = _LastAddressedURIForChatLogMetricIfNeeded(v62, 0, self, &v77, 0);
  v63 = v77;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:?])
  {
    v12 = [(MessageServiceSession *)self shouldSendReadReceiptsForChat:v61 style:v79];
    if (v79 == 45)
    {
      v13 = v12;
      v14 = [v62 isOscarChat];
      v15 = IMOSLoggingEnabled();
      if (!v14)
      {
        if (v15)
        {
          v54 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v85 = v64;
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
        LODWORD(v85) = v79;
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
    v20 = [v64 guid];
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
        v24 = [v62 participants];
        v25 = URIsFromHandles(v24);
        v26 = [v25 mutableCopy];

        v27 = [(MessageServiceSession *)self deliveryController];
        v28 = +[NSDictionary dictionary];
        v29 = [NSSet setWithArray:v26];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_24A14;
        v74[3] = &unk_112658;
        v75 = v64;
        v76 = v26;
        v30 = v26;
        [v27 sendMessageDictionary:v28 fromID:v60 fromAccount:v63 toURIs:v29 toGroup:0 priority:300 options:v58 completionBlock:v74];
      }

      theDict = [v58 mutableCopy];
      v31 = [NSSet setWithArray:&off_119620];
      if (v31)
      {
        CFDictionarySetValue(theDict, IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey, v31);
      }

      v32 = [(MessageServiceSession *)self deliveryController];
      v33 = +[NSDictionary dictionary];
      v81 = v60;
      v34 = [NSArray arrayWithObjects:&v81 count:1];
      v35 = [NSSet setWithArray:v34];
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_24BD8;
      v71[3] = &unk_112658;
      v36 = v64;
      v72 = v36;
      v37 = v60;
      v73 = v37;
      [v32 sendMessageDictionary:v33 fromID:v37 fromAccount:v63 toURIs:v35 toGroup:0 priority:300 options:theDict completionBlock:v71];

      value = [(MessageServiceSession *)self _calculateQueueIdentifierForMessage:v36];
      v56 = [(MessageServiceSession *)self _makeEnhancedReadReceiptDictFor:v36 inChat:v62 callerID:v37];
      v38 = JWEncodeDictionary();
      v39 = [v38 _FTCopyGzippedData];

      v40 = [v58 mutableCopy];
      CFDictionarySetValue(v40, IDSSendMessageOptionWantsCertifiedDeliveryKey, &__kCFBooleanTrue);
      if (value)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionQueueOneIdentifierKey, value);
      }

      if ([v39 length] && v39)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionDataToEncryptKey, v39);
      }

      v41 = [NSSet setWithArray:&off_119638];
      if (v41)
      {
        CFDictionarySetValue(v40, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, v41);
      }

      v42 = [(MessageServiceSession *)self deliveryController];
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
      [v42 sendMessageDictionary:v43 fromID:v70 fromAccount:v63 toURIs:v45 toGroup:0 priority:300 options:v40 completionBlock:v68];

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
        v50 = [v62 participants];
        v51 = URIsFromHandles(v50);
        [v49 addObjectsFromArray:v51];
      }

      value = [(MessageServiceSession *)self deliveryController];
      v56 = +[NSDictionary dictionary];
      v39 = [NSSet setWithArray:v49];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_24F60;
      v65[3] = &unk_112658;
      v66 = v64;
      v67 = v49;
      theDict = v49;
      [value sendMessageDictionary:v56 fromID:v60 fromAccount:v63 toURIs:v39 toGroup:0 priority:300 options:v58 completionBlock:v65];
      v46 = &v66;
      v47 = &v67;
    }

    v52 = [v64 guid];
    v53 = [(MessageServiceSession *)self imdAccountForIDSAccount:v63];
    [(MessageServiceSession *)self didSendMessageReadReceiptForMessageID:v52 account:v53];

    goto LABEL_36;
  }

  v17 = [v64 guid];
  v18 = [(MessageServiceSession *)self imdAccountForIDSAccount:v63];
  [(MessageServiceSession *)self didSendMessageReadReceiptForMessageID:v17 account:v18];

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

- (void)sendPlayedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v39 = a3;
  v38 = a4;
  v49 = a6;
  v10 = a5;
  [(MessageServiceSession *)self _logLocalInfo];
  v48 = v10;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v48 style:&v49];
  v42 = v48;

  v43 = [(MessageServiceSession *)self chatForChatIdentifier:v42 style:v49 updatingAccount:1];
  v47 = 0;
  v40 = _LastAddressedURIForChatLogMetricIfNeeded(v43, 0, self, &v47, 0);
  v41 = v47;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:?])
  {
    v11 = [(MessageServiceSession *)self shouldSendReadReceiptsForChat:v42 style:v49];
    if (v49 == 45)
    {
      v12 = v11;
      v13 = [v43 isOscarChat];
      v14 = IMOSLoggingEnabled();
      if (!v13)
      {
        if (v14)
        {
          v37 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v51 = v39;
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
        LODWORD(v51) = v49;
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
      v22 = [v43 participants];
      v23 = URIsFromHandles(v22);
      [v21 addObjectsFromArray:v23];
    }

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_257B0;
    v44[3] = &unk_112658;
    v24 = v39;
    v45 = v24;
    v46 = v21;
    v25 = v21;
    v26 = objc_retainBlock(v44);
    v27 = [NSNumber numberWithInteger:105];
    v28 = [v24 guid];
    v29 = IDSGetUUIDData();
    v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v31 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v27, IDSSendMessageOptionCommandKey, v29, IDSSendMessageOptionUUIDKey, v30, IDSSendMessageOptionTimeoutKey, 0];

    v32 = [(MessageServiceSession *)self deliveryController];
    v33 = +[NSDictionary dictionary];
    v34 = [NSSet setWithArray:v25];
    [v32 sendMessageDictionary:v33 fromID:v40 fromAccount:v41 toURIs:v34 toGroup:0 priority:300 options:v31 completionBlock:v26];

    v35 = [v24 guid];
    v36 = [(MessageServiceSession *)self imdAccountForIDSAccount:v41];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:v35 account:v36];

    goto LABEL_28;
  }

  v16 = [v39 guid];
  v17 = [(MessageServiceSession *)self imdAccountForIDSAccount:v41];
  [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:v16 account:v17];

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

- (void)sendDeliveredQuietlyReceiptForMessage:(id)a3 forIncomingMessageFromIDSID:(id)a4 toChatGuid:(id)a5 identifier:(id)a6 style:(unsigned __int8)a7 withWillSendToDestinationsHandler:(id)a8
{
  v45 = a3;
  v40 = a4;
  v39 = a5;
  v55 = a7;
  v41 = a8;
  v14 = a6;
  [(MessageServiceSession *)self _logLocalInfo];
  v54 = v14;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v54 style:&v55];
  v43 = v54;

  v42 = [v45 guid];
  v46 = [(MessageServiceSession *)self chatForChatIdentifier:v43 style:v55 updatingAccount:1];
  v53 = 0;
  v44 = _LastAddressedURIForChatLogMetricIfNeeded(v46, 0, self, &v53, 0);
  v15 = v53;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v15])
  {
    v16 = v55 == 45;
    if (v55 != 45 && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v57) = v55;
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
      v21 = [v46 participants];
      v22 = URIsFromHandles(v21);

      [v20 addObjectsFromArray:v22];
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_25FB0;
    v50[3] = &unk_112658;
    v23 = v42;
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
    v48 = v40;
    v49 = v41;
    v30 = objc_retainBlock(v47);
    v31 = [(MessageServiceSession *)self deliveryController];
    v32 = +[NSDictionary dictionary];
    v33 = [NSSet setWithArray:v38];
    [v31 sendMessageDictionary:v32 fromID:v44 fromAccount:v15 toURIs:v33 toGroup:0 priority:300 options:v29 willSendBlock:v30 completionBlock:v24];

    v34 = [(MessageServiceSession *)self imdAccountForIDSAccount:v15];
    [(MessageServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:v23 account:v34];
  }

  else
  {
    v35 = [v45 guid];
    v36 = [(MessageServiceSession *)self imdAccountForIDSAccount:v15];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:v35 account:v36];

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

- (void)sendNotifyRecipientCommandForMessage:(id)a3 toChatGuid:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v38 = a3;
  v34 = a4;
  v45 = a6;
  v10 = a5;
  [(MessageServiceSession *)self _logLocalInfo];
  v44 = v10;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v44 style:&v45];
  v36 = v44;

  v35 = [v38 guid];
  v39 = [(MessageServiceSession *)self chatForChatIdentifier:v36 style:v45 updatingAccount:1];
  v43 = 0;
  v37 = _LastAddressedURIForChatLogMetricIfNeeded(v39, 0, self, &v43, 0);
  v11 = v43;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v11])
  {
    v12 = v45 == 45;
    if (v45 != 45 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v47) = v45;
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
      v17 = [v39 participants];
      v18 = URIsFromHandles(v17);

      [v16 addObjectsFromArray:v18];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_2698C;
    v40[3] = &unk_112658;
    v19 = v35;
    v41 = v19;
    v42 = v16;
    v33 = v16;
    v20 = objc_retainBlock(v40);
    v21 = [NSNumber numberWithInteger:113];
    v22 = IDSGetUUIDData();
    v23 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v24 = [NSSet setWithObject:IDSRegistrationPropertySupportsDeliveredQuietlyAndNotifyRecipient];
    v25 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v21, IDSSendMessageOptionCommandKey, v22, IDSSendMessageOptionUUIDKey, v23, IDSSendMessageOptionTimeoutKey, v24, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, 0];

    v26 = [(MessageServiceSession *)self deliveryController];
    v27 = +[NSDictionary dictionary];
    v28 = [NSSet setWithArray:v33];
    [v26 sendMessageDictionary:v27 fromID:v37 fromAccount:v11 toURIs:v28 toGroup:0 priority:300 options:v25 willSendBlock:0 completionBlock:v20];

    v29 = [(MessageServiceSession *)self imdAccountForIDSAccount:v11];
    [(MessageServiceSession *)self didSendNotifyRecipientCommandForMessageID:v19 account:v29];
  }

  else
  {
    v30 = [v38 guid];
    v31 = [(MessageServiceSession *)self imdAccountForIDSAccount:v11];
    [(MessageServiceSession *)self didSendMessagePlayedReceiptForMessageID:v30 account:v31];

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

- (void)sendEditedMessage:(id)a3 previousMessage:(id)a4 partIndex:(int64_t)a5 editType:(unint64_t)a6 toChatIdentifier:(id)a7 style:(unsigned __int8)a8 account:(id)a9 backwardCompatabilityText:(id)a10
{
  v48 = a3;
  v47 = a4;
  v75 = a8;
  v42 = a9;
  v44 = a10;
  v74 = a7;
  v16 = a7;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v74 style:&v75];
  v49 = v74;

  v17 = [(MessageServiceSession *)self chatForChatIdentifier:v49 style:v75 updatingAccount:1];
  if (v17)
  {
    v41 = [(MessageServiceSession *)self messageStore];
    v73 = 0;
    v46 = [v41 storeEditedMessage:v48 editedPartIndex:a5 editType:a6 previousMessage:v47 chat:v17 updatedAssociatedMessageItems:&v73];
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

    v19 = [(MessageServiceSession *)self broadcasterForChatListeners];
    v20 = [(MessageServiceSession *)self account];
    v21 = [v20 accountID];
    [v19 account:v21 chat:v49 style:v75 messagesUpdated:v40];

    v72 = 0;
    v22 = _LastAddressedURIForChatLogMetricIfNeeded(v17, 0, self, &v72, 0);
    v38 = v72;
    v23 = objc_alloc_init(NSMutableArray);
    v24 = v23;
    if (v22)
    {
      [v23 addObject:v22];
    }

    v25 = [v17 participants];
    v39 = URIsFromHandles(v25);

    [v24 addObjectsFromArray:v39];
    v26 = [v48 guid];
    objc_initWeak(&location, self);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_27208;
    v67[3] = &unk_1126A8;
    objc_copyWeak(v70, &location);
    v27 = v26;
    v68 = v27;
    v70[1] = a5;
    v69 = v47;
    v28 = objc_retainBlock(v67);
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_273C0;
    v64[3] = &unk_1126D0;
    objc_copyWeak(v66, &location);
    v37 = v27;
    v65 = v37;
    v66[1] = a5;
    v66[2] = a6;
    v29 = objc_retainBlock(v64);
    if ([(MessageServiceSession *)self isReplicating]&& (v30 = [(MessageServiceSession *)self _replicationEditDelay]) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v48 guid];
          *buf = 138412546;
          v77 = v32;
          v78 = 1024;
          LODWORD(v79) = v30;
          when = v32;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Deferring message edit of %@ for replication by %u seconds", buf, 0x12u);
        }
      }

      whena = dispatch_time(0, 1000000000 * v30);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_274F4;
      block[3] = &unk_1126F8;
      v61 = v30;
      v51 = v48;
      v52 = self;
      v53 = v46;
      v62 = a5;
      v63 = a6;
      v54 = v24;
      v55 = v49;
      v56 = v38;
      v57 = v22;
      v58 = v44;
      v59 = v28;
      v60 = v29;
      dispatch_after(whena, &_dispatch_main_q, block);

      v33 = v51;
    }

    else
    {
      v33 = [(MessageServiceSession *)self deliveryController];
      [v33 sendEditedMessage:v46 partIndex:a5 editType:a6 destinations:v24 chatIdentifier:v49 account:v38 fromID:v22 backwardCompatabilityText:v44 unsupportedDestinationsHandler:v28 completionBlock:v29];
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
      v77 = v48;
      v78 = 2112;
      v79 = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Could not find chat for edited message. message: %@ chat: %@", buf, 0x16u);
    }
  }
}

- (void)sendRepositionStickerMessage:(id)a3 chatIdentifier:(id)a4 accountID:(id)a5 style:(unsigned __int8)a6
{
  v37 = a3;
  v34 = a5;
  v43 = a6;
  v42 = a4;
  v10 = a4;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v42 style:&v43];
  v11 = v42;

  v12 = [(MessageServiceSession *)self chatForChatIdentifier:v11 style:v43 updatingAccount:1];
  if (v12)
  {
    v35 = [(MessageServiceSession *)self messageStore];
    v36 = [v35 storeRepositionedStickerLocally:v37];
    v33 = objc_alloc_init(NSMutableArray);
    if (v36)
    {
      v13 = [v37 guid];
      v14 = [v35 messageWithGUID:v13];

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

    v16 = [(MessageServiceSession *)self broadcasterForChatListeners];
    v17 = [(MessageServiceSession *)self account];
    v18 = [v17 accountID];
    [v16 account:v18 chat:v11 style:v43 messagesUpdated:v32];

    v41 = 0;
    v19 = _LastAddressedURIForChatLogMetricIfNeeded(v12, 0, self, &v41, 0);
    v20 = v41;
    v21 = objc_alloc_init(NSMutableArray);
    v22 = v21;
    if (v19)
    {
      [v21 addObject:v19];
    }

    v23 = [v12 participants];
    v24 = URIsFromHandles(v23);

    [v22 addObjectsFromArray:v24];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_27A14;
    v38[3] = &unk_112658;
    v25 = v37;
    v39 = v25;
    v40 = v22;
    v26 = v22;
    v27 = objc_retainBlock(v38);
    v28 = [(MessageServiceSession *)self deliveryController];
    [v28 sendRepositionedStickerMetadata:v36 forEditedMessage:v25 destinations:v26 account:v20 fromID:v19 completionBlock:v27];

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
      v45 = v37;
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

    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = &dword_1C + 2;
  }

  return v5;
}

- (id)_handleIDsForDestinations:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

  v12 = [v4 array];

  return v12;
}

- (void)sendSavedReceiptForMessage:(id)a3 toChatID:(id)a4 identifier:(id)a5 style:(unsigned __int8)a6
{
  v10 = a3;
  v11 = a4;
  v66[0] = a6;
  v12 = a5;
  [(MessageServiceSession *)self _logLocalInfo];
  v65 = v12;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v65 style:v66];
  v13 = v65;

  v14 = [(MessageServiceSession *)self chatForChatIdentifier:v13 style:v66[0] updatingAccount:1];
  v64 = 0;
  v15 = _LastAddressedURIForChatLogMetricIfNeeded(v14, 0, self, &v64, 0);
  v16 = v64;
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v16])
  {
    v53 = v16;
    v56 = v11;
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
    if (([v10 isFromMe] & 1) == 0)
    {
      v19 = [v10 sender];
      v20 = [NSArray arrayWithObject:v19];
      v21 = [v20 _URIsFromIDs];
      [v18 addObjectsFromArray:v21];
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_283C0;
    v60[3] = &unk_112658;
    v57 = v10;
    v22 = v10;
    v61 = v22;
    v52 = v18;
    v62 = v52;
    v51 = objc_retainBlock(v60);
    v23 = IDSSendMessageOptionTopLevelDictionaryKey;
    v24 = IDSSendMessageOptionSkipPayloadCheckKey;
    v25 = [NSNumber numberWithInteger:106];
    v26 = IDSSendMessageOptionCommandKey;
    v58 = v22;
    v27 = [v22 guid];
    v28 = IDSGetUUIDData();
    v29 = IDSSendMessageOptionUUIDKey;
    v30 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v50 = [NSDictionary dictionaryWithObjectsAndKeys:v23, &__kCFBooleanTrue, v24, v25, v26, v28, v29, v30, IDSSendMessageOptionTimeoutKey, 0];

    v31 = [(MessageServiceSession *)self groupController];
    v15 = v54;
    v32 = [v31 newGroupMessagePayloadForChat:v59 fromID:v54];

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
      v40 = [v58 balloonBundleID];
      v41 = [v40 length];

      if (!v41)
      {
LABEL_17:
        if (v35)
        {
          CFDictionarySetValue(v34, @"aT", v35);
        }

        v43 = [(MessageServiceSession *)self deliveryController];
        v44 = [NSSet setWithArray:v52];
        v45 = v34;
        v46 = v34;
        v16 = v53;
        [v43 sendMessageDictionary:v45 fromID:v54 fromAccount:v53 toURIs:v44 toGroup:0 priority:300 options:v50 completionBlock:v51];

        v47 = [v58 guid];
        v48 = [(MessageServiceSession *)self imdAccountForIDSAccount:v53];
        [(MessageServiceSession *)self didSendMessageSavedReceiptForMessageID:v47 account:v48];

        v11 = v56;
        v10 = v57;
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

  v37 = [v10 guid];
  v38 = [(MessageServiceSession *)self imdAccountForIDSAccount:v16];
  [(MessageServiceSession *)self didSendMessageSavedReceiptForMessageID:v37 account:v38];

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

- (void)sendSyndicationAction:(id)a3 toChatsWithIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_BC164();
    }

    goto LABEL_25;
  }

  if (![v7 count])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_BC128();
    }

LABEL_25:

    goto LABEL_33;
  }

  if (([v6 syndicationActionType] & 0x20) != 0)
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

                [(MessageServiceSession *)self _sendSyndicationAction:v6 toChat:*(*(&v25 + 1) + 8 * j)];
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

- (void)sendUpdatedCollaborationMetadata:(id)a3 toChatsWithIdentifiers:(id)a4 forMessageGUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
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

              [*(*(&v25 + 1) + 8 * v22) updateCollaborationMetadata:v7 forMessageGUID:v9];
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

- (void)_sendSyndicationAction:(id)a3 toChat:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v33 = 0;
    v28 = _LastAddressedURIForChatLogMetricIfNeeded(v6, 0, self, &v33, 0);
    v8 = v33;
    if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v8])
    {
      if (v28)
      {
        v9 = +[NSMutableDictionary dictionary];
        [v29 addParametersToSendMessageDictionary:v9];
        v27 = [v7 makeGroupContextDictionaryWithCallerID:v28];
        if (v27)
        {
          [v9 setObject:v27 forKeyedSubscript:@"cprm"];
        }

        v25 = JWEncodeDictionary();
        v26 = [v25 _FTCopyGzippedData];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [v25 length];
            v12 = [v26 length];
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
            v14 = [v26 length];
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
        v36[5] = v26;
        v24 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:6];

        v34 = v28;
        v18 = [NSArray arrayWithObjects:&v34 count:1];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_29070;
        v30[3] = &unk_112658;
        v19 = v29;
        v31 = v19;
        v32 = v18;
        v20 = v18;
        v21 = objc_retainBlock(v30);
        v22 = [(MessageServiceSession *)self deliveryController];
        v23 = [NSSet setWithArray:v20];
        [v22 sendMessageDictionary:&__NSDictionary0__struct fromID:v28 fromAccount:v8 toURIs:v23 toGroup:0 priority:300 options:v24 completionBlock:v21];

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

- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 length]);
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
      *buf = 138413058;
      v56 = v15;
      v57 = 2112;
      v58 = v16;
      v59 = 2112;
      v60 = v12;
      v61 = 2112;
      v62 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "sendBalloonPayload [payload length] %@ [attachments count] %@ GUID %@ bundleID %@", buf, 0x2Au);
    }
  }

  if (v13)
  {
    if (v10 && [v10 length])
    {
      v17 = [IDSServerBag sharedInstanceForBagType:1];
      v18 = [v17 objectForKey:@"md-balloon-transport-override"];
      v19 = [v18 intValue] == 0;

      if (v19)
      {
        v21 = +[IMDMessageStore sharedInstance];
        v44 = [v21 messageWithGUID:v12];

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
                v56 = v12;
                v57 = 2112;
                v58 = v43;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Found chat to send bubble message (%@) on: %@", buf, 0x16u);
              }
            }

            v26 = +[IMDFileTransferCenter sharedInstance];
            v27 = [v26 guidsForStoredAttachmentPayloadData:v11 messageGUID:v12];
            [v44 setFileTransferGUIDs:v27];

            [v44 setPayloadData:v10];
            v28 = +[NSMutableArray array];
            v29 = v28;
            if (v42)
            {
              [v28 addObject:v42];
            }

            v30 = [v43 participants];
            v31 = URIsFromHandles(v30);
            [v29 addObjectsFromArray:v31];

            v32 = [(MessageServiceSession *)self imdAccountForIDSAccount:v23];
            v41 = [v43 chatIdentifier];
            v39 = [v43 style];
            v40 = [v32 accountID];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_299D4;
            v45[3] = &unk_112768;
            v45[4] = self;
            v46 = v12;
            v47 = v13;
            v48 = v10;
            v49 = v11;
            v50 = v43;
            v51 = v23;
            v33 = v23;
            v52 = v42;
            v53 = v29;
            v34 = v29;
            v35 = v42;
            v36 = v33;
            [(MessageServiceSession *)self didSendBalloonPayload:v44 forChat:v41 style:v39 messageGUID:v46 account:v40 completionBlock:v45];
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
            v56 = v12;
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
        v56 = v12;
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
      v56 = v12;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Chat: Could not send balloon payload for missing bundle id: %@", buf, 0xCu);
    }

    goto LABEL_45;
  }
}

- (void)sendCrossServiceAssociationMessageWithReplacementGUID:(id)a3 messageGUID:(id)a4 callerID:(id)a5 toID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "In cross service association method for replacementGUID: %@ messageGUID: %@, toID %@ callerID: %@", buf, 0x2Au);
    }
  }

  if (!v11)
  {
    v11 = [(MessageServiceSession *)self callerURIUsingCalleeURI:v12];
  }

  v26 = [(MessageServiceSession *)self idsAccountForFromURI:v11 toURI:v12];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_2A65C;
  v28[3] = &unk_112658;
  v14 = v9;
  v29 = v14;
  v15 = v10;
  v30 = v15;
  v16 = objc_retainBlock(v28);
  v17 = objc_alloc_init(NSMutableArray);
  v18 = v17;
  if (v12)
  {
    [v17 addObject:v12];
  }

  if (v11)
  {
    [v18 addObject:v11];
  }

  v19 = [NSNumber numberWithInteger:135];
  v20 = IDSGetUUIDData();
  v21 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v22 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionSkipPayloadCheckKey, v19, IDSSendMessageOptionCommandKey, v20, IDSSendMessageOptionUUIDKey, v21, IDSSendMessageOptionTimeoutKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsCertifiedDeliveryKey, 0];

  v23 = [(MessageServiceSession *)self deliveryController];
  v24 = [NSDictionary dictionaryWithObject:v14 forKey:@"Ur"];
  v25 = [NSSet setWithArray:v18];
  [v23 sendMessageDictionary:v24 fromID:v11 fromAccount:v26 toURIs:v25 toGroup:0 priority:300 options:v22 completionBlock:v16];
}

- (void)_automation_sendDictionary:(id)a3 options:(id)a4 toHandles:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = [(MessageServiceSession *)self callerURIForMessageServiceType:0];
  v11 = [v8 firstObject];
  v12 = [(MessageServiceSession *)self idsAccountForFromURI:v16 toURI:v11];

  v13 = [(MessageServiceSession *)self deliveryController];
  v14 = [v8 __im_canonicalIDSIDsFromAddresses];

  v15 = [NSSet setWithArray:v14];
  [v13 sendMessageDictionary:v10 fromID:v16 fromAccount:v12 toURIs:v15 toGroup:0 priority:300 options:v9 completionBlock:&stru_112788];
}

- (void)_automation_receiveDictionary:(id)a3 options:(id)a4 fromHandle:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[IMDLocalDaemon sharedDaemon];
  v12 = [v11 iMessageIDSHandler];

  [v12 setRunningInAutomation:1];
  v13 = [IDSService alloc];
  v28 = [v13 initWithService:IDSServiceNameiMessage];
  v14 = [v10 objectForKeyedSubscript:@"message-context"];

  if (v14)
  {
    v15 = [IDSMessageContext alloc];
    v16 = [v8 objectForKeyedSubscript:@"message-context"];
    v14 = [v15 initWithDictionary:v16 boostContext:0];
  }

  v17 = [v8 objectForKeyedSubscript:@"IDSIncomingMessagePushPayload"];
  v18 = [v17 mutableCopy];

  v19 = [v9 componentsSeparatedByString:@"/"];
  v20 = [v19 lastObject];
  [v18 setObject:v20 forKeyedSubscript:@"sP"];

  v21 = [(MessageServiceSession *)self idsAccount];
  v22 = [v21 displayName];
  [v22 _bestGuessURI];
  v24 = v23 = self;
  [v18 setObject:v24 forKeyedSubscript:@"tP"];

  v25 = [v8 mutableCopy];
  v26 = [v18 copy];
  [v25 setObject:v26 forKeyedSubscript:@"IDSIncomingMessagePushPayload"];

  v29 = [v25 copy];
  v27 = [(MessageServiceSession *)v23 idsAccount];
  [v12 service:v28 account:v27 incomingTopLevelMessage:v29 fromID:v9 messageContext:v14];
}

- (void)sendDeliveryReceiptForMessageID:(id)a3 toID:(id)a4 deliveryContext:(id)a5 needsDeliveryReceipt:(id)a6 callerID:(id)a7 account:(id)a8
{
  v30 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v34 = v30;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "In delivery receipt method for messageID: %@ toID %@ deliveryContext: %@, needsDeliveryReceipt :%@ ", buf, 0x2Au);
    }
  }

  if ([v15 BOOLValue])
  {
    if (v16)
    {
      if (!v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [(MessageServiceSession *)self callerURIUsingCalleeURI:v13];
      if (!v17)
      {
LABEL_10:
        v17 = [(MessageServiceSession *)self idsAccount];
      }
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_2B074;
    v31[3] = &unk_112200;
    v32 = v30;
    v28 = objc_retainBlock(v31);
    v19 = objc_alloc_init(NSMutableArray);
    v20 = v19;
    if (v13)
    {
      [v19 addObject:v13];
    }

    v21 = [NSNumber numberWithInteger:101];
    v22 = IDSGetUUIDData();
    v23 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v24 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v21, IDSSendMessageOptionCommandKey, v22, IDSSendMessageOptionUUIDKey, v23, IDSSendMessageOptionTimeoutKey, 0];

    if (v14)
    {
      [v24 setObject:v14 forKey:@"Dc"];
    }

    v25 = [(MessageServiceSession *)self deliveryController];
    v26 = +[NSDictionary dictionary];
    v27 = [NSSet setWithArray:v20];
    [v25 sendMessageDictionary:v26 fromID:v16 fromAccount:v17 toURIs:v27 toGroup:0 priority:300 options:v24 completionBlock:v28];
  }
}

- (id)_messageDictionaryToReflectWithDeliveryReceipt:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 properties];

  v7 = [v6 valueForKey:IMChatPropertyEnableReadReceiptForChatKey];
  if (!v7)
  {
    v7 = [NSNumber numberWithInteger:0];
  }

  v8 = [v6 valueForKey:IMChatPropertyReadReceiptsSettingVersionKey];
  if (!v8)
  {
    v8 = [NSNumber numberWithInteger:0];
  }

  v9 = [(MessageServiceSession *)self globalReadReceiptSettingVersion];
  v10 = v9;
  v11 = &off_1192A8;
  if (v9)
  {
    v11 = v9;
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

- (void)sendNicknameInfoToURIs:(id)a3 chatGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [IDSServerBag sharedInstanceForBagType:0];
  v9 = [v8 objectForKey:@"enable-snap-v2-back-compat"];
  v10 = [v9 BOOLValue];

  if (!v10)
  {
    goto LABEL_36;
  }

  if (IMSharedHelperNickNameEnabled())
  {
    if (v7)
    {
      v11 = +[IMDChatRegistry sharedInstance];
      v12 = [v11 existingChatWithGUID:v7];

      if (!v12)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v7;
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
      v31 = v6;
      v36 = v31;
      v32 = objc_retainBlock(v34);
      v17 = [NSNumber numberWithInteger:131];
      v18 = IDSGetUUIDData();
      v19 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v20 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v17, IDSSendMessageOptionCommandKey, v18, IDSSendMessageOptionUUIDKey, v19, IDSSendMessageOptionTimeoutKey, 0];

      v21 = +[IMDNicknameController sharedInstance];
      v22 = [v21 newNicknameInfoToSend];

      LOBYTE(v21) = [v22 count] == 0;
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

        v25 = [(MessageServiceSession *)self deliveryController];
        v26 = [NSSet setWithArray:v31];
        [v25 sendMessageDictionary:v22 encryptDictionary:1 fromID:v13 fromAccount:v14 toURIs:v26 toGroup:0 priority:300 options:v20 willSendBlock:0 completionBlock:v32];
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

- (BOOL)sendNicknameUpdatesToPeerDevices:(id)a3 toDestinations:(id)a4
{
  v43 = a3;
  v44 = a4;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v52 = v43;
      v53 = 2112;
      v54 = v44;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Sending nickname updates to my other devices %@ and peers %@", buf, 0x16u);
    }
  }

  v7 = [(MessageServiceSession *)self idsAccount];
  if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v7])
  {
    v8 = objc_alloc_init(NSMutableSet);
    if ([(__CFString *)v44 count])
    {
      [(__CFString *)v8 addObjectsFromArray:v44];
    }

    else
    {
      v42 = [(MessageServiceSession *)self idsServiceForIDSAccount:v7];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v42 devices];
          v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
          *buf = 138412290;
          v52 = v15;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Going to send nickname updates to %@ accounts", buf, 0xCu);
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v16 = [v42 devices];
      v17 = [v16 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v17)
      {
        v18 = *v46;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v46 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            v21 = IDSCopyIDForDevice();
            [(__CFString *)v8 addObject:v21];
          }

          v17 = [v16 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v17);
      }

      v22 = [(__CFString *)v8 count];
      v23 = [v7 devices];
      v24 = [v23 count];

      if (v24 == 0 || v7 == 0 || v22 == 0 || ([v7 devices], v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == 0, v25, v26))
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [v7 devices];
            v38 = v37;
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
            v56 = v7;
            v57 = 2112;
            v58 = v37;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "We did not have ids accounts to send nickname info out -- bailing {haveIDSDevicesToSendTo %@ haveTokenURISToSendTo %@ idsAccount %@ devices %@}", buf, 0x2Au);
          }
        }

        v12 = 0;
        goto LABEL_46;
      }
    }

    v42 = [(MessageServiceSession *)self callerURIForIDSAccount:v7];
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
    v50[1] = v43;
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

    v35 = [(MessageServiceSession *)self deliveryController];
    [v35 sendMessageDictionary:v33 encryptDictionary:1 fromID:v42 fromAccount:v7 toURIs:v8 toGroup:0 priority:300 options:v31 willSendBlock:0 completionBlock:&stru_1127A8];

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

- (void)forwardDeliveryReceiptForMessageID:(id)a3 withAccount:(id)a4 callerURI:(id)a5
{
  v8 = a3;
  v24 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Forwarding delivery receipt to all other devices  (messageID %@)", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(NSMutableArray);
  [v11 addObject:v9];
  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 chatForMessageGUID:v8];

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
        v26 = v8;
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

  v22 = [(MessageServiceSession *)self deliveryController];
  v23 = [NSSet setWithArray:v11];
  [v22 sendMessageDictionary:v14 encryptDictionary:1 fromID:v9 fromAccount:v24 toURIs:v23 toGroup:0 priority:300 options:v21 willSendBlock:0 completionBlock:&stru_1127C8];
}

- (void)_handleFileTransferUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
      v7 = [v5 guid];
      v8 = [v6 objectForKey:v7];

      if (v8)
      {
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v34 = 138412546;
            v35 = v5;
            v36 = 2112;
            v37 = v8;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Processing pending group photo download %@ %@", &v34, 0x16u);
          }
        }

        if ([v5 transferState] < 6)
        {
          v13 = [v5 transferState] > 3;
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
            v21 = [v20 BOOLValue];

            v22 = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
            v23 = [v5 guid];
            [v22 removeObjectForKey:v23];

            if (v18)
            {
              v24 = [v5 guid];
              [(MessageServiceSession *)self groupPhotoDownloadCompletedForChat:v18 fileTransferError:0 success:1 transferGuid:v24 sender:v19 isHidden:v21];
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

          v11 = [(MessageServiceSession *)self pendingGroupPhotoDownloads];
          v12 = [v5 guid];
          [v11 removeObjectForKey:v12];
        }
      }

      v26 = [v5 isFromMomentShare];
      if ((([v5 transferState] == &dword_4 + 1) & v26) == 1)
      {
        v27 = [(MessageServiceSession *)self messageStore];
        v28 = [v5 messageGUID];
        v29 = [v27 messageWithGUID:v28];

        v30 = [(MessageServiceSession *)self broadcasterForChatListeners];
        v31 = [(MessageServiceSession *)self account];
        v32 = [v31 accountID];
        v33 = [v29 cloudKitChatID];
        [v30 account:v32 chat:v33 style:0 messageUpdated:v29];
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
      v35 = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "transfer updated called with non-transfer object %@", &v34, 0xCu);
    }

    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)shouldDownloadGroupPhoto:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 _stringForKey:@"file-size"];

  v6 = objc_alloc_init(NSNumberFormatter);
  v7 = [v6 numberFromString:v5];
  v8 = [v7 unsignedIntegerValue];

  if (v8 >= 0x20C801 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "**Not** downloading group photo, too big. Size: %lu", &v11, 0xCu);
    }
  }

  return v8 < 0x20C801;
}

- (void)receivedGroupPhotoUpdate:(id)a3 chat:(id)a4 sender:(id)a5 isHidden:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v70 = a5;
  v11 = [IMFileTransfer guidForFileTransferDictionary:v9];
  v12 = [v10 groupPhotoGuid];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Received group photo update.", buf, 2u);
    }
  }

  if (v12 | v11)
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
          v19 = [v69 localPath];
          *buf = 138412290;
          v79 = v19;
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
            v21 = [v10 guid];
            *buf = 138412802;
            v79 = v11;
            v80 = 2112;
            v81 = v12;
            v82 = 2112;
            v83 = v21;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Received group photo with the same guid as we have -- dropping this message. Incoming guid: %@ existing guid: %@ chatGuid: %@", buf, 0x20u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = v10;
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

    v23 = [(MessageServiceSession *)self messageStore];
    v24 = [v23 itemWithGUID:v68];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = v24;
        if ([v65 actionType] == &dword_0 + 1 || objc_msgSend(v65, "actionType") == &dword_0 + 3)
        {
          v25 = [(MessageServiceSession *)self messageStore];
          v26 = IMMessageGuidFromIMFileTransferGuid();
          v63 = [v25 itemWithGUID:v26];

          v27 = [v63 time];
          v28 = [v65 time];
          v29 = [v27 compare:v28] == -1;

          if (!v29)
          {

LABEL_45:
LABEL_46:
            v32 = [v9 count] == 0;
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

              [(MessageServiceSession *)self groupPhotoDownloadCompletedForChat:v10 fileTransferError:0 success:1 transferGuid:0 sender:v70 isHidden:0];
            }

            else
            {
              if (v33)
              {
                v34 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v79 = v70;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Received group photo update with non-empty fileTransferDict, from %@", buf, 0xCu);
                }
              }

              v35 = objc_alloc_init(IMFileTransfer);
              [v35 _updateWithDictionaryRepresentationForWhitelistedKeys:v9];
              v66 = [v35 guid];
              if ([(MessageServiceSession *)self shouldDownloadGroupPhoto:v35])
              {
                if ([v66 length])
                {
                  v36 = +[IMDFileTransferCenter sharedInstance];
                  v37 = [v35 guid];
                  [v36 addTransfer:v35 forGUID:v37];

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
                  v77 = v66;
                  v48 = [NSArray arrayWithObjects:&v77 count:1];
                  v64 = [v46 initWithSender:v70 time:v47 body:0 attributes:0 fileTransferGUIDs:v48 flags:1 error:0 guid:v62 threadIdentifier:0];

                  if ([v64 isFromMe])
                  {
                    v49 = [v64 service];
                    [IMSenderContext fromMeContextWithServiceName:v49];
                  }

                  else
                  {
                    v50 = +[IMDChatRegistry sharedInstance];
                    v51 = [v64 sender];
                    v52 = [v50 hasKnownSenderChatWithChatIdentifier:v51];

                    v49 = [v64 service];
                    [IMSenderContext contextWithKnownSender:v52 serviceName:v49];
                  }
                  v61 = ;

                  v53 = [(MessageServiceSession *)self attachmentController];
                  v54 = [v70 _stripFZIDPrefix];
                  v76 = v70;
                  v55 = [NSArray arrayWithObjects:&v76 count:1];
                  v56 = IMServiceNameForCanonicalIDSAddresses();
                  v71[0] = _NSConcreteStackBlock;
                  v71[1] = 3221225472;
                  v71[2] = sub_2EF8C;
                  v71[3] = &unk_112818;
                  v71[4] = self;
                  v72 = v10;
                  v73 = v66;
                  v74 = v70;
                  v75 = a6;
                  [v53 retrieveAttachmentsForMessage:v64 inlineAttachments:0 displayID:v54 topic:v56 comingFromStorage:0 shouldForceAutoDownload:1 senderContext:v61 completionBlock:v71];

                  v57 = +[IMDAttachmentStore sharedInstance];
                  v58 = [v64 guid];
                  [v57 storeAttachment:v35 associateWithMessageWithGUID:v58];
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
              v81 = v12;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Attempting to update photo with an older group action item. transferGuid: %@, itemGuid: %@", buf, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = v10;
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
              v81 = v12;
              _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "Attempting to update photo with an invalid group action item. transferGuid: %@, itemGuid: %@", buf, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = v10;
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
            v81 = v12;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Attempting to update group photo with invalid chat item type. transferGuid: %@, itemGuid: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = v10;
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
        v81 = v12;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Overriding isHidden to show because we are missing the item locally. transferGuid: %@, itemGuid: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v10;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
      }
    }

    a6 = 0;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v10 guid];
      *buf = 138412290;
      v79 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Received no GUID, and we already don't have one -- dropping this message. ChatGuid: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = v10;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

LABEL_100:
}

- (id)fileTransferDictionaryForChat:(id)a3
{
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v3 groupPhotoGuid];

  v6 = [v4 transferForGUID:v5];
  v7 = [v6 _dictionaryToSend];

  return v7;
}

- (id)_messageDictionaryForDeleteCommandShouldResetPreference:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"resetPreference"];
  }

  v11 = @"KeepMessages";
  v12 = v4;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 existingChatWithGUID:v7];

  v10 = [v9 wasReportedAsJunk];
  v11 = [(MessageServiceSession *)self ckUtilities];
  v12 = [v11 cloudKitSyncingEnabled];

  v13 = [v6 objectForKeyedSubscript:IMDDeleteCommandIsScheduledMessageKey];

  v14 = v12 | v10 | (v13 != 0);
  if ((v12 | v10) & 1 | (v13 != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v36 = v12;
        *&v36[4] = 1024;
        *&v36[6] = v10;
        *v37 = 1024;
        *&v37[2] = v13 != 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Forwarding delete command to all other devices: cloudKitSyncingEnabled: %d wasReportedJunk: %d isScheduledMessage: %d", buf, 0x14u);
      }
    }

    goto LABEL_11;
  }

  v16 = [(MessageServiceSession *)self deliveryController];
  v17 = [v16 pairedDevice];

  v18 = IMOSLoggingEnabled();
  if (v17)
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
      v21 = v34;
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = [(MessageServiceSession *)self idsAccount];
      v20 = [(MessageServiceSession *)self callerURIUsingCalleeURI:0];
      if (!v21)
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
      v25 = [v24 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v36 = v6;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Forwarding delete command :%@", buf, 0xCu);
        }
      }

      v27 = [NSNumber numberWithInteger:181];
      v28 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v29 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v27, IDSSendMessageOptionCommandKey, v25, IDSSendMessageOptionDataToEncryptKey, v28, IDSSendMessageOptionTimeoutKey, 0];

      v30 = [(MessageServiceSession *)self deliveryController];
      v31 = +[NSDictionary dictionary];
      v32 = [NSSet setWithArray:v33];
      [v30 sendMessageDictionary:v31 encryptDictionary:1 fromID:v20 fromAccount:v21 toURIs:v32 toGroup:0 priority:300 options:v29 willSendBlock:0 completionBlock:&stru_112838];

      goto LABEL_33;
    }

LABEL_23:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *v36 = v21;
        *&v36[8] = 2112;
        *v37 = v20;
        *&v37[8] = 2112;
        v38 = v6;
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
      *v36 = v6;
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

- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [(MessageServiceSession *)self ckUtilities];
  v8 = [v7 cloudKitSyncingEnabled];

  if (v8)
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

  v10 = [(MessageServiceSession *)self deliveryController];
  v11 = [v10 pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (v11)
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
    v14 = [v13 existingChatWithGUID:v6];

    if (v14)
    {
      v30 = 0;
      v15 = _LastAddressedURIForChatLogMetricIfNeeded(v14, 0, self, &v30, 0);
      v16 = v30;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = [(MessageServiceSession *)self idsAccount];
      v15 = [(MessageServiceSession *)self callerURIUsingCalleeURI:0];
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    if (v15 && [v15 length])
    {
      v17 = objc_alloc_init(NSMutableArray);
      v18 = v17;
      if (v8)
      {
        [v17 addObject:v15];
      }

      else
      {
        [v17 addObject:IDSDefaultPairedDevice];
      }

      v21 = JWEncodeDictionary();
      v22 = [v21 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v29;
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
      v32[3] = v22;
      v31[4] = IDSSendMessageOptionTimeoutKey;
      v24 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      v32[4] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];

      v26 = [(MessageServiceSession *)self deliveryController];
      v27 = +[NSDictionary dictionary];
      v28 = [NSSet setWithArray:v18];
      [v26 sendMessageDictionary:v27 encryptDictionary:1 fromID:v15 fromAccount:v16 toURIs:v28 toGroup:0 priority:300 options:v25 willSendBlock:0 completionBlock:&stru_112858];

      goto LABEL_33;
    }

LABEL_19:
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v34 = v16;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v29;
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
      v34 = v29;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Recently Deleted | iCloud syncing not enabled, dropping recover command to all other devices, (command %@) cloudkitSyncingEnabled: NO", buf, 0xCu);
    }
  }

LABEL_34:
}

- (void)updateDisplayName:(id)a3 fromDisplayName:(id)a4 fromID:(id)a5 forChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8 messageID:(id)a9
{
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v15 = a6;
  v39 = a8;
  v16 = a9;
  v38 = a7;
  v17 = a7;
  [(MessageServiceSession *)self canonicalizeChatIdentifier:&v38 style:&v39];
  v18 = v38;

  if (v18)
  {
    v19 = +[IMDChatRegistry sharedInstance];
    v20 = [v19 existingChatWithGUID:v15];

    if (!v20)
    {
      v20 = [(MessageServiceSession *)self chatForChatIdentifier:v18 style:v39 updatingAccount:1];
    }

    v37 = 0;
    v27 = _LastAddressedURIForChatLogMetricIfNeeded(v20, v30, self, &v37, 0);
    v26 = v37;
    [(MessageServiceSession *)self _fixParticipantsForChat:v20];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v41 = v28;
        v42 = 2112;
        v43 = v20;
        v44 = 2112;
        v45 = v15;
        v46 = 2112;
        v47 = v27;
        v48 = 2112;
        v49 = v18;
        v50 = 1024;
        v51 = v39;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Request to update name: %@   forChat: %@ lastAddressed: %@  (GUID: %@  Identifier: %@  Style: %c)", buf, 0x3Au);
      }
    }

    v22 = [(MessageServiceSession *)self groupController];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_30440;
    v32[3] = &unk_112880;
    v23 = v28;
    v33 = v23;
    v24 = v15;
    v34 = v24;
    v25 = v18;
    v35 = v25;
    v36 = v39;
    [v22 setName:v23 fromName:v29 forChat:v20 fromID:v27 fromAccount:v26 messageID:v16 session:self completionBlock:v32];

    v31.receiver = self;
    v31.super_class = MessageServiceSession;
    [(MessageServiceSession *)&v31 updateDisplayName:v23 fromDisplayName:v29 fromID:v30 forChatID:v24 identifier:v25 style:v39 messageID:v16];
  }
}

- (id)_generateAndStoreGroupActionItemForChat:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMFeatureFlags sharedFeatureFlags];
  v9 = [v8 isBIAEnabled];

  if (v9)
  {
    if (v6)
    {
      v10 = [IMGroupActionItem alloc];
      v11 = +[NSDate date];
      v12 = +[NSString stringGUID];
      v13 = [v10 initWithSender:v7 time:v11 guid:v12 type:3];

      [v13 setActionType:0];
      v14 = [(MessageServiceSession *)self service];
      v15 = [v14 internalName];
      [v13 setService:v15];

      v16 = [(MessageServiceSession *)self account];
      v17 = [v16 accountID];
      [v13 setAccountID:v17];

      v18 = [(MessageServiceSession *)self account];
      v19 = [v18 loginID];
      [v13 setAccount:v19];

      v20 = [(MessageServiceSession *)self messageStore];
      v21 = [v20 storeItem:v13 forceReplace:0];

      v22 = [(MessageServiceSession *)self chatStore];
      v23 = [v21 guid];
      [v22 addMessageWithGUID:v23 toChat:v6];

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

- (void)sendCommand:(id)a3 withProperties:(id)a4 toPerson:(id)a5 toChatID:(id)a6 identifier:(id)a7 style:(unsigned __int8)a8
{
  v68 = a3;
  v14 = a4;
  v67 = a5;
  v66 = a6;
  v15 = a7;
  v77 = a8;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v88 = v68;
      v89 = 2112;
      v90 = v14;
      v91 = 2112;
      v92 = v67;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Request to send command: %@   with properties: %@   to person: %@", buf, 0x20u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  if (v15)
  {
    v76 = v15;
    [(MessageServiceSession *)self canonicalizeChatIdentifier:&v76 style:&v77];
    v69 = v76;

    v17 = [(MessageServiceSession *)self chatForChatIdentifier:v69 style:v77 updatingAccount:1];
    v75 = 0;
    v70 = _LastAddressedURIForChatLogMetricIfNeeded(v17, 0, self, &v75, 0);
    v18 = v75;

    if (v70 && v18)
    {
LABEL_12:
      v65 = v18;
      if ([(MessageServiceSession *)self _isDeviceRegisteredForAccount:v18])
      {
        v21 = [v68 unsignedIntValue];
        v22 = IMOSLoggingEnabled();
        if (v21 == 60001)
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

          v28 = [v14 objectForKey:?];
          -[MessageServiceSession overwritePerChatReadReceiptSettingsWithGlobalValue:](self, "overwritePerChatReadReceiptSettingsWithGlobalValue:", [v28 BOOLValue]);

          v29 = objc_alloc_init(NSMutableDictionary);
          v30 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v68 unsignedIntValue]);
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
          v52 = [v14 objectForKey:@"GlobalReadReceiptChangedValue"];
          v80[1] = @"gV";
          v81[0] = v52;
          v53 = [v14 objectForKey:@"GlobalReadReceiptVersionIDKey"];
          v81[1] = v53;
          v54 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];

          v78[0] = @"gC";
          v55 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v68 unsignedIntValue]);
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

          v58 = [(MessageServiceSession *)self deliveryController];
          v59 = [NSSet setWithObject:v70];
          [v58 sendMessageDictionary:v56 encryptDictionary:1 fromID:v70 fromAccount:v65 toURIs:v59 toGroup:0 priority:300 options:v62 willSendBlock:0 completionBlock:&stru_1128E0];

          goto LABEL_66;
        }

        v20 = v18;
        if (v21 == 60000)
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
          v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v68 unsignedIntValue]);
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
          v36 = [v34 allKeys];
          v37 = [v36 countByEnumeratingWithState:&v71 objects:v84 count:16];
          if (v37)
          {
            v38 = *v72;
            do
            {
              for (i = 0; i != v37; i = i + 1)
              {
                if (*v72 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = *(*(&v71 + 1) + 8 * i);
                v41 = [v34 objectForKey:v40];
                v42 = [v14 objectForKey:v40];
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

              v37 = [v36 countByEnumeratingWithState:&v71 objects:v84 count:16];
            }

            while (v37);
          }

          v82[0] = @"gC";
          v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v68 unsignedIntValue]);
          v83[0] = v44;
          v83[1] = v35;
          v82[1] = @"pID";
          v82[2] = @"cID";
          v83[2] = v66;
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

          v47 = [(MessageServiceSession *)self deliveryController];
          v48 = [NSSet setWithObject:v70];
          [v47 sendMessageDictionary:v45 encryptDictionary:1 fromID:v70 fromAccount:v65 toURIs:v48 toGroup:0 priority:300 options:v60 willSendBlock:0 completionBlock:&stru_1128C0];

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
          v88 = v68;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Not sending message type: %@   => not supported", buf, 0xCu);
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_66:
          v20 = v65;
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

  v20 = [(MessageServiceSession *)self idsAccount];

  if (v19)
  {
    v18 = v20;
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
  v5 = [v4 intValue];

  if (v5)
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
    v7 = [(MessageServiceSession *)self accounts];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(MessageServiceSession *)self logoutServiceSessionWithAccount:*(*(&v19 + 1) + 8 * i)];
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
    v7 = [(MessageServiceSession *)self accounts];
    v12 = [v7 countByEnumeratingWithState:&v15 objects:v24 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v7);
          }

          [(MessageServiceSession *)self loginServiceSessionWithAccount:*(*(&v15 + 1) + 8 * j)];
        }

        v12 = [v7 countByEnumeratingWithState:&v15 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)_iMessageBagLoaded:(id)a3
{
  v4 = a3;
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

- (void)requestProperty:(id)a3 ofPerson:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Requesting property: %@   for person: %@", &v12, 0x16u);
    }
  }

  [(MessageServiceSession *)self _logLocalInfo];
  if ([v6 length])
  {
    v9 = [v7 length] == 0;
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
        v13 = v6;
        v14 = 2112;
        v15 = v7;
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

- (unint64_t)_failuresForID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(NSMutableDictionary *)self->_failureMap objectForKey:v4];
        v10 = 138412546;
        v11 = v4;
        v12 = 2048;
        v13 = [v6 unsignedIntegerValue];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Failures For ID %@ are %lu", &v10, 0x16u);
      }
    }

    v7 = [(NSMutableDictionary *)self->_failureMap objectForKey:v4];
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_incrementDecryptionFailureForID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    failureMap = self->_failureMap;
    if (!failureMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v7 = self->_failureMap;
      self->_failureMap = Mutable;

      failureMap = self->_failureMap;
    }

    v8 = [(NSMutableDictionary *)failureMap objectForKey:v4];
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([v8 intValue] + 1));

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412546;
        v12 = v4;
        v13 = 1024;
        v14 = [v9 intValue];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Incrementing failure for ID: %@ to %d", &v11, 0x12u);
      }
    }

    [(NSMutableDictionary *)self->_failureMap setObject:v9 forKey:v4];
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

- (void)addItemToRecentsIfApplicable:(id)a3
{
  v3 = a3;
  v4 = [v3 balloonBundleID];
  v5 = [v4 isEqualToString:IMBalloonPluginIdentifierHandwriting];

  if (v5)
  {
    v6 = [v3 payloadData];
    v7 = IMSharedHelperMD5OfData();
    v8 = +[IMRecentItemsList sharedInstance];
    v9 = [v3 balloonBundleID];
    [v8 addRecentItemWithData:v6 GUID:v7 infoDictionary:0 forDomain:v9];
  }

  else
  {
    v10 = [v3 fileTransferGUIDs];
    v11 = [v10 count];

    if (v11)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v3 fileTransferGUIDs];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v12);
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
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (BOOL)_transferIsValidForServiceSession:(id)a3
{
  v4 = a3;
  v5 = [v4 accountID];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(MessageServiceSession *)self accounts];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      v12 = [v4 accountID];
      v13 = [v11 accountID];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        goto LABEL_12;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!v5)
  {
    v16 = +[IMDAccountController sharedInstance];
    v17 = [(MessageServiceSession *)self service];
    v6 = [v16 activeAccountsForService:v17];

    if ([v6 count] != &dword_0 + 1)
    {
      if ([v6 count] < 2)
      {
        v15 = 0;
      }

      else
      {
        v19 = [v6 objectAtIndex:0];
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

- (id)callerURIUsingCalleeURI:(id)a3
{
  v4 = [(MessageServiceSession *)self messageServiceTypeForURI:a3];

  return [(MessageServiceSession *)self callerURIForMessageServiceType:v4];
}

- (id)callerURIForMessageServiceType:(unsigned int)a3
{
  v40 = IMPreferredAccountMap();
  v4 = [v40 objectForKey:IMServiceNameiMessage];
  v42 = [v4 objectForKey:@"guid"];

  v41 = [objc_opt_class() idsAccounts];
  if (v42)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = v41;
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
        v10 = [v9 uniqueID];
        v11 = [v10 isEqualToString:v42];

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

      v13 = v9;

      if (a3 == 1 && v13)
      {
        v14 = v13;
        v13 = [(MessageServiceSession *)self bizIDSAccountFromMadridIDSAccount:v14];
      }

      if (v13)
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
      v17 = [(MessageServiceSession *)self accounts];
      *buf = 138412546;
      v57 = v42;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "No ids account found with that account id: %@, accounts: %@", buf, 0x16u);
    }
  }

  v18 = objc_alloc_init(NSMutableArray);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = v41;
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
  v13 = [v18 firstObject];
  if (v13)
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

    if (a3)
    {
      [(MessageServiceSession *)self fallBackBizIDSAccount];
    }

    else
    {
      [v19 anyObject];
    }
    v13 = ;

    if (!v13)
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
  v28 = [(MessageServiceSession *)self callerURIForIDSAccount:v13];
  if ([v28 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = v41;
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
      v36 = [v13 registeredURIs];
      *buf = 138412802;
      v57 = v28;
      v58 = 2112;
      v59 = v13;
      v60 = 2112;
      v61 = v36;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "found caller id (%@) from ids account %@, registered URIs %@", buf, 0x20u);
    }
  }

LABEL_69:

  return v28;
}

- (unsigned)messageServiceTypeForURI:(id)a3
{
  v3 = a3;
  if ([v3 length])
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

- (void)replayMessage:(id)a3
{
  v35 = a3;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v35;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Replaying message %@", buf, 0xCu);
    }
  }

  if (!v35 && IMOSLoggingEnabled())
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
    v33 = v35;
    v5 = [v33 loginID];
    v6 = [v33 accountUniqueID];
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
        v12 = [v11 account];
        v13 = [v12 uniqueID];
        v14 = [v13 isEqualToIgnoringCase:v6];

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
          v16 = [v11 account];
          v17 = [v16 loginID];
          *buf = 138412546;
          v46 = v17;
          v47 = 2112;
          v48 = v5;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Got push handler account %@ %@", buf, 0x16u);
        }
      }

      v18 = v11;

      if (v18)
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
        v25 = [v24 account];
        v26 = [v25 loginID];
        v27 = [v26 isEqualToIgnoringCase:v5];

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
          v29 = [v24 account];
          v30 = [v29 loginID];
          *buf = 138412546;
          v46 = v30;
          v47 = 2112;
          v48 = v5;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Got push handler account %@ %@", buf, 0x16u);
        }
      }

      v18 = v24;

      if (v18)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_37:
    }

    v18 = [*&self->IMDAppleServiceSession_opaque[v32] firstObject];
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v18;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "MessageReplay: Could not fine account using loginID. Picking a random push handler %@", buf, 0xCu);
      }
    }

LABEL_47:
    [v18 replayMessage:v33];
  }
}

- (void)enqueReplayMessageCallback:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_342E4;
    v6[3] = &unk_112930;
    v7 = v4;
    [(MessageServiceSession *)self _enqueueBlock:v6 withTimeout:@"Callback block for message replay batch" description:10.0];
  }
}

- (void)handler:(id)a3 payloadDataRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got payload Data request %@", &v10, 0xCu);
    }
  }

  v9 = [(MessageServiceSession *)self attachmentController];
  [v9 handlePayloadDataRequest:v7 attempts:0];
}

- (void)handler:(id)a3 payloadDataResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 objectForKey:@"guid"];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got payload Data response for message %@", &v11, 0xCu);
    }
  }

  v10 = [(MessageServiceSession *)self attachmentController];
  [v10 handlePayloadDataResponse:v7];
}

- (void)preWarm
{
  v4 = +[IMTransferServicesController sharedInstance];
  v3 = [(MessageServiceSession *)self GUID];
  [v4 preWarmMMCSForOwnerID:v3];
}

- (void)renewTTLForScheduledAttachmentTransfer:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 guid];
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Scheduled Message | Renewing TTL for scheduled message attachment %@", buf, 0xCu);
    }
  }

  v7 = [v4 userInfo];
  v8 = objc_alloc_init(FTiMessageRequestMMCSFileRefreshToken);
  AttachmentRefreshUtilConfigureStickerToken(v8, v7);
  v9 = [(MessageServiceSession *)self attachmentRefreshDeliveryController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_348BC;
  v11[3] = &unk_112958;
  v12 = v4;
  v10 = v4;
  [v9 sendFTMessage:v8 attempts:0 withCompletionBlock:v11];
}

- (void)didReplaceMessage:(id)a3 newMessage:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 scheduleType] == &dword_0 + 2 || objc_msgSend(v6, "scheduleType") == &dword_0 + 2)
  {
    v7 = [(MessageServiceSession *)self scheduledMessageCoordinator];
    [v7 handleMessageDidReplace:v8 newMessage:v6];
  }
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting priority message for message guids %@", buf, 0xCu);
    }
  }

  if ([v4 count])
  {
    v6 = [(MessageServiceSession *)self idsAccount];
    if (v6 && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
    {
      v7 = [(MessageServiceSession *)self deliveryController];
      v8 = [v7 localDevice];

      v28 = IDSCopyIDForDevice();
      v9 = v8 != 0;
      v10 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v10)
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v32 = v4;
            v33 = 2112;
            v34 = v28;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "  Reflect priority message for message guids: %@ to watch using destination: %@", buf, 0x16u);
          }
        }

        v25 = [(MessageServiceSession *)self callerURIForIDSAccount:v6];
        v12 = objc_opt_new();
        [v12 setObject:v4 forKeyedSubscript:@"pm"];
        v27 = JWEncodeDictionary();
        v26 = [v27 _FTCopyGzippedData];
        v30[0] = v26;
        v29[0] = IDSSendMessageOptionDataToEncryptKey;
        v29[1] = IDSSendMessageOptionUUIDKey;
        v13 = [v4 objectAtIndexedSubscript:0];
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

        v18 = [(MessageServiceSession *)self deliveryController];
        v19 = +[NSDictionary dictionary];
        v20 = [NSSet setWithObject:v28];
        [v18 sendMessageDictionary:v19 encryptDictionary:1 fromID:v25 fromAccount:v6 toURIs:v20 toGroup:0 priority:300 options:v16 willSendBlock:0 completionBlock:&stru_112978];
      }

      else if (v10)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v4;
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
          v32 = v4;
          v33 = 2112;
          v34 = v6;
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
    v3 = [(MessageServiceSession *)self account];
    v4 = [v3 service];
    v5 = [v4 supportsCapability:IMServiceCapabilityGroupIdentity] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_blastDoorProcessingWithIMMessageItem:(id)a3 chat:(id)a4 account:(id)a5 fromToken:(id)a6 fromIDSID:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 participants:(id)a10 groupName:(id)a11 groupID:(id)a12 isFromMe:(BOOL)a13 isLastFromStorage:(BOOL)a14 isFromStorage:(BOOL)a15 batchContext:(id)a16 hideLockScreenNotification:(BOOL)a17 wantsCheckpointing:(BOOL)a18 needsDeliveryReceipt:(id)a19 messageBalloonPayloadAttachmentDictionary:(id)a20 inlineAttachments:(id)a21 attributionInfoArray:(id)a22 nicknameDictionary:(id)a23 availabilityVerificationRecipientChannelIDPrefix:(id)a24 availabilityVerificationRecipientEncryptionValidationToken:(id)a25 availabilityOffGridRecipientSubscriptionValidationToken:(id)a26 availabilityOffGridRecipientEncryptionValidationToken:(id)a27 idsService:(id)a28 messageContext:(id)a29 isFromTrustedSender:(BOOL)a30 isFromSnapTrustedSender:(BOOL)a31 wasContextUsed:(BOOL)a32 isBlackholed:(BOOL)a33 shouldTrackForRequery:(BOOL)a34 isFiltered:(int64_t)a35 spamDetectionSource:(int64_t)a36 completionBlock:(id)a37
{
  v133 = a3;
  v42 = a4;
  v121 = a5;
  v119 = a6;
  v117 = a7;
  v128 = a8;
  v43 = a9;
  v130 = a10;
  v115 = a11;
  v44 = a12;
  v103 = a16;
  v45 = a19;
  v46 = a20;
  v47 = a21;
  v101 = a22;
  v106 = a23;
  v110 = a24;
  v112 = a25;
  v108 = a26;
  v105 = a27;
  v125 = a28;
  v109 = a29;
  v48 = a37;
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v133;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Starting processing post blastdoor for messageItem: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v42;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "   Chat: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v121;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "   Account: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v119;
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "   fromToken: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v117;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "   fromIDSID: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v128;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "   fromIdentifier: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v43;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "   toIdentifier: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v130;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "   participants: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v115;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "   groupName: %@", &buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = [v133 isTypingMessage];
      v60 = @"NO";
      if (v59)
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
      if (a13)
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
      if (a14)
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
      if (a15)
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
      if (a30)
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
  v96 = [v133 guid];
  v181[0] = _NSConcreteStackBlock;
  v181[1] = 3221225472;
  v181[2] = sub_3668C;
  v181[3] = &unk_1129A0;
  v70 = v43;
  v182 = v70;
  v123 = [v130 __imArrayByApplyingBlock:v181];
  v71 = [v128 _stripFZIDPrefix];
  v95 = v48;
  if ([v130 count] <= 2 && a13 && objc_msgSend(v123, "count"))
  {
    v72 = [v123 lastObject];
    v73 = [v72 _stripFZIDPrefix];

    v71 = v73;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v185 = 0x3032000000;
  v186 = sub_36714;
  v187 = sub_36724;
  v90 = v42;
  v188 = v90;
  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_3672C;
  v142[3] = &unk_112A40;
  v170 = a15;
  v142[4] = self;
  v171 = a14;
  v74 = v103;
  v143 = v74;
  v75 = v125;
  v144 = v75;
  v104 = v101;
  v145 = v104;
  v134 = v133;
  v146 = v134;
  v126 = v96;
  v147 = v126;
  v94 = v130;
  v148 = v94;
  p_buf = &buf;
  v93 = v70;
  v149 = v93;
  v172 = a13;
  v97 = v115;
  v150 = v97;
  v76 = v71;
  v151 = v76;
  v91 = v121;
  v152 = v91;
  v92 = v119;
  v153 = v92;
  v173 = a33;
  v174 = a30;
  v131 = v128;
  v154 = v131;
  v175 = v98;
  v127 = v99;
  v155 = v127;
  v176 = a32;
  v129 = v123;
  v156 = v129;
  v168 = a35;
  v102 = v44;
  v157 = v102;
  v169 = a36;
  v177 = a34;
  v107 = v106;
  v158 = v107;
  v178 = a31;
  v179 = a18;
  v100 = v117;
  v159 = v100;
  v122 = v105;
  v160 = v122;
  v120 = v108;
  v161 = v120;
  v114 = v110;
  v162 = v114;
  v116 = v112;
  v163 = v116;
  v111 = v45;
  v164 = v111;
  v124 = v109;
  v165 = v124;
  v180 = a17;
  v113 = v46;
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
  v140 = a15;
  v118 = v95;
  v139 = v118;
  v135[4] = self;
  v141 = a14;
  v80 = v74;
  v136 = v80;
  v81 = v75;
  v137 = v81;
  v82 = objc_retainBlock(v135);
  if (a15)
  {
    [(MessageServiceSession *)self noteItemProcessed:a14 batchContext:v80 usingService:v81];
  }

  if ([v134 isFromMe])
  {
    v83 = [v134 service];
    [IMSenderContext fromMeContextWithServiceName:v83];
  }

  else
  {
    v84 = +[IMDChatRegistry sharedInstance];
    v85 = [v84 hasKnownSenderChatWithChatIdentifier:v76];

    v83 = [v134 service];
    [IMSenderContext contextWithKnownSender:v85 serviceName:v83];
  }
  v86 = ;

  v87 = [(MessageServiceSession *)self attachmentController];
  v183 = v131;
  v88 = [NSArray arrayWithObjects:&v183 count:1];
  v89 = IMServiceNameForCanonicalIDSAddresses();
  [v87 retrieveAttachmentsForMessage:v134 inlineAttachments:v47 displayID:v76 topic:v89 comingFromStorage:a15 shouldForceAutoDownload:0 senderContext:v86 completionBlock:v82];

  _Block_object_dispose(&buf, 8);
}

- (void)_updateTransfersForAttributionInfoArray:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v6 fileTransferGUIDs];
    v8 = [v7 count];
    v9 = [v5 count];

    if (v8 == v9)
    {
      v10 = [v6 fileTransferGUIDs];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_3B004;
      v15[3] = &unk_1120B8;
      v16 = v5;
      [v10 enumerateObjectsUsingBlock:v15];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v6 fileTransferGUIDs];
        v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MessageServiceSession: not updating attribution info: number of guids %@ does not match number of attribution infos %@", buf, 0x16u);
      }
    }
  }
}

- (void)_handleNicknameReceived:(id)a3 fromIdentifier:(id)a4 withMessageItem:(id)a5 isSnapTrustedUser:(BOOL)a6
{
  v6 = a6;
  v30 = a3;
  v10 = a4;
  v11 = a5;
  if (IMSharedHelperNickNameEnabled())
  {
    v28 = self;
    v29 = v11;
    v12 = [v30 _stringForKey:MessageDictionaryNicknameCloudKitRecordKey];
    v13 = [v30 _dataForKey:MessageDictionaryNicknameCloudKitDecryptionRecordKey];
    v14 = [v30 _stringForKey:MessageDictionaryWallpaperUpdateKey];
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
    v18 = [v30 _dataForKey:MessageDictionaryNicknameWallpaperTagKey];
    v19 = [v30 _dataForKey:MessageDictionaryNicknameLowResWallpaperTagKey];
    v20 = [v30 _dataForKey:MessageDictionaryNicknameWallpaperMetadataTagKey];
    v21 = [v30 _dataForKey:MessageDictionaryNicknameAvatarRecipeDataTagKey];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"YES";
        if (!v6)
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
    v31[4] = v28;
    v32 = v29;
    BYTE1(v25) = !v6;
    LOBYTE(v25) = v27;
    [v24 NicknameWithRecordID:v12 URI:v10 decryptionKey:v13 wallpaperDataTag:v18 wallpaperLowResDataTag:v19 wallpaperMetadataTag:v20 avatarRecipeDataTag:v21 hasWallpaperUpdate:v25 dropNicknameForUnknownContacts:v31 withCompletionBlock:?];

    v11 = v29;
  }
}

- (void)_nicknameFetchCompletedMessage:(id)a3 synchronous:(BOOL)a4 profile:(id)a5 nickNameWasInCache:(BOOL)a6 nickNameDownloadError:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = IMOSLoggingEnabled();
  if (!v12 || v13)
  {
    if (v14)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v24 = 134218242;
        *&v24[4] = v12;
        *&v24[12] = 2112;
        *&v24[14] = v13;
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
        *&v24[4] = v12;
        *&v24[12] = 2112;
        if (v8)
        {
          v16 = @"YES";
        }

        *&v24[14] = 0;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Got NickName Object  %@ error %@ wasInCache %@", v24, 0x20u);
      }
    }

    if (!v8)
    {
      v17 = [v12 displayName];
      if ([v17 length])
      {
        v18 = IMSharedHelperNickNameEnabled();

        if (v18)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v12 displayName];
              *v24 = 138412290;
              *&v24[4] = v20;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Profile display name %@", v24, 0xCu);
            }
          }

          v21 = [(MessageServiceSession *)self broadcaster];
          v22 = [v12 dataRepresentation];
          [v21 updateNicknameData:v22];
        }
      }

      else
      {
      }
    }
  }
}

- (void)_autoReportChatAsUnknown:(id)a3 chatIsNew:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6 && v4 && [v6 isBlackholed])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v7 participants];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) ID];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    v15 = [(MessageServiceSession *)self chatRegistry];
    v16 = [v7 style];
    v17 = [v7 service];
    v18 = [v17 internalName];
    v25 = v18;
    v19 = [NSArray arrayWithObjects:&v25 count:1];
    v20 = [v7 guid];
    [v15 markAsSpamForIDs:v8 style:v16 onServices:v19 chatID:v20 queryID:0 autoReport:1];
  }
}

- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v32 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting mark unread for message (%@)", buf, 0xCu);
    }
  }

  v6 = [(MessageServiceSession *)self idsAccount];
  if (v6 && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:v4 idsAccount:v6];
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
          *v32 = v4;
          *&v32[8] = 2112;
          v33 = v7;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "  Reflect mark as unread for guid: %@ to peer devices using callerID: %@", buf, 0x16u);
        }
      }

      v29 = @"uG";
      v30 = v4;
      v25 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v26 = JWEncodeDictionary();
      v24 = [v26 _FTCopyGzippedData];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v26 length];
          v13 = [v24 length];
          *buf = 67109376;
          *v32 = v12;
          *&v32[4] = 1024;
          *&v32[6] = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "  Compressed message data from: %u to: %u in sendMessageDictionary", buf, 0xEu);
        }
      }

      v28[0] = v24;
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

      v19 = [(MessageServiceSession *)self deliveryController];
      v20 = +[NSDictionary dictionary];
      v21 = [NSSet setWithObject:v7];
      [v19 sendMessageDictionary:v20 encryptDictionary:1 fromID:v7 fromAccount:v6 toURIs:v21 toGroup:0 priority:300 options:v17 willSendBlock:0 completionBlock:&stru_112A88];
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
        *v32 = v4;
        *&v32[8] = 2112;
        v33 = v6;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "  Unable to reflect mark unread for message (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting recover junk chat for message guid %@", buf, 0xCu);
    }
  }

  v6 = [(MessageServiceSession *)self idsAccount];
  if (v6 && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:v4 idsAccount:v6];
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
          v23 = v4;
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

      v15 = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [v15 sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:v6 toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112AA8, v20[0]}];
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
        v23 = v4;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect recover junk chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting accept chat for message guid %@", buf, 0xCu);
    }
  }

  v6 = [(MessageServiceSession *)self idsAccount];
  if (v6 && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:v4 idsAccount:v6];
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
          v23 = v4;
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

      v15 = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [v15 sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:v6 toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112AC8, v20[0]}];
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
        v23 = v4;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect accept chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting mark as reviewed for chat guids %@", buf, 0xCu);
    }
  }

  v6 = [(MessageServiceSession *)self idsAccount];
  if (!v6 || ![(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
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
      v33 = v4;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "  Unable to reflect mark as reviewed for chat guids (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (![v4 count])
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
  v8 = [v4 firstObject];
  v29 = [v7 existingChatWithGUID:v8];

  v9 = [v29 lastAddressedLocalHandle];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(MessageServiceSession *)self callerURIForIDSAccount:v6];
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
        v33 = v4;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "  Reflect mark as reviewed for chat guids: %@ to peer devices using callerID: %@", buf, 0x16u);
      }
    }

    v18 = objc_opt_new();
    [v18 setObject:v4 forKeyedSubscript:@"rc"];
    v28 = JWEncodeDictionary();
    v27 = [v28 _FTCopyGzippedData];
    v31[0] = v27;
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

    v24 = [(MessageServiceSession *)self deliveryController];
    v25 = +[NSDictionary dictionary];
    v26 = [NSSet setWithObject:v15];
    [v24 sendMessageDictionary:v25 encryptDictionary:1 fromID:v15 fromAccount:v6 toURIs:v26 toGroup:0 priority:300 options:v22 willSendBlock:0 completionBlock:&stru_112AE8];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_BC318(v6, v18);
    }
  }

LABEL_15:
  return v13;
}

- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Begin reflecting junk chat for message guid %@", buf, 0xCu);
    }
  }

  v6 = [(MessageServiceSession *)self idsAccount];
  if (v6 && [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v6])
  {
    v7 = [(MessageServiceSession *)self callerURIForMessageGUID:v4 idsAccount:v6];
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
          v23 = v4;
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

      v15 = [(MessageServiceSession *)self deliveryController];
      v16 = +[NSDictionary dictionary];
      v17 = [NSSet setWithObject:v7];
      [v15 sendMessageDictionary:v16 encryptDictionary:1 fromID:v7 fromAccount:v6 toURIs:v17 toGroup:0 priority:300 options:v13 willSendBlock:0 completionBlock:{&stru_112B08, v20[0]}];
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
        v23 = v4;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Unable to reflect junk chat for message guid (%@), device is not registered for account: %@, bailing.", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldBlackholeChatFromSender:(id)a3 toRecipient:(id)a4 forAccount:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 existingSMSChatForID:v6];

  if (v9)
  {
    v10 = [v9 lastSentMessageDate];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = +[IMDAccountController sharedAccountController];
  v13 = [v12 activeAccountsAreEligibleForHawking];

  v14 = +[IMDAccountController sharedAccountController];
  v15 = [v14 receiverIsCandidateForHawking:v7];

  v16 = [IMSpamFilterHelper shouldBlackholeMessageFromSender:v6 toRecipient:v7 ifRecipientIsCandidate:v15 givenHistory:v11 forEligibleAccounts:v13];
  return v16;
}

- (BOOL)_shouldBlackholeGroupChatFromSender:(id)a3 toRecipient:(id)a4 withOtherParticipants:(id)a5 forAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v43[0] = v9;
  v43[1] = v10;
  v36 = v10;
  v13 = [NSArray arrayWithObjects:v43 count:2];
  v14 = [IMSpamFilterHelper sanitizeParticipants:v11 excludingHandles:v13];

  v15 = +[IMDChatRegistry sharedInstance];
  v37 = v9;
  v16 = [v9 _stripFZIDPrefix];
  v17 = [v15 existingChatForID:v16 account:v12];
  v18 = [v17 lastSeenMessageGuid];
  v19 = v18 != 0;

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
          v27 = [v25 _stripFZIDPrefix];
          v28 = [v26 existingChatForID:v27 account:v12];
          v29 = [v28 lastSeenMessageGuid];
          v19 = v29 != 0;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v22);
  }

  v30 = +[IMDAccountController sharedAccountController];
  v31 = [v30 activeAccountsAreEligibleForHawking];

  v32 = +[IMDAccountController sharedAccountController];
  v33 = [v32 receiverIsCandidateForHawking:v36];

  v34 = [IMSpamFilterHelper shouldBlackholeGroupMessageFromSender:v37 toRecipient:v36 ifRecipientIsCandidate:v33 withOtherParticipants:v20 givenHistory:v19 forEligibleAccounts:v31];
  return v34;
}

- (id)_pushHandlerForIDSAccount:(id)a3
{
  v4 = a3;
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
      v10 = [v9 account];
      v11 = [v10 isEqual:v4];

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
      v18 = [v17 account];
      v19 = [v18 loginID];
      v20 = [v4 loginID];
      v21 = [v19 isEqual:v20];

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

- (void)handleBreadcrumbForNewSentMessageItemIfNecessary:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 chat];
  v9 = [v8 chatIdentifier];
  v10 = [(MessageServiceSession *)self storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:v6 inChatWithIdentifier:v9];

  if ([v6 isBreadcrumb])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 consumedSessionPayloads];
      v15 = 138412546;
      v16 = v6;
      v17 = 2048;
      v18 = [v12 count];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Sending breadcrumb %@ with payload history: %tu items.", &v15, 0x16u);
    }
  }

  v13 = [v7 chat];
  v14 = [v13 chatIdentifier];
  [(MessageServiceSession *)self _updateStoredBreadcrumbIfNeeded:v10 onChat:v14];
}

- (id)storeBreadcrumbAndSetConsumedPayloadsForNewMessageItemIfNecessary:(id)a3 inChatWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [(__CFString *)v6 associatedMessageType]== &stru_F58.reserved2;
  if (([(__CFString *)v6 isTypingMessage]& 1) != 0 || [(__CFString *)v6 scheduleType]!= 0 || v8)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if ([(__CFString *)v6 isTypingMessage])
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

      v12 = [(__CFString *)v6 scheduleType];
      *buf = 138412802;
      v91 = v10;
      v92 = 2112;
      v93 = v11;
      v94 = 2048;
      v95 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Not breadcrumbing, isTypingMessage: %@, isCustomAcknowledgement: %@, scheduleType: %lu", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v9 = [(__CFString *)v6 breadcrumbText];
  if (![v9 length])
  {
    v14 = [(__CFString *)v6 balloonBundleID];
    v15 = [v14 length];

    if (!v15)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_60;
    }
  }

  v16 = [(__CFString *)v6 balloonBundleID];
  v17 = [v16 isEqualToString:IMBalloonPluginIdentifierDT];

  if ([v9 length])
  {
    v18 = [(__CFString *)v6 balloonBundleID];
    v19 = [v18 length] == 0;
  }

  else
  {
    v19 = 0;
  }

  v88 = 0;
  v20 = [(MessageServiceSession *)self _messageItemToConsumeForNewBreadcrumbMessage:v6 outBreadcrumbItems:&v88];
  v21 = v88;
  if ([(__CFString *)v6 associatedMessageType]== &dword_0 + 2)
  {
    v22 = [NSMutableArray alloc];
    v23 = IMGetConsumedSessionPayloadsForBreadcrumbItems();
    v24 = [v22 initWithArray:v23];

    v25 = [(__CFString *)v20 payloadData];
    if (v25)
    {
      v26 = v25;
      v27 = [(__CFString *)v20 associatedMessageType];
      v28 = v20;
      v29 = v17;
      v30 = v21;
      v31 = v7;
      v32 = v27;

      v33 = v32 == &dword_0 + 3;
      v7 = v31;
      v21 = v30;
      v17 = v29;
      v20 = v28;
      if (!v33)
      {
        v34 = [(__CFString *)v28 payloadData];
        [v24 addObject:v34];
      }
    }

    [(__CFString *)v6 setConsumedSessionPayloads:v24];
  }

  if ((v19 | v17))
  {
    v35 = v9;
  }

  else
  {
    v35 = [(__CFString *)v20 breadcrumbText];
  }

  v36 = v35;
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
    v83 = v7;
    v38 = [[IMAssociatedMessageItem alloc] initWithMessageItem:v20];
    v39 = [(__CFString *)v6 associatedMessageGUID];
    [v38 setAssociatedMessageGUID:v39];

    [v38 setAssociatedMessageType:3];
    [v38 setBody:v36];
    v40 = v20;
LABEL_35:
    v41 = [(__CFString *)v40 destinationCallerID];
    [v38 setDestinationCallerID:v41];

    v42 = +[IMDMessageStore sharedInstance];
    LOBYTE(v66) = 1;
    v13 = [v42 storeMessage:v38 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v66];

    v43 = IMLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [(__CFString *)v13 body];
      v45 = [v44 length];
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

    v7 = v83;

    goto LABEL_59;
  }

  v55 = [(__CFString *)v6 balloonBundleID];

  if (!v55)
  {
    v79 = [IMAssociatedMessageItem alloc];
    v77 = [(__CFString *)v6 senderInfo];
    v76 = [(__CFString *)v6 time];
    v56 = [(__CFString *)v6 isFromMe];
    v57 = 12289;
    if (v56)
    {
      v57 = 45061;
    }

    v75 = v57;
    v81 = [(__CFString *)v6 account];
    v58 = [(__CFString *)v6 accountID];
    v72 = v58;
    v74 = IMServiceNameiMessage;
    v59 = [(__CFString *)v6 handle];
    v78 = v59;
    v83 = v7;
    if (v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v7;
    }

    v73 = v60;
    v71 = [(__CFString *)v6 roomName];
    v70 = [(__CFString *)v6 unformattedID];
    v69 = [(__CFString *)v6 countryCode];
    v61 = [(__CFString *)v6 expireState];
    v68 = [(__CFString *)v6 balloonBundleID];
    v62 = [(__CFString *)v6 guid];
    v63 = [(__CFString *)v6 biaReferenceID];
    LODWORD(v67) = 0;
    v38 = [v79 initWithSenderInfo:v77 time:v76 timeRead:0 timeDelivered:0 timePlayed:0 subject:0 body:v36 bodyData:0 attributes:0 fileTransferGUIDs:0 flags:v75 guid:0 messageID:0 account:v81 accountID:v58 service:v74 handle:v73 roomName:v71 unformattedID:v70 countryCode:v69 expireState:v61 balloonBundleID:v68 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 errorType:v67 associatedMessageGUID:v62 associatedMessageType:3 associatedMessageRange:0 bizIntent:0x7FFFFFFFFFFFFFFFLL locale:0 biaReferenceID:0 messageSummaryInfo:v63 partCount:0 threadIdentifier:0 dateRecovered:{0, 0}];

    v40 = v6;
    goto LABEL_35;
  }

LABEL_32:
  v13 = 0;
LABEL_59:

LABEL_60:

  return v13;
}

- (id)_messageItemToConsumeForNewBreadcrumbMessage:(id)a3 outBreadcrumbItems:(id *)a4
{
  v5 = a3;
  v6 = [v5 associatedMessageGUID];
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 messagesWithAssociatedGUID:v6 shouldLoadAttachments:0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_55B9C;
  v33[3] = &unk_113370;
  v9 = v5;
  v34 = v9;
  v10 = [v8 __imArrayByFilteringWithBlock:v33];

  if (a4)
  {
    v11 = v10;
    *a4 = v10;
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
    v27 = v6;
    v28 = 0;
    v15 = 0;
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
        v19 = [v9 guid];
        v20 = [v18 guid];
        v21 = [v19 isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          if ([v18 associatedMessageType] == &dword_0 + 2)
          {
            v24 = v18;

            v6 = v27;
            v23 = v28;
            goto LABEL_22;
          }

          if ([v18 associatedMessageType] == &dword_0 + 3 && v15 < objc_msgSend(v18, "messageID"))
          {
            v15 = [v18 messageID];
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

    v6 = v27;
    if (v15)
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
    v24 = [v25 messageWithGUID:v6];
  }

  else
  {
    v24 = 0;
  }

LABEL_22:

  return v24;
}

- (void)_updateStoredBreadcrumbIfNeeded:(id)a3 onChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = v5;
  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = +[IMDChatRegistry sharedInstance];
    v8 = [v7 allExistingChatsWithIdentifier:v6];

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
          v14 = [v13 chatIdentifier];
          v15 = [v14 isEqualToString:v6];

          if (v15)
          {
            v16 = +[IMDBroadcastController sharedProvider];
            v17 = [v16 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v13, "isBlackholed")}];
            [v13 accountID];
            v19 = v18 = v6;
            v20 = [v13 chatIdentifier];
            v21 = [v13 style];
            v22 = [v13 groupID];
            v23 = [v13 personCentricID];
            [v17 account:v19 chat:v20 style:v21 chatProperties:0 groupID:v22 chatPersonCentricID:v23 messageReceived:v24];

            v6 = v18;
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

- (void)cancelScheduledMessageWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(MessageServiceSession *)self deliveryController];
  [v5 cancelScheduledMessageWithGUID:v4 fromID:@"0000000000"];
}

- (void)cancelScheduledMessageWithGUID:(id)a3 destinations:(id)a4 cancelType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[IMDChatStore sharedInstance];
  v11 = [v10 chatsGUIDsForMessageWithGUID:v9];
  v16 = [v11 lastObject];

  v12 = +[IMDChatRegistry sharedInstance];
  v13 = [v12 existingChatWithGUID:v16];

  v14 = _LastAddressedURIForChatLogMetricIfNeeded(v13, 0, self, 0, 0);
  v15 = [(MessageServiceSession *)self deliveryController];
  [v15 cancelScheduledMessageWithGUID:v9 fromID:v14 destinations:v8 cancelType:a5];
}

- (void)_notifyOfSendMessage:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 chat];
  [(MessageServiceSession *)self _notifyNameAndPhotoControllerOfMessage:v7 onChat:v8];

  [(MessageServiceSession *)self _updateBlackholeStatusIfNeededWithMessage:v7 withContext:v6];

  [(MessageServiceSession *)self _updateLastDeviceActivityForCloudKit];
}

- (void)_notifyNameAndPhotoControllerOfMessage:(id)a3 onChat:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isTypingMessage] & 1) == 0 && IMSharedHelperNickNameEnabled() && objc_msgSend(v5, "shouldSendMeCard"))
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
    [v8 queueChatToSendNicknamePostUploadIfNeeded:v6];
  }
}

- (void)_updateBlackholeStatusIfNeededWithMessage:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isTypingMessage] & 1) == 0)
  {
    v7 = [v6 chat];
    v8 = [v7 isBlackholed];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v6 chat];
          v11 = [v10 guid];
          v19 = 138412290;
          v20 = v11;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Response is causing chat (%@) to be removed from blackhole.", &v19, 0xCu);
        }
      }

      v12 = [v6 chat];
      [v12 updateIsBlackholed:0];

      v13 = [v6 chat];
      v14 = [v13 participants];
      v15 = [v14 count] == &dword_0 + 1;

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
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = +[NSDate date];
    IMSetDomainValueForKey();
  }
}

- (id)_setCallerIDOnMessage:(id)a3 onChat:(id)a4 withIDSAccount:(id *)a5 withServiceSession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v10 guid];
      v28 = 138412290;
      v29 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Picking callerID for guid %@", &v28, 0xCu);
    }
  }

  v15 = -[MessageServiceSession _lastAddressedURIForChatLogMetricIfNeededOnChat:withIDSAccount:withServiceSession:shouldLog:](self, "_lastAddressedURIForChatLogMetricIfNeededOnChat:withIDSAccount:withServiceSession:shouldLog:", v11, a5, v12, [v10 isTypingMessage] ^ 1);
  v16 = [v10 balloonBundleID];
  v17 = IMBalloonExtensionIDWithSuffix();
  if ([v16 isEqualToString:v17])
  {
  }

  else
  {
    v18 = [v10 balloonBundleID];
    v19 = IMBalloonExtensionIDWithSuffix();
    v20 = [v18 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  v21 = [v10 account];
  v22 = v21;
  if (v21)
  {
    if (([v21 hasPrefix:@"e:"] & 1) != 0 || objc_msgSend(v22, "hasPrefix:", @"E:"))
    {
      v23 = [v22 _stripFZIDPrefix];

      v24 = [v23 _bestGuessURI];

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = v23;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Rewritting callerURI using %@ for PeopleMessageService balloon", &v28, 0xCu);
        }
      }

      v15 = v24;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_19:
  v26 = [v15 _stripFZIDPrefix];
  [v10 setDestinationCallerID:v26];

  return v15;
}

- (BOOL)_handleDeviceRegistrationForMessage:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 idsAccount];
  v9 = [(MessageServiceSession *)self _isDeviceRegisteredForAccount:v8];

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 idsAccount];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, " ** Device is not regisistered for account %@, failing send message", &v14, 0xCu);
      }
    }

    [v6 setErrorCode:33];
    if ([v6 scheduleType] == &dword_0 + 2)
    {
      [(MessageServiceSession *)self _handleScheduledMessageSendFailure:v6];
    }

    [(MessageServiceSession *)self _didSendMessage:v6 withContext:v7 forceDate:0 fromStorage:0];
    [(MessageServiceSession *)self _FTAWDLogForMessage:v6 withContext:v7];
    v12 = +[IMPowerLog sharedInstance];
    [v12 logMessageSendFailureWithError:@"DeviceNotRegistered"];

    [(MessageServiceSession *)self _stopTimingMessageSend];
  }

  return v9;
}

- (BOOL)_failSendingMessageIfNeeded:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v12 = v6;
    v13 = v7;
    im_dispatch_after();
    [(MessageServiceSession *)self _storeSentMessage:v12 withContext:v13];
  }

  return v8;
}

- (BOOL)_handleTypingIndicatorMessage:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageServiceSession *)self _shouldOverrideTypingIndicator];
  if (v8 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "The server has disabled typing indicators via the iMessage config bag!", &v28, 2u);
    }
  }

  v10 = [v7 chat];
  if ([v10 style] == 45)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[IMFeatureFlags sharedFeatureFlags];
    if ([v12 isGroupTypingIndicatorsEnabled])
    {
      v13 = [v7 chat];
      v11 = [v13 style] != 43;
    }

    else
    {
      v11 = 1;
    }
  }

  if ((v8 | v11) == 1)
  {
    if (([v6 isFinished] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v7 chat];
          v25 = [v24 style];
          v26 = @"NO";
          if (v8)
          {
            v26 = @"YES";
          }

          v28 = 67109378;
          LODWORD(v29[0]) = v25;
          WORD2(v29[0]) = 2112;
          *(v29 + 6) = v26;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Not sending typing indicator to chat style: %c typingIndicatorOverride: %@", &v28, 0x12u);
        }
      }

      goto LABEL_40;
    }

    if ([v6 isFinished] && objc_msgSend(v6, "isEmpty"))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v7 chat];
          v16 = [v15 style];
          v17 = @"NO";
          if (v8)
          {
            v17 = @"YES";
          }

          v28 = 67109378;
          LODWORD(v29[0]) = v16;
          WORD2(v29[0]) = 2112;
          *(v29 + 6) = v17;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not sending a cancel typing indicator to chat style: %c typingIndicatorOverride: %@", &v28, 0x12u);
        }
      }

LABEL_40:
      [(MessageServiceSession *)self _storeSentMessage:v6 withContext:v7];
      [(MessageServiceSession *)self _didSendMessage:v6 withContext:v7 forceDate:0 fromStorage:0];
      v22 = 0;
      goto LABEL_41;
    }
  }

  if (![(MessageServiceSession *)self _shouldSendAppTypingIndicator])
  {
    if ([v6 isTypingMessage])
    {
      v18 = [v6 balloonBundleID];
      v19 = [v18 length] == 0;

      if (!v19)
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v28 = 138412290;
            v29[0] = v6;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Not sending app typing indicator due to server overrride for msg %@", &v28, 0xCu);
          }
        }

        goto LABEL_40;
      }
    }
  }

  if (([v6 isTypingMessage] & 1) == 0)
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
  v4 = [v3 BOOLValue];

  return v4 ^ 1;
}

- (id)_processMessageForSending:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_8AAF4;
  v26 = sub_8AB04;
  v27 = 0;
  v17 = [v6 isBeingRetried];
  v8 = [v7 serviceSession];
  v9 = [v7 chat];
  v10 = [v9 chatIdentifier];
  v11 = [v7 chat];
  v12 = [v11 style];
  v13 = [v7 imdAccount];
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
  v14 = v7;
  v19 = v14;
  v20 = &v22;
  [v8 processMessageForSending:v6 toChat:v10 style:v12 allowWatchdog:v17 ^ 1 account:v13 didReplaceMessageBlock:v21 completionBlock:v18];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)_processMessageForSendingToGroupIfNeeded:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_8AAF4;
  v28 = sub_8AB04;
  v29 = 0;
  v7 = [v6 serviceSession];
  v8 = [v7 groupController];
  v9 = [v6 chat];
  v10 = [v6 fromURI];
  v11 = [v6 idsAccount];
  v12 = [v6 serviceSession];
  v13 = [v6 idsService];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_8B060;
  v19[3] = &unk_1145B0;
  v14 = v6;
  v20 = v14;
  v21 = self;
  v15 = v5;
  v22 = v15;
  v23 = &v24;
  [v8 sendMessage:v15 toChat:v9 fromID:v10 fromAccount:v11 session:v12 service:v13 completionBlock:v19];

  v16 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v16;
}

- (void)_refreshGroupPhotoTTLIfNecessary:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 chat];
  v9 = [v7 groupMessageContext];
  if (v9 && ([v7 groupMessageContext], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isGroupChat"), v10, v9, (v11 & 1) != 0))
  {
    v12 = [v8 groupPhotoGuid];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v33 = v8;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Chat: %@, groupPhotoGuid= %@ ", buf, 0x16u);
      }
    }

    v14 = +[IMDFileTransferCenter sharedInstance];
    v15 = [v14 transferForGUID:v12];

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
    v18 = [v7 chat];
    v19 = [v18 groupPhotoGuid];
    v15 = [v17 attachmentWithGUID:v19];

    if (v15)
    {
LABEL_13:
      v20 = [v7 serviceSession];
      v21 = [v20 groupPhotoRefreshController];
      v22 = [v7 chat];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_8B968;
      v29[3] = &unk_113B08;
      v29[4] = self;
      v30 = v15;
      v31 = v8;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_8BA2C;
      v27[3] = &unk_111FC8;
      v28 = v30;
      v23 = v30;
      [v21 refreshTTLForChatAsset:v23 chat:v22 resendBlock:v29 successBlock:v27];
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
      v25 = [v8 displayName];
      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Not refreshing for chat: %@ ", buf, 0xCu);
    }
  }
}

- (void)_refreshTranscriptBackgroundTTLIfNecessary:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMFeatureFlags sharedFeatureFlags];
  v9 = [v8 isTranscriptBackgroundsEnabled];

  if (v9)
  {
    v10 = [v7 chat];
    v32 = [v10 transcriptBackgroundPath];
    if (!v32)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "We don't have a transcript background, so there is nothing to refresh. Chat: %@", buf, 0xCu);
        }
      }

      goto LABEL_22;
    }

    v11 = [v10 transcriptBackgroundProperties];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v41 = v10;
        v42 = 2112;
        v43 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Chat: %@, properties= %@ ", buf, 0x16u);
      }
    }

    v13 = IMTranscriptBackgroundRefreshDateKey;
    v14 = [v11 objectForKeyedSubscript:IMTranscriptBackgroundRefreshDateKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v31 = [v11 objectForKeyedSubscript:v13];
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v31 = 0;
      if (!v11)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = [v11 objectForKeyedSubscript:IMTranscriptBackgroundOwnerIDKey];
    [v17 setObject:v18 forKeyedSubscript:@"mmcs-owner"];

    v19 = IMTranscriptBackgroundSignatureKey;
    v20 = [v11 objectForKeyedSubscript:IMTranscriptBackgroundSignatureKey];
    objc_opt_class();
    LOBYTE(v18) = objc_opt_isKindOfClass();

    v21 = [v11 objectForKeyedSubscript:v19];
    v22 = v21;
    if (v18)
    {
      v23 = [v21 _FTDataFromBase64String];
      v24 = [v23 __imHexString];
      [v17 setObject:v24 forKeyedSubscript:@"mmcs-signature-hex"];
    }

    else
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if ((v25 & 1) == 0)
      {
LABEL_20:
        v26 = [v11 objectForKeyedSubscript:{IMTranscriptBackgroundRequestURLStringKey, v31}];
        [v17 setObject:v26 forKeyedSubscript:@"mmcs-url"];

        v27 = [v11 objectForKeyedSubscript:IMTranscriptBackgroundEncryptionDataKey];
        [v17 setObject:v27 forKeyedSubscript:@"decryption-key"];

        v28 = [v11 objectForKeyedSubscript:IMTranscriptBackgroundOutFileSizeKey];
        [v17 setObject:v28 forKeyedSubscript:@"file-size"];

        v29 = [v7 serviceSession];
        v30 = [v29 transcriptBackgroundRefreshController];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_8C040;
        v36[3] = &unk_1145D8;
        v36[4] = self;
        v37 = v32;
        v38 = v10;
        v39 = v11;
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_8C0FC;
        v33[3] = &unk_1139F0;
        v34 = v39;
        v35 = v38;
        [v30 refreshTTLForChatAsset:v17 chat:v35 refreshDate:v31 resendBlock:v36 successBlock:v33];

        goto LABEL_21;
      }

      v22 = [v11 objectForKeyedSubscript:v19];
      v23 = [v22 __imHexString];
      [v17 setObject:v23 forKeyedSubscript:@"mmcs-signature-hex"];
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)_deliverMessage:(id)a3 withContext:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_8C378;
  v26 = &unk_114650;
  v11 = v9;
  v27 = v11;
  v12 = v8;
  v28 = v12;
  v29 = self;
  v13 = v10;
  v30 = v13;
  v14 = objc_retainBlock(&v23);
  v15 = objc_alloc_init(MessageServiceSessionSendBlockWrapper);
  v16 = [v14 copy];
  v17 = [v12 guid];
  [(MessageServiceSessionSendBlockWrapper *)v15 setGUID:v17];

  [(MessageServiceSessionSendBlockWrapper *)v15 setBlock:v16];
  v18 = [v12 balloonBundleID];
  if ([v18 isEqualToString:IMBalloonPluginIdentifierRichLinks])
  {
    v19 = [v12 fileTransferGUIDs];
    if ([v19 count])
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
  v21 = [v11 serviceSession];
  [v21 stageMessageWrapperBlock:v15];

  v22 = [v11 serviceSession];
  [v22 addItemToRecentsIfApplicable:v12];
}

- (void)_updateOffGridStatusIfNeededWithMessage:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isTypingMessage] & 1) == 0)
  {
    v8 = [v7 chat];
    v9 = [v8 style];

    if (v9 == 45)
    {
      v10 = [v7 chat];
      v11 = [v10 serviceName];
      v12 = [v11 isEqualToString:IMServiceNameiMessageLite];

      if ((v12 & 1) == 0)
      {
        v13 = [v7 chat];
        v14 = [v13 chatIdentifier];

        v15 = [v6 guid];
        v16 = [v7 imdAccount];
        v32 = IMGetDomainBoolForKey();
        v17 = [v6 isPendingSatelliteSend];
        v18 = [v7 chat];
        v19 = [v18 recipient];
        v20 = [v19 cachedOffGridMode];

        v21 = IMOSLoggingEnabled();
        if (v17 == v20)
        {
          if (v21)
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [v6 isPendingSatelliteSend];
              v30 = @"NO";
              if (v20)
              {
                v31 = @"YES";
              }

              else
              {
                v31 = @"NO";
              }

              if (v29)
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

          [(MessageServiceSession *)self didReceiveOffGridStatus:((v32 | v20) | v17) & 1 forID:v14 messageGUID:v15 account:v16];
        }

        else
        {
          if (v21)
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [v6 isPendingSatelliteSend];
              v24 = @"NO";
              if (v20)
              {
                v25 = @"YES";
              }

              else
              {
                v25 = @"NO";
              }

              if (v23)
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

          v26 = [v7 chat];
          v27 = [v26 recipient];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_8CB90;
          v33[3] = &unk_1146A0;
          v34 = v14;
          v35 = self;
          v38 = v32;
          v36 = v15;
          v37 = v16;
          [v27 isOffGridModeWithCompletion:v33];
        }
      }
    }
  }
}

- (void)_handleFakeReceiptBlock:(id)a3 withContext:(id)a4 withMsg:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 chat];
  v11 = [v10 style];

  if (v11 == 45)
  {
    v12 = [v8 fromURI];
    v25 = [v12 isEqualToString:v7];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v9 guid];
        v15 = @"NO";
        *buf = 138412802;
        v27 = v14;
        v28 = 2112;
        if (v25)
        {
          v15 = @"YES";
        }

        v29 = v7;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Received legacy saved receipt for: %@   from: %@  from me: %@", buf, 0x20u);
      }
    }

    if ([v9 isAudioMessage])
    {
      v16 = 0;
    }

    else
    {
      v17 = [v9 balloonBundleID];
      v18 = [v17 length] == 0;

      if (v18)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    v19 = [v8 serviceSession];
    v20 = [v9 guid];
    v21 = [v8 chat];
    v22 = [v21 chatIdentifier];
    v23 = [NSDate __im_iMessageDateFromTimeStamp:0];
    v24 = [v8 imdAccount];
    [v19 didReceiveMessageSavedForMessageID:v20 ofType:v16 forChat:v22 fromHandle:v7 fromMe:v25 date:v23 account:v24 completionBlock:0];
  }
}

- (void)_handleIsMeToMeForMessage:(id)a3 withContext:(id)a4
{
  v17 = a3;
  v5 = a4;
  v6 = [v5 messageDeliveryContext];
  if (![v6 fromMeToMe])
  {
    goto LABEL_5;
  }

  v7 = [v5 messageDeliveryContext];
  v8 = [v7 success];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 messageDeliveryContext];
    v10 = [v9 error];

    if (v10 - 21 <= 1)
    {
      v11 = [MessageDeliveryContext alloc];
      v6 = [v5 messageDeliveryContext];
      v12 = [v6 displayIDs];
      v13 = [v5 messageDeliveryContext];
      v14 = [v13 fromMeToMe];
      v15 = [v5 messageDeliveryContext];
      v16 = -[MessageDeliveryContext initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:](v11, "initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:", v12, 1, 0, v14, [v15 shouldDeactivate], objc_msgSend(v17, "backwardsCompatibleVersion"));
      [v5 setMessageDeliveryContext:v16];

LABEL_5:
    }
  }
}

- (void)_handleDeliveryFailureForMessage:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 messageDeliveryContext];
  v8 = [v7 success];
  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_36;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v36 = [v5 guid];
      v37 = [v5 body];
      v11 = [v37 string];
      v12 = MarcoLoggingStringForMessageData();
      v13 = [v7 displayIDs];
      v14 = [v7 error];
      v15 = [v6 groupMessageContext];
      v16 = [v15 isGroupChat];
      v17 = [v7 fromMeToMe];
      v18 = @"NO";
      *buf = 138413570;
      v40 = v36;
      if (v16)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v41 = 2112;
      v42 = v12;
      if (v17)
      {
        v18 = @"YES";
      }

      v43 = 2112;
      v44 = v13;
      v45 = 1024;
      v46 = v14;
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
      v21 = [v5 body];
      v22 = [v21 string];
      v23 = MarcoLoggingStringForMessageData();
      v24 = [v5 guid];
      v25 = [v7 displayIDs];
      *buf = 138413058;
      v40 = v23;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      v45 = 1024;
      v46 = [v7 error];
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Failed sending message: %@  withGUID: %@  to people: %@   error: %d", buf, 0x26u);
    }
  }

  if ([v7 error] == 40)
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
    v30 = [v7 displayIDs];
    v31 = -[MessageDeliveryContext initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:](v29, "initWithDisplayIDs:didSucceed:error:isFromMeToMe:shouldDeactivate:isBackwardsCompatibleMessage:", v30, [v7 success], objc_msgSend(v7, "error"), objc_msgSend(v7, "fromMeToMe"), 1, objc_msgSend(v5, "backwardsCompatibleVersion"));
    [v6 setMessageDeliveryContext:v31];
  }

  if ([v5 needsRelay])
  {
    IMSetDomainBoolForKey();
  }

  if (([v5 isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v32 = [v5 guid];
      v33 = [v7 error];
      *buf = 138412546;
      v40 = v32;
      v41 = 1024;
      LODWORD(v42) = v33;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Error sending message:%@ error: %d", buf, 0x12u);
    }

LABEL_35:
  }

LABEL_36:
  if ([v5 isFailedHQTransfer])
  {
    v34 = 0;
  }

  else
  {
    v34 = [v7 error];
  }

  [v5 setErrorCode:v34];
  if ([v5 scheduleType] == &dword_0 + 2 && objc_msgSend(v5, "errorCode"))
  {
    [(MessageServiceSession *)self _handleScheduledMessageSendFailure:v5];
  }

  v35 = [v6 fromURI];
  [v5 setDestinationCallerID:v35];
}

- (void)_handleUpdateNotificationTimeManagerForMessage:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 notificationIDSTokenURI];
  v8 = [v6 messageDeliveryContext];
  if (![v8 success] || (objc_msgSend(v5, "isTypingMessage") & 1) != 0)
  {

    goto LABEL_4;
  }

  v24 = [v7 length];

  if (!v24)
  {
LABEL_4:
    v9 = [v6 messageDeliveryContext];
    if ([v9 success])
    {
      v10 = [v5 isTypingMessage];

      if ((v10 & 1) == 0)
      {
        v11 = +[IMMessageNotificationTimeManager sharedInstance];
        v12 = [v6 chat];
        v13 = [v12 chatIdentifier];
        [v11 tearDownSessionForChatIdentifier:v13];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = +[IMDChatRegistry sharedInstance];
        v15 = [v6 chat];
        v16 = [v15 chatIdentifier];
        v17 = [v6 chat];
        v18 = [v14 allExistingSupportedServiceChatsWithIdentifier:v16 style:{objc_msgSend(v17, "style")}];

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
              v23 = [v5 guid];
              [v22 updateLastSeenMessageGuidIfNeeded:v23];

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
      v26 = [v5 guid];
      v27 = [v6 chat];
      v28 = [v27 chatIdentifier];
      *buf = 138412802;
      v40 = v26;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Successfully sent message, setting message item with guid %@ notificationIDSTokenURI %@ for chatIdentifier %@", buf, 0x20u);
    }
  }

  v29 = +[IMMessageNotificationTimeManager sharedInstance];
  [v29 setLatestNotificationIDSTokenURI:v7];

  v30 = +[IMMessageNotificationTimeManager sharedInstance];
  v31 = +[NSDate date];
  v32 = [v6 chat];
  v33 = [v32 chatIdentifier];
  [v30 setDate:v31 forChatIdentifier:v33];

LABEL_21:
}

- (void)_deactivateServiceIfNeededForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 messageDeliveryContext];
  v5 = [v4 shouldDeactivate];

  if (v5)
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

    v8 = [v3 idsAccount];
    [v8 deactivateAndPurgeIdentify];

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, " => Deactivating", v13, 2u);
    }

    v10 = +[IMDAccountController sharedInstance];
    v11 = [v3 imdAccount];
    v12 = [v11 accountID];
    [v10 deactivateAccount:v12];
  }
}

- (void)_notifyDidSendMessage:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isTypingMessage])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = [v6 guid];
    v8 = [v9 hasStoredMessageWithGUID:v10];
  }

  v11 = [v7 messageDeliveryContext];
  v12 = [v11 fromMeToMe] | v8;

  if (v12)
  {
    v13 = [v7 messageDeliveryContext];
    v14 = [v13 success];

    if (v14)
    {
      [(MessageServiceSession *)self _didSendMessage:v6 withContext:v7 forceDate:0 fromStorage:0];
      v15 = [v7 messageDeliveryContext];
      if ([v15 fromMeToMe])
      {
        v16 = [v7 groupMessageContext];
        v17 = [v16 isGroupChat];

        if ((v17 & 1) == 0)
        {
          [(MessageServiceSession *)self _handleMessageSentToSelf:v6 withContext:v7 isLocal:1];
        }
      }

      else
      {
      }

      if ([v6 isFinished] && (objc_msgSend(v6, "isBeingRetried") & 1) == 0)
      {
        v21 = [v7 serviceSession];
        v22 = [v6 guid];
        v23 = [v7 imdAccount];
        v24 = [v7 messageDeliveryContext];
        [v21 notifyDidSendMessageID:v22 account:v23 shouldNotify:{objc_msgSend(v24, "isBackwardsCompatibleMessage") ^ 1}];

        v36 = IMMetricsCollectorAttachmentCount;
        v25 = [v6 fileTransferGUIDs];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 count]);
        v37 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        v28 = +[IMMetricsCollector sharedInstance];
        [v28 trackEvent:IMMetricsCollectorStatisticSentMessage withDictionary:v27];
      }
    }

    else
    {
      v19 = [v7 messageDeliveryContext];
      v20 = [v19 success];

      if ((v20 & 1) == 0)
      {
        [(MessageServiceSession *)self _didSendMessage:v6 withContext:v7 forceDate:0 fromStorage:0];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = v6;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Not reflecting this to the application, this message looks like it was deleted: %@", &v34, 0xCu);
    }
  }

  v29 = +[NSDate date];
  v30 = [v7 sendDate];
  [v29 timeIntervalSinceDate:v30];
  v32 = v31;

  v33 = [NSNumber numberWithDouble:v32];
  [v7 setSendDuration:v33];
  [(MessageServiceSession *)self _FTAWDLogForMessage:v6 withContext:v7];
}

- (void)_handleMessageSentToSelf:(id)a3 withContext:(id)a4 isLocal:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFromMe] && (objc_msgSend(v6, "isTypingMessage") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 chat];
        v10 = [v9 chatIdentifier];
        v11 = [v7 chat];
        *buf = 138412802;
        v15 = v6;
        v16 = 2112;
        v17 = v10;
        v18 = 1024;
        v19 = [v11 style];
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Need to handle message sent to myself: %@   chat: %@  style: %d", buf, 0x1Cu);
      }
    }

    v12 = v6;
    v13 = v7;
    im_dispatch_after();
  }
}

- (BOOL)_shouldInitiateTelephonyConversationForMessage:(id)a3
{
  v3 = [a3 groupActivity];
  if (v3)
  {
    v4 = +[IMFeatureFlags sharedFeatureFlags];
    v5 = [v4 isAVLessSharePlayEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_buildSendMessageContextWithChatIdentifier:(id)a3 withChatStyle:(unsigned __int8)a4 withServiceSession:(id)a5 withMessage:(id)a6 destinations:(id)a7
{
  v48 = a4;
  v11 = a5;
  v12 = a6;
  v45 = a7;
  v47 = a3;
  v13 = a3;
  [v11 canonicalizeChatIdentifier:&v47 style:&v48];
  v14 = v47;

  if (v14)
  {
    v15 = [v11 chatForChatIdentifier:v14 style:v48 updatingAccount:1];
    v46 = 0;
    v44 = [(MessageServiceSession *)self _setCallerIDOnMessage:v12 onChat:v15 withIDSAccount:&v46 withServiceSession:v11];
    v16 = v46;
    v42 = [v11 idsServiceForIDSAccount:v16];
    v17 = [v11 accounts];
    v43 = IMDAccountForIDSAccount(v16, v17, v11);

    _UpdateLastAddressedHandle(v12, v44, v15);
    [(MessageServiceSession *)self _fixParticipantsForChat:v15];
    v18 = [v15 participants];
    v19 = URIsFromHandles(v18);

    v20 = v19;
    v21 = v20;
    if ([v12 isBeingRetried])
    {
      v22 = [v12 retryToParticipant];
      v23 = IMOSLoggingEnabled();
      if (v22)
      {
        if (v23)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v50 = v22;
            v51 = 2112;
            v52 = v20;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Sending retry message only to participant %@, instead of %@", buf, 0x16u);
          }
        }

        v71 = v22;
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

    if (v45)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v50 = v45;
          v51 = 2112;
          v52 = v21;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending message to participants %@ instead of %@", buf, 0x16u);
        }
      }

      v28 = URIsFromHandles(v45);

      v21 = v28;
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v36 = self;
        v38 = [v12 body];
        v37 = [v38 string];
        v39 = MarcoLoggingStringForMessageData();
        v40 = [v12 guid];
        v41 = [v12 associatedMessageGUID];
        v35 = [v12 associatedMessageType];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v12 fileTransferGUIDs];
        *buf = 138414850;
        v50 = v39;
        v51 = 2112;
        v52 = v40;
        v53 = 2112;
        v54 = v14;
        v55 = 2112;
        v56 = v15;
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = v36;
        v61 = 2112;
        v62 = v43;
        v63 = 2112;
        v64 = v41;
        v65 = 2048;
        v66 = v35;
        v67 = 2112;
        v68 = v31;
        v69 = 2112;
        v70 = v32;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "send message: %@  guid: %@  to identifier: %@   chat: %@   callerURI: %@   self: %@   account: %@ associatedMessageGUID: %@  associatedMessageType: %lld  messageItemClass: %@ fileTransferGUID %@", buf, 0x70u);
      }
    }

    v25 = [[SendMessageContext alloc] initWithChat:v15 withIMDAccount:v43 withIDSAccount:v16 withCallerURI:v44 serviceSession:v11 withIDSService:v42 withParticipantURIs:v21 withOriginalParticipantURIs:v20];
    v33 = +[NSDate date];
    [(SendMessageContext *)v25 setSendDate:v33];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_fixParticipantsForChat:(id)a3
{
  v15 = a3;
  v3 = [v15 participants];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = +[IMDAccountController sharedInstance];
    v6 = +[IMDServiceController sharedController];
    v7 = [v6 serviceWithName:IMServiceNameSMS];
    v8 = [v5 accountsForService:v7];

    if ([v8 count])
    {
      v9 = +[IMDChatRegistry sharedInstance];
      v10 = [v15 chatIdentifier];
      v11 = [v8 lastObject];
      v12 = [v9 existingChatWithIdentifier:v10 account:v11];

      LODWORD(v9) = [v15 style];
      if (v9 == [v12 style])
      {
        v13 = [v12 participants];

        if (v13)
        {
          v14 = [v12 participants];
          [v15 addParticipants:v14];
        }
      }
    }
  }

  [v15 recoverParticipantsIfNeeded];
}

- (void)_storeSentMessage:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 chat];
  v9 = [v8 chatIdentifier];
  v10 = [v6 chat];
  v11 = [v10 style];
  v12 = [v6 chat];

  v13 = [v12 account];
  v14.receiver = self;
  v14.super_class = MessageServiceSession;
  [(MessageServiceSession *)&v14 sendMessage:v7 toChat:v9 style:v11 account:v13];
}

- (void)_handleScheduledMessageSendFailure:(id)a3
{
  v8 = a3;
  v4 = [v8 editedPartIndexes];
  if ([v4 count])
  {

LABEL_4:
    [v8 setErrorCode:0];
    v7 = [(MessageServiceSession *)self deliveryController];
    [v7 handleScheduledMessageSendFailure:v8];
    goto LABEL_5;
  }

  v5 = [v8 retractedPartIndexes];
  v6 = [v5 count];

  if (v6)
  {
    goto LABEL_4;
  }

  [v8 setScheduleState:4];
  v7 = [v8 guid];
  [IMDScheduledMessageCoordinator notifyPeersWithScheduledMessageUpdate:v7 scheduleState:4];
LABEL_5:
}

- (void)_logCompletedMessage:(id)a3 withContext:(id)a4
{
  v19 = a3;
  v5 = a4;
  v18 = +[IMPowerLog sharedInstance];
  v17 = [v19 guid];
  v15 = [v5 fromURI];
  v16 = [v15 _stripFZIDPrefix];
  v6 = [v5 groupMessageContext];
  v7 = [v6 isGroupChat];
  if (v7)
  {
    v8 = @"Group";
  }

  else
  {
    v8 = [v19 handle];
  }

  v9 = [v5 chat];
  v10 = [v9 powerLogConversationType];
  v11 = [v19 powerLogMessageType];
  v12 = [v5 sendDuration];
  v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v19 errorCode]);
  v14 = [v19 service];
  [v18 logMessageSentWithGUID:v17 fromIdentifier:v16 toIdentifier:v8 conversationType:v10 messageType:v11 sendDuration:v12 errorCode:v13 messageProtocol:v14];

  if ((v7 & 1) == 0)
  {
  }
}

- (void)_FTAWDLogForMessage:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v85 = a4;
  v103 = IMMetricsCollectorError;
  v86 = v5;
  v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", sub_904FC([v5 errorCode]));
  v104 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v80 = [v7 mutableCopy];

  v8 = +[IMMetricsCollector sharedInstance];
  [v8 trackEvent:IMMetricsCollectorEventOutgoingMessage withDictionary:v80];

  v77 = [v86 isTypingMessage];
  v9 = [v85 chat];
  v83 = [v9 style];

  v10 = [v86 handle];
  IsEmail = IMStringIsEmail();

  v12 = [v86 fileTransferGUIDs];
  v78 = [v12 count];

  if (([v86 isTypingMessage] & 1) == 0)
  {
    v13 = [v85 sendDuration];
    v14 = v13 == 0;

    if (!v14)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v85 sendDuration];
          v17 = [v86 guid];
          *buf = 138412546;
          v100 = v16;
          v101 = 2112;
          v102 = v17;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Send Duration: %@ GUID %@", buf, 0x16u);
        }
      }
    }
  }

  v18 = +[FTNetworkSupport sharedInstance];
  v19 = [v18 wiFiActiveAndReachable];

  if (v19)
  {
    v20 = 2;
  }

  else
  {
    v21 = +[FTNetworkSupport sharedInstance];
    v22 = [v21 dataActiveAndReachable];

    if (v22)
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
  v25 = [NSNumber numberWithBool:v77];
  v98[2] = v25;
  v97[3] = IMMetricsCollectorIsGroupMessageKey;
  v26 = [NSNumber numberWithBool:v83 != 45];
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
  v30 = [v85 sendDuration];
  v98[7] = v30;
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
    v33 = [v86 fileTransferGUIDs];
    v34 = [v33 countByEnumeratingWithState:&v91 objects:v96 count:16];
    if (v34)
    {
      v35 = *v92;
      while (2)
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v92 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v91 + 1) + 8 * i);
          v38 = +[IMDFileTransferCenter sharedInstance];
          v39 = [v38 transferForGUID:v37];

          v40 = [v39 type];
          if ([v40 length])
          {
            v41 = [UTType typeWithIdentifier:v40];
            if (v41 && ([UTTypeImage conformsToType:v41] & 1) != 0)
            {
              v42 = [NSNumber numberWithBool:[IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v39 isSending:1]];
              [v82 setObject:v42 forKey:IMMetricsCollectorIsAttachmentSentWithLQMEnabledKey];

              goto LABEL_26;
            }
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v91 objects:v96 count:16];
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

  v45 = [(MessageServiceSession *)self isReplicating];
  v46 = [v85 chat];
  v47 = [v46 isBusinessChat];

  v48 = @"text";
  if (v77)
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
  if (v83 != 45)
  {
    v50 = @"group";
  }

  v51 = v50;
  if (v47)
  {

    v51 = @"business";
  }

  v81 = v51;
  if (v83 == 45)
  {
    v84 = 0;
  }

  else
  {
    v52 = @"iMessage";
    if (v45)
    {
      v52 = @"iMessage_Hybrid";
    }

    v84 = v52;
  }

  v53 = [v86 bodyData];
  v54 = [v53 length];
  v55 = [v86 payloadData];
  v56 = [v55 length];

  v57 = [v86 fileTransferGUIDs];
  v58 = v57;
  v59 = &v54[v56];
  if (v57)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v60 = [v57 countByEnumeratingWithState:&v87 objects:v95 count:16];
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
          v66 = [v65 totalBytes];

          v59 = &v59[v66];
        }

        v60 = [v58 countByEnumeratingWithState:&v87 objects:v95 count:16];
      }

      while (v60);
    }
  }

  v67 = +[IMMetricsCollector sharedInstance];
  v68 = [v86 originalServiceName];
  v69 = [v85 sendDuration];
  v70 = [v86 errorCode] == 0;
  v71 = [v85 chat];
  v72 = [v71 lastAddressedLocalHandle];
  v73 = [v86 handle];
  v74 = +[IMMetricsCollector stringForFZErrorType:](IMMetricsCollector, "stringForFZErrorType:", [v86 errorCode]);
  LOBYTE(v75) = v70;
  [v67 trackSentMessageEventOfType:@"iMessage" subtype:v79 originalServiceName:v68 messageSize:v59 sendDuration:v69 receiverType:v81 receiverGroupType:v84 wasSuccessful:v75 sourceHandle:v72 destinationHandle:v73 error:v74];
}

- (void)setTranscriptBackground:(id)a3 andSendToChatIdentifier:(id)a4 chatStyle:(unsigned __int8)a5 transferID:(id)a6 isRefresh:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v12 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  if (a3)
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

  if (a4)
  {
    v18 = sub_BD8B4();
    a4 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = sub_BD8B4();
  v22 = v21;
  v23 = self;
  MessageServiceSession.setTranscriptBackground(_:andSendToChatIdentifier:chatStyle:transferID:isRefresh:)(v15, v18, a4, v8, v20, v22, v7);

  sub_75B0(v15, &qword_123ED0, &unk_CE4D0);
}

- (void)retryTranscriptBackgroundUpload:(id)a3 chatIdentifier:(id)a4 style:(unsigned __int8)a5 transferID:(id)a6
{
  v6 = a5;
  v10 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  if (a3)
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

  if (a4)
  {
    v16 = sub_BD8B4();
    a4 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_BD8B4();
  v20 = v19;
  v21 = self;
  MessageServiceSession.retryTranscriptBackgroundUpload(_:chatIdentifier:style:transferID:)(v13, v16, a4, v6, v18, v20);

  sub_75B0(v13, &qword_123ED0, &unk_CE4D0);
}

- (void)receiveIncomingBlastdoorBackgroundCommand:(id)a3 for:(id)a4 sender:(id)a5 senderContext:(id)a6
{
  v10 = sub_BD8B4();
  v12 = v11;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = self;
  MessageServiceSession.receiveIncomingBlastdoorBackgroundCommand(_:for:sender:senderContext:)(a3, v14, v10, v12, v15);
}

- (void)_requestTranscriptBackground:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6
{
  v8 = sub_BD8B4();
  v10 = v9;
  v11 = sub_BD8B4();
  v13 = v12;
  v14 = a3;
  v15 = self;
  sub_A9E48(v14, v8, v10, v11, v13);
}

- (void)requestTranscriptBackground:(id)a3 toIdentifier:(id)a4 fromIdentifier:(id)a5 messageIsFromStorage:(BOOL)a6
{
  v7 = a5;
  if (a4)
  {
    v10 = sub_BD8B4();
    v12 = v11;
    if (v7)
    {
LABEL_3:
      v13 = sub_BD8B4();
      v7 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = self;
  MessageServiceSession.requestTranscriptBackground(_:toIdentifier:fromIdentifier:messageIsFromStorage:)(a3, v10, v12, v13, v7, a6);
}

- (void)requestTranscriptBackgroundIfNecessary:(id)a3 incomingVersion:(unint64_t)a4 toIdentifier:(id)a5 fromIdentifier:(id)a6 messageIsFromStorage:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  if (a5)
  {
    v12 = sub_BD8B4();
    v14 = v13;
    if (v8)
    {
LABEL_3:
      v15 = sub_BD8B4();
      v8 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = a3;
  v18 = self;
  MessageServiceSession.requestTranscriptBackgroundIfNecessary(_:incomingVersion:toIdentifier:fromIdentifier:messageIsFromStorage:)(a3, a4, v12, v14, v15, v8, v7);
}

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)a3 chatStyle:(unsigned __int8)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_BD8B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  MessageServiceSession.refetchChatBackgroundIfNeeded(forChatIdentifier:chatStyle:)(v6, v8, v4);
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  MessageServiceSession.calculateReachability(with:responseHandler:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)requestBackgroundsFromRecentChatsIfNeeded
{
  v2 = self;
  MessageServiceSession.requestBackgroundsFromRecentChatsIfNeeded()();
}

@end