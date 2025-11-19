uint64_t sub_1E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2DA0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2D94);
  }

  _Unwind_Resume(a1);
}

void sub_4AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastAddressedHandleForJunkReportMessageItem:*(a1 + 40)];
  v5 = [*(a1 + 32) lastAddressedSIMIDForJunkReportMessageItem:*(a1 + 40)];
  v6 = [*(a1 + 40) subject];
  if ([v6 length])
  {
  }

  else
  {
    v7 = [*(a1 + 40) fileTransferGUIDs];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = [*(a1 + 32) relayController];
  v10 = [v9 _checkMMSEnablementForPhoneNumber:v4 simID:v5];

  if (v10)
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = @"YES";
      v35 = 2112;
      v36 = @"NO";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Overriding shouldBroadcastMessage to be %@ and shouldSendMMS %@ based on _checkMMSEnablement", buf, 0x16u);
    }
  }

LABEL_10:
  v12 = 0;
  v11 = 1;
LABEL_11:
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v12)
      {
        v15 = @"YES";
      }

      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "            Should Send MMS: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v11)
      {
        v17 = @"YES";
      }

      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "   Should Broadcast Message: %@", buf, 0xCu);
    }
  }

  v18 = (a1 + 32);
  v19 = [*(a1 + 32) attachmentController];
  v20 = *(a1 + 40);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4E6C;
  v25[3] = &unk_207D8;
  v21 = *v18;
  v26 = v3;
  v27 = v21;
  v31 = v11;
  v32 = v12;
  v28 = v20;
  v29 = v4;
  v30 = v5;
  v22 = v5;
  v23 = v4;
  v24 = v3;
  [v19 processAttachmentsForMessage:v20 generateTextParts:v12 lastAddressedHandle:v23 lastAddressedSIMID:v22 completionBlock:v25];
}

