void sub_39140(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Succesfully blackholed message: %@", &v16, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = v15;
      v18 = 1024;
      v19 = a5;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "** Failed to blackhole message: (%@) with error: %d", &v16, 0x12u);
    }
  }
}

void sub_392BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[IMDMessageStore sharedInstance];
        v10 = [v9 messageWithGUID:v8];

        v11 = [*(a1 + 32) broadcasterForChatListeners];
        v12 = [*(a1 + 40) accountID];
        [v11 account:v12 chat:0 style:0 messageUpdated:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_39420(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 32);
        v15 = 67109378;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Finished sending attachment download error: %d  to token: %@", &v15, 0x12u);
      }

LABEL_9:
    }
  }

  else if (v9)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 32);
      v15 = 67109378;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "** Failed sending attachment download error: %d  to token: %@", &v15, 0x12u);
    }

    goto LABEL_9;
  }
}

void sub_395A4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[IMDChatRegistry sharedInstance];
  v5 = [v4 allExistingSupportedServiceChatsWithIdentifier:v3 style:a2];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v3;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Checking if chats with chatIdentifier %@ and style %hhu need to have shouldForceToSMS updated to NO.", buf, 0x12u);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) updateShouldForceToSMS:{0, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_39758(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = im_checkpointIDSService();
    v4 = *(a1 + 32);
    v5 = *(a1 + 232);
    im_sendMessageCheckpointIfNecessary();
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v114 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "*** Not all messages successfully stored in database. Not sending IMMessageCheckpointLocationMessageStored checkpoint. guid %@", buf, 0xCu);
    }
  }

  if (*(a1 + 233) == 1 && (*(a1 + 234) & 1) == 0 && *(a1 + 235) == 1)
  {
    [*(a1 + 40) _handleMessageSentToSelf:*(a1 + 48) chatIdentifier:*(a1 + 56) style:*(a1 + 236) isLocal:0 account:*(a1 + 64)];
  }

  if (([*(a1 + 48) isTypingMessage] & 1) == 0)
  {
    v8 = +[IMMetricsCollector sharedInstance];
    [v8 trackEvent:IMMetricsCollectorEventiMessageReceived];
  }

  v121 = IMMetricsCollectorError;
  v9 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", sub_904FC([*(a1 + 48) errorCode]));
  v122 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];

  v11 = +[IMMetricsCollector sharedInstance];
  [v11 trackEvent:IMMetricsCollectorEventIncomingMessage withDictionary:v10];

  if (*(a1 + 72) && [*(a1 + 40) _convergesDisplayNames])
  {
    [*(a1 + 40) didReceiveDisplayNameChange:*(a1 + 72) fromID:*(a1 + 80) toIdentifier:*(a1 + 88) forChat:*(a1 + 56) style:*(a1 + 236) account:*(a1 + 64)];
  }

  v12 = [*(a1 + 48) fileTransferGUIDs];
  v13 = [v12 count] != 0;

  v14 = [*(a1 + 48) sender];
  IsEmail = IMStringIsEmail();

  v119[0] = IMMetricsCollectorFzErrorKey;
  v16 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 48) errorCode]);
  v120[0] = v16;
  v119[1] = IMMetricsCollectorMessageErrorKey;
  v17 = [NSNumber numberWithLong:0];
  v120[1] = v17;
  v119[2] = IMMetricsCollectorIsTypingIndicatorKey;
  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 96) isTypingMessage]);
  v120[2] = v18;
  v119[3] = IMMetricsCollectorIsGroupMessageKey;
  v19 = [NSNumber numberWithBool:*(a1 + 234)];
  v120[3] = v19;
  v119[4] = IMMetricsCollectorIsFromPhoneNumberKey;
  v20 = [NSNumber numberWithBool:IsEmail ^ 1];
  v120[4] = v20;
  v119[5] = IMMetricsCollectorIsFromEmailKey;
  v21 = [NSNumber numberWithInt:IsEmail];
  v120[5] = v21;
  v119[6] = IMMetricsCollectorHasAttachmentsKey;
  v22 = [NSNumber numberWithBool:v13];
  v120[6] = v22;
  v112 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:7];

  v23 = +[IMMetricsCollector sharedInstance];
  [v23 trackEvent:IMMetricsCollectorEventIMessageReceivedMessageSingleComponent withDictionary:v112];

  if ((*(a1 + 237) & 1) == 0)
  {
    if (!*(*(*(a1 + 216) + 8) + 40))
    {
      goto LABEL_23;
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 104);
        v26 = *(*(*(a1 + 216) + 8) + 40);
        *buf = 138412546;
        v114 = v25;
        v115 = 2112;
        v116 = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Updating last active device to be %@ for chat %@ on incoming message", buf, 0x16u);
      }
    }

    v27 = [*(a1 + 40) deliveryController];
    v28 = *(a1 + 104);
    v29 = [*(a1 + 112) _stripFZIDPrefix];
    [v27 updateLatestActiveDestination:v28 ForHandle:v29 incomingType:0];

    if (!*(*(*(a1 + 216) + 8) + 40))
    {
LABEL_23:
      v30 = *(a1 + 40);
      v31 = [*(a1 + 112) _stripFZIDPrefix];
      v32 = [v30 chatForChatIdentifier:v31 style:45];

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1 + 104);
          *buf = 138412546;
          v114 = v34;
          v115 = 2112;
          v116 = v32;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Updating last active device to be %@ for chat %@ on new incoming message", buf, 0x16u);
        }
      }

      v35 = [*(a1 + 40) deliveryController];
      v36 = *(a1 + 104);
      v37 = [*(a1 + 112) _stripFZIDPrefix];
      [v35 updateLatestActiveDestination:v36 ForHandle:v37 incomingType:0];

      if ([*(a1 + 120) count] > 2)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = [*(a1 + 48) guid];
            *buf = 138412290;
            v114 = v39;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Not updating last addressed handle for msg guid %@ as we couldnt find a group for it", buf, 0xCu);
          }
        }
      }

      else
      {
        _UpdateLastAddressedHandle(*(a1 + 96), *(a1 + 88), v32);
      }
    }
  }

  v40 = +[IMDRecentsController sharedInstance];
  [v40 noteRecentMessageFromChatID:*(a1 + 56)];

  if (!*(*(*(a1 + 216) + 8) + 40))
  {
    v41 = +[IMDChatRegistry sharedInstance];
    v42 = [v41 existingChatWithIdentifier:*(a1 + 56) account:*(a1 + 64)];
    v43 = *(*(a1 + 216) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = *(a1 + 56);
        v47 = *(*(*(a1 + 216) + 8) + 40);
        *buf = 138412546;
        v114 = v46;
        v115 = 2112;
        v116 = v47;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Failed to find or create chat with identifier %@, chat registry lookup found %@", buf, 0x16u);
      }
    }
  }

  v48 = *(*(a1 + 224) + 8);
  v49 = *(v48 + 40);
  *(v48 + 40) = 0;

  if (+[IMSpamFilterHelper isInternationalSpamFilteringEnabled](IMSpamFilterHelper, "isInternationalSpamFilteringEnabled") && ([*(a1 + 48) isTypingMessage] & 1) == 0)
  {
    if ([*(*(*(a1 + 216) + 8) + 40) smsHandshakeState] == 1)
    {
      v50 = +[IMMetricsCollector sharedInstance];
      [v50 trackSpamEvent:4];

      [*(*(*(a1 + 216) + 8) + 40) updateSMSHandshakeState:2];
      v51 = +[IMDChatRegistry sharedInstance];
      v52 = [*(*(*(a1 + 216) + 8) + 40) chatIdentifier];
      v53 = [v51 existingSMSChatForID:v52 withChatStyle:{objc_msgSend(*(*(*(a1 + 216) + 8) + 40), "style")}];

      if (v53)
      {
        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "Updating sibling chat handshake state to IMChatSMSHandshakeStateSuccess", buf, 2u);
          }
        }

        [v53 updateSMSHandshakeState:2];
      }
    }

    if ([*(*(*(a1 + 216) + 8) + 40) messageHandshakeState] == 1)
    {
      v55 = +[IMMetricsCollector sharedInstance];
      [v55 trackSpamEvent:3];

      [*(*(*(a1 + 216) + 8) + 40) updateMessageHandshakeState:2];
    }
  }

  if (*(*(*(a1 + 216) + 8) + 40))
  {
    v56 = [*(a1 + 64) service];
    v57 = [v56 internalName];
    [*(a1 + 96) setService:v57];

    v58 = [*(a1 + 128) _stringForKey:MessageDictionaryNicknameParticipantTruncatedRIDKey];
    if (v58)
    {
      v59 = v58;
    }

    else
    {
      v59 = &stru_115E20;
    }

    if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = *(a1 + 112);
        *buf = 138412546;
        v114 = v59;
        v115 = 2112;
        v116 = v61;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "Received truncated record id %@ from %@", buf, 0x16u);
      }
    }

    v62 = +[IMDNicknameController sharedInstance];
    [v62 verifyTruncatedRecordIDMatchesPersonalNickname:v59 forChat:*(*(*(a1 + 216) + 8) + 40)];

    if (*(*(*(a1 + 216) + 8) + 40) && (*(a1 + 237) & 1) == 0)
    {
      if (*(a1 + 136))
      {
        v63 = [*(a1 + 112) _stripFZIDPrefix];
        v64 = [*(a1 + 144) _stripFZIDPrefix];
        v65 = [*(a1 + 48) time];
        if (IMOSLoggingEnabled())
        {
          v66 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = *(a1 + 136);
            *buf = 138412802;
            v114 = v67;
            v115 = 2112;
            v116 = v63;
            v117 = 2112;
            v118 = v64;
            _os_log_impl(&dword_0, v66, OS_LOG_TYPE_INFO, "Received availabilityOffGridRecipientEncryptionValidationToken = %@ from %@ to %@", buf, 0x20u);
          }
        }

        v68 = +[IMDOffGridAvailabilityVerificationManager sharedInstance];
        [v68 verifyOffGridSubscriptionMatchesSubscriptionValidationToken:*(a1 + 152) encryptionValidationToken:*(a1 + 136) receivedByHandleID:v64 fromHandleID:v63 messageDate:v65];
      }

      else if (IMOSLoggingEnabled())
      {
        v69 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = *(a1 + 112);
          *buf = 138412290;
          v114 = v70;
          _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "Message from %@ did not contain availabilityOffGridRecipientEncryptionValidationToken. Not performing validation.", buf, 0xCu);
        }
      }

      if (*(a1 + 160))
      {
        v71 = [*(a1 + 112) _stripFZIDPrefix];
        v72 = [*(a1 + 144) _stripFZIDPrefix];
        v73 = [*(a1 + 48) time];
        if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = *(a1 + 160);
            *buf = 138412802;
            v114 = v75;
            v115 = 2112;
            v116 = v71;
            v117 = 2112;
            v118 = v72;
            _os_log_impl(&dword_0, v74, OS_LOG_TYPE_INFO, "Received availabilityVerificationRecipientChannelID = %@ from %@ to %@", buf, 0x20u);
          }
        }

        v76 = +[IMDAvailabilityVerificationManager sharedInstance];
        [v76 verifyPersonalSubscriptionMatchesSubscriptionValidationToken:*(a1 + 160) encryptionValidationToken:*(a1 + 168) receivedByHandleID:v72 fromHandleID:v71 messageDate:v73];
      }

      else if (IMOSLoggingEnabled())
      {
        v77 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = *(a1 + 112);
          *buf = 138412290;
          v114 = v78;
          _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "Message from %@ did not contain an availabilityVerificationRecipientChannelID. Not performing validation.", buf, 0xCu);
        }
      }
    }
  }

  [*(a1 + 40) _autoReportChatAsUnknown:*(*(*(a1 + 216) + 8) + 40) chatIsNew:*(a1 + 238)];
  v79 = *(a1 + 40);
  v80 = [*(a1 + 64) idsAccount];
  v81 = [v79 _pushHandlerForIDSAccount:v80];

  if (a2)
  {
    if (*(a1 + 239) == 1 && (*(a1 + 240) & 1) != 0)
    {
      v82 = 0;
    }

    else
    {
      v82 = [*(a1 + 176) BOOLValue];
    }

    if (*(a1 + 241) == 1)
    {
      v83 = [NSNumber numberWithInt:503];
    }

    else
    {
      v83 = 0;
    }

    v84 = *(a1 + 184);
    v85 = *(a1 + 192);
    v86 = *(a1 + 40);
    v87 = [*(a1 + 48) guid];
    LODWORD(v84) = [v86 _sendCertifiedDeliveryReceiptIfPossible:v84 messageContext:v85 guid:v87 messageWasStored:1 needsDeliveryReceipt:v82 failureReason:v83];

    if (v84)
    {
      if (*(a1 + 242) != 1 || *(a1 + 243) != 1)
      {
        goto LABEL_99;
      }

      v88 = +[NSDate __im_dateWithCurrentServerTime];
      [v88 timeIntervalSince1970];
      v90 = v89;

      v91 = [IDSServiceMetricContext alloc];
      v92 = [NSNumber numberWithDouble:v90];
      v93 = [v91 initWithTimestamp:v92 identifier:0];

      [*(a1 + 184) noteMetricOfType:0 context:v93];
    }

    else
    {
      v93 = [v81 account];
      if (!v93)
      {
        v94 = [*(a1 + 40) replicationAccount];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v96 = [*(a1 + 40) replicationAccount];
          v93 = [v96 idsAccount];
        }

        else
        {
          v93 = 0;
        }
      }

      v98 = *(a1 + 32);
      v97 = *(a1 + 40);
      v99 = *(a1 + 104);
      v100 = [NSNumber numberWithBool:v82];
      [v97 sendDeliveryReceiptForMessageID:v98 toID:v99 deliveryContext:0 needsDeliveryReceipt:v100 callerID:*(a1 + 88) account:v93];
    }

LABEL_99:
  }

  if (([*(a1 + 48) isTypingMessage] & 1) == 0)
  {
    [v81 sendManualAckForMessageWithContext:*(a1 + 192)];
    if (([*(a1 + 48) isFromMe] & 1) == 0)
    {
      v101 = +[IMMessageNotificationTimeManager sharedInstance];
      [v101 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:*(a1 + 56)];
    }

    v102 = +[IMMessageNotificationTimeManager sharedInstance];
    [v102 tearDownSessionForChatIdentifier:*(a1 + 56)];
  }

  v103 = +[IMPowerLog sharedInstance];
  v104 = [*(a1 + 48) guid];
  v105 = [*(a1 + 112) _stripFZIDPrefix];
  v106 = [*(a1 + 88) _stripFZIDPrefix];
  v107 = [*(*(*(a1 + 216) + 8) + 40) powerLogConversationType];
  v108 = [*(a1 + 48) powerLogMessageType];
  v109 = [*(a1 + 48) service];
  [v103 logMessageReceivedWithGUID:v104 fromIdentifier:v105 toIdentifier:v106 conversationType:v107 messageType:v108 messageProtocol:v109];

  v110 = *(a1 + 208);
  if (v110)
  {
    if (*(a1 + 242) == 1)
    {
      [*(a1 + 40) noteItemProcessed:*(a1 + 243) batchContext:*(a1 + 200) usingService:*(a1 + 184)];
      v110 = *(a1 + 208);
    }

    (*(v110 + 16))();
  }
}

void sub_3A874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134218242;
      v11 = [v5 length];
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Setting payload to length: %lu with attachments: %@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
  v8 = [*(a1 + 32) fileTransferGUIDs];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    [*(a1 + 32) addTelemetryMetricForKey:6];
  }
}

void sub_3A9D4(uint64_t a1, void *a2, void *a3, char a4, int a5, void *a6, uint64_t a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_3AD44;
  v42[3] = &unk_112318;
  v19 = *(a1 + 56);
  v20 = v15;
  v43 = v20;
  v21 = v16;
  v44 = v21;
  v52 = a4;
  v51 = a5;
  v22 = v17;
  v45 = v22;
  v50 = a7;
  v23 = v18;
  v46 = v23;
  v49 = *(a1 + 64);
  v53 = *(a1 + 72);
  v39 = *(a1 + 32);
  v24 = *(&v39 + 1);
  *&v25 = *(a1 + 48);
  *(&v25 + 1) = v19;
  v47 = v39;
  v48 = v25;
  v26 = objc_retainBlock(v42);
  v27 = [v20 balloonBundleID];
  v28 = IMBalloonExtensionIDWithSuffix();
  LODWORD(v16) = [v27 isEqualToString:v28];

  if (v16)
  {
    if ([v20 isFromMe])
    {
      v29 = [v20 service];
      v30 = [IMSenderContext fromMeContextWithServiceName:v29];
    }

    else
    {
      v31 = +[IMDChatRegistry sharedInstance];
      v32 = [v20 sender];
      v33 = [v31 hasKnownSenderChatWithChatIdentifier:v32];

      v29 = [v20 service];
      v34 = [IMSenderContext contextWithKnownSender:v33 serviceName:v29];
    }

    v35 = +[MessageTranscodeController sharedInstance];
    v36 = [v20 guid];
    v37 = [v20 payloadData];
    v38 = [v20 balloonBundleID];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_3ADE0;
    v40[3] = &unk_112340;
    v41 = v26;
    [v35 generateSnapshotForMessageGUID:v36 payloadData:v37 balloonBundleID:v38 senderContext:0 completionBlock:v40];
  }

  else
  {
    (v26[2])(v26);
  }
}

uint64_t sub_3AD44(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40), *(a1 + 116), *(a1 + 112), *(a1 + 48), *(a1 + 104), *(a1 + 56), *(a1 + 96));
  }

  if (*(a1 + 117) == 1)
  {
    [*(a1 + 64) noteItemProcessed:*(a1 + 118) batchContext:*(a1 + 72) usingService:*(a1 + 80)];
  }

  v4 = *(*(a1 + 96) + 16);

  return v4();
}

void sub_3B004(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[IMDFileTransferCenter sharedInstance];
  v9 = [v6 transferForGUID:v5];

  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v9 setAttributionInfo:v8];
  }
}

void sub_3BE98(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting mark as unread to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect mark unread to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_3C3B4(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting recover junk chat to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect recover junk chat to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_3C8D0(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting accept chat to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect accept chat to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_3CF78(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting mark as reviewed to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect mark as reviewed to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_3D494(id a1, MessageDeliveryController *a2, NSArray *a3, BOOL a4, unsigned int a5, BOOL a6)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v12 = "Completed reflecting junk chat to peer devices.";
        v13 = &v15;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v12 = "Failed to reflect junk chat to peer devices.";
      v13 = &v14;
      goto LABEL_8;
    }

LABEL_9:
  }
}

BOOL sub_3DE30(void *a1)
{
  v1 = a1;
  v2 = [v1 _stripFZIDPrefix];
  CMFItemFromString = CreateCMFItemFromString();
  IsItemBlocked = CMFBlockListIsItemBlocked();
  if (CMFItemFromString)
  {
    CFRelease(CMFItemFromString);
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (IsItemBlocked)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v1;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "filtering message for handle: %@ = %@", &v8, 0x16u);
    }
  }

  return IsItemBlocked != 0;
}

void sub_3DF68(uint64_t a1)
{
  v8 = [*(a1 + 32) copy];
  [v8 setSender:*(a1 + 40)];
  v2 = +[NSString stringGUID];
  [v8 setGuid:v2];

  [v8 setFlags:1];
  if ((*(a1 + 64) & 1) == 0)
  {
    [v8 setFlags:{objc_msgSend(v8, "flags") | 0x2000}];
  }

  [*(a1 + 48) didReceiveMessage:v8 forChat:*(a1 + 40) style:*(a1 + 65) account:*(a1 + 56) fromIDSID:0];
  if (*(a1 + 65) == 45)
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) guid];
    v5 = +[NSDate date];
    [v3 didReceiveMessageDeliveryReceiptForMessageID:v4 date:v5 account:*(a1 + 56)];

    if (*(a1 + 65) == 45 && *(a1 + 66) == 1 && *(a1 + 64) == 1)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) guid];
      [v6 didSendMessageReadReceiptForMessageID:v7 account:*(a1 + 56)];
    }
  }
}

void sub_3E97C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  v9 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Executing NOOP command handler for local command: %@", &v12, 0xCu);
  }

  v11 = [v8 service];

  [v11 sendAckForMessageWithContext:v7];
}

void sub_4074C(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 stringValue];
  }

  v5 = IMCreateEscapedAttributeValueFromString();
  v6 = IMCreateEscapedAttributeValueFromString();
  if (v5 && v6)
  {
    [*(*(a1 + 32) + 8) appendFormat:@" %@=%@", v5, v6];
    [*(*(a1 + 32) + 24) appendFormat:@" %@=%@", v5, v6];
  }
}

void sub_40830(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 stringValue];
  }

  v5 = IMCreateEscapedAttributeValueFromString();
  v6 = IMCreateEscapedAttributeValueFromString();
  v7 = IMStickerUserInfoStickerTranscodedStickerHashKey;
  if (([v5 isEqualToString:IMStickerUserInfoStickerTranscodedStickerHashKey] & 1) != 0 || (v8 = IMStickerUserInfoTranscodedScaleKey, objc_msgSend(v5, "isEqualToString:", IMStickerUserInfoTranscodedScaleKey)))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Not adding transcoded hash or scale key", buf, 2u);
      }
    }
  }

  else
  {
    if ([v5 isEqualToString:IMStickerUserInfoStickerHashKey] && objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKey:", v7), "length"))
    {

      v6 = [objc_msgSend(*(a1 + 32) objectForKey:{v7), "copy"}];
    }

    if ([v5 isEqualToString:IMStickerUserInfoScaleKey] && objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKey:", v8), "length"))
    {

      v6 = [objc_msgSend(*(a1 + 32) objectForKey:{v8), "copy"}];
    }

    if (v5 && v6)
    {
      [*(*(a1 + 40) + 8) appendFormat:@" %@=%@", v5, v6];
      [*(*(a1 + 40) + 24) appendFormat:@" %@=%@", v5, v6];
    }
  }
}

void sub_40A28(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 stringValue];
  }

  v5 = IMCreateEscapedAttributeValueFromString();
  v6 = IMCreateEscapedAttributeValueFromString();
  v7 = v6;
  if (v5 && v6)
  {
    [*(*(a1 + 32) + 24) appendFormat:@" %@=%@", v5, v6];
  }
}

void sub_41120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  v9 = IMMessagePushHandlerLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Executing NOOP command handler for command: %@", &v12, 0xCu);
  }

  v11 = [v8 service];

  [v11 sendAckForMessageWithContext:v7];
}

uint64_t sub_420DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a3 + 16))(a3, *(result + 32), *(result + 36));
  }

  return result;
}

void sub_44280(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x43F4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_45EA4(uint64_t a1, int a2, void *a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) ID];
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Appending off grid status of %@ for handle ID %@ ", &v11, 0x16u);
    }
  }

  if (a2)
  {
    [*(a1 + 40) setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"sofg"}];
    if (a3)
    {
      v9 = [a3 __imHexString];
      if (v9)
      {
        CFDictionarySetValue(*(a1 + 40), @"sofgid", v9);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Missing identifier for this off grid status payload!", &v11, 2u);
      }
    }
  }
}

void sub_47EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *exc_buf, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x47A40);
  }

  _Unwind_Resume(a1);
}

