@interface MessageDeliveryController
- (BOOL)_hasRecentlyMessaged:(id)a3;
- (BOOL)_shouldSendAuxXML:(id)a3;
- (BOOL)_transferIsUserGeneratedOrEmojiSticker:(id)a3;
- (BOOL)forceBackwardsCompatibleMessageForBundleID:(id)a3;
- (BOOL)handleScheduledMessageSend:(id)a3 sentSuccessfully:(BOOL)a4 idsMessage:(id)a5 messageDictionary:(id)a6 canInlineAttachments:(BOOL)a7 msgPayloadUploadDictionary:(id)a8 fromID:(id)a9 fromAccount:(id)a10 originalIDSIdentifier:(id)a11;
- (BOOL)isLQMEnabled:(id)a3;
- (BOOL)isReceiverHQTransferCapable:(id)a3 fromID:(id)a4;
- (BOOL)sendToLocalPeersFile:(id)a3 dictionary:(id)a4;
- (BOOL)shouldSendBackwardsCompatibleMessageForBundleID:(id)a3;
- (MessageDeliveryController)initWithSession:(id)a3;
- (id)_associatedMessageFallbackHashForMessageItem:(id)a3;
- (id)_chatForChatIdentifier:(id)a3;
- (id)_compressedAttributionInfoForMessage:(id)a3;
- (id)_computeRegPropertiesForNewFeatures:(id)a3 currentRegProperties:(id)a4 currentInterestingProp:(id)a5;
- (id)_copyGenmojiHEICFileToTemporaryDirectory:(id)a3;
- (id)_fallbackHashForMessageItemWithGUID:(id)a3;
- (id)_fallbackMessageItemByConvertingGenmojiToUnknownEmojiCharacterInOriginalMessageItem:(id)a3;
- (id)_fallbackMessageItemForRequiredRegPropertiesTextMessage:(id)a3;
- (id)_fallbackMessageItemForTranslationsWithOriginalMessageItem:(id)a3;
- (id)_fallbackMessageItemFromLinkMetadata:(id)a3 originalMessageItem:(id)a4;
- (id)_fileTransferGUIDsInMessageBody:(id)a3;
- (id)_getQueueIdentifierFromGUID:(id)a3;
- (id)_keyTransparencyEnforcementDictionaryForChatIdentifier:(id)a3;
- (id)_nonAdaptiveFileTransferForAdaptiveImageFileTransfer:(id)a3;
- (id)_propertyForExpressiveSendStyle:(id)a3;
- (id)_receivingDevicesForHandle:(id)a3 skippedDestinations:(id)a4;
- (id)_receivingDevicesForParticipants:(id)a3 skippedDestinations:(id)a4;
- (id)_replicationSourceIDForSending;
- (id)_threadOriginatorFallbackHashForMessageItem:(id)a3;
- (id)_updateSuccessfulEditsForScheduledMessage:(id)a3;
- (id)_updateSuccessfulRetractionsForScheduledMessage:(id)a3;
- (id)activeDeviceForHandle:(id)a3;
- (id)attachmentController;
- (id)backwardCompatibilityPrefixForLanguageCode:(id)a3;
- (id)groupController;
- (id)idsDeviceFromPushToken:(id)a3;
- (id)idsOptionsWithMessageItem:(id)a3 toID:(id)a4 fromID:(id)a5 sendGUIDData:(id)a6 alternateCallbackID:(id)a7 isBusinessMessage:(BOOL)a8 chatIdentifier:(id)a9 requiredRegProperties:(id)value interestingRegProperties:(id)a11 requiresLackOfRegProperties:(id)a12 deliveryContext:(id)a13 isGroupChat:(BOOL)a14 canInlineAttachments:(BOOL)a15 msgPayloadUploadDictionary:(id)a16 messageDictionary:(id)a17;
- (id)messageDictionaryWithMessageItem:(id)a3 isBusiness:(BOOL)a4 chatIdentifier:(id)a5 toParticipants:(id)a6 originallyToParticipants:(id)a7 additionalContext:(id)a8 msgPayloadUploadDictionary:(id)a9 originalPayload:(id)a10;
- (id)pairedDevice;
- (void)_addIdentifierToPendingTimestampUpdateMap:(id)a3 alternateCallbackId:(id)a4;
- (void)_appendMyNicknameToMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5;
- (void)_appendMyTranscriptBackgroundVersionToMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5;
- (void)_appendOffGridAvailabilityPropertiesToMessageDictionary:(id)a3 participantHandleID:(id)a4;
- (void)_appendRecipientAvailabilityVerificationInfoToMessageDictionary:(id)a3 forChat:(id)a4;
- (void)_appendRecipientNicknameTruncatedRecordIDToMessageDictionary:(id)a3 forChat:(id)a4;
- (void)_appendSeenOffGridStatusToMessageDictionary:(id)a3 forChat:(id)a4;
- (void)_checkStickerRepositioningMetadata:(id)a3;
- (void)_enqueueSendMessageWorkBlock:(id)a3 forURIs:(id)a4;
- (void)_enqueueUpdateBlock:(id)a3 willSendBlock:(id)a4 identifier:(id)a5 callbackID:(id)a6 messageCommandOption:(id)a7;
- (void)_sendBackwardCompatibilityMessageForEditedMessage:(id)a3 usingMessageGUID:(id)a4 toBackwardCompatabilityDestinations:(id)a5 withOriginalDestinations:(id)a6 chatIdentifier:(id)a7 fromAccount:(id)a8 fromID:(id)a9 backwardCompatabilityText:(id)a10 completionBlock:(id)a11;
- (void)_sendMessage:(id)a3 context:(id)a4 deliveryContext:(id)a5 fromID:(id)a6 fromAccount:(id)a7 toID:(id)a8 chatIdentifier:(id)a9 toSessionToken:(id)a10 toGroup:(id)a11 toParticipants:(id)a12 originallyToParticipants:(id)a13 requiredRegProperties:(id)a14 interestingRegProperties:(id)a15 requiresLackOfRegProperties:(id)a16 canInlineAttachments:(BOOL)a17 type:(int64_t)a18 msgPayloadUploadDictionary:(id)a19 originalPayload:(id)a20 replyToMessageGUID:(id)a21 fallbackCount:(unint64_t)a22 willSendBlock:(id)a23 completionBlock:(id)a24;
- (void)_sendNicknameToRecipientsIfNeededForChat:(id)a3 forMessage:(id)a4;
- (void)_setReplyToGUIDForMessage:(id)a3 messageDictionary:(id)a4;
- (void)_updateExpectedOffGridCapableDeliveryReceiptsForMessage:(id)a3 chatIdentifier:(id)a4 numberOfExpectedOffGridCapableDeliveries:(unint64_t)a5;
- (void)_updateTimeStampForMessageIdentifierIfNeeded:(id)a3 pendingTimeStampUpdateIdentifier:(id)a4 alternateCallbackID:(id)a5 messageContext:(id)a6;
- (void)appendChatRelatedPropertiesToMessageDictionary:(id)a3 forMessage:(id)a4 chatIdentifier:(id)a5;
- (void)cancelScheduledMessageWithGUID:(id)a3 fromID:(id)a4;
- (void)cancelScheduledMessageWithGUID:(id)a3 fromID:(id)a4 destinations:(id)a5 cancelType:(unint64_t)a6;
- (void)dealloc;
- (void)failMessageSendWithMessageDictionary:(id)a3 URIs:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)handleScheduledMessageSendFailure:(id)a3;
- (void)noteRecentMessageForPeople:(id)a3;
- (void)sendBubblePayloadMessageDictionary:(id)a3 fromID:(id)a4 fromAccount:(id)a5 toURIs:(id)a6 toGroup:(id)a7 priority:(int64_t)a8 options:(id)a9 completionBlock:(id)a10;
- (void)sendCloseSessionMessageDictionary:(id)a3 toBusinessURI:(id)a4 fromURI:(id)a5 fromAccount:(id)a6 completionBlock:(id)a7;
- (void)sendEditedMessage:(id)a3 partIndex:(int64_t)a4 editType:(unint64_t)a5 destinations:(id)a6 chatIdentifier:(id)a7 account:(id)a8 fromID:(id)a9 backwardCompatabilityText:(id)a10 unsupportedDestinationsHandler:(id)a11 completionBlock:(id)a12;
- (void)sendHQAttachmentsForMessage:(id)a3 context:(id)a4 fromID:(id)a5 fromAccount:(id)a6 chatIdentifier:(id)a7 toGroup:(id)a8 originallyToParticipants:(id)a9 canInlineAttachments:(BOOL)a10 recipients:(id)a11 completionBlock:(id)a12;
- (void)sendMessage:(id)a3 context:(id)a4 groupContext:(id)a5 toGroup:(id)a6 toParticipants:(id)a7 originallyToParticipants:(id)a8 fromID:(id)a9 fromAccount:(id)a10 chatIdentifier:(id)a11 originalPayload:(id)a12 replyToMessageGUID:(id)a13 fakeSavedReceiptBlock:(id)a14 completionBlock:(id)a15;
- (void)sendMessageDictionary:(id)a3 encryptDictionary:(BOOL)a4 fromID:(id)a5 fromAccount:(id)a6 toURIs:(id)a7 toGroup:(id)a8 priority:(int64_t)a9 options:(id)a10 willSendBlock:(id)a11 callCompletionOnSuccess:(BOOL)a12 callCompletionOnLast:(BOOL)a13 completionBlock:(id)a14;
- (void)sendMessageError:(int64_t)a3 toToken:(id)a4 toID:(id)a5 toGroup:(id)a6 fromID:(id)a7 fromAccount:(id)a8 forMessageID:(id)a9 completionBlock:(id)a10;
- (void)sendMessageErrorWithInfo:(int64_t)a3 toToken:(id)a4 toID:(id)a5 toGroup:(id)a6 fromID:(id)a7 fromAccount:(id)a8 forMessageID:(id)a9 additionalInfo:(id)a10 fileSize:(id)value failureTimeSeconds:(double)a12 failReasonMessage:(id)a13 completionBlock:(id)a14;
- (void)sendRepositionedStickerMetadata:(id)a3 forEditedMessage:(id)a4 destinations:(id)a5 account:(id)a6 fromID:(id)a7 completionBlock:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 alternateCallbackID:(id)a6 willSendToDestinations:(id)a7 skippedDestinations:(id)a8 registrationPropertyToDestinations:(id)a9;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 messageIdentifier:(id)a5 alternateCallbackID:(id)a6 updatedWithResponseCode:(int64_t)a7 error:(id)a8 lastCall:(BOOL)a9 messageContext:(id)a10;
- (void)service:(id)a3 didFlushCacheForKTPeerURI:(id)a4;
- (void)service:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6;
@end

@implementation MessageDeliveryController

- (MessageDeliveryController)initWithSession:(id)a3
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
    objc_storeWeak(&v4->_session, a3);
  }

  return v4;
}

- (id)_keyTransparencyEnforcementDictionaryForChatIdentifier:(id)a3
{
  v4 = [(IDSService *)self->_idsService serviceIdentifier];
  if (![v4 isEqualToString:IDSServiceNameiMessage])
  {
    return 0;
  }

  v5 = [+[IMDChatRegistry sharedInstance](IMDChatRegistry existingSMSChatForID:"existingSMSChatForID:", a3];

  return [v5 keyTransparencyURIToUUIDMapping];
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
  v2 = [(MessageDeliveryController *)self session];

  return [(MessageServiceSession *)v2 attachmentController];
}

- (id)groupController
{
  v2 = [(MessageDeliveryController *)self session];

  return [(MessageServiceSession *)v2 groupController];
}

- (void)_updateTimeStampForMessageIdentifierIfNeeded:(id)a3 pendingTimeStampUpdateIdentifier:(id)a4 alternateCallbackID:(id)a5 messageContext:(id)a6
{
  if ([a6 serverReceivedTime] && objc_msgSend(a4, "length") && objc_msgSend(a4, "isEqualToString:", a3))
  {
    v11 = [-[MessageDeliveryController messageStore](self "messageStore")];
    v12 = [v11 messageSummaryInfo];
    v13 = IMMessageSummaryInfoUpdatedDateWithServerTime;
    v14 = [objc_msgSend(v12 objectForKey:{IMMessageSummaryInfoUpdatedDateWithServerTime), "BOOLValue"}];
    v15 = [v11 messageSummaryInfo];
    v16 = [objc_msgSend(v15 objectForKey:{IMMessageSummaryInfoHasBeenRetried), "BOOLValue"}];
    v17 = v16;
    if (!v11 || (v14 & 1) != 0 || (v16 & 1) != 0 || [v11 scheduleType])
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v11 scheduleType];
          v20 = @"NO";
          v27 = 138413058;
          v28 = a3;
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
          v32 = v21;
          v33 = 2048;
          v34 = v19;
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
          [objc_msgSend(a6 "serverReceivedTime")];
          v27 = 134218498;
          v28 = v24;
          v29 = 2048;
          v30 = v25;
          v31 = 2112;
          v32 = a3;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Going to update message time from: %f to: %f for identifier: %@", &v27, 0x20u);
        }
      }

      Mutable = [objc_msgSend(v11 "messageSummaryInfo")];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], v13];
      [v11 setTime:{objc_msgSend(a6, "serverReceivedTime")}];
      [v11 setMessageSummaryInfo:Mutable];

      [-[MessageDeliveryController messageStore](self "messageStore")];
      [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self serverUpdatedTimestampMessage:v11];
      [(NSMutableDictionary *)self->_pendingTimestampUpdate removeObjectForKey:a5];
    }
  }
}

- (void)service:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6
{
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138413058;
      v12 = a4;
      v13 = 2112;
      v14 = a5;
      v15 = 2112;
      v16 = a6;
      v17 = 2112;
      v18 = [(MessageDeliveryController *)self delegate];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Received flushed cached message from %@ to %@ guid %@ delegate %@", &v11, 0x2Au);
    }
  }

  [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self didFlushCacheForRemoteURI:a4 fromURI:a5 guid:a6];
}