void sub_4E6C(uint64_t a1, void *a2, int a3, void *a4)
{
  v56 = a2;
  v55 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      *v73 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "processAttachmentsForMessage Parts: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      *v73 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Participants: %@", buf, 0xCu);
    }
  }

  v11 = [*(a1 + 40) newTelephonyMessagesForHandles:*(a1 + 32) shouldBroadcastMessage:*(a1 + 72)];
  if ((*(a1 + 73) & 1) == 0)
  {
    [*(a1 + 40) addMessagePlainTextToTelephonyMessages:v11 messageItem:*(a1 + 48) processedMessageItem:v56];
  }

  [*(a1 + 40) setSubjectForTelephonyMessages:v11 messageItem:*(a1 + 48)];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (a3)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      *v73 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "    Parts all process: %@", buf, 0xCu);
    }
  }

  v57 = a3 ^ 1;
  if (((a3 ^ 1) & 1) == 0)
  {
    [*(a1 + 40) processPartsOfTelephonyMessages:v11 parts:v55 messageItem:*(a1 + 48) isGroupChat:0 phoneNumber:*(a1 + 56) simID:*(a1 + 64)];
  }

  [*(a1 + 40) buildTelephonyPhoneNumbersForTelephonyMessages:v11 shouldBroadcastMessage:*(a1 + 72) handles:*(a1 + 32)];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v14)
  {
    v15 = *v68;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v67 + 1) + 8 * i);
        [v18 setServiceCenter:0];
        v19 = *(a1 + 40);
        if (v16)
        {
          [*(a1 + 48) guid];
        }

        else
        {
          +[NSString stringGUID];
        }
        v20 = ;
        [v18 setMessageId:{objc_msgSend(v19, "_generateMessageIDForMessageGUID:", v20)}];

        if (*(a1 + 73) == 1 && IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "   => Setting Junk Report Message type to MMS", buf, 2u);
          }
        }

        [*(a1 + 40) setMessageTypeForTelephonyMessage:v18 shouldSendMMS:*(a1 + 73)];
        v22 = +[IMCTSubscriptionUtilities sharedInstance];
        v23 = [v22 ctSubscriptionInfo];

        v24 = [v23 __im_subscriptionContextForForSimID:*(a1 + 64) phoneNumber:*(a1 + 56)];
        if (v24)
        {
          [v18 setContext:v24];
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v56 guid];
              *buf = 138412546;
              *v73 = v26;
              *&v73[8] = 2112;
              *v74 = v24;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Setting the context for junk report message guid = %@, context %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Could not find a subscription context to send junk report with based on contact preferred subscription in context so failing message", buf, 2u);
            }
          }

          v57 = 1;
        }

        v16 = 0;
      }

      v14 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
      v16 = 0;
    }

    while (v14);
  }

  v28 = IMOSLoggingEnabled();
  if (v57)
  {
    if (v28)
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v73 = obj;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "   *** Parts failed, failing junk report message(s): %@", buf, 0xCu);
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = obj;
    v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v31)
    {
      v32 = *v60;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v59 + 1) + 8 * j);
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v73 = v34;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "part error sending message %@", buf, 0xCu);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v73 = v34;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "   => failed CT Message: %@  (some parts failed)", buf, 0xCu);
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v31);
    }

    v37 = +[IMMetricsCollector sharedInstance];
    [v37 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_218B0];
  }

  else
  {
    if (v28)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v73 = obj;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "   No parts failed, sending junk report message(s): %@", buf, 0xCu);
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = obj;
    v40 = [v39 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v40)
    {
      v41 = 0;
      v42 = 0;
      v43 = *v64;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v63 + 1) + 8 * k);
          v46 = +[CTMessageCenter sharedMessageCenter];
          v47 = [v46 send:v45];

          if (HIDWORD(v47))
          {
            v48 = 0;
          }

          else
          {
            v48 = v47 == 0;
          }

          if (v48)
          {
            ++v42;
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = [v39 count];
                *buf = 67109634;
                *v73 = v41 + 1;
                *&v73[4] = 1024;
                *&v73[6] = v52;
                *v74 = 2112;
                *&v74[2] = v45;
                _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "   => sent CT Junk Report Message (%d / %d): %@", buf, 0x18u);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = [v39 count];
              *buf = 67110146;
              *v73 = v41 + 1;
              *&v73[4] = 1024;
              *&v73[6] = v50;
              *v74 = 2112;
              *&v74[2] = v45;
              v75 = 1024;
              v76 = v47;
              v77 = 1024;
              v78 = HIDWORD(v47);
              _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "**** Failed sending message CT Junk Report Message (%d / %d): (%@) error: %d,%d\n", buf, 0x24u);
            }
          }

          ++v41;
        }

        v40 = [v39 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v40);
    }

    else
    {
      v42 = 0;
    }

    v53 = v42 == [v39 count];
    v54 = +[IMMetricsCollector sharedInstance];
    v37 = v54;
    if (v53)
    {
      [v54 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_21860];
    }

    else
    {
      [v54 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_21888];
    }
  }
}

id sub_719C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message", v5, 2u);
    }
  }

  [*(a1 + 32) setErrorCode:5];
  return [*(a1 + 40) didSendMessage:*(a1 + 32) forChat:*(a1 + 48) style:*(a1 + 56)];
}

id _ClampDate(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  v3 = v2;
  if (v1)
  {
    v4 = [v2 compare:v1];
    if (v4 != -1)
    {
      if (v4 == &dword_0 + 1)
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_14:
          v6 = v1;
          goto LABEL_20;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, " * Date descending vs current (%@ vs %@)", &v10, 0x16u);
        }
      }

      else
      {
        if (v4 || !IMOSLoggingEnabled())
        {
          goto LABEL_14;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, " * Date is the same as current (%@ vs %@)", &v10, 0x16u);
        }
      }

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, " * Clamping date %@ to current date (%@)", &v10, 0x16u);
      }
    }

    v6 = v3;

    v1 = v6;
  }

  else
  {
    v6 = 0;
    v1 = v2;
  }

LABEL_20:
  v8 = v1;

  return v1;
}

void sub_9604(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) relayController];
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) service];
    v6 = [v5 internalName];
    [v7 relayDictionaryToPeers:v4 requiresUpload:v3 serviceName:v6 requiredCapabilities:0];
  }
}