void sub_480D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) guid];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Finished collaboration delivery request guid %@. error: %@", buf, 0x16u);
    }
  }

  if (a3)
  {
    v8 = *(a1 + 168);
    if (v8)
    {
      (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 48), 0, 4, [*(a1 + 32) backwardsCompatibleVersion], 0, 1);
    }
  }

  else
  {
    v9 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v60 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v10)
    {
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v14 = IMLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v55) = 138412290;
            *(&v55 + 4) = v13;
            _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "Entering dispatchGroup for participants %@", &v55, 0xCu);
          }

          dispatch_group_enter(v9);
        }

        v10 = [a2 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v10);
    }

    *&v55 = 0;
    *(&v55 + 1) = &v55;
    v56 = 0x2020000000;
    v57 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v15 = [a2 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v15)
    {
      v16 = *v47;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(a2);
          }

          v18 = *(*(&v46 + 1) + 8 * j);
          v19 = [a2 objectForKeyedSubscript:v18];
          [v19 setCollaborationInitiationRequestInfo:0];
          v20 = *(a1 + 40);
          v21 = *(a1 + 56);
          v22 = *(a1 + 64);
          v23 = *(a1 + 72);
          v24 = *(a1 + 80);
          v25 = *(a1 + 88);
          v26 = *(a1 + 96);
          v27 = *(a1 + 104);
          v28 = *(a1 + 112);
          v29 = *(a1 + 128);
          v30 = *(a1 + 136);
          v31 = *(a1 + 192);
          v32 = *(a1 + 144);
          v33 = *(a1 + 160);
          v35 = *(a1 + 176);
          v34 = *(a1 + 184);
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_48584;
          v45[3] = &unk_112CD8;
          v45[4] = *(a1 + 32);
          v45[5] = v18;
          v45[8] = buf;
          v45[6] = v9;
          v45[7] = &v55;
          LOBYTE(v38) = v31;
          [v20 _sendMessage:v19 context:v21 deliveryContext:v22 fromID:v23 fromAccount:v24 toID:v25 chatIdentifier:v26 toSessionToken:0 toGroup:v27 toParticipants:v18 originallyToParticipants:v28 requiredRegProperties:v29 interestingRegProperties:v30 requiresLackOfRegProperties:v38 canInlineAttachments:0 type:v32 msgPayloadUploadDictionary:v33 originalPayload:v34 replyToMessageGUID:v35 fallbackCount:v45 willSendBlock:? completionBlock:?];
        }

        v15 = [a2 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v15);
    }

    v36 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_48640;
    block[3] = &unk_112D00;
    v37 = *(a1 + 168);
    v40 = *(a1 + 32);
    v41 = *(a1 + 48);
    v42 = v37;
    v43 = buf;
    v44 = &v55;
    dispatch_group_notify(v9, v36, block);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_48534(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_48584(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v9 = *(*(a1 + 56) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = a7;
    }
  }

  if (a4)
  {
    v10 = *(a1 + 48);

    dispatch_group_leave(v10);
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BC6AC(a1, a5, v11);
    }

    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = 4;
    }

    *(*(*(a1 + 64) + 8) + 24) = v12;
    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_48640(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) guid];
      v4 = *(*(*(a1 + 64) + 8) + 24);
      v7 = 138412546;
      v8 = v3;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "All individual sends for collaboration complete for guid %@ error %u", &v7, 0x12u);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(*(a1 + 64) + 8) + 24);
    (*(v5 + 16))(v5, *(a1 + 40), *(a1 + 48), v6 == 0, v6, [*(a1 + 32) backwardsCompatibleVersion], *(*(*(a1 + 72) + 8) + 24), 1);
  }
}

void sub_48794(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if ([a2 scheduleType] != &dword_0 + 2)
  {
    v13 = a6;
    goto LABEL_6;
  }

  if (![objc_msgSend(a2 "editedPartIndexes")])
  {
    v12 = [objc_msgSend(a2 "retractedPartIndexes")] == 0;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v12 = 0;
  if (a5)
  {
LABEL_9:
    if (v12)
    {
      goto LABEL_16;
    }

    v14 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [a2 guid]);
    v13 = 3;
    if ([v14 scheduleType] != &dword_0 + 2)
    {
      goto LABEL_22;
    }

    v15 = [v14 scheduleState];
    v13 = v15 == &dword_0 + 2 ? a6 : 3;
    if (v15 != &dword_0 + 2)
    {
      goto LABEL_22;
    }

LABEL_6:
    if (a5)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_16:
  v13 = a6;
  if (a5)
  {
LABEL_17:
    if (([*(a1 + 32) isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v24 = a2;
        v25 = 2112;
        v26 = a3;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Finished processing attachments for message: %@  for display IDs: %@", buf, 0x16u);
      }
    }

    v17 = *(a1 + 88);
    v18 = *(a1 + 160);
    LOBYTE(v22) = *(a1 + 184);
    [*(a1 + 40) _sendMessage:a2 context:a4 deliveryContext:*(a1 + 48) fromID:*(a1 + 56) fromAccount:*(a1 + 64) toID:*(a1 + 72) chatIdentifier:*(a1 + 80) toSessionToken:0 toGroup:*(a1 + 88) toParticipants:*(a1 + 96) originallyToParticipants:*(a1 + 104) requiredRegProperties:*(a1 + 112) interestingRegProperties:*(a1 + 120) requiresLackOfRegProperties:*(a1 + 128) canInlineAttachments:v22 type:2 msgPayloadUploadDictionary:*(a1 + 136) originalPayload:*(a1 + 144) replyToMessageGUID:*(a1 + 152) fallbackCount:*(a1 + 176) willSendBlock:v18 completionBlock:*(a1 + 168)];
    return;
  }

LABEL_22:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = a2;
      v25 = 2112;
      v26 = a3;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Failed processing attachments for message: %@  for display IDs: %@", buf, 0x16u);
    }
  }

  v20 = *(a1 + 168);
  if (v20)
  {
    if (v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = 34;
    }

    (*(v20 + 16))(v20, *(a1 + 40), a3, 0, v21, [*(a1 + 32) backwardsCompatibleVersion], 0, 1);
  }
}

uint64_t sub_48A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (a4)
      {
        v17 = @"YES";
      }

      v19 = 138412546;
      v20 = v17;
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Got success %@ error %d", &v19, 0x12u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

void sub_48BB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ([a3 count])
  {
    v84 = a2;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 128) + 1;
        *buf = 138412546;
        v128 = a3;
        v129 = 2048;
        v130 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Couldn't send new features to these destinations: %@, [%lu] times we're in fallback", buf, 0x16u);
      }
    }

    v83 = [*(a1 + 32) sendAlternateLayoutAsText];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = [*(a1 + 32) fileTransferGUIDs];
    v7 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v7)
    {
      v87 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v90 = *v117;
      v91 = 0;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v117 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v116 + 1) + 8 * i)];
          v13 = [v12 isRecipeBasedSticker];
          v14 = [v12 isAutoloopVideo];
          v15 = [v12 isOpusAudioMessage];
          v16 = [v12 isAnimojiV2];
          if ([v12 isAdaptiveImageGlyph])
          {
            HIDWORD(v91) |= [objc_msgSend(+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"backwards-compat-enabled-adaptive-image-glyphs", "BOOLValue"}] ^ 1;
            v87 = 1;
          }

          if (([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] & 1) == 0)
          {
            HIDWORD(v91) |= [*(a1 + 40) _transferIsUserGeneratedOrEmojiSticker:v12];
          }

          v10 |= v13;
          v9 |= v14;
          v8 |= v15;
          LOBYTE(v91) = v16 | v91;
        }

        v7 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v7);
    }

    else
    {
      v91 = 0;
      v87 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v17 = [*(a1 + 32) associatedMessageType];
    if (v17 == &stru_798.nreloc + 2 || v17 == &stru_BA0.segname[14] || (v18 = [*(a1 + 32) associatedMessageType], v18 == &stru_BA0.segname[15]) || v18 == &stru_798.nreloc + 3)
    {
      HIDWORD(v91) |= [objc_msgSend(+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"backwards-compat-enabled-etap", "BOOLValue"}] ^ 1;
    }

    if (([objc_msgSend(*(a1 + 32) "balloonBundleID")] & 1) != 0 || objc_msgSend(*(a1 + 32), "associatedMessageType") == &stru_F58.reserved2)
    {
      [IDSServerBag sharedInstanceForBagType:1];
      HIDWORD(v91) |= IMSharedHelperCustomAcknowledgementBackwardsCompatibilityEnabled() ^ 1;
    }

    if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
    {
      v19 = [*(a1 + 32) messageSummaryInfo];
      v20 = [v19 objectForKey:IMMessageSummaryInfoTranslatedMessageParts] != 0;
    }

    else
    {
      v20 = 0;
    }

    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v21 = *(a1 + 48);
    v106 = *(a1 + 32);
    v22 = *(a1 + 64);
    v110 = v21;
    v111 = v22;
    v23 = *(a1 + 96);
    v112 = *(a1 + 80);
    v105[2] = sub_49A78;
    v105[3] = &unk_112DA0;
    v107 = a4;
    v108 = a3;
    v113 = v23;
    v24 = *(a1 + 120);
    v115 = *(a1 + 128);
    v109 = v84;
    v114 = v24;
    v25 = IMBalloonExtensionIDWithSuffix();
    v26 = [NSSet setWithObjects:v25, IMBalloonExtensionIDWithSuffix(), 0];
    if ([*(a1 + 32) balloonBundleID] && !*(a1 + 112))
    {
      if (v10 & 1 | (((-[NSSet containsObject:](v26, "containsObject:", [*(a1 + 32) balloonBundleID]) | v83) & 1) == 0) | (v9 | v8) & 1)
      {
        goto LABEL_32;
      }
    }

    else if ((v10 | v9 | v8))
    {
LABEL_32:
      v28 = *(a1 + 32);
      v27 = *(a1 + 40);
      v30 = *(a1 + 48);
      v29 = *(a1 + 56);
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v33 = *(a1 + 80);
      v34 = *(a1 + 88);
      v35 = *(a1 + 96);
      v36 = *(a1 + 104);
      v37 = *(a1 + 128) + 1;
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_4A130;
      v104[3] = &unk_112DC8;
      v104[4] = *(a1 + 120);
      v104[5] = v105;
      LOBYTE(v82) = 0;
      [v27 _sendMessage:v28 context:v29 deliveryContext:v31 fromID:v30 fromAccount:v32 toID:0 chatIdentifier:v33 toSessionToken:0 toGroup:0 toParticipants:a3 originallyToParticipants:v34 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v82 type:3 msgPayloadUploadDictionary:0 originalPayload:v35 replyToMessageGUID:v36 fallbackCount:v37 willSendBlock:0 completionBlock:v104];
      goto LABEL_91;
    }

    if ((v91 & 0x100000000) == 0)
    {
      if (v83)
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Sending fallback text message for required capabilities", buf, 2u);
          }
        }

        v39 = [*(a1 + 40) _fallbackMessageItemForRequiredRegPropertiesTextMessage:*(a1 + 32)];
        [v39 setDestinationCallerID:{objc_msgSend(*(a1 + 48), "_stripFZIDPrefix")}];
        goto LABEL_89;
      }

      if ([objc_msgSend(*(a1 + 32) "balloonBundleID")])
      {
        v40 = IMExtensionPayloadUnarchivingClasses();
        v103 = 0;
        v41 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objc_msgSend(*(a1 + 32) error:{"payloadData"), &v103}];
        v39 = [v41 decodeObjectOfClasses:v40 forKey:NSKeyedArchiveRootObjectKey];
        if (v103)
        {
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v128 = v103;
              _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Failed to unarchive attributionInfo. Error: %@", buf, 0xCu);
            }
          }
        }

        if (v39)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_81;
          }

          v43 = [v39 objectForKey:IMExtensionPayloadAlternateTextKey];
          v44 = [v43 objectForKey:@"messageText"] == 0;
          v45 = [NSMutableAttributedString alloc];
          if (v44)
          {
            v46 = [v39 objectForKey:@"ldtext"];
          }

          else
          {
            v46 = [v43 objectForKey:@"messageText"];
          }

          v59 = [v45 initWithString:v46];
          v60 = [v43 objectForKey:@"breadcrumbText"];
          if (v60)
          {
            v124[0] = IMBreadcrumbTextMarkerAttributeName;
            v124[1] = IMBreadcrumbTextOptionFlags;
            v125[0] = v60;
            v125[1] = &off_119398;
            v61 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:2];
            v62 = [NSAttributedString alloc];
            v63 = [v62 initWithString:IMBreadcrumbCharacterString attributes:v61];
            [v59 appendAttributedString:v63];
          }

          if (v59)
          {
            v39 = [[IMMessageItem alloc] initWithSender:objc_msgSend(*(a1 + 32) time:"sender") body:objc_msgSend(*(a1 + 32) attributes:"time") fileTransferGUIDs:v59 flags:0 error:0 guid:objc_msgSend(*(a1 + 32) threadIdentifier:{"flags"), 0, objc_msgSend(*(a1 + 32), "guid"), 0}];

            if (IMOSLoggingEnabled())
            {
              v64 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = [v39 guid];
                *buf = 138412290;
                v128 = v65;
                _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "Sending activity sharing fallback message msg guid %@", buf, 0xCu);
              }
            }
          }

          else
          {
LABEL_81:
            v39 = 0;
          }
        }

        goto LABEL_89;
      }

      if ((v91 & 1) == 0)
      {
        if (v87)
        {
          v55 = [*(a1 + 40) _fallbackMessageItemByConvertingGenmojiToUnknownEmojiCharacterInOriginalMessageItem:*(a1 + 32)];
        }

        else
        {
          if ([objc_msgSend(*(a1 + 32) "balloonBundleID")])
          {
            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v57 = [*(a1 + 32) balloonBundleID];
                *buf = 138412546;
                v128 = v57;
                v129 = 2112;
                v130 = a3;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "Not sending incompatible payload with balloon bundle ID %@ to destinations %@", buf, 0x16u);
              }
            }

            goto LABEL_91;
          }

          if (*(a1 + 112))
          {
            if (IMOSLoggingEnabled())
            {
              v58 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Sending fallback message using linkMetadata", buf, 2u);
              }
            }

            v55 = [*(a1 + 40) _fallbackMessageItemFromLinkMetadata:*(a1 + 112) originalMessageItem:*(a1 + 32)];
          }

          else
          {
            if (!v20)
            {
              v39 = [*(a1 + 32) copyForBackwardsCompatibility];
              if ([objc_msgSend(*(a1 + 32) "expressiveSendStyleID")])
              {
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                v78 = [*(a1 + 32) fileTransferGUIDs];
                v79 = [v78 countByEnumeratingWithState:&v95 objects:v122 count:16];
                if (v79)
                {
                  v80 = *v96;
                  do
                  {
                    for (j = 0; j != v79; j = j + 1)
                    {
                      if (*v96 != v80)
                      {
                        objc_enumerationMutation(v78);
                      }

                      [-[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter "sharedInstance")];
                    }

                    v79 = [v78 countByEnumeratingWithState:&v95 objects:v122 count:16];
                  }

                  while (v79);
                }
              }

              goto LABEL_89;
            }

            if (IMOSLoggingEnabled())
            {
              v66 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v66, OS_LOG_TYPE_INFO, "Sending fallback message for translation", buf, 2u);
              }
            }

            v55 = [*(a1 + 40) _fallbackMessageItemForTranslationsWithOriginalMessageItem:*(a1 + 32)];
          }
        }

        v39 = v55;
LABEL_89:
        if (v39)
        {
          v67 = *(a1 + 56);
          v68 = *(a1 + 64);
          v69 = *(a1 + 40);
          v70 = *(a1 + 48);
          v71 = *(a1 + 72);
          v72 = *(a1 + 80);
          v73 = *(a1 + 88);
          v74 = *(a1 + 96);
          v75 = *(a1 + 104);
          v76 = *(a1 + 128) + 1;
          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_4A29C;
          v92[3] = &unk_112DF0;
          v93 = v91 & 1;
          v94 = v87 & 1;
          v77 = *(a1 + 120);
          v92[4] = v39;
          v92[5] = v77;
          v92[6] = v105;
          LOBYTE(v82) = 0;
          [v69 _sendMessage:v39 context:v67 deliveryContext:v68 fromID:v70 fromAccount:v71 toID:0 chatIdentifier:v72 toSessionToken:0 toGroup:0 toParticipants:a3 originallyToParticipants:v73 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v82 type:1 msgPayloadUploadDictionary:0 originalPayload:v74 replyToMessageGUID:v75 fallbackCount:v76 willSendBlock:0 completionBlock:v92];
        }

        goto LABEL_91;
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v47 = [*(a1 + 32) fileTransferGUIDs];
      v48 = [v47 countByEnumeratingWithState:&v99 objects:v123 count:16];
      if (v48)
      {
        v39 = 0;
        v49 = *v100;
        v50 = IMFileTransferAVTranscodeOptionRemoveAlpha;
        do
        {
          for (k = 0; k != v48; k = k + 1)
          {
            if (*v100 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v52 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v99 + 1) + 8 * k)];
            if ([v52 isAnimojiV2])
            {
              if (IMOSLoggingEnabled())
              {
                v53 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "Contains AnimojiV2. Setting RemoveAlpha transcoderUserInfo option", buf, 2u);
                }
              }

              v54 = [objc_msgSend(v52 "transcoderUserInfo")];
              [v54 setObject:&__kCFBooleanTrue forKeyedSubscript:v50];
              [v52 setTranscoderUserInfo:v54];

              v39 = *(a1 + 32);
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v99 objects:v123 count:16];
        }

        while (v48);
        goto LABEL_89;
      }
    }

LABEL_91:
    if (*(a1 + 128) == 5)
    {
      v120 = NSDebugDescriptionErrorKey;
      v121 = @"Repeatedly trying to send fallback message";
      [+[IMMetricsCollector sharedInstance](IMMetricsCollector forceAutoBugCaptureWithSubType:"forceAutoBugCaptureWithSubType:errorPayload:" errorPayload:@"MessageDeliveryControllerTooManyFallbacks", [NSError errorWithDomain:@"MessageDeliveryControllerTooManyFallbacks" code:43 userInfo:[NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1]]];
    }
  }
}

void sub_49A78(uint64_t a1)
{
  v2 = [*(a1 + 32) expressiveSendStyleID];
  if ([v2 length])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(a1 + 32) guid];
        *buf = 138412290;
        v34 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Calling expressive send style block for msg guid %@", buf, 0xCu);
      }
    }

    v5 = [*(a1 + 32) _localizedBackwardsCompatibleExpressiveSendText];
    v6 = [*(a1 + 40) _propertyForExpressiveSendStyle:v2];
    if (v6)
    {
      v7 = [*(a1 + 48) objectForKey:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 56);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
        *buf = 138412546;
        v34 = v10;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ Devices needing impact string before computation %@", buf, 0x16u);
      }
    }

    if ([*(a1 + 56) count])
    {
      if ([*(a1 + 64) count])
      {
        if ([v7 count])
        {
          v11 = [NSMutableSet setWithArray:v7];
          v12 = [NSMutableSet setWithArray:*(a1 + 64)];
          [(NSMutableSet *)v12 minusSet:v11];
          if ([(NSMutableSet *)v12 count])
          {
            v8 = [v8 arrayByAddingObjectsFromArray:{-[NSMutableSet allObjects](v12, "allObjects")}];
          }
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
        *buf = 138412546;
        v34 = v14;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%@ Devices needing impact string after computation %@", buf, 0x16u);
      }
    }

    if (v5 && [v8 count])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
          v17 = [*(a1 + 32) guid];
          *buf = 138412546;
          v34 = v16;
          v35 = 2112;
          v36 = v17;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Sending backwards compatible expressive send style to %@ skipped devices for msg guid %@", buf, 0x16u);
        }
      }

      v18 = [[IMMessageItem alloc] initWithSender:objc_msgSend(*(a1 + 32) time:"sender") body:objc_msgSend(*(a1 + 32) attributes:"time") fileTransferGUIDs:objc_msgSend([NSAttributedString alloc] flags:"initWithString:" error:v5) guid:0 threadIdentifier:{0, objc_msgSend(*(a1 + 32), "flags"), 0, +[NSString stringGUID](NSString, "stringGUID"), 0}];
      [v18 setDestinationCallerID:{objc_msgSend(*(a1 + 72), "_stripFZIDPrefix")}];
      v19 = *(a1 + 40);
      v20 = *(a1 + 80);
      v21 = *(a1 + 88);
      v22 = *(a1 + 72);
      v23 = *(a1 + 96);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      v26 = *(a1 + 120);
      v27 = *(a1 + 144) + 1;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_49FD8;
      v32[3] = &unk_112D78;
      v28 = *(a1 + 128);
      v32[4] = *(a1 + 136);
      LOBYTE(v31) = 0;
      [v19 _sendMessage:v18 context:v20 deliveryContext:v21 fromID:v22 fromAccount:v23 toID:0 chatIdentifier:v24 toSessionToken:0 toGroup:0 toParticipants:v8 originallyToParticipants:v25 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v31 type:1 msgPayloadUploadDictionary:0 originalPayload:v26 replyToMessageGUID:v28 fallbackCount:v27 willSendBlock:0 completionBlock:v32];
    }

    else if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [*(a1 + 32) guid];
        *buf = 138412546;
        v34 = v30;
        v35 = 2112;
        v36 = v2;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "No backwards compatibility string for msg %@ expressiveSendStyleID %@", buf, 0x16u);
      }
    }
  }
}

uint64_t sub_49FD8(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 32))
  {
    v7 = result;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (a4)
        {
          v9 = @"YES";
        }

        v10 = 138412546;
        v11 = v9;
        v12 = 1024;
        v13 = a5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got success %@ error %d in legacy MessageDelivery block (impact additional message)", &v10, 0x12u);
      }
    }

    return (*(*(v7 + 32) + 16))();
  }

  return result;
}

uint64_t sub_4A130(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 32))
  {
    v7 = result;
    v8 = *(result + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (a4)
        {
          v10 = @"YES";
        }

        v11 = 138412546;
        v12 = v10;
        v13 = 1024;
        v14 = a5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Got success %@ error %d in legacy MessageDelivery block", &v11, 0x12u);
      }
    }

    return (*(*(v7 + 32) + 16))();
  }

  return result;
}

id *sub_4A29C(id *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result;
  if (*(result + 56) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Cleaning up compatibility TranscoderUserInfo for animojiv2", buf, 2u);
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [v5[4] fileTransferGUIDs];
    result = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
    v8 = result;
    if (result)
    {
      v9 = *v33;
      v10 = IMFileTransferAVTranscodeOptionRemoveAlpha;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", *(*(&v32 + 1) + 8 * v11)];
          if ([v12 isAnimojiV2])
          {
            v13 = [v12 transcoderUserInfo];
            v14 = v13;
            if (v13)
            {
              if ([objc_msgSend(v13 objectForKeyedSubscript:{v10), "BOOLValue"}])
              {
                v15 = [v14 mutableCopy];
                [v15 setObject:0 forKeyedSubscript:v10];
                [v12 setTranscoderUserInfo:v15];

                -[IMDAttachmentStore storeAttachment:associateWithMessageWithGUID:](+[IMDAttachmentStore sharedInstance](IMDAttachmentStore, "sharedInstance"), "storeAttachment:associateWithMessageWithGUID:", v12, [v5[4] guid]);
              }
            }
          }

          v11 = (v11 + 1);
        }

        while (v8 != v11);
        result = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
        v8 = result;
      }

      while (result);
    }
  }

  if (*(v5 + 57) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Cleaning up compatibility file transfers for adaptive image glyphs", buf, 2u);
      }
    }

    v17 = [v5[4] fileTransferGUIDs];
    v18 = +[IMDAttachmentStore sharedInstance];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    result = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    v19 = result;
    if (result)
    {
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * v21);
          if ([-[IMDAttachmentStore attachmentWithGUID:](v18 attachmentWithGUID:{v22), "isTemporaryBackwardCompatibilityAsset"}])
          {
            [(IMDAttachmentStore *)v18 deleteAttachmentWithGUID:v22];
          }

          v21 = (v21 + 1);
        }

        while (v19 != v21);
        result = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
        v19 = result;
      }

      while (result);
    }
  }

  if (v5[5])
  {
    v23 = v5[6];
    if (v23)
    {
      v23[2]();
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = @"NO";
        if (a4)
        {
          v25 = @"YES";
        }

        *buf = 138412546;
        v37 = v25;
        v38 = 1024;
        v39 = a5;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Got success %@ error %d in legacy MessageDelivery block", buf, 0x12u);
      }
    }

    return (*(v5[5] + 2))();
  }

  return result;
}