- (void)service:(id)a3 didFlushCacheForKTPeerURI:(id)a4
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = a4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Received flushed cache for KT Peer URI %@", &v7, 0xCu);
    }
  }

  [(MessageDeliveryControllerDelegate *)[(MessageDeliveryController *)self delegate] messageDeliveryController:self didFlushCacheForKTPeerURI:a4];
}

- (void)service:(id)a3 account:(id)a4 messageIdentifier:(id)a5 alternateCallbackID:(id)a6 updatedWithResponseCode:(int64_t)a7 error:(id)a8 lastCall:(BOOL)a9 messageContext:(id)a10
{
  if (a5)
  {
    if ([a6 length])
    {
      v15 = [(NSMutableDictionary *)self->_pendingTimestampUpdate objectForKey:a6];
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
        if (a9)
        {
          v17 = @"YES";
        }

        [objc_msgSend(a10 serverReceivedTime];
        *buf = 134219522;
        v34 = a7;
        v35 = 2112;
        v36 = a5;
        v37 = 2112;
        v38 = a6;
        v39 = 2112;
        v40 = a8;
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = [NSNumber numberWithDouble:?];
        v45 = 2112;
        v46 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Received responseCode %ld for IDS identifier %@ callbackID %@ error %@ lastCall? %@  messageContext serverReceivedTime: %@ _pendingTimestampUpdate contains identifier: %@", buf, 0x48u);
      }
    }

    v18 = [(NSMutableDictionary *)self->_pendingSends objectForKey:a5];
    if ([v18 count])
    {
      [(MessageDeliveryController *)self _updateTimeStampForMessageIdentifierIfNeeded:a5 pendingTimeStampUpdateIdentifier:v15 alternateCallbackID:a6 messageContext:a10];
      v19 = sub_883DC(a7, a8);
      v20 = v19;
      if (a6)
      {
        v21 = [v18 objectForKey:a6];
        if (v21)
        {
          v21[2](v21, v20, a9);
        }

        if (a9)
        {
          [v18 removeObjectForKey:a6];
          if (![v18 count])
          {
            [(NSMutableDictionary *)self->_pendingSends removeObjectForKey:a5];
            if (![(NSMutableDictionary *)self->_pendingSends count])
            {

              self->_pendingSends = 0;
            }
          }

          v22 = [(NSMutableDictionary *)self->_pendingWillSendBlocks objectForKey:a5];
          if ([v22 objectForKey:a6])
          {
            [v22 removeObjectForKey:a6];
            if (![v22 count])
            {
              [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:a5];
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
                v34 = a5;
                _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Delivery got lastCall update for %@ without having gotten a willSend update.", buf, 0xCu);
              }
            }
          }

          [(NSMutableDictionary *)self->_pendingTimestampUpdate removeObjectForKey:a6];
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
        v32 = a9;
        [v18 enumerateKeysAndObjectsUsingBlock:v30];
        if (a9)
        {
          if ([-[NSMutableDictionary objectForKey:](self->_pendingWillSendBlocks objectForKey:{a5), "count"}])
          {
            if (v20)
            {
              if (IMOSLoggingEnabled())
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v34 = a5;
                  _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Delivery got lastCall update for %@ without having gotten a willSend update.", buf, 0xCu);
                }
              }
            }
          }

          [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:a5];
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
        v34 = a5;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "No pending sends for identifier %@", buf, 0xCu);
      }
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 alternateCallbackID:(id)a6 willSendToDestinations:(id)a7 skippedDestinations:(id)a8 registrationPropertyToDestinations:(id)a9
{
  if (a5)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138413314;
        v19 = a5;
        v20 = 2112;
        v21 = a6;
        v22 = 2112;
        v23 = a7;
        v24 = 2112;
        v25 = a8;
        v26 = 2112;
        v27 = a9;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Received %@ callbackID %@ willSendTo %@ skipped %@ propertyMap %@", &v18, 0x34u);
      }
    }

    v15 = [(NSMutableDictionary *)self->_pendingWillSendBlocks objectForKey:a5];
    if ([v15 count])
    {
      if (a6)
      {
        v16 = [v15 objectForKey:a6];
        if (v16)
        {
          v16[2](v16, a7, a8, a9);
        }

        [v15 removeObjectForKey:a6];
        if (![v15 count])
        {
          [(NSMutableDictionary *)self->_pendingWillSendBlocks removeObjectForKey:a5];
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
        v19 = a5;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "No pending will send blocks for identifier %@", &v18, 0xCu);
      }
    }
  }
}

- (void)_enqueueUpdateBlock:(id)a3 willSendBlock:(id)a4 identifier:(id)a5 callbackID:(id)a6 messageCommandOption:(id)a7
{
  if (a5 && a6)
  {
    if (a7 && [a7 integerValue] == &stru_20.flags)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          v23 = a5;
          v24 = 2112;
          v25 = a6;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "We have a command 100 we need to update the timestamp for identifier: %@ alternateCallbackID: %@", &v22, 0x16u);
        }
      }

      pendingTimestampUpdate = self->_pendingTimestampUpdate;
      if (!pendingTimestampUpdate)
      {
        pendingTimestampUpdate = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingTimestampUpdate = pendingTimestampUpdate;
      }

      if ([(NSMutableDictionary *)pendingTimestampUpdate objectForKey:a6])
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v22 = 138412546;
            v23 = a5;
            v24 = 2112;
            v25 = a6;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "We already have identifier (%@) to update the timestamp for callbackID (%@)", &v22, 0x16u);
          }
        }
      }

      [(NSMutableDictionary *)self->_pendingTimestampUpdate setObject:a5 forKey:a6];
    }

    v15 = _Block_copy(a3);
    v16 = _Block_copy(a4);
    if (v15)
    {
      pendingSends = self->_pendingSends;
      if (!pendingSends)
      {
        pendingSends = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingSends = pendingSends;
      }

      v18 = [(NSMutableDictionary *)pendingSends objectForKey:a5];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        if (v18)
        {
          CFDictionarySetValue(self->_pendingSends, a5, v18);
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

      CFDictionarySetValue(v18, a6, v15);
    }

    if (v16)
    {
      pendingWillSendBlocks = self->_pendingWillSendBlocks;
      if (!pendingWillSendBlocks)
      {
        pendingWillSendBlocks = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        self->_pendingWillSendBlocks = pendingWillSendBlocks;
      }

      v21 = [(NSMutableDictionary *)pendingWillSendBlocks objectForKey:a5];
      if (!v21)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        if (v21)
        {
          CFDictionarySetValue(self->_pendingWillSendBlocks, a5, v21);
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

      CFDictionarySetValue(v21, a6, v16);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      v23 = a5;
      v24 = 2112;
      v25 = a6;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Nil identifier %@ or callbackID %@ passed into _enqueueUpdateBlock -- we won't be able to process IDS send feedback!", &v22, 0x16u);
    }
  }
}

