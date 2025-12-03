@interface MessageDeliveryController
- (BOOL)_hasRecentlyMessaged:(id)messaged;
- (BOOL)_shouldSendAuxXML:(id)l;
- (BOOL)_transferIsUserGeneratedOrEmojiSticker:(id)sticker;
- (BOOL)forceBackwardsCompatibleMessageForBundleID:(id)d;
- (BOOL)handleScheduledMessageSend:(id)send sentSuccessfully:(BOOL)successfully idsMessage:(id)message messageDictionary:(id)dictionary canInlineAttachments:(BOOL)attachments msgPayloadUploadDictionary:(id)uploadDictionary fromID:(id)d fromAccount:(id)self0 originalIDSIdentifier:(id)self1;
- (BOOL)isLQMEnabled:(id)enabled;
- (BOOL)isReceiverHQTransferCapable:(id)capable fromID:(id)d;
- (BOOL)sendToLocalPeersFile:(id)file dictionary:(id)dictionary;
- (BOOL)shouldSendBackwardsCompatibleMessageForBundleID:(id)d;
- (MessageDeliveryController)initWithSession:(id)session;
- (id)_associatedMessageFallbackHashForMessageItem:(id)item;
- (id)_chatForChatIdentifier:(id)identifier;
- (id)_compressedAttributionInfoForMessage:(id)message;
- (id)_computeRegPropertiesForNewFeatures:(id)features currentRegProperties:(id)properties currentInterestingProp:(id)prop;
- (id)_copyGenmojiHEICFileToTemporaryDirectory:(id)directory;
- (id)_fallbackHashForMessageItemWithGUID:(id)d;
- (id)_fallbackMessageItemByConvertingGenmojiToUnknownEmojiCharacterInOriginalMessageItem:(id)item;
- (id)_fallbackMessageItemForRequiredRegPropertiesTextMessage:(id)message;
- (id)_fallbackMessageItemForTranslationsWithOriginalMessageItem:(id)item;
- (id)_fallbackMessageItemFromLinkMetadata:(id)metadata originalMessageItem:(id)item;
- (id)_fileTransferGUIDsInMessageBody:(id)body;
- (id)_getQueueIdentifierFromGUID:(id)d;
- (id)_keyTransparencyEnforcementDictionaryForChatIdentifier:(id)identifier;
- (id)_nonAdaptiveFileTransferForAdaptiveImageFileTransfer:(id)transfer;
- (id)_propertyForExpressiveSendStyle:(id)style;
- (id)_receivingDevicesForHandle:(id)handle skippedDestinations:(id)destinations;
- (id)_receivingDevicesForParticipants:(id)participants skippedDestinations:(id)destinations;
- (id)_replicationSourceIDForSending;
- (id)_threadOriginatorFallbackHashForMessageItem:(id)item;
- (id)_updateSuccessfulEditsForScheduledMessage:(id)message;
- (id)_updateSuccessfulRetractionsForScheduledMessage:(id)message;
- (id)activeDeviceForHandle:(id)handle;
- (id)attachmentController;
- (id)backwardCompatibilityPrefixForLanguageCode:(id)code;
- (id)groupController;
- (id)idsDeviceFromPushToken:(id)token;
- (id)idsOptionsWithMessageItem:(id)item toID:(id)d fromID:(id)iD sendGUIDData:(id)data alternateCallbackID:(id)callbackID isBusinessMessage:(BOOL)message chatIdentifier:(id)identifier requiredRegProperties:(id)value interestingRegProperties:(id)self1 requiresLackOfRegProperties:(id)self2 deliveryContext:(id)self3 isGroupChat:(BOOL)self4 canInlineAttachments:(BOOL)self5 msgPayloadUploadDictionary:(id)self6 messageDictionary:(id)self7;
- (id)messageDictionaryWithMessageItem:(id)item isBusiness:(BOOL)business chatIdentifier:(id)identifier toParticipants:(id)participants originallyToParticipants:(id)toParticipants additionalContext:(id)context msgPayloadUploadDictionary:(id)dictionary originalPayload:(id)self0;
- (id)pairedDevice;
- (void)_addIdentifierToPendingTimestampUpdateMap:(id)map alternateCallbackId:(id)id;
- (void)_appendMyNicknameToMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat;
- (void)_appendMyTranscriptBackgroundVersionToMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat;
- (void)_appendOffGridAvailabilityPropertiesToMessageDictionary:(id)dictionary participantHandleID:(id)d;
- (void)_appendRecipientAvailabilityVerificationInfoToMessageDictionary:(id)dictionary forChat:(id)chat;
- (void)_appendRecipientNicknameTruncatedRecordIDToMessageDictionary:(id)dictionary forChat:(id)chat;
- (void)_appendSeenOffGridStatusToMessageDictionary:(id)dictionary forChat:(id)chat;
- (void)_checkStickerRepositioningMetadata:(id)metadata;
- (void)_enqueueSendMessageWorkBlock:(id)block forURIs:(id)is;
- (void)_enqueueUpdateBlock:(id)block willSendBlock:(id)sendBlock identifier:(id)identifier callbackID:(id)d messageCommandOption:(id)option;
- (void)_sendBackwardCompatibilityMessageForEditedMessage:(id)message usingMessageGUID:(id)d toBackwardCompatabilityDestinations:(id)destinations withOriginalDestinations:(id)originalDestinations chatIdentifier:(id)identifier fromAccount:(id)account fromID:(id)iD backwardCompatabilityText:(id)self0 completionBlock:(id)self1;
- (void)_sendMessage:(id)message context:(id)context deliveryContext:(id)deliveryContext fromID:(id)d fromAccount:(id)account toID:(id)iD chatIdentifier:(id)identifier toSessionToken:(id)self0 toGroup:(id)self1 toParticipants:(id)self2 originallyToParticipants:(id)self3 requiredRegProperties:(id)self4 interestingRegProperties:(id)self5 requiresLackOfRegProperties:(id)self6 canInlineAttachments:(BOOL)self7 type:(int64_t)self8 msgPayloadUploadDictionary:(id)self9 originalPayload:(id)payload replyToMessageGUID:(id)uID fallbackCount:(unint64_t)count willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)_sendNicknameToRecipientsIfNeededForChat:(id)chat forMessage:(id)message;
- (void)_setReplyToGUIDForMessage:(id)message messageDictionary:(id)dictionary;
- (void)_updateExpectedOffGridCapableDeliveryReceiptsForMessage:(id)message chatIdentifier:(id)identifier numberOfExpectedOffGridCapableDeliveries:(unint64_t)deliveries;
- (void)_updateTimeStampForMessageIdentifierIfNeeded:(id)needed pendingTimeStampUpdateIdentifier:(id)identifier alternateCallbackID:(id)d messageContext:(id)context;
- (void)appendChatRelatedPropertiesToMessageDictionary:(id)dictionary forMessage:(id)message chatIdentifier:(id)identifier;
- (void)cancelScheduledMessageWithGUID:(id)d fromID:(id)iD;
- (void)cancelScheduledMessageWithGUID:(id)d fromID:(id)iD destinations:(id)destinations cancelType:(unint64_t)type;
- (void)dealloc;
- (void)failMessageSendWithMessageDictionary:(id)dictionary URIs:(id)is error:(id)error completionHandler:(id)handler;
- (void)handleScheduledMessageSendFailure:(id)failure;
- (void)noteRecentMessageForPeople:(id)people;
- (void)sendBubblePayloadMessageDictionary:(id)dictionary fromID:(id)d fromAccount:(id)account toURIs:(id)is toGroup:(id)group priority:(int64_t)priority options:(id)options completionBlock:(id)self0;
- (void)sendCloseSessionMessageDictionary:(id)dictionary toBusinessURI:(id)i fromURI:(id)rI fromAccount:(id)account completionBlock:(id)block;
- (void)sendEditedMessage:(id)message partIndex:(int64_t)index editType:(unint64_t)type destinations:(id)destinations chatIdentifier:(id)identifier account:(id)account fromID:(id)d backwardCompatabilityText:(id)self0 unsupportedDestinationsHandler:(id)self1 completionBlock:(id)self2;
- (void)sendHQAttachmentsForMessage:(id)message context:(id)context fromID:(id)d fromAccount:(id)account chatIdentifier:(id)identifier toGroup:(id)group originallyToParticipants:(id)participants canInlineAttachments:(BOOL)self0 recipients:(id)self1 completionBlock:(id)self2;
- (void)sendMessage:(id)message context:(id)context groupContext:(id)groupContext toGroup:(id)group toParticipants:(id)participants originallyToParticipants:(id)toParticipants fromID:(id)d fromAccount:(id)self0 chatIdentifier:(id)self1 originalPayload:(id)self2 replyToMessageGUID:(id)self3 fakeSavedReceiptBlock:(id)self4 completionBlock:(id)self5;
- (void)sendMessageDictionary:(id)dictionary encryptDictionary:(BOOL)encryptDictionary fromID:(id)d fromAccount:(id)account toURIs:(id)is toGroup:(id)group priority:(int64_t)priority options:(id)self0 willSendBlock:(id)self1 callCompletionOnSuccess:(BOOL)self2 callCompletionOnLast:(BOOL)self3 completionBlock:(id)self4;
- (void)sendMessageError:(int64_t)error toToken:(id)token toID:(id)d toGroup:(id)group fromID:(id)iD fromAccount:(id)account forMessageID:(id)messageID completionBlock:(id)self0;
- (void)sendMessageErrorWithInfo:(int64_t)info toToken:(id)token toID:(id)d toGroup:(id)group fromID:(id)iD fromAccount:(id)account forMessageID:(id)messageID additionalInfo:(id)self0 fileSize:(id)value failureTimeSeconds:(double)self2 failReasonMessage:(id)self3 completionBlock:(id)self4;
- (void)sendRepositionedStickerMetadata:(id)metadata forEditedMessage:(id)message destinations:(id)destinations account:(id)account fromID:(id)d completionBlock:(id)block;
- (void)service:(id)service account:(id)account identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)self0;
- (void)service:(id)service didFlushCacheForKTPeerURI:(id)i;
- (void)service:(id)service didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid;
@end

@implementation MessageDeliveryController

- (MessageDeliveryController)initWithSession:(id)session
{
  v11.receiver = self;
  v11.super_class = MessageDeliveryController;
  v4 = [(MessageDeliveryController *)&v11 init];
  if (v4)
  {
    v5 = [+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")];
    v6 = [IDSService alloc];
    if (v5)
    {
      v7 = [v6 initWithService:IDSServiceNameiMessage manuallyAckMessages:1];
    }

    else
    {
      v7 = [v6 initWithService:IDSServiceNameiMessage];
    }

    v4->_idsService = v7;
    [(IDSService *)v7 addDelegate:v4 queue:&_dispatch_main_q];
    v8 = [IDSService alloc];
    v9 = [v8 initWithService:IDSServiceNameiMessageForBusiness];
    v4->_idsBizService = v9;
    [(IDSService *)v9 addDelegate:v4 queue:&_dispatch_main_q];
    objc_storeWeak(&v4->_session, session);
  }

  return v4;
}

- (id)_keyTransparencyEnforcementDictionaryForChatIdentifier:(id)identifier
{
  serviceIdentifier = [(IDSService *)self->_idsService serviceIdentifier];
  if (![serviceIdentifier isEqualToString:IDSServiceNameiMessage])
  {
    return 0;
  }

  identifier = [+[IMDChatRegistry sharedInstance](IMDChatRegistry existingSMSChatForID:"existingSMSChatForID:", identifier];

  return [identifier keyTransparencyURIToUUIDMapping];
}

- (void)dealloc
{
  [+[IMMobileNetworkManager sharedInstance](IMMobileNetworkManager removeFastDormancyDisableToken:"removeFastDormancyDisableToken:", @"iMessageDeliveryManager"];
  [(IDSService *)self->_idsService removeDelegate:self];

  [(IDSService *)self->_idsBizService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = MessageDeliveryController;
  [(MessageDeliveryController *)&v3 dealloc];
}

- (id)attachmentController
{
  session = [(MessageDeliveryController *)self session];

  return [(MessageServiceSession *)session attachmentController];
}

- (id)groupController
{
  session = [(MessageDeliveryController *)self session];

  return [(MessageServiceSession *)session groupController];
}

- (void)_updateTimeStampForMessageIdentifierIfNeeded:(id)needed pendingTimeStampUpdateIdentifier:(id)identifier alternateCallbackID:(id)d messageContext:(id)context
{
  if ([context serverReceivedTime] && objc_msgSend(identifier, "length") && objc_msgSend(identifier, "isEqualToString:", needed))
  {
    v11 = [-[MessageDeliveryController messageStore](self "messageStore")];
    messageSummaryInfo = [v11 messageSummaryInfo];
    v13 = IMMessageSummaryInfoUpdatedDateWithServerTime;
    v14 = [objc_msgSend(messageSummaryInfo objectForKey:{IMMessageSummaryInfoUpdatedDateWithServerTime), "BOOLValue"}];
    messageSummaryInfo2 = [v11 messageSummaryInfo];
    v16 = [objc_msgSend(messageSummaryInfo2 objectForKey:{IMMessageSummaryInfoHasBeenRetried), "BOOLValue"}];
    v17 = v16;
    if (!v11 || (v14 & 1) != 0 || (v16 & 1) != 0 || [v11 scheduleType])
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          scheduleType = [v11 scheduleType];
          v20 = @"NO";
          v27 = 138413058;
          neededCopy = needed;
          if (v17)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          v29 = 2112;
          if (v14)
          {
            v20 = @"YES";
          }

          v30 = v20;
          v31 = 2112;
          neededCopy2 = v21;
          v33 = 2048;
          v34 = scheduleType;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "We already updated the time on message %@ with a server time (%@) or this message has been retried (%@) or this is a future scheduled message (%lu) -- skipping server time update", &v27, 0x2Au);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          [objc_msgSend(v11 "time")];
          v24 = v23;
          [objc_msgSend(context "serverReceivedTime")];
          v27 = 134218498;
          neededCopy = v24;
          v29 = 2048;
          v30 = v25;
          v31 = 2112;
          neededCopy2 = needed;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Going to update message time from: %f to: %f for identifier: %@", &v27, 0x20u);
        }
      }

      Mutable = [objc_msgSend(v11 "messageSummaryInfo")];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], v13];
      [v11 setTime:{objc_msgSend(context, "serverReceivedTime")}];
      [v11 setMessageSummaryInfo:Mutable];

      [-[MessageDeliveryController messageStore](self "messageStore")];
      [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self serverUpdatedTimestampMessage:v11];
      [(NSMutableDictionary *)self->_pendingTimestampUpdate removeObjectForKey:d];
    }
  }
}

- (void)service:(id)service didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138413058;
      iCopy = i;
      v13 = 2112;
      rICopy = rI;
      v15 = 2112;
      guidCopy = guid;
      v17 = 2112;
      delegate = [(MessageDeliveryController *)self delegate];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Received flushed cached message from %@ to %@ guid %@ delegate %@", &v11, 0x2Au);
    }
  }

  [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self didFlushCacheForRemoteURI:i fromURI:rI guid:guid];
}

- (void)service:(id)service didFlushCacheForKTPeerURI:(id)i
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      iCopy = i;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Received flushed cache for KT Peer URI %@", &v7, 0xCu);
    }
  }

  [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self didFlushCacheForKTPeerURI:i];
}

- (void)service:(id)service account:(id)account messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)self0
{
  if (identifier)
  {
    if ([d length])
    {
      v15 = [(NSMutableDictionary *)self->_pendingTimestampUpdate objectForKey:d];
    }

    else
    {
      v15 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = @"NO";
        if (call)
        {
          v17 = @"YES";
        }

        [objc_msgSend(context serverReceivedTime];
        *buf = 134219522;
        identifierCopy4 = code;
        v35 = 2112;
        identifierCopy = identifier;
        v37 = 2112;
        dCopy = d;
        v39 = 2112;
        errorCopy = error;
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = [NSNumber numberWithDouble:?];
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Received responseCode %ld for IDS identifier %@ callbackID %@ error %@ lastCall? %@  messageContext serverReceivedTime: %@ _pendingTimestampUpdate contains identifier: %@", buf, 0x48u);
      }
    }

    v18 = [(NSMutableDictionary *)self->_pendingSends objectForKey:identifier];
    if ([v18 count])
    {
      [(MessageDeliveryController *)self _updateTimeStampForMessageIdentifierIfNeeded:identifier pendingTimeStampUpdateIdentifier:v15 alternateCallbackID:d messageContext:context];
      v19 = sub_883DC(code, error);
      v20 = v19;
      if (d)
      {
        v21 = [v18 objectForKey:d];
        if (v21)
        {
          v21[2](v21, v20, call);
        }

        if (call)
        {
          [v18 removeObjectForKey:d];
          if (![v18 count])
          {
            [(NSMutableDictionary *)self->_pendingSends removeObjectForKey:identifier];
            if (![(NSMutableDictionary *)self->_pendingSends count])
            {

              self->_pendingSends = 0;
            }
          }

          v22 = [(NSMutableDictionary *)self->_pendingWillSendBlocks objectForKey:identifier];
          if ([v22 objectForKey:d])
          {
            [v22 removeObjectForKey:d];
            if (![v22 count])
            {
              [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:identifier];
              if (![(NSMutableDictionary *)self->_pendingWillSendBlocks count])
              {

                self->_pendingWillSendBlocks = 0;
              }
            }

            if (v20 && IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                identifierCopy4 = identifier;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Delivery got lastCall update for %@ without having gotten a willSend update.", buf, 0xCu);
              }
            }
          }

          [(NSMutableDictionary *)self->_pendingTimestampUpdate removeObjectForKey:d];
          if (![(NSMutableDictionary *)self->_pendingTimestampUpdate count])
          {
            pendingTimestampUpdate = self->_pendingTimestampUpdate;
            p_pendingTimestampUpdate = &self->_pendingTimestampUpdate;

LABEL_39:
            *p_pendingTimestampUpdate = 0;
          }
        }
      }

      else
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_420DC;
        v30[3] = &unk_112C88;
        v31 = v19;
        callCopy = call;
        [v18 enumerateKeysAndObjectsUsingBlock:v30];
        if (call)
        {
          if ([-[NSMutableDictionary objectForKey:](self->_pendingWillSendBlocks objectForKey:{identifier), "count"}])
          {
            if (v20)
            {
              if (IMOSLoggingEnabled())
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  identifierCopy4 = identifier;
                  _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Delivery got lastCall update for %@ without having gotten a willSend update.", buf, 0xCu);
                }
              }
            }
          }

          [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:identifier];
          if (![(NSMutableDictionary *)self->_pendingWillSendBlocks count])
          {
            pendingWillSendBlocks = self->_pendingWillSendBlocks;
            p_pendingTimestampUpdate = &self->_pendingWillSendBlocks;

            goto LABEL_39;
          }
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        identifierCopy4 = identifier;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "No pending sends for identifier %@", buf, 0xCu);
      }
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations
{
  if (identifier)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138413314;
        identifierCopy2 = identifier;
        v20 = 2112;
        dCopy = d;
        v22 = 2112;
        destinationsCopy = destinations;
        v24 = 2112;
        skippedDestinationsCopy = skippedDestinations;
        v26 = 2112;
        toDestinationsCopy = toDestinations;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Received %@ callbackID %@ willSendTo %@ skipped %@ propertyMap %@", &v18, 0x34u);
      }
    }

    v15 = [(NSMutableDictionary *)self->_pendingWillSendBlocks objectForKey:identifier];
    if ([v15 count])
    {
      if (d)
      {
        v16 = [v15 objectForKey:d];
        if (v16)
        {
          v16[2](v16, destinations, skippedDestinations, toDestinations);
        }

        [v15 removeObjectForKey:d];
        if (![v15 count])
        {
          [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:identifier];
          if (![(NSMutableDictionary *)self->_pendingWillSendBlocks count])
          {

            self->_pendingWillSendBlocks = 0;
          }
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        identifierCopy2 = identifier;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "No pending will send blocks for identifier %@", &v18, 0xCu);
      }
    }
  }
}