void sub_4A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 104);
      v9 = @"YES";
      if (!*(*(*(a1 + 112) + 8) + 24))
      {
        v9 = @"NO";
      }

      *buf = 67109890;
      *v26 = a2;
      *&v26[4] = 2112;
      *&v26[6] = v7;
      *&v26[14] = 2112;
      *&v26[16] = v9;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "idsCompletionBlock returned with error: %d guid: %@ hasNotifiedClient: %@ block: %@", buf, 0x26u);
    }
  }

  if (*(a1 + 104))
  {
    v10 = [objc_msgSend(*(a1 + 40) "session")] ^ 1;
    if (!a2)
    {
      LOBYTE(v10) = 1;
    }

    if ((v10 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [NSNumber numberWithUnsignedInt:a2];
          v13 = *(a1 + 32);
          *buf = 138412546;
          *v26 = v12;
          *&v26[8] = 2112;
          *&v26[10] = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Got error %@ while replicating %@, suppressing", buf, 0x16u);
        }
      }

      a2 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = @"NO";
        if (*(*(*(a1 + 112) + 8) + 24))
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if (!a2)
        {
          v15 = @"YES";
        }

        *buf = 138412546;
        *v26 = v16;
        *&v26[8] = 2112;
        *&v26[10] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "hasNotifiedClient: %@ sendSuccess: %@ ", buf, 0x16u);
      }
    }

    if (a2 || (*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
    {
      if (a2)
      {
        v23 = NSLocalizedDescriptionKey;
        v24 = @"Failed to send message. Please check FZErrorType with the above error code";
        v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v18 = [NSError errorWithDomain:IMSafetyMonitorErrorDomain code:a2 userInfo:v17];
      }

      else
      {
        v18 = 0;
      }

      v19 = [*(a1 + 48) scheduleType] == &dword_0 + 1;
      v20 = +[IMSafetyMonitorCoordinator sharedCoordinator];
      v21 = *(a1 + 48);
      v22 = a2 == 0;
      if (v19)
      {
        [v20 informOfScheduledMessage:v21 sentSuccessfully:v22 error:v18];
      }

      else
      {
        [v20 informOfOutgoingMessageWithMessage:v21 sentSuccessfully:v22 error:v18];
      }

      if ([*(a1 + 48) scheduleType] == &dword_0 + 2)
      {
        [*(a1 + 40) handleScheduledMessageSend:*(a1 + 48) sentSuccessfully:a2 == 0 idsMessage:*(a1 + 56) messageDictionary:*(a1 + 64) canInlineAttachments:*(a1 + 120) msgPayloadUploadDictionary:*(a1 + 72) fromID:*(a1 + 80) fromAccount:*(a1 + 88) originalIDSIdentifier:*(a1 + 32)];
      }

      (*(*(a1 + 104) + 16))(*(a1 + 104), *(a1 + 40), *(a1 + 96), a2 == 0, a2, [*(a1 + 48) backwardsCompatibleVersion], *(*(*(a1 + 112) + 8) + 24), a3);
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }

    else
    {
      (*(*(a1 + 104) + 16))(*(a1 + 104), *(a1 + 40), *(a1 + 96), 1, 0, [*(a1 + 48) backwardsCompatibleVersion], *(*(*(a1 + 112) + 8) + 24), a3);
    }
  }
}

void sub_4AAC8(uint64_t a1, NSDictionary *a2, char a3)
{
  if (a3)
  {
LABEL_7:
    if (([*(a1 + 32) isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = a2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Finished uploading payload data for message. Resulting payloadDictionary %@", buf, 0xCu);
      }
    }

    v10 = *(a1 + 160);
    LOBYTE(v15) = *(a1 + 184);
    [*(a1 + 40) _sendMessage:*(a1 + 32) context:*(a1 + 48) deliveryContext:*(a1 + 56) fromID:*(a1 + 64) fromAccount:*(a1 + 72) toID:*(a1 + 80) chatIdentifier:*(a1 + 88) toSessionToken:0 toGroup:*(a1 + 96) toParticipants:*(a1 + 104) originallyToParticipants:*(a1 + 112) requiredRegProperties:*(a1 + 120) interestingRegProperties:*(a1 + 128) requiresLackOfRegProperties:*(a1 + 136) canInlineAttachments:v15 type:0 msgPayloadUploadDictionary:a2 originalPayload:*(a1 + 144) replyToMessageGUID:*(a1 + 152) fallbackCount:*(a1 + 176) willSendBlock:v10 completionBlock:*(a1 + 168)];
    return;
  }

  v5 = [*(a1 + 32) balloonBundleID];
  v6 = [v5 isEqualToString:IMBalloonPluginIdentifierRichLinks];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MessageDelivery. Did not upload rich link data. Still continuing", buf, 2u);
      }
    }

    a2 = +[NSDictionary dictionary];
    goto LABEL_7;
  }

  if (v7)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 112);
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MessageDelivery Failed processing payload data for message: %@  for display IDs: %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 168);
  if (v14)
  {
    (*(v14 + 16))(v14, *(a1 + 40), *(a1 + 112), 0, 1, [*(a1 + 32) backwardsCompatibleVersion], 0, 1);
  }
}

void sub_4AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  LODWORD(v6) = a6;
  v12 = IMOSLoggingEnabled();
  if (a5)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = a2;
        v20 = 2112;
        v21 = a3;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Finished processing fallback attachments for message: %@  for display IDs: %@", buf, 0x16u);
      }
    }

    v14 = *(a1 + 160);
    LOBYTE(v17) = *(a1 + 184);
    [*(a1 + 32) _sendMessage:a2 context:a4 deliveryContext:*(a1 + 40) fromID:*(a1 + 48) fromAccount:*(a1 + 56) toID:*(a1 + 64) chatIdentifier:*(a1 + 72) toSessionToken:0 toGroup:*(a1 + 80) toParticipants:*(a1 + 88) originallyToParticipants:*(a1 + 96) requiredRegProperties:*(a1 + 104) interestingRegProperties:*(a1 + 112) requiresLackOfRegProperties:*(a1 + 120) canInlineAttachments:v17 type:1 msgPayloadUploadDictionary:*(a1 + 128) originalPayload:*(a1 + 136) replyToMessageGUID:*(a1 + 144) fallbackCount:*(a1 + 176) willSendBlock:v14 completionBlock:*(a1 + 168)];
  }

  else
  {
    if (v12)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = a2;
        v20 = 2112;
        v21 = a3;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed processing attachments for message: %@  for display IDs: %@", buf, 0x16u);
      }
    }

    v16 = *(a1 + 168);
    if (v16)
    {
      if (v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = 34;
      }

      (*(v16 + 16))(v16, *(a1 + 32), a3, 0, v6, [*(a1 + 152) backwardsCompatibleVersion], 0, 1);
    }
  }
}

void sub_4B2A0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addFailedRetractPartIndex:a2];
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 32) historyForMessagePart:{a2), "firstObject"), "messagePartText"}];
  v5 = [v4 attribute:IMMessagePartAttributeName atIndex:0 effectiveRange:0];
  [*(a1 + 32) setBody:{objc_msgSend(objc_msgSend(*(a1 + 32), "body"), "__im_messageTextByAddingMessagePart:atIndex:", v4, objc_msgSend(v5, "intValue"))}];
  v6 = [[IMTranslatedMessagePart alloc] initWithDictionaryRepresentation:{objc_msgSend(objc_msgSend(*(a1 + 32), "translationsForMessagePart:", objc_msgSend(v5, "intValue")), "firstObject")}];
  [*(a1 + 32) addTranslation:v6 forMessagePart:{objc_msgSend(v5, "intValue")}];
}

id sub_4BC64(id *a1, uint64_t a2)
{
  v4 = [objc_msgSend(a1[4] historyForMessagePart:{a2), "firstObject"}];
  if ([v4 messagePartText])
  {
    v5 = [objc_msgSend(a1[5] _fileTransferGUIDsInMessageBody:{objc_msgSend(v4, "messagePartText")), "firstObject"}];
    if (v5)
    {
      [a1[6] addObject:v5];
    }
  }

  v6 = a1[4];

  return [v6 setHistory:0 forMessagePart:a2];
}

id sub_4BFF0(uint64_t a1, void *a2)
{
  result = [a2 length];
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

id sub_4C67C(uint64_t a1)
{
  v2 = [*(a1 + 32) _receivingDevicesForHandle:IMStripLoginID() skippedDestinations:*(a1 + 40)];
  v3 = *(a1 + 48);

  return [v3 unionSet:v2];
}

id sub_4CEB0(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) guid];
      *buf = 138412290;
      v51 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Queued block for msg: %@ released", buf, 0xCu);
    }
  }

  if (![*(a1 + 32) isAudioMessage] || !objc_msgSend(*(a1 + 32), "isFinished") || (v6 = +[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), v7 = objc_msgSend(*(a1 + 32), "fileTransferGUIDs"), objc_msgSend(v7, "count") != &dword_0 + 1))
  {
LABEL_22:
    v12 = 0;
    v13 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  v8 = -[IMDFileTransferCenter transferForGUID:](v6, "transferForGUID:", [v7 lastObject]);
  if (v8)
  {
    v9 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"md-max-pkcrypto-filesize-ios8"}];
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Server override for max public key crypto data size for iOS 8: %@", buf, 0xCu);
        }
      }

      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = &loc_C800;
    }

    v14 = [NSData dataWithContentsOfURL:[(NSSet *)v8 localURL]];
    v15 = [(NSData *)v14 length];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(NSData *)v14 length];
        v18 = @"NO";
        *buf = 134218498;
        v51 = v17;
        if (v15 < v11)
        {
          v18 = @"YES";
        }

        v52 = 2048;
        v53 = v11;
        v54 = 2112;
        v55 = v18;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Can we send this attachment inline based on size? %lu < %lu? %@", buf, 0x20u);
      }
    }

    if (v15 < v11)
    {
      v19 = [NSSet setWithObject:IDSRegistrationPropertySupportsInlineAttachments];
      v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsKeepReceipts];
      v13 = v42;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_4D428;
      v42[3] = &unk_112F98;
      v20 = *(a1 + 48);
      v43 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v44 = v20;
      v21 = *(a1 + 80);
      v45 = *(a1 + 64);
      v46 = v21;
      v47 = *(a1 + 96);
      v48 = *(a1 + 112);
      v49 = *(a1 + 136);
      v12 = 1;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0;
LABEL_23:
  v19 = 0;
LABEL_24:
  if ([*(a1 + 32) isTypingMessage])
  {
    if ([*(a1 + 32) isGroupTypingMessage] && objc_msgSend(+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags, "sharedFeatureFlags"), "isGroupTypingIndicatorsEnabled"))
    {
      v22 = [NSSet setWithObject:@"supports-gti"];
      if (v19)
      {
        v19 = [(NSSet *)v19 setByAddingObjectsFromSet:v22];
      }

      else
      {
        v19 = v22;
      }
    }

    v23 = [NSSet setWithObject:IDSRegistrationPropertyOptionallyReceiveTypingIndicator];
    v13 = v41;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_4DBC4;
    v41[3] = &unk_112FC0;
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    v41[4] = v29;
    v41[5] = v25;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v33 = *(a1 + 112);
    v32 = *(a1 + 120);
    v41[6] = v32;
    v41[7] = v26;
    v41[8] = v24;
    v41[9] = v27;
    v30 = *(a1 + 96);
    v31 = *(a1 + 104);
    v41[10] = v28;
    v41[11] = v30;
    v41[12] = v31;
    v41[13] = v33;
    v34 = *(a1 + 144);
    v41[14] = v34;
  }

  else
  {
    v23 = 0;
    v25 = *(a1 + 56);
    v24 = *(a1 + 64);
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    v30 = *(a1 + 96);
    v31 = *(a1 + 104);
    v33 = *(a1 + 112);
    v32 = *(a1 + 120);
    v34 = *(a1 + 144);
  }

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_4E144;
  v40[3] = &unk_112FE8;
  v40[4] = v25;
  v40[5] = v26;
  v40[6] = v29;
  v40[7] = v13;
  v35 = *(a1 + 88);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_4E200;
  v38[3] = &unk_113038;
  v38[13] = v34;
  v38[14] = a2;
  v38[4] = v26;
  v38[5] = v25;
  v38[6] = *(a1 + 128);
  v38[7] = v27;
  v38[8] = v24;
  v38[9] = v28;
  v38[10] = v29;
  v38[11] = v35;
  v39 = v12;
  v38[12] = v32;
  LOBYTE(v37) = v12;
  return [v25 _sendMessage:v29 context:0 deliveryContext:v35 fromID:v32 fromAccount:v30 toID:v19 chatIdentifier:v8 toSessionToken:v23 toGroup:v37 toParticipants:1 originallyToParticipants:0 requiredRegProperties:v31 interestingRegProperties:v33 requiresLackOfRegProperties:0 canInlineAttachments:v40 type:v38 msgPayloadUploadDictionary:? originalPayload:? replyToMessageGUID:? fallbackCount:? willSendBlock:? completionBlock:?];
}

void sub_4D428(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ([a3 count])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Audio message needs to be sent the legacy way to %@", buf, 0xCu);
      }
    }

    v8 = [NSMutableSet setWithArray:a3];
    v9 = [a4 objectForKey:IDSRegistrationPropertySupportsKeepReceipts];
    if (!v9)
    {
      v9 = +[NSArray array];
    }

    [(NSMutableSet *)v8 minusSet:[NSSet setWithArray:v9]];
    v10 = objc_alloc_init(NSMutableSet);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v11)
    {
      v12 = *v55;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v54 + 1) + 8 * i);
          if ([*(a1 + 32) isEqualToString:{objc_msgSend(v14, "_stripPotentialTokenURIWithToken:", 0)}])
          {
            [v10 addObject:v14];
          }
        }

        v11 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v11);
    }

    [(NSMutableSet *)v8 minusSet:v10];

    if ([(NSMutableSet *)v8 count])
    {
      value = 0;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v15 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v15)
      {
        v16 = 0;
        v17 = *v50;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(v8);
            }

            if (value)
            {
              p_value = 0;
            }

            else
            {
              p_value = &value;
            }

            v20 = [*(*(&v49 + 1) + 8 * j) _stripPotentialTokenURIWithToken:p_value];
            if (v16)
            {
              if (([v16 isEqualToString:v20] & 1) == 0)
              {
                value = 0;
                goto LABEL_37;
              }
            }

            else
            {
              v16 = v20;
            }
          }

          v15 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v15);
        if (v16)
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v62 = v16;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "There's a single legacy destination %@. Key off of delivery context for keep receipt.", buf, 0xCu);
            }
          }

          v22 = objc_alloc_init(NSMutableDictionary);
          v23 = [NSNumber numberWithUnsignedInt:106];
          if (v23)
          {
            CFDictionarySetValue(v22, @"c", v23);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BC7D4();
          }

          CFDictionarySetValue(v22, @"sP", v16);
          if (value)
          {
            CFDictionarySetValue(v22, @"t", value);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BC864();
          }

          v40 = *(a1 + 32);
          if (v40)
          {
            CFDictionarySetValue(v22, @"tP", v40);
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_BC8F4();
          }

          v41 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) isAudioMessage] ^ 1);
          if (v41)
          {
            CFDictionarySetValue(v22, @"aT", v41);
          }

          v42 = *(a1 + 48);
          if (v42)
          {
            CFDictionarySetValue(v22, @"p", v42);
          }

          goto LABEL_52;
        }
      }

LABEL_37:
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "There is more than one legacy recipient URI, generating keep receipts now.", buf, 2u);
        }
      }

      if (*(a1 + 120))
      {
        v25 = objc_alloc_init(NSMutableSet);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v26 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v26)
        {
          v27 = *v46;
          do
          {
            for (k = 0; k != v26; k = k + 1)
            {
              if (*v46 != v27)
              {
                objc_enumerationMutation(v8);
              }

              v29 = [*(*(&v45 + 1) + 8 * k) _stripPotentialTokenURIWithToken:0];
              if (([v25 containsObject:v29] & 1) == 0)
              {
                (*(*(a1 + 120) + 16))();
                [v25 addObject:v29];
              }
            }

            v26 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v26);
        }
      }
    }

    v22 = 0;
LABEL_52:
    v30 = *(a1 + 56);
    v31 = *(a1 + 64);
    v33 = *(a1 + 32);
    v32 = *(a1 + 40);
    v34 = *(a1 + 72);
    v35 = *(a1 + 80);
    v36 = *(a1 + 88);
    v37 = *(a1 + 96);
    v38 = *(a1 + 104);
    v39 = *(a1 + 112);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_4DA6C;
    v44[3] = &unk_112D78;
    v44[4] = *(a1 + 128);
    LOBYTE(v43) = 0;
    [v30 _sendMessage:v32 context:v31 deliveryContext:v22 fromID:v33 fromAccount:v34 toID:0 chatIdentifier:v35 toSessionToken:0 toGroup:v36 toParticipants:a3 originallyToParticipants:v37 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v43 type:1 msgPayloadUploadDictionary:0 originalPayload:v38 replyToMessageGUID:v39 fallbackCount:0 willSendBlock:0 completionBlock:v44];
  }
}

uint64_t sub_4DA6C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 32))
  {
    v7 = result;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (a4)
        {
          v9 = @"YES";
        }

        v10 = 138412546;
        v11 = v9;
        v12 = 1024;
        v13 = a5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got success %@ error %d in legacy MessageDelivery block", &v10, 0x12u);
      }
    }

    return (*(*(v7 + 32) + 16))();
  }

  return result;
}

void sub_4DBC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138413058;
      v40 = a2;
      v41 = 2112;
      v42 = a3;
      v43 = 2112;
      v44 = a4;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "willSendBlock typing indicator, destinations %@, skippedDestionations: %@, registrationPropertyToDestinations %@, chatIdentifier %@", buf, 0x2Au);
    }
  }

  v9 = objc_alloc_init(NSMutableSet);
  v10 = [+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")];
  v11 = *(a1 + 40);
  if (v10)
  {
    [v9 unionSet:{objc_msgSend(v11, "_receivingDevicesForParticipants:skippedDestinations:", *(a1 + 48), a3)}];
  }

  else
  {
    v12 = [v11 activeDeviceForHandle:*(a1 + 32)];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 idsDestination];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = [a3 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(a3);
            }

            if ([v14 isEqualToString:*(*(&v34 + 1) + 8 * i)])
            {
              if (IMOSLoggingEnabled())
              {
                v18 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v40 = v13;
                  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Found skipped active device %@", buf, 0xCu);
                }
              }

              if ([v13 shouldSendTypingIndicator])
              {
                if (IMOSLoggingEnabled())
                {
                  v19 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v40 = v13;
                    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Sending typing indicator to device %@", buf, 0xCu);
                  }
                }

                [v9 addObject:v14];
              }
            }
          }

          v15 = [a3 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v15);
      }
    }

    else
    {
      [v9 addObjectsFromArray:a3];
    }
  }

  if ([*(a1 + 56) isGroupTypingMessage] && objc_msgSend(+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags, "sharedFeatureFlags"), "isGroupTypingIndicatorsEnabled"))
  {
    [v9 intersectSet:{+[NSSet setWithArray:](NSSet, "setWithArray:", objc_msgSend(a4, "objectForKey:", @"supports-gti"}];
  }

  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = [v9 allObjects];
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_4DFEC;
  v33[3] = &unk_112D78;
  v29 = *(a1 + 104);
  v33[4] = *(a1 + 112);
  LOBYTE(v30) = 0;
  [v24 _sendMessage:v20 context:v21 deliveryContext:0 fromID:v22 fromAccount:v23 toID:0 chatIdentifier:v25 toSessionToken:0 toGroup:0 toParticipants:v26 originallyToParticipants:v27 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v30 type:0 msgPayloadUploadDictionary:0 originalPayload:v28 replyToMessageGUID:v29 fallbackCount:0 willSendBlock:0 completionBlock:v33];
}

uint64_t sub_4DFEC(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*(result + 32))
  {
    v7 = result;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (a4)
        {
          v9 = @"YES";
        }

        v10 = 138412546;
        v11 = v9;
        v12 = 1024;
        v13 = a5;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Got success %@ error %d in typing indicator block", &v10, 0x12u);
      }
    }

    return (*(*(v7 + 32) + 16))();
  }

  return result;
}

uint64_t sub_4E144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(a1 + 32) _updateExpectedOffGridCapableDeliveryReceiptsForMessage:*(a1 + 40) chatIdentifier:*(a1 + 48) numberOfExpectedOffGridCapableDeliveries:{objc_msgSend(objc_msgSend(a4, "objectForKeyedSubscript:", IDSRegistrationPropertySupportsStewie), "count")}];
  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_4E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      v18 = *(a1 + 32);
      *buf = 138413058;
      if (a4)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v43 = v19;
      v44 = 1024;
      if (a7)
      {
        v17 = @"YES";
      }

      v45 = a5;
      v46 = 2112;
      v47 = v17;
      v48 = 2112;
      v49 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Got success %@ error %d hasNotifiedClient %@ in MessageDelivery block for message %@", buf, 0x26u);
    }
  }

  if ((a7 & 1) == 0)
  {
    v20 = *(a1 + 104);
    if (v20)
    {
      (*(v20 + 16))(v20, a2, a3, a4, a5, a6, 0, a8);
    }

    else
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_BC984(a1);
      }
    }
  }

  v22 = *(a1 + 112);
  if (v22)
  {
    (*(v22 + 16))();
  }

  if (([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] & a4) == 1 && objc_msgSend(objc_msgSend(*(a1 + 32), "fileTransferGUIDs"), "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Got success for Low Quality transfer", buf, 2u);
      }
    }

    v24 = -[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter, "sharedInstance"), "transferForGUID:", [objc_msgSend(*(a1 + 32) "fileTransferGUIDs")]);
    v25 = [*(a1 + 40) isLQMEnabled:*(a1 + 32)];
    v26 = +[IMDAttachmentUtilities isNetworkLowDataMode];
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Checking receiver capability for HQ transfer", buf, 2u);
      }
    }

    if (([*(a1 + 32) isHQTransfer] & 1) != 0 || (objc_msgSend(*(a1 + 32), "scheduleType") == &dword_0 + 2 || (v25 & 1) == 0) | v26 & 1 || !objc_msgSend(*(a1 + 40), "isReceiverHQTransferCapable:fromID:", *(a1 + 48), *(a1 + 56)))
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v24 currentBytes];
          *buf = 134217984;
          v43 = v33;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "HQ transfer check is NOT satisfied. Low Quality image of fileSize: %llu is successfully transferred", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Receiver is capable for HQ transfer", buf, 2u);
        }
      }

      [*(a1 + 32) setIsHQTransfer:1];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_4E6A8;
      v34[3] = &unk_113010;
      v29 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
      v35 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v36 = v29;
      v37 = *(a1 + 72);
      v30 = *(a1 + 48);
      v31 = *(a1 + 96);
      v38 = *(a1 + 88);
      v39 = v30;
      v41 = *(a1 + 120);
      v40 = v31;
      dispatch_async(&_dispatch_main_q, v34);
    }
  }
}