void sub_9904(uint64_t a1, unsigned __int8 a2, void *a3, char a4)
{
  v7 = a3;
  if (((a2 ^ 1 | *(a1 + 40)) & 1) == 0 && (a4 & 1) == 0)
  {
    v8 = [*(a1 + 32) relayController];
    [v8 _executeSMSRelayBlockForMessageWithGUID:v7];
LABEL_4:

    goto LABEL_5;
  }

  v10 = a2 ^ 1 | *(a1 + 40) | ~a4;
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v8 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      v14 = 0;
      v12 = "Not relaying to peers as we are message is being replayed.";
      v13 = &v14;
LABEL_15:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v12, v13, 2u);
      goto LABEL_4;
    }
  }

  else if (v11)
  {
    v8 = OSLogHandleForIMEventCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v12 = "Not relaying to peers since we're checking for spam";
    v13 = buf;
    goto LABEL_15;
  }

LABEL_5:
  if ((a4 & 1) == 0)
  {
    v9 = [*(a1 + 32) relayController];
    [v9 _clearSMSRelayMapForMessageWithGUID:v7];
  }
}

void sub_9CD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  [v2 _receivedSMSDictionary:v3 requiresUpload:v4 isBeingReplayed:1];
  v5[2]();
}

void sub_A120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 chatForMessage:v3];

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 guid];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Chat not found for message relay guid: %@", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  if ([v5 style] == 45)
  {
    v6 = +[IMDRelayServiceController sharedInstance];
    v7 = [*(a1 + 32) internalName];
    v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsSenderKey];
    v9 = [v6 relayMessageToPeers:v3 forChat:v5 serviceName:v7 reflectOnly:1 requiredCapabilities:v8];

    if (v9)
    {
      if (*(a1 + 48) == 1)
      {
        [v3 setNeedsRelay:0];
        v10 = +[IMDMessageStore sharedInstance];
        v11 = [v10 storeMessage:v3 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v3 guid];
            v18 = 138412290;
            v19 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Message marked as relayed, guid: %@", &v18, 0xCu);
          }

LABEL_8:
        }
      }
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_12254(v3);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1215C(v3);
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_121E4();
    }
  }

LABEL_21:
}

void sub_A428(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xA3E8);
  }

  _Unwind_Resume(a1);
}

id sub_A5A0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 68))
      {
        v3 = @"SMS";
      }

      else
      {
        v3 = @"MMS";
      }

      v4 = *(a1 + 32);
      if (*(a1 + 69))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
      v7 = [NSNumber numberWithInteger:*(a1 + 48)];
      v8 = [NSNumber numberWithInteger:*(a1 + 56)];
      v12 = 138413570;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%@ Message sent notification %@: success %@ messageID %@ err1 %@ err2 %@", &v12, 0x3Eu);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  if (*(a1 + 69) == 1)
  {
    return [v9 _processMessageSentID:v10];
  }

  else
  {
    return [v9 _processMessageSendFailureID:v10];
  }
}

void sub_A898(uint64_t a1)
{
  v2 = _os_activity_create(&dword_0, "com.apple.messages.SMSReceivedMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = +[IMCTSMSUtilitiesManager sharedManager];
  v4 = [v3 isMessagesTheDefaultTextApp];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Message received in block ", buf, 2u);
      }
    }

    v6 = *(a1 + 32);
    v7 = +[CTMessageCenter sharedMessageCenter];
    v8 = [v7 incomingMessageWithId:*(a1 + 48)];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "  => Message: %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      v8 = v8;
      v13 = *(a1 + 40);
      v6 = v6;
      v14 = *(a1 + 32);
      im_dispatch_after();
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 48);
        *buf = 67109120;
        LODWORD(v17) = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Empty message supplied for message id: %d", buf, 8u);
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
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Received an SMS/MMS while we are not the default text app", buf, 2u);
      }
    }

    v6 = +[IMMetricsCollector sharedInstance];
    v8 = [NSError errorWithDomain:@"com.apple.Messages.SMS" code:0 userInfo:0];
    [v6 forceAutoBugCaptureWithSubType:@"Messages.SMSCallsWhileNotDefaultTextApp.messageReceived" errorPayload:v8];
  }

  os_activity_scope_leave(&state);
}