- (void)_enqueueUpdateBlock:(id)block willSendBlock:(id)sendBlock identifier:(id)identifier callbackID:(id)d messageCommandOption:(id)option
{
  if (identifier && d)
  {
    if (option && [option integerValue] == &stru_20.flags)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          identifierCopy3 = identifier;
          v24 = 2112;
          dCopy3 = d;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "We have a command 100 we need to update the timestamp for identifier: %@ alternateCallbackID: %@", &v22, 0x16u);
        }
      }

      pendingTimestampUpdate = self->_pendingTimestampUpdate;
      if (!pendingTimestampUpdate)
      {
        pendingTimestampUpdate = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingTimestampUpdate = pendingTimestampUpdate;
      }

      if ([(NSMutableDictionary *)pendingTimestampUpdate objectForKey:d])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v22 = 138412546;
            identifierCopy3 = identifier;
            v24 = 2112;
            dCopy3 = d;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "We already have identifier (%@) to update the timestamp for callbackID (%@)", &v22, 0x16u);
          }
        }
      }

      [(NSMutableDictionary *)self->_pendingTimestampUpdate setObject:identifier forKey:d];
    }

    v15 = _Block_copy(block);
    v16 = _Block_copy(sendBlock);
    if (v15)
    {
      pendingSends = self->_pendingSends;
      if (!pendingSends)
      {
        pendingSends = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingSends = pendingSends;
      }

      v18 = [(NSMutableDictionary *)pendingSends objectForKey:identifier];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        if (v18)
        {
          CFDictionarySetValue(self->_pendingSends, identifier, v18);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BC390();
          }

          v18 = 0;
        }
      }

      CFDictionarySetValue(v18, d, v15);
    }

    if (v16)
    {
      pendingWillSendBlocks = self->_pendingWillSendBlocks;
      if (!pendingWillSendBlocks)
      {
        pendingWillSendBlocks = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingWillSendBlocks = pendingWillSendBlocks;
      }

      v21 = [(NSMutableDictionary *)pendingWillSendBlocks objectForKey:identifier];
      if (!v21)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        if (v21)
        {
          CFDictionarySetValue(self->_pendingWillSendBlocks, identifier, v21);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BC41C();
          }

          v21 = 0;
        }
      }

      CFDictionarySetValue(v21, d, v16);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      identifierCopy3 = identifier;
      v24 = 2112;
      dCopy3 = d;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Nil identifier %@ or callbackID %@ passed into _enqueueUpdateBlock -- we won't be able to process IDS send feedback!", &v22, 0x16u);
    }
  }
}

- (id)messageDictionaryWithMessageItem:(id)item isBusiness:(BOOL)business chatIdentifier:(id)identifier toParticipants:(id)participants originallyToParticipants:(id)toParticipants additionalContext:(id)context msgPayloadUploadDictionary:(id)dictionary originalPayload:(id)self0
{
  value = business;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      contextCopy = item;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Creating message dictionary for message item: %@", buf, 0xCu);
    }
  }

  if (item)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    if ((([item isAudioMessage] & 1) != 0 || objc_msgSend(objc_msgSend(item, "balloonBundleID"), "length")) && (objc_msgSend(item, "isFinished") & 1) == 0)
    {
      CFDictionarySetValue(v15, @"u", &__kCFBooleanTrue);
    }

    if ([item isAudioMessage])
    {
      CFDictionarySetValue(v15, @"a", &__kCFBooleanTrue);
    }

    if ([item isAutoReply])
    {
      CFDictionarySetValue(v15, @"ar", &__kCFBooleanTrue);
    }

    if ([item isFromExternalSource])
    {
      CFDictionarySetValue(v15, @"ms", &__kCFBooleanTrue);
    }

    if ([item isSOS])
    {
      CFDictionarySetValue(v15, @"sos", &__kCFBooleanTrue);
    }

    if ([item isCritical])
    {
      CFDictionarySetValue(v15, @"c", &__kCFBooleanTrue);
    }

    [(MessageDeliveryController *)self _setReplyToGUIDForMessage:item messageDictionary:v15];
    threadIdentifier = [item threadIdentifier];
    if (threadIdentifier)
    {
      CFDictionarySetValue(v15, @"tg", threadIdentifier);
      if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
      {
        v17 = [(MessageDeliveryController *)self _threadOriginatorFallbackHashForMessageItem:item];
        if (v17)
        {
          CFDictionarySetValue(v15, @"tgf", v17);
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v17 length];
            *buf = 134217984;
            contextCopy = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "setThreadOriginatorFallbackHash: len %llu", buf, 0xCu);
          }
        }
      }
    }

    if ([item associatedMessageGUID])
    {
      associatedMessageGUID = [item associatedMessageGUID];
      if (associatedMessageGUID)
      {
        CFDictionarySetValue(v15, @"amk", associatedMessageGUID);
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          associatedMessageGUID2 = [item associatedMessageGUID];
          *buf = 138412290;
          contextCopy = associatedMessageGUID2;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "setAssociatedMessageGUID: %@", buf, 0xCu);
        }
      }

      if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
      {
        v23 = [(MessageDeliveryController *)self _associatedMessageFallbackHashForMessageItem:item];
        if (v23)
        {
          CFDictionarySetValue(v15, @"amf", v23);
        }

        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v23 length];
            *buf = 134217984;
            contextCopy = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "setAssociatedMessageFallbackHash: len %llu", buf, 0xCu);
          }
        }
      }
    }

    if ([item associatedMessageType])
    {
      v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [item associatedMessageType]);
      if (v26)
      {
        CFDictionarySetValue(v15, @"amt", v26);
      }

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          associatedMessageType = [item associatedMessageType];
          *buf = 134217984;
          contextCopy = associatedMessageType;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "setAssociatedMessageType: %lld", buf, 0xCu);
        }
      }
    }

    associatedMessageRange = [item associatedMessageRange];
    v31 = v30;
    if (v30 && !value)
    {
      v32 = associatedMessageRange;
      v33 = [NSNumber numberWithUnsignedInteger:associatedMessageRange];
      if (v33)
      {
        CFDictionarySetValue(v15, @"amrlc", v33);
      }

      v34 = [NSNumber numberWithUnsignedInteger:v31];
      if (v34)
      {
        CFDictionarySetValue(v15, @"amrln", v34);
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v109.location = v32;
          v109.length = v31;
          v36 = NSStringFromRange(v109);
          *buf = 138412290;
          contextCopy = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "setAssociatedMessageRange: %@", buf, 0xCu);
        }
      }
    }

    if ([item associatedMessageEmoji])
    {
      associatedMessageEmoji = [item associatedMessageEmoji];
      if (associatedMessageEmoji)
      {
        CFDictionarySetValue(v15, @"ame", associatedMessageEmoji);
      }

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "setAssociatedMessageEmoji", buf, 2u);
        }
      }
    }

    messageSummaryInfoForSending = [item messageSummaryInfoForSending];
    if ([messageSummaryInfoForSending count])
    {
      v40 = [NSData dataWithMessageSummaryInfoDictionary:messageSummaryInfoForSending];
      if (v40)
      {
        CFDictionarySetValue(v15, @"msi", v40);
      }
    }

    if ([objc_msgSend(item balloonBundleID])
    {
      balloonBundleID = [item balloonBundleID];
      if (balloonBundleID)
      {
        CFDictionarySetValue(v15, @"bid", balloonBundleID);
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          balloonBundleID2 = [item balloonBundleID];
          *buf = 138412290;
          contextCopy = balloonBundleID2;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Set balloonBundleID: %@", buf, 0xCu);
        }
      }
    }

    if ([objc_msgSend(item "expressiveSendStyleID")])
    {
      expressiveSendStyleID = [item expressiveSendStyleID];
      if (expressiveSendStyleID)
      {
        CFDictionarySetValue(v15, @"iid", expressiveSendStyleID);
      }

      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          expressiveSendStyleID2 = [item expressiveSendStyleID];
          *buf = 138412290;
          contextCopy = expressiveSendStyleID2;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Set expressiveSendStyleID: %@", buf, 0xCu);
        }
      }
    }

    if ([objc_msgSend(item "typingIndicatorIcon")])
    {
      v47 = [objc_msgSend(item "typingIndicatorIcon")];
      if (v47)
      {
        CFDictionarySetValue(v15, @"tic", v47);
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          guid = [item guid];
          *buf = 138412290;
          contextCopy = guid;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Set typing indicator data for guid %@", buf, 0xCu);
        }
      }
    }

    v50 = [(MessageDeliveryController *)self _compressedAttributionInfoForMessage:item];
    if (v50)
    {
      CFDictionarySetValue(v15, @"ati", v50);
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [v50 length];
          guid2 = [item guid];
          *buf = 134218242;
          contextCopy = v52;
          v107 = 2112;
          v108 = guid2;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "set attribution info data (%tu bytes) for guid %@", buf, 0x16u);
        }
      }
    }

    if (!toParticipants)
    {
      toParticipants = participants;
    }

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        contextCopy = toParticipants;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "participants: %@", buf, 0xCu);
      }
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] && objc_msgSend(item, "isGroupTypingMessage"))
    {
      CFDictionarySetValue(v15, @"gt", &__kCFBooleanTrue);
      if (toParticipants)
      {
        CFDictionarySetValue(v15, @"p", toParticipants);
      }

      if (([item isFinished] & 1) == 0)
      {
        CFDictionarySetValue(v15, @"u", &__kCFBooleanTrue);
      }
    }

    v55 = [(MessageDeliveryController *)self _shouldSendAuxXML:item];
    if (([item isTypingMessage] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = @"NO";
          if (v55)
          {
            v57 = @"YES";
          }

          *buf = 138412290;
          contextCopy = v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "sendAuxXMLVersion: %@", buf, 0xCu);
        }
      }
    }

    if ([item isFinished])
    {
      v58 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:isAudioMessage:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:isAudioMessage:", [item body], objc_msgSend(item, "shouldSendPartIndexesInMessageBody"), objc_msgSend(item, "isAudioMessage"));
      [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v58];
      v59 = [objc_msgSend(item "body")];
      if ([(SuperToMessageParserContext *)v58 isSimpleString])
      {
        v60 = 1;
      }

      else
      {
        if ([objc_msgSend(item "body")])
        {
          v61 = v59 == 0;
        }

        else
        {
          v61 = 1;
        }

        v60 = v61;
      }

      outHTML = [(SuperToMessageParserContext *)v58 outHTML];
      auxHTML = [(SuperToMessageParserContext *)v58 AuxHTML];
      if (@"1")
      {
        CFDictionarySetValue(v15, @"v", @"1");
      }

      _replicationSourceIDForSending = [(MessageDeliveryController *)self _replicationSourceIDForSending];
      if (_replicationSourceIDForSending)
      {
        CFDictionarySetValue(v15, @"rp", _replicationSourceIDForSending);
      }

      if (outHTML)
      {
        v65 = v60;
      }

      else
      {
        v65 = 1;
      }

      if ((v65 & 1) == 0)
      {
        CFDictionarySetValue(v15, @"x", outHTML);
      }

      if (auxHTML)
      {
        v66 = v55;
      }

      else
      {
        v66 = 0;
      }

      if (v66 == 1)
      {
        CFDictionarySetValue(v15, @"ix", auxHTML);
      }

      if (v59)
      {
        CFDictionarySetValue(v15, @"t", v59);
      }

      subject = [item subject];
      if (subject)
      {
        CFDictionarySetValue(v15, @"s", subject);
      }

      if (toParticipants)
      {
        CFDictionarySetValue(v15, @"p", toParticipants);
      }

      if ([item isExpirable])
      {
        CFDictionarySetValue(v15, @"e", &__kCFBooleanTrue);
      }
    }

    if ((([item isTypingMessage] | value) & 1) == 0)
    {
      contactsAvatarRecipeData = [item contactsAvatarRecipeData];
      if (contactsAvatarRecipeData)
      {
        CFDictionarySetValue(v15, @"sld", contactsAvatarRecipeData);
        if (IMOSLoggingEnabled())
        {
          v69 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "set avatar likeness", buf, 2u);
          }
        }
      }

      [(MessageDeliveryController *)self _sendNicknameToRecipientsIfNeededForChat:[(MessageDeliveryController *)self _chatForChatIdentifier:identifier] forMessage:item];
      [(MessageDeliveryController *)self appendChatRelatedPropertiesToMessageDictionary:v15 forMessage:item chatIdentifier:identifier];
    }

    bizIntent = [item bizIntent];
    v71 = bizIntent;
    if (bizIntent)
    {
      v72 = [bizIntent objectForKey:@"biz-intent-id"];
      v73 = [v71 objectForKey:@"biz-group-id"];
      if (v72)
      {
        CFDictionarySetValue(v15, @"bint", v72);
      }

      if (v73)
      {
        CFDictionarySetValue(v15, @"bgrp", v73);
      }
    }

    if ([item locale])
    {
      locale = [item locale];
      if (locale)
      {
        CFDictionarySetValue(v15, @"bloc", locale);
      }
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags sharedFeatureFlags])
    {
      v75 = [(MessageDeliveryController *)self _chatForChatIdentifier:identifier];
      if ([v75 containsActiveBIASession])
      {
        lastUsedBIAUserID = [v75 lastUsedBIAUserID];
        if ([lastUsedBIAUserID length])
        {
          if (lastUsedBIAUserID)
          {
            CFDictionarySetValue(v15, @"buid", lastUsedBIAUserID);
          }

          lastUsedBIAReferenceID = [v75 lastUsedBIAReferenceID];
          v78 = [lastUsedBIAReferenceID length];
          if (lastUsedBIAReferenceID && v78)
          {
            CFDictionarySetValue(v15, @"brid", lastUsedBIAReferenceID);
          }
        }
      }
    }

    if ([objc_msgSend(item "payloadData")])
    {
      if (dictionary)
      {
        if (IMOSLoggingEnabled())
        {
          v79 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "Set balloon payload attachment dictionary", buf, 2u);
          }
        }

        CFDictionarySetValue(v15, @"bpdi", dictionary);
      }

      else
      {
        payloadCopy = payload;
        if (!payload)
        {
          payloadCopy = [item payloadData];
        }

        valuea = [payloadCopy _FTCopyGzippedData];
        balloonBundleID3 = [item balloonBundleID];
        if ([balloonBundleID3 isEqualToString:IMBalloonPluginIdentifierRichLinks] && objc_msgSend(objc_msgSend(item, "fileTransferGUIDs"), "count"))
        {
          if (IMOSLoggingEnabled())
          {
            v82 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              guid3 = [item guid];
              *buf = 138412290;
              contextCopy = guid3;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "Trying to recombine rich link payload from attachments for msg guid %@", buf, 0xCu);
            }
          }

          v84 = objc_alloc_init(NSMutableArray);
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          fileTransferGUIDs = [item fileTransferGUIDs];
          v86 = [fileTransferGUIDs countByEnumeratingWithState:&v100 objects:v104 count:16];
          if (v86)
          {
            v87 = *v101;
            do
            {
              for (i = 0; i != v86; i = i + 1)
              {
                if (*v101 != v87)
                {
                  objc_enumerationMutation(fileTransferGUIDs);
                }

                v89 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v100 + 1) + 8 * i)];
                if (v84)
                {
                  v90 = v89;
                  if ([v89 localURL])
                  {
                    CFArrayAppendValue(v84, [v90 localURL]);
                  }
                }
              }

              v86 = [fileTransferGUIDs countByEnumeratingWithState:&v100 objects:v104 count:16];
            }

            while (v86);
          }

          [item payloadData];
          valuea = [IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs() _FTCopyGzippedData];
        }

        if (valuea)
        {
          CFDictionarySetValue(v15, @"bp", valuea);
        }

        if (IMOSLoggingEnabled())
        {
          v91 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            guid4 = [item guid];
            *buf = 138412290;
            contextCopy = guid4;
            _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "set balloon payload for msg guid %@", buf, 0xCu);
          }
        }
      }
    }

    if ([objc_msgSend(item "replicatedFallbackGUIDs")])
    {
      -[__CFDictionary setObject:forKeyedSubscript:](v15, "setObject:forKeyedSubscript:", [item replicatedFallbackGUIDs], @"rf");
    }

    if ([(__CFDictionary *)v15 count])
    {
      if ([context count])
      {
        [(__CFDictionary *)v15 addEntriesFromDictionary:context];
        if (IMOSLoggingEnabled())
        {
          v93 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            contextCopy = context;
            _os_log_impl(&dword_0, v93, OS_LOG_TYPE_INFO, " => Adding context: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v94 = IMLogHandleForCategory();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      sub_BC4A8();
    }

    return 0;
  }

  return v15;
}

- (id)idsOptionsWithMessageItem:(id)item toID:(id)d fromID:(id)iD sendGUIDData:(id)data alternateCallbackID:(id)callbackID isBusinessMessage:(BOOL)message chatIdentifier:(id)identifier requiredRegProperties:(id)value interestingRegProperties:(id)self1 requiresLackOfRegProperties:(id)self2 deliveryContext:(id)self3 isGroupChat:(BOOL)self4 canInlineAttachments:(BOOL)self5 msgPayloadUploadDictionary:(id)self6 messageDictionary:(id)self7
{
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v63 = item;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Setting IDS options with messageItem: %@", buf, 0xCu);
    }
  }

  v24 = [d isEqualToString:iD];
  v25 = [NSNumber numberWithInteger:100];
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = [item isTypingMessage] ^ 1;
  }

  v27 = [NSNumber numberWithBool:v26];
  v28 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v25, IDSSendMessageOptionCommandKey, v27, IDSSendMessageOptionWantsResponseKey, iD, IDSSendMessageOptionFromIDKey, data, IDSSendMessageOptionUUIDKey, callbackID, IDSSendMessageOptionAlternateCallbackIdentifierKey, 0];
  if (!message)
  {
    v29 = [(MessageDeliveryController *)self _keyTransparencyEnforcementDictionaryForChatIdentifier:identifier];
    if (v29)
    {
      CFDictionarySetValue(v28, @"IDSSendMessageOptionKTVerificationUUIDKey", v29);
    }
  }

  if (value)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, value);
  }

  if (properties)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionInterestingRegistrationPropertiesKey, properties);
  }

  CFDictionarySetValue(v28, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
  if (context)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        guid = [item guid];
        *buf = 138412802;
        *v63 = guid;
        *&v63[8] = 2112;
        contextCopy = context;
        v65 = 1024;
        chatCopy = chat;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Requsting delivery status for message GUID %@ due to delivery context %@ isGroupChat %{BOOL}d", buf, 0x1Cu);
      }
    }

    CFDictionarySetValue(v28, IDSSendMessageOptionDeliveryStatusContextKey, context);
    CFDictionarySetValue(v28, IDSSendMessageOptionWantsDeliveryStatusKey, &__kCFBooleanTrue);
  }

  if (((chat | v24) & 1) == 0 && ([item isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        guid2 = [item guid];
        *buf = 138412290;
        *v63 = guid2;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Requsting delivery status for message GUID %@ because !isGroupChat", buf, 0xCu);
      }
    }

    CFDictionarySetValue(v28, IDSSendMessageOptionWantsDeliveryStatusKey, &__kCFBooleanTrue);
  }

  if ([item isTypingMessage])
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionFireAndForgetKey, &__kCFBooleanTrue);
  }

  if (regProperties)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey, regProperties);
  }

  if (([item isTypingMessage] & 1) == 0 && objc_msgSend(+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags, "sharedFeatureFlags"), "certifiedDeliveryEnabled") && !message)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionWantsCertifiedDeliveryKey, &__kCFBooleanTrue);
  }

  if ([messageDictionary count])
  {
    v34 = [messageDictionary valueForKey:@"oe"];
    if (v34)
    {
      CFDictionarySetValue(v28, @"IDSSendMessageOptionOriginalTimestampKey", v34);
    }

    v35 = JWEncodeDictionary();
    if ([objc_msgSend(item "fileTransferGUIDs")] && !attachments || (v36 = objc_msgSend(objc_msgSend(item, "payloadData"), "length"), dictionary) && v36)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          fileTransferGUIDs = [item fileTransferGUIDs];
          v39 = @"NO";
          if (attachments)
          {
            v39 = @"YES";
          }

          *buf = 138412546;
          *v63 = fileTransferGUIDs;
          *&v63[8] = 2112;
          contextCopy = v39;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Not compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
        }
      }

      _FTCopyGzippedData = v35;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          fileTransferGUIDs2 = [item fileTransferGUIDs];
          v43 = @"NO";
          if (attachments)
          {
            v43 = @"YES";
          }

          *buf = 138412546;
          *v63 = fileTransferGUIDs2;
          *&v63[8] = 2112;
          contextCopy = v43;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
        }
      }

      _FTCopyGzippedData = [v35 _FTCopyGzippedData];
    }

    v44 = _FTCopyGzippedData;
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v35 length];
        v47 = [v44 length];
        *buf = 67109376;
        *v63 = v46;
        *&v63[4] = 1024;
        *&v63[6] = v47;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Compressed message data from: %u  to: %u", buf, 0xEu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = [v44 length];
        *buf = 67109120;
        *v63 = v49;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size: %u", buf, 8u);
      }
    }

    [(NSMutableDictionary *)v28 setObject:v44 forKey:IDSSendMessageOptionDataToEncryptKey];
  }

  v50 = &IDSSendMessageOptionTimeoutKey;
  if (![item scheduleType])
  {
    v56 = &off_119698;
    goto LABEL_77;
  }

  v51 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  if (v51)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionTimeoutKey, v51);
  }

  [objc_msgSend(item time];
  v53 = v52;
  if ([item scheduleType] == &dword_0 + 1)
  {
    if (v53 > 0.0)
    {
      v54 = [NSNumber numberWithDouble:v53];
      if (v54)
      {
        CFDictionarySetValue(v28, IDSSendMessageOptionDeliveryMinimumTimeDelayKey, v54);
      }
    }

    CFDictionarySetValue(v28, IMIDSSendMessageOptionAlwaysIncludeSelfKey, &__kCFBooleanTrue);
    v55 = -[MessageDeliveryController _getQueueIdentifierFromGUID:](self, "_getQueueIdentifierFromGUID:", [item guid]);
    if (v55)
    {
      CFDictionarySetValue(v28, IDSSendMessageOptionQueueOneIdentifierKey, v55);
    }

    v56 = [NSSet setWithObject:IDSRegistrationPropertySupportsEmojiStickers];
    if (v56)
    {
      v50 = &IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
LABEL_77:
      CFDictionarySetValue(v28, *v50, v56);
    }
  }

  else if ([item scheduleType] == &dword_0 + 2)
  {
    if (v53 > 0.0)
    {
      [objc_msgSend(item "time")];
      v57 = [NSNumber numberWithDouble:?];
      if (v57)
      {
        CFDictionarySetValue(v28, IMIDSSendMessageOptionDeliveryMinimumTimeKey, v57);
      }
    }

    CFDictionarySetValue(v28, IMIDSSendMessageOptionAlwaysIncludeSelfKey, &__kCFBooleanTrue);
    v56 = -[MessageDeliveryController _getQueueIdentifierFromGUID:](self, "_getQueueIdentifierFromGUID:", [item guid]);
    if (v56)
    {
      v50 = &IDSSendMessageOptionQueueOneIdentifierKey;
      goto LABEL_77;
    }
  }

  telemetryMetrics = [item telemetryMetrics];
  if (telemetryMetrics)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionSendMetricsKey, telemetryMetrics);
  }

  telemetryMetricsReasonCode = [item telemetryMetricsReasonCode];
  if (telemetryMetricsReasonCode)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionSendReasonKey, telemetryMetricsReasonCode);
  }

  return v28;
}