void sub_4EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_alloc_init(NSMutableDictionary);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v11 = [*(a1 + 32) fileTransferGUIDs];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_4EFDC;
  v19[3] = &unk_113088;
  v12 = *(a1 + 88);
  v19[4] = &v20;
  v19[5] = v12;
  [v11 enumerateObjectsUsingBlock:v19];
  [v10 setObject:*(*(*(a1 + 88) + 8) + 40) forKeyedSubscript:@"fileTransferUpdates"];
  if (*(v21 + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Sending a FTCommandIDUpdateAttachmentsMessage command %@", buf, 0xCu);
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4F118;
    v18[3] = &unk_1130B0;
    v18[4] = a2;
    v15 = [NSNumber numberWithInteger:108];
    v16 = JWEncodeDictionary();
    [*(a1 + 32) guid];
    [*(a1 + 40) sendMessageDictionary:+[NSDictionary dictionary](NSDictionary fromID:"dictionary") fromAccount:*(a1 + 48) toURIs:*(a1 + 56) toGroup:+[NSSet setWithArray:](NSSet priority:"setWithArray:" options:*(a1 + 64)) completionBlock:{*(a1 + 72), 300, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", IDSSendMessageOptionTopLevelDictionaryKey, &__kCFBooleanTrue, IDSSendMessageOptionSkipPayloadCheckKey, v15, IDSSendMessageOptionCommandKey, &__kCFBooleanTrue, IDSSendMessageOptionWantsDeliveryStatusKey, v16, IDSSendMessageOptionDataToEncryptKey, IDSGetUUIDData(), IDSSendMessageOptionUUIDKey, 0), v18}];
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    (*(v17 + 16))(v17, *(a1 + 40), *(a1 + 64), a5, a6, 0);
  }

  _Block_object_dispose(&v20, 8);
}

id sub_4EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", a2];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "updated transfers %@", &v9, 0xCu);
    }
  }

  result = [v5 userInfo];
  v8 = result;
  if (result)
  {
    result = [result count];
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return [objc_msgSend(*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:{a3), "setObject:forKeyedSubscript:", v8, @"highQuality"}];
    }
  }

  return result;
}

id sub_4F118(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    [v6 setIsFailedHQTransfer:0];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        v8 = "Finished sending FTCommandIDUpdateAttachmentsMessage";
        v9 = v7;
        v10 = 2;
LABEL_8:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, v8, &v15, v10);
      }
    }
  }

  else
  {
    [v6 setIsFailedHQTransfer:1];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LODWORD(v15) = 67109120;
        HIDWORD(v15) = a5;
        v8 = "Failed sending FTCommandIDUpdateAttachmentsMessage: %d";
        v9 = v12;
        v10 = 8;
        goto LABEL_8;
      }
    }
  }

  [+[IMDMessageStore storeMessage:v15]forceReplace:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" modifyError:*(a1 + 32) modifyFlags:1 flagMask:0, 0, 0];
  v13 = -[IMDMessageStore messageWithGUID:](+[IMDMessageStore sharedInstance](IMDMessageStore, "sharedInstance"), "messageWithGUID:", [*(a1 + 32) guid]);
  return [objc_msgSend(+[IMDBroadcastController sharedProvider](IMDBroadcastController "sharedProvider")];
}

id sub_4F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [-[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter "sharedInstance")];
  if (result)
  {
    v6 = result;
    result = [result count];
    if (result)
    {
      v7 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:a3];

      return [v7 setObject:v6 forKeyedSubscript:@"lowQuality"];
    }
  }

  return result;
}

id sub_4FA38(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Dequeing message payload block for people %@", buf, 0xCu);
    }
  }

  v6 = *(a1 + 88);
  result = [*(a1 + 40) sendMessageDictionary:*(a1 + 48) fromID:*(a1 + 56) fromAccount:*(a1 + 64) toURIs:*(a1 + 72) toGroup:*(a1 + 80) priority:*(a1 + 104) options:v6 completionBlock:*(a1 + 96)];
  if (a2)
  {
    return (*(a2 + 16))(a2);
  }

  return result;
}

void sub_50558(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x4FFC0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_505E0(uint64_t a1, uint64_t a2, int a3)
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v10[0] = 67109890;
      v10[1] = a2;
      v11 = 2112;
      v12 = v7;
      v13 = 1024;
      v14 = a2;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Wrapped block got error: %d   guid: %@   error: %d   block: %@", v10, 0x22u);
    }
  }

  result = *(a1 + 56);
  if (result && (a2 || (*(a1 + 64) & 1) != 0 || a3 && *(a1 + 65) == 1))
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 48), a2 == 0, a2, 0);
  }

  return result;
}

void sub_515D8(void *a1, void *a2, const void *a3, uint64_t a4, const void *a5)
{
  theDict = objc_alloc_init(NSMutableDictionary);
  [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", a1[4]];
  v11 = v10;
  if (a3)
  {
    CFDictionarySetValue(theDict, @"url", a3);
  }

  v12 = [a2 domain];
  if (v12)
  {
    CFDictionarySetValue(theDict, @"eD", v12);
  }

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 code]);
  if (v13)
  {
    CFDictionarySetValue(theDict, @"eC", v13);
  }

  v14 = [NSNumber numberWithInteger:a4];
  if (v14)
  {
    CFDictionarySetValue(theDict, @"fS", v14);
  }

  if (IMSendAdditionalMMCSErrorInfoToMadrid())
  {
    v15 = llround(v11 * 1000.0);
    if (a5)
    {
      CFDictionarySetValue(theDict, @"fRM", a5);
    }

    v16 = [NSNumber numberWithInteger:v15];
    if (v16)
    {
      CFDictionarySetValue(theDict, @"fTE", v16);
    }
  }

  [*(a1[5] + 40) sendServerMessage:theDict command:&off_1193B0 fromAccount:a1[6]];
}

void sub_51F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x51CACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_51FB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = IMOSLoggingEnabled();
  if ((a4 & 1) == 0)
  {
    if (v12)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = a5;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Send of backward compatible message edit not successful, error %ld", &v15, 0xCu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = a5;
LABEL_10:
    if (!a8)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = OSLogHandleForIMFoundationCategory();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_10;
  }

  LOWORD(v15) = 0;
  _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Send of backward compatible message edit successful", &v15, 2u);
  if (a8)
  {
LABEL_11:
    dispatch_group_leave(*(a1 + 32));
  }
}

id sub_52124(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = a3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Edit message command will not be received by all destinations. SkippedDestinations: %@", buf, 0xCu);
      }
    }

    v7 = objc_alloc_init(NSMutableArray);
    v8 = [*(a1 + 32) _stripFZIDPrefix];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = IDSCopyRawAddressForDestination();
          if (([v13 isEqualToString:v8] & 1) == 0)
          {
            [v7 addObject:v12];
          }
        }

        v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      (*(*(a1 + 104) + 16))(*(a1 + 104), [v7 copy], *(a1 + 40));
    }

    result = [*(a1 + 48) length];
    if (result)
    {
      dispatch_group_enter(*(a1 + 56));
      v14 = *(a1 + 48);
      return [*(a1 + 64) _sendBackwardCompatibilityMessageForEditedMessage:*(a1 + 72) usingMessageGUID:*(a1 + 40) toBackwardCompatabilityDestinations:a3 withOriginalDestinations:*(a1 + 80) chatIdentifier:*(a1 + 88) fromAccount:*(a1 + 96) fromID:*(a1 + 32) backwardCompatabilityText:v14 completionBlock:*(a1 + 112)];
    }
  }

  return result;
}

void sub_5234C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Send of message edit successful, editCommandGuid %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_BCA90(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = a5;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_52474(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "All sends of message edit commands completed succesfully", v8, 2u);
      }
    }
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_BCB0C(a1);
    }
  }

  v4 = a1[4];
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[7] + 8) + 24);
  return (*(a1[5] + 16))();
}

void sub_52788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = [objc_msgSend(objc_msgSend(*(a1 + 32) "session")];
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = [*(a1 + 64) replyToGUID];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_528C4;
  v22[3] = &unk_113240;
  v19 = *(a1 + 80);
  v22[4] = *(a1 + 48);
  v22[5] = v19;
  LOBYTE(v20) = 0;
  [v14 _sendMessage:a4 context:a7 deliveryContext:v13 fromID:a5 fromAccount:a6 toID:0 chatIdentifier:v15 toSessionToken:0 toGroup:a8 toParticipants:v17 originallyToParticipants:v16 requiredRegProperties:0 interestingRegProperties:0 requiresLackOfRegProperties:0 canInlineAttachments:v20 type:1 msgPayloadUploadDictionary:0 originalPayload:0 replyToMessageGUID:v18 fallbackCount:0 willSendBlock:0 completionBlock:v22];
}

uint64_t sub_528C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = IMOSLoggingEnabled();
  if (a4)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v19 = 138412290;
        v20 = v12;
        v13 = "Succesfully sent backward compatible edit message text to destinations: %@";
        v14 = v11;
        v15 = 12;
LABEL_8:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v13, &v19, v15);
      }
    }
  }

  else if (v10)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v19 = 134218242;
      v20 = a5;
      v21 = 2112;
      v22 = v17;
      v13 = "Failed sending backward compatability edit message text. Error: %ld, Destinations: %@";
      v14 = v16;
      v15 = 22;
      goto LABEL_8;
    }
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3);
}

void sub_52F94(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x52DD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_53044(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6)
{
  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Send of sticker reposition successful, editCommandGuid %@", &v12, 0xCu);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = a6;
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BCB7C(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = a6;
    *(*(*(a1 + 64) + 8) + 24) = a5;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_53188(void *a1)
{
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "All sends of message edit commands completed succesfully", v9, 2u);
      }
    }
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_BCB0C(a1);
    }
  }

  v4 = a1[4];
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[7] + 8) + 24);
  v7 = *(*(a1[8] + 8) + 24);
  return (*(a1[5] + 16))();
}

void sub_54550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_545B0(uint64_t a1, void *a2)
{
  v3 = [a2 messagePartBody];
  v4 = [v3 __im_isOnlyAdaptiveImageGlyphFileTransfersAndWhitespaceUsingFileTransferProvider:*(a1 + 40)];
  v9 = 0;
  if (v4)
  {
    v5 = [objc_msgSend(v3 "__im_transferGUIDsInAttributedString")];
    v9 = v5;
  }

  else
  {
    v6 = [v3 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:*(a1 + 40) replacementTextProvider:*(a1 + 48) removedTransferGUIDsOut:&v9];
    v7 = [*(*(*(a1 + 56) + 8) + 40) mutableCopy];
    [v7 appendAttributedString:v6];
    *(*(*(a1 + 56) + 8) + 40) = [v7 copy];

    v5 = v9;
  }

  result = [v5 count];
  if (result)
  {
    return [*(a1 + 32) addObjectsFromArray:v9];
  }

  return result;
}

NSData *_PayloadDataWithExtensionPayloadDataFromAttachmentForOutgoingMessage(void *a1)
{
  if (([a1 isTypingMessage] & 1) != 0 || !objc_msgSend(objc_msgSend(a1, "payloadData"), "length"))
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = a1;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Request to _PayloadDataWithExtensionPayloadDataFromAttachmentForOutgoingMessage: %@", buf, 0xCu);
    }
  }

  v3 = IMExtensionPayloadUnarchivingClasses();
  v23 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objc_msgSend(a1 error:{"payloadData"), &v23}];
  v5 = [v4 decodeObjectOfClasses:v3 forKey:NSKeyedArchiveRootObjectKey];
  if (v23)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v23;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Failed to unarchive payload. Error: %@", buf, 0xCu);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = IMExtensionPayloadDataKey;
    if (![v5 objectForKey:?])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [a1 fileTransferGUIDs];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = *v20;
        v12 = IMFileTransferPluginPayloadAttachmentExtension;
LABEL_18:
        v13 = 0;
        while (1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [-[IMDFileTransferCenter transferForGUID:](+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter "sharedInstance")];
          if ([objc_msgSend(v14 "pathExtension")])
          {
            break;
          }

          if (v10 == ++v13)
          {
            v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
            v7 = 0;
            if (v10)
            {
              goto LABEL_18;
            }

            goto LABEL_13;
          }
        }

        v15 = [NSData dataWithContentsOfURL:v14];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26 = v14;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Read extension payload data from path: %@", buf, 0xCu);
          }
        }

        if (v15)
        {
          v17 = [v5 mutableCopy];
          [v17 setObject:v15 forKey:v18];
          [v17 removeObjectForKey:IMExtensionPayloadDataFilePathKey];
          v7 = [NSKeyedArchiver archivedDataWithRootObject:v17 requiringSecureCoding:0 error:0];
          [a1 setPayloadData:v7];

          goto LABEL_13;
        }
      }
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

uint64_t sub_54EA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*(result + 56) + 8) + 24);
  return result;
}

uint64_t *sub_54EB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_54EC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_55B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 associatedMessageType] != &stru_F58.reserved2;
  v5 = [v3 balloonBundleID];

  v6 = [*(a1 + 32) balloonBundleID];
  LODWORD(v3) = [v5 isEqualToString:v6];

  return v4 & v3;
}

int64_t sub_58160(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"file-size"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"file-size"];

  v8 = [v7 unsignedLongLongValue];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

void sub_581EC(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [v19 objectForKeyedSubscript:@"file-size"];
  v6 = [v5 unsignedLongLongValue];

  if (a3)
  {
    v7 = [NSString stringWithFormat:@"-%d", a3];
  }

  else
  {
    if ((*(a1 + 48) & 1) == 0 && *(a1 + 49) == 1 && (*(a1 + 50) & 1) == 0)
    {
      v6 = [IMDAttachmentUtilities mmcsTargetReportSizeForHighQualityPhotoSize:v6 commonCapabilities:*(a1 + 32)];
    }

    v7 = &stru_115E20;
  }

  v8 = [@"mmcs-signature-hex" stringByAppendingString:v7];
  v9 = [@"mmcs-owner" stringByAppendingString:v7];
  v10 = [@"mmcs-url" stringByAppendingString:v7];
  v11 = [@"decryption-key" stringByAppendingString:v7];
  v12 = [@"file-size" stringByAppendingString:v7];
  v13 = [v19 objectForKeyedSubscript:@"mmcs-signature-hex"];
  if (v13)
  {
    CFDictionarySetValue(*(a1 + 40), v8, v13);
  }

  v14 = [v19 objectForKeyedSubscript:@"mmcs-owner"];
  if (v14)
  {
    CFDictionarySetValue(*(a1 + 40), v9, v14);
  }

  v15 = [v19 objectForKeyedSubscript:@"mmcs-url"];
  if (v15)
  {
    CFDictionarySetValue(*(a1 + 40), v10, v15);
  }

  v16 = [v19 objectForKeyedSubscript:@"decryption-key"];
  if (v16)
  {
    CFDictionarySetValue(*(a1 + 40), v11, v16);
  }

  v17 = [NSNumber numberWithUnsignedLongLong:v6];
  v18 = [v17 stringValue];

  if (v18)
  {
    CFDictionarySetValue(*(a1 + 40), v12, v18);
  }
}

void sub_587D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  [v6 expiration];
  if (v7 > v8)
  {
    [*(a1 + 32) addObject:v5];
    if (![v6 useCount])
    {
      if ([v6 isSuccess])
      {
        v9 = _iMessageTelemetryLogHandle();
        v10 = os_signpost_id_make_with_pointer(v9, v6);
        v11 = v9;
        v12 = v11;
        if (v10 && os_signpost_enabled(v11))
        {
          *v13 = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, v10, "MessageAttachment.eager.notUsed", " enableTelemetry=YES ", v13, 2u);
        }
      }
    }
  }
}

void sub_589AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 originalURL];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = [v6 state];
    v10 = [v6 cancel];
    v11 = IMAttachmentsLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "EAGER setting cancel %@", &v19, 0xCu);
      }

      v13 = _iMessageTelemetryLogHandle();
      v14 = os_signpost_id_make_with_pointer(v13, v6);
      v15 = v13;
      v11 = v15;
      if (v14 && os_signpost_enabled(v15))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_EVENT, v14, "MessageAttachment.eager.cancel", " enableTelemetry=YES ", &v19, 2u);
      }

      if (v9 == &dword_0 + 2)
      {
        v16 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v6;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "EAGER request send cancel %@", &v19, 0xCu);
        }

        v17 = +[IMTransferServicesController sharedInstance];
        v18 = [v6 transferId];
        [v17 cancelSendTransferID:v18];
      }

      [*(a1 + 40) addObject:v5];
    }

    else if (v12)
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "EAGER cancel failed %@", &v19, 0xCu);
    }
  }
}

uint64_t sub_58FDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_58FF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) transcoderUserInfo];
  v7 = [v4 eagerUploadKeyForURL:v3 sizes:v5 transcodeDictionary:v6 capabilities:*(*(*(a1 + 72) + 8) + 40)];

  if (v7)
  {
    v8 = [*(a1 + 32) eagerUploadStatusForKey:v7];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }

    if ([v8 targetSize]< *(a1 + 80))
    {
      v10 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "EAGER reupload: previous is too small", buf, 2u);
      }

      [v9 cancel];
      v9 = 0;
      goto LABEL_7;
    }

    if ([v9 isComplete]&& ([v9 isSuccess]& 1) == 0)
    {
LABEL_7:
      v11 = [MessageAttachmentEagerUploadStatus alloc];
      v12 = [*(a1 + 48) localURL];
      v13 = [(MessageAttachmentEagerUploadStatus *)v11 initWithOriginalURL:v12 transferId:v7 targetSize:*(a1 + 80)];

      [*(*(a1 + 32) + 32) setObject:v13 forKeyedSubscript:v7];
      v14 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "EAGER start: %@", buf, 0xCu);
      }

      [(MessageAttachmentEagerUploadStatus *)v13 start];
      v15 = objc_alloc_init(MessageAttachmentOverallStatus);
      [(MessageAttachmentOverallStatus *)v15 setError:0];
      [(MessageAttachmentOverallStatus *)v15 setFailed:0];
      v16 = [v3 pathExtension];
      if ([v16 length])
      {
        v17 = v16;
      }

      else
      {
        v22 = +[IMFileManager defaultHFSFileManager];
        v23 = [*(a1 + 48) type];
        v17 = [v22 pathExtensionForUTIType:v23];

        if (![v17 length])
        {
          v24 = +[IMFileManager defaultHFSFileManager];
          v25 = [*(a1 + 48) mimeType];
          v26 = [v24 pathExtensionForMIMEType:v25];

          v17 = v26;
        }

        if ([v17 length])
        {
          v27 = [v3 absoluteString];
          v28 = [v27 stringByDeletingPathExtension];

          v29 = [v28 stringByAppendingPathExtension:v17];
          v30 = [v29 __im_apfsCompatibleFilename];

          if ([v30 length])
          {
            v31 = [NSURL fileURLWithPath:v30];

            v3 = v31;
          }
        }
      }

      v46 = v17;
      if (v3)
      {
        v32 = +[NSFileManager defaultManager];
        v33 = [v32 im_generateCopyForURL:v3];
      }

      else
      {
        v33 = 0;
      }

      v34 = dispatch_group_create();
      v35 = objc_alloc_init(NSMutableArray);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_5966C;
      v53[3] = &unk_113478;
      v36 = v13;
      v37 = *(a1 + 32);
      v54 = v36;
      v55 = v37;
      v56 = *(a1 + 56);
      v57 = *(a1 + 64);
      v58 = v7;
      v38 = v35;
      v59 = v38;
      v39 = v15;
      v60 = v39;
      v61 = v34;
      v40 = v34;
      v41 = objc_retainBlock(v53);
      [(MessageAttachmentEagerUploadStatus *)v36 setState:1];
      if (v33)
      {
        v42 = v33;
      }

      else
      {
        v42 = v3;
      }

      [*(a1 + 32) _transcodeURL:v42 reason:1 transfer:*(a1 + 48) sizes:*(a1 + 40) commonCapabilities:*(*(*(a1 + 72) + 8) + 40) sendStatus:v39 urlGroup:v40 didTranscode:0 handleURL:v41];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5981C;
      block[3] = &unk_112198;
      v9 = v36;
      v48 = v9;
      v49 = v33;
      v50 = v39;
      v51 = v38;
      v52 = *(a1 + 48);
      v43 = v38;
      v44 = v39;
      v45 = v33;
      dispatch_group_notify(v40, &_dispatch_main_q, block);

      v19 = v46;
      goto LABEL_31;
    }

    v18 = [v9 isComplete];
    v19 = IMAttachmentsLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 138412290;
        v63 = v9;
        v21 = "EAGER already uploaded: %@";
LABEL_35:
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    else if (v20)
    {
      *buf = 138412290;
      v63 = v9;
      v21 = "EAGER in progress: %@";
      goto LABEL_35;
    }

LABEL_31:

    goto LABEL_32;
  }

  v9 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "EAGER skip: no key", buf, 2u);
  }

LABEL_32:
}

void sub_5966C(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) isCanceled])
  {
    v9 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "EAGER cancel before send: %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = a4;
    [*(a1 + 32) setState:2];
    v11 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "EAGER upload: %@", buf, 0xCu);
    }

    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 40);
    v9 = [*(a1 + 32) attachmentStatus];
    LOBYTE(v19) = v20;
    [v18 _sendURL:v7 urlToRemove:v8 topic:v13 sessionInfo:0 messageGUID:v14 transferID:v15 fileTransferGUID:v15 attachmentSendContexts:v16 failIfError:v19 sendStatus:v17 attachmentStatus:v9 group:*(a1 + 88)];
  }
}

void sub_5981C(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "EAGER complete: %@", buf, 0xCu);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = *(a1 + 40);
  v27 = 0;
  [v4 removeItemAtURL:v5 error:&v27];
  v6 = v27;

  v7 = [*(a1 + 48) failed];
  v8 = *(a1 + 32);
  if (v7)
  {
    if (([v8 isCanceled] & 1) == 0)
    {
      [*(a1 + 32) setState:4];
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 64);
        *buf = 138412290;
        v29 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "EAGER NOT setting userInfo: transfer %@ did not complete successfully.", buf, 0xCu);
      }
    }

    v11 = _iMessageTelemetryLogHandle();
    v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));
    v13 = v11;
    v14 = v13;
    if (v12 && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_EVENT, v12, "MessageAttachment.eager.uploadFail", " enableTelemetry=YES ", buf, 2u);
    }
  }

  else
  {
    [v8 setState:5];
    v15 = *(a1 + 56);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_59B40;
    v25 = &unk_1134A0;
    v26 = *(a1 + 32);
    [v15 enumerateObjectsUsingBlock:&v22];
    [*(a1 + 32) setAttachmentSendContexts:{*(a1 + 56), v22, v23, v24, v25}];
    v16 = *(a1 + 32);
    v17 = [*(a1 + 64) transferredFilename];
    [v16 setTransferredName:v17];

    v18 = _iMessageTelemetryLogHandle();
    v19 = os_signpost_id_make_with_pointer(v18, *(a1 + 32));
    v20 = v18;
    v21 = v20;
    if (v19 && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_EVENT, v19, "MessageAttachment.eager.upload", " enableTelemetry=YES ", buf, 2u);
    }

    v14 = v26;
  }

  [*(a1 + 32) finish];
}