- (id)messageDictionaryWithMessageItem:(id)a3 isBusiness:(BOOL)a4 chatIdentifier:(id)a5 toParticipants:(id)a6 originallyToParticipants:(id)a7 additionalContext:(id)a8 msgPayloadUploadDictionary:(id)a9 originalPayload:(id)a10
{
  value = a4;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = a3;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Creating message dictionary for message item: %@", buf, 0xCu);
    }
  }

  if (a3)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    if ((([a3 isAudioMessage] & 1) != 0 || objc_msgSend(objc_msgSend(a3, "balloonBundleID"), "length")) && (objc_msgSend(a3, "isFinished") & 1) == 0)
    {
      CFDictionarySetValue(v15, @"u", &__kCFBooleanTrue);
    }

    if ([a3 isAudioMessage])
    {
      CFDictionarySetValue(v15, @"a", &__kCFBooleanTrue);
    }

    if ([a3 isAutoReply])
    {
      CFDictionarySetValue(v15, @"ar", &__kCFBooleanTrue);
    }

    if ([a3 isFromExternalSource])
    {
      CFDictionarySetValue(v15, @"ms", &__kCFBooleanTrue);
    }

    if ([a3 isSOS])
    {
      CFDictionarySetValue(v15, @"sos", &__kCFBooleanTrue);
    }

    if ([a3 isCritical])
    {
      CFDictionarySetValue(v15, @"c", &__kCFBooleanTrue);
    }

    [(MessageDeliveryController *)self _setReplyToGUIDForMessage:a3 messageDictionary:v15];
    v16 = [a3 threadIdentifier];
    if (v16)
    {
      CFDictionarySetValue(v15, @"tg", v16);
      if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
      {
        v17 = [(MessageDeliveryController *)self _threadOriginatorFallbackHashForMessageItem:a3];
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
            v106 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "setThreadOriginatorFallbackHash: len %llu", buf, 0xCu);
          }
        }
      }
    }

    if ([a3 associatedMessageGUID])
    {
      v20 = [a3 associatedMessageGUID];
      if (v20)
      {
        CFDictionarySetValue(v15, @"amk", v20);
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [a3 associatedMessageGUID];
          *buf = 138412290;
          v106 = v22;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "setAssociatedMessageGUID: %@", buf, 0xCu);
        }
      }

      if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
      {
        v23 = [(MessageDeliveryController *)self _associatedMessageFallbackHashForMessageItem:a3];
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
            v106 = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "setAssociatedMessageFallbackHash: len %llu", buf, 0xCu);
          }
        }
      }
    }

    if ([a3 associatedMessageType])
    {
      v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 associatedMessageType]);
      if (v26)
      {
        CFDictionarySetValue(v15, @"amt", v26);
      }

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [a3 associatedMessageType];
          *buf = 134217984;
          v106 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "setAssociatedMessageType: %lld", buf, 0xCu);
        }
      }
    }

    v29 = [a3 associatedMessageRange];
    v31 = v30;
    if (v30 && !value)
    {
      v32 = v29;
      v33 = [NSNumber numberWithUnsignedInteger:v29];
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
          v106 = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "setAssociatedMessageRange: %@", buf, 0xCu);
        }
      }
    }

    if ([a3 associatedMessageEmoji])
    {
      v37 = [a3 associatedMessageEmoji];
      if (v37)
      {
        CFDictionarySetValue(v15, @"ame", v37);
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

    v39 = [a3 messageSummaryInfoForSending];
    if ([v39 count])
    {
      v40 = [NSData dataWithMessageSummaryInfoDictionary:v39];
      if (v40)
      {
        CFDictionarySetValue(v15, @"msi", v40);
      }
    }

    if ([objc_msgSend(a3 balloonBundleID])
    {
      v41 = [a3 balloonBundleID];
      if (v41)
      {
        CFDictionarySetValue(v15, @"bid", v41);
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [a3 balloonBundleID];
          *buf = 138412290;
          v106 = v43;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Set balloonBundleID: %@", buf, 0xCu);
        }
      }
    }

    if ([objc_msgSend(a3 "expressiveSendStyleID")])
    {
      v44 = [a3 expressiveSendStyleID];
      if (v44)
      {
        CFDictionarySetValue(v15, @"iid", v44);
      }

      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [a3 expressiveSendStyleID];
          *buf = 138412290;
          v106 = v46;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Set expressiveSendStyleID: %@", buf, 0xCu);
        }
      }
    }

    if ([objc_msgSend(a3 "typingIndicatorIcon")])
    {
      v47 = [objc_msgSend(a3 "typingIndicatorIcon")];
      if (v47)
      {
        CFDictionarySetValue(v15, @"tic", v47);
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = [a3 guid];
          *buf = 138412290;
          v106 = v49;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "Set typing indicator data for guid %@", buf, 0xCu);
        }
      }
    }

    v50 = [(MessageDeliveryController *)self _compressedAttributionInfoForMessage:a3];
    if (v50)
    {
      CFDictionarySetValue(v15, @"ati", v50);
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [v50 length];
          v53 = [a3 guid];
          *buf = 134218242;
          v106 = v52;
          v107 = 2112;
          v108 = v53;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "set attribution info data (%tu bytes) for guid %@", buf, 0x16u);
        }
      }
    }

    if (!a7)
    {
      a7 = a6;
    }

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v106 = a7;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "participants: %@", buf, 0xCu);
      }
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] && objc_msgSend(a3, "isGroupTypingMessage"))
    {
      CFDictionarySetValue(v15, @"gt", &__kCFBooleanTrue);
      if (a7)
      {
        CFDictionarySetValue(v15, @"p", a7);
      }

      if (([a3 isFinished] & 1) == 0)
      {
        CFDictionarySetValue(v15, @"u", &__kCFBooleanTrue);
      }
    }

    v55 = [(MessageDeliveryController *)self _shouldSendAuxXML:a3];
    if (([a3 isTypingMessage] & 1) == 0)
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
          v106 = v57;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "sendAuxXMLVersion: %@", buf, 0xCu);
        }
      }
    }

    if ([a3 isFinished])
    {
      v58 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:isAudioMessage:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:isAudioMessage:", [a3 body], objc_msgSend(a3, "shouldSendPartIndexesInMessageBody"), objc_msgSend(a3, "isAudioMessage"));
      [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v58];
      v59 = [objc_msgSend(a3 "body")];
      if ([(SuperToMessageParserContext *)v58 isSimpleString])
      {
        v60 = 1;
      }

      else
      {
        if ([objc_msgSend(a3 "body")])
        {
          v61 = v59 == 0;
        }

        else
        {
          v61 = 1;
        }

        v60 = v61;
      }

      v62 = [(SuperToMessageParserContext *)v58 outHTML];
      v63 = [(SuperToMessageParserContext *)v58 AuxHTML];
      if (@"1")
      {
        CFDictionarySetValue(v15, @"v", @"1");
      }

      v64 = [(MessageDeliveryController *)self _replicationSourceIDForSending];
      if (v64)
      {
        CFDictionarySetValue(v15, @"rp", v64);
      }

      if (v62)
      {
        v65 = v60;
      }

      else
      {
        v65 = 1;
      }

      if ((v65 & 1) == 0)
      {
        CFDictionarySetValue(v15, @"x", v62);
      }

      if (v63)
      {
        v66 = v55;
      }

      else
      {
        v66 = 0;
      }

      if (v66 == 1)
      {
        CFDictionarySetValue(v15, @"ix", v63);
      }

      if (v59)
      {
        CFDictionarySetValue(v15, @"t", v59);
      }

      v67 = [a3 subject];
      if (v67)
      {
        CFDictionarySetValue(v15, @"s", v67);
      }

      if (a7)
      {
        CFDictionarySetValue(v15, @"p", a7);
      }

      if ([a3 isExpirable])
      {
        CFDictionarySetValue(v15, @"e", &__kCFBooleanTrue);
      }
    }

    if ((([a3 isTypingMessage] | value) & 1) == 0)
    {
      v68 = [a3 contactsAvatarRecipeData];
      if (v68)
      {
        CFDictionarySetValue(v15, @"sld", v68);
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

      [(MessageDeliveryController *)self _sendNicknameToRecipientsIfNeededForChat:[(MessageDeliveryController *)self _chatForChatIdentifier:a5] forMessage:a3];
      [(MessageDeliveryController *)self appendChatRelatedPropertiesToMessageDictionary:v15 forMessage:a3 chatIdentifier:a5];
    }

    v70 = [a3 bizIntent];
    v71 = v70;
    if (v70)
    {
      v72 = [v70 objectForKey:@"biz-intent-id"];
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

    if ([a3 locale])
    {
      v74 = [a3 locale];
      if (v74)
      {
        CFDictionarySetValue(v15, @"bloc", v74);
      }
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags sharedFeatureFlags])
    {
      v75 = [(MessageDeliveryController *)self _chatForChatIdentifier:a5];
      if ([v75 containsActiveBIASession])
      {
        v76 = [v75 lastUsedBIAUserID];
        if ([v76 length])
        {
          if (v76)
          {
            CFDictionarySetValue(v15, @"buid", v76);
          }

          v77 = [v75 lastUsedBIAReferenceID];
          v78 = [v77 length];
          if (v77 && v78)
          {
            CFDictionarySetValue(v15, @"brid", v77);
          }
        }
      }
    }

    if ([objc_msgSend(a3 "payloadData")])
    {
      if (a9)
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

        CFDictionarySetValue(v15, @"bpdi", a9);
      }

      else
      {
        v80 = a10;
        if (!a10)
        {
          v80 = [a3 payloadData];
        }

        valuea = [v80 _FTCopyGzippedData];
        v81 = [a3 balloonBundleID];
        if ([v81 isEqualToString:IMBalloonPluginIdentifierRichLinks] && objc_msgSend(objc_msgSend(a3, "fileTransferGUIDs"), "count"))
        {
          if (IMOSLoggingEnabled())
          {
            v82 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              v83 = [a3 guid];
              *buf = 138412290;
              v106 = v83;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "Trying to recombine rich link payload from attachments for msg guid %@", buf, 0xCu);
            }
          }

          v84 = objc_alloc_init(NSMutableArray);
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v85 = [a3 fileTransferGUIDs];
          v86 = [v85 countByEnumeratingWithState:&v100 objects:v104 count:16];
          if (v86)
          {
            v87 = *v101;
            do
            {
              for (i = 0; i != v86; i = i + 1)
              {
                if (*v101 != v87)
                {
                  objc_enumerationMutation(v85);
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

              v86 = [v85 countByEnumeratingWithState:&v100 objects:v104 count:16];
            }

            while (v86);
          }

          [a3 payloadData];
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
            v92 = [a3 guid];
            *buf = 138412290;
            v106 = v92;
            _os_log_impl(&dword_0, v91, OS_LOG_TYPE_INFO, "set balloon payload for msg guid %@", buf, 0xCu);
          }
        }
      }
    }

    if ([objc_msgSend(a3 "replicatedFallbackGUIDs")])
    {
      -[__CFDictionary setObject:forKeyedSubscript:](v15, "setObject:forKeyedSubscript:", [a3 replicatedFallbackGUIDs], @"rf");
    }

    if ([(__CFDictionary *)v15 count])
    {
      if ([a8 count])
      {
        [(__CFDictionary *)v15 addEntriesFromDictionary:a8];
        if (IMOSLoggingEnabled())
        {
          v93 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v106 = a8;
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

- (id)idsOptionsWithMessageItem:(id)a3 toID:(id)a4 fromID:(id)a5 sendGUIDData:(id)a6 alternateCallbackID:(id)a7 isBusinessMessage:(BOOL)a8 chatIdentifier:(id)a9 requiredRegProperties:(id)value interestingRegProperties:(id)a11 requiresLackOfRegProperties:(id)a12 deliveryContext:(id)a13 isGroupChat:(BOOL)a14 canInlineAttachments:(BOOL)a15 msgPayloadUploadDictionary:(id)a16 messageDictionary:(id)a17
{
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v63 = a3;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Setting IDS options with messageItem: %@", buf, 0xCu);
    }
  }

  v24 = [a4 isEqualToString:a5];
  v25 = [NSNumber numberWithInteger:100];
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = [a3 isTypingMessage] ^ 1;
  }

  v27 = [NSNumber numberWithBool:v26];
  v28 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v25, IDSSendMessageOptionCommandKey, v27, IDSSendMessageOptionWantsResponseKey, a5, IDSSendMessageOptionFromIDKey, a6, IDSSendMessageOptionUUIDKey, a7, IDSSendMessageOptionAlternateCallbackIdentifierKey, 0];
  if (!a8)
  {
    v29 = [(MessageDeliveryController *)self _keyTransparencyEnforcementDictionaryForChatIdentifier:a9];
    if (v29)
    {
      CFDictionarySetValue(v28, @"IDSSendMessageOptionKTVerificationUUIDKey", v29);
    }
  }

  if (value)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionRequireAllRegistrationPropertiesKey, value);
  }

  if (a11)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionInterestingRegistrationPropertiesKey, a11);
  }

  CFDictionarySetValue(v28, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
  if (a13)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [a3 guid];
        *buf = 138412802;
        *v63 = v31;
        *&v63[8] = 2112;
        v64 = a13;
        v65 = 1024;
        v66 = a14;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Requsting delivery status for message GUID %@ due to delivery context %@ isGroupChat %{BOOL}d", buf, 0x1Cu);
      }
    }

    CFDictionarySetValue(v28, IDSSendMessageOptionDeliveryStatusContextKey, a13);
    CFDictionarySetValue(v28, IDSSendMessageOptionWantsDeliveryStatusKey, &__kCFBooleanTrue);
  }

  if (((a14 | v24) & 1) == 0 && ([a3 isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [a3 guid];
        *buf = 138412290;
        *v63 = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Requsting delivery status for message GUID %@ because !isGroupChat", buf, 0xCu);
      }
    }

    CFDictionarySetValue(v28, IDSSendMessageOptionWantsDeliveryStatusKey, &__kCFBooleanTrue);
  }

  if ([a3 isTypingMessage])
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionFireAndForgetKey, &__kCFBooleanTrue);
  }

  if (a12)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionRequireLackOfRegistrationPropertiesKey, a12);
  }

  if (([a3 isTypingMessage] & 1) == 0 && objc_msgSend(+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags, "sharedFeatureFlags"), "certifiedDeliveryEnabled") && !a8)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionWantsCertifiedDeliveryKey, &__kCFBooleanTrue);
  }

  if ([a17 count])
  {
    v34 = [a17 valueForKey:@"oe"];
    if (v34)
    {
      CFDictionarySetValue(v28, @"IDSSendMessageOptionOriginalTimestampKey", v34);
    }

    v35 = JWEncodeDictionary();
    if ([objc_msgSend(a3 "fileTransferGUIDs")] && !a15 || (v36 = objc_msgSend(objc_msgSend(a3, "payloadData"), "length"), a16) && v36)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [a3 fileTransferGUIDs];
          v39 = @"NO";
          if (a15)
          {
            v39 = @"YES";
          }

          *buf = 138412546;
          *v63 = v38;
          *&v63[8] = 2112;
          v64 = v39;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Not compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
        }
      }

      v40 = v35;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [a3 fileTransferGUIDs];
          v43 = @"NO";
          if (a15)
          {
            v43 = @"YES";
          }

          *buf = 138412546;
          *v63 = v42;
          *&v63[8] = 2112;
          v64 = v43;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
        }
      }

      v40 = [v35 _FTCopyGzippedData];
    }

    v44 = v40;
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
  if (![a3 scheduleType])
  {
    v56 = &off_119698;
    goto LABEL_77;
  }

  v51 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
  if (v51)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionTimeoutKey, v51);
  }

  [objc_msgSend(a3 time];
  v53 = v52;
  if ([a3 scheduleType] == &dword_0 + 1)
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
    v55 = -[MessageDeliveryController _getQueueIdentifierFromGUID:](self, "_getQueueIdentifierFromGUID:", [a3 guid]);
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

  else if ([a3 scheduleType] == &dword_0 + 2)
  {
    if (v53 > 0.0)
    {
      [objc_msgSend(a3 "time")];
      v57 = [NSNumber numberWithDouble:?];
      if (v57)
      {
        CFDictionarySetValue(v28, IMIDSSendMessageOptionDeliveryMinimumTimeKey, v57);
      }
    }

    CFDictionarySetValue(v28, IMIDSSendMessageOptionAlwaysIncludeSelfKey, &__kCFBooleanTrue);
    v56 = -[MessageDeliveryController _getQueueIdentifierFromGUID:](self, "_getQueueIdentifierFromGUID:", [a3 guid]);
    if (v56)
    {
      v50 = &IDSSendMessageOptionQueueOneIdentifierKey;
      goto LABEL_77;
    }
  }

  v58 = [a3 telemetryMetrics];
  if (v58)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionSendMetricsKey, v58);
  }

  v59 = [a3 telemetryMetricsReasonCode];
  if (v59)
  {
    CFDictionarySetValue(v28, IDSSendMessageOptionSendReasonKey, v59);
  }

  return v28;
}

- (id)_getQueueIdentifierFromGUID:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [[NSMutableData alloc] initWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

- (BOOL)_shouldSendAuxXML:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a3 fileTransferGUIDs];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
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

- (id)_compressedAttributionInfoForMessage:(id)a3
{
  v4 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [a3 fileTransferGUIDs];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [+[IMDFileTransferCenter transferForGUID:v18], "transferForGUID:", v11];
      if ([v12 attributionInfo])
      {
        v13 = [v12 attributionInfo];
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

        v13 = +[NSNull null];
      }

      [v4 addObject:v13];
    }

    v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (BOOL)forceBackwardsCompatibleMessageForBundleID:(id)a3
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

        if ([*(*(&v10 + 1) + 8 * v8) isEqualToString:a3])
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

- (BOOL)shouldSendBackwardsCompatibleMessageForBundleID:(id)a3
{
  if (![a3 hasPrefix:@"com.apple.messages.MSMessageExtensionBalloonPlugin"])
  {
    return 1;
  }

  return [(MessageDeliveryController *)self forceBackwardsCompatibleMessageForBundleID:a3];
}

- (id)_chatForChatIdentifier:(id)a3
{
  result = [(MessageServiceSession *)[(MessageDeliveryController *)self session] chatForChatIdentifier:a3 style:45 updatingAccount:1];
  if (!result)
  {
    v6 = [(MessageDeliveryController *)self session];

    return [(MessageServiceSession *)v6 chatForChatIdentifier:a3 style:43 updatingAccount:1];
  }

  return result;
}

- (void)_sendNicknameToRecipientsIfNeededForChat:(id)a3 forMessage:(id)a4
{
  if ([a4 shouldSendMeCard])
  {
    if (0xCCCCCCCCCCCCCCCDLL * [a3 numMessagesSent] <= 0x3333333333333333)
    {
      [a3 meCardUpdated];
    }

    else
    {
      v5 = [a3 numMessagesSent];
      v6 = [a3 meCardUpdated];
      if (v5 != &dword_0 + 1 && !v6)
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
    v10 = [a3 participants];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [v9 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "ID")}];
        }

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [+[IMDNicknameController sharedInstance](IMDNicknameController markHandlesAsAllowed:"markHandlesAsAllowed:", v9];
    -[IMDNicknameController sendPersonalNicknameToRecipients:chatGUID:fromHandle:onlySendToThoseLoggedOutOfIMessage:](+[IMDNicknameController sharedInstance](IMDNicknameController, "sharedInstance"), "sendPersonalNicknameToRecipients:chatGUID:fromHandle:onlySendToThoseLoggedOutOfIMessage:", [a3 participants], objc_msgSend(a3, "guid"), objc_msgSend(a3, "lastAddressedLocalHandle"), 1);
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

- (void)_appendMyTranscriptBackgroundVersionToMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5
{
  v8 = [IDSServerBag sharedInstanceForBagType:1];
  v9 = [v8 objectForKey:@"include-transcript-background-info-in-regular-iMessages"];
  if (!v9 || [v9 BOOLValue])
  {
    v10 = [v8 objectForKey:@"include-transcript-background-version-information-interval"];
    v11 = ([v10 integerValue] < 1 ? &dword_0 + 3 : objc_msgSend(v10, "integerValue"));
    if (([a5 numMessagesSent] % v11 == 2 || objc_msgSend(a5, "numMessagesSent") == &dword_0 + 1) && objc_msgSend(a5, "transcriptBackgroundVersion") && objc_msgSend(a5, "transcriptBackgroundPath"))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = [a4 guid];
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Including transcript background version in this message %@", &v13, 0xCu);
        }
      }

      [a3 setObject:objc_msgSend(a5 forKey:{"transcriptBackgroundVersion"), @"tbid"}];
    }
  }
}