void sub_AC7C(uint64_t a1)
{
  v2 = +[IMMetricsCollector sharedInstance];
  [v2 trackEvent:IMMetricsCollectorEventSMSReceived];

  v9 = 0;
  [*(a1 + 32) setContext:*(a1 + 40)];
  v3 = [*(a1 + 48) _convertCTMessageToDictionary:*(a1 + 32) requiresUpload:&v9];
  v4 = [v3 objectForKey:IMDCTMessageDictionaryGUIDKey];
  v5 = [v3 objectForKey:IMDCTMessageDictionaryTypeKey];
  if ([v4 length])
  {
    v6 = [NSString stringWithFormat:@"%@-%@.smsdata", v5, v4];
    [IMInternalPayloadUtilities writeMessagePayloadToDisk:v3 fileName:v6];
  }

  [*(a1 + 48) _receivedSMSDictionary:v3 requiresUpload:v9 isBeingReplayed:0];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Session received SMS", buf, 2u);
    }
  }

  [*(a1 + 56) _storeIncomingMessageDictionaryToReplayDatabaseIfNeeded:v3 requiresUpload:v9];
}

void sub_B040(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xAFF4);
  }

  _Unwind_Resume(a1);
}

void sub_B440(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_C0AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xC050);
  }

  _Unwind_Resume(a1);
}

id sub_D034(void *a1)
{
  if (qword_26898 != -1)
  {
    sub_122DC();
  }

  v2 = [a1 lowercaseString];
  result = [v2 length];
  if (result)
  {
    result = [qword_26890 objectForKey:v2];
    if (!result)
    {
      return v2;
    }
  }

  return result;
}

id sub_D19C(void *a1)
{
  v21 = objc_alloc_init(NSMutableString);
  if (qword_268B0 != -1)
  {
    sub_122F0();
  }

  [v21 appendString:qword_268A0];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = MarcoLoggingStringForMessageData();
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Generating SMIL for pieces: %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    v20 = *v23;
    while (1)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = sub_D034([v7 objectForKey:@"Type"]);
        v9 = [objc_msgSend(v7 objectForKey:{@"Path", "lastPathComponent"}];
        v10 = [v7 objectForKey:@"Tag"];
        v11 = [v10 isEqualToString:@"text"];
        v5 |= v4;
        if ((v11 & 1) == 0)
        {
          if ([v8 isEqualToString:@"vcard"])
          {
            continue;
          }

          if ([v10 isEqualToString:@"img"])
          {
            v13 = 0;
            goto LABEL_19;
          }

          v14 = [v10 isEqualToString:@"video"];
          v13 = [objc_msgSend(v7 objectForKey:{@"Duration", "intValue"}];
          if (v14)
          {
LABEL_19:
            v15 = [NSString stringWithFormat:@"<%@ src=%@ region=%@/>\n", v10, v9, @"Image"];
          }

          else
          {
            v15 = [NSString stringWithFormat:@"<%@ src=%@/>\n", v10, v9];
          }

          v12 = v15;
          if (v3)
          {
LABEL_22:
            [v21 appendString:@"</par>\n"];
          }

LABEL_23:
          if (v13)
          {
            v16 = v13;
          }

          else
          {
            v16 = 10;
          }

          [v21 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<par dur=%ds>\n", v16)}];
          v3 = 1;
          goto LABEL_27;
        }

        v12 = [NSString stringWithFormat:@"<%@ src=%@ region=%@/>\n", v10, v9, @"Text"];
        if (v5)
        {
          v13 = 0;
          if (v3)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_27:
        [v21 appendString:v12];
        v5 = 0;
        v4 = v11;
      }

      v2 = [a1 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v2)
      {
        if (v3)
        {
          [v21 appendString:@"</par>\n"];
        }

        break;
      }
    }
  }

  if (qword_268B8 != -1)
  {
    sub_12304();
  }

  [v21 appendString:qword_268A8];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "proposed smil: %@", buf, 0xCu);
    }
  }

  return v21;
}