id sub_59B40(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"file-size"];
  v4 = [v3 unsignedLongLongValue];

  v5 = *(a1 + 32);
  v6 = &v4[[v5 totalBytes]];

  return [v5 setTotalBytes:v6];
}

void sub_59BB0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "EAGER Found Common Capabilities: %@ from recipients %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v7 = objc_alloc_init(NSFileCoordinator);
  v8 = [*(a1 + 40) localURL];
  v12 = 0;
  [v7 coordinateReadingItemAtURL:v8 options:0 error:&v12 byAccessor:*(a1 + 48)];
  v9 = v12;

  if (v9)
  {
    v10 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) localURL];
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "EAGER Failed coordinated read of url for fast upload: %@  (Error: %@)", buf, 0x16u);
    }
  }
}

void sub_5A214(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_5A410;
  v21[3] = &unk_113540;
  v23 = *(a1 + 104);
  v22 = *(a1 + 88);
  v4 = objc_retainBlock(v21);
  v5 = [*(a1 + 32) isEqualToString:IDSServiceNameiMessageForBusiness];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_5A4C4;
    v11[3] = &unk_113568;
    v11[4] = v6;
    v12 = *(a1 + 64);
    v20 = *(a1 + 120);
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v9 = v3;
    v10 = *(a1 + 112);
    v15 = v9;
    v19 = v10;
    v16 = *(a1 + 32);
    v17 = v4;
    v18 = *(a1 + 96);
    [v6 sessionInfoForBusinessReceipients:v7 fromID:v8 completion:v11];
  }

  else
  {
    [v6 sendAttachmentsForMessage:*(a1 + 64) canSendInline:*(a1 + 120) displayIDs:*(a1 + 72) additionalContext:*(a1 + 80) commonCapabilities:v3 mode:*(a1 + 112) sessionInfo:0 topic:*(a1 + 32) completionBlock:v4 uploadFailureBlock:*(a1 + 96)];
  }
}

void sub_5A410(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v11 = a3;
  v12 = a4;
  os_activity_scope_leave((*(*(a1 + 40) + 8) + 32));
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v14, v11, v12, a5, a6);
  }
}

void sub_5B880(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) userInfo];
    Mutable = [v2 mutableCopy];

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v4 = [NSString stringWithFormat:@"%@%d", @"ia-", *(a1 + 96)];
    if (v4)
    {
      CFDictionarySetValue(Mutable, @"inline-attachment", v4);
    }

    [*(a1 + 40) setUserInfo:Mutable];
    [*(a1 + 40) setMessageGUID:*(a1 + 48)];
    v5 = [*(a1 + 32) length];
    [*(a1 + 56) updateTransfer:*(a1 + 64) currentBytes:v5 totalBytes:v5];
    [*(a1 + 56) endTransfer:*(a1 + 64)];
    v6 = *(a1 + 32);
    if (v6)
    {
      CFDictionarySetValue(*(a1 + 72), v4, v6);
    }

    v7 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = [*(a1 + 32) length];
      *buf = 138412546;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Inlined transfer %@ with %lu bytes.", buf, 0x16u);
    }
  }

  else
  {
    [*(a1 + 56) failTransfer:*(a1 + 64) reason:8];
    [*(a1 + 80) setFailed:1];
    [*(a1 + 80) setError:34];
  }

  dispatch_group_leave(*(a1 + 88));
}

void sub_5BA58(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) failed];
    v5 = @"YES";
    if (v4)
    {
      v5 = @"NO";
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "  All done inline transfer set for: %@   success: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 48), *(a1 + 56), *(a1 + 64), [*(a1 + 40) failed] ^ 1, objc_msgSend(*(a1 + 40), "error"));
  }
}

void sub_5BB7C(uint64_t a1)
{
  if ([*(a1 + 32) isRecipeBasedSticker])
  {
    v2 = +[IMMetricsCollector sharedInstance];
    [v2 trackEvent:IMMetricsCollectorEventMeStickerSent];

    v3 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) stickerUserInfo];
      v5 = [v4 objectForKey:IMStickerUserInfoStickerRecipeKey];
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Faking a me-sticker upload with recipe %@", buf, 0xCu);
    }

    [*(a1 + 32) setUserInfo:0];
    [*(a1 + 32) setMessageGUID:*(a1 + 40)];
    v6 = [*(a1 + 32) totalBytes];
    [*(a1 + 48) updateTransfer:*(a1 + 56) currentBytes:v6 totalBytes:v6];
    [*(a1 + 48) endTransfer:*(a1 + 56)];
    v7 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Done uploading me-sticker %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    if ([*(a1 + 32) isSticker])
    {
      v9 = +[IMMetricsCollector sharedInstance];
      [v9 trackEvent:IMMetricsCollectorEventStickerSent];
    }

    if ([*(a1 + 32) shouldFastSend])
    {
      if ([*(a1 + 32) isSticker])
      {
        v10 = [*(a1 + 32) stickerUserInfo];
        v11 = [v10 objectForKey:IMStickerUserInfoStickerHashKey];
      }

      else
      {
        v11 = 0;
      }

      if ([v11 length])
      {
        v13 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Sticker file hash present in sticker user info dictionary", buf, 2u);
        }

        v12 = v11;
      }

      else
      {
        v14 = *(a1 + 72);
        v15 = [*(a1 + 32) localURL];
        v16 = [v15 path];
        v12 = [v14 _fileHash:v16];

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Client did not pass in sticker hash. Calculating hash at imagent", buf, 2u);
          }
        }
      }

      v18 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Sticker file hash %@", buf, 0xCu);
      }

      v19 = [*(a1 + 72) _transferInfoForKey:v12];
      v20 = [v19 objectForKey:@"sticker-TimeInterval"];
      [v20 doubleValue];
      v22 = v21;

      +[NSDate timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [v19 objectForKey:@"download-credentials"];
      v26 = [v19 objectForKey:@"v"];
      v27 = [v26 integerValue];

      [*(a1 + 72) _stickerUploadTTL];
      v29 = v28;
      v30 = IMAttachmentsLogHandle();
      v31 = v24 - v22;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219522;
        *&buf[4] = v24;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        v94 = *&v29;
        *v95 = 2048;
        *&v95[2] = v24 - v22;
        *&v95[10] = 2112;
        *&v95[12] = v19;
        v96 = 2048;
        v97 = v27;
        v98 = 2048;
        v99 = 1;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Sticker transfer currentTimeIntervale %f, uploadTimeInterval %f, kStickerUploadTTL %f, timeDifference %f, transferInfo %@, version %ld, expectedVersion %ld", buf, 0x48u);
      }

      if (v19 && v31 >= 0.0 && v31 < v29 && v25 && v27 == &dword_0 + 1)
      {
        v32 = objc_alloc_init(FTiMessageRequestMMCSFileRefreshToken);
        AttachmentRefreshUtilConfigureStickerToken(v32, v25);
        v33 = [*(a1 + 72) attachmentRefreshDeliveryController];
        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_5C5E4;
        v77[3] = &unk_113608;
        v34 = *(a1 + 72);
        v78 = v19;
        v79 = v34;
        v80 = v12;
        v81 = *(a1 + 32);
        v82 = v25;
        v83 = *(a1 + 40);
        v35 = *(a1 + 48);
        v36 = *(a1 + 56);
        v84 = v35;
        v85 = v36;
        v86 = *(a1 + 80);
        v87 = *(a1 + 64);
        v37 = v25;
        v38 = v12;
        v39 = v19;
        [v33 sendFTMessage:v32 attempts:0 withCompletionBlock:v77];

        return;
      }
    }

    else
    {
      v12 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v94 = sub_58FDC;
    *v95 = sub_58FEC;
    *&v95[8] = [IMDAttachmentUtilities fetchSizeLimitsForTransfer:*(a1 + 32) mode:*(a1 + 136)];
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v40 = [*(*&buf[8] + 40) firstObject];
    v41 = [v40 integerValue];

    v76[3] = v41;
    v42 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(*&buf[8] + 40);
      *v88 = 138412290;
      v89 = v43;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Calculated size limits: %@", v88, 0xCu);
    }

    v44 = +[IMDAttachmentUtilities modernHighQualityPhotoSizeLimit];
    v45 = [NSNumber numberWithInteger:v44];
    v92 = v45;
    v46 = [NSArray arrayWithObjects:&v92 count:1];

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_5CC78;
    v60[3] = &unk_1136F8;
    v47 = *(a1 + 32);
    v60[4] = *(a1 + 72);
    v73 = buf;
    v61 = v47;
    v62 = *(a1 + 88);
    v63 = *(a1 + 96);
    v48 = v46;
    v64 = v48;
    v74 = v76;
    v75 = v44;
    v65 = *(a1 + 64);
    v72 = *(a1 + 128);
    v66 = *(a1 + 80);
    v49 = v12;
    v67 = v49;
    v68 = *(a1 + 104);
    v69 = *(a1 + 112);
    v70 = *(a1 + 40);
    v58 = *(a1 + 48);
    v50 = v58.i64[0];
    v71 = vextq_s8(v58, v58, 8uLL);
    v51 = objc_retainBlock(v60);
    v52 = *(a1 + 120);
    v53 = [*(a1 + 32) localURL];
    v59 = 0;
    [v52 coordinateReadingItemAtURL:v53 options:0 error:&v59 byAccessor:v51];
    v54 = v59;

    if (v54)
    {
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = [*(a1 + 32) localURL];
          *v88 = 138412546;
          v89 = v56;
          v90 = 2112;
          v91 = v54;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "Failed coordinated read of: %@  (Error: %@)", v88, 0x16u);
        }
      }

      v57 = [*(a1 + 32) localURL];
      (v51[2])(v51, v57);
    }

    _Block_object_dispose(v76, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_5C5E4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [*(a1 + 32) mutableCopy];
    [v6 removeObjectForKey:@"sticker-TimeInterval"];
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithDouble:?];
    [v6 setObject:v7 forKey:@"sticker-TimeInterval"];

    [*(a1 + 40) _setTransferInfo:v6 key:*(a1 + 48)];
    v8 = IMStickerUserInfoStickerTranscodedStickerHashKey;
    v9 = [*(a1 + 32) objectForKey:IMStickerUserInfoStickerTranscodedStickerHashKey];
    if ([*(a1 + 40) _previewAttachmentEnabledForStickers] && objc_msgSend(v9, "length"))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [*(a1 + 56) stickerUserInfo];
          *buf = 138412290;
          v48 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "_previewAttachmentEnabled Updating sticker user info original info %@", buf, 0xCu);
        }
      }

      v12 = [*(a1 + 56) stickerUserInfo];
      v13 = [v12 mutableCopy];

      if (v13)
      {
        if (v9)
        {
          CFDictionarySetValue(v13, v8, v9);
        }

        [*(a1 + 56) setStickerUserInfo:v13];
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [*(a1 + 56) stickerUserInfo];
            *buf = 138412290;
            v48 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Resulting sticker info %@", buf, 0xCu);
          }
        }
      }
    }

    if ([*(a1 + 40) _previewAttachmentEnabledForStickers])
    {
      v16 = IMStickerUserInfoTranscodedScaleKey;
      v17 = [*(a1 + 32) valueForKey:IMStickerUserInfoTranscodedScaleKey];
      v18 = v17 == 0;

      if (!v18)
      {
        v19 = [*(a1 + 56) stickerUserInfo];
        v20 = IMStickerUserInfoScaleKey;
        v21 = [v19 valueForKey:IMStickerUserInfoScaleKey];
        v22 = v21 == 0;

        if (v22)
        {
          v26 = 1.0;
        }

        else
        {
          v23 = [*(a1 + 56) stickerUserInfo];
          v24 = [v23 valueForKey:v20];
          [v24 floatValue];
          v26 = v25;
        }

        v32 = [*(a1 + 32) valueForKey:v16];
        [v32 floatValue];
        v34 = v33;

        v35 = [*(a1 + 56) stickerUserInfo];
        v36 = [v35 mutableCopy];

        v37 = [NSString stringWithFormat:@"%.2f", (v26 * v34)];
        [v36 setObject:v37 forKey:v16];

        v38 = [v36 valueForKey:v20];
        v39 = v38 == 0;

        if (v39)
        {
          [v36 setObject:@"1.00" forKey:v20];
        }

        [*(a1 + 56) setStickerUserInfo:v36];
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = [*(a1 + 56) stickerUserInfo];
            *buf = 138412290;
            v48 = v41;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Update sticker user info dictionary %@", buf, 0xCu);
          }
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Done refreshing sticker with server", buf, 2u);
      }
    }

    [*(a1 + 56) setUserInfo:*(a1 + 64)];
    [*(a1 + 56) setMessageGUID:*(a1 + 72)];
    v43 = [*(a1 + 56) totalBytes];
    [*(a1 + 80) updateTransfer:*(a1 + 88) currentBytes:v43 totalBytes:v43];
    [*(a1 + 80) endTransfer:*(a1 + 88)];
    v44 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 56);
      *buf = 138412290;
      v48 = v45;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "Done uploading sticker %@", buf, 0xCu);
    }

    v46 = +[IMMetricsCollector sharedInstance];
    [v46 trackEvent:IMMetricsCollectorEventStickerSentUsingFastPath];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 72);
        *buf = 138412290;
        v48 = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Attachments Failed refreshing sticker with server for message GUID %@", buf, 0xCu);
      }
    }

    [*(a1 + 40) _deleteTransferInfoForKey:*(a1 + 48)];
    v29 = *(a1 + 80);
    v30 = *(a1 + 88);
    v31 = [NSError errorWithDomain:@"com.apple.private.AttachmentRefreshDelivery" code:1 userInfo:0];
    [v29 failTransfer:v30 error:v31];

    [*(a1 + 96) setFailed:1];
    [*(a1 + 96) setError:34];
  }

  dispatch_group_leave(*(a1 + 104));
}

void sub_5CC04(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x5C7F4);
  }

  _Unwind_Resume(a1);
}

void sub_5CC78(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([IMCTSMSUtilities IMIsEagerUploadEnabledForPhoneNumber:0 simID:0])
  {
    v75 = v3;
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 144) + 8) + 40);
    v6 = [*(a1 + 40) transcoderUserInfo];
    v7 = [v4 eagerUploadKeyForURL:v75 sizes:v5 transcodeDictionary:v6 capabilities:*(a1 + 48)];

    v8 = [*(a1 + 32) eagerUploadStatusForKey:v7];
    v9 = +[IMFeatureFlags sharedFeatureFlags];
    v10 = [v9 isLQMHQEnabled];

    if (v10 && [*(a1 + 56) isHQTransfer] && UTTypeConformsTo(objc_msgSend(*(a1 + 40), "type"), kUTTypeImage))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = [*(a1 + 40) transcoderUserInfo];
      v14 = [v11 eagerUploadKeyForURL:v75 sizes:v12 transcodeDictionary:v13 capabilities:*(a1 + 48)];

      v15 = [*(a1 + 32) eagerUploadStatusForKey:v14];

      *(*(*(a1 + 152) + 8) + 24) = *(a1 + 160);
      objc_storeStrong((*(*(a1 + 144) + 8) + 40), *(a1 + 64));
      v8 = v15;
      v7 = v14;
    }

    v74 = v7;
    if (!v8)
    {
      v16 = _iMessageTelemetryLogHandle();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MessageAttachment.eager.noRecord", " enableTelemetry=YES ", buf, 2u);
      }

      goto LABEL_36;
    }

    if ([v8 targetSize]< *(*(*(a1 + 152) + 8) + 24))
    {
      v16 = _iMessageTelemetryLogHandle();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MessageAttachment.eager.tooSmall", " enableTelemetry=YES ", buf, 2u);
      }

      v17 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "EAGER use - previous is too small, skipping", buf, 2u);
      }

LABEL_36:
      v3 = v75;
      goto LABEL_37;
    }

    if ([v8 isComplete])
    {
      if (![v8 isSuccess])
      {
        v29 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "EAGER use -- previous upload failed, retrying: %@", buf, 0xCu);
        }

        v30 = _iMessageTelemetryLogHandle();
        v31 = os_signpost_id_make_with_pointer(v30, v8);
        v32 = v30;
        v16 = v32;
        if (v31 && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, v31, "MessageAttachment.eager.skipError", " enableTelemetry=YES ", buf, 2u);
        }

        goto LABEL_36;
      }

      [v8 attachToTransfer:*(a1 + 40) message:*(a1 + 56) commonCapabilities:*(a1 + 48)];
      [v8 incrementUseCount];
      v18 = _iMessageTelemetryLogHandle();
      v19 = os_signpost_id_make_with_pointer(v18, v8);
      v20 = v18;
      v21 = v20;
      if (v19 && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_EVENT, v19, "MessageAttachment.eager.use", " enableTelemetry=YES ", buf, 2u);
      }

      v22 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 40) userInfo];
        *buf = 138412546;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "EAGER use -- ready, use previous upload: %@, transfer %@", buf, 0x16u);
      }

      dispatch_group_leave(*(a1 + 72));
    }

    else
    {
      v24 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "EAGER use -- wait for complete: %@", buf, 0xCu);
      }

      v25 = _iMessageTelemetryLogHandle();
      v26 = os_signpost_id_make_with_pointer(v25, v8);
      v27 = v25;
      v28 = v27;
      if (v26 && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "MessageAttachment.eager.wait", " enableTelemetry=YES ", buf, 2u);
      }

      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_5DA64;
      v109[3] = &unk_113630;
      v110 = v28;
      v118 = v26;
      v111 = v8;
      v112 = *(a1 + 40);
      v113 = *(a1 + 56);
      v114 = *(a1 + 48);
      v117 = *(a1 + 136);
      v115 = *(a1 + 80);
      v116 = *(a1 + 72);
      v21 = v28;
      [v111 wait:v109];
    }

    goto LABEL_66;
  }

LABEL_37:
  v33 = v3;
  v34 = [v3 pathExtension];
  if ([v34 length])
  {
    v74 = v34;
  }

  else
  {
    v35 = +[IMFileManager defaultHFSFileManager];
    v36 = [*(a1 + 40) type];
    v37 = [v35 pathExtensionForUTIType:v36];

    if ([v37 length])
    {
      v38 = v37;
    }

    else
    {
      v39 = +[IMFileManager defaultHFSFileManager];
      v40 = [*(a1 + 40) mimeType];
      v41 = [v39 pathExtensionForMIMEType:v40];

      v38 = v41;
    }

    v74 = v38;
    if ([v38 length])
    {
      v42 = [v33 absoluteString];
      v43 = [v42 stringByDeletingPathExtension];

      v44 = [v43 stringByAppendingPathExtension:v74];
      v45 = [v44 __im_apfsCompatibleFilename];

      if ([v45 length])
      {
        v46 = [NSURL fileURLWithPath:v45];

        v33 = v46;
      }
    }
  }

  v75 = v33;
  if (v33)
  {
    v47 = +[NSFileManager defaultManager];
    v33 = [v47 im_generateCopyForURL:v33];
  }

  v48 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v75;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Source URL: %@  Link: %@", buf, 0x16u);
  }

  v49 = dispatch_group_create();
  v50 = objc_alloc_init(NSMutableArray);
  v51 = objc_alloc_init(MessageAttachmentSingleStatus);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v124 = sub_58FDC;
  v125 = sub_58FEC;
  v126 = 0;
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x3032000000;
  v107[3] = sub_58FDC;
  v107[4] = sub_58FEC;
  v108 = 0;
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_5DDD0;
  v102[3] = &unk_113658;
  v52 = *(a1 + 40);
  v102[4] = *(a1 + 32);
  v103 = v52;
  v104 = *(a1 + 88);
  v105 = buf;
  v106 = v107;
  v73 = objc_retainBlock(v102);
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_5E2A0;
  v93[3] = &unk_113680;
  v93[4] = *(a1 + 32);
  v94 = *(a1 + 96);
  v95 = *(a1 + 104);
  v53 = *(a1 + 112);
  v54 = *(a1 + 120);
  v96 = v53;
  v97 = v54;
  v55 = v50;
  v98 = v55;
  v99 = *(a1 + 80);
  v56 = v51;
  v100 = v56;
  v8 = v49;
  v101 = v8;
  v57 = objc_retainBlock(v93);
  v58 = v75;
  if (v33)
  {
    v58 = v33;
  }

  v59 = v58;
  v60 = [*(a1 + 40) sandboxToken];
  v61 = v60;
  if (v60)
  {
    v62 = v60;
    [v61 UTF8String];
    v63 = sandbox_extension_consume();
    if (v63 != -1)
    {
      goto LABEL_59;
    }

    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *v119 = 138412546;
        v120 = v59;
        v121 = 2112;
        v122 = v61;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "Failed to consume sandbox token, %@ token: %@", v119, 0x16u);
      }
    }
  }

  v63 = -1;
LABEL_59:
  [*(a1 + 32) _transcodeURL:v59 reason:2 transfer:*(a1 + 40) sizes:*(*(*(a1 + 144) + 8) + 40) commonCapabilities:*(a1 + 48) sendStatus:*(a1 + 80) urlGroup:v8 didTranscode:v73 handleURL:v57];
  if (v63 != -1 && sandbox_extension_release() == -1 && IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *v119 = 138412546;
      v120 = v59;
      v121 = 2112;
      v122 = v61;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "Failed to release sandbox token, %@ token: %@", v119, 0x16u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5E384;
  block[3] = &unk_1136D0;
  v90 = v107;
  v77 = *(a1 + 80);
  v78 = v33;
  v66 = *(a1 + 128);
  v67 = *(a1 + 120);
  v79 = v66;
  v80 = v67;
  v81 = *(a1 + 56);
  v82 = v55;
  v83 = *(a1 + 32);
  v68 = *(a1 + 48);
  v69 = *(a1 + 144);
  v84 = v68;
  v91 = v69;
  v85 = *(a1 + 64);
  v92 = buf;
  v86 = *(a1 + 88);
  v89 = *(a1 + 136);
  v87 = v56;
  v88 = *(a1 + 72);
  v70 = v56;
  v71 = v55;
  v72 = v33;
  dispatch_group_notify(v8, &_dispatch_main_q, block);

  _Block_object_dispose(v107, 8);
  _Block_object_dispose(buf, 8);

LABEL_66:
}

void sub_5DA64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 96);
  if (*(a1 + 96) && os_signpost_enabled(v2))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, v4, "MessageAttachment.eager.wait", " enableTelemetry=YES ", &v28, 2u);
  }

  v5 = [*(a1 + 40) isSuccess];
  v6 = *(a1 + 40);
  if (!v5)
  {
    v10 = [v6 attachmentStatus];
    v16 = *(a1 + 32);
    v17 = v16;
    v18 = *(a1 + 96);
    if (*(a1 + 96) && os_signpost_enabled(v16))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_EVENT, v18, "MessageAttachment.eager.useFail", " enableTelemetry=YES ", &v28, 2u);
    }

    v19 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = [v10 transferError];
      v28 = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "EAGER use -- waited, failed: %@, error %@", &v28, 0x16u);
    }

    v22 = *(a1 + 88);
    if (v22)
    {
      v23 = [v10 transferError];
      v24 = [v10 errorURLString];
      v25 = [v10 errorFileSize];
      v26 = [v10 additionalErrorInfo];
      (*(v22 + 16))(v22, v23, v24, v25, v26);
    }

    [*(a1 + 72) setFailed:1];
    [*(a1 + 72) setError:34];
    v12 = IMAttachmentsLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v27 = *(a1 + 72);
    v28 = 138412290;
    v29 = v27;
    v13 = "EAGER use -- Set overall status to fail %@";
    v14 = v12;
    v15 = 12;