- (void)_appendMyNicknameToMessageDictionary:(id)a3 forMessage:(id)a4 chat:(id)a5
{
  if ([a4 shouldSendMeCard])
  {
    if (0xCCCCCCCCCCCCCCCDLL * [a5 numMessagesSent] <= 0x3333333333333333)
    {
      v10 = [a5 meCardUpdated];
    }

    else
    {
      v8 = [a5 numMessagesSent];
      v9 = [a5 meCardUpdated];
      v10 = v9;
      if (v8 != &dword_0 + 1 && !v9)
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

    v13 = [+[IMDNicknameController sharedInstance](IMDNicknameController newNicknameInfoToSend];
    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = [a4 guid];
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
        v17 = [a5 participants];
        v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v18)
        {
          v19 = *v23;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v17);
              }

              [v16 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "ID")}];
            }

            v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v18);
        }

        [+[IMDNicknameController sharedInstance](IMDNicknameController markHandlesAsAllowed:"markHandlesAsAllowed:", v16];
        [a3 addEntriesFromDictionary:v13];
      }
    }

    else if (v14)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = [a4 guid];
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Me card data not available, not including in message %@", &v27, 0xCu);
      }
    }

    if (v10)
    {
      [a5 setMeCardUpdated:0];
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

- (void)_appendRecipientAvailabilityVerificationInfoToMessageDictionary:(id)a3 forChat:(id)a4
{
  if ([a4 style] != 45)
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

  v7 = [objc_msgSend(a4 "participants")];
  if (v7)
  {
    v8 = [objc_msgSend(v7 "ID")];
    if ([v8 length])
    {
      if ((+[IMDAvailabilityVerificationManager deviceSupportsSubscriptionValidationTokens]& 1) != 0)
      {
        if (0xAAAAAAAAAAAAAAABLL * [a4 numMessagesSent] + 0x5555555555555555 >= 0x5555555555555555)
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
          [(MessageDeliveryController *)self _appendOffGridAvailabilityPropertiesToMessageDictionary:a3 participantHandleID:v8];
        }

        if (0xAAAAAAAAAAAAAAABLL * [a4 numMessagesSent] < 0x5555555555555556)
        {
          v15 = [+[IMDAvailabilityVerificationManager sharedInstance](IMDAvailabilityVerificationManager cachedAvailabilityVerificationTokensForHandleID:"cachedAvailabilityVerificationTokensForHandleID:", v8];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 subscriptionValidationToken];
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v22 = 138412546;
                v23 = v17;
                v24 = 2112;
                v25 = v8;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Appending subscriptionValidationToken %@ to message for handleID %@", &v22, 0x16u);
              }
            }

            [a3 setObject:v17 forKey:@"arc"];
            v19 = [v16 encryptionValidationToken];
            if (v19)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v22 = 138412546;
                  v23 = v19;
                  v24 = 2112;
                  v25 = v8;
                  _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Appending encryptionValidationToken %@ to message for handleID %@", &v22, 0x16u);
                }
              }

              [a3 setObject:v19 forKey:@"are"];
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

- (void)_appendOffGridAvailabilityPropertiesToMessageDictionary:(id)a3 participantHandleID:(id)a4
{
  v6 = [+[IMDOffGridAvailabilityVerificationManager sharedInstance](IMDOffGridAvailabilityVerificationManager cachedAvailabilityTokensForHandleID:"cachedAvailabilityTokensForHandleID:", a4];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 subscriptionValidationToken];
    v9 = [v7 encryptionValidationToken];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = a4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Appending offGridRecipientSubscriptionValidationTokenKey %@ to message for handleID %@", &v13, 0x16u);
      }
    }

    [a3 setObject:v8 forKeyedSubscript:@"aogrs"];
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = a4;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Appending offGridRecipientEncryptionValidationTokenKey %@ to message for handleID %@", &v13, 0x16u);
        }
      }

      [a3 setObject:v9 forKeyedSubscript:@"aogre"];
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

- (void)appendChatRelatedPropertiesToMessageDictionary:(id)a3 forMessage:(id)a4 chatIdentifier:(id)a5
{
  v8 = [(MessageDeliveryController *)self _chatForChatIdentifier:a5];
  if (v8)
  {
    v9 = v8;
    if ([(MessageDeliveryController *)self _nicknameFeatureEnabled])
    {
      [(MessageDeliveryController *)self _appendMyNicknameToMessageDictionary:a3 forMessage:a4 chat:v9];
      [(MessageDeliveryController *)self _appendRecipientNicknameTruncatedRecordIDToMessageDictionary:a3 forChat:v9];
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
    {
      [(MessageDeliveryController *)self _appendMyTranscriptBackgroundVersionToMessageDictionary:a3 forMessage:a4 chat:v9];
    }

    [(MessageDeliveryController *)self _appendRecipientAvailabilityVerificationInfoToMessageDictionary:a3 forChat:v9];
    [(MessageDeliveryController *)self _appendSeenOffGridStatusToMessageDictionary:a3 forChat:v9];
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

- (void)_appendRecipientNicknameTruncatedRecordIDToMessageDictionary:(id)a3 forChat:(id)a4
{
  if ([a4 style] == 45)
  {
    v6 = [objc_msgSend(a4 "participants")];
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

          [a3 setObject:v11 forKey:MessageDictionaryNicknameParticipantTruncatedRIDKey];
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

- (void)_appendSeenOffGridStatusToMessageDictionary:(id)a3 forChat:(id)a4
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

  if ([a4 style] == 45)
  {
    v7 = [objc_msgSend(a4 "participants")];
    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_45EA4;
      v10[3] = &unk_112CB0;
      v10[4] = v7;
      v10[5] = a3;
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

- (id)_computeRegPropertiesForNewFeatures:(id)a3 currentRegProperties:(id)a4 currentInterestingProp:(id)a5
{
  if (a4)
  {
    v7 = [NSMutableSet setWithSet:a4];
  }

  else
  {
    v7 = +[NSMutableSet set];
  }

  v8 = v7;
  if (a5)
  {
    v9 = [NSMutableSet setWithSet:a5];
  }

  else
  {
    v9 = +[NSMutableSet set];
  }

  v10 = v9;
  v41 = v9;
  v42 = a3;
  if ([a3 isTypingMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = [a3 guid];
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Not adding required reg properties for typing message msg %@", buf, 0xCu);
      }
    }

    LOBYTE(v12) = 0;
    goto LABEL_76;
  }

  [(NSMutableSet *)v10 addObject:IDSRegistrationPropertySupportsStewie];
  if ([a3 associatedMessageType] && objc_msgSend(a3, "associatedMessageType") >= 1001)
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsAcknowledgementsV1];
    v13 = [objc_msgSend(a3 "messageSummaryInfo")];
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

  v14 = [a3 associatedMessageType];
  if (v14 == &stru_798.nreloc + 2 || v14 == &stru_BA0.segname[14] || (v15 = [a3 associatedMessageType], v15 == &stru_BA0.segname[15]) || v15 == &stru_798.nreloc + 3)
  {
    [(NSMutableSet *)v8 addObject:@"supports-stick-moji-backs"];
    v12 = 1;
  }

  if ([objc_msgSend(a3 "balloonBundleID")])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsPolls];
    v12 = 1;
  }

  if ([a3 associatedMessageType] == &stru_F58.reserved2)
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsPolls];
    v12 = 1;
  }

  if ([objc_msgSend(a3 "balloonBundleID")])
  {
    v16 = [a3 balloonBundleID];
    if (([v16 isEqualToString:IMBalloonPluginIdentifierRichLinks] & 1) == 0)
    {
      [a3 handle];
      IsBusinessID = IMStringIsBusinessID();
      v18 = [a3 balloonBundleID];
      if (IsBusinessID)
      {
        if ([(MessageDeliveryController *)self shouldSendBackwardsCompatibleMessageForBundleID:v18])
        {
          v19 = @"supports-biz-forward-compat-apps-v1";
LABEL_36:
          [(NSMutableSet *)v8 addObject:v19];
        }
      }

      else if ([v18 isEqualToString:IMBalloonExtensionIDWithSuffix()])
      {
        [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsActivitySharing];
      }

      else if ([objc_msgSend(a3 "balloonBundleID")])
      {
        v19 = IDSRegistrationPropertySupportsPhotosExtensionV1;
        goto LABEL_36;
      }

      [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsChatAppsV1];
      v12 = 1;
    }
  }

  [a3 payloadData];
  v20 = IMBalloonPluginRequiredCapabilitiesWithMessageData();
  if ([v20 count])
  {
    [(NSMutableSet *)v8 addObjectsFromArray:v20];
    v12 = 1;
  }

  if ([a3 isAudioMessage] && (objc_msgSend(a3, "backwardsCompatibleVersion") & 1) == 0)
  {
    [(NSMutableSet *)v8 addObject:@"supports-audio-messaging-v2"];
    v12 = 1;
  }

  v21 = [a3 expressiveSendStyleID];
  v22 = IMImpactEffectID_InvisibleInk;
  if ([v21 isEqualToString:IMImpactEffectID_InvisibleInk])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsInvisibleInkV1];
    v12 = 1;
  }

  if ([objc_msgSend(a3 "expressiveSendStyleID")])
  {
    if (([objc_msgSend(a3 "expressiveSendStyleID")] & 1) == 0)
    {
      v23 = -[MessageDeliveryController _propertyForExpressiveSendStyle:](self, "_propertyForExpressiveSendStyle:", [a3 expressiveSendStyleID]);
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

  if ([objc_msgSend(a3 "fileTransferGUIDs")])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = [a3 fileTransferGUIDs];
    v27 = [v26 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v46 + 1) + 8 * i)];
          v32 = [v31 isAutoloopVideo];
          v33 = v29;
          if ((v32 & 1) != 0 || [v31 isAnimojiV2] && (v34 = objc_msgSend(v31, "wantsAlphaRemoved"), v33 = v44, (v34 & 1) == 0))
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

        v27 = [v26 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v27);
    }
  }

  if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    v35 = [v42 messageSummaryInfo];
    if (v35)
    {
      v36 = [v35 objectForKey:IMMessageSummaryInfoTranslatedMessageParts];
      v37 = v42;
      if (!v36)
      {
        goto LABEL_74;
      }

      [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsAutomaticTranslation];
      LOBYTE(v12) = 1;
    }
  }

  v37 = v42;
LABEL_74:
  if ([v37 isBeingRetried])
  {
    [(NSMutableSet *)v8 addObject:IDSRegistrationPropertySupportsOriginalTimestampOrderingV1];
  }

LABEL_76:
  if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    v38 = [v42 isSOS];
    v39 = &IDSRegistrationPropertySupportsSOSAlerting;
    if (!v38)
    {
      v39 = &IDSRegistrationPropertySupportsHybridGroupsV1;
    }

    [(NSMutableSet *)v8 addObject:*v39];
  }

  return [NSDictionary dictionaryWithObjectsAndKeys:v8, @"req", v41, @"int", [NSNumber numberWithBool:v12 & 1], @"newFeature", 0];
}

- (BOOL)_transferIsUserGeneratedOrEmojiSticker:(id)a3
{
  if ([a3 isSticker] && (v4 = objc_msgSend(a3, "attributionInfo"), v5 = objc_msgSend(v4, "objectForKeyedSubscript:", IMFileTransferAttributionInfoBundleIDKey), objc_msgSend(v5, "length")))
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

- (id)_propertyForExpressiveSendStyle:(id)a3
{
  if (![a3 length] || (objc_msgSend(a3, "isEqualToString:", IMImpactEffectID_InvisibleInk) & 1) != 0)
  {
    return 0;
  }

  v4 = IDSRegistrationPropertySupportsImpactEffectsV1;
  if (![a3 containsString:IMFullScreenMomentID])
  {
    return v4;
  }

  if (([a3 hasSuffix:@"CKSparklesEffect"] & 1) != 0 || objc_msgSend(a3, "hasSuffix:", @"CKHeartEffect"))
  {
    v6 = &IDSRegistrationPropertySupportsFullScreenMomentsV2;
    return *v6;
  }

  if (([a3 hasSuffix:@"CKEchoEffect"] & 1) != 0 || objc_msgSend(a3, "hasSuffix:", @"CKSpotlightEffect"))
  {
    v6 = &IDSRegistrationPropertySupportsFullScreenMomentsV3;
    return *v6;
  }

  return v4;
}

- (void)_setReplyToGUIDForMessage:(id)a3 messageDictionary:(id)a4
{
  if (([a3 isTypingMessage] & 1) == 0 && objc_msgSend(objc_msgSend(a3, "replyToGUID"), "length"))
  {
    v6 = [a3 replyToGUID];
    if (v6)
    {
      CFDictionarySetValue(a4, @"r", v6);
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412546;
        v9 = [a3 replyToGUID];
        v10 = 2112;
        v11 = [a3 guid];
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setReplyToMessageGUID: %@ for message: %@", &v8, 0x16u);
      }
    }
  }
}