void sub_E4F8(uint64_t a1)
{
  v2 = [*(a1 + 32) smsSession];
  v3 = [*(a1 + 32) message];
  v4 = [*(a1 + 32) chat];
  v5 = [v4 chatIdentifier];
  [v2 didSendMessage:v3 forChat:v5 style:{objc_msgSend(*(a1 + 32), "chatStyle")}];

  v6 = [*(a1 + 32) chatStyle] != 45;
  v7 = [*(a1 + 32) message];
  v8 = [v7 handle];
  IsEmail = IMStringIsEmail();

  v10 = +[NSDate date];
  [v10 timeIntervalSinceDate:*(a1 + 40)];
  v12 = v11;

  v13 = [*(a1 + 32) message];
  v14 = [v13 fileTransferGUIDs];
  v15 = [v14 count] != 0;

  v16 = [NSNumber numberWithDouble:v12];
  v24[0] = IMMetricsCollectorFzErrorKey;
  v17 = [NSNumber numberWithLong:0];
  v25[0] = v17;
  v24[1] = IMMetricsCollectorIsGroupMessageKey;
  v18 = [NSNumber numberWithBool:v6];
  v25[1] = v18;
  v24[2] = IMMetricsCollectorIsToPhoneNumberKey;
  v19 = [NSNumber numberWithBool:IsEmail ^ 1];
  v25[2] = v19;
  v24[3] = IMMetricsCollectorIsToEmailKey;
  v20 = [NSNumber numberWithInt:IsEmail];
  v25[3] = v20;
  v24[4] = IMMetricsCollectorHasAttachmentsKey;
  v21 = [NSNumber numberWithBool:v15];
  v25[4] = v21;
  v25[5] = v16;
  v24[5] = IMMetricsCollectorSendDurationKey;
  v24[6] = IMMetricsCollectorConnectionTypeKey;
  v25[6] = &off_21818;
  v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];

  v23 = +[IMMetricsCollector sharedInstance];
  [v23 trackEvent:IMMetricsCollectorEventSMSSentMessageSingleComponent withDictionary:v22];

  [*(a1 + 32) sendMetricForSMS:v16 wasSuccessful:1 error:0];
}

void sub_E7E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a3);
  v6 = [*(a1 + 32) message];
  v29 = a2;
  [v6 setErrorCode:a2];

  v7 = [*(a1 + 32) smsSession];
  v8 = [*(a1 + 32) message];
  v9 = [*(a1 + 32) chatIdentifier];
  [v7 didSendMessage:v8 forChat:v9 style:{objc_msgSend(*(a1 + 32), "chatStyle")}];

  v10 = [*(a1 + 32) chatStyle] != 45;
  v11 = [*(a1 + 32) message];
  v12 = [v11 handle];
  IsEmail = IMStringIsEmail();

  v14 = +[NSDate date];
  [v14 timeIntervalSinceDate:*(a1 + 40)];
  v16 = v15;

  v17 = [*(a1 + 32) message];
  v18 = [v17 fileTransferGUIDs];
  v19 = [v18 count] != 0;

  v20 = [NSNumber numberWithDouble:v16];
  v30[0] = IMMetricsCollectorFzErrorKey;
  v21 = [NSNumber numberWithInt:a2];
  v31[0] = v21;
  v30[1] = IMMetricsCollectorCtErrorKey;
  v22 = [NSNumber numberWithInt:v5];
  v31[1] = v22;
  v30[2] = IMMetricsCollectorIsGroupMessageKey;
  v23 = [NSNumber numberWithBool:v10];
  v31[2] = v23;
  v30[3] = IMMetricsCollectorIsToPhoneNumberKey;
  v24 = [NSNumber numberWithBool:IsEmail ^ 1];
  v31[3] = v24;
  v30[4] = IMMetricsCollectorIsToEmailKey;
  v25 = [NSNumber numberWithInt:IsEmail];
  v31[4] = v25;
  v30[5] = IMMetricsCollectorHasAttachmentsKey;
  v26 = [NSNumber numberWithBool:v19];
  v31[5] = v26;
  v31[6] = v20;
  v30[6] = IMMetricsCollectorSendDurationKey;
  v30[7] = IMMetricsCollectorConnectionTypeKey;
  v31[7] = &off_21818;
  v27 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:8];

  v28 = +[IMMetricsCollector sharedInstance];
  [v28 trackEvent:IMMetricsCollectorEventSMSSentMessageSingleComponent withDictionary:v27];

  [*(a1 + 32) sendMetricForSMS:v20 wasSuccessful:0 error:v29];
}