- (id)_getQueueIdentifierFromGUID:(id)d
{
  v3 = [d dataUsingEncoding:4];
  v4 = [[NSMutableData alloc] initWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

- (BOOL)_shouldSendAuxXML:(id)l
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  fileTransferGUIDs = [l fileTransferGUIDs];
  v4 = [fileTransferGUIDs countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(fileTransferGUIDs);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [+[IMDFileTransferCenter transferForGUID:v15], "transferForGUID:", v8];
        if ([(__CFString *)v9 isAuxImage])
        {
          if ([+[IMDFileTransferCenter transferForGUID:"transferForGUID:"]
          {
            v11 = 1;
            goto LABEL_15;
          }

          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = v15;
              v21 = v9;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "shouldSendAuxXML we expected to find an Aux video for transfer %@", buf, 0xCu);
            }
          }
        }
      }

      v4 = [fileTransferGUIDs countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_15:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "shouldSendAuxXML %@", buf, 0xCu);
    }
  }

  return v11;
}

- (id)_compressedAttributionInfoForMessage:(id)message
{
  v4 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  fileTransferGUIDs = [message fileTransferGUIDs];
  v6 = [fileTransferGUIDs countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = *v21;
  *&v7 = 138412290;
  v18 = v7;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(fileTransferGUIDs);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [+[IMDFileTransferCenter transferForGUID:v18], "transferForGUID:", v11];
      if ([v12 attributionInfo])
      {
        attributionInfo = [v12 attributionInfo];
        v8 = 1;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v25 = v11;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "attributionInfo is nil for transferGUID %@", buf, 0xCu);
          }
        }

        attributionInfo = +[NSNull null];
      }

      [v4 addObject:attributionInfo];
    }

    v6 = [fileTransferGUIDs countByEnumeratingWithState:&v20 objects:v26 count:16];
  }

  while (v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  v15 = [(NSData *)+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver _FTCopyGzippedData:v4];
  if (v19)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = v18;
        v25 = v19;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Failed to unarchive attributionInfo. Error: %@", buf, 0xCu);
      }
    }
  }

  return v15;
}

- (BOOL)forceBackwardsCompatibleMessageForBundleID:(id)d
{
  v15[0] = IMBalloonExtensionIDWithSuffix();
  v15[1] = IMBalloonExtensionIDWithSuffix();
  v4 = [NSArray arrayWithObjects:v15 count:2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * v8) isEqualToString:d])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)shouldSendBackwardsCompatibleMessageForBundleID:(id)d
{
  if (![d hasPrefix:@"com.apple.messages.MSMessageExtensionBalloonPlugin"])
  {
    return 1;
  }

  return [(MessageDeliveryController *)self forceBackwardsCompatibleMessageForBundleID:d];
}

- (id)_chatForChatIdentifier:(id)identifier
{
  result = [(MessageServiceSession *)[(MessageDeliveryController *)self session] chatForChatIdentifier:identifier style:45 updatingAccount:1];
  if (!result)
  {
    session = [(MessageDeliveryController *)self session];

    return [(MessageServiceSession *)session chatForChatIdentifier:identifier style:43 updatingAccount:1];
  }

  return result;
}

- (void)_sendNicknameToRecipientsIfNeededForChat:(id)chat forMessage:(id)message
{
  if ([message shouldSendMeCard])
  {
    if (0xCCCCCCCCCCCCCCCDLL * [chat numMessagesSent] <= 0x3333333333333333)
    {
      [chat meCardUpdated];
    }

    else
    {
      numMessagesSent = [chat numMessagesSent];
      meCardUpdated = [chat meCardUpdated];
      if (numMessagesSent != &dword_0 + 1 && !meCardUpdated)
      {
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v14 = 0;
            v8 = "Not appending me card to message dictionary";
LABEL_11:
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, v8, &v14, 2u);
            return;
          }
        }

        return;
      }
    }

    v9 = +[NSMutableSet set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    participants = [chat participants];
    v11 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(participants);
          }

          [v9 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "ID")}];
        }

        v11 = [participants countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [+[IMDNicknameController sharedInstance](IMDNicknameController markHandlesAsAllowed:"markHandlesAsAllowed:", v9];
    -[IMDNicknameController sendPersonalNicknameToRecipients:chatGUID:fromHandle:onlySendToThoseLoggedOutOfIMessage:](+[IMDNicknameController sharedInstance](IMDNicknameController, "sharedInstance"), "sendPersonalNicknameToRecipients:chatGUID:fromHandle:onlySendToThoseLoggedOutOfIMessage:", [chat participants], objc_msgSend(chat, "guid"), objc_msgSend(chat, "lastAddressedLocalHandle"), 1);
    return;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v8 = "Not appending me card, message.shouldSendMeCard is false, indicating recipient is not in the allowed audience for nickname sharing";
      goto LABEL_11;
    }
  }
}

- (void)_appendMyTranscriptBackgroundVersionToMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat
{
  v8 = [IDSServerBag sharedInstanceForBagType:1];
  v9 = [v8 objectForKey:@"include-transcript-background-info-in-regular-iMessages"];
  if (!v9 || [v9 BOOLValue])
  {
    v10 = [v8 objectForKey:@"include-transcript-background-version-information-interval"];
    v11 = ([v10 integerValue] < 1 ? &dword_0 + 3 : objc_msgSend(v10, "integerValue"));
    if (([chat numMessagesSent] % v11 == 2 || objc_msgSend(chat, "numMessagesSent") == &dword_0 + 1) && objc_msgSend(chat, "transcriptBackgroundVersion") && objc_msgSend(chat, "transcriptBackgroundPath"))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          guid = [message guid];
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Including transcript background version in this message %@", &v13, 0xCu);
        }
      }

      [dictionary setObject:objc_msgSend(chat forKey:{"transcriptBackgroundVersion"), @"tbid"}];
    }
  }
}

- (void)_appendMyNicknameToMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat
{
  if ([message shouldSendMeCard])
  {
    if (0xCCCCCCCCCCCCCCCDLL * [chat numMessagesSent] <= 0x3333333333333333)
    {
      meCardUpdated = [chat meCardUpdated];
    }

    else
    {
      numMessagesSent = [chat numMessagesSent];
      meCardUpdated2 = [chat meCardUpdated];
      meCardUpdated = meCardUpdated2;
      if (numMessagesSent != &dword_0 + 1 && !meCardUpdated2)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            v12 = "Not appending me card to message dictionary";
LABEL_11:
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, &v27, 2u);
            return;
          }
        }

        return;
      }
    }

    newNicknameInfoToSend = [+[IMDNicknameController sharedInstance](IMDNicknameController newNicknameInfoToSend];
    v14 = IMOSLoggingEnabled();
    if (newNicknameInfoToSend)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          guid = [message guid];
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Including me card in this message %@", &v27, 0xCu);
        }
      }

      if ([objc_msgSend(+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"enable-snap-v2-back-compat", "BOOLValue"}])
      {
        v16 = +[NSMutableSet set];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        participants = [chat participants];
        v18 = [participants countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v18)
        {
          v19 = *v23;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(participants);
              }

              [v16 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "ID")}];
            }

            v18 = [participants countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v18);
        }

        [+[IMDNicknameController sharedInstance](IMDNicknameController markHandlesAsAllowed:"markHandlesAsAllowed:", v16];
        [dictionary addEntriesFromDictionary:newNicknameInfoToSend];
      }
    }

    else if (v14)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        guid = [message guid];
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Me card data not available, not including in message %@", &v27, 0xCu);
      }
    }

    if (meCardUpdated)
    {
      [chat setMeCardUpdated:0];
    }

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      v12 = "Not appending me card, message.shouldSendMeCard is false, indicating recipient is not in the allowed audience for nickname sharing";
      goto LABEL_11;
    }
  }
}

- (void)_appendRecipientAvailabilityVerificationInfoToMessageDictionary:(id)dictionary forChat:(id)chat
{
  if ([chat style] != 45)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LOWORD(v22) = 0;
    v10 = "Not appending availability verification info for non 1-1 chat";
    goto LABEL_10;
  }

  v7 = [objc_msgSend(chat "participants")];
  if (v7)
  {
    v8 = [objc_msgSend(v7 "ID")];
    if ([v8 length])
    {
      if ((+[IMDAvailabilityVerificationManager deviceSupportsSubscriptionValidationTokens]& 1) != 0)
      {
        if (0xAAAAAAAAAAAAAAABLL * [chat numMessagesSent] + 0x5555555555555555 >= 0x5555555555555555)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v22 = 134217984;
              v23 = 3;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Not appending off grid availability verification info to this message. Info is only included in one of every %ld messages.", &v22, 0xCu);
            }
          }

          [+[IMDOffGridAvailabilityVerificationManager sharedInstance](IMDOffGridAvailabilityVerificationManager populateCacheForHandleID:"populateCacheForHandleID:", v8];
        }

        else
        {
          [(MessageDeliveryController *)self _appendOffGridAvailabilityPropertiesToMessageDictionary:dictionary participantHandleID:v8];
        }

        if (0xAAAAAAAAAAAAAAABLL * [chat numMessagesSent] < 0x5555555555555556)
        {
          v15 = [+[IMDAvailabilityVerificationManager sharedInstance](IMDAvailabilityVerificationManager cachedAvailabilityVerificationTokensForHandleID:"cachedAvailabilityVerificationTokensForHandleID:", v8];
          v16 = v15;
          if (v15)
          {
            subscriptionValidationToken = [v15 subscriptionValidationToken];
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v22 = 138412546;
                v23 = subscriptionValidationToken;
                v24 = 2112;
                v25 = v8;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Appending subscriptionValidationToken %@ to message for handleID %@", &v22, 0x16u);
              }
            }

            [dictionary setObject:subscriptionValidationToken forKey:@"arc"];
            encryptionValidationToken = [v16 encryptionValidationToken];
            if (encryptionValidationToken)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v22 = 138412546;
                  v23 = encryptionValidationToken;
                  v24 = 2112;
                  v25 = v8;
                  _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Appending encryptionValidationToken %@ to message for handleID %@", &v22, 0x16u);
                }
              }

              [dictionary setObject:encryptionValidationToken forKey:@"are"];
            }
          }

          else
          {
            v21 = IMLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_BC4E4();
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v22 = 134217984;
              v23 = 3;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Not appending availability verification info to this message. Info is only included in one of every %ld messages.", &v22, 0xCu);
            }
          }

          [+[IMDAvailabilityVerificationManager sharedInstance](IMDAvailabilityVerificationManager populateCacheWithAvailabilityVerificationTokensForHandleID:"populateCacheWithAvailabilityVerificationTokensForHandleID:", v8];
        }

        return;
      }

      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        return;
      }

      LOWORD(v22) = 0;
      v10 = "Not appending availability verification info to this message. Device does not support validation tokens.";
LABEL_10:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v10, &v22, 2u);
      return;
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_BC554();
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BC590();
    }
  }
}

- (void)_appendOffGridAvailabilityPropertiesToMessageDictionary:(id)dictionary participantHandleID:(id)d
{
  v6 = [+[IMDOffGridAvailabilityVerificationManager sharedInstance](IMDOffGridAvailabilityVerificationManager cachedAvailabilityTokensForHandleID:"cachedAvailabilityTokensForHandleID:", d];
  if (v6)
  {
    v7 = v6;
    subscriptionValidationToken = [v6 subscriptionValidationToken];
    encryptionValidationToken = [v7 encryptionValidationToken];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = subscriptionValidationToken;
        v15 = 2112;
        dCopy2 = d;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Appending offGridRecipientSubscriptionValidationTokenKey %@ to message for handleID %@", &v13, 0x16u);
      }
    }

    [dictionary setObject:subscriptionValidationToken forKeyedSubscript:@"aogrs"];
    if (encryptionValidationToken)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 138412546;
          v14 = encryptionValidationToken;
          v15 = 2112;
          dCopy2 = d;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Appending offGridRecipientEncryptionValidationTokenKey %@ to message for handleID %@", &v13, 0x16u);
        }
      }

      [dictionary setObject:encryptionValidationToken forKeyedSubscript:@"aogre"];
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_BC5CC();
    }
  }
}