- (void)_sendMessage:(id)a3 context:(id)a4 deliveryContext:(id)a5 fromID:(id)a6 fromAccount:(id)a7 toID:(id)a8 chatIdentifier:(id)a9 toSessionToken:(id)a10 toGroup:(id)a11 toParticipants:(id)a12 originallyToParticipants:(id)a13 requiredRegProperties:(id)a14 interestingRegProperties:(id)a15 requiresLackOfRegProperties:(id)a16 canInlineAttachments:(BOOL)a17 type:(int64_t)a18 msgPayloadUploadDictionary:(id)a19 originalPayload:(id)a20 replyToMessageGUID:(id)a21 fallbackCount:(unint64_t)a22 willSendBlock:(id)a23 completionBlock:(id)a24
{
  v96 = a23;
  v27 = a13;
  if (![a13 count] && objc_msgSend(a12, "count"))
  {
    v27 = a12;
  }

  v102 = v27;
  v28 = +[NSDate date];
  if ([a12 count])
  {
    v94 = a6;
    v95 = a24;
    v93 = a7;
    v29 = [a7 serviceName];
    v30 = [v29 isEqualToString:IDSServiceNameiMessageForBusiness];
    [a3 addTelemetryMetricForKey:0];
    v31 = 1;
    if (a18 <= 1)
    {
      if (a18)
      {
        if (a18 == 1)
        {
          if (([a3 isTypingMessage] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = [a3 guid];
                *&buf[12] = 2112;
                *&buf[14] = a12;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Send attachments action  guid %@ (URIs: %@)", buf, 0x16u);
              }
            }
          }

          v118[0] = _NSConcreteStackBlock;
          v118[1] = 3221225472;
          v119 = sub_48794;
          v120 = &unk_112D50;
          v121 = a3;
          v122 = self;
          v123 = a5;
          v124 = v94;
          v125 = v93;
          v126 = a8;
          v127 = a9;
          v128 = a11;
          v129 = a12;
          v130 = v27;
          v131 = a14;
          v132 = a15;
          v140 = a17;
          v133 = a16;
          v134 = a19;
          v135 = a20;
          v136 = a21;
          v139 = a22;
          v137 = a23;
          v138 = a24;
          if ([objc_msgSend(a3 "fileTransferGUIDs")])
          {
            [(MessageDeliveryController *)self _sendAttachmentsForMessage:a3 canSendInline:a17 displayIDs:v27 additionalContext:a4 fromID:v94 recipients:a12 uploadStartTime:v28 fromAccount:v93 completionBlock:v118];
          }

          else
          {
            v119(v118, a3, v27, a4, 1, 0);
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
            *&buf[4] = [a3 guid];
            *&buf[12] = 2112;
            *&buf[14] = a12;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "Send message action guid %@ (URIs: %@)", buf, 0x16u);
          }
        }

        if ([a3 collaborationInitiationRequestInfo] && (objc_msgSend(a3, "isTypingOrCancelTypingMessage") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v82 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              v83 = [a3 guid];
              *buf = 138412290;
              *&buf[4] = v83;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "guid: %@ detected collaborationInitiationRequestInfo, offloading collaboration send.", buf, 0xCu);
            }
          }

          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_48A64;
          v117[3] = &unk_112D78;
          v117[4] = a24;
          LOBYTE(v88) = a17;
          [(MessageDeliveryController *)self _sendMessage:a3 context:a4 deliveryContext:a5 fromID:v94 fromAccount:v93 toID:a8 chatIdentifier:a9 toSessionToken:a10 toGroup:a11 toParticipants:a12 originallyToParticipants:v27 requiredRegProperties:a14 interestingRegProperties:a15 requiresLackOfRegProperties:a16 canInlineAttachments:v88 type:4 msgPayloadUploadDictionary:a19 originalPayload:a20 replyToMessageGUID:a21 fallbackCount:a22 willSendBlock:0 completionBlock:v117];
          return;
        }

        v51 = [(MessageDeliveryController *)self messageDictionaryWithMessageItem:a3 isBusiness:v30 chatIdentifier:a9 toParticipants:a12 originallyToParticipants:v27 additionalContext:a4 msgPayloadUploadDictionary:a19 originalPayload:a20];
        v31 = v93 == 0;
        if (v93)
        {
          v90 = [[NSSet alloc] initWithArray:a12];
          v52 = [v27 count];
          v53 = [a8 isEqualToString:v94];
          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = [a3 isTypingMessage];
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

              if (v55)
              {
                v58 = @"YES";
              }

              else
              {
                v58 = @"NO";
              }

              *&buf[12] = 2112;
              *&buf[14] = v94;
              *&buf[22] = 2112;
              if (v53)
              {
                v56 = @"YES";
              }

              v145 = a8;
              v146 = 2112;
              v147 = v57;
              v148 = 2112;
              v149 = v58;
              v150 = 2112;
              v151 = v56;
              _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "Sending to destinations %@   from: %@   to: %@   isGroup: %@  isTyping: %@  toMe: %@", buf, 0x3Eu);
            }
          }

          theDicta = objc_alloc_init(NSMutableDictionary);
          v59 = [a3 guid];
          v60 = IDSGetUUIDData();
          v89 = +[NSString stringGUID];
          if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = v60;
              *&buf[22] = 2112;
              v145 = v89;
              _os_log_impl(&dword_0, v61, OS_LOG_TYPE_INFO, "Setting send guid to %@  %@ (with alternate callback guid %@)", buf, 0x20u);
            }
          }

          if ([a3 isTapToRetry])
          {
            CFDictionarySetValue(theDicta, @"tr", &__kCFBooleanTrue);
            [a3 setIsTapToRetry:0];
          }

          v62 = [(MessageDeliveryController *)self _computeRegPropertiesForNewFeatures:a3 currentRegProperties:a14 currentInterestingProp:a15];
          v99 = [v62 objectForKey:@"req"];
          v98 = [v62 objectForKey:@"int"];
          v63 = [objc_msgSend(v62 objectForKey:{@"newFeature", "BOOLValue"}];
          v64 = [a3 sendAlternateLayoutAsText];
          if (IMOSLoggingEnabled())
          {
            v65 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = [a3 guid];
              v67 = @"NO";
              *buf = 138413314;
              *&buf[4] = v66;
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
              if (v64)
              {
                v67 = @"YES";
              }

              *&buf[22] = 2112;
              v145 = v98;
              v146 = 2112;
              v147 = v68;
              v148 = 2112;
              v149 = v67;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "msg guid %@ Required reg properties %@ interesting properties %@ newFeature %@ sendPropsCompatMsgAsText %@", buf, 0x34u);
            }
          }

          v69 = v63 ^ 1;
          if (a22 > 5)
          {
            v69 = 1;
          }

          if ((v69 & 1) == 0)
          {
            [a3 payloadData];
            v70 = IMBalloonPluginFallbackLinkMetadata();
            v116[0] = _NSConcreteStackBlock;
            v116[1] = 3221225472;
            v96 = v116;
            v116[2] = sub_48BB8;
            v116[3] = &unk_112E18;
            v116[16] = a22;
            v116[4] = a3;
            v116[5] = self;
            v116[6] = v94;
            v116[7] = a4;
            v116[8] = a5;
            v116[9] = v93;
            v116[10] = a9;
            v116[11] = v102;
            v116[12] = a20;
            v116[13] = a21;
            v116[15] = a24;
            v116[14] = v70;
          }

          [a3 addTelemetryMetricForKey:2];
          BYTE1(v87) = a17;
          LOBYTE(v87) = v52 > 2;
          v71 = [(MessageDeliveryController *)self idsOptionsWithMessageItem:a3 toID:a8 fromID:v94 sendGUIDData:v60 alternateCallbackID:v89 isBusinessMessage:v30 chatIdentifier:a9 requiredRegProperties:v99 interestingRegProperties:v98 requiresLackOfRegProperties:a16 deliveryContext:a5 isGroupChat:v87 canInlineAttachments:a19 msgPayloadUploadDictionary:v51 messageDictionary:?];
          if (IMOSLoggingEnabled())
          {
            v72 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              *&buf[4] = theDicta;
              *&buf[12] = 2112;
              *&buf[14] = v93;
              *&buf[22] = 2112;
              v145 = v71;
              v146 = 2112;
              v147 = a11;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "Sending IDS message: %@ from account: %@ options: %@ group: %@", buf, 0x2Au);
            }
          }

          if (a11)
          {
            if (IMOSLoggingEnabled())
            {
              v73 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = a11;
                _os_log_impl(&dword_0, v73, OS_LOG_TYPE_INFO, "Setting toDestinations to be group: %@", buf, 0xCu);
              }
            }
          }

          if (![v93 accountType])
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
          if (a11)
          {
            v76 = [NSSet setWithObject:?];
          }

          if (([IMIDSService service:v75 sendMessage:theDicta fromAccount:v93 toDestinations:v76 priority:300 options:v71 identifier:&v114 error:&v115]& 1) == 0)
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

            if ([a3 scheduleType] == &dword_0 + 2)
            {
              [(MessageDeliveryController *)self handleScheduledMessageSendFailure:a3];
            }

            (*(a24 + 2))(a24, self, v102, 0, 4, [a3 backwardsCompatibleVersion], 0, 1);

            return;
          }

          if (v114)
          {
            v95 = [a24 copy];
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
            LOBYTE(v145) = 0;
            v112[0] = _NSConcreteStackBlock;
            v112[1] = 3221225472;
            v112[2] = sub_4A6B4;
            v112[3] = &unk_112E40;
            v112[14] = buf;
            v112[4] = v114;
            v112[5] = self;
            v112[6] = a3;
            v112[7] = theDicta;
            v113 = a17;
            v112[8] = v51;
            v112[9] = a19;
            v112[10] = v94;
            v112[11] = v93;
            v112[13] = v95;
            v112[12] = v102;
            if ([v51 count])
            {
              v81 = [NSNumber numberWithInteger:100];
            }

            else
            {
              v81 = 0;
            }

            [(MessageDeliveryController *)self _enqueueUpdateBlock:v112 willSendBlock:v96 identifier:v114 callbackID:v89 messageCommandOption:v81];
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
              *&buf[4] = v94;
              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_INFO, "We found no account for fromID %@", buf, 0xCu);
            }
          }

          (*(a24 + 2))(a24, self, v27, 0, 31, [a3 backwardsCompatibleVersion], 0, 1);
        }
      }

LABEL_131:
      if (v31 && v95)
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

        (*(v95 + 2))(v95, self, v102, 0, 22, [a3 backwardsCompatibleVersion], 0, 1);
      }

      return;
    }

    switch(a18)
    {
      case 2:
        if (([a3 isTypingMessage] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = [a3 guid];
              *&buf[12] = 2112;
              *&buf[14] = a12;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Send payload action  guid %@ (URIs: %@)", buf, 0x16u);
            }
          }
        }

        v37 = a20;
        if (!a20)
        {
          v37 = [a3 payloadData];
        }

        theDict = [v37 _FTCopyGzippedData];
        v38 = [a3 balloonBundleID];
        if ([v38 isEqualToString:IMBalloonPluginIdentifierRichLinks])
        {
          v39 = objc_alloc_init(NSMutableArray);
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v40 = [a3 fileTransferGUIDs];
          v41 = [v40 countByEnumeratingWithState:&v108 objects:v143 count:16];
          if (v41)
          {
            v42 = *v109;
            do
            {
              for (i = 0; i != v41; i = i + 1)
              {
                if (*v109 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v108 + 1) + 8 * i)];
                if (!([v44 isFromMomentShare] & 1 | (v39 == 0)) && objc_msgSend(v44, "localURL"))
                {
                  CFArrayAppendValue(v39, [v44 localURL]);
                }
              }

              v41 = [v40 countByEnumeratingWithState:&v108 objects:v143 count:16];
            }

            while (v41);
          }

          if ([(__CFArray *)v39 count])
          {
            v45 = objc_autoreleasePoolPush();

            [a3 payloadData];
            theDict = [IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs() _FTCopyGzippedData];
            if (IMOSLoggingEnabled())
            {
              v46 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v47 = [a20 isEqual:theDict];
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
        v106[4] = a3;
        v106[5] = self;
        v106[6] = a4;
        v106[7] = a5;
        v106[8] = v94;
        v106[9] = v93;
        v106[10] = a8;
        v106[11] = a9;
        v106[12] = a11;
        v106[13] = a12;
        v106[14] = v27;
        v106[15] = a14;
        v106[16] = a15;
        v106[17] = a16;
        v107 = a17;
        v106[18] = a20;
        v106[19] = a21;
        v106[22] = a22;
        v106[20] = a23;
        v106[21] = a24;
        [-[MessageDeliveryController attachmentController](self "attachmentController")];

        break;
      case 3:
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = a12;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Send fallback action (Peers: %@)", buf, 0xCu);
          }
        }

        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_4AD44;
        v104[3] = &unk_112E90;
        v104[4] = self;
        v104[5] = a5;
        v104[6] = v94;
        v104[7] = v93;
        v104[8] = a8;
        v104[9] = a9;
        v104[10] = a11;
        v104[11] = a12;
        v104[12] = v27;
        v104[13] = a14;
        v104[14] = a15;
        v104[15] = a16;
        v105 = a17;
        v104[16] = a19;
        v104[17] = a20;
        v104[21] = a24;
        v104[22] = a22;
        v104[19] = a3;
        v104[20] = a23;
        v104[18] = a21;
        if ([a3 associatedMessageType] != &stru_F58.reserved2)
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
            *&buf[4] = [a3 guid];
            *&buf[12] = 2112;
            *&buf[14] = a12;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Send collaboration action  guid %@ (URIs: %@)", buf, 0x16u);
          }
        }

        v141[0] = _NSConcreteStackBlock;
        v141[1] = 3221225472;
        v141[2] = sub_480D0;
        v141[3] = &unk_112D28;
        v141[4] = a3;
        v141[5] = self;
        v141[6] = a12;
        v141[7] = a4;
        v141[8] = a5;
        v141[9] = v94;
        v141[10] = v93;
        v141[11] = a8;
        v141[12] = a9;
        v141[13] = a11;
        v141[14] = v27;
        v141[15] = a14;
        v141[16] = a15;
        v141[17] = a16;
        v142 = a17;
        v141[18] = a19;
        v141[19] = a20;
        v141[21] = a24;
        v141[20] = a21;
        v141[23] = a22;
        v141[22] = a23;
        [[[_TtC8iMessage28CollaborationDeliveryRequest alloc] initWithRecipients:a12 message:a3] sendWithCompletionHandler:v141];
        return;
      default:
        goto LABEL_131;
    }
  }

  else if (a24)
  {
    v33 = [a3 backwardsCompatibleVersion];
    v34 = *(a24 + 2);

    v34(a24, self, v27, 0, 4, v33, 0, 1);
  }
}

- (void)handleScheduledMessageSendFailure:(id)a3
{
  v5 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [a3 guid]);
  if ([v5 scheduleType] == &dword_0 + 2 && objc_msgSend(v5, "scheduleState") == &dword_0 + 2)
  {
    v6 = [a3 editedPartIndexes];
    v7 = [a3 retractedPartIndexes];
    if ([v6 count])
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_4B294;
      v14[3] = &unk_112EB8;
      v14[4] = a3;
      [v6 enumerateIndexesUsingBlock:v14];
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

    if ([v7 count])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4B2A0;
      v12[3] = &unk_112EB8;
      v12[4] = a3;
      [v7 enumerateIndexesUsingBlock:v12];
      [a3 setFileTransferGUIDs:{objc_msgSend(a3, "scheduledMessageOriginalTransferGUIDs")}];
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
    [a3 setScheduleType:{objc_msgSend(v5, "scheduleType")}];
    [a3 setScheduleState:{objc_msgSend(v5, "scheduleState")}];
    [a3 setMessageSummaryInfo:{objc_msgSend(v5, "messageSummaryInfo")}];
    [a3 setBody:{objc_msgSend(v5, "body")}];
    v11 = [v5 errorCode];

    [a3 setErrorCode:v11];
  }
}