void sub_FB08(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0xEF50);
  }

  _Unwind_Resume(exc_buf);
}

Class sub_FF9C(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_268C8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100C8;
    v3[4] = &unk_20B20;
    v3[5] = v3;
    v4 = off_20B08;
    v5 = 0;
    qword_268C8 = _sl_dlopen();
  }

  if (!qword_268C8)
  {
    sub_123A8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DMFEmergencyModeMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1232C();
  }

  qword_268C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_268C8 = result;
  return result;
}

void *sub_1013C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_266D0);
  swift_endAccess();
  if (v1)
  {
    sub_124D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_103C4(v9);
    goto LABEL_8;
  }

  type metadata accessor for SMSReachabilityController();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    type metadata accessor for SMSServiceReachabilityDelegate();
    v3 = v0;
    v4 = sub_10514(v3);
    type metadata accessor for SMSReachabilityController();
    v2 = swift_allocObject();
    v2[2] = v4;
    v2[3] = &off_20C28;
    swift_beginAccess();

    objc_setAssociatedObject(v3, &unk_266D0, v2, &dword_0 + 1);
    swift_endAccess();

    return v2;
  }

  return v6;
}

uint64_t SMSServiceSession.calculateReachability(with:responseHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1013C();
  (*(*v4 + 96))(a1, a2);
}