- (void)appendChatRelatedPropertiesToMessageDictionary:(id)dictionary forMessage:(id)message chatIdentifier:(id)identifier
{
  v8 = [(MessageDeliveryController *)self _chatForChatIdentifier:identifier];
  if (v8)
  {
    v9 = v8;
    if ([(MessageDeliveryController *)self _nicknameFeatureEnabled])
    {
      [(MessageDeliveryController *)self _appendMyNicknameToMessageDictionary:dictionary forMessage:message chat:v9];
      [(MessageDeliveryController *)self _appendRecipientNicknameTruncatedRecordIDToMessageDictionary:dictionary forChat:v9];
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
    {
      [(MessageDeliveryController *)self _appendMyTranscriptBackgroundVersionToMessageDictionary:dictionary forMessage:message chat:v9];
    }

    [(MessageDeliveryController *)self _appendRecipientAvailabilityVerificationInfoToMessageDictionary:dictionary forChat:v9];
    [(MessageDeliveryController *)self _appendSeenOffGridStatusToMessageDictionary:dictionary forChat:v9];
    v10 = [v9 numMessagesSent] + 1;

    [v9 setNumMessagesSent:v10];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BC63C();
    }
  }
}

- (void)_appendRecipientNicknameTruncatedRecordIDToMessageDictionary:(id)dictionary forChat:(id)chat
{
  if ([chat style] == 45)
  {
    v6 = [objc_msgSend(chat "participants")];
    if (v6)
    {
      v7 = v6;
      v8 = -[IMDNicknameController nicknameForHandleURI:](+[IMDNicknameController sharedInstance](IMDNicknameController, "sharedInstance"), "nicknameForHandleURI:", [v6 ID]);
      v9 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v14 = 138412546;
            v15 = [v7 ID];
            v16 = 2112;
            v17 = v8;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "We have a nickname for handle id %@ nickname %@", &v14, 0x16u);
          }
        }

        v11 = [+[IMDNicknameController sharedInstance](IMDNicknameController substringRecordIDForNickname:"substringRecordIDForNickname:", v8];
        if ([v11 length])
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v14 = 138412290;
              v15 = v11;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Setting truncated record ID %@", &v14, 0xCu);
            }
          }

          [dictionary setObject:v11 forKey:MessageDictionaryNicknameParticipantTruncatedRIDKey];
        }
      }

      else if (v9)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = 138412546;
          v15 = [v7 ID];
          v16 = 2112;
          v17 = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "No nickname or record id did not  exist for handle ID %@ nickname %@", &v14, 0x16u);
        }
      }
    }
  }
}

- (void)_appendSeenOffGridStatusToMessageDictionary:(id)dictionary forChat:(id)chat
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Attempting to append off grid status to message dictionary", buf, 2u);
    }
  }

  if ([chat style] == 45)
  {
    v7 = [objc_msgSend(chat "participants")];
    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_45EA4;
      v10[3] = &unk_112CB0;
      v10[4] = v7;
      v10[5] = dictionary;
      [v7 cachedOffGridModeAndLastPublisherWithCompletion:v10];
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "No participant found, not appending off grid status";
        goto LABEL_13;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Not appending off grid status, not a 1:1 chat";
LABEL_13:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    }
  }
}

- (id)_computeRegPropertiesForNewFeatures:(id)features currentRegProperties:(id)properties currentInterestingProp:(id)prop
{
  if (properties)
  {
    v7 = [NSMutableSet setWithSet:properties];
  }

  else
  {
    v7 = +[NSMutableSet set];
  }

  v8 = v7;
  if (prop)
  {
    v9 = [NSMutableSet setWithSet:prop];
  }

  else
  {
    v9 = +[NSMutableSet set];
  }

  v10 = v9;
  v41 = v9;
  featuresCopy = features;
  if ([features isTypingMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        guid = [features guid];
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Not adding required reg properties for typing message msg %@", buf, 0xCu);
      }
    }

    LOBYTE(v12) = 0;
    goto LABEL_76;
  }

  [(NSMutableSet *)v10 addObject:IDSRegistrationPropertySupportsStewie];
  if ([features associatedMessageType] && objc_msgSend(features, "associatedMessageType") >= 1001)
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsAcknowledgementsV1];
    v13 = [objc_msgSend(features "messageSummaryInfo")];
    if ([v13 isEqualToString:IMBalloonPluginIdentifierPhotosExtension])
    {
      [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsPhotosExtensionV2];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  associatedMessageType = [features associatedMessageType];
  if (associatedMessageType == &stru_798.nreloc + 2 || associatedMessageType == &stru_BA0.segname[14] || (v15 = [features associatedMessageType], v15 == &stru_BA0.segname[15]) || v15 == &stru_798.nreloc + 3)
  {
    [(NSMutableSet *)v8 addObject:@"supports-stick-moji-backs"];
    v12 = 1;
  }

  if ([objc_msgSend(features "balloonBundleID")])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsPolls];
    v12 = 1;
  }

  if ([features associatedMessageType] == &stru_F58.reserved2)
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsPolls];
    v12 = 1;
  }

  if ([objc_msgSend(features "balloonBundleID")])
  {
    balloonBundleID = [features balloonBundleID];
    if (([balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks] & 1) == 0)
    {
      [features handle];
      IsBusinessID = IMStringIsBusinessID();
      balloonBundleID2 = [features balloonBundleID];
      if (IsBusinessID)
      {
        if ([(MessageDeliveryController *)self shouldSendBackwardsCompatibleMessageForBundleID:balloonBundleID2])
        {
          v19 = @"supports-biz-forward-compat-apps-v1";
LABEL_36:
          [(NSMutableSet *)v8 addObject:v19];
        }
      }

      else if ([balloonBundleID2 isEqualToString:IMBalloonExtensionIDWithSuffix()])
      {
        [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsActivitySharing];
      }

      else if ([objc_msgSend(features "balloonBundleID")])
      {
        v19 = IDSRegistrationPropertySupportsPhotosExtensionV1;
        goto LABEL_36;
      }

      [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsChatAppsV1];
      v12 = 1;
    }
  }

  [features payloadData];
  v20 = IMBalloonPluginRequiredCapabilitiesWithMessageData();
  if ([v20 count])
  {
    [(NSMutableSet *)v8 addObjectsFromArray:v20];
    v12 = 1;
  }

  if ([features isAudioMessage] && (objc_msgSend(features, "backwardsCompatibleVersion") & 1) == 0)
  {
    [(NSMutableSet *)v8 addObject:@"supports-audio-messaging-v2"];
    v12 = 1;
  }

  expressiveSendStyleID = [features expressiveSendStyleID];
  v22 = IMImpactEffectID_InvisibleInk;
  if ([expressiveSendStyleID isEqualToString:IMImpactEffectID_InvisibleInk])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsInvisibleInkV1];
    v12 = 1;
  }

  if ([objc_msgSend(features "expressiveSendStyleID")])
  {
    if (([objc_msgSend(features "expressiveSendStyleID")] & 1) == 0)
    {
      v23 = -[MessageDeliveryController _propertyForExpressiveSendStyle:](self, "_propertyForExpressiveSendStyle:", [features expressiveSendStyleID]);
      if (v23)
      {
        v24 = v23;
        if (v12)
        {
          v25 = v10;
        }

        else
        {
          v25 = v8;
        }

        [(NSMutableSet *)v25 addObject:v24];
        LOBYTE(v12) = 1;
      }
    }
  }

  if ([objc_msgSend(features "fileTransferGUIDs")])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    fileTransferGUIDs = [features fileTransferGUIDs];
    v27 = [fileTransferGUIDs countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v27)
    {
      v28 = *v47;
      v44 = IDSRegistrationPropertySupportsAnimojiV2;
      v29 = IDSRegistrationPropertySupportsAutoloopVideoV1;
      v43 = IDSRegistrationPropertySupportsEmojiStickers;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(fileTransferGUIDs);
          }

          v31 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v46 + 1) + 8 * i)];
          isAutoloopVideo = [v31 isAutoloopVideo];
          v33 = v29;
          if ((isAutoloopVideo & 1) != 0 || [v31 isAnimojiV2] && (v34 = objc_msgSend(v31, "wantsAlphaRemoved"), v33 = v44, (v34 & 1) == 0))
          {
            [(NSMutableSet *)v8 addObject:v33];
            LOBYTE(v12) = 1;
          }

          if ([v31 isAdaptiveImageGlyph])
          {
            [(NSMutableSet *)v8 addObject:@"supports-emoji-images"];
            LOBYTE(v12) = 1;
          }

          if (([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] & 1) == 0 && -[MessageDeliveryController _transferIsUserGeneratedOrEmojiSticker:](self, "_transferIsUserGeneratedOrEmojiSticker:", v31))
          {
            [(NSMutableSet *)v8 addObject:v43];
            LOBYTE(v12) = 1;
          }
        }

        v27 = [fileTransferGUIDs countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v27);
    }
  }

  if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    messageSummaryInfo = [featuresCopy messageSummaryInfo];
    if (messageSummaryInfo)
    {
      v36 = [messageSummaryInfo objectForKey:IMMessageSummaryInfoTranslatedMessageParts];
      v37 = featuresCopy;
      if (!v36)
      {
        goto LABEL_74;
      }

      [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsAutomaticTranslation];
      LOBYTE(v12) = 1;
    }
  }

  v37 = featuresCopy;
LABEL_74:
  if ([v37 isBeingRetried])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsOriginalTimestampOrderingV1];
  }

LABEL_76:
  if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    isSOS = [featuresCopy isSOS];
    v39 = &IDSRegistrationPropertySupportsSOSAlerting;
    if (!isSOS)
    {
      v39 = &IDSRegistrationPropertySupportsHybridGroupsV1;
    }

    [(NSMutableSet *)v8 addObject:*v39];
  }

  return [NSDictionary dictionaryWithObjectsAndKeys:v8, @"req", v41, @"int", [NSNumber numberWithBool:v12 & 1], @"newFeature", 0];
}

- (BOOL)_transferIsUserGeneratedOrEmojiSticker:(id)sticker
{
  if ([sticker isSticker] && (v4 = objc_msgSend(sticker, "attributionInfo"), v5 = objc_msgSend(v4, "objectForKeyedSubscript:", IMFileTransferAttributionInfoBundleIDKey), objc_msgSend(v5, "length")))
  {
    v6 = [v5 isEqualToString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.messages.MSMessageExtensionBalloonPlugin:0000000000:%@", IMBalloonBundleIdentifierCling)}];
    v7 = v6 | [v5 isEqualToString:{+[IMEmojiSticker defaultEmojiStickerPackID](IMEmojiSticker, "defaultEmojiStickerPackID")}];
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_propertyForExpressiveSendStyle:(id)style
{
  if (![style length] || (objc_msgSend(style, "isEqualToString:", IMImpactEffectID_InvisibleInk) & 1) != 0)
  {
    return 0;
  }

  v4 = IDSRegistrationPropertySupportsImpactEffectsV1;
  if (![style containsString:IMFullScreenMomentID])
  {
    return v4;
  }

  if (([style hasSuffix:@"CKSparklesEffect"] & 1) != 0 || objc_msgSend(style, "hasSuffix:", @"CKHeartEffect"))
  {
    v6 = &IDSRegistrationPropertySupportsFullScreenMomentsV2;
    return *v6;
  }

  if (([style hasSuffix:@"CKEchoEffect"] & 1) != 0 || objc_msgSend(style, "hasSuffix:", @"CKSpotlightEffect"))
  {
    v6 = &IDSRegistrationPropertySupportsFullScreenMomentsV3;
    return *v6;
  }

  return v4;
}

- (void)_setReplyToGUIDForMessage:(id)message messageDictionary:(id)dictionary
{
  if (([message isTypingMessage] & 1) == 0 && objc_msgSend(objc_msgSend(message, "replyToGUID"), "length"))
  {
    replyToGUID = [message replyToGUID];
    if (replyToGUID)
    {
      CFDictionarySetValue(dictionary, @"r", replyToGUID);
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412546;
        replyToGUID2 = [message replyToGUID];
        v10 = 2112;
        guid = [message guid];
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setReplyToMessageGUID: %@ for message: %@", &v8, 0x16u);
      }
    }
  }
}

- (void)_sendMessage:(id)message context:(id)context deliveryContext:(id)deliveryContext fromID:(id)d fromAccount:(id)account toID:(id)iD chatIdentifier:(id)identifier toSessionToken:(id)self0 toGroup:(id)self1 toParticipants:(id)self2 originallyToParticipants:(id)self3 requiredRegProperties:(id)self4 interestingRegProperties:(id)self5 requiresLackOfRegProperties:(id)self6 canInlineAttachments:(BOOL)self7 type:(int64_t)self8 msgPayloadUploadDictionary:(id)self9 originalPayload:(id)payload replyToMessageGUID:(id)uID fallbackCount:(unint64_t)count willSendBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  participantsCopy = toParticipants;
  if (![toParticipants count] && objc_msgSend(participants, "count"))
  {
    participantsCopy = participants;
  }

  v102 = participantsCopy;
  v28 = +[NSDate date];
  if ([participants count])
  {
    dCopy = d;
    completionBlockCopy = completionBlock;
    accountCopy = account;
    serviceName = [account serviceName];
    v30 = [serviceName isEqualToString:IDSServiceNameiMessageForBusiness];
    [message addTelemetryMetricForKey:0];
    v31 = 1;
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          if (([message isTypingMessage] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = [message guid];
                *&buf[12] = 2112;
                *&buf[14] = participants;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Send attachments action  guid %@ (URIs: %@)", buf, 0x16u);
              }
            }
          }

          v118[0] = _NSConcreteStackBlock;
          v118[1] = 3221225472;
          v119 = sub_48794;
          v120 = &unk_112D50;
          messageCopy = message;
          selfCopy = self;
          deliveryContextCopy = deliveryContext;
          v124 = dCopy;
          v125 = accountCopy;
          iDCopy = iD;
          identifierCopy = identifier;
          groupCopy = group;
          participantsCopy2 = participants;
          v130 = participantsCopy;
          propertiesCopy = properties;
          regPropertiesCopy = regProperties;
          attachmentsCopy = attachments;
          ofRegPropertiesCopy = ofRegProperties;
          dictionaryCopy = dictionary;
          payloadCopy = payload;
          uIDCopy = uID;
          countCopy = count;
          blockCopy2 = block;
          completionBlockCopy2 = completionBlock;
          if ([objc_msgSend(message "fileTransferGUIDs")])
          {
            [(MessageDeliveryController *)self _sendAttachmentsForMessage:message canSendInline:attachments displayIDs:participantsCopy additionalContext:context fromID:dCopy recipients:participants uploadStartTime:v28 fromAccount:accountCopy completionBlock:v118];
          }

          else
          {
            v119(v118, message, participantsCopy, context, 1, 0);
          }

          return;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = [message guid];
            *&buf[12] = 2112;
            *&buf[14] = participants;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "Send message action guid %@ (URIs: %@)", buf, 0x16u);
          }
        }

        if ([message collaborationInitiationRequestInfo] && (objc_msgSend(message, "isTypingOrCancelTypingMessage") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v82 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              guid = [message guid];
              *buf = 138412290;
              *&buf[4] = guid;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "guid: %@ detected collaborationInitiationRequestInfo, offloading collaboration send.", buf, 0xCu);
            }
          }

          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_48A64;
          v117[3] = &unk_112D78;
          v117[4] = completionBlock;
          LOBYTE(v88) = attachments;
          [(MessageDeliveryController *)self _sendMessage:message context:context deliveryContext:deliveryContext fromID:dCopy fromAccount:accountCopy toID:iD chatIdentifier:identifier toSessionToken:token toGroup:group toParticipants:participants originallyToParticipants:participantsCopy requiredRegProperties:properties interestingRegProperties:regProperties requiresLackOfRegProperties:ofRegProperties canInlineAttachments:v88 type:4 msgPayloadUploadDictionary:dictionary originalPayload:payload replyToMessageGUID:uID fallbackCount:count willSendBlock:0 completionBlock:v117];
          return;
        }

        v51 = [(MessageDeliveryController *)self messageDictionaryWithMessageItem:message isBusiness:v30 chatIdentifier:identifier toParticipants:participants originallyToParticipants:participantsCopy additionalContext:context msgPayloadUploadDictionary:dictionary originalPayload:payload];
        v31 = accountCopy == 0;
        if (accountCopy)
        {
          v90 = [[NSSet alloc] initWithArray:participants];
          v52 = [participantsCopy count];
          v53 = [iD isEqualToString:dCopy];
          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              isTypingMessage = [message isTypingMessage];
              v56 = @"NO";
              *buf = 138413570;
              *&buf[4] = v90;
              if (v52 <= 2)
              {
                v57 = @"NO";
              }

              else
              {
                v57 = @"YES";
              }

              if (isTypingMessage)
              {
                v58 = @"YES";
              }

              else
              {
                v58 = @"NO";
              }

              *&buf[12] = 2112;
              *&buf[14] = dCopy;
              *&buf[22] = 2112;
              if (v53)
              {
                v56 = @"YES";
              }

              iDCopy2 = iD;
              v146 = 2112;
              groupCopy2 = v57;
              v148 = 2112;
              v149 = v58;
              v150 = 2112;
              v151 = v56;
              _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "Sending to destinations %@   from: %@   to: %@   isGroup: %@  isTyping: %@  toMe: %@", buf, 0x3Eu);
            }
          }

          theDicta = objc_alloc_init(NSMutableDictionary);
          guid2 = [message guid];
          v60 = IDSGetUUIDData();
          v89 = +[NSString stringGUID];
          if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              *&buf[4] = guid2;
              *&buf[12] = 2112;
              *&buf[14] = v60;
              *&buf[22] = 2112;
              iDCopy2 = v89;
              _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "Setting send guid to %@  %@ (with alternate callback guid %@)", buf, 0x20u);
            }
          }

          if ([message isTapToRetry])
          {
            CFDictionarySetValue(theDicta, @"tr", &__kCFBooleanTrue);
            [message setIsTapToRetry:0];
          }

          v62 = [(MessageDeliveryController *)self _computeRegPropertiesForNewFeatures:message currentRegProperties:properties currentInterestingProp:regProperties];
          v99 = [v62 objectForKey:@"req"];
          v98 = [v62 objectForKey:@"int"];
          v63 = [objc_msgSend(v62 objectForKey:{@"newFeature", "BOOLValue"}];
          sendAlternateLayoutAsText = [message sendAlternateLayoutAsText];
          if (IMOSLoggingEnabled())
          {
            v65 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              guid3 = [message guid];
              v67 = @"NO";
              *buf = 138413314;
              *&buf[4] = guid3;
              *&buf[12] = 2112;
              if (v63)
              {
                v68 = @"YES";
              }

              else
              {
                v68 = @"NO";
              }

              *&buf[14] = v99;
              if (sendAlternateLayoutAsText)
              {
                v67 = @"YES";
              }

              *&buf[22] = 2112;
              iDCopy2 = v98;
              v146 = 2112;
              groupCopy2 = v68;
              v148 = 2112;
              v149 = v67;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "msg guid %@ Required reg properties %@ interesting properties %@ newFeature %@ sendPropsCompatMsgAsText %@", buf, 0x34u);
            }
          }

          v69 = v63 ^ 1;
          if (count > 5)
          {
            v69 = 1;
          }

          if ((v69 & 1) == 0)
          {
            [message payloadData];
            v70 = IMBalloonPluginFallbackLinkMetadata();
            v116[0] = _NSConcreteStackBlock;
            v116[1] = 3221225472;
            blockCopy = v116;
            v116[2] = sub_48BB8;
            v116[3] = &unk_112E18;
            v116[16] = count;
            v116[4] = message;
            v116[5] = self;
            v116[6] = dCopy;
            v116[7] = context;
            v116[8] = deliveryContext;
            v116[9] = accountCopy;
            v116[10] = identifier;
            v116[11] = v102;
            v116[12] = payload;
            v116[13] = uID;
            v116[15] = completionBlock;
            v116[14] = v70;
          }

          [message addTelemetryMetricForKey:2];
          BYTE1(v87) = attachments;
          LOBYTE(v87) = v52 > 2;
          v71 = [(MessageDeliveryController *)self idsOptionsWithMessageItem:message toID:iD fromID:dCopy sendGUIDData:v60 alternateCallbackID:v89 isBusinessMessage:v30 chatIdentifier:identifier requiredRegProperties:v99 interestingRegProperties:v98 requiresLackOfRegProperties:ofRegProperties deliveryContext:deliveryContext isGroupChat:v87 canInlineAttachments:dictionary msgPayloadUploadDictionary:v51 messageDictionary:?];
          if (IMOSLoggingEnabled())
          {
            v72 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              *&buf[4] = theDicta;
              *&buf[12] = 2112;
              *&buf[14] = accountCopy;
              *&buf[22] = 2112;
              iDCopy2 = v71;
              v146 = 2112;
              groupCopy2 = group;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "Sending IDS message: %@ from account: %@ options: %@ group: %@", buf, 0x2Au);
            }
          }

          if (group)
          {
            if (IMOSLoggingEnabled())
            {
              v73 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = group;
                _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "Setting toDestinations to be group: %@", buf, 0xCu);
              }
            }
          }

          if (![accountCopy accountType])
          {
            IMGreenTeaPhoneNumberTransmitLog();
          }

          v115 = 0;
          v114 = 0;
          v74 = 40;
          if (v30)
          {
            v74 = 48;
          }

          v75 = *(&self->super.isa + v74);
          v76 = v90;
          if (group)
          {
            v76 = [NSSet setWithObject:?];
          }

          if (([IMIDSService service:v75 sendMessage:theDicta fromAccount:accountCopy toDestinations:v76 priority:300 options:v71 identifier:&v114 error:&v115]& 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v85 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v115;
                _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "IDS sendMessage did not succeed, error %@", buf, 0xCu);
              }
            }

            if ([message scheduleType] == &dword_0 + 2)
            {
              [(MessageDeliveryController *)self handleScheduledMessageSendFailure:message];
            }

            (*(completionBlock + 2))(completionBlock, self, v102, 0, 4, [message backwardsCompatibleVersion], 0, 1);

            return;
          }

          if (v114)
          {
            completionBlockCopy = [completionBlock copy];
            if (IMOSLoggingEnabled())
            {
              v77 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = v114;
                v79 = +[NSThread isMainThread];
                v80 = @"NO";
                if (v79)
                {
                  v80 = @"YES";
                }

                *buf = 138412546;
                *&buf[4] = v78;
                *&buf[12] = 2112;
                *&buf[14] = v80;
                _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "Enqueuing completion block for IDS identifier %@ is main thread? %@", buf, 0x16u);
              }
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(iDCopy2) = 0;
            v112[0] = _NSConcreteStackBlock;
            v112[1] = 3221225472;
            v112[2] = sub_4A6B4;
            v112[3] = &unk_112E40;
            v112[14] = buf;
            v112[4] = v114;
            v112[5] = self;
            v112[6] = message;
            v112[7] = theDicta;
            attachmentsCopy2 = attachments;
            v112[8] = v51;
            v112[9] = dictionary;
            v112[10] = dCopy;
            v112[11] = accountCopy;
            v112[13] = completionBlockCopy;
            v112[12] = v102;
            if ([v51 count])
            {
              v81 = [NSNumber numberWithInteger:100];
            }

            else
            {
              v81 = 0;
            }

            [(MessageDeliveryController *)self _enqueueUpdateBlock:v112 willSendBlock:blockCopy identifier:v114 callbackID:v89 messageCommandOption:v81];
            _Block_object_dispose(buf, 8);
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v84 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = dCopy;
              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_INFO, "We found no account for fromID %@", buf, 0xCu);
            }
          }

          (*(completionBlock + 2))(completionBlock, self, participantsCopy, 0, 31, [message backwardsCompatibleVersion], 0, 1);
        }
      }