- (BOOL)handleScheduledMessageSend:(id)a3 sentSuccessfully:(BOOL)a4 idsMessage:(id)a5 messageDictionary:(id)a6 canInlineAttachments:(BOOL)a7 msgPayloadUploadDictionary:(id)a8 fromID:(id)a9 fromAccount:(id)a10 originalIDSIdentifier:(id)a11
{
  v12 = a7;
  v16 = a3;
  v18 = [a3 editedPartIndexes];
  v19 = [v16 retractedPartIndexes];
  if (!a4)
  {
    [(MessageDeliveryController *)self handleScheduledMessageSendFailure:v16];
LABEL_55:
    LOBYTE(v45) = 0;
    return v45;
  }

  v20 = v19;
  if ([v18 count] || objc_msgSend(v20, "count"))
  {
    v16 = [(MessageDeliveryController *)self _updateSuccessfulRetractionsForScheduledMessage:[(MessageDeliveryController *)self _updateSuccessfulEditsForScheduledMessage:v16]];
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

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 scheduleType]);
  if (v22)
  {
    CFDictionarySetValue(a6, @"st", v22);
  }

  v23 = [v16 time];
  if (v23)
  {
    CFDictionarySetValue(a6, @"sd", v23);
  }

  v24 = JWEncodeDictionary();
  if ([objc_msgSend(v16 "fileTransferGUIDs")] && !v12 || (v25 = objc_msgSend(objc_msgSend(v16, "payloadData"), "length"), a8) && v25)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v16 fileTransferGUIDs];
        v28 = @"NO";
        if (v12)
        {
          v28 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v27;
        v55 = 2112;
        v56 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "Not compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
      }
    }

    v29 = v24;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v16 fileTransferGUIDs];
        v32 = @"NO";
        if (v12)
        {
          v32 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v31;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Compressing data, %@, canInlineAttachments: %@", buf, 0x16u);
      }
    }

    v29 = [v24 _FTCopyGzippedData];
  }

  v33 = v29;
  v34 = [NSNumber numberWithInteger:100];
  [v16 guid];
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

  if (a9)
  {
    CFDictionarySetValue(v37, IDSSendMessageOptionFromIDKey, a9);
  }

  v41 = [v39 count];
  v42 = [objc_msgSend(objc_msgSend(a10 "devices")];
  v43 = v42;
  if (a10)
  {
    v44 = v41 != 0;
  }

  else
  {
    v44 = 0;
  }

  if (v42 < 1 || !v44 || ![a10 devices])
  {
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [a10 devices];
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
        v58 = a10;
        v59 = 2112;
        v60 = v48;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "We did not have ids accounts to send scheduled messages out -- bailing {haveTokenURISToSendTo %@ hasPeerDevicesSupportingSendLater %@ idsAccount %@ devices %@}", buf, 0x2Au);
      }
    }

    goto LABEL_55;
  }

  *buf = 0;
  v45 = [IMIDSService service:self->_idsService sendMessage:a5 fromAccount:a10 toDestinations:v39 priority:300 options:v37 identifier:0 error:buf];
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

- (id)_updateSuccessfulRetractionsForScheduledMessage:(id)a3
{
  v5 = [a3 retractedPartIndexes];
  v6 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4BC64;
  v9[3] = &unk_112F20;
  v9[4] = a3;
  v9[5] = self;
  v9[6] = v6;
  [v5 enumerateIndexesUsingBlock:v9];
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

  [a3 setRetractedPartIndexes:{+[NSIndexSet indexSet](NSIndexSet, "indexSet")}];
  return a3;
}

- (id)_updateSuccessfulEditsForScheduledMessage:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4BD90;
  v5[3] = &unk_112EB8;
  v5[4] = a3;
  [objc_msgSend(a3 "editedPartIndexes")];
  [a3 setEditedPartIndexes:{+[NSIndexSet indexSet](NSIndexSet, "indexSet")}];
  return a3;
}

- (void)_updateExpectedOffGridCapableDeliveryReceiptsForMessage:(id)a3 chatIdentifier:(id)a4 numberOfExpectedOffGridCapableDeliveries:(unint64_t)a5
{
  v7 = a3;
  if (([a3 isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = a5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Got %llu expected off grid capable deliveries", &v12, 0xCu);
      }
    }

    if (a5)
    {
      v10 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [v7 guid]);
      if (v10)
      {
        v7 = v10;
      }

      [v7 setExpectedOffGridCapableDeliveries:a5];
      v11 = [(MessageDeliveryController *)self _chatForChatIdentifier:a4];
      if ([v11 style] == 45)
      {
        [+[IMDOffGridAvailabilityTracker sharedTracker](IMDOffGridAvailabilityTracker "sharedTracker")];
      }

      [+[IMDMessageStore sharedInstance](IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" forceReplace:v7 modifyError:0 modifyFlags:0 flagMask:0, 0];
    }
  }
}

- (id)_fileTransferGUIDsInMessageBody:(id)a3
{
  v4 = [a3 length];
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4BFF0;
  v7[3] = &unk_112F48;
  v7[4] = v5;
  [a3 enumerateAttribute:IMFileTransferGUIDAttributeName inRange:0 options:v4 usingBlock:{0, v7}];
  return [v5 array];
}

- (id)_associatedMessageFallbackHashForMessageItem:(id)a3
{
  [a3 associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return [(MessageDeliveryController *)self _fallbackHashForMessageItemWithGUID:v4];
}

- (id)_threadOriginatorFallbackHashForMessageItem:(id)a3
{
  [a3 threadIdentifier];
  OriginatorGUID = IMMessageThreadIdentifierGetOriginatorGUID();

  return [(MessageDeliveryController *)self _fallbackHashForMessageItemWithGUID:OriginatorGUID];
}

- (id)_fallbackHashForMessageItemWithGUID:(id)a3
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
      v10 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Using fallback hash with length %llu for message GUID %@", &v7, 0x16u);
    }
  }

  return v4;
}

- (BOOL)_hasRecentlyMessaged:(id)a3
{
  v4 = +[IMDRecentsController sharedInstance];

  return [(IMDRecentsController *)v4 hasRecentlyMessaged:a3];
}

- (void)noteRecentMessageForPeople:(id)a3
{
  v4 = +[IMDRecentsController sharedInstance];

  [(IMDRecentsController *)v4 noteRecentMessageForPeople:a3];
}

- (id)activeDeviceForHandle:(id)a3
{
  v4 = +[IMDRecentsController sharedInstance];

  return [(IMDRecentsController *)v4 activeDeviceForHandle:a3];
}

- (id)_receivingDevicesForHandle:(id)a3 skippedDestinations:(id)a4
{
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [(MessageDeliveryController *)self activeDeviceForHandle:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 idsDestination];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [a4 countByEnumeratingWithState:&v27 objects:v34 count:16];
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
            objc_enumerationMutation(a4);
          }

          if ([v10 isEqualToString:{*(*(&v27 + 1) + 8 * i), v22}])
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

              [v7 addObject:v10];
            }
          }
        }

        v11 = [a4 countByEnumeratingWithState:&v27 objects:v34 count:16];
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
    v17 = [a4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(a4);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if ([v20 containsString:a3])
          {
            [v7 addObject:v20];
          }
        }

        v17 = [a4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }
  }

  return [v7 copy];
}

- (id)_receivingDevicesForParticipants:(id)a3 skippedDestinations:(id)a4
{
  v7 = objc_alloc_init(NSMutableSet);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4C67C;
  v9[3] = &unk_112F70;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = v7;
  [a3 enumerateObjectsUsingBlock:v9];
  return [v7 copy];
}

- (void)_enqueueSendMessageWorkBlock:(id)a3 forURIs:(id)a4
{
  if (a3)
  {
    if ([a4 count])
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = a4;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Enqueueing block for set: %@", &v10, 0xCu);
        }
      }

      deliveryQueues = self->_deliveryQueues;
      if (!deliveryQueues)
      {
        deliveryQueues = objc_alloc_init(IMMultiQueue);
        self->_deliveryQueues = deliveryQueues;
      }

      [(IMMultiQueue *)deliveryQueues addBlock:a3 withTimeout:a4 forKey:@"enqueued message" description:300.0];
    }

    else
    {
      v9 = *(a3 + 2);

      v9(a3, 0);
    }
  }
}

- (void)sendMessage:(id)a3 context:(id)a4 groupContext:(id)a5 toGroup:(id)a6 toParticipants:(id)a7 originallyToParticipants:(id)a8 fromID:(id)a9 fromAccount:(id)a10 chatIdentifier:(id)a11 originalPayload:(id)a12 replyToMessageGUID:(id)a13 fakeSavedReceiptBlock:(id)a14 completionBlock:(id)a15
{
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      v42 = [a3 guid];
      v43 = 2112;
      v44 = a7;
      v45 = 2112;
      v46 = a9;
      v47 = 2112;
      v48 = a10;
      v49 = 2112;
      v50 = a4;
      v51 = 2112;
      v52 = a11;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Send Message: %@  to people: %@  fromPeer: %@ fromAccount %@ context: %@, chat identifier %@", buf, 0x3Eu);
    }
  }

  if (([a3 isTypingMessage] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [+[NetworkChangeNotifier sharedInstance](NetworkChangeNotifier linkQualityValueForInterfaceType:"linkQualityValueForInterfaceType:", 3];
        *buf = 67109120;
        LODWORD(v42) = v20;
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
        LODWORD(v42) = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", buf, 8u);
      }
    }
  }

  if ([a7 count])
  {
    if (a9 && a10)
    {
      v23 = [(MessageDeliveryController *)self _hasRecentlyMessaged:a7];
      if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] && !(v23 & 1 | ((IMGetCachedDomainBoolForKeyWithDefaultValue() & 1) == 0)))
      {
        if (([+[IMDRecentsController hasRecentMessageFrom:"hasRecentMessageFrom:"]!= 0)
        {
LABEL_35:
          v28 = [a3 isTypingMessage];
          v29 = PeopleSetByAddingMyID(a9, a8);
          v30 = a7;
          if ((v28 & 1) == 0)
          {
            v30 = PeopleSetByAddingMyID(a9, a7);
          }

          v31 = [a3 balloonBundleID];
          if ([v31 isEqualToString:IMBalloonPluginIdentifierRichLinks])
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

            v33 = [a3 collaborationInitiationRequestInfo];
            a3 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [a3 guid]);
            [a3 setCollaborationInitiationRequestInfo:v33];
          }

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_4CEB0;
          v40[3] = &unk_113060;
          v40[4] = a3;
          v40[5] = a9;
          v40[6] = v35;
          v40[7] = self;
          v40[8] = a4;
          v40[9] = a10;
          v40[10] = a11;
          v40[11] = v37;
          v40[12] = v29;
          v40[13] = a12;
          v40[14] = a13;
          v40[17] = a14;
          v40[18] = a15;
          v40[15] = v30;
          v40[16] = a8;
          [(MessageDeliveryController *)self _enqueueSendMessageWorkBlock:v40 forURIs:v29];
          [(MessageDeliveryController *)self noteRecentMessageForPeople:a7];
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
          v42 = a7;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "We have no session to %@", buf, 0xCu);
        }
      }

      if (![a3 isTypingMessage])
      {
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [a3 guid];
          *buf = 138412290;
          v42 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%@ is a typing indicator, marking as delivery success", buf, 0xCu);
        }
      }

      if (a15)
      {
        (*(a15 + 2))(a15, self, a7, 1, 0, [a3 backwardsCompatibleVersion], 0, 1);
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
          v42 = a3;
          v43 = 2112;
          v44 = a9;
          v45 = 2112;
          v46 = a10;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "*********** Failing message: %@    empty source ID or idsAccount supplied (%@:%@)", buf, 0x20u);
        }
      }

      if (a15)
      {
        (*(a15 + 2))(a15, self, a7, 0, 33, [a3 backwardsCompatibleVersion], 0, 1);
      }
    }
  }

  else if (a15)
  {
    (*(a15 + 2))(a15, self, a7, 0, 21, [a3 backwardsCompatibleVersion], 0, 1);
  }
}