uint64_t sub_103C4(uint64_t a1)
{
  v2 = sub_1042C(&qword_266D8, &qword_15FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1042C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_10514(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithServiceSession:a1];

  return v3;
}

id sub_10604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SMSServiceReachabilityDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SMSReachabilityController.delegate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t SMSReachabilityController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SMSReachabilityController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void SMSReachabilityController.calculateReachability(with:responseHandler:)(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  if ([v5 isMessagesTheDefaultTextApp])
  {
    v6 = [a1 handleIDs];
    v7 = sub_124B8();

    v8 = (v7 + 40);
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        goto LABEL_27;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = v8 + 2;
      v13 = *(v8 - 1);
      v12 = *v8;

      v14 = sub_12478();
      IsStewieEmergency = IMStringIsStewieEmergency();

      v8 = v11;
      if ((IsStewieEmergency & 1) == 0)
      {

        v16 = [a1 context];
        v17 = [v5 isSMSEnabledForContext:v16];

        if (!v17)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v18 = sub_12458();
          sub_116D8(v18, static Logger.sms);
          v19 = a1;
          v20 = sub_12438();
          v21 = sub_124C8();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            aBlock = v23;
            *v22 = 136315138;
            v24 = [v19 handleIDs];
            v25 = sub_124B8();

            v110 = v25;
            sub_1042C(&qword_267D0, &qword_16010);
            sub_11CB8();
            v26 = sub_12468();
            v28 = v27;

            v29 = sub_11710(v26, v28, &aBlock);

            *(v22 + 4) = v29;
            _os_log_impl(&dword_0, v20, v21, "SMS is unavailable for sending to %s: SMS not available for context", v22, 0xCu);
            sub_11D64(v23);
          }

          v30 = [v5 internalServiceName];
          if (!v30)
          {
            sub_12488();
            v30 = sub_12478();
          }

          isa = [v19 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v32 = [objc_opt_self() finalResultForService:v30 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
LABEL_62:
          v100 = v32;

          [a2 reachabilityRequest:v19 updatedWithResult:v100];
          return;
        }

LABEL_27:
        v39 = [a1 handleIDs];
        v40 = sub_124B8();

        v41 = (v40 + 40);
        v42 = -*(v40 + 16);
        v43 = -1;
        do
        {
          if (v42 + v43 == -1)
          {

            goto LABEL_42;
          }

          if (++v43 >= *(v40 + 16))
          {
            goto LABEL_64;
          }

          v44 = v41 + 2;
          v46 = *(v41 - 1);
          v45 = *v41;

          v47 = sub_12478();
          IsEmail = IMStringIsEmail();

          v41 = v44;
        }

        while ((IsEmail & 1) == 0);

        v49 = [a1 context];
        v50 = [v5 isMMSEnabledForContext:v49];

        if ((v50 & 1) == 0)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v51 = sub_12458();
          sub_116D8(v51, static Logger.sms);
          v52 = a1;
          v53 = sub_12438();
          v54 = sub_124C8();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            aBlock = v56;
            *v55 = 136315138;
            v57 = [v52 handleIDs];
            v58 = sub_124B8();

            v110 = v58;
            sub_1042C(&qword_267D0, &qword_16010);
            v59 = a2;
            sub_11CB8();
            v60 = sub_12468();
            v62 = v61;

            v63 = sub_11710(v60, v62, &aBlock);
            a2 = v59;

            *(v55 + 4) = v63;
            _os_log_impl(&dword_0, v53, v54, "SMS is unavailable for sending to %s: has email recipients but MMS not available for context", v55, 0xCu);
            sub_11D64(v56);
          }

          v64 = [v5 internalServiceName];
          if (!v64)
          {
            sub_12488();
            v64 = sub_12478();
          }

          v65 = [v52 handleIDs];
          if (!v65)
          {
            sub_124B8();
            v65 = sub_124A8().super.isa;
          }

          v66 = objc_opt_self();
          v108 = sub_115DC;
          v109 = 0;
          aBlock = _NSConcreteStackBlock;
          v105 = 1107296256;
          v106 = sub_11610;
          v107 = &unk_20D40;
          v67 = _Block_copy(&aBlock);
          v108 = sub_11678;
          v109 = 0;
          aBlock = _NSConcreteStackBlock;
          v105 = 1107296256;
          v106 = sub_11610;
          v107 = &unk_20D68;
          v68 = _Block_copy(&aBlock);
          LOBYTE(v101) = 0;
          v69 = [v66 finalResultForService:v64 handleIDs:v65 allAreReachable:0 allSupportEncryption:0 handleIsReachable:v67 handleSupportsEncryption:v68 checkedServer:v101 error:6];
          _Block_release(v68);
          _Block_release(v67);

          [a2 reachabilityRequest:v52 updatedWithResult:v69];
          return;
        }

LABEL_42:
        v70 = [a1 context];
        v71 = [v5 maxChatParticipantsForContext:v70];

        v72 = [a1 handleIDs];
        v73 = sub_124B8();

        v74 = *(v73 + 16);

        if (v71 >= v74)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v89 = sub_12458();
          sub_116D8(v89, static Logger.sms);
          v19 = a1;
          v90 = sub_12438();
          v91 = sub_124C8();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            aBlock = v93;
            *v92 = 136315138;
            v94 = [v19 handleIDs];
            v95 = sub_124B8();

            v110 = v95;
            sub_1042C(&qword_267D0, &qword_16010);
            sub_11CB8();
            v96 = sub_12468();
            v98 = v97;

            v99 = sub_11710(v96, v98, &aBlock);

            *(v92 + 4) = v99;
            _os_log_impl(&dword_0, v90, v91, "SMS is available for sending to %s", v92, 0xCu);
            sub_11D64(v93);
          }

          v30 = [v5 internalServiceName];
          if (!v30)
          {
            sub_12488();
            v30 = sub_12478();
          }

          isa = [v19 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v32 = [objc_opt_self() finalResultForService:v30 handleIDs:isa allAreReachable:1 allSupportEncryption:0 checkedServer:0 error:0];
        }

        else
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v75 = sub_12458();
          sub_116D8(v75, static Logger.sms);
          v19 = a1;
          v76 = sub_12438();
          v77 = sub_124C8();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            aBlock = v79;
            *v78 = 136315650;
            v80 = [v19 handleIDs];
            v81 = sub_124B8();

            v110 = v81;
            sub_1042C(&qword_267D0, &qword_16010);
            v103 = a2;
            sub_11CB8();
            v82 = sub_12468();
            v84 = v83;

            v85 = sub_11710(v82, v84, &aBlock);

            *(v78 + 4) = v85;
            *(v78 + 12) = 2050;
            v86 = [v19 handleIDs];
            v87 = sub_124B8();

            v88 = *(v87 + 16);

            *(v78 + 14) = v88;

            *(v78 + 22) = 2050;
            a2 = v103;
            *(v78 + 24) = v71;
            _os_log_impl(&dword_0, v76, v77, "SMS is unavailable for sending to %s: have %{public}ld participants but max is %{public}ld", v78, 0x20u);
            sub_11D64(v79);
          }

          else
          {
          }

          v30 = [v5 internalServiceName];
          if (!v30)
          {
            sub_12488();
            v30 = sub_12478();
          }

          isa = [v19 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v32 = [objc_opt_self() finalResultForService:v30 handleIDs:isa allAreReachable:1 allSupportEncryption:0 checkedServer:0 error:1];
        }

        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (qword_267C8 != -1)
  {
LABEL_65:
    swift_once();
  }

  v33 = sub_12458();
  sub_116D8(v33, static Logger.sms);
  v34 = sub_12438();
  v35 = sub_124C8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "Messages is not the default text app: SMS not available", v36, 2u);
  }

  v37 = [v5 internalServiceName];
  if (!v37)
  {
    sub_12488();
    v37 = sub_12478();
  }

  v38 = [a1 handleIDs];
  if (!v38)
  {
    sub_124B8();
    v38 = sub_124A8().super.isa;
  }

  v102 = [objc_opt_self() finalResultForService:v37 handleIDs:v38 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];

  [a2 reachabilityRequest:a1 updatedWithResult:v102];
}