LABEL_131:
      if (v31 && completionBlockCopy)
      {
        if (IMOSLoggingEnabled())
        {
          v86 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, "Did not send anything. Failing message", buf, 2u);
          }
        }

        (*(completionBlockCopy + 2))(completionBlockCopy, self, v102, 0, 22, [message backwardsCompatibleVersion], 0, 1);
      }

      return;
    }

    switch(type)
    {
      case 2:
        if (([message isTypingMessage] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = [message guid];
              *&buf[12] = 2112;
              *&buf[14] = participants;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Send payload action  guid %@ (URIs: %@)", buf, 0x16u);
            }
          }
        }

        payloadCopy2 = payload;
        if (!payload)
        {
          payloadCopy2 = [message payloadData];
        }

        theDict = [payloadCopy2 _FTCopyGzippedData];
        balloonBundleID = [message balloonBundleID];
        if ([balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks])
        {
          v39 = objc_alloc_init(NSMutableArray);
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          fileTransferGUIDs = [message fileTransferGUIDs];
          v41 = [fileTransferGUIDs countByEnumeratingWithState:&v108 objects:v143 count:16];
          if (v41)
          {
            v42 = *v109;
            do
            {
              for (i = 0; i != v41; i = i + 1)
              {
                if (*v109 != v42)
                {
                  objc_enumerationMutation(fileTransferGUIDs);
                }

                v44 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v108 + 1) + 8 * i)];
                if (!([v44 isFromMomentShare] & 1 | (v39 == 0)) && objc_msgSend(v44, "localURL"))
                {
                  CFArrayAppendValue(v39, [v44 localURL]);
                }
              }

              v41 = [fileTransferGUIDs countByEnumeratingWithState:&v108 objects:v143 count:16];
            }

            while (v41);
          }

          if ([(__CFArray *)v39 count])
          {
            v45 = objc_autoreleasePoolPush();

            [message payloadData];
            theDict = [IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs() _FTCopyGzippedData];
            if (IMOSLoggingEnabled())
            {
              v46 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v47 = [payload isEqual:theDict];
                v48 = @"NO";
                if (v47)
                {
                  v48 = @"YES";
                }

                *buf = 138412290;
                *&buf[4] = v48;
                _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "Updated payload to send %@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v45);
          }
        }

        v106[0] = _NSConcreteStackBlock;
        v106[1] = 3221225472;
        v106[2] = sub_4AAC8;
        v106[3] = &unk_112E68;
        v106[4] = message;
        v106[5] = self;
        v106[6] = context;
        v106[7] = deliveryContext;
        v106[8] = dCopy;
        v106[9] = accountCopy;
        v106[10] = iD;
        v106[11] = identifier;
        v106[12] = group;
        v106[13] = participants;
        v106[14] = participantsCopy;
        v106[15] = properties;
        v106[16] = regProperties;
        v106[17] = ofRegProperties;
        attachmentsCopy3 = attachments;
        v106[18] = payload;
        v106[19] = uID;
        v106[22] = count;
        v106[20] = block;
        v106[21] = completionBlock;
        [-[MessageDeliveryController attachmentController](self "attachmentController")];

        break;
      case 3:
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = participants;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Send fallback action (Peers: %@)", buf, 0xCu);
          }
        }

        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_4AD44;
        v104[3] = &unk_112E90;
        v104[4] = self;
        v104[5] = deliveryContext;
        v104[6] = dCopy;
        v104[7] = accountCopy;
        v104[8] = iD;
        v104[9] = identifier;
        v104[10] = group;
        v104[11] = participants;
        v104[12] = participantsCopy;
        v104[13] = properties;
        v104[14] = regProperties;
        v104[15] = ofRegProperties;
        attachmentsCopy4 = attachments;
        v104[16] = dictionary;
        v104[17] = payload;
        v104[21] = completionBlock;
        v104[22] = count;
        v104[19] = message;
        v104[20] = block;
        v104[18] = uID;
        if ([message associatedMessageType] != &stru_F58.reserved2)
        {
          [-[MessageDeliveryController attachmentController](self "attachmentController")];
        }

        break;
      case 4:
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = [message guid];
            *&buf[12] = 2112;
            *&buf[14] = participants;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Send collaboration action  guid %@ (URIs: %@)", buf, 0x16u);
          }
        }

        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_480D0;
        v141[3] = &unk_112D28;
        v141[4] = message;
        v141[5] = self;
        v141[6] = participants;
        v141[7] = context;
        v141[8] = deliveryContext;
        v141[9] = dCopy;
        v141[10] = accountCopy;
        v141[11] = iD;
        v141[12] = identifier;
        v141[13] = group;
        v141[14] = participantsCopy;
        v141[15] = properties;
        v141[16] = regProperties;
        v141[17] = ofRegProperties;
        attachmentsCopy5 = attachments;
        v141[18] = dictionary;
        v141[19] = payload;
        v141[21] = completionBlock;
        v141[20] = uID;
        v141[23] = count;
        v141[22] = block;
        [[[_TtC8iMessage28CollaborationDeliveryRequest alloc] initWithRecipients:participants message:message] sendWithCompletionHandler:v141];
        return;
      default:
        goto LABEL_131;
    }
  }

  else if (completionBlock)
  {
    backwardsCompatibleVersion = [message backwardsCompatibleVersion];
    v34 = *(completionBlock + 2);

    v34(completionBlock, self, participantsCopy, 0, 4, backwardsCompatibleVersion, 0, 1);
  }
}

- (void)handleScheduledMessageSendFailure:(id)failure
{
  v5 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [failure guid]);
  if ([v5 scheduleType] == &dword_0 + 2 && objc_msgSend(v5, "scheduleState") == &dword_0 + 2)
  {
    editedPartIndexes = [failure editedPartIndexes];
    retractedPartIndexes = [failure retractedPartIndexes];
    if ([editedPartIndexes count])
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_4B294;
      v14[3] = &unk_112EB8;
      v14[4] = failure;
      [editedPartIndexes enumerateIndexesUsingBlock:v14];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Failed to update the scheduled message. Keeping edit history as is and adding failed part indexes", buf, 2u);
        }
      }
    }

    if ([retractedPartIndexes count])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4B2A0;
      v12[3] = &unk_112EB8;
      v12[4] = failure;
      [retractedPartIndexes enumerateIndexesUsingBlock:v12];
      [failure setFileTransferGUIDs:{objc_msgSend(failure, "scheduledMessageOriginalTransferGUIDs")}];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Failed to update the scheduled message. Keeping retract history as is and adding failed part indexes", buf, 2u);
        }
      }
    }

    [-[MessageDeliveryController messageStore](self "messageStore")];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Failed to Send Scheduled Message, not updating peer devices with scheduled message.", buf, 2u);
      }
    }
  }

  else
  {
    [failure setScheduleType:{objc_msgSend(v5, "scheduleType")}];
    [failure setScheduleState:{objc_msgSend(v5, "scheduleState")}];
    [failure setMessageSummaryInfo:{objc_msgSend(v5, "messageSummaryInfo")}];
    [failure setBody:{objc_msgSend(v5, "body")}];
    errorCode = [v5 errorCode];

    [failure setErrorCode:errorCode];
  }
}

- (BOOL)handleScheduledMessageSend:(id)send sentSuccessfully:(BOOL)successfully idsMessage:(id)message messageDictionary:(id)dictionary canInlineAttachments:(BOOL)attachments msgPayloadUploadDictionary:(id)uploadDictionary fromID:(id)d fromAccount:(id)self0 originalIDSIdentifier:(id)self1
{
  attachmentsCopy = attachments;
  sendCopy = send;
  editedPartIndexes = [send editedPartIndexes];
  retractedPartIndexes = [sendCopy retractedPartIndexes];
  if (!successfully)
  {
    [(MessageDeliveryController *)self handleScheduledMessageSendFailure:sendCopy];
LABEL_55:
    LOBYTE(v45) = 0;
    return v45;
  }

  v20 = retractedPartIndexes;
  if ([editedPartIndexes count] || objc_msgSend(v20, "count"))
  {
    sendCopy = [(MessageDeliveryController *)self _updateSuccessfulRetractionsForScheduledMessage:[(MessageDeliveryController *)self _updateSuccessfulEditsForScheduledMessage:sendCopy]];
    [-[MessageDeliveryController messageStore](self "messageStore")];
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Preparing to send scheduled message to peer devices.", buf, 2u);
    }
  }

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [sendCopy scheduleType]);
  if (v22)
  {
    CFDictionarySetValue(dictionary, @"st", v22);
  }

  time = [sendCopy time];
  if (time)
  {
    CFDictionarySetValue(dictionary, @"sd", time);
  }

  v24 = JWEncodeDictionary();
  if ([objc_msgSend(sendCopy "fileTransferGUIDs")] && !attachmentsCopy || (v25 = objc_msgSend(objc_msgSend(sendCopy, "payloadData"), "length"), uploadDictionary) && v25)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        fileTransferGUIDs = [sendCopy fileTransferGUIDs];
        v28 = @"NO";
        if (attachmentsCopy)
        {
          v28 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = fileTransferGUIDs;
        v55 = 2112;
        v56 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Not compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
      }
    }

    _FTCopyGzippedData = v24;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        fileTransferGUIDs2 = [sendCopy fileTransferGUIDs];
        v32 = @"NO";
        if (attachmentsCopy)
        {
          v32 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = fileTransferGUIDs2;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
      }
    }

    _FTCopyGzippedData = [v24 _FTCopyGzippedData];
  }

  v33 = _FTCopyGzippedData;
  v34 = [NSNumber numberWithInteger:100];
  [sendCopy guid];
  v35 = IDSGetUUIDData();
  v36 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  v37 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v34, IDSSendMessageOptionCommandKey, &__kCFBooleanTrue, IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, v35, IDSSendMessageOptionUUIDKey, v33, IDSSendMessageOptionDataToEncryptKey, v36, IDSSendMessageOptionTimeoutKey, &__kCFBooleanFalse, IDSSendMessageOptionEnforceRemoteTimeoutsKey, 0];
  v61 = IDSRegistrationPropertySupportsSendLaterMessages;
  v38 = [NSSet setWithArray:[NSArray arrayWithObjects:&v61 count:1]];
  if (v38)
  {
    CFDictionarySetValue(v37, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, v38);
  }

  v39 = objc_alloc_init(NSMutableSet);
  v40 = IDSCopyBestGuessIDForID();
  if (v40)
  {
    [v39 addObject:v40];
  }

  else
  {
    [+[IMMetricsCollector sharedInstance](IMMetricsCollector forceAutoBugCaptureWithSubType:"forceAutoBugCaptureWithSubType:errorPayload:type:context:" errorPayload:@"Null IDS Identifier" type:0 context:@"SendLater", @"IDSCopyBestGuessIDForID returned a null token while trying to send scheduled message to peer devices"];
  }

  if (d)
  {
    CFDictionarySetValue(v37, IDSSendMessageOptionFromIDKey, d);
  }

  v41 = [v39 count];
  v42 = [objc_msgSend(objc_msgSend(account "devices")];
  v43 = v42;
  if (account)
  {
    v44 = v41 != 0;
  }

  else
  {
    v44 = 0;
  }

  if (v42 < 1 || !v44 || ![account devices])
  {
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        devices = [account devices];
        v49 = @"NO";
        *buf = 138413058;
        if (v43 <= 0)
        {
          v50 = @"NO";
        }

        else
        {
          v50 = @"YES";
        }

        if (v41)
        {
          v49 = @"YES";
        }

        *&buf[4] = v49;
        v55 = 2112;
        v56 = v50;
        v57 = 2112;
        accountCopy = account;
        v59 = 2112;
        v60 = devices;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "We did not have ids accounts to send scheduled messages out -- bailing {haveTokenURISToSendTo %@ hasPeerDevicesSupportingSendLater %@ idsAccount %@ devices %@}", buf, 0x2Au);
      }
    }

    goto LABEL_55;
  }

  *buf = 0;
  v45 = [IMIDSService service:self->_idsService sendMessage:message fromAccount:account toDestinations:v39 priority:300 options:v37 identifier:0 error:buf];
  if (v45)
  {
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *v53 = 0;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "IDS successfully sent scheduled message to peer devices", v53, 2u);
      }
    }
  }

  else
  {
    v52 = IMLogHandleForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_BC764(buf);
    }
  }

  return v45;
}