- (BOOL)isLQMEnabled:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 fileTransferGUIDs];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      objc_enumerationMutation(v3);
    }

    v8 = 1;
    if ((+[IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:isSending:](IMDAttachmentUtilities, "shouldEnablePreviewTranscodingQualityForTransfer:isSending:", [+[IMDFileTransferCenter transferForGUID:"transferForGUID:"]& 1) != 0)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isReceiverHQTransferCapable:(id)a3 fromID:(id)a4
{
  v5 = [[IDSURI alloc] initWithPrefixedURI:a4];
  v6 = [IMIDSIDQueryController _currentCachedRemoteDevicesForDestinations:a3 service:IDSServiceNameiMessage preferredFromID:v5 listenerID:@"MessageDeliveryController"];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v7);
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
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (void)sendHQAttachmentsForMessage:(id)a3 context:(id)a4 fromID:(id)a5 fromAccount:(id)a6 chatIdentifier:(id)a7 toGroup:(id)a8 originallyToParticipants:(id)a9 canInlineAttachments:(BOOL)a10 recipients:(id)a11 completionBlock:(id)a12
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_4EC70;
  v26 = sub_4EC80;
  v27 = objc_alloc_init(NSMutableArray);
  for (i = [objc_msgSend(a3 "fileTransferGUIDs")]; i; --i)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    [v23[5] addObject:v19];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4EC8C;
  v21[3] = &unk_1130D8;
  v21[4] = a3;
  v21[5] = self;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a9;
  v21[9] = a8;
  v21[10] = a12;
  v21[11] = &v22;
  [a3 setIsHQTransfer:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_4F2CC;
  v20[3] = &unk_113100;
  v20[4] = &v22;
  [objc_msgSend(a3 "fileTransferGUIDs")];
  -[MessageDeliveryController _sendAttachmentsForMessage:canSendInline:displayIDs:additionalContext:fromID:recipients:uploadStartTime:fromAccount:completionBlock:](self, "_sendAttachmentsForMessage:canSendInline:displayIDs:additionalContext:fromID:recipients:uploadStartTime:fromAccount:completionBlock:", a3, a10, a9, a4, a5, a11, [a3 time], a6, v21);
  _Block_object_dispose(&v22, 8);
}

- (void)sendMessageError:(int64_t)a3 toToken:(id)a4 toID:(id)a5 toGroup:(id)a6 fromID:(id)a7 fromAccount:(id)a8 forMessageID:(id)a9 completionBlock:(id)a10
{
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      v25 = a3;
      v26 = 2112;
      v27 = a9;
      v28 = 2112;
      v29 = a4;
      v30 = 2112;
      v31 = a5;
      v32 = 2112;
      v33 = a7;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending MessageError: %ld  forMessageID: %@  to token: %@  toPeer: %@  fromPeer: %@", buf, 0x34u);
    }
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = IDSGetUUIDData();
  if (v19)
  {
    CFDictionarySetValue(v18, IDSFailedUUIDKey, v19);
  }

  if (a9)
  {
    CFDictionarySetValue(v18, IDSFailedMessageIDKey, a9);
  }

  v20 = [NSNumber numberWithInteger:a3];
  if (v20)
  {
    CFDictionarySetValue(v18, IDSFailureReasonKey, v20);
  }

  v21 = [NSNumber numberWithInteger:120];
  v22 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, v21, IDSSendMessageOptionCommandKey, 0];
  if (a4)
  {
    a5 = IDSCopyIDForTokenWithID();
  }

  else
  {
    v23 = a5;
  }

  [(MessageDeliveryController *)self sendMessageDictionary:v18 fromID:a7 fromAccount:a8 toURIs:[NSSet setWithObject:?]options:a6 completionBlock:300, v22, a10];
}

- (void)sendMessageErrorWithInfo:(int64_t)a3 toToken:(id)a4 toID:(id)a5 toGroup:(id)a6 fromID:(id)a7 fromAccount:(id)a8 forMessageID:(id)a9 additionalInfo:(id)a10 fileSize:(id)value failureTimeSeconds:(double)a12 failReasonMessage:(id)a13 completionBlock:(id)a14
{
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134219266;
      v31 = a3;
      v32 = 2112;
      v33 = a9;
      v34 = 2112;
      v35 = a4;
      v36 = 2112;
      v37 = a5;
      v38 = 2112;
      v39 = a7;
      v40 = 2112;
      v41 = a10;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Sending MessageError: %ld  forMessageID: %@  to token: %@  toPeer: %@  fromPeer: %@ additionalInfo: %@", buf, 0x3Eu);
    }
  }

  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = IDSGetUUIDData();
  if (v23)
  {
    CFDictionarySetValue(v22, IDSFailedUUIDKey, v23);
  }

  if (a9)
  {
    CFDictionarySetValue(v22, IDSFailedMessageIDKey, a9);
  }

  v24 = [NSNumber numberWithInteger:a3];
  if (v24)
  {
    CFDictionarySetValue(v22, IDSFailureReasonKey, v24);
  }

  if (a10)
  {
    CFDictionarySetValue(v22, @"aDI", a10);
  }

  if (value)
  {
    CFDictionarySetValue(v22, @"fFS", value);
  }

  if (IMSendAdditionalMMCSErrorInfoToMadrid())
  {
    if (a13)
    {
      CFDictionarySetValue(v22, @"fRM", a13);
    }

    v25 = [NSNumber numberWithInteger:llround(a12 * 1000.0)];
    if (v25)
    {
      CFDictionarySetValue(v22, @"fTE", v25);
    }
  }

  v26 = [NSNumber numberWithInteger:120];
  v27 = [NSMutableDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, v26, IDSSendMessageOptionCommandKey, 0];
  if (a4)
  {
    a5 = IDSCopyIDForTokenWithID();
  }

  else
  {
    v28 = a5;
  }

  [(MessageDeliveryController *)self sendMessageDictionary:v22 fromID:a7 fromAccount:a8 toURIs:[NSSet setWithObject:?]options:a6 completionBlock:300, v27, a14];
}

- (void)sendBubblePayloadMessageDictionary:(id)a3 fromID:(id)a4 fromAccount:(id)a5 toURIs:(id)a6 toGroup:(id)a7 priority:(int64_t)a8 options:(id)a9 completionBlock:(id)a10
{
  v17 = PeopleSetByAddingMyID(a4, [a6 allObjects]);
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
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = a7;
  v19[11] = a9;
  v19[12] = a10;
  v19[13] = a8;
  [(MessageDeliveryController *)self _enqueueSendMessageWorkBlock:v19 forURIs:v17];
}

- (void)failMessageSendWithMessageDictionary:(id)a3 URIs:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = a3;
      v14 = 2112;
      v15 = a4;
      v16 = 2112;
      v17 = a5;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "IDS sendMessage for message %@ to URIs %@ did not succeed, error %@", &v12, 0x20u);
    }
  }

  if (a6)
  {
    (*(a6 + 2))(a6, self, [a4 allObjects], 0, 4, 0);
  }
}

- (void)sendMessageDictionary:(id)a3 encryptDictionary:(BOOL)a4 fromID:(id)a5 fromAccount:(id)a6 toURIs:(id)a7 toGroup:(id)a8 priority:(int64_t)a9 options:(id)a10 willSendBlock:(id)a11 callCompletionOnSuccess:(BOOL)a12 callCompletionOnLast:(BOOL)a13 completionBlock:(id)a14
{
  v48 = 0;
  v49 = 0;
  if (a6)
  {
    v19 = a4;
    [a10 objectForKeyedSubscript:IDSSendMessageOptionCommandKey];
    v20 = [a10 mutableCopy];
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

    if (a5)
    {
      CFDictionarySetValue(v20, IDSSendMessageOptionFromIDKey, a5);
    }

    CFDictionarySetValue(v20, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
    CFDictionarySetValue(v20, IDSSendMessageOptionTimeoutKey, &off_119698);
    if (v19 && [a3 count])
    {
      v22 = JWEncodeDictionary();
      v23 = [v22 _FTCopyGzippedData];
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v52 = [v22 length];
          *&v52[4] = 1024;
          *&v52[6] = [v23 length];
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Compressed message data from: %u to: %u in sendMessageDictionary", buf, 0xEu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [v23 length];
          *buf = 67109120;
          *v52 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size %u", buf, 8u);
        }
      }

      [(__CFDictionary *)v20 setObject:v23 forKey:IDSSendMessageOptionDataToEncryptKey];
    }

    v27 = [a6 serviceName];
    v28 = [v27 isEqualToString:IDSServiceNameiMessageForBusiness];
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
        *v52 = a6;
        *&v52[8] = 2112;
        if (v28)
        {
          v32 = @"YES";
        }

        v53 = a8;
        v54 = 2112;
        v55 = v30;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "sendMessageDictionary - got account %@ to engroup: %@ using IDSService: %@ isBusinessMessage: %@", buf, 0x2Au);
      }
    }

    v33 = [[NSMutableDictionary alloc] initWithDictionary:a3];
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

    v36 = a7;
    if (a8)
    {
      v36 = [NSSet setWithObject:a8];
    }

    v37 = [IMIDSService service:v30 sendMessage:v33 fromAccount:a6 toDestinations:v36 priority:a9 options:v20 identifier:&v48 error:&v49];

    if (a14 && ((v37 ^ 1) & 1) == 0 && v48)
    {
      v38 = [a7 allObjects];
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [v38 count];
          *buf = 134217984;
          *v52 = v40;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Result URIs Size: %lu", buf, 0xCu);
        }
      }

      v41 = [a14 copy];
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
      v46 = a12;
      v47 = a13;
      v45[4] = v48;
      v45[5] = self;
      v45[6] = v38;
      v45[7] = v41;
      [MessageDeliveryController _enqueueUpdateBlock:"_enqueueUpdateBlock:willSendBlock:identifier:callbackID:messageCommandOption:" willSendBlock:v45 identifier:a11 callbackID:? messageCommandOption:?];
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v52 = v48;
          *&v52[8] = 2112;
          v53 = a3;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Received IDS identifier %@ for message %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [(MessageDeliveryController *)self failMessageSendWithMessageDictionary:a3 URIs:a7 error:v49 completionHandler:a14];
    }
  }

  else
  {

    [(MessageDeliveryController *)self failMessageSendWithMessageDictionary:a3 URIs:a7 error:0 completionHandler:a14];
  }
}

- (void)sendCloseSessionMessageDictionary:(id)a3 toBusinessURI:(id)a4 fromURI:(id)a5 fromAccount:(id)a6 completionBlock:(id)a7
{
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = a4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "sendCloseSessionMessageDictionary for biz URI: %@", buf, 0xCu);
    }
  }

  if (IMStringIsBusinessID())
  {
    v13 = [NSSet setWithObjects:a4, a5, 0];
    +[NSString stringGUID];
    v14 = [NSNumber numberWithInteger:170];
    v15 = IDSGetUUIDData();
    v16 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v17 = [NSDictionary dictionaryWithObjectsAndKeys:IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v14, IDSSendMessageOptionCommandKey, v15, IDSSendMessageOptionUUIDKey, v16, IDSSendMessageOptionTimeoutKey, a5, IDSSendMessageOptionFromIDKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsResponseKey, &__kCFBooleanFalse, IDSSendMessageOptionEnforceRemoteTimeoutsKey, 0];
    v18 = [NSMutableDictionary dictionaryWithDictionary:a3];
    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
    {
      v19 = [(MessageDeliveryController *)self _chatForChatIdentifier:a4];
      if ([v19 containsActiveBIASession])
      {
        v20 = [v19 BIAContext];
        if ([v20 count])
        {
          if ([v20 count])
          {
            CFDictionarySetValue(v18, @"bcon", v20);
          }
        }
      }
    }

    [(MessageDeliveryController *)self sendMessageDictionary:[(NSMutableDictionary *)v18 copy] encryptDictionary:1 fromID:a5 fromAccount:a6 toURIs:v13 toGroup:0 priority:300 options:v17 willSendBlock:0 completionBlock:0];
    if (a7)
    {
      (*(a7 + 2))(a7, self, [(NSSet *)v13 allObjects], 0, 4, 0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = a4;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "sendCloseSessionMessageDictionary called for non biz URI: %@", buf, 0xCu);
    }
  }
}

- (BOOL)sendToLocalPeersFile:(id)a3 dictionary:(id)a4
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
    if (a3)
    {
      v11 = [a4 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryDictKey];
      v27[0] = IMDRelayLocalMessageDictionaryGUIDKey;
      v28[0] = [v11 objectForKeyedSubscript:?];
      v27[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
      v28[1] = [v11 objectForKeyedSubscript:?];
      v27[2] = IMDRelayLocalMessageDictionaryTypeKey;
      v28[2] = IMDRelayLocalMessageTypeRemoteFileResponse;
      v12 = [(IDSService *)self->_idsService sendResourceAtURL:a3 metadata:[NSDictionary dictionaryWithObjects:? forKeys:? count:?]error:v9, 300, v10, &v20, &v19];
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
      v12 = [IMIDSService service:self->_idsService sendMessage:a4 fromAccount:0 toDestinations:v9 priority:300 options:v10 identifier:&v20 error:&v19];
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
  v2 = [(IDSService *)self->_idsService devices];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v11 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v10 + 1) + 8 * v5);
      if ([v6 isActive])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

- (id)idsDeviceFromPushToken:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(IDSService *)self->_idsService devices];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "pushToken")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      v13 = 138413058;
      v14 = a3;
      v15 = 2112;
      if (v8)
      {
        v12 = @"YES";
      }

      v16 = a5;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = a7;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Service %@ sent Message with ID %@ and sucess %@ with Error %@", &v13, 0x2Au);
    }
  }
}