uint64_t sub_115DC()
{
  v0 = sub_12478();
  IsEmail = IMStringIsEmail();

  return IsEmail ^ 1u;
}

uint64_t sub_11610(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_12488();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t SMSReachabilityController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SMSReachabilityController.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_116D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_11710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_117DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_11DD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_11D64(v11);
  return v7;
}

unint64_t sub_117DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_118E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_124F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_118E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_11934(a1, a2);
  sub_11A64(&off_20D18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_11934(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_11B50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_124F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_12498();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11B50(v10, 0);
        result = sub_124E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_11A64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_11BC4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_11B50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1042C(&qword_26888, &qword_16070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11BC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1042C(&qword_26888, &qword_16070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_11CB8()
{
  result = qword_267D8;
  if (!qword_267D8)
  {
    sub_11D1C(&qword_267D0, &qword_16010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_267D8);
  }

  return result;
}

uint64_t sub_11D1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11D64(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_11DD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Logger.sms.unsafeMutableAddressor()
{
  if (qword_267C8 != -1)
  {
    swift_once();
  }

  v0 = sub_12458();

  return sub_116D8(v0, static Logger.sms);
}

uint64_t sub_11E94()
{
  v0 = sub_12458();
  sub_11F9C(v0, static Logger.sms);
  sub_116D8(v0, static Logger.sms);
  sub_12428();
  return sub_12448();
}

uint64_t static Logger.sms.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_267C8 != -1)
  {
    swift_once();
  }

  v2 = sub_12458();
  v3 = sub_116D8(v2, static Logger.sms);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_11F9C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_12000()
{
  sub_B434();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12070(void *a1)
{

  objc_end_catch();
}

void sub_120A4()
{
  sub_B414();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1215C(void *a1)
{
  v1 = [a1 guid];
  sub_B434();
  sub_B440(&dword_0, v2, v3, "Found a chat that is not 1-1 chat for message relay: %@", v4, v5, v6, v7, v8);
}

void sub_121E4()
{
  sub_B434();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12254(void *a1)
{
  v1 = [a1 guid];
  sub_B434();
  sub_B440(&dword_0, v2, v3, "Message failed to relay: %@", v4, v5, v6, v7, v8);
}

void sub_1232C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getDMFEmergencyModeMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SMSMessageSender.m" lineNumber:34 description:{@"Unable to find class %s", "DMFEmergencyModeMonitor"}];

  __break(1u);
}

void sub_123A8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *DeviceManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SMSMessageSender.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
  sub_12428();
}