LABEL_19:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v13, &v28, v15);
LABEL_20:

    goto LABEL_21;
  }

  [v6 attachToTransfer:*(a1 + 48) message:*(a1 + 56) commonCapabilities:*(a1 + 64)];
  [*(a1 + 40) incrementUseCount];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 96);
  if (*(a1 + 96) && os_signpost_enabled(v7))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, v9, "MessageAttachment.eager.use", " enableTelemetry=YES ", &v28, 2u);
  }

  v10 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) userInfo];
    v28 = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v13 = "EAGER use -- waited, use upload: %@, transfer %@";
    v14 = v10;
    v15 = 22;
    goto LABEL_19;
  }

LABEL_21:

  dispatch_group_leave(*(a1 + 80));
}

void sub_5DDD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 isSticker] && objc_msgSend(v8, "count") && objc_msgSend(*(a1 + 32), "_previewAttachmentEnabledForStickers"))
  {
    v10 = [v9 valueForKey:IMTranscoderAdditionalContextScaleFactorKey];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v10;
        v45 = 2112;
        v46 = v9;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "scaleFactorArray after transcoding %@ additionalContext %@", buf, 0x16u);
      }
    }

    if ([v10 count])
    {
      v12 = [v7 stickerUserInfo];
      v13 = IMStickerUserInfoScaleKey;
      v14 = [v12 valueForKey:IMStickerUserInfoScaleKey];
      v15 = v14 == 0;

      if (v15)
      {
        v19 = 1.0;
      }

      else
      {
        v16 = [v7 stickerUserInfo];
        v17 = [v16 valueForKey:v13];
        [v17 floatValue];
        v19 = v18;
      }

      v20 = [v10 objectAtIndex:0];
      [v20 floatValue];
      v22 = v21;

      v23 = [v7 stickerUserInfo];
      v24 = [v23 mutableCopy];

      v25 = [NSString stringWithFormat:@"%.2f", (v19 * v22)];
      [v24 setObject:v25 forKey:IMStickerUserInfoTranscodedScaleKey];

      v26 = [v24 valueForKey:v13];
      LODWORD(v25) = v26 == 0;

      if (v25)
      {
        [v24 setObject:@"1.00" forKey:v13];
      }

      [v7 setStickerUserInfo:v24];
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [*(a1 + 40) stickerUserInfo];
          *buf = 138412290;
          v44 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Update sticker user info dictionary %@", buf, 0xCu);
        }
      }
    }

    v29 = [v8 firstObject];
    v30 = [v29 path];
    v31 = IMSharedHelperMD5HashOfFileAtPath();

    if ([v31 isEqualToString:*(a1 + 48)])
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = *(a1 + 48);
          *buf = 138412546;
          v44 = v31;
          v45 = 2112;
          v46 = v33;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "We tried to transcode sticker but output file is the same outPutHash hash %@ original hash %@", buf, 0x16u);
        }
      }

      v34 = 0;
    }

    else
    {
      v34 = v31;
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = *(a1 + 48);
          *buf = 138412546;
          v44 = v34;
          v45 = 2112;
          v46 = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Computed new transcoded hash %@ original hash %@ ", buf, 0x16u);
        }
      }
    }

    v37 = [v34 copy];
    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    v40 = [v8 copy];
    v41 = *(*(a1 + 64) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;
  }
}

void sub_5E2A0(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a3;
  v12 = a2;
  v15 = [v7 msgSession];
  v13 = [v15 sessionSpecificTransferIDForTransferID:a1[8]];
  LOBYTE(v14) = a4;
  [v7 _sendURL:v12 urlToRemove:v11 topic:v8 sessionInfo:v9 messageGUID:v10 transferID:v13 fileTransferGUID:a1[8] attachmentSendContexts:a1[9] failIfError:v14 sendStatus:a1[10] attachmentStatus:a1[11] group:a1[12]];
}

void sub_5E384(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 136) + 8) + 40);
    v4 = [*(a1 + 32) failed];
    v5 = @"YES";
    if (v4)
    {
      v5 = @"NO";
    }

    *buf = 138412546;
    v53 = v3;
    v54 = 2112;
    v55 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "  All done url set for: %@   success: %@", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v6 = +[NSFileManager defaultManager];
    v7 = *(a1 + 40);
    v51 = 0;
    v8 = [v6 removeItemAtURL:v7 error:&v51];
    v9 = v51;

    if ((v8 & 1) == 0)
    {
      v10 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 138412546;
        v53 = v11;
        v54 = 2112;
        v55 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Error cleaning up linked path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = [*(a1 + 48) transferForGUID:*(a1 + 56)];
  if (([*(a1 + 32) failed] & 1) == 0)
  {
    [*(a1 + 64) addTelemetryMetricForKey:1];
    v25 = [(__CFString *)v12 attachmentSendContexts];
    v30 = +[IMFeatureFlags sharedFeatureFlags];
    v31 = [v30 isLQMHQEnabled];

    if (v31)
    {
      if (v25 && ([(__CFString *)v12 wantsAlphaRemoved]& 1) == 0)
      {
        v32 = [*(a1 + 64) isHQTransfer];
        goto LABEL_31;
      }
    }

    else if (v25)
    {
      v32 = [(__CFString *)v12 wantsAlphaRemoved];
LABEL_31:
      if ((v32 & 1) == 0)
      {
        [*(a1 + 72) addObjectsFromArray:v25];
      }
    }

    v33 = *(a1 + 80);
    v34 = [objc_opt_class() _combinedTransferUserInfoForAttachmentSendContexts:*(a1 + 72) transfer:v12 message:*(a1 + 64) commonCapabilities:*(a1 + 88)];
    v35 = +[IMFeatureFlags sharedFeatureFlags];
    v36 = [v35 isLQMHQEnabled];

    if (v36 && *(*(*(a1 + 144) + 8) + 40) == *(a1 + 96))
    {
      CFDictionarySetValue(v34, @"isHQTransfer", @"YES");
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v53 = v34;
        v54 = 2112;
        v55 = v12;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "  setting userinfo: %@  on transfer: %@", buf, 0x16u);
      }
    }

    [(__CFString *)v12 setUserInfo:v34];
    [(__CFString *)v12 setAttachmentSendContexts:*(a1 + 72)];
    v38 = *(a1 + 72);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_5EA40;
    v42[3] = &unk_1136A8;
    v43 = v12;
    v44 = v34;
    v39 = *(a1 + 152);
    v45 = *(a1 + 80);
    v50 = v39;
    v46 = *(a1 + 104);
    v47 = *(a1 + 64);
    v40 = *(a1 + 48);
    v41 = *(a1 + 56);
    v48 = v40;
    v49 = v41;
    v27 = v34;
    [v38 enumerateObjectsUsingBlock:v42];

    v29 = v43;
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "  NOT setting userInfo: transfer %@ did not complete successfully.", buf, 0xCu);
    }
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    v15 = [*(a1 + 112) transferError];
    v16 = [*(a1 + 112) errorURLString];
    v17 = [*(a1 + 112) errorFileSize];
    v18 = [*(a1 + 112) additionalErrorInfo];
    (*(v14 + 16))(v14, v15, v16, v17, v18);

    if ([*(a1 + 64) isHQTransfer])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 56);
          *buf = 138412290;
          v53 = v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "HQ transfer failed for guid: %@", buf, 0xCu);
        }
      }

      [*(a1 + 64) setIsFailedHQTransfer:1];
      [*(a1 + 64) setErrorCode:0];
      v21 = +[IMDMessageStore sharedInstance];
      v22 = [v21 storeMessage:*(a1 + 64) forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

      v23 = +[IMDMessageStore sharedInstance];
      v24 = [*(a1 + 64) guid];
      v25 = [v23 messageWithGUID:v24];

      v26 = +[IMDBroadcastController sharedProvider];
      v27 = [v26 broadcasterForChatListeners];

      v28 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v25;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Notifying about message: %@", buf, 0xCu);
      }

      v29 = [(__CFDictionary *)v25 accountID];
      [(__CFDictionary *)v27 account:v29 chat:0 style:0 messageUpdated:v25];
LABEL_41:
    }
  }

  dispatch_group_leave(*(a1 + 120));
}

void sub_5EA40(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldFastSend])
  {
    v4 = [NSMutableDictionary alloc];
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    v6 = *(a1 + 40);
    v7 = [NSNumber numberWithInteger:1];
    v8 = [v4 initWithObjectsAndKeys:{v5, @"sticker-TimeInterval", v6, @"download-credentials", v7, @"v", 0}];

    if ([*(a1 + 48) _previewAttachmentEnabledForStickers] && objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "length"))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [*(a1 + 32) stickerUserInfo];
          *buf = 138412290;
          v31 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Updating sticker user info original info %@", buf, 0xCu);
        }
      }

      v11 = [*(a1 + 32) stickerUserInfo];
      v12 = [v11 mutableCopy];

      if (v12)
      {
        v13 = *(*(*(a1 + 88) + 8) + 40);
        if (v13)
        {
          CFDictionarySetValue(v12, IMStickerUserInfoStickerTranscodedStickerHashKey, v13);
        }

        [*(a1 + 32) setStickerUserInfo:v12];
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = [*(a1 + 32) stickerUserInfo];
            *buf = 138412290;
            v31 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Resulting sticker info %@", buf, 0xCu);
          }
        }
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Adding transcodeded hash to transfer info plist", buf, 2u);
        }
      }

      v17 = *(*(*(a1 + 88) + 8) + 40);
      if (v17)
      {
        CFDictionarySetValue(v8, IMStickerUserInfoStickerTranscodedStickerHashKey, v17);
      }

      v18 = [*(a1 + 32) stickerUserInfo];
      v19 = IMStickerUserInfoTranscodedScaleKey;
      v20 = [v18 valueForKey:IMStickerUserInfoTranscodedScaleKey];

      if (v20)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Adding transcodeded scale factor to transfer info plist", buf, 2u);
          }
        }

        v22 = [*(a1 + 32) stickerUserInfo];
        v23 = [v22 valueForKey:v19];

        if (v23)
        {
          CFDictionarySetValue(v8, v19, v23);
        }
      }
    }

    [*(a1 + 48) _setTransferInfo:v8 key:*(a1 + 56)];
  }

  v24 = *(a1 + 32);
  v25 = [*(a1 + 64) guid];
  [v24 setMessageGUID:v25];

  v26 = [v3 objectForKeyedSubscript:@"file-size"];
  v27 = [v26 unsignedLongLongValue];

  v29 = *(a1 + 72);
  v28 = a1 + 72;
  [v29 updateTransfer:*(v28 + 8) currentBytes:v27 totalBytes:v27];
  [*v28 endTransfer:*(v28 + 8)];
}

void sub_5EE5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x5EC68);
  }

  _Unwind_Resume(a1);
}

void sub_5EEB8(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) failed];
    v5 = @"YES";
    if (v4)
    {
      v5 = @"NO";
    }

    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "  All done transfer set for: %@   success: %@", buf, 0x16u);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 48), *(a1 + 56), *(a1 + 64), [*(a1 + 40) failed] ^ 1, objc_msgSend(*(a1 + 40), "error"));
  }

  v7 = [*(a1 + 48) guid];
  v8 = [*(a1 + 48) guid];
  v15[0] = v8;
  v14[1] = kAttachmentsAutomationSuccessKey;
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) failed] ^ 1);
  v15[1] = v9;
  v14[2] = kAttachmentsAutomationErrorKey;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) error]);
  v15[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  AttachmentsAutomationLogMilestoneWithOptionFlags();

  v12 = *(*(a1 + 80) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

uint64_t sub_5F228(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 stringByReplacingOccurrencesOfString:@"" withString:&stru_115E20];

    v6 = [*(a1 + 32) body];
    v7 = [v6 length];

    v8 = [*(a1 + 32) body];
    v9 = [v8 mutableCopy];

    [v9 addAttribute:IMAudioTranscription value:v5 range:{0, v7}];
    [*(a1 + 40) setAudioTranscriptionText:v5];
    [*(a1 + 32) setBody:v9];
    v10 = +[IMDMessageStore sharedInstance];
    v11 = [v10 storeMessage:*(a1 + 32) forceReplace:1 modifyError:0 modifyFlags:0 flagMask:{objc_msgSend(*(a1 + 32), "flags")}];

    [*(a1 + 32) addTelemetryMetricForKey:1];
  }

  else
  {
    [*(a1 + 40) setShouldNotTranscribeAudio:1];
    v5 = +[IMDAttachmentStore sharedInstance];
    [v5 storeAttachment:*(a1 + 40) associateWithMessageWithGUID:0];
  }

  v12 = *(*(a1 + 48) + 16);

  return v12();
}

void sub_5F5F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v55 = a2;
  v61 = a3;
  v56 = a4;
  v57 = a5;
  v59 = a8;
  v58 = +[IMDFileTransferCenter sharedInstance];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      v16 = *(a1 + 32);
      if (a7)
      {
        v15 = @"YES";
      }

      *buf = 138412546;
      v70 = v16;
      v71 = 2112;
      v72 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Transcode processing complete for transfer: %@  (Attempted Transcode: %@)", buf, 0x16u);
    }
  }

  if (a6)
  {
    v17 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v61;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Transcoding succeeded with output URLs: %@", buf, 0xCu);
    }

    v18 = [*(a1 + 32) localPath];
    v19 = [v18 lastPathComponent];

    v20 = [v61 __imFirstObject];
    v21 = [v20 path];
    v22 = [v21 lastPathComponent];
    v23 = [v22 __im_apfsCompatibleFilename];

    v54 = [v19 pathExtension];
    v24 = [v23 pathExtension];
    v25 = v24;
    if (v54 && v24 && ([(__CFString *)v54 isEqualToString:v24]& 1) == 0)
    {
      if ([*(a1 + 32) isAuxVideo] && (-[__CFString isEqualToIgnoringCase:](v54, "isEqualToIgnoringCase:", v25) & 1) != 0 || objc_msgSend(*(a1 + 32), "isAuxImage") && -[__CFString isEqualToIgnoringCase:](v54, "isEqualToIgnoringCase:", v25))
      {
        v26 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          *buf = 138412802;
          v70 = v27;
          v71 = 2112;
          v72 = v54;
          v73 = 2112;
          v74 = v25;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Not setting transferred filename for Aux  transfer %@, localExtension %@ , newExtension %@ ", buf, 0x20u);
        }
      }

      else
      {
        v28 = [v19 stringByDeletingPathExtension];
        v29 = [v28 stringByAppendingPathExtension:v25];
        v26 = [v29 __im_apfsCompatibleFilename];

        [*(a1 + 32) setTransferredFilename:v26];
        v30 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v26;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "          Setting transferred filename: %@", buf, 0xCu);
        }
      }
    }

    v31 = [v61 firstObject];
    if ([v61 count]< 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = [v61 objectAtIndex:1];
    }

    v33 = +[IMMetricsCollector sharedInstance];
    v34 = *(a1 + 88);
    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    v37 = [*(a1 + 32) isSticker];
    BYTE1(v53) = *(a1 + 96);
    LOBYTE(v53) = a7;
    [v33 trackiMessageTranscodeWithReason:v34 sourceFile:v35 highQualityFile:v31 lowQualityFile:v32 sizeLimits:v36 isSticker:v37 transcoded:v53 lowQualityModeEnabled:?];

    v38 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v61;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "All URLs: %@", buf, 0xCu);
    }

    v39 = *(a1 + 80);
    if (v39)
    {
      (*(v39 + 16))(v39, *(a1 + 32), v61, v59);
    }

    v40 = [v61 count]- 1;
    if (v40 >= 0)
    {
      while (1)
      {
        v41 = [v61 count];
        v42 = [v61 objectAtIndex:v40];
        if ([*(a1 + 64) failed])
        {
          break;
        }

        v43 = v40 + 1;
        v44 = v40 + 1 == v41;
        dispatch_group_enter(*(a1 + 56));
        v45 = +[IMTransferServicesCompressionController sharedInstance];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_5FDD0;
        v62[3] = &unk_113798;
        v63 = *(a1 + 32);
        v66 = *(a1 + 72);
        v67 = a7;
        v64 = *(a1 + 40);
        v68 = v44;
        v65 = *(a1 + 56);
        [v45 compressFileTransfer:v42 completionBlock:v62];

        v40 = v43 - 2;
        if ((v43 - 1) <= 0)
        {
          goto LABEL_48;
        }
      }
    }
  }

  else if ([*(a1 + 32) isAuxVideo])
  {
    v46 = *(a1 + 72);
    if (v46)
    {
      if (a7)
      {
        v47 = *(a1 + 40);
      }

      else
      {
        v47 = 0;
      }

      (*(v46 + 16))(v46, 0, v47, 0);
    }
  }

  else
  {
    [*(a1 + 64) setFailed:1];
    [*(a1 + 64) setError:25];
    v48 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v57;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Transcoding failed with error: %@", buf, 0xCu);
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = *(a1 + 32);
        *buf = 138412290;
        v70 = v50;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Failed transcoding transfer: %@", buf, 0xCu);
      }
    }

    v51 = [*(a1 + 32) guid];
    [v58 failTransfer:v51 reason:15];

    v52 = +[IMMetricsCollector sharedInstance];
    [v52 trackiMessageTranscodeFailureWithReason:*(a1 + 88) sourceFile:*(a1 + 40) sizeLimits:*(a1 + 48) isSticker:objc_msgSend(*(a1 + 32) lowQualityModeEnabled:{"isSticker"), *(a1 + 96)}];
  }

LABEL_48:
  dispatch_group_leave(*(a1 + 56));
}

void sub_5FDD0(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, int a6)
{
  v10 = a2;
  v11 = a3;
  v12 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a6)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v31 = 138412290;
    v32 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Compressed attachment: %@", &v31, 0xCu);
  }

  v14 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v10;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "           Input Path: %@", &v31, 0xCu);
  }

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v11;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "          Output Path: %@", &v31, 0xCu);
  }

  v16 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v31 = 138412290;
    v32 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "              Success: %@", &v31, 0xCu);
  }

  if (a6)
  {
    v18 = [*(a1 + 32) localPath];
    v19 = [v18 lastPathComponent];

    v20 = [(__CFString *)v11 path];
    v21 = [v20 lastPathComponent];

    v22 = [v19 pathExtension];
    v23 = [v21 pathExtension];
    v24 = v23;
    if (v22 && v23 && ([v22 isEqualToString:v23] & 1) == 0)
    {
      v25 = *(a1 + 32);
      v26 = [v19 stringByAppendingPathExtension:v24];
      [v25 setTransferredFilename:v26];

      v27 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 32) transferredFilename];
        v31 = 138412290;
        v32 = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "          Setting transferred filename: %@", &v31, 0xCu);
      }
    }
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    if (*(a1 + 64) == 1)
    {
      v30 = *(a1 + 40);
    }

    else
    {
      v30 = 0;
    }

    (*(v29 + 16))(v29, v11, v30, *(a1 + 65));
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_60530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Send progress updated to %lld of %lld (%lld bps)", &v13, 0x20u);
  }

  v9 = +[IMFeatureFlags sharedFeatureFlags];
  v10 = [v9 isLQMHQEnabled];

  if (v10)
  {
    v11 = [*(a1 + 32) transferForGUID:*(a1 + 40)];
    if ([v11 transferState] >= 4)
    {
      [v11 _setTransferState:1];
    }
  }

  v12 = +[IMDFileTransferCenter sharedInstance];
  [v12 updateTransfer:*(a1 + 40) currentBytes:a2 totalBytes:a3];
}

void sub_6067C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v69 = a2;
  *&v75 = COERCE_DOUBLE(a4);
  v74 = a5;
  value = a6;
  v71 = a7;
  v73 = a8;
  v70 = a9;
  v84[0] = kAttachmentsAutomationURLKey;
  v17 = *(a1 + 32);
  v18 = a1;
  v19 = [*(a1 + 40) path];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_115E20;
  }

  v85[0] = v21;
  v84[1] = kAttachmentsAutomationSuccessKey;
  v22 = [NSNumber numberWithBool:a3];
  v85[1] = v22;
  v23 = v74;
  if (!v74)
  {
    v23 = &stru_115E20;
  }

  v85[2] = v23;
  v84[2] = kAttachmentsAutomationAdditionalErrorInfoKey;
  v84[3] = kAttachmentsAutomationFileSizeKey;
  v24 = [NSNumber numberWithInteger:a10];
  v85[3] = v24;
  v25 = v75;
  if (*&v75 == 0.0)
  {
    v25 = &stru_115E20;
  }

  v84[4] = kAttachmentsAutomationErrorKey;
  v84[5] = kAttachmentsAutomationTransferGUIDKey;
  v26 = *(a1 + 48);
  if (!v26)
  {
    v26 = &stru_115E20;
  }

  v85[4] = v25;
  v85[5] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:6];
  AttachmentsAutomationLogMilestone();

  [*(a1 + 56) transferForGUID:*(a1 + 48)];
  v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v29 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v29)
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v79 = v28;
        v80 = 2112;
        v81 = @"YES";
        v82 = 2112;
        v83 = v75;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Finished uploading transfer: %@   success: %@  error: %@", buf, 0x20u);
      }
    }

    v31 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v33 = v32 - *(a1 + 104);
      *buf = 134217984;
      v79 = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Time taken: %f", buf, 0xCu);
    }

    v34 = [[NSMutableDictionary alloc] initWithCapacity:5];
    v35 = [v71 __imHexString];
    if (v35)
    {
      CFDictionarySetValue(v34, @"mmcs-signature-hex", v35);
    }

    if (value)
    {
      CFDictionarySetValue(v34, @"mmcs-owner", value);
    }

    if (v73)
    {
      CFDictionarySetValue(v34, @"mmcs-url", v73);
    }

    v36 = [v70 __imHexString];
    if (v36)
    {
      CFDictionarySetValue(v34, @"decryption-key", v36);
    }

    v37 = [NSNumber numberWithInteger:v68];
    if (v37)
    {
      CFDictionarySetValue(v34, @"file-size", v37);
    }

    [*(a1 + 80) addObject:v34];
  }

  else
  {
    if (v29)
    {
      v38 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v79 = v28;
        v80 = 2112;
        v81 = @"NO";
        v82 = 2112;
        v83 = v75;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Failed uploading transfer: %@   success: %@  error: %@", buf, 0x20u);
      }
    }

    v39 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      [*&v28 transferDataURL];
      v40 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v79 = v40;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "transfer data url: %@", buf, 0xCu);
    }

    v41 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v43 = v42 - *(a1 + 104);
      *buf = 134217984;
      v79 = v43;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Time taken: %f", buf, 0xCu);
    }

    if (*(a1 + 112) == 1)
    {
      v44 = [(__CFString *)v75 code];
      v46 = *(a1 + 48);
      v45 = *(a1 + 56);
      if (v44 == -6)
      {
        [v45 failTransfer:v46 reason:23];
      }

      else if (v44 == -5)
      {
        [v45 failTransfer:v46 reason:22];
      }

      else
      {
        [v45 failTransfer:v46 error:v75];
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v79 = *&v75;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "  setting complete success to NO because the smallest attachment failed. (Error: %@)", buf, 0xCu);
        }
      }

      [*(a1 + 64) setFailed:1];
      [*(a1 + 64) setError:_FZErrorTypeFromNSError()];
      [*(a1 + 72) setTransferError:v75];
      [*(a1 + 72) setAdditionalErrorInfo:v74];
      [*(a1 + 72) setErrorURLString:v73];
      [*(a1 + 72) setErrorFileSize:v68];
    }

    else if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = *&v75;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "  attachment failed to upload, but the smaller version hasn't failed yet. (Error: %@)", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 88))
  {
    v49 = +[NSFileManager defaultManager];
    v50 = *(a1 + 88);
    v77 = 0;
    v51 = [v49 removeItemAtURL:v50 error:&v77];
    v52 = v77;

    if ((v51 & 1) == 0 && IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = *(a1 + 88);
        *buf = 138412546;
        v79 = v54;
        v80 = 2112;
        v81 = v52;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "Error cleaning up transcoded path: %@  error: %@", buf, 0x16u);
      }
    }

    v55 = a1;
    v56 = *(a1 + 88);
  }

  else
  {
    v55 = a1;
    v56 = 0;
  }

  if (([*(v55 + 40) isEqual:v56] & 1) != 0 || (objc_msgSend(*(a1 + 40), "path"), (v57 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v64 = 0;
  }

  else
  {
    v58 = [*(a1 + 40) path];
    v59 = IMSafeTemporaryDirectory();
    v60 = [v59 path];
    if ([v58 hasPrefix:v60])
    {
      v61 = +[NSFileManager defaultManager];
      v62 = [*(a1 + 40) path];
      v76 = 0;
      v63 = [v61 removeItemAtPath:v62 error:&v76];
      v64 = v76;

      v65 = v63 ^ 1;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    if (v65)
    {
      v66 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        [*(v18 + 40) path];
        v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v79 = v67;
        v80 = 2112;
        v81 = v64;
        _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "Error cleaning up output path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  dispatch_group_leave(*(v18 + 96));
}

void sub_61384(uint64_t a1, void *a2)
{
  v3 = a2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_58FDC;
  v43 = sub_58FEC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_58FDC;
  v37 = sub_58FEC;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_58FDC;
  v31 = sub_58FEC;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_58FDC;
  v25 = sub_58FEC;
  v26 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_617CC;
  v20[3] = &unk_113860;
  v20[4] = &v21;
  v20[5] = &v39;
  v20[6] = &v33;
  v20[7] = &v27;
  [v3 enumerateKeysAndObjectsUsingBlock:v20];
  if ([v34[5] length] && objc_msgSend(v28[5], "length") && objc_msgSend(v40[5], "length") && objc_msgSend(v22[5], "length"))
  {
    v4 = v40[5];
    v53[0] = @"t";
    v53[1] = @"sT";
    v5 = v34[5];
    v54[0] = v4;
    v54[1] = v5;
    v54[2] = v28[5];
    v53[2] = @"sI";
    v53[3] = @"sP";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = IMChatCanonicalIDSIDsForAddress();
    v53[4] = @"tP";
    v9 = v22[5];
    v54[3] = v8;
    v54[4] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:5];
    (*(v7 + 16))(v7, v10);

    v11 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v40[5];
      v13 = v34[5];
      v14 = v28[5];
      *buf = 138412802;
      v46 = v12;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "-sessionInfoForBusinessReceipients:completion: found session info for business pushToken %@, sessionToken %@ and anonymizedSenderID %@", buf, 0x20u);
    }
  }

  else
  {
    v15 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v22[5];
      v17 = v40[5];
      v18 = v34[5];
      v19 = v28[5];
      *buf = 138413058;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      v49 = 2112;
      v50 = v18;
      v51 = 2112;
      v52 = v19;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "-sessionInfoForBusinessReceipients:completion: did not find session info for destinationID %@. pushToken %@ sessionToken %@ and anonymizedSenderID %@", buf, 0x2Au);
    }

    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

void sub_61780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id sub_617CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6184C;
  v6[3] = &unk_113838;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  v9 = a4;
  return [a3 enumerateObjectsUsingBlock:v6];
}

