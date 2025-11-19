void sub_23A4(uint64_t a1, void *a2)
{
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v3 = a2;
  v55 = [v3 countByEnumeratingWithState:&v56 objects:v76 count:16];
  v50 = v3;
  if (v55)
  {
    v54 = *v57;
    *&v4 = 138412290;
    v49 = v4;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v57 != v54)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v56 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v51 = [v6 guid];
            v52 = [v6 date];
            v53 = [*(a1 + 32) start];
            v8 = [*(a1 + 32) end];
            v9 = [*(a1 + 32) outgoing];
            if ([v9 BOOLValue])
            {
              v10 = @"YES";
            }

            else
            {
              v10 = @"NO";
            }

            if ([v6 isOutgoing])
            {
              v11 = @"YES";
            }

            else
            {
              v11 = @"NO";
            }

            v12 = [*(a1 + 32) unread];
            v13 = [v12 BOOLValue];
            v14 = [v6 isRead];
            *buf = 138414082;
            v15 = @"NO";
            if (v13)
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            v61 = v51;
            if (!v14)
            {
              v15 = @"YES";
            }

            v62 = 2112;
            v63 = v52;
            v64 = 2112;
            v65 = v53;
            v66 = 2112;
            v67 = v8;
            v68 = 2112;
            v69 = v10;
            v70 = 2112;
            v71 = v11;
            v72 = 2112;
            v73 = v16;
            v74 = 2112;
            v75 = v15;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "AssistantSearch - Looking at message with guid %@ [date %@, self.start %@, self.end %@] [self.outgoing %@, ougoing %@], [self.unread %@, unread %@]", buf, 0x52u);

            v3 = v50;
          }
        }

        v17 = [*(a1 + 32) start];
        if (!v17)
        {
          goto LABEL_51;
        }

        v18 = [*(a1 + 32) start];
        v19 = [v6 date];
        v20 = [v18 compare:v19] == &dword_0 + 1;

        if (!v20)
        {
LABEL_51:
          v21 = [*(a1 + 32) end];
          if (!v21)
          {
            goto LABEL_52;
          }

          v22 = [*(a1 + 32) end];
          v23 = [v6 date];
          v24 = [v22 compare:v23] == -1;

          if (!v24)
          {
LABEL_52:
            v25 = [*(a1 + 32) outgoing];
            if (!v25 || ([*(a1 + 32) outgoing], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "BOOLValue"), v28 = objc_msgSend(v6, "isOutgoing"), v26, v25, ((v27 ^ v28) & 1) == 0))
            {
              v29 = [*(a1 + 32) unread];
              if (!v29 || ([*(a1 + 32) unread], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "BOOLValue"), v32 = objc_msgSend(v6, "isRead"), v30, v29, v31 ^ v32))
              {
                v33 = [*(a1 + 32) _smsForIMSPIMessage:v6];
                v34 = [v6 referencedMessage];
                v35 = v34 == 0;

                v36 = IMOSLoggingEnabled();
                if (v35)
                {
                  if (v36)
                  {
                    v43 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      v44 = [v6 guid];
                      *buf = v49;
                      v61 = v44;
                      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "AssistantSearch - Found message with guid %@", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  if (v36)
                  {
                    v37 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      v38 = [v6 referencedMessage];
                      v39 = [v38 guid];
                      *buf = v49;
                      v61 = v39;
                      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "AssistantSearch - Found referenced message with guid %@", buf, 0xCu);
                    }
                  }

                  v40 = *(a1 + 32);
                  v41 = [v6 referencedMessage];
                  v42 = [v40 _smsForIMSPIMessage:v41];

                  [v33 setReferencedMessage:v42];
                }

                v45 = [*(a1 + 32) _appInfoForMessage:v6];
                if (v45)
                {
                  [v33 setAppInfo:v45];
                }

                [*(a1 + 40) addObject:v33];
              }
            }
          }
        }
      }

      v55 = [v3 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v55);
  }

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
      v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
      *buf = 138412546;
      v61 = v47;
      v62 = 2112;
      v63 = v48;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "AssistantSearch - SPIQuery found %@ messages but filtered that to %@ in filterBlock", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_3C8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x3BB0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4FF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_5010(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMDMessageRecordCopyMostRecentUseageOfAddresses();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_5A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMDMessageRecordCopyMostRecentUseageOfAddresses();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_7268(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 identifier];
  v51 = CKAssistantGetDraftForIdentifier();

  v50 = [*v1 _validateSMS:v51];
  if (!v50)
  {
    v9 = [NSMutableArray alloc];
    v10 = [v51 msgRecipients];
    v8 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v51 msgRecipients];
        *buf = 138412290;
        v59 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Trying to get addresses from messagesRecipients: %@", buf, 0xCu);
      }
    }

    v53 = objc_alloc_init(NSMutableArray);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = [v51 msgRecipients];
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v14)
    {
      v52 = 0;
      v15 = *v55;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v54 + 1) + 8 * i);
          v18 = [v17 data];
          if ((IMStringIsPhoneNumber() & 1) != 0 || IMStringIsEmail())
          {
            v19 = IMStripFormattingFromAddress();
            if (v19)
            {
              [v8 addObject:v19];
            }
          }

          else
          {
            v19 = objc_alloc_init(CKAssistantPerson);
            v20 = [v17 object];
            v21 = [v20 internalGUID];
            [v19 setInternalGUID:v21];

            [v19 setLabel:v18];
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v59 = v18;
                v60 = 2112;
                v61 = v17;
                v62 = 2112;
                v63 = v19;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Data %@ for recipient %@ does not appear to be address, creating CKPerson person ourselves %@", buf, 0x20u);
              }
            }

            [v53 addObject:v19];
            if (IMStringIsBusinessID())
            {
              if (IMOSLoggingEnabled())
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v59 = v18;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Found business recipient: %@", buf, 0xCu);
                }
              }

              v24 = v18;

              v52 = v24;
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v14);
    }

    else
    {
      v52 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v59 = v8;
        v60 = 2112;
        v61 = v53;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Found %@ valid addresses for message recipients and %@ people to fetch address from", buf, 0x16u);
      }
    }

    v26 = [CKAssistantSearchUtilities getAddressesFromPeople:v53];
    [v8 addObjectsFromArray:v26];

    if ([v8 count] || !objc_msgSend(v52, "length"))
    {
      if (![v8 count])
      {
        v27 = [v51 groupNameId];
        v28 = [v27 length] == 0;

        if (v28)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v51 groupNameId];
              *buf = 138412546;
              v59 = v8;
              v60 = 2112;
              v61 = v30;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Siri got no handles: %@ and no group name %@, returning unable to convert recipients to IMHandles error", buf, 0x16u);
            }
          }

          v31 = [*(a1 + 32) errorWithDescription:@"Unable to convert recipients to IMHandles."];
          v32 = [SACommandFailed alloc];
          v33 = [v31 description];
          v34 = [v32 initWithReason:v33];

          v35 = *(a1 + 48);
          v36 = [v34 dictionary];
          (*(v35 + 16))(v35, v36);
          goto LABEL_65;
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v59 = v52;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "Sending message to business: %@", buf, 0xCu);
        }
      }

      [v8 addObject:v52];
    }

    v31 = [*(a1 + 40) peerInfoForCurrentCommand];
    v34 = [v31 idsIdentifier];
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v59 = v34;
        v60 = 2112;
        v61 = v31;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "Siri passed in sending idsIdentifier %@ from peerInfo %@", buf, 0x16u);
      }
    }

    v36 = objc_alloc_init(SADomainObjectCommitCompleted);
    v39 = [v51 identifier];
    [v36 setIdentifier:v39];

    v40 = +[NSDate date];
    [v51 setDateSent:v40];

    CKAssistantUpdateStoreDraftWithSMS();
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [v36 dictionary];
        *buf = 138412290;
        v59 = v42;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Updated draft with message to send and calling completion with result dict %@", buf, 0xCu);
      }
    }

    v43 = *(a1 + 48);
    v44 = [v36 dictionary];
    (*(v43 + 16))(v43, v44);

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "Connecting to Dameon if needed", buf, 2u);
      }
    }

    [*(a1 + 32) _connectToDaemonIfNeeded];
    v46 = *(a1 + 32);
    v47 = [v51 message];
    v48 = [v51 groupNameId];
    [v46 sendSMS:v47 toAddresses:v8 groupNameID:v48 idsIdentifier:v34];

LABEL_65:
    goto LABEL_66;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceReferenceDate];
      *buf = 138412546;
      v59 = v50;
      v60 = 2048;
      v61 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Siri failed to validate sms with error %@ at time %f, returning early", buf, 0x16u);
    }
  }

  v7 = *(a1 + 48);
  v8 = [v50 dictionary];
  (*(v7 + 16))(v7, v8);
LABEL_66:
}

void sub_7CD4(id a1)
{
  if (qword_154C0 != -1)
  {
    sub_8120();
  }

  v1 = +[IMDaemonController sharedInstance];
  [v1 addListenerID:@"SiriSMS" capabilities:CKSiriListenerCapabilities()];
}

void sub_7D48(id a1)
{
  v1 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v1 addListenerID:@"kSMSCreateListener" forService:1];
}