- (id)_updateSuccessfulRetractionsForScheduledMessage:(id)message
{
  retractedPartIndexes = [message retractedPartIndexes];
  v6 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4BC64;
  v9[3] = &unk_112F20;
  v9[4] = message;
  v9[5] = self;
  v9[6] = v6;
  [retractedPartIndexes enumerateIndexesUsingBlock:v9];
  if ([v6 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Deleting retracted transfer GUIDs for scheduled message: %@", buf, 0xCu);
      }
    }

    [+[IMDAttachmentStore sharedInstance](IMDAttachmentStore deleteAttachmentsWithGUIDs:"deleteAttachmentsWithGUIDs:", v6];
  }

  [message setRetractedPartIndexes:{+[NSIndexSet indexSet](NSIndexSet, "indexSet")}];
  return message;
}

- (id)_updateSuccessfulEditsForScheduledMessage:(id)message
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4BD90;
  v5[3] = &unk_112EB8;
  v5[4] = message;
  [objc_msgSend(message "editedPartIndexes")];
  [message setEditedPartIndexes:{+[NSIndexSet indexSet](NSIndexSet, "indexSet")}];
  return message;
}

- (void)_updateExpectedOffGridCapableDeliveryReceiptsForMessage:(id)message chatIdentifier:(id)identifier numberOfExpectedOffGridCapableDeliveries:(unint64_t)deliveries
{
  messageCopy = message;
  if (([message isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        deliveriesCopy = deliveries;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Got %llu expected off grid capable deliveries", &v12, 0xCu);
      }
    }

    if (deliveries)
    {
      v10 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [messageCopy guid]);
      if (v10)
      {
        messageCopy = v10;
      }

      [messageCopy setExpectedOffGridCapableDeliveries:deliveries];
      v11 = [(MessageDeliveryController *)self _chatForChatIdentifier:identifier];
      if ([v11 style] == 45)
      {
        [+[IMDOffGridAvailabilityTracker sharedTracker](IMDOffGridAvailabilityTracker "sharedTracker")];
      }

      [+[IMDMessageStore sharedInstance](IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" forceReplace:messageCopy modifyError:0 modifyFlags:0 flagMask:0, 0];
    }
  }
}

- (id)_fileTransferGUIDsInMessageBody:(id)body
{
  v4 = [body length];
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4BFF0;
  v7[3] = &unk_112F48;
  v7[4] = v5;
  [body enumerateAttribute:IMFileTransferGUIDAttributeName inRange:0 options:v4 usingBlock:{0, v7}];
  return [v5 array];
}

- (id)_associatedMessageFallbackHashForMessageItem:(id)item
{
  [item associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return [(MessageDeliveryController *)self _fallbackHashForMessageItemWithGUID:v4];
}

- (id)_threadOriginatorFallbackHashForMessageItem:(id)item
{
  [item threadIdentifier];
  OriginatorGUID = IMMessageThreadIdentifierGetOriginatorGUID();

  return [(MessageDeliveryController *)self _fallbackHashForMessageItemWithGUID:OriginatorGUID];
}

- (id)_fallbackHashForMessageItemWithGUID:(id)d
{
  v4 = [-[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore "sharedInstance")];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      v8 = [v4 length];
      v9 = 2112;
      dCopy = d;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Using fallback hash with length %llu for message GUID %@", &v7, 0x16u);
    }
  }

  return v4;
}

- (BOOL)_hasRecentlyMessaged:(id)messaged
{
  v4 = +[IMDRecentsController sharedInstance];

  return [(IMDRecentsController *)v4 hasRecentlyMessaged:messaged];
}

- (void)noteRecentMessageForPeople:(id)people
{
  v4 = +[IMDRecentsController sharedInstance];

  [(IMDRecentsController *)v4 noteRecentMessageForPeople:people];
}

- (id)activeDeviceForHandle:(id)handle
{
  v4 = +[IMDRecentsController sharedInstance];

  return [(IMDRecentsController *)v4 activeDeviceForHandle:handle];
}

- (id)_receivingDevicesForHandle:(id)handle skippedDestinations:(id)destinations
{
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [(MessageDeliveryController *)self activeDeviceForHandle:handle];
  if (v8)
  {
    v9 = v8;
    idsDestination = [v8 idsDestination];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [destinations countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v11)
    {
      v13 = *v28;
      *&v12 = 138412290;
      v22 = v12;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(destinations);
          }

          if ([idsDestination isEqualToString:{*(*(&v27 + 1) + 8 * i), v22}])
          {
            if (IMOSLoggingEnabled())
            {
              v15 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = v22;
                v33 = v9;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Found skipped active device %@", buf, 0xCu);
              }
            }

            if ([v9 shouldSendTypingIndicator])
            {
              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = v22;
                  v33 = v9;
                  _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Sending typing indicator to device %@", buf, 0xCu);
                }
              }

              [v7 addObject:idsDestination];
            }
          }
        }

        v11 = [destinations countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [destinations countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(destinations);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if ([v20 containsString:handle])
          {
            [v7 addObject:v20];
          }
        }

        v17 = [destinations countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }
  }

  return [v7 copy];
}

- (id)_receivingDevicesForParticipants:(id)participants skippedDestinations:(id)destinations
{
  v7 = objc_alloc_init(NSMutableSet);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4C67C;
  v9[3] = &unk_112F70;
  v9[4] = self;
  v9[5] = destinations;
  v9[6] = v7;
  [participants enumerateObjectsUsingBlock:v9];
  return [v7 copy];
}

- (void)_enqueueSendMessageWorkBlock:(id)block forURIs:(id)is
{
  if (block)
  {
    if ([is count])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          isCopy = is;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Enqueueing block for set: %@", &v10, 0xCu);
        }
      }

      deliveryQueues = self->_deliveryQueues;
      if (!deliveryQueues)
      {
        deliveryQueues = objc_alloc_init(IMMultiQueue);
        self->_deliveryQueues = deliveryQueues;
      }

      [(IMMultiQueue *)deliveryQueues addBlock:block withTimeout:is forKey:@"enqueued message" description:300.0];
    }

    else
    {
      v9 = *(block + 2);

      v9(block, 0);
    }
  }
}

- (void)sendMessage:(id)message context:(id)context groupContext:(id)groupContext toGroup:(id)group toParticipants:(id)participants originallyToParticipants:(id)toParticipants fromID:(id)d fromAccount:(id)self0 chatIdentifier:(id)self1 originalPayload:(id)self2 replyToMessageGUID:(id)self3 fakeSavedReceiptBlock:(id)self4 completionBlock:(id)self5
{
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      messageCopy = [message guid];
      v43 = 2112;
      dCopy2 = participants;
      v45 = 2112;
      accountCopy2 = d;
      v47 = 2112;
      accountCopy = account;
      v49 = 2112;
      contextCopy = context;
      v51 = 2112;
      identifierCopy = identifier;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Send Message: %@  to people: %@  fromPeer: %@ fromAccount %@ context: %@, chat identifier %@", buf, 0x3Eu);
    }
  }

  if (([message isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [+[NetworkChangeNotifier sharedInstance](NetworkChangeNotifier linkQualityValueForInterfaceType:"linkQualityValueForInterfaceType:", 3];
        *buf = 67109120;
        LODWORD(messageCopy) = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "  Cell Link Quality: %d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [+[NetworkChangeNotifier sharedInstance](NetworkChangeNotifier linkQualityValueForInterfaceType:"linkQualityValueForInterfaceType:", 2];
        *buf = 67109120;
        LODWORD(messageCopy) = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", buf, 8u);
      }
    }
  }

  if ([participants count])
  {
    if (d && account)
    {
      v23 = [(MessageDeliveryController *)self _hasRecentlyMessaged:participants];
      if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] && !(v23 & 1 | ((IMGetCachedDomainBoolForKeyWithDefaultValue() & 1) == 0)))
      {
        if (([+[IMDRecentsController hasRecentMessageFrom:"hasRecentMessageFrom:"]!= 0)
        {
LABEL_35:
          isTypingMessage = [message isTypingMessage];
          v29 = PeopleSetByAddingMyID(d, toParticipants);
          participantsCopy2 = participants;
          if ((isTypingMessage & 1) == 0)
          {
            participantsCopy2 = PeopleSetByAddingMyID(d, participants);
          }

          balloonBundleID = [message balloonBundleID];
          if ([balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks])
          {
            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Refreshing rich link message", buf, 2u);
              }
            }

            collaborationInitiationRequestInfo = [message collaborationInitiationRequestInfo];
            message = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [message guid]);
            [message setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo];
          }

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_4CEB0;
          v40[3] = &unk_113060;
          v40[4] = message;
          v40[5] = d;
          v40[6] = v35;
          v40[7] = self;
          v40[8] = context;
          v40[9] = account;
          v40[10] = identifier;
          v40[11] = v37;
          v40[12] = v29;
          v40[13] = payload;
          v40[14] = iD;
          v40[17] = block;
          v40[18] = completionBlock;
          v40[15] = participantsCopy2;
          v40[16] = toParticipants;
          [(MessageDeliveryController *)self _enqueueSendMessageWorkBlock:v40 forURIs:v29];
          [(MessageDeliveryController *)self noteRecentMessageForPeople:participants];
          return;
        }
      }

      else if (v23)
      {
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messageCopy = participants;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "We have no session to %@", buf, 0xCu);
        }
      }

      if (![message isTypingMessage])
      {
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          guid = [message guid];
          *buf = 138412290;
          messageCopy = guid;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%@ is a typing indicator, marking as delivery success", buf, 0xCu);
        }
      }

      if (completionBlock)
      {
        (*(completionBlock + 2))(completionBlock, self, participants, 1, 0, [message backwardsCompatibleVersion], 0, 1);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          messageCopy = message;
          v43 = 2112;
          dCopy2 = d;
          v45 = 2112;
          accountCopy2 = account;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "*********** Failing message: %@    empty source ID or idsAccount supplied (%@:%@)", buf, 0x20u);
        }
      }

      if (completionBlock)
      {
        (*(completionBlock + 2))(completionBlock, self, participants, 0, 33, [message backwardsCompatibleVersion], 0, 1);
      }
    }
  }

  else if (completionBlock)
  {
    (*(completionBlock + 2))(completionBlock, self, participants, 0, 21, [message backwardsCompatibleVersion], 0, 1);
  }
}

- (BOOL)isLQMEnabled:(id)enabled
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  fileTransferGUIDs = [enabled fileTransferGUIDs];
  v4 = [fileTransferGUIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(fileTransferGUIDs);
    }

    v8 = 1;
    if ((+[IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:isSending:](IMDAttachmentUtilities, "shouldEnablePreviewTranscodingQualityForTransfer:isSending:", [+[IMDFileTransferCenter transferForGUID:"transferForGUID:"]& 1) != 0)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [fileTransferGUIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isReceiverHQTransferCapable:(id)capable fromID:(id)d
{
  v5 = [[IDSURI alloc] initWithPrefixedURI:d];
  v6 = [IMIDSIDQueryController _currentCachedRemoteDevicesForDestinations:capable service:IDSServiceNameiMessage preferredFromID:v5 listenerID:@"MessageDeliveryController"];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = *v25;
    v10 = IDSRegistrationPropertySupportsLQMHQ;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = *v21;
          while (2)
          {
            v15 = 0;
            do
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v12);
              }

              if ([objc_msgSend(*(*(&v20 + 1) + 8 * v15) "capabilities")])
              {
                LOBYTE(v16) = 1;
                return v16;
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v8 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v16 = IMOSLoggingEnabled();
  if (v16)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    v16 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v16)
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Receiver is NOT capable for HQ transfer", v19, 2u);
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (void)sendHQAttachmentsForMessage:(id)message context:(id)context fromID:(id)d fromAccount:(id)account chatIdentifier:(id)identifier toGroup:(id)group originallyToParticipants:(id)participants canInlineAttachments:(BOOL)self0 recipients:(id)self1 completionBlock:(id)self2
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_4EC70;
  v26 = sub_4EC80;
  v27 = objc_alloc_init(NSMutableArray);
  for (i = [objc_msgSend(message "fileTransferGUIDs")]; i; --i)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    [v23[5] addObject:v19];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4EC8C;
  v21[3] = &unk_1130D8;
  v21[4] = message;
  v21[5] = self;
  v21[6] = d;
  v21[7] = account;
  v21[8] = participants;
  v21[9] = group;
  v21[10] = block;
  v21[11] = &v22;
  [message setIsHQTransfer:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4F2CC;
  v20[3] = &unk_113100;
  v20[4] = &v22;
  [objc_msgSend(message "fileTransferGUIDs")];
  -[MessageDeliveryController _sendAttachmentsForMessage:canSendInline:displayIDs:additionalContext:fromID:recipients:uploadStartTime:fromAccount:completionBlock:](self, "_sendAttachmentsForMessage:canSendInline:displayIDs:additionalContext:fromID:recipients:uploadStartTime:fromAccount:completionBlock:", message, attachments, participants, context, d, recipients, [message time], account, v21);
  _Block_object_dispose(&v22, 8);
}

- (void)sendMessageError:(int64_t)error toToken:(id)token toID:(id)d toGroup:(id)group fromID:(id)iD fromAccount:(id)account forMessageID:(id)messageID completionBlock:(id)self0
{
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      errorCopy = error;
      v26 = 2112;
      messageIDCopy = messageID;
      v28 = 2112;
      tokenCopy = token;
      v30 = 2112;
      dCopy = d;
      v32 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending MessageError: %ld  forMessageID: %@  to token: %@  toPeer: %@  fromPeer: %@", buf, 0x34u);
    }
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = IDSGetUUIDData();
  if (v19)
  {
    CFDictionarySetValue(v18, IDSFailedUUIDKey, v19);
  }

  if (messageID)
  {
    CFDictionarySetValue(v18, IDSFailedMessageIDKey, messageID);
  }

  v20 = [NSNumber numberWithInteger:error];
  if (v20)
  {
    CFDictionarySetValue(v18, IDSFailureReasonKey, v20);
  }

  v21 = [NSNumber numberWithInteger:120];
  v22 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, v21, IDSSendMessageOptionCommandKey, 0];
  if (token)
  {
    d = IDSCopyIDForTokenWithID();
  }

  else
  {
    dCopy2 = d;
  }

  [(MessageDeliveryController *)self sendMessageDictionary:v18 fromID:iD fromAccount:account toURIs:[NSSet setWithObject:?]options:group completionBlock:300, v22, block];
}

- (void)sendMessageErrorWithInfo:(int64_t)info toToken:(id)token toID:(id)d toGroup:(id)group fromID:(id)iD fromAccount:(id)account forMessageID:(id)messageID additionalInfo:(id)self0 fileSize:(id)value failureTimeSeconds:(double)self2 failReasonMessage:(id)self3 completionBlock:(id)self4
{
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134219266;
      infoCopy = info;
      v32 = 2112;
      messageIDCopy = messageID;
      v34 = 2112;
      tokenCopy = token;
      v36 = 2112;
      dCopy = d;
      v38 = 2112;
      iDCopy = iD;
      v40 = 2112;
      additionalInfoCopy = additionalInfo;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Sending MessageError: %ld  forMessageID: %@  to token: %@  toPeer: %@  fromPeer: %@ additionalInfo: %@", buf, 0x3Eu);
    }
  }

  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = IDSGetUUIDData();
  if (v23)
  {
    CFDictionarySetValue(v22, IDSFailedUUIDKey, v23);
  }

  if (messageID)
  {
    CFDictionarySetValue(v22, IDSFailedMessageIDKey, messageID);
  }

  v24 = [NSNumber numberWithInteger:info];
  if (v24)
  {
    CFDictionarySetValue(v22, IDSFailureReasonKey, v24);
  }

  if (additionalInfo)
  {
    CFDictionarySetValue(v22, @"aDI", additionalInfo);
  }

  if (value)
  {
    CFDictionarySetValue(v22, @"fFS", value);
  }

  if (IMSendAdditionalMMCSErrorInfoToMadrid())
  {
    if (message)
    {
      CFDictionarySetValue(v22, @"fRM", message);
    }

    v25 = [NSNumber numberWithInteger:llround(seconds * 1000.0)];
    if (v25)
    {
      CFDictionarySetValue(v22, @"fTE", v25);
    }
  }

  v26 = [NSNumber numberWithInteger:120];
  v27 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, v26, IDSSendMessageOptionCommandKey, 0];
  if (token)
  {
    d = IDSCopyIDForTokenWithID();
  }

  else
  {
    dCopy2 = d;
  }

  [(MessageDeliveryController *)self sendMessageDictionary:v22 fromID:iD fromAccount:account toURIs:[NSSet setWithObject:?]options:group completionBlock:300, v27, block];
}

- (void)sendBubblePayloadMessageDictionary:(id)dictionary fromID:(id)d fromAccount:(id)account toURIs:(id)is toGroup:(id)group priority:(int64_t)priority options:(id)options completionBlock:(id)self0
{
  v17 = PeopleSetByAddingMyID(d, [is allObjects]);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Enqueing message payload block for people %@", buf, 0xCu);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_4FA38;
  v19[3] = &unk_113128;
  v19[4] = v17;
  v19[5] = self;
  v19[6] = dictionary;
  v19[7] = d;
  v19[8] = account;
  v19[9] = is;
  v19[10] = group;
  v19[11] = options;
  v19[12] = block;
  v19[13] = priority;
  [(MessageDeliveryController *)self _enqueueSendMessageWorkBlock:v19 forURIs:v17];
}

- (void)failMessageSendWithMessageDictionary:(id)dictionary URIs:(id)is error:(id)error completionHandler:(id)handler
{
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      dictionaryCopy = dictionary;
      v14 = 2112;
      isCopy = is;
      v16 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "IDS sendMessage for message %@ to URIs %@ did not succeed, error %@", &v12, 0x20u);
    }
  }

  if (handler)
  {
    (*(handler + 2))(handler, self, [is allObjects], 0, 4, 0);
  }
}