void sub_6184C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 URI];
  v8 = [v7 prefixedURI];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 32) + 8) + 40);
  if (IMStringIsBusinessID())
  {
    v12 = [v6 pushToken];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v6 sessionToken];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [v6 anonymizedSenderID];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    **(a1 + 64) = 1;
    *a4 = 1;
    v21 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(*(a1 + 56) + 8) + 40);
      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "-sessionInfoForBusinessReceipients:completion: returned YES and found session info for business endpoint %@ and anonymizedSenderID %@", &v23, 0x16u);
    }
  }
}

void sub_620C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      v28 = 138413314;
      v29 = v15;
      if (a6)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (a7)
      {
        v21 = @"YES";
      }

      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "transcoded URL {transferURL: %@, outputURLs: %@, error: %@, success: %@, attemptedTranscode: %@}", &v28, 0x34u);
    }
  }

  if (a6 && a7 && ([v16 lastObject], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, !v24))
  {
    v25 = *(a1 + 32);
    v26 = [v16 lastObject];
    v27 = [*(a1 + 40) guid];
    [v25 setObject:v26 forKey:v27];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_622C4(uint64_t a1)
{
  if (*(*(*(a1 + 104) + 8) + 24) != 1)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
LABEL_8:
        v10 = [*(a1 + 32) fileTransferGUIDs];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_62584;
        v21[3] = &unk_1138D8;
        v22 = *(a1 + 72);
        v11 = [v10 __imArrayByApplyingBlock:v21];

        v12 = +[MessageTranscodeController sharedInstance];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_625D8;
        v14[3] = &unk_113900;
        v14[4] = *(a1 + 80);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = *(a1 + 88);
        v20 = *(a1 + 112);
        v19 = *(a1 + 96);
        [v12 transcodePayloadData:v7 balloonBundleID:v9 attachments:v11 completionBlock:v14];

        return;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "sending msg with payload data", buf, 2u);
        }
      }

      v7 = [*(a1 + 32) payloadData];
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v9 = [*(a1 + 32) balloonBundleID];
    goto LABEL_8;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(v2 + 16);

    v6();
  }
}

id sub_62584(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 localPath];

  return v3;
}

void sub_64B38(uint64_t a1)
{
  group = dispatch_group_create();
  v1 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) fileTransferGUIDs];
    *buf = 138412290;
    v200 = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Checking message file tranfers: %@", buf, 0xCu);
  }

  v111 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableSet);
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v4 = [*(a1 + 32) fileTransferGUIDs];
  v5 = [v4 countByEnumeratingWithState:&v195 objects:v212 count:16];
  if (v5)
  {
    v6 = *v196;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v196 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v195 + 1) + 8 * i);
        v9 = +[IMDFileTransferCenter sharedInstance];
        v10 = [v9 transferForGUID:v8];

        if (v10)
        {
          [v3 addObject:v8];
          if ([(__CFString *)v10 isAuxImage])
          {
            v11 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v200 = v10;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "transfer %@ is Aux image", buf, 0xCu);
            }

            v12 = [IMFileTransfer AuxGUIDFromFileTransferGUID:v8];
            v13 = +[IMDFileTransferCenter sharedInstance];
            v14 = [v13 transferForGUID:v12];

            if (v14 && !+[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled])
            {
              [v3 addObject:v12];
            }

            else
            {
              v15 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = +[IMDAttachmentUtilities isPreviewAttachmentSizeEnabled];
                *buf = 138412546;
                v17 = @"NO";
                if (v16)
                {
                  v17 = @"YES";
                }

                v200 = v14;
                v201 = 2112;
                v202 = v17;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Did not find Aux video transfer %@ %@", buf, 0x16u);
              }

              [(__CFString *)v10 setIsAuxImage:0];
              [(__CFString *)v10 setAuxStateWasDowngraded:1];
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v200 = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Did not find transfer for guid %@", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v195 objects:v212 count:16];
    }

    while (v5);
  }

  theArray = objc_alloc_init(NSMutableArray);
  if ([v3 count])
  {
    v19 = 0;
    do
    {
      if (theArray)
      {
        v20 = [NSNumber numberWithBool:0];
        v21 = v20 == 0;

        if (!v21)
        {
          v22 = [NSNumber numberWithBool:0];
          CFArrayAppendValue(theArray, v22);
        }
      }

      ++v19;
    }

    while (v19 < [v3 count]);
  }

  v23 = [*(a1 + 32) guid];
  v210[0] = kAttachmentsAutomationMessageGUIDKey;
  v24 = [*(a1 + 32) guid];
  v25 = v24;
  v210[1] = kAttachmentsAutomationTransferGUIDsKey;
  v26 = &__NSArray0__struct;
  if (v3)
  {
    v26 = v3;
  }

  v211[0] = v24;
  v211[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v211 forKeys:v210 count:2];
  AttachmentsAutomationLogMilestoneWithOptionFlags();

  v28 = [*(a1 + 32) payloadData];
  v122 = [v28 length];

  v110 = objc_alloc_init(NSMutableSet);
  v193[0] = 0;
  v193[1] = v193;
  v193[2] = 0x3032000000;
  v193[3] = sub_58FDC;
  v193[4] = sub_58FEC;
  v194 = 0;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v29 = v3;
  v30 = [v29 countByEnumeratingWithState:&v189 objects:v209 count:16];
  if (v30)
  {
    obj = v29;
    v132 = 0;
    v31 = 0;
    v121 = *v190;
    while (1)
    {
      v32 = 0;
      v124 = v30;
      do
      {
        if (*v190 != v121)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v189 + 1) + 8 * v32);
        if (IMOSLoggingEnabled())
        {
          v34 = v32;
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v200 = v33;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "About to download transfer guid %@", buf, 0xCu);
          }

          v32 = v34;
        }

        v140 = [*(a1 + 40) transferForGUID:v33];
        if (v122)
        {
          [(__CFString *)v140 setHideAttachment:1];
        }

        v36 = [(__CFString *)v140 userInfo];
        v131 = v32;
        v37 = [(__CFString *)v36 _stringForKey:@"inline-attachment"];
        v38 = v37;
        if (v140)
        {
          v39 = v37 == 0;
        }

        else
        {
          v39 = 0;
        }

        v143 = v36;
        if (!v39)
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v200 = v33;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "No transfer found for guid: %@", buf, 0xCu);
            }
          }

          goto LABEL_150;
        }

        dispatch_group_enter(group);
        v41 = *(a1 + 40);
        v42 = [*(a1 + 32) accountID];
        [v41 assignTransfer:v33 toAccount:v42 otherPerson:*(a1 + 48)];
        v119 = v33;
        v120 = v38;

        v128 = [[NSMutableArray alloc] initWithCapacity:1];
        v129 = [[NSMutableArray alloc] initWithCapacity:1];
        v127 = [[NSMutableArray alloc] initWithCapacity:1];
        v130 = [[NSMutableArray alloc] initWithCapacity:1];
        v126 = [[NSMutableArray alloc] initWithCapacity:1];
        v125 = [[NSMutableArray alloc] initWithCapacity:1];
        v185 = 0;
        v186 = &v185;
        v187 = 0x2020000000;
        v188 = 0;
        v43 = [(__CFString *)v36 _stringForKey:@"mmcs-url"];
        v44 = [(__CFString *)v36 _stringForKey:@"mmcs-signature-hex"];
        v138 = [(__CFString *)v36 _stringForKey:@"mmcs-owner"];
        v45 = [(__CFString *)v36 objectForKey:@"file-size"];
        v46 = [v45 stringValue];

        v137 = [(__CFString *)v36 _stringForKey:@"decryption-key"];
        v133 = [(__CFString *)v140 type];
        v135 = v43 != 0;
        v134 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v140 isSending:0];
        v139 = [*(a1 + 56) _downloadRestrictionForUTIType:v133 fileSize:-[__CFString integerValue](v46 qualityType:"integerValue") isSticker:1 forceAutoDownloadIfPossible:-[__CFString isSticker](v140 lqmEnabled:{"isSticker"), *(a1 + 136), v134}];
        v47 = [v139 allowDownload];
        *(v186 + 24) = v47;
        if (v134 & 1 | ((v47 & 1) == 0))
        {
          if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = @"NO";
              if (*(v186 + 24))
              {
                v50 = @"YES";
              }

              else
              {
                v50 = @"NO";
              }

              if (v134)
              {
                v49 = @"YES";
              }

              *buf = 138412546;
              v200 = v50;
              v201 = 2112;
              v202 = v49;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "The first file wasn't allowed to auto download, let's look and see what we have... shouldAutoDownloadFile %@, lowQualityModeEnabled %@", buf, 0x16u);
            }
          }

          v51 = [NSNumber numberWithInteger:[(__CFString *)v46 integerValue]];
          [v139 collectMetricsForFailureWithReportedSize:v51];

          v52 = -9;
          while (1)
          {
            v53 = [NSString stringWithFormat:@"%@-%d", @"mmcs-url", v52 + 10];
            v141 = [(__CFString *)v143 _stringForKey:v53];

            v54 = [NSString stringWithFormat:@"%@-%d", @"mmcs-signature-hex", v52 + 10];
            v142 = [(__CFString *)v143 _stringForKey:v54];

            v55 = [NSString stringWithFormat:@"%@-%d", @"mmcs-owner", v52 + 10];
            v56 = [(__CFString *)v143 _stringForKey:v55];

            v57 = [NSString stringWithFormat:@"%@-%d", @"decryption-key", v52 + 10];
            v58 = [(__CFString *)v143 _stringForKey:v57];

            v59 = [NSString stringWithFormat:@"%@-%d", @"file-size", v52 + 10];
            v60 = [(__CFString *)v143 objectForKey:v59];
            v61 = [v60 stringValue];

            if (!v58 || !v56 || !v142 || !v141)
            {

              goto LABEL_99;
            }

            v62 = 0;
            if (!v61 || !v46)
            {
              goto LABEL_85;
            }

            v62 = [*(a1 + 56) _downloadRestrictionForUTIType:v133 fileSize:-[__CFString integerValue](v61 qualityType:"integerValue") isSticker:2 lqmEnabled:{-[__CFString isSticker](v140, "isSticker"), v134}];
            v63 = [v62 allowDownload];
            *(v186 + 24) = v63;
            if (v63 & 1) != 0 || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[__CFString integerValue](v61, "integerValue")), v64 = objc_claimAutoreleasedReturnValue(), [v62 collectMetricsForFailureWithReportedSize:v64], v64, (v186[3]))
            {
              [(__CFString *)v61 floatValue];
              v66 = v65;
              [(__CFString *)v46 floatValue];
              if (v66 <= v67)
              {
                break;
              }
            }

            if (IMOSLoggingEnabled())
            {
              v68 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                v69 = @"NO";
                if (*(v186 + 24))
                {
                  v69 = @"YES";
                }

                *buf = 138412802;
                v200 = v61;
                v201 = 2112;
                v202 = v46;
                v203 = 2112;
                v204 = v69;
                _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "Ignoring this file, still not allowed to auto download (localFileSizeString: %@), (fileSizeString:%@), shouldAutoDownload:%@ ", buf, 0x20u);
              }
            }

            v135 = 1;
LABEL_90:

            if (__CFADD__(v52++, 1))
            {
              goto LABEL_99;
            }
          }

          if (IMOSLoggingEnabled())
          {
            v70 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v200 = v61;
              v201 = 2112;
              v202 = v46;
              _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "Taking this file, we're good to grab it (this: %@ vs fileSizeString: %@)", buf, 0x16u);
            }
          }

          v135 = 1;
LABEL_85:
          if (IMOSLoggingEnabled())
          {
            v71 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v200 = v44;
              v201 = 2112;
              v202 = v46;
              _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, " => Assigning this one: %@ fileSize: %@", buf, 0x16u);
            }
          }

          v72 = v141;

          v73 = v142;
          v74 = v56;

          v75 = v61;
          v76 = v58;

          v62 = v62;
          v138 = v74;
          v139 = v62;
          v137 = v76;
          v46 = v75;
          v44 = v73;
          v43 = v72;
          goto LABEL_90;
        }

        if (IMOSLoggingEnabled())
        {
          v78 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v200 = v46;
            _os_log_impl(&dword_0, v78, OS_LOG_TYPE_INFO, "Grabbing the largest file we can find (size: %@)", buf, 0xCu);
          }
        }

        v135 = 1;
LABEL_99:
        if (IMOSLoggingEnabled())
        {
          v79 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v200 = v46;
            _os_log_impl(&dword_0, v79, OS_LOG_TYPE_INFO, "Will download file of size %@ ", buf, 0xCu);
          }
        }

        if (v135 && v43 != 0)
        {
          if ((!v44 || !v138 || !v46 || !v137) && IMOSLoggingEnabled())
          {
            v80 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v200 = v44;
              v201 = 2112;
              v202 = v138;
              v203 = 2112;
              v204 = v46;
              v205 = 2112;
              v206 = v137;
              _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "MessageService: Attachment download context is missing entries (signature = %@, ownerID = %@, fileSizeString = %@, encryptionKey = %@)", buf, 0x2Au);
            }
          }

          [(__CFString *)v128 addObject:v43];
          v81 = v44;
          if (!v44)
          {
            v116 = +[NSNull null];
            v81 = v116;
          }

          [(__CFString *)v129 addObject:v81];
          if (!v44)
          {
          }

          v82 = v138;
          if (!v138)
          {
            v115 = +[NSNull null];
            v82 = v115;
          }

          [(__CFString *)v127 addObject:v82];
          if (!v138)
          {
          }

          v83 = v46;
          if (!v46)
          {
            v114 = +[NSNull null];
            v83 = v114;
          }

          [v130 addObject:v83];
          if (!v46)
          {
          }

          v84 = v137;
          if (!v137)
          {
            v113 = +[NSNull null];
            v84 = v113;
          }

          [v126 addObject:v84];
          if (!v137)
          {
          }

          v85 = v139;
          if (!v139)
          {
            v112 = +[NSNull null];
            v85 = v112;
          }

          [v125 addObject:v85];
          if (!v139)
          {
          }
        }

        if (v135)
        {
          if (IMOSLoggingEnabled())
          {
            v86 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v200 = v129;
              _os_log_impl(&dword_0, v86, OS_LOG_TYPE_INFO, " => Settled on signatures: %@", buf, 0xCu);
            }
          }

          v87 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v200 = v140;
            _os_log_impl(&dword_0, v87, OS_LOG_TYPE_DEFAULT, " transfer: %@", buf, 0xCu);
          }

          v88 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v200 = v143;
            _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEFAULT, "    user info: %@", buf, 0xCu);
          }

          v89 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            v200 = v128;
            v201 = 2112;
            v202 = v127;
            v203 = 2112;
            v204 = v129;
            v205 = 2112;
            v206 = v126;
            v207 = 2112;
            v208 = v130;
            _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, " urlStrings: %@   owners: %@    signatures: %@  keys: %@  fileSizeStrings: %@", buf, 0x34u);
          }

          v90 = +[IMDStickerRegistry sharedInstance];
          v91 = [(__CFString *)v140 stickerUserInfo];
          v92 = [(__CFString *)v140 isAdaptiveImageGlyph];
          v156[0] = _NSConcreteStackBlock;
          v156[1] = 3221225472;
          v156[2] = sub_664E4;
          v156[3] = &unk_1139C8;
          v157 = v140;
          v158 = *(a1 + 64);
          v159 = *(a1 + 40);
          v93 = group;
          v175 = &v185;
          v182 = 0;
          v160 = v93;
          v161 = v119;
          v94 = *(a1 + 32);
          v95 = *(a1 + 56);
          v162 = v94;
          v163 = v95;
          v181 = v132;
          v183 = *(a1 + 137);
          v164 = theArray;
          v165 = v128;
          v166 = v127;
          v167 = v130;
          v168 = v129;
          v169 = v126;
          v170 = v125;
          v171 = *(a1 + 72);
          v172 = *(a1 + 80);
          v96 = v110;
          v97 = *(a1 + 96);
          v98 = *(a1 + 104);
          v173 = v96;
          v176 = v97;
          v99 = *(a1 + 112);
          v177 = *(a1 + 120);
          v178 = v98;
          v179 = v193;
          v180 = v99;
          v184 = 0;
          v174 = v111;
          [v90 retrieveStickerWithProperties:v91 isAdaptiveImageGlyph:v92 completionBlock:v156];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v100 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v100, OS_LOG_TYPE_INFO, " => No signature found, nothing to download here", buf, 2u);
            }
          }

          v101 = *(a1 + 40);
          v102 = [(__CFString *)v140 guid];
          [v101 failTransfer:v102 error:0];

          *(*(*(a1 + 96) + 8) + 24) = 0;
          *(*(*(a1 + 104) + 8) + 24) = 35;
          v103 = [v130 firstObject];
          *(*(*(a1 + 112) + 8) + 24) = [v103 integerValue];

          dispatch_group_leave(group);
        }

        _Block_object_dispose(&v185, 8);

        v31 = 1;
        v38 = v120;
LABEL_150:

        ++v132;
        v32 = v131 + 1;
      }

      while ((v131 + 1) != v124);
      v30 = [obj countByEnumeratingWithState:&v189 objects:v209 count:16];
      if (!v30)
      {

        if (v31)
        {
          v104 = &_dispatch_main_q;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_68810;
          block[3] = &unk_113A18;
          v105 = *(a1 + 32);
          v106 = *(a1 + 104);
          v146 = v105;
          v107 = *(a1 + 128);
          v152 = v106;
          v153 = v107;
          v144 = *(a1 + 88);
          v108 = v144;
          v151 = v144;
          v147 = *(a1 + 48);
          v154 = v193;
          v155 = *(a1 + 112);
          v148 = v110;
          v149 = v111;
          v150 = *(a1 + 40);
          dispatch_group_notify(group, &_dispatch_main_q, block);

          v109 = v146;
          goto LABEL_155;
        }

        goto LABEL_156;
      }
    }
  }

  v109 = v29;
LABEL_155:

LABEL_156:
  _Block_object_dispose(v193, 8);
}

void sub_664B8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Unwind_Resume(a1);
}