- (void)sendEditedMessage:(id)a3 partIndex:(int64_t)a4 editType:(unint64_t)a5 destinations:(id)a6 chatIdentifier:(id)a7 account:(id)a8 fromID:(id)a9 backwardCompatabilityText:(id)a10 unsupportedDestinationsHandler:(id)a11 completionBlock:(id)a12
{
  v54 = +[NSString stringGUID];
  v52 = a3;
  v16 = [a3 guid];
  if (![v16 length])
  {
    [+[IMMetricsCollector sharedInstance](IMMetricsCollector forceAutoBugCaptureWithSubType:"forceAutoBugCaptureWithSubType:errorPayload:" errorPayload:@"Sending Edited Message with no GUID", 0];
  }

  if ([a10 length])
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
      *&buf[14] = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending edit command with guid %@ for edit of message with guid %@", buf, 0x16u);
    }
  }

  v18 = [v52 body];
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v19;
  if (@"1")
  {
    CFDictionarySetValue(v19, @"v", @"1");
  }

  v21 = [(MessageDeliveryController *)self _replicationSourceIDForSending];
  if (v21)
  {
    CFDictionarySetValue(v20, @"rp", v21);
  }

  if (v16)
  {
    CFDictionarySetValue(v20, @"emg", v16);
  }

  v22 = [NSNumber numberWithInteger:a4];
  if (v22)
  {
    CFDictionarySetValue(v20, @"epi", v22);
  }

  v23 = [NSNumber numberWithUnsignedInteger:a5];
  if (v23)
  {
    CFDictionarySetValue(v20, @"et", v23);
  }

  if (a5 == 2)
  {
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(v52 subject] == 0);
    if (v31)
    {
      CFDictionarySetValue(v20, @"rs", v31);
    }
  }

  else if (a5 == 1)
  {
    v24 = [v18 __im_messagePartMatchingPartIndex:a4];
    v25 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:", [v24 messagePartBody], 1);
    [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v25];
    v26 = [(SuperToMessageParserContext *)v25 outHTML];
    if (v26)
    {
      CFDictionarySetValue(v20, @"epb", v26);
    }

    v27 = [v52 translationsForMessagePart:{objc_msgSend(v24, "messagePartIndex")}];
    if ([v27 count])
    {
      v28 = [[IMTranslatedMessagePart alloc] initWithDictionaryRepresentation:{objc_msgSend(v27, "firstObject")}];
      v29 = -[SuperToMessageParserContext initWithAttributedString:includeMessageParts:]([SuperToMessageParserContext alloc], "initWithAttributedString:includeMessageParts:", [v28 translatedText], 1);
      [+[IMAttributedStringParser sharedInstance](IMAttributedStringParser parseContext:"parseContext:", v29];
      v30 = [(SuperToMessageParserContext *)v29 outHTML];
      if (v30)
      {
        CFDictionarySetValue(v20, @"ept", v30);
      }
    }
  }

  v32 = [NSSet setWithObject:IDSRegistrationPropertySupportsRetractAndEditMessages];
  if ([(MessageServiceSession *)[(MessageDeliveryController *)self session] isReplicating])
  {
    v33 = [v52 isSOS];
    v34 = &IDSRegistrationPropertySupportsSOSAlerting;
    if (!v33)
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
    v39 = [v38 _FTCopyGzippedData];
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v38 length];
        v42 = [v39 length];
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
        v44 = [v39 length];
        *buf = 134217984;
        *&buf[4] = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size: %lu", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)v37 setObject:v39 forKey:IDSSendMessageOptionDataToEncryptKey];
  }

  v45 = [[NSSet alloc] initWithArray:a6];
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
  v57[4] = a9;
  v57[5] = v49;
  v57[6] = a10;
  v57[7] = v46;
  v57[8] = self;
  v57[9] = v52;
  v57[10] = a6;
  v57[11] = a7;
  v57[12] = a8;
  v57[13] = a11;
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
  [(MessageDeliveryController *)self sendMessageDictionary:v48 encryptDictionary:1 fromID:a9 fromAccount:a8 toURIs:v45 toGroup:0 priority:300 options:v37 willSendBlock:v57 callCompletionOnSuccess:v47 callCompletionOnLast:v56 completionBlock:?];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_52474;
  block[3] = &unk_113218;
  block[6] = buf;
  block[7] = v59;
  block[4] = self;
  block[5] = a12;
  dispatch_group_notify(v46, &_dispatch_main_q, block);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_sendBackwardCompatibilityMessageForEditedMessage:(id)a3 usingMessageGUID:(id)a4 toBackwardCompatabilityDestinations:(id)a5 withOriginalDestinations:(id)a6 chatIdentifier:(id)a7 fromAccount:(id)a8 fromID:(id)a9 backwardCompatabilityText:(id)a10 completionBlock:(id)a11
{
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = a5;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Sending backwards compatible edit message text to %@", buf, 0xCu);
    }
  }

  v18 = [[IMMessageItem alloc] initWithSender:objc_msgSend(a3 time:"sender") body:objc_msgSend(a3 attributes:"dateEdited") fileTransferGUIDs:a10 flags:0 error:0 guid:objc_msgSend(a3 threadIdentifier:{"flags"), 0, a4, objc_msgSend(a3, "threadIdentifier")}];
  [v18 setDestinationCallerID:{objc_msgSend(a9, "_stripFZIDPrefix")}];
  v19 = [(MessageDeliveryController *)self _chatForChatIdentifier:a7];
  v20 = [(MessageDeliveryController *)self session];
  v21 = [(MessageDeliveryController *)self groupController];
  idsService = self->_idsService;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_52788;
  v24[3] = &unk_113268;
  v24[4] = self;
  v24[5] = a7;
  v24[6] = a5;
  v24[7] = a6;
  v24[9] = v18;
  v24[10] = a11;
  v24[8] = a3;
  [v21 sendMessage:v18 toChat:v19 fromID:a9 fromAccount:a8 session:v20 service:idsService completionBlock:v24];
}

- (void)sendRepositionedStickerMetadata:(id)a3 forEditedMessage:(id)a4 destinations:(id)a5 account:(id)a6 fromID:(id)a7 completionBlock:(id)a8
{
  [(MessageDeliveryController *)self _checkStickerRepositioningMetadata:?];
  v12 = +[NSString stringGUID];
  v13 = [a4 guid];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Sending sticker reposition command with guid %@ for sticker chat item with guid %@", buf, 0x16u);
    }
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = v15;
  if (@"1")
  {
    CFDictionarySetValue(v15, @"v", @"1");
  }

  v17 = [(MessageDeliveryController *)self _replicationSourceIDForSending];
  if (v17)
  {
    CFDictionarySetValue(v16, @"rp", v17);
  }

  if (v13)
  {
    CFDictionarySetValue(v16, @"scig", v13);
  }

  if (a3)
  {
    CFDictionarySetValue(v16, @"srpi", a3);
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
    v25 = [v24 _FTCopyGzippedData];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v24 length];
        v28 = [v25 length];
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
        v30 = [v25 length];
        *buf = 134217984;
        *&buf[4] = v30;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Adding data to be encrypted of size: %lu", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)v23 setObject:v25 forKey:IDSSendMessageOptionDataToEncryptKey];
  }

  v31 = [[NSSet alloc] initWithArray:a5];
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
  [(MessageDeliveryController *)self sendMessageDictionary:v21 encryptDictionary:1 fromID:a7 fromAccount:a6 toURIs:v31 toGroup:0 priority:300 options:v23 willSendBlock:0 completionBlock:v37];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_53188;
  block[3] = &unk_1132B8;
  block[6] = buf;
  block[7] = v38;
  block[4] = self;
  block[5] = a8;
  block[8] = v40;
  dispatch_group_notify(v32, &_dispatch_main_q, block);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_checkStickerRepositioningMetadata:(id)a3
{
  if (a3)
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

- (void)cancelScheduledMessageWithGUID:(id)a3 fromID:(id)a4
{
  v17 = 0;
  v18 = 0;
  v7 = [(MessageDeliveryController *)self _getQueueIdentifierFromGUID:?];
  idsService = self->_idsService;
  v28[0] = IDSSendMessageOptionQueueOneIdentifierKey;
  v28[1] = IDSSendMessageOptionFromIDKey;
  v29[0] = v7;
  v29[1] = a4;
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
          v20 = v17;
          v21 = 2112;
          v22 = a3;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "We already have identifier (%@) for messageGUID (%@)", buf, 0x16u);
        }
      }
    }

    v12 = self->_pendingCancelScheduledMessageGUIDs;
    v27[0] = a3;
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
      v20 = a3;
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

      v20 = a3;
      v21 = 2112;
      v22 = a4;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Cancelling scheduled message with GUID: %@ handleID: %@, cancelSuccess: %@ idsIdentifier: %@", buf, 0x2Au);
    }
  }
}

- (void)cancelScheduledMessageWithGUID:(id)a3 fromID:(id)a4 destinations:(id)a5 cancelType:(unint64_t)a6
{
  v36 = 0;
  v37 = 0;
  v11 = [(MessageDeliveryController *)self _getQueueIdentifierFromGUID:?];
  v54[0] = IDSSendMessageOptionQueueOneIdentifierKey;
  v54[1] = IDSSendMessageOptionFromIDKey;
  v55[0] = v11;
  v55[1] = a4;
  v12 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v55];
  v13 = v12;
  if (a6 != 2)
  {
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionAlwaysIncludeSelfKey];
  }

  v14 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(a5, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [a5 countByEnumeratingWithState:&v32 objects:v53 count:16];
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
          objc_enumerationMutation(a5);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        [v14 addObject:IMChatCanonicalIDSIDsForAddress()];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [a5 countByEnumeratingWithState:&v32 objects:v53 count:16];
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
      v25 = [NSNumber numberWithUnsignedInteger:a6];
      v26 = @"NO";
      *buf = 138413826;
      if (v23)
      {
        v26 = @"YES";
      }

      v40 = a3;
      v41 = 2112;
      v42 = a4;
      v43 = 2112;
      v44 = a5;
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
        v40 = v36;
        v41 = 2112;
        v42 = a3;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "We already have identifier (%@) for messageGUID (%@)", buf, 0x16u);
      }
    }

    v29 = self->_pendingCancelScheduledMessageGUIDs;
    v38[0] = a3;
    v38[1] = [NSNumber numberWithUnsignedInteger:a6];
    v30 = [NSArray arrayWithObjects:v38 count:2];
    [(NSMutableDictionary *)v29 setObject:v30 forKey:v36];
  }

  else if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = a3;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Failed to get identifier from IDS for cancel scheduled message with GUID: %@", buf, 0xCu);
    }
  }
}

- (id)_fallbackMessageItemFromLinkMetadata:(id)a3 originalMessageItem:(id)a4
{
  v6 = [[NSAttributedString alloc] initWithString:{objc_msgSend(objc_msgSend(a3, "URL"), "absoluteString")}];
  v7 = [v6 __im_attributedStringByAssigningMessagePartNumbers];
  v8 = objc_alloc_init(LPMessagesPayload);
  [v8 setMetadata:a3];
  v12 = 0;
  [v8 dataRepresentationWithOutOfLineAttachments:&v12];
  v9 = IMSharedHelperCombinedPluginPayloadDictionaryData();
  v10 = [[IMMessageItem alloc] initWithSender:objc_msgSend(a4 time:"sender") body:objc_msgSend(a4 attributes:"time") fileTransferGUIDs:v7 flags:0 error:0 guid:objc_msgSend(a4 threadIdentifier:{"flags"), 0, objc_msgSend(a4, "guid"), 0}];
  [v10 setBalloonBundleID:IMBalloonPluginIdentifierRichLinks];
  [v10 setPayloadData:v9];

  return v10;
}

- (id)_fallbackMessageItemForTranslationsWithOriginalMessageItem:(id)a3
{
  v3 = a3;
  v4 = [a3 messageSummaryInfo];
  v5 = [v4 objectForKeyedSubscript:IMMessageSummaryInfoTranslatedMessageParts];
  if (v5)
  {
    v41 = 0;
    v6 = +[NSKeyedUnarchiver unarchivedObjectOfClasses:fromData:error:](NSKeyedUnarchiver, "unarchivedObjectOfClasses:fromData:error:", +[IMMessageItem translationMessagePartClasses], v5, &v41);
    if (v6)
    {
      v7 = v6;
      v8 = [v3 body];
      v9 = [v8 mutableCopy];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
      v31 = v3;
      if (v35)
      {
        v10 = *v38;
        v11 = &MessageDictionaryNicknameIgnoredListVersionKey_ptr;
        v32 = *v38;
        v33 = v8;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            v14 = [v13 integerValue];
            v15 = [v7 objectForKeyedSubscript:v13];
            if ([v15 count])
            {
              v16 = [v8 __im_messagePartMatchingPartIndex:v14];
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
                  v24 = [v19 __im_messageTextByReplacingMessagePartIndex:v14 withNewPartText:v23];

                  v9 = [v24 mutableCopy];
                  v11 = v20;
                  v10 = v32;
                  v8 = v33;
                }

                else
                {
                  v25 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v43 = v14;
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
                  v43 = v14;
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

  return v3;
}

- (id)_fallbackMessageItemForRequiredRegPropertiesTextMessage:(id)a3
{
  [a3 payloadData];
  result = IMBalloonPluginFallbackText();
  if (result)
  {
    v5 = [[IMMessageItem alloc] initWithSender:objc_msgSend(a3 time:"sender") body:objc_msgSend(a3 attributes:"time") fileTransferGUIDs:objc_msgSend([NSAttributedString alloc] flags:"initWithString:" error:result) guid:0 threadIdentifier:{0, objc_msgSend(a3, "flags"), 0, +[NSString stringGUID](NSString, "stringGUID"), 0}];

    return v5;
  }

  return result;
}

- (id)_fallbackMessageItemByConvertingGenmojiToUnknownEmojiCharacterInOriginalMessageItem:(id)a3
{
  v3 = a3;
  v5 = [a3 body];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 copyWithFlags:{objc_msgSend(v3, "flags")}];
    [v7 _setMessageID:{objc_msgSend(v3, "messageID")}];
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
    v10 = [objc_msgSend(v3 "fileTransferGUIDs")];
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

    v3 = v7;
    _Block_object_dispose(&v25, 8);
  }

  return v3;
}

- (id)_nonAdaptiveFileTransferForAdaptiveImageFileTransfer:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = -[MessageDeliveryController _copyGenmojiHEICFileToTemporaryDirectory:](self, "_copyGenmojiHEICFileToTemporaryDirectory:", [a3 localPath]);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 lastPathComponent];
      v7 = [v3 totalBytes];
      v8 = [v3 hfsType];
      v9 = [v3 hfsCreator];
      v10 = [v3 hfsFlags];
      v11 = +[IMDFileTransferCenter sharedInstance];
      v3 = [(IMDFileTransferCenter *)v11 transferForGUID:[(IMDFileTransferCenter *)v11 guidForNewOutgoingTransferWithFilename:v6 isDirectory:0 totalBytes:v7 hfsType:v8 hfsCreator:v9 hfsFlags:v10]];
      [v3 _setLocalPath:v5];
      [v3 setIsTemporaryBackwardCompatibilityAsset:1];
      [v3 setIsGenmojiFallback:1];
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

  return v3;
}

- (id)_copyGenmojiHEICFileToTemporaryDirectory:(id)a3
{
  v4 = [a3 lastPathComponent];
  if (!v4)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_BCE84();
    }

    return 0;
  }

  v15 = v4;
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
  if (![(NSFileManager *)v6 copyItemAtPath:a3 toPath:v5 error:buf])
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

- (void)_addIdentifierToPendingTimestampUpdateMap:(id)a3 alternateCallbackId:(id)a4
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_pendingTimestampUpdate setObject:a3 forKey:a4];
  }
}

- (id)backwardCompatibilityPrefixForLanguageCode:(id)a3
{
  sub_BD704();
  v4 = a3;
  sub_BD6F4();
  sub_BD8B4();
  sub_BD6E4();

  v5 = sub_BD884();

  return v5;
}

@end