- (void)sendMessageDictionary:(id)dictionary encryptDictionary:(BOOL)encryptDictionary fromID:(id)d fromAccount:(id)account toURIs:(id)is toGroup:(id)group priority:(int64_t)priority options:(id)self0 willSendBlock:(id)self1 callCompletionOnSuccess:(BOOL)self2 callCompletionOnLast:(BOOL)self3 completionBlock:(id)self4
{
  v48 = 0;
  v49 = 0;
  if (account)
  {
    encryptDictionaryCopy = encryptDictionary;
    [options objectForKeyedSubscript:IDSSendMessageOptionCommandKey];
    v20 = [options mutableCopy];
    if (!v20)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
    }

    v21 = +[NSString stringGUID];
    if (v21)
    {
      CFDictionarySetValue(v20, IDSSendMessageOptionAlternateCallbackIdentifierKey, v21);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_BC9F8();
    }

    if (d)
    {
      CFDictionarySetValue(v20, IDSSendMessageOptionFromIDKey, d);
    }

    CFDictionarySetValue(v20, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
    CFDictionarySetValue(v20, IDSSendMessageOptionTimeoutKey, &off_119698);
    if (encryptDictionaryCopy && [dictionary count])
    {
      v22 = JWEncodeDictionary();
      _FTCopyGzippedData = [v22 _FTCopyGzippedData];
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v52 = [v22 length];
          *&v52[4] = 1024;
          *&v52[6] = [_FTCopyGzippedData length];
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Compressed message data from: %u to: %u in sendMessageDictionary", buf, 0xEu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [_FTCopyGzippedData length];
          *buf = 67109120;
          *v52 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size %u", buf, 8u);
        }
      }

      [(__CFDictionary *)v20 setObject:_FTCopyGzippedData forKey:IDSSendMessageOptionDataToEncryptKey];
    }

    serviceName = [account serviceName];
    v28 = [serviceName isEqualToString:IDSServiceNameiMessageForBusiness];
    v29 = 40;
    if (v28)
    {
      v29 = 48;
    }

    v30 = *(&self->super.isa + v29);
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = @"NO";
        *buf = 138413058;
        *v52 = account;
        *&v52[8] = 2112;
        if (v28)
        {
          v32 = @"YES";
        }

        dictionaryCopy = group;
        v54 = 2112;
        v55 = v30;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "sendMessageDictionary - got account %@ to engroup: %@ using IDSService: %@ isBusinessMessage: %@", buf, 0x2Au);
      }
    }

    v33 = [[NSMutableDictionary alloc] initWithDictionary:dictionary];
    v50[0] = MessageDictionaryMeCardSharingAudienceKey;
    v50[1] = MessageDictionaryMeCardSharingEnabledKey;
    v50[2] = MessageDictionaryMeCardSharingNameForkedKey;
    v50[3] = MessageDictionaryMeCardSharingImageForkedKey;
    v50[4] = MessageDictionaryPendingNicknameUpdatesHandlesKey;
    v50[5] = MessageDictionaryPendingNicknameUpdatesRecordIDsKey;
    v50[6] = MessageDictionaryCurrentNicknameUpdatesRecordIDsKey;
    v50[7] = MessageDictionaryArchivedNicknameUpdatesRecordIDsKey;
    v50[8] = MessageDictionaryPersonalNicknameRecordIDKey;
    v50[9] = MessageDictionaryPersonalNicknameDecryptKeyKey;
    v50[10] = MessageDictionaryNicknameDenyAllowListVersionKey;
    v50[11] = MessageDictionaryNicknameDenyListKey;
    v50[12] = MessageDictionaryNicknameAllowListKey;
    v50[13] = MessageDictionaryNicknameTransitionedListKey;
    v50[14] = MessageDictionaryNicknameActiveListKey;
    v50[15] = MessageDictionaryNicknameIgnoredListKey;
    v50[16] = MessageDictionaryNicknameRequestPersonalNicknameInfoKey;
    v50[17] = MessageDictionaryNicknameParticipantTruncatedRIDKey;
    v50[18] = MessageDictionaryNicknameTransitionedListVersionKey;
    v50[19] = MessageDictionaryNicknameActiveListVersionKey;
    v50[20] = MessageDictionaryNicknameIgnoredListVersionKey;
    v50[21] = MessageDictionaryNicknameWallpaperTagKey;
    v50[22] = MessageDictionaryNicknameLowResWallpaperTagKey;
    v50[23] = MessageDictionaryNicknameWallpaperMetadataTagKey;
    v50[24] = MessageDictionaryNicknameCloudKitRecordKey;
    v50[25] = MessageDictionaryNicknameCloudKitDecryptionRecordKey;
    v50[26] = MessageDictionaryNicknameUpdateInfoIncluded;
    v50[27] = MessageDictionaryWallpaperUpdateKey;
    v50[28] = @"cID";
    v34 = [NSArray arrayWithObjects:v50 count:29];
    [v33 removeObjectsForKeys:v34];
    if ([v33 objectForKey:@"pID"])
    {
      v35 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v33, "objectForKey:", @"pID"}];
      [v35 removeObjectsForKeys:v34];
      [v33 setObject:v35 forKey:@"pID"];
    }

    isCopy = is;
    if (group)
    {
      isCopy = [NSSet setWithObject:group];
    }

    v37 = [IMIDSService service:v30 sendMessage:v33 fromAccount:account toDestinations:isCopy priority:priority options:v20 identifier:&v48 error:&v49];

    if (completionBlock && ((v37 ^ 1) & 1) == 0 && v48)
    {
      allObjects = [is allObjects];
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [allObjects count];
          *buf = 134217984;
          *v52 = v40;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Result URIs Size: %lu", buf, 0xCu);
        }
      }

      v41 = [completionBlock copy];
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v52 = v48;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Enqueuing completion block for IDS identifier %@", buf, 0xCu);
        }
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_505E0;
      v45[3] = &unk_113150;
      successCopy = success;
      lastCopy = last;
      v45[4] = v48;
      v45[5] = self;
      v45[6] = allObjects;
      v45[7] = v41;
      [MessageDeliveryController _enqueueUpdateBlock:"_enqueueUpdateBlock:willSendBlock:identifier:callbackID:messageCommandOption:" willSendBlock:v45 identifier:block callbackID:? messageCommandOption:?];
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v52 = v48;
          *&v52[8] = 2112;
          dictionaryCopy = dictionary;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Received IDS identifier %@ for message %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [(MessageDeliveryController *)self failMessageSendWithMessageDictionary:dictionary URIs:is error:v49 completionHandler:completionBlock];
    }
  }

  else
  {

    [(MessageDeliveryController *)self failMessageSendWithMessageDictionary:dictionary URIs:is error:0 completionHandler:completionBlock];
  }
}

- (void)sendCloseSessionMessageDictionary:(id)dictionary toBusinessURI:(id)i fromURI:(id)rI fromAccount:(id)account completionBlock:(id)block
{
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      iCopy2 = i;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "sendCloseSessionMessageDictionary for biz URI: %@", buf, 0xCu);
    }
  }

  if (IMStringIsBusinessID())
  {
    v13 = [NSSet setWithObjects:i, rI, 0];
    +[NSString stringGUID];
    v14 = [NSNumber numberWithInteger:170];
    v15 = IDSGetUUIDData();
    v16 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v17 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v14, IDSSendMessageOptionCommandKey, v15, IDSSendMessageOptionUUIDKey, v16, IDSSendMessageOptionTimeoutKey, rI, IDSSendMessageOptionFromIDKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, &__kCFBooleanFalse, IDSSendMessageOptionEnforceRemoteTimeoutsKey, 0];
    v18 = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
    {
      v19 = [(MessageDeliveryController *)self _chatForChatIdentifier:i];
      if ([v19 containsActiveBIASession])
      {
        bIAContext = [v19 BIAContext];
        if ([bIAContext count])
        {
          if ([bIAContext count])
          {
            CFDictionarySetValue(v18, @"bcon", bIAContext);
          }
        }
      }
    }

    [(MessageDeliveryController *)self sendMessageDictionary:[(NSMutableDictionary *)v18 copy] encryptDictionary:1 fromID:rI fromAccount:account toURIs:v13 toGroup:0 priority:300 options:v17 willSendBlock:0 completionBlock:0];
    if (block)
    {
      (*(block + 2))(block, self, [(NSSet *)v13 allObjects], 0, 4, 0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      iCopy2 = i;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "sendCloseSessionMessageDictionary called for non biz URI: %@", buf, 0xCu);
    }
  }
}

- (BOOL)sendToLocalPeersFile:(id)file dictionary:(id)dictionary
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Sending message to local device", buf, 2u);
    }
  }

  if ([(MessageDeliveryController *)self localDevice])
  {
    v19 = 0;
    v20 = 0;
    v8 = [NSSet alloc];
    v9 = [v8 initWithObjects:{IDSDefaultPairedDevice, 0}];
    v29 = IDSSendMessageOptionLocalDeliveryKey;
    v30 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    if (file)
    {
      v11 = [dictionary objectForKeyedSubscript:IMDRelayLocalMessageDictionaryDictKey];
      v27[0] = IMDRelayLocalMessageDictionaryGUIDKey;
      v28[0] = [v11 objectForKeyedSubscript:?];
      v27[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
      v28[1] = [v11 objectForKeyedSubscript:?];
      v27[2] = IMDRelayLocalMessageDictionaryTypeKey;
      v28[2] = IMDRelayLocalMessageTypeRemoteFileResponse;
      v12 = [(IDSService *)self->_idsService sendResourceAtURL:file metadata:[NSDictionary dictionaryWithObjects:? forKeys:? count:?]error:v9, 300, v10, &v20, &v19];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_21;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v14 = @"NO";
      if (v12)
      {
        v14 = @"YES";
      }

      *buf = 138412802;
      v22 = v19;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v20;
      v15 = "Sending message to local device using file transfer (error %@) success: %@ with Identifier %@";
    }

    else
    {
      v12 = [IMIDSService service:self->_idsService sendMessage:dictionary fromAccount:0 toDestinations:v9 priority:300 options:v10 identifier:&v20 error:&v19];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_21;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v17 = @"NO";
      if (v12)
      {
        v17 = @"YES";
      }

      *buf = 138412802;
      v22 = v19;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v20;
      v15 = "Sending message to local device as data payload (error %@) success: %@ with Identifier %@";
    }

    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, v15, buf, 0x20u);
LABEL_21:

    return v12;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "No Local Device Found, unable to send message", buf, 2u);
    }
  }

  LOBYTE(v12) = 0;
  return v12;
}

- (id)pairedDevice
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v11 != v4)
      {
        objc_enumerationMutation(devices);
      }

      v6 = *(*(&v10 + 1) + 8 * v5);
      if ([v6 isActive])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Found paired device: %@", buf, 0xCu);
      }
    }

    if (v6)
    {
      return v6;
    }
  }

LABEL_14:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "No paired device found", buf, 2u);
    }
  }

  return 0;
}

- (id)idsDeviceFromPushToken:(id)token
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(devices);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "pushToken")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      v13 = 138413058;
      serviceCopy = service;
      v15 = 2112;
      if (successCopy)
      {
        v12 = @"YES";
      }

      identifierCopy = identifier;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Service %@ sent Message with ID %@ and sucess %@ with Error %@", &v13, 0x2Au);
    }
  }
}

- (void)sendEditedMessage:(id)message partIndex:(int64_t)index editType:(unint64_t)type destinations:(id)destinations chatIdentifier:(id)identifier account:(id)account fromID:(id)d backwardCompatabilityText:(id)self0 unsupportedDestinationsHandler:(id)self1 completionBlock:(id)self2
{
  v54 = +[NSString stringGUID];
  messageCopy = message;
  guid = [message guid];
  if (![guid length])
  {
    [+[IMMetricsCollector sharedInstance](IMMetricsCollector forceAutoBugCaptureWithSubType:"forceAutoBugCaptureWithSubType:errorPayload:" errorPayload:@"Sending Edited Message with no GUID", 0];
  }

  if ([text length])
  {
    v49 = +[NSString stringGUID];
  }

  else
  {
    v49 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = guid;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending edit command with guid %@ for edit of message with guid %@", buf, 0x16u);
    }
  }

  body = [messageCopy body];
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (@"1")
  {
    CFDictionarySetValue(v19, @"v", @"1");
  }

  _replicationSourceIDForSending = [(MessageDeliveryController *)self _replicationSourceIDForSending];
  if (_replicationSourceIDForSending)
  {
    CFDictionarySetValue(v20, @"rp", _replicationSourceIDForSending);
  }

  if (guid)
  {
    CFDictionarySetValue(v20, @"emg", guid);
  }

  v22 = [NSNumber numberWithInteger:index];
  if (v22)
  {
    CFDictionarySetValue(v20, @"epi", v22);
  }

  v23 = [NSNumber numberWithUnsignedInteger:type];
  if (v23)
  {
    CFDictionarySetValue(v20, @"et", v23);
  }

  if (type == 2)
  {
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(messageCopy subject] == 0);
    if (v31)
    {
      CFDictionarySetValue(v20, @"rs", v31);
    }
  }

  else if (type == 1)
  {
    v24 = [body __im_messagePartMatchingPartIndex:index];
    v25 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:", [v24 messagePartBody], 1);
    [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v25];
    outHTML = [(SuperToMessageParserContext *)v25 outHTML];
    if (outHTML)
    {
      CFDictionarySetValue(v20, @"epb", outHTML);
    }

    v27 = [messageCopy translationsForMessagePart:{objc_msgSend(v24, "messagePartIndex")}];
    if ([v27 count])
    {
      v28 = [[IMTranslatedMessagePart alloc] initWithDictionaryRepresentation:{objc_msgSend(v27, "firstObject")}];
      v29 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:", [v28 translatedText], 1);
      [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v29];
      outHTML2 = [(SuperToMessageParserContext *)v29 outHTML];
      if (outHTML2)
      {
        CFDictionarySetValue(v20, @"ept", outHTML2);
      }
    }
  }

  v32 = [NSSet setWithObject:IDSRegistrationPropertySupportsRetractAndEditMessages];
  if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    isSOS = [messageCopy isSOS];
    v34 = &IDSRegistrationPropertySupportsSOSAlerting;
    if (!isSOS)
    {
      v34 = &IDSRegistrationPropertySupportsHybridGroupsV1;
    }

    v32 = [(NSSet *)v32 setByAddingObject:*v34];
  }

  v35 = IDSGetUUIDData();
  v48 = objc_alloc_init(NSMutableDictionary);
  v36 = [NSNumber numberWithInteger:118];
  v37 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&__kCFBooleanTrue, IDSSendMessageOptionTopLevelDictionaryKey, v36, IDSSendMessageOptionCommandKey, v32, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, v35, IDSSendMessageOptionUUIDKey, 0];
  if ([(__CFDictionary *)v20 count])
  {
    v38 = JWEncodeDictionary();
    _FTCopyGzippedData = [v38 _FTCopyGzippedData];
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v38 length];
        v42 = [_FTCopyGzippedData length];
        *buf = 134218240;
        *&buf[4] = v41;
        *&buf[12] = 2048;
        *&buf[14] = v42;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Compressed edited message data from: %lu  to: %lu", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [_FTCopyGzippedData length];
        *buf = 134217984;
        *&buf[4] = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size: %lu", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)v37 setObject:_FTCopyGzippedData forKey:IDSSendMessageOptionDataToEncryptKey];
  }

  v45 = [[NSSet alloc] initWithArray:destinations];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v62 = 1;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  v46 = dispatch_group_create();
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_51FB8;
  v58[3] = &unk_1131A0;
  v58[5] = buf;
  v58[6] = v59;
  v58[4] = v46;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_52124;
  v57[3] = &unk_1131C8;
  v57[4] = d;
  v57[5] = v49;
  v57[6] = text;
  v57[7] = v46;
  v57[8] = self;
  v57[9] = messageCopy;
  v57[10] = destinations;
  v57[11] = identifier;
  v57[12] = account;
  v57[13] = handler;
  v57[14] = v58;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_5234C;
  v56[3] = &unk_1131F0;
  v56[6] = buf;
  v56[7] = v59;
  v56[4] = v54;
  v56[5] = v46;
  dispatch_group_enter(v46);
  LOWORD(v47) = 256;
  [(MessageDeliveryController *)self sendMessageDictionary:v48 encryptDictionary:1 fromID:d fromAccount:account toURIs:v45 toGroup:0 priority:300 options:v37 willSendBlock:v57 callCompletionOnSuccess:v47 callCompletionOnLast:v56 completionBlock:?];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_52474;
  block[3] = &unk_113218;
  block[6] = buf;
  block[7] = v59;
  block[4] = self;
  block[5] = block;
  dispatch_group_notify(v46, &_dispatch_main_q, block);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_sendBackwardCompatibilityMessageForEditedMessage:(id)message usingMessageGUID:(id)d toBackwardCompatabilityDestinations:(id)destinations withOriginalDestinations:(id)originalDestinations chatIdentifier:(id)identifier fromAccount:(id)account fromID:(id)iD backwardCompatabilityText:(id)self0 completionBlock:(id)self1
{
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      destinationsCopy = destinations;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending backwards compatible edit message text to %@", buf, 0xCu);
    }
  }

  v18 = [[IMMessageItem alloc] initWithSender:objc_msgSend(message time:"sender") body:objc_msgSend(message attributes:"dateEdited") fileTransferGUIDs:text flags:0 error:0 guid:objc_msgSend(message threadIdentifier:{"flags"), 0, d, objc_msgSend(message, "threadIdentifier")}];
  [v18 setDestinationCallerID:{objc_msgSend(iD, "_stripFZIDPrefix")}];
  v19 = [(MessageDeliveryController *)self _chatForChatIdentifier:identifier];
  session = [(MessageDeliveryController *)self session];
  groupController = [(MessageDeliveryController *)self groupController];
  idsService = self->_idsService;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_52788;
  v24[3] = &unk_113268;
  v24[4] = self;
  v24[5] = identifier;
  v24[6] = destinations;
  v24[7] = originalDestinations;
  v24[9] = v18;
  v24[10] = block;
  v24[8] = message;
  [groupController sendMessage:v18 toChat:v19 fromID:iD fromAccount:account session:session service:idsService completionBlock:v24];
}