void sub_664E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v83 = a3;
  v84 = v4;
  if (v4 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 fileExistsAtPath:v4 isDirectory:0], v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Sticker found in cache %@", buf, 0xCu);
      }
    }

    v8 = [NSURL fileURLWithPath:v84];
    [*(a1 + 32) setUserInfo:0];
    if (v8 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), [v8 path], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "fileExistsAtPath:", v10), v10, v9, v11))
    {
      v12 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v84;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding gatekeeper properties to: %@", buf, 0xCu);
      }

      v13 = +[IMDFileTransferCenter sharedInstance];
      [v13 addDefaultGatekeeperPropertiesToDirectory:v84];

      [*(a1 + 32) _setLocalURL:v8];
      v14 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", buf, 0xCu);
      }

      v15 = +[IMCommSafetyRequestsManager sharedManager];
      [v15 checkExistingAttachmentSensitivityIfNeededFor:*(a1 + 32) attachmentURL:v8 isFromMe:{objc_msgSend(*(a1 + 40), "isFromMe")}];
      v16 = *(a1 + 48);
      v17 = [*(a1 + 32) guid];
      [v16 startFinalizingTransfer:v17];

      dispatch_group_leave(*(a1 + 56));
    }

    else if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Sticker not in cache. Attempting to download sticker ", buf, 2u);
      }
    }
  }

  else
  {
    v18 = +[IMLockdownManager sharedInstance];
    v19 = [v18 isInternalInstall];

    if (v19)
    {
      v20 = +[IMDefaults sharedInstance];
      v21 = [v20 getBoolFromDomain:IMCloudKitDefinesDomain forKey:@"ForceNoAutoDownload.iMessage" defaultValue:0];

      if (v21)
      {
        v22 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Forcing auto download behavior OFF due to default com.apple.madrid ForceNoAutoDownload.iMessage", buf, 2u);
        }

        *(*(*(a1 + 176) + 8) + 24) = 0;
      }
    }

    v23 = *(*(*(a1 + 176) + 8) + 24);
    v24 = IMAttachmentsLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, " ** Auto downloading file!", buf, 2u);
      }

      v26 = [*(a1 + 32) filename];
      v82 = [v26 lastPathComponent];

      v27 = +[NSFileManager defaultManager];
      v28 = [v27 im_randomTemporaryFileURLWithFileName:v82];
      v85 = [v28 path];

      [*(a1 + 48) acceptTransfer:*(a1 + 64) path:v85];
      +[NSDate timeIntervalSinceReferenceDate];
      v30 = v29;
      v81 = [IDSServerBag sharedInstanceForBagType:0];
      LOBYTE(v28) = [*(a1 + 80) _shouldDisableFasterDownload:v81 message:*(a1 + 72)];
      v31 = IMAttachmentsLogHandle();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v32)
        {
          v33 = [*(a1 + 72) balloonBundleID];
          v34 = [v33 length];
          *buf = 138412546;
          *&buf[4] = @"YES";
          *&buf[12] = 2048;
          *&buf[14] = v34;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Not dispatching timer shouldDisableFasterDownload:%@ [[message balloonBundleID] length] %lu", buf, 0x16u);
        }
      }

      else
      {
        if (v32)
        {
          *buf = 138412290;
          *&buf[4] = @"NO";
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Dispatching timer shouldDisableFasterDownload:%@", buf, 0xCu);
        }

        *(a1 + 233);
        v143[4] = _NSConcreteStackBlock;
        v143[5] = 3221225472;
        v143[6] = sub_676B4;
        v143[7] = &unk_113950;
        v36 = *(a1 + 88);
        v37 = *(a1 + 224);
        v144 = v36;
        v147 = v37;
        v145 = *(a1 + 72);
        v146 = *(a1 + 56);
        im_dispatch_after();

        v31 = v144;
      }

      v143[0] = 0;
      v143[1] = v143;
      v143[2] = 0x2020000000;
      v143[3] = [*(a1 + 96) count];
      v142[0] = 0;
      v142[1] = v142;
      v142[2] = 0x2020000000;
      v142[3] = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v155 = sub_58FDC;
      v156 = sub_58FEC;
      v157 = 0;
      v140[0] = 0;
      v140[1] = v140;
      v140[2] = 0x3032000000;
      v140[3] = sub_58FDC;
      v140[4] = sub_58FEC;
      v141 = 0;
      v139[0] = 0;
      v139[1] = v139;
      v139[2] = 0x2020000000;
      v139[3] = 0;
      v137[0] = 0;
      v137[1] = v137;
      v137[2] = 0x3032000000;
      v137[3] = sub_58FDC;
      v137[4] = sub_58FEC;
      v138 = 0;
      v135[0] = 0;
      v135[1] = v135;
      v135[2] = 0x3032000000;
      v135[3] = sub_58FDC;
      v135[4] = sub_58FEC;
      v136 = 0;
      v133[0] = 0;
      v133[1] = v133;
      v133[2] = 0x2020000000;
      v134 = 0;
      v38 = [*(a1 + 96) count];
      v39 = a1;
      if ((v38 - 1) >= 0)
      {
        do
        {
          v96 = [*(v39 + 96) objectAtIndexedSubscript:--v38];
          v40 = [*(v39 + 104) objectAtIndexedSubscript:v38];
          v41 = +[NSNull null];
          if (v40 == v41)
          {
            v95 = 0;
          }

          else
          {
            v95 = [*(v39 + 104) objectAtIndexedSubscript:v38];
          }

          v42 = [*(a1 + 112) objectAtIndexedSubscript:v38];
          v43 = +[NSNull null];
          if (v42 == v43)
          {
            v44 = 0;
          }

          else
          {
            v44 = [*(a1 + 112) objectAtIndexedSubscript:v38];
          }

          v45 = [*(a1 + 120) objectAtIndexedSubscript:v38];
          v46 = +[NSNull null];
          if (v45 == v46)
          {
            v94 = 0;
          }

          else
          {
            v94 = [*(a1 + 120) objectAtIndexedSubscript:v38];
          }

          v47 = [*(a1 + 128) objectAtIndexedSubscript:v38];
          v48 = +[NSNull null];
          if (v47 == v48)
          {
            v93 = 0;
          }

          else
          {
            v93 = [*(a1 + 128) objectAtIndexedSubscript:v38];
          }

          v49 = [*(a1 + 136) objectAtIndexedSubscript:v38];
          v50 = +[NSNull null];
          if (v49 == v50)
          {
            v89 = 0;
          }

          else
          {
            v89 = [*(a1 + 136) objectAtIndexedSubscript:v38];
          }

          v129 = 0;
          v130 = &v129;
          v131 = 0x2020000000;
          v132 = [v44 unsignedIntValue];
          v51 = v85;
          v52 = [v51 stringByDeletingLastPathComponent];
          v53 = [NSString stringWithFormat:@"%tu", v38];
          v54 = [v51 lastPathComponent];

          v55 = [v52 stringByAppendingPathComponent:v53];
          v97 = [v55 stringByAppendingPathComponent:v54];

          v56 = +[NSFileManager defaultManager];
          v57 = [v97 stringByDeletingLastPathComponent];
          v128 = 0;
          LOBYTE(v54) = [v56 createDirectoryAtPath:v57 withIntermediateDirectories:0 attributes:0 error:&v128];
          v90 = v128;

          if ((v54 & 1) == 0 && IMOSLoggingEnabled())
          {
            v58 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = [v97 stringByDeletingLastPathComponent];
              v60 = [v59 stringByResolvingAndStandardizingPath];
              *v150 = 138412546;
              v151 = v60;
              v152 = 2112;
              v153 = v90;
              _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Attachments: Error while creating a temp directory at %@: %@", v150, 0x16u);
            }
          }

          v61 = [*(a1 + 72) guid];
          v62 = &stru_115E20;
          if (v96)
          {
            v62 = v96;
          }

          v148[0] = kAttachmentsAutomationURLKey;
          v148[1] = kAttachmentsAutomationFileSizeKey;
          v63 = &off_1193E0;
          if (v44)
          {
            v63 = v44;
          }

          v149[0] = v62;
          v149[1] = v63;
          v64 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:2];
          AttachmentsAutomationLogMilestone();

          v87 = v44;
          v92 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
          [*(a1 + 80) networkMonitorDidUpdate:v92];
          v65 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *v150 = 138412290;
            v151 = v97;
            _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "Receiving file at temporary local URL: %@", v150, 0xCu);
          }

          v91 = +[IMTransferServicesController sharedInstance];
          v66 = +[NSString stringGUID];
          v67 = [*(a1 + 32) guid];
          v68 = *(a1 + 144);
          v69 = [v97 stringByResolvingAndStandardizingPath];
          v70 = [v94 _FTDataFromHexString];
          v71 = [v93 _FTDataFromHexString];
          v72 = v130[3];
          v73 = [*(a1 + 72) balloonBundleID];
          v86 = *(a1 + 40);
          v124[0] = _NSConcreteStackBlock;
          v124[1] = 3221225472;
          v124[2] = sub_6783C;
          v124[3] = &unk_113978;
          v125 = *(a1 + 152);
          v74 = *(a1 + 32);
          v75 = *(a1 + 64);
          v126 = v74;
          v127 = v75;
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_6798C;
          v99[3] = &unk_1139A0;
          v110 = v143;
          v100 = *(a1 + 32);
          v122 = v30;
          v101 = *(a1 + 72);
          v102 = v51;
          v88 = v87;
          v103 = v88;
          v111 = &v129;
          v112 = v142;
          v113 = buf;
          v114 = v140;
          v76 = v89;
          v104 = v76;
          v115 = v139;
          v116 = v137;
          v117 = v135;
          v118 = v133;
          v105 = *(a1 + 48);
          v77 = *(a1 + 160);
          v78 = *(a1 + 64);
          v106 = v77;
          v107 = v78;
          v119 = *(a1 + 184);
          v120 = *(a1 + 200);
          v121 = *(a1 + 216);
          v79 = *(a1 + 88);
          v80 = *(a1 + 224);
          v108 = v79;
          v123 = v80;
          v109 = *(a1 + 56);
          [v91 receiveFileTransfer:v66 transferGUID:v67 topic:v68 path:v69 requestURLString:v96 ownerID:v95 signature:v70 decryptionKey:v71 fileSize:v72 balloonBundleID:v73 senderContext:v86 progressBlock:v124 completionBlock:v99];

          _Block_object_dispose(&v129, 8);
          v39 = a1;
        }

        while (v38 > 0);
      }

      _Block_object_dispose(v133, 8);
      _Block_object_dispose(v135, 8);

      _Block_object_dispose(v137, 8);
      _Block_object_dispose(v139, 8);
      _Block_object_dispose(v140, 8);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v142, 8);
      _Block_object_dispose(v143, 8);
    }

    else
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, " ** Not auto downloading file!", buf, 2u);
      }

      dispatch_group_leave(*(a1 + 56));
      if (*(a1 + 234) == 1)
      {
        [*(a1 + 168) addObject:*(a1 + 32)];
      }
    }
  }
}

void sub_676B4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 56)];
  v3 = [v2 BOOLValue];

  v4 = IMAttachmentsLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Not Calling dispatch group leave in timer block ", &v9, 2u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = [*(a1 + 40) guid];
      v9 = 134218242;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Timed out downloading attachment at index %lu for message %@", &v9, 0x16u);
    }

    v8 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Calling dispatch group leave in timer block", &v9, 2u);
    }

    [*(a1 + 32) setObject:&__kCFBooleanTrue atIndexedSubscript:*(a1 + 56)];
    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_6783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218496;
    v13 = a2;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Receive progress updated to %lld of %lld (%lld bps)", &v12, 0x20u);
  }

  v9 = +[IMFeatureFlags sharedFeatureFlags];
  v10 = [v9 isLQMHQEnabled];

  if (v10 && [*(a1 + 32) isEqual:@"YES"] && objc_msgSend(*(a1 + 40), "transferState") >= 4)
  {
    [*(a1 + 40) _setTransferState:1];
  }

  v11 = +[IMDFileTransferCenter sharedInstance];
  [v11 updateTransfer:*(a1 + 48) currentBytes:a2 totalBytes:a3];
}

void sub_6798C(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v112 = a2;
  v12 = COERCE_DOUBLE(a3);
  v13 = a6;
  v14 = a7;
  --*(*(*(a1 + 112) + 8) + 24);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = @"NO";
      *buf = 138412802;
      if (a4)
      {
        v17 = @"YES";
      }

      v119 = v16;
      v120 = 2112;
      v121 = v17;
      v122 = 2112;
      v123 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Finished downloading transfer: %@   success: %@  error: %@", buf, 0x20u);
    }
  }

  v18 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v20 = v19 - *(a1 + 224);
    *buf = 134217984;
    v119 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Time taken: %f", buf, 0xCu);
  }

  v21 = [*(a1 + 40) guid];
  v116[0] = kAttachmentsAutomationURLKey;
  v22 = [*(a1 + 48) stringByResolvingAndStandardizingPath];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_115E20;
  }

  v25 = *(a1 + 56);
  if (!v25)
  {
    v25 = &off_1193E0;
  }

  v117[0] = v24;
  v117[1] = v25;
  v116[1] = kAttachmentsAutomationFileSizeKey;
  v116[2] = kAttachmentsAutomationSuccessKey;
  v26 = [NSNumber numberWithBool:a4];
  v117[2] = v26;
  v116[3] = kAttachmentsAutomationErrorKey;
  v116[4] = kAttachmentsAutomationAdditionalErrorInfoKey;
  if (v13)
  {
    v27 = v13;
  }

  else
  {
    v27 = &stru_115E20;
  }

  if (v14)
  {
    v28 = v14;
  }

  else
  {
    v28 = &stru_115E20;
  }

  v117[3] = v27;
  v117[4] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:5];
  AttachmentsAutomationLogMilestone();

  if (a4)
  {
    v30 = [NSURL fileURLWithPath:*&v12];
    if (!v30 || (IMIsRunningInUnitTesting() & 1) == 0 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 fileExistsAtPath:*&v12], v31, !v32))
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = *(a1 + 32);
          *buf = 138412290;
          v119 = v50;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", buf, 0xCu);
        }
      }

      v51 = *(*(a1 + 152) + 8);
      v52 = *(*(*(a1 + 120) + 8) + 24);
      if (*(v51 + 24) < v52)
      {
        *(v51 + 24) = v52;
        v53 = [[NSError alloc] initWithDomain:@"com.apple.MessageAttachmentControllerErrorDomain" code:41 userInfo:0];
        v54 = *(*(a1 + 160) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = v53;

        v56 = [(__CFString *)v14 copy];
        v57 = *(*(a1 + 168) + 8);
        v58 = *(v57 + 40);
        *(v57 + 40) = v56;

        *(*(*(a1 + 176) + 8) + 24) = 0;
      }

      goto LABEL_66;
    }

    v33 = *(*(*(a1 + 120) + 8) + 24);
    if (v33)
    {
LABEL_51:
      if (*(*(*(a1 + 128) + 8) + 24) >= v33)
      {
        v74 = +[NSFileManager defaultManager];
        v113 = 0;
        [v74 removeItemAtPath:*&v12 error:&v113];
        v75 = v113;

        v76 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = *(*(*(a1 + 120) + 8) + 24);
          v78 = *(*(*(a1 + 128) + 8) + 24);
          *buf = 134218240;
          v119 = v77;
          v120 = 2048;
          v121 = v78;
          _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "Incoming successful download of size %tu is superseded by previous successful download of size %tu.", buf, 0x16u);
        }

        v79 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v119 = v12;
          v120 = 2112;
          v121 = v75;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, " => Cleaned up local file at %@ with error: %@", buf, 0x16u);
        }
      }

      else
      {
        if (*(*(*(a1 + 136) + 8) + 40))
        {
          v61 = +[NSFileManager defaultManager];
          v62 = [*(*(*(a1 + 136) + 8) + 40) path];
          v114 = 0;
          [v61 removeItemAtPath:v62 error:&v114];
          v63 = v114;

          v64 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = *(*(*(a1 + 120) + 8) + 24);
            v66 = *(*(*(a1 + 128) + 8) + 24);
            *buf = 134218240;
            v119 = v65;
            v120 = 2048;
            v121 = v66;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "Incoming successful download of size %tu supersedes previous successful download of size %tu.", buf, 0x16u);
          }

          v67 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            [*(*(*(a1 + 136) + 8) + 40) path];
            v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v119 = v68;
            v120 = 2112;
            v121 = v63;
            _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, " => Cleaned up local file at %@ with error: %@", buf, 0x16u);
          }
        }

        v69 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = *(*(*(a1 + 120) + 8) + 24);
          *buf = 138412546;
          v119 = v12;
          v120 = 2048;
          v121 = v70;
          _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "Setting transfer result to file at path %@ with size %tu.", buf, 0x16u);
        }

        v71 = [v30 copy];
        v72 = *(*(a1 + 136) + 8);
        v73 = *(v72 + 40);
        *(v72 + 40) = v71;

        *(*(*(a1 + 128) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24);
        objc_storeStrong((*(*(a1 + 144) + 8) + 40), *(a1 + 64));
      }

LABEL_66:

      goto LABEL_67;
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Over the wire file size was zero. Could be animated emoji. Let's look at file size on disk", buf, 2u);
      }
    }

    v35 = +[NSFileManager defaultManager];
    v115 = 0;
    v36 = [v35 attributesOfItemAtPath:*&v12 error:&v115];
    v37 = v115;

    if (v37)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v119 = v12;
          v120 = 2112;
          v121 = v37;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Attachments error reading file size attributes at path %@ error %@", buf, 0x16u);
        }

LABEL_49:
      }
    }

    else
    {
      v59 = [v36 objectForKey:NSFileSize];
      *(*(*(a1 + 120) + 8) + 24) = [v59 intValue];

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v60 = *(*(*(a1 + 120) + 8) + 24);
          *buf = 134217984;
          v119 = v60;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "On disk file size %lu ", buf, 0xCu);
        }

        goto LABEL_49;
      }
    }

    v33 = *(*(*(a1 + 120) + 8) + 24);
    goto LABEL_51;
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 32);
      *buf = 138412546;
      v119 = v40;
      v120 = 2112;
      v121 = v13;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Failed retrieving file transfer: %@   error: %@", buf, 0x16u);
    }
  }

  v41 = *(*(a1 + 152) + 8);
  v42 = *(*(*(a1 + 120) + 8) + 24);
  if ((v42 - 1) >= *(v41 + 24))
  {
    *(v41 + 24) = v42;
    v43 = [(__CFString *)v13 copy];
    v44 = *(*(a1 + 160) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    v46 = [(__CFString *)v14 copy];
    v47 = *(*(a1 + 168) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v46;

    *(*(*(a1 + 176) + 8) + 24) = 1;
  }

LABEL_67:
  if (*(*(*(a1 + 112) + 8) + 24))
  {
    goto LABEL_93;
  }

  v80 = *(*(*(a1 + 136) + 8) + 40);
  if (v80)
  {
    v81 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(*(a1 + 136) + 8) + 40) path];
      v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v119 = v82;
      _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "Adding gatekeeper properties to: %@", buf, 0xCu);
    }

    v83 = +[IMDFileTransferCenter sharedInstance];
    v84 = [*(*(*(a1 + 136) + 8) + 40) path];
    [v83 addDefaultGatekeeperPropertiesToDirectory:v84];

    [*(a1 + 32) _setLocalURL:*(*(*(a1 + 136) + 8) + 40)];
    v85 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(*(*(a1 + 136) + 8) + 40);
      *buf = 138412290;
      v119 = v86;
      _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", buf, 0xCu);
    }

    v87 = *(a1 + 72);
    v88 = [*(a1 + 32) guid];
    [v87 startFinalizingTransfer:v88];

    if ((a5 & 1) == 0)
    {
      [*(a1 + 80) addObject:*(a1 + 88)];
    }

    [*(*(*(a1 + 144) + 8) + 40) collectMetricsForDownloadedFile:*(*(*(a1 + 136) + 8) + 40)];
    goto LABEL_83;
  }

  v89 = [*(*(*(a1 + 160) + 8) + 40) domain];
  if (![v89 isEqualToString:IMFileTransferErrorDomain])
  {

    goto LABEL_80;
  }

  v90 = [*(*(*(a1 + 160) + 8) + 40) code] == &dword_1C;

  if (!v90)
  {
LABEL_80:
    if (*(*(*(a1 + 176) + 8) + 24) == 1)
    {
      v95 = *(a1 + 72);
      v96 = [*(a1 + 32) guid];
      [v95 resetTransfer:v96 andPostError:*(*(*(a1 + 160) + 8) + 40)];
    }

    v97 = [*(*(*(a1 + 160) + 8) + 40) copy];
    v98 = *(*(a1 + 208) + 8);
    v99 = *(v98 + 40);
    *(v98 + 40) = v97;

    *(*(*(a1 + 216) + 8) + 24) = *(*(*(a1 + 152) + 8) + 24);
    *(*(*(a1 + 184) + 8) + 24) = 0;
    v100 = [*(*(*(a1 + 168) + 8) + 40) copy];
    v101 = *(*(a1 + 192) + 8);
    v102 = *(v101 + 40);
    *(v101 + 40) = v100;

    *(*(*(a1 + 200) + 8) + 24) = 35;
    goto LABEL_83;
  }

  v91 = *(a1 + 72);
  v92 = [*(a1 + 32) guid];
  [v91 rejectTransfer:v92];

  *(*(*(a1 + 184) + 8) + 24) = 1;
  v93 = *(*(a1 + 192) + 8);
  v94 = *(v93 + 40);
  *(v93 + 40) = 0;

  *(*(*(a1 + 200) + 8) + 24) = 0;
LABEL_83:
  v103 = [*(a1 + 96) objectAtIndexedSubscript:*(a1 + 232)];
  v104 = [v103 BOOLValue];

  v105 = IMAttachmentsLogHandle();
  v106 = os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
  if (v104)
  {
    if (v106)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "Not Calling dispatch group leave in completion block", buf, 2u);
    }

    if (v80)
    {
      v107 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 32) guid];
        v108 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v119 = v108;
        _os_log_impl(&dword_0, v107, OS_LOG_TYPE_DEFAULT, "Setting transfer ended %@", buf, 0xCu);
      }

      v109 = *(a1 + 72);
      v110 = [*(a1 + 32) guid];
      [v109 endTransfer:v110];
    }
  }

  else
  {
    if (v106)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "Calling dispatch group leave in completion block", buf, 2u);
    }

    [*(a1 + 96) setObject:&__kCFBooleanTrue atIndexedSubscript:*(a1 + 232)];
    dispatch_group_leave(*(a1 + 104));
  }

LABEL_93:
}

void sub_68810(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fileTransferGUIDs];
    v4 = v3;
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    *buf = 138412546;
    v48 = v3;
    v49 = 2112;
    v50 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "  All done transfer set for: %@   success: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) guid];
  v45[0] = kAttachmentsAutomationMessageGUIDKey;
  v7 = [*(a1 + 32) guid];
  v46[0] = v7;
  v45[1] = kAttachmentsAutomationSuccessKey;
  v8 = [NSNumber numberWithBool:*(*(*(a1 + 80) + 8) + 24)];
  v46[1] = v8;
  v45[2] = kAttachmentsAutomationErrorKey;
  v9 = [NSNumber numberWithUnsignedInt:*(*(*(a1 + 88) + 8) + 24)];
  v46[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
  AttachmentsAutomationLogMilestoneWithOptionFlags();

  os_activity_scope_leave((*(*(a1 + 96) + 8) + 32));
  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))(v11, *(a1 + 32), *(a1 + 40), *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 104) + 8) + 40), *(*(*(a1 + 112) + 8) + 24), *(*(*(a1 + 120) + 8) + 40), 0);
  }

  v12 = *(*(a1 + 104) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 120) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 48);
    *buf = 138412290;
    v48 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "GUIDS failing preview generation %@", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 56);
  v18 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v21 = v37;
    v22 = &unk_1139F0;
    v23 = &_dispatch_main_q;
    v34 = a1;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v25 guid];
          [v25 messageGUID];
          v28 = v19;
          v29 = v21;
          v30 = v20;
          v31 = v23;
          v33 = v32 = v22;
          *buf = 138412546;
          v48 = v27;
          v49 = 2112;
          v50 = v33;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Auto accepting transfer: %@ for message GUID: %@", buf, 0x16u);

          v22 = v32;
          v23 = v31;
          v20 = v30;
          v21 = v29;
          v19 = v28;

          a1 = v34;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        v37[0] = sub_68CA8;
        v37[1] = v22;
        v38 = *(a1 + 64);
        v39 = v25;
        dispatch_async(v23, block);
      }

      v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v19);
  }
}

void sub_68CA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) guid];
  [v1 _handleFileTransfer:v2 acceptedWithPath:0 autoRename:1 overwrite:1 options:0 postNotification:1];
}

uint64_t sub_68D10(uint64_t a1, char a2)
{
  v4 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Network availability check complete:", &v10, 2u);
  }

  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 & 2) != 0)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "   Cell available: %@", &v10, 0xCu);
  }

  v7 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "   WiFi available: %@", &v10, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_6949C(void *a1)
{
  v2 = [qword_124370 objectForKey:a1[4]];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = a1[4];
        v6 = 138412290;
        v7 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Timed out waiting for peer attachment completion for attachment: %@", &v6, 0xCu);
      }
    }

    v2[2](v2, a1[5], a1[6], 0, 0, 0, 0);
    [qword_124370 removeObjectForKey:a1[4]];
    if (![qword_124370 count])
    {
      v5 = qword_124370;
      qword_124370 = 0;
    }
  }
}