- (void)sendRepositionedStickerMetadata:(id)metadata forEditedMessage:(id)message destinations:(id)destinations account:(id)account fromID:(id)d completionBlock:(id)block
{
  [(MessageDeliveryController *)self _checkStickerRepositioningMetadata:?];
  v12 = +[NSString stringGUID];
  guid = [message guid];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = guid;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Sending sticker reposition command with guid %@ for sticker chat item with guid %@", buf, 0x16u);
    }
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = v15;
  if (@"1")
  {
    CFDictionarySetValue(v15, @"v", @"1");
  }

  _replicationSourceIDForSending = [(MessageDeliveryController *)self _replicationSourceIDForSending];
  if (_replicationSourceIDForSending)
  {
    CFDictionarySetValue(v16, @"rp", _replicationSourceIDForSending);
  }

  if (guid)
  {
    CFDictionarySetValue(v16, @"scig", guid);
  }

  if (metadata)
  {
    CFDictionarySetValue(v16, @"srpi", metadata);
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Sticker repositioning is supported and relevant keys were added to messageDictionary.", buf, 2u);
    }
  }

  v19 = [NSSet setWithObject:IDSRegistrationPropertySupportsRetractAndEditMessages];
  if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    v19 = [(NSSet *)v19 setByAddingObject:IDSRegistrationPropertySupportsHybridGroupsV1];
  }

  v20 = IDSGetUUIDData();
  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = [NSNumber numberWithInteger:122];
  v23 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&__kCFBooleanTrue, IDSSendMessageOptionTopLevelDictionaryKey, v22, IDSSendMessageOptionCommandKey, v19, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, v20, IDSSendMessageOptionUUIDKey, 0];
  if ([(__CFDictionary *)v16 count])
  {
    v24 = JWEncodeDictionary();
    _FTCopyGzippedData = [v24 _FTCopyGzippedData];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v24 length];
        v28 = [_FTCopyGzippedData length];
        *buf = 134218240;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Compressed edited message data from: %lu  to: %lu", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [_FTCopyGzippedData length];
        *buf = 134217984;
        *&buf[4] = v30;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size: %lu", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)v23 setObject:_FTCopyGzippedData forKey:IDSSendMessageOptionDataToEncryptKey];
  }

  v31 = [[NSSet alloc] initWithArray:destinations];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v43 = 1;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v32 = dispatch_group_create();
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_53044;
  v37[3] = &unk_113290;
  v37[6] = buf;
  v37[7] = v40;
  v37[8] = v38;
  v37[4] = v12;
  v37[5] = v32;
  dispatch_group_enter(v32);
  [(MessageDeliveryController *)self sendMessageDictionary:v21 encryptDictionary:1 fromID:d fromAccount:account toURIs:v31 toGroup:0 priority:300 options:v23 willSendBlock:0 completionBlock:v37];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_53188;
  block[3] = &unk_1132B8;
  block[6] = buf;
  block[7] = v38;
  block[4] = self;
  block[5] = block;
  block[8] = v40;
  dispatch_group_notify(v32, &_dispatch_main_q, block);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_checkStickerRepositioningMetadata:(id)metadata
{
  if (metadata)
  {
    if (![IMSharedHelperMissingKeysInStickerUserInfo() count])
    {
      return;
    }

    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_BCBF8();
    }

    v4 = @"[MessageDeliveryController] Attempting sticker repositioning with missing reposition metadata.";
    v5 = @"MissingStickerMetadata";
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_BCC78();
    }

    v4 = @"[MessageDeliveryController] Attempting sticker repositioning with nil reposition metadata.";
    v5 = @"NilStickerMetadata";
  }

  v7 = NSDebugDescriptionErrorKey;
  v8 = v4;
  [+[IMMetricsCollector sharedInstance](IMMetricsCollector forceAutoBugCaptureWithSubType:"forceAutoBugCaptureWithSubType:errorPayload:type:context:" errorPayload:@"AttemptedInvalidStickerReposition" type:[NSError context:"errorWithDomain:code:userInfo:" errorWithDomain:0 code:[NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1] userInfo:?], v5, 0];
}

- (void)cancelScheduledMessageWithGUID:(id)d fromID:(id)iD
{
  v17 = 0;
  v18 = 0;
  v7 = [(MessageDeliveryController *)self _getQueueIdentifierFromGUID:?];
  idsService = self->_idsService;
  v28[0] = IDSSendMessageOptionQueueOneIdentifierKey;
  v28[1] = IDSSendMessageOptionFromIDKey;
  v29[0] = v7;
  v29[1] = iD;
  v9 = [(IDSService *)idsService cancelMessageWithOptions:[NSDictionary dictionaryWithObjects:v28 forKeys:2 count:?], &v17, &v18];
  if ([v17 length])
  {
    pendingCancelScheduledMessageGUIDs = self->_pendingCancelScheduledMessageGUIDs;
    if (!pendingCancelScheduledMessageGUIDs)
    {
      pendingCancelScheduledMessageGUIDs = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      self->_pendingCancelScheduledMessageGUIDs = pendingCancelScheduledMessageGUIDs;
    }

    if ([(NSMutableDictionary *)pendingCancelScheduledMessageGUIDs objectForKey:v17])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          dCopy3 = v17;
          v21 = 2112;
          iDCopy = d;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "We already have identifier (%@) for messageGUID (%@)", buf, 0x16u);
        }
      }
    }

    v12 = self->_pendingCancelScheduledMessageGUIDs;
    v27[0] = d;
    v27[1] = &off_1193C8;
    v13 = [NSArray arrayWithObjects:v27 count:2];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:v17];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy3 = d;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Failed to get identifier from IDS for cancel scheduled message with GUID: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (v9)
      {
        v16 = @"YES";
      }

      dCopy3 = d;
      v21 = 2112;
      iDCopy = iD;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Cancelling scheduled message with GUID: %@ handleID: %@, cancelSuccess: %@ idsIdentifier: %@", buf, 0x2Au);
    }
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d fromID:(id)iD destinations:(id)destinations cancelType:(unint64_t)type
{
  v36 = 0;
  v37 = 0;
  v11 = [(MessageDeliveryController *)self _getQueueIdentifierFromGUID:?];
  v54[0] = IDSSendMessageOptionQueueOneIdentifierKey;
  v54[1] = IDSSendMessageOptionFromIDKey;
  v55[0] = v11;
  v55[1] = iD;
  v12 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v55];
  v13 = v12;
  if (type != 2)
  {
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysIncludeSelfKey];
  }

  v14 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(destinations, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [destinations countByEnumeratingWithState:&v32 objects:v53 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      v17 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(destinations);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        [v14 addObject:IMChatCanonicalIDSIDsForAddress()];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [destinations countByEnumeratingWithState:&v32 objects:v53 count:16];
    }

    while (v15);
  }

  idsService = self->_idsService;
  v20 = objc_opt_respondsToSelector();
  v21 = self->_idsService;
  if (v20)
  {
    v22 = [(IDSService *)v21 cancelMessageWithOptions:v13 destinations:v14 identifier:&v36 error:&v37];
  }

  else
  {
    v22 = [(IDSService *)v21 cancelMessageWithOptions:v13 identifier:&v36 error:&v37];
  }

  v23 = v22;

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [NSNumber numberWithUnsignedInteger:type];
      v26 = @"NO";
      *buf = 138413826;
      if (v23)
      {
        v26 = @"YES";
      }

      dCopy3 = d;
      v41 = 2112;
      dCopy2 = iD;
      v43 = 2112;
      destinationsCopy = destinations;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v26;
      v49 = 2112;
      v50 = v36;
      v51 = 2112;
      v52 = v37;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Cancelling scheduled message with GUID: %@, fromID:%@, destination: %@, cancelType: %@ cancelSuccess: %@ idsIdentifier: %@ error: %@", buf, 0x48u);
    }
  }

  if ([v36 length])
  {
    pendingCancelScheduledMessageGUIDs = self->_pendingCancelScheduledMessageGUIDs;
    if (!pendingCancelScheduledMessageGUIDs)
    {
      pendingCancelScheduledMessageGUIDs = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      self->_pendingCancelScheduledMessageGUIDs = pendingCancelScheduledMessageGUIDs;
    }

    if ([(NSMutableDictionary *)pendingCancelScheduledMessageGUIDs objectForKey:v36]&& IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        dCopy3 = v36;
        v41 = 2112;
        dCopy2 = d;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "We already have identifier (%@) for messageGUID (%@)", buf, 0x16u);
      }
    }

    v29 = self->_pendingCancelScheduledMessageGUIDs;
    v38[0] = d;
    v38[1] = [NSNumber numberWithUnsignedInteger:type];
    v30 = [NSArray arrayWithObjects:v38 count:2];
    [(NSMutableDictionary *)v29 setObject:v30 forKey:v36];
  }

  else if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy3 = d;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Failed to get identifier from IDS for cancel scheduled message with GUID: %@", buf, 0xCu);
    }
  }
}

- (id)_fallbackMessageItemFromLinkMetadata:(id)metadata originalMessageItem:(id)item
{
  v6 = [[NSAttributedString alloc] initWithString:{objc_msgSend(objc_msgSend(metadata, "URL"), "absoluteString")}];
  __im_attributedStringByAssigningMessagePartNumbers = [v6 __im_attributedStringByAssigningMessagePartNumbers];
  v8 = objc_alloc_init(LPMessagesPayload);
  [v8 setMetadata:metadata];
  v12 = 0;
  [v8 dataRepresentationWithOutOfLineAttachments:&v12];
  v9 = IMSharedHelperCombinedPluginPayloadDictionaryData();
  v10 = [[IMMessageItem alloc] initWithSender:objc_msgSend(item time:"sender") body:objc_msgSend(item attributes:"time") fileTransferGUIDs:__im_attributedStringByAssigningMessagePartNumbers flags:0 error:0 guid:objc_msgSend(item threadIdentifier:{"flags"), 0, objc_msgSend(item, "guid"), 0}];
  [v10 setBalloonBundleID:IMBalloonPluginIdentifierRichLinks];
  [v10 setPayloadData:v9];

  return v10;
}

- (id)_fallbackMessageItemForTranslationsWithOriginalMessageItem:(id)item
{
  itemCopy = item;
  messageSummaryInfo = [item messageSummaryInfo];
  v5 = [messageSummaryInfo objectForKeyedSubscript:IMMessageSummaryInfoTranslatedMessageParts];
  if (v5)
  {
    v41 = 0;
    v6 = +[NSKeyedUnarchiver unarchivedObjectOfClasses:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClasses:fromData:error:", +[IMMessageItem translationMessagePartClasses], v5, &v41);
    if (v6)
    {
      v7 = v6;
      body = [itemCopy body];
      v9 = [body mutableCopy];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
      v31 = itemCopy;
      if (v35)
      {
        v10 = *v38;
        v11 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
        v32 = *v38;
        v33 = body;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            integerValue = [v13 integerValue];
            v15 = [v7 objectForKeyedSubscript:v13];
            if ([v15 count])
            {
              v16 = [body __im_messagePartMatchingPartIndex:integerValue];
              if (v16)
              {
                v17 = v16;
                v18 = [[IMTranslatedMessagePart alloc] initWithDictionaryRepresentation:{objc_msgSend(v15, "firstObject")}];
                if ([v18 translatedText] && objc_msgSend(v18, "translationLanguage"))
                {
                  v19 = v9;
                  v36 = 0;
                  v20 = v11;
                  v21 = [v11[81] localizedStringWithValidatedFormat:-[MessageDeliveryController backwardCompatibilityPrefixForLanguageCode:](self validFormatSpecifiers:"backwardCompatibilityPrefixForLanguageCode:" error:objc_msgSend(v18, "translationLanguage")), @"%@", &v36, objc_msgSend(objc_msgSend(v18, "translatedText"), "string")];
                  if (!v21)
                  {
                    v22 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v43 = v36;
                      _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Failed to format translation prefix: %@", buf, 0xCu);
                    }

                    v21 = [objc_msgSend(v18 "translatedText")];
                    v20 = v11;
                  }

                  v23 = [[NSAttributedString alloc] initWithString:{objc_msgSend(v20[81], "stringWithFormat:", @"%@\n\n%@", objc_msgSend(objc_msgSend(v17, "messagePartBody"), "string"), v21)}];
                  v24 = [v19 __im_messageTextByReplacingMessagePartIndex:integerValue withNewPartText:v23];

                  v9 = [v24 mutableCopy];
                  v11 = v20;
                  v10 = v32;
                  body = v33;
                }

                else
                {
                  v25 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v43 = integerValue;
                    _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Invalid translation data for part %ld", buf, 0xCu);
                  }
                }
              }

              else
              {
                v26 = IMLogHandleForCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v43 = integerValue;
                  _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Could not find message part at index %ld", buf, 0xCu);
                }
              }
            }
          }

          v35 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v35);
      }

      v27 = [v9 copy];

      v28 = [[IMMessageItem alloc] initWithSender:objc_msgSend(v31 time:"sender") body:objc_msgSend(v31 attributes:"time") fileTransferGUIDs:v27 flags:0 error:0 guid:objc_msgSend(v31 threadIdentifier:{"flags"), 0, objc_msgSend(v31, "guid"), 0}];
      [v28 setPayloadData:{objc_msgSend(v31, "payloadData")}];
      [v28 setScheduleType:{objc_msgSend(v31, "scheduleType")}];
      [v28 setScheduleState:{objc_msgSend(v31, "scheduleState")}];

      return v28;
    }

    else
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_BCCF8(&v41);
      }
    }
  }

  return itemCopy;
}

- (id)_fallbackMessageItemForRequiredRegPropertiesTextMessage:(id)message
{
  [message payloadData];
  result = IMBalloonPluginFallbackText();
  if (result)
  {
    v5 = [[IMMessageItem alloc] initWithSender:objc_msgSend(message time:"sender") body:objc_msgSend(message attributes:"time") fileTransferGUIDs:objc_msgSend([NSAttributedString alloc] flags:"initWithString:" error:result) guid:0 threadIdentifier:{0, objc_msgSend(message, "flags"), 0, +[NSString stringGUID](NSString, "stringGUID"), 0}];

    return v5;
  }

  return result;
}

- (id)_fallbackMessageItemByConvertingGenmojiToUnknownEmojiCharacterInOriginalMessageItem:(id)item
{
  itemCopy = item;
  body = [item body];
  if (body)
  {
    v6 = body;
    v7 = [itemCopy copyWithFlags:{objc_msgSend(itemCopy, "flags")}];
    [v7 _setMessageID:{objc_msgSend(itemCopy, "messageID")}];
    v8 = +[IMDFileTransferCenter sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_54598;
    v31[3] = &unk_1132E0;
    v31[4] = v8;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = sub_4EC70;
    v29 = sub_4EC80;
    v30 = objc_alloc_init(NSAttributedString);
    v9 = objc_alloc_init(NSMutableOrderedSet);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_545B0;
    v24[3] = &unk_113348;
    v24[6] = &stru_113320;
    v24[7] = &v25;
    v24[4] = v9;
    v24[5] = v31;
    [v6 __im_visitMessageParts:v24];
    v10 = [objc_msgSend(itemCopy "fileTransferGUIDs")];
    if ([v9 count])
    {
      v11 = objc_alloc_init(NSMutableArray);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v12)
      {
        v13 = *v21;
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [-[MessageDeliveryController _nonAdaptiveFileTransferForAdaptiveImageFileTransfer:](self _nonAdaptiveFileTransferForAdaptiveImageFileTransfer:{-[IMDFileTransferCenter transferForGUID:](v8, "transferForGUID:", *(*(&v20 + 1) + 8 * v14))), "guid"}];
            if (v15)
            {
              [v11 addObject:v15];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
        }

        while (v12);
      }

      v16 = [v11 copy];

      [v10 removeObjectsInArray:{objc_msgSend(v9, "array")}];
      [v10 addObjectsFromArray:v16];
      v17 = [v26[5] __im_attributedStringByAppendingFileTransfers:v16];
      v26[5] = v17;
    }

    v18 = [v10 copy];
    [v7 setBody:v26[5]];
    [v7 setFileTransferGUIDs:v18];
    [v7 setBackwardsCompatibleVersion:1];

    itemCopy = v7;
    _Block_object_dispose(&v25, 8);
  }

  return itemCopy;
}

- (id)_nonAdaptiveFileTransferForAdaptiveImageFileTransfer:(id)transfer
{
  transferCopy = transfer;
  if (transfer)
  {
    v4 = -[MessageDeliveryController _copyGenmojiHEICFileToTemporaryDirectory:](self, "_copyGenmojiHEICFileToTemporaryDirectory:", [transfer localPath]);
    if (v4)
    {
      v5 = v4;
      lastPathComponent = [v4 lastPathComponent];
      totalBytes = [transferCopy totalBytes];
      hfsType = [transferCopy hfsType];
      hfsCreator = [transferCopy hfsCreator];
      hfsFlags = [transferCopy hfsFlags];
      v11 = +[IMDFileTransferCenter sharedInstance];
      transferCopy = [(IMDFileTransferCenter *)v11 transferForGUID:[(IMDFileTransferCenter *)v11 guidForNewOutgoingTransferWithFilename:lastPathComponent isDirectory:0 totalBytes:totalBytes hfsType:hfsType hfsCreator:hfsCreator hfsFlags:hfsFlags]];
      [transferCopy _setLocalPath:v5];
      [transferCopy setIsTemporaryBackwardCompatibilityAsset:1];
      [transferCopy setIsGenmojiFallback:1];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_BCD68();
      }

      return 0;
    }
  }

  return transferCopy;
}

- (id)_copyGenmojiHEICFileToTemporaryDirectory:(id)directory
{
  lastPathComponent = [directory lastPathComponent];
  if (!lastPathComponent)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_BCE84();
    }

    return 0;
  }

  v15 = lastPathComponent;
  v5 = [objc_msgSend(IMSafeTemporaryDirectory() im_URLByAppendingPathComponents:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v15, 1)), "path"}];
  v6 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v6 fileExistsAtPath:v5])
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Copying genmoji to temporary path, but file already exists at that path, deleting old item.", buf, 2u);
    }

    *buf = 0;
    if (![(NSFileManager *)v6 removeItemAtPath:v5 error:buf])
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_BCDA4(buf);
      }
    }
  }

  *buf = 0;
  if (![(NSFileManager *)v6 copyItemAtPath:directory toPath:v5 error:buf])
  {
    if ([objc_msgSend(*buf "domain")] && objc_msgSend(*buf, "code") == &stru_1F8.sectname[12])
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Copying genmoji to temporary path failed, because file is already there.", v13, 2u);
      }

      return v5;
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BCE14(buf);
    }

    return 0;
  }

  return v5;
}

- (id)_replicationSourceIDForSending
{
  if (![(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    return 0;
  }

  v3 = [-[MessageServiceSession service](-[MessageDeliveryController session](self "session")];

  return [NSNumber numberWithInteger:v3];
}

- (void)_addIdentifierToPendingTimestampUpdateMap:(id)map alternateCallbackId:(id)id
{
  if (map)
  {
    [(NSMutableDictionary *)self->_pendingTimestampUpdate setObject:map forKey:id];
  }
}

- (id)backwardCompatibilityPrefixForLanguageCode:(id)code
{
  sub_BD704();
  codeCopy = code;
  sub_BD6F4();
  sub_BD8B4();
  sub_BD6E4();

  v5 = sub_BD884();

  return v5;
}

@end