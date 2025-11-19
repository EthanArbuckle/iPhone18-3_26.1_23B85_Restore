@interface FaceTimeServiceSession
+ (void)initialize;
- (BOOL)_anyPeersForConferenceIDMayRequireBreakBeforeMake:(id)a3;
- (BOOL)_checkBadPushToken:(id)a3;
- (BOOL)_hasOutgoingInvitationInFlight;
- (BOOL)_hasOutgoingRelayInitiateInFlight;
- (BOOL)_hasPeersForPeerID:(id)a3 conferenceID:(id)a4;
- (BOOL)_registrationSupportedForRegistration;
- (BOOL)_validRegistrationStateToAcceptCalls;
- (BOOL)_validRegistrationStateToMakeCalls;
- (BOOL)queue:(id)a3 shouldInvoke:(id)a4;
- (FaceTimeServiceSession)initWithAccount:(id)a3 service:(id)a4;
- (__SecKey)callerPrivateKey;
- (double)_messageTimeoutTimeForMessage:(id)a3;
- (id)_displayIDForPeerID:(id)a3 conferenceID:(id)a4;
- (id)_peerIDForDiplayID:(id)a3 conferenceID:(id)a4;
- (id)_peerIDPushTokenPairsForConferenceID:(id)a3;
- (id)_peerIDPushTokensPairsForPeerID:(id)a3 conferenceID:(id)a4 skippingPairs:(id)a5;
- (id)_peerIDsForDiplayID:(id)a3 conferenceID:(id)a4;
- (id)_peerInfoForDisplayID:(id)a3 conferenceID:(id)a4 skippingPairs:(id)a5;
- (id)_pushTokenForPeerID:(id)a3 conferenceID:(id)a4;
- (id)_pushTokensForPeerID:(id)a3 conferenceID:(id)a4;
- (id)idsAccounts;
- (id)loggingName;
- (id)phoneNumber;
- (id)profileID;
- (id)regionBasePhoneNumber;
- (id)regionID;
- (id)regionServerContext;
- (id)registeredURIs;
- (id)userID;
- (int)_callTypeForConferenceID:(id)a3;
- (unint64_t)queue:(id)a3 optionsForInvocation:(id)a4;
- (void)_cancelOtherInvitesForPeerID:(id)a3 skipPairs:(id)a4 properties:(id)a5 conference:(id)a6 reason:(id)a7;
- (void)_cancelVCRequestWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 pairsToSkip:(id)a6 reason:(id)a7;
- (void)_logLocalInfo;
- (void)_purgeMap;
- (void)_retargetPeerID:(id)a3 displayID:(id)a4 pushToken:(id)a5 conferenceID:(id)a6;
- (void)_setAlternateDisplayID:(id)a3 forPeerID:(id)a4 conferenceID:(id)a5;
- (void)_setConferenceIDMap:(id)a3 forToken:(id)a4;
- (void)_setInitiatedConference:(id)a3;
- (void)_setPeerInfo:(id)a3 conferenceID:(id)a4;
- (void)_setPurgeTimer;
- (void)dealloc;
- (void)handler:(id)a3 incomingMessage:(id)a4 topic:(id)a5 peerID:(id)a6 reason:(id)a7 clientInfo:(id)a8 serviceData:(id)a9;
- (void)handler:(id)a3 peerDisplay:(id)a4 topic:(id)a5 myID:(id)a6 sessionInitated:(id)a7 clientInfo:(id)a8 peerID:(id)a9 peerPushToken:(id)a10;
- (void)handler:(id)a3 relayCancelled:(id)a4 topic:(id)a5 peerID:(id)a6 relayType:(id)a7 relayTokenAllocReq:(id)a8 relayConnectionID:(id)value relayTransactionIDAlloc:(id)a10 relayCandidateID:(id)a11 myRelayIP:(id)a12 myRelayPort:(id)a13 peerRelayIP:(id)a14 peerRelayPort:(id)a15 reason:(id)a16 clientInfo:(id)a17 serviceData:(id)a18;
- (void)handler:(id)a3 relayInitiated:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 relayType:(id)a8 relayConnectionID:(id)value relayTransactionIDAlloc:(id)a10 relayTokenAllocReq:(id)a11 relayCandidateID:(id)a12 myRelayIP:(id)a13 myRelayPort:(id)a14 peerRelayIP:(id)a15 peerRelayPort:(id)a16 clientInfo:(id)a17 serviceData:(id)a18;
- (void)handler:(id)a3 relayUpdated:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 relayType:(id)a8 relayConnectionID:(id)value relayTransactionIDChannelBind:(id)a10 relayTokenChannelBind:(id)a11 relayCandidateID:(id)a12 relayBlob:(id)a13 peerRelayNATIP:(id)a14 peerRelayNATPort:(id)a15 clientInfo:(id)a16 serviceData:(id)a17;
- (void)handler:(id)a3 sessionAccepted:(id)a4 topic:(id)a5 peerID:(id)a6 peerCN:(id)a7 peerPushToken:(id)a8 peerNATType:(id)a9 peerBlob:(id)a10 peerNatIP:(id)a11 relayType:(id)a12 relayConnectionID:(id)a13 relayTransactionIDAlloc:(id)a14 relayTokenAllocReq:(id)a15 myRelayIP:(id)a16 myRelayPort:(id)a17 peerRelayIP:(id)a18 peerRelayPort:(id)a19 clientInfo:(id)a20 serviceData:(id)a21;
- (void)handler:(id)a3 sessionCancelled:(id)a4 topic:(id)a5 peerID:(id)a6 reason:(id)a7 clientInfo:(id)a8 serviceData:(id)a9;
- (void)handler:(id)a3 sessionInitated:(id)a4 topic:(id)a5 myID:(id)a6 peerID:(id)a7 peerDisplayID:(id)a8 peerCN:(id)a9 peerPushToken:(id)a10 peerNATType:(id)a11 peerBlob:(id)a12 peerNatIP:(id)a13 clientInfo:(id)a14 serviceData:(id)a15;
- (void)handler:(id)a3 sessionRejected:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 reason:(id)a8 clientInfo:(id)a9 serviceData:(id)a10;
- (void)refreshRegistration;
- (void)refreshServiceCapabilities;
- (void)relay:(id)a3 sendCancel:(id)a4 toPerson:(id)a5;
- (void)relay:(id)a3 sendInitateRequest:(id)a4 toPerson:(id)a5;
- (void)relay:(id)a3 sendUpdate:(id)a4 toPerson:(id)a5;
- (void)requestVCWithPerson:(id)a3 properties:(id)a4 conference:(id)a5;
- (void)respondToVCInvitationWithPerson:(id)a3 properties:(id)a4 conference:(id)a5;
- (void)sessionWillBecomeInactiveWithAccount:(id)a3;
@end

@implementation FaceTimeServiceSession

+ (void)initialize
{
  if (qword_2814228A8 != -1)
  {
    sub_23BCBF7C8();
  }
}

- (void)_purgeMap
{
  v36 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v32 = 138412546;
      v33 = objc_msgSend_GUID(self, v3, v5, v6, v7);
      v34 = 2112;
      v35 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v4, OS_LOG_TYPE_INFO, "Purging GUID %@ from conference maps %@", &v32, 0x16u);
    }
  }

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v3, self, sel__purgeMap, 0);
  v8 = qword_2814228A0;
  v13 = objc_msgSend_GUID(self, v9, v10, v11, v12);
  v17 = objc_msgSend_objectForKey_(v8, v14, v13, v15, v16);
  objc_msgSend_removeAllObjects(v17, v18, v19, v20, v21);
  v22 = qword_2814228A0;
  v27 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  objc_msgSend_removeObjectForKey_(v22, v28, v27, v29, v30);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_setPurgeTimer
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], a2, self, sel__purgeMap, 0);

  MEMORY[0x2821F9670](self, sel_performSelector_withObject_afterDelay_, sel__purgeMap, 0, v3);
}

- (void)_setPeerInfo:(id)a3 conferenceID:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v8 = qword_2814228A0;
    v9 = objc_msgSend_GUID(self, a2, a3, a4, v4);
    if (!objc_msgSend_objectForKey_(v8, v10, v9, v11, v12))
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = qword_2814228A0;
      v23 = objc_msgSend_GUID(self, v19, v20, v21, v22);
      objc_msgSend_setObject_forKey_(v18, v24, v17, v23, v25);
    }

    v26 = qword_2814228A0;
    v27 = objc_msgSend_GUID(self, v13, v14, v15, v16);
    v31 = objc_msgSend_objectForKey_(v26, v28, v27, v29, v30);
    if (objc_msgSend_count(v31, v32, v33, v34, v35) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = qword_2814228A0;
          v46 = objc_msgSend_GUID(self, v40, v41, v42, v43);
          *buf = 67109378;
          *v78 = 20;
          *&v78[4] = 2112;
          *&v78[6] = objc_msgSend_objectForKey_(v45, v47, v46, v48, v49);
          _os_log_impl(&dword_23BC9F000, v44, OS_LOG_TYPE_INFO, "Max cache size of %d reached for CONFERENCE_MAP. Removing all objects in CONFERENCE_MAP %@", buf, 0x12u);
        }
      }

      v50 = qword_2814228A0;
      v51 = objc_msgSend_GUID(self, v40, v41, v42, v43);
      v55 = objc_msgSend_objectForKey_(v50, v52, v51, v53, v54);
      objc_msgSend_removeAllObjects(v55, v56, v57, v58, v59);
    }

    v60 = qword_2814228A0;
    v61 = objc_msgSend_GUID(self, v36, v37, v38, v39);
    v65 = objc_msgSend_objectForKey_(v60, v62, v61, v63, v64);
    objc_msgSend_setObject_forKey_(v65, v66, a3, a4, v67);
    if (IMOSLoggingEnabled())
    {
      v68 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v78 = a3;
        *&v78[8] = 2112;
        *&v78[10] = a4;
        _os_log_impl(&dword_23BC9F000, v68, OS_LOG_TYPE_INFO, "Setting peer info: %@  for cid: %@", buf, 0x16u);
      }
    }

    v69 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v78 = a3;
      *&v78[8] = 2112;
      *&v78[10] = a4;
      _os_log_impl(&dword_23BC9F000, v69, OS_LOG_TYPE_DEFAULT, "Setting peer info: %@  for cid: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v75 = a3;
        v76 = a4;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v75 = a3;
        v76 = a4;
        IMLogString();
      }
    }

    objc_msgSend__setPurgeTimer(self, v70, v71, v72, v73, v75, v76);
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasPeersForPeerID:(id)a3 conferenceID:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v62 = a3;
      v63 = 2112;
      v64 = a4;
      _os_log_impl(&dword_23BC9F000, v7, OS_LOG_TYPE_INFO, "Checking peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_GUID(self, v9, v10, v11, v12);
      *buf = 138412290;
      v62 = v13;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "My GUID: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "Conference maps %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = qword_2814228A0;
      v21 = objc_msgSend_GUID(self, v15, v16, v17, v18);
      v25 = objc_msgSend_objectForKey_(v20, v22, v21, v23, v24);
      *buf = 138412290;
      v62 = v25;
      _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "Looking for peer in map %@", buf, 0xCu);
    }
  }

  v26 = qword_2814228A0;
  v27 = objc_msgSend_GUID(self, v15, v16, v17, v18);
  v31 = objc_msgSend_objectForKey_(v26, v28, v27, v29, v30);
  v35 = objc_msgSend_objectForKey_(v31, v32, a4, v33, v34);
  if (!v35)
  {
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v35;
      _os_log_impl(&dword_23BC9F000, v37, OS_LOG_TYPE_INFO, "Peers %@", buf, 0xCu);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v56, v60, 16);
  if (v38)
  {
    v40 = *v57;
    *&v39 = 138412546;
    v55 = v39;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v57 != v40)
        {
          objc_enumerationMutation(v35);
        }

        v42 = *(*(&v56 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = v42;
            _os_log_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_INFO, "Peer info %@", buf, 0xCu);
          }
        }

        v47 = objc_msgSend_objectForKey_(v42, v43, @"id", v44, v45, v55);
        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = v55;
            v62 = a3;
            v63 = 2112;
            v64 = v47;
            _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "Comparing %@ to %@", buf, 0x16u);
          }
        }

        if (objc_msgSend_isEqualToString_(a3, v48, v47, v49, v50))
        {
          result = 1;
          goto LABEL_34;
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v52, &v56, v60, 16);
      result = 0;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_32:
    result = 0;
  }

LABEL_34:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_displayIDForPeerID:(id)a3 conferenceID:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = qword_2814228A0;
  v8 = objc_msgSend_GUID(self, a2, a3, a4, v4);
  v12 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend_objectForKey_(v12, v13, a4, v14, v15);
  if (v16)
  {
    v18 = v16;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v47, v51, 16);
    if (v22)
    {
      v23 = *v48;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v47 + 1) + 8 * i);
          v26 = objc_msgSend_objectForKey_(v25, v19, @"id", v20, v21);
          if (objc_msgSend_isEqualToString_(a3, v27, v26, v28, v29))
          {
            v36 = objc_msgSend_objectForKey_(v25, v19, @"canonical-id", v20, v21);
            v35 = objc_msgSend__stripFZIDPrefix(v36, v37, v38, v39, v40);
            if (v35)
            {
              v41 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v53 = v35;
                v54 = 2112;
                v55 = a3;
                _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_DEFAULT, "Found display ID: %@ for peer ID: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  IMLogString();
                }
              }

              if (IMOSLoggingEnabled())
              {
                v42 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v53 = v35;
                  v54 = 2112;
                  v55 = a3;
                  _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "Found display ID: %@ for peer ID: %@", buf, 0x16u);
                }
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v53 = a3;
                  _os_log_impl(&dword_23BC9F000, v44, OS_LOG_TYPE_INFO, "Found no display ID for peer ID: %@", buf, 0xCu);
                }
              }

              v35 = a3;
            }

            goto LABEL_33;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v47, v51, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = a3;
        _os_log_impl(&dword_23BC9F000, v34, OS_LOG_TYPE_INFO, "Found no mapping at all for peer ID: %@", buf, 0xCu);
      }
    }

    v35 = objc_msgSend__stripFZIDPrefix(a3, v30, v31, v32, v33);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v53 = a3;
        v54 = 2112;
        v55 = a4;
        _os_log_impl(&dword_23BC9F000, v43, OS_LOG_TYPE_INFO, "No peers found for peer id: %@  cid: %@", buf, 0x16u);
      }
    }

    v35 = 0;
  }

LABEL_33:
  v45 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)_retargetPeerID:(id)a3 displayID:(id)a4 pushToken:(id)a5 conferenceID:(id)a6
{
  v117 = *MEMORY[0x277D85DE8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *v112 = a3;
      *&v112[8] = 2112;
      *&v112[10] = a4;
      v113 = 2112;
      v114 = a5;
      v115 = 2112;
      v116 = a6;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Retargeting peer ID: %@   display ID: %@   token: %@   cid: %@", buf, 0x2Au);
    }
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *v112 = a3;
    *&v112[8] = 2112;
    *&v112[10] = a4;
    v113 = 2112;
    v114 = a5;
    v115 = 2112;
    v116 = a6;
    _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_DEFAULT, "Retargeting peer ID: %@   display ID: %@   token: %@   cid: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v109 = a5;
      v110 = a6;
      v107 = a3;
      v108 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v109 = a5;
      v110 = a6;
      v107 = a3;
      v108 = a4;
      IMLogString();
    }
  }

  if (!a4)
  {
    a4 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v14, a3, a6, v17);
  }

  v18 = objc_msgSend__FZBestGuessFZIDType(a4, v14, v15, v16, v17, v107, v108, v109, v110);
  v22 = objc_msgSend__IDFromFZIDType_(a4, v19, v18, v20, v21);
  if (v22)
  {
    CFDictionarySetValue(v11, @"canonical-id", v22);
  }

  if (a3)
  {
    CFDictionarySetValue(v11, @"id", a3);
  }

  if (a5)
  {
    CFDictionarySetValue(v11, @"push-token", a5);
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v112 = v11;
      _os_log_impl(&dword_23BC9F000, v27, OS_LOG_TYPE_INFO, "Resulting peerInfo %@", buf, 0xCu);
    }
  }

  v28 = qword_2814228A0;
  v29 = objc_msgSend_GUID(self, v23, v24, v25, v26);
  if (!objc_msgSend_objectForKey_(v28, v30, v29, v31, v32))
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = qword_2814228A0;
    v43 = objc_msgSend_GUID(self, v39, v40, v41, v42);
    objc_msgSend_setObject_forKey_(v38, v44, v37, v43, v45);
  }

  v46 = qword_2814228A0;
  v47 = objc_msgSend_GUID(self, v33, v34, v35, v36);
  v51 = objc_msgSend_objectForKey_(v46, v48, v47, v49, v50);
  if (objc_msgSend_count(v51, v52, v53, v54, v55) >= 0x15)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = qword_2814228A0;
        v66 = objc_msgSend_GUID(self, v60, v61, v62, v63);
        v70 = objc_msgSend_objectForKey_(v65, v67, v66, v68, v69);
        *buf = 67109378;
        *v112 = 20;
        *&v112[4] = 2112;
        *&v112[6] = v70;
        _os_log_impl(&dword_23BC9F000, v64, OS_LOG_TYPE_INFO, "Max cache size of %d reached for CONFERENCE_MAP. Removing all objects in CONFERENCE_MAP %@", buf, 0x12u);
      }
    }

    v71 = qword_2814228A0;
    v72 = objc_msgSend_GUID(self, v60, v61, v62, v63);
    v76 = objc_msgSend_objectForKey_(v71, v73, v72, v74, v75);
    objc_msgSend_removeAllObjects(v76, v77, v78, v79, v80);
  }

  v81 = qword_2814228A0;
  v82 = objc_msgSend_GUID(self, v56, v57, v58, v59);
  v86 = objc_msgSend_objectForKey_(v81, v83, v82, v84, v85);
  v87 = IMSingleObjectArray();
  objc_msgSend_setObject_forKey_(v86, v88, v87, a6, v89);
  if (IMOSLoggingEnabled())
  {
    v90 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v95 = qword_2814228A0;
      v96 = objc_msgSend_GUID(self, v91, v92, v93, v94);
      v100 = objc_msgSend_objectForKey_(v95, v97, v96, v98, v99);
      *buf = 138412290;
      *v112 = v100;
      _os_log_impl(&dword_23BC9F000, v90, OS_LOG_TYPE_INFO, "Conference map after retarget: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v101 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v112 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v101, OS_LOG_TYPE_INFO, "All maps after retarget: %@", buf, 0xCu);
    }
  }

  objc_msgSend__setPurgeTimer(self, v102, v103, v104, v105);
  v106 = *MEMORY[0x277D85DE8];
}

- (void)_setAlternateDisplayID:(id)a3 forPeerID:(id)a4 conferenceID:(id)a5
{
  v86 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        v9 = qword_2814228A0;
        v10 = objc_msgSend_GUID(self, a2, a3, a4, a5);
        if (objc_msgSend_objectForKey_(v9, v11, v10, v12, v13))
        {
          v18 = qword_2814228A0;
          v19 = objc_msgSend_GUID(self, v14, v15, v16, v17);
          v23 = objc_msgSend_objectForKey_(v18, v20, v19, v21, v22);
          v27 = objc_msgSend_objectForKey_(v23, v24, a5, v25, v26);
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v81 = a3;
              v82 = 2112;
              v83 = a4;
              v84 = 2112;
              v85 = a5;
              _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "Setting alternate display ID: %@ for peer ID: %@ cid: %@", buf, 0x20u);
            }
          }

          v29 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v81 = a3;
            v82 = 2112;
            v83 = a4;
            v84 = 2112;
            v85 = a5;
            _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_DEFAULT, "Setting alternate display ID: %@ for peer ID: %@ cid: %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              v73 = a4;
              v74 = a5;
              v72 = a3;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              v73 = a4;
              v74 = a5;
              v72 = a3;
              IMLogString();
            }
          }

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v75, v79, 16, v72, v73, v74);
          if (v34)
          {
            v35 = *v76;
            while (2)
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v76 != v35)
                {
                  objc_enumerationMutation(v27);
                }

                v37 = *(*(&v75 + 1) + 8 * i);
                v38 = objc_msgSend_objectForKey_(v37, v31, @"id", v32, v33);
                if (objc_msgSend_isEqualToString_(a4, v39, v38, v40, v41))
                {
                  v44 = objc_msgSend_mutableCopy(v37, v31, v42, v32, v33);
                  v43 = objc_msgSend_mutableCopy(v27, v45, v46, v47, v48);
                  CFDictionarySetValue(v44, @"alternate-display-id", a3);
                  objc_msgSend_removeObjectIdenticalTo_(v43, v49, v37, v50, v51);
                  objc_msgSend_addObject_(v43, v52, v44, v53, v54);

                  if (v43)
                  {
                    v59 = qword_2814228A0;
                    v60 = objc_msgSend_GUID(self, v55, v56, v57, v58);
                    v64 = objc_msgSend_objectForKey_(v59, v61, v60, v62, v63);
                    objc_msgSend_setObject_forKey_(v64, v65, v43, a5, v66);
                  }

                  goto LABEL_26;
                }
              }

              v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v31, &v75, v79, 16);
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          v43 = 0;
LABEL_26:

          objc_msgSend__setPurgeTimer(self, v67, v68, v69, v70);
        }
      }
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (BOOL)_anyPeersForConferenceIDMayRequireBreakBeforeMake:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = qword_2814228A0;
  v7 = objc_msgSend_GUID(self, a2, a3, v3, v4);
  v11 = objc_msgSend_objectForKey_(v6, v8, v7, v9, v10);
  v15 = objc_msgSend_objectForKey_(v11, v12, a3, v13, v14);
  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = a3;
        _os_log_impl(&dword_23BC9F000, v36, OS_LOG_TYPE_INFO, "No peers found for cid: %@", buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

  v17 = v15;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v39, v43, 16);
  if (!v21)
  {
LABEL_17:
    v34 = 0;
    goto LABEL_19;
  }

  v22 = *v40;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v40 != v22)
      {
        objc_enumerationMutation(v17);
      }

      v24 = *(*(&v39 + 1) + 8 * i);
      v25 = objc_msgSend_objectForKey_(v24, v18, @"protocol-flags", v19, v20);
      v29 = objc_msgSend_objectForKey_(v24, v26, @"id", v27, v28);
      if ((objc_msgSend_unsignedIntegerValue(v25, v30, v31, v32, v33) & 0x10) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          v34 = 1;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v29;
            _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_INFO, "Peer: %@   requires break before make!", buf, 0xCu);
          }
        }

        else
        {
          v34 = 1;
        }

        goto LABEL_19;
      }
    }

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v39, v43, 16);
    v34 = 0;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_19:
  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_peerIDPushTokenPairsForConferenceID:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = qword_2814228A0;
  v7 = objc_msgSend_GUID(self, a2, a3, v3, v4);
  v11 = objc_msgSend_objectForKey_(v6, v8, v7, v9, v10);
  v15 = objc_msgSend_objectForKey_(v11, v12, a3, v13, v14);
  if (v15)
  {
    v55 = a3;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = v15;
    v18 = 0;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v56, v64, 16);
    if (v23)
    {
      v24 = *v57;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v57 != v24)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v56 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKey_(v26, v19, @"id", v21, v22, v53, v54);
          v31 = objc_msgSend_objectForKey_(v26, v28, @"push-token", v29, v30);
          v32 = v31;
          if (v27)
          {
            v33 = v31 == 0;
          }

          else
          {
            v33 = 1;
          }

          v34 = !v33;
          v35 = IMOSLoggingEnabled();
          if (v34)
          {
            if (v35)
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v61 = v32;
                v62 = 2112;
                v63 = v27;
                _os_log_impl(&dword_23BC9F000, v36, OS_LOG_TYPE_INFO, "Found token: %@ for peer ID: %@", buf, 0x16u);
              }
            }

            v37 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v61 = v32;
              v62 = 2112;
              v63 = v27;
              _os_log_impl(&dword_23BC9F000, v37, OS_LOG_TYPE_DEFAULT, "Found token: %@ for peer ID: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                MarcoLog();
              }

              if (IMShouldLog())
              {
                IMLogString();
              }
            }

            if (!v18)
            {
              v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v38 = objc_alloc(MEMORY[0x277CBEAC0]);
            v42 = objc_msgSend_initWithObjectsAndKeys_(v38, v39, v27, v40, v41, @"id", v32, @"push-token", 0);
            objc_msgSend_addObject_(v18, v43, v42, v44, v45);
          }

          else
          {
            if (v35)
            {
              v46 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v61 = v32;
                v62 = 2112;
                v63 = v27;
                _os_log_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_INFO, "Peer didn't have a token %@ or peer ID: %@", buf, 0x16u);
              }
            }

            v47 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v61 = v32;
              v62 = 2112;
              v63 = v27;
              _os_log_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_DEFAULT, "Peer didn't have a token %@ or peer ID: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v53 = v32;
                v54 = v27;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v53 = v32;
                v54 = v27;
                IMLogString();
              }
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v56, v64, 16);
      }

      while (v23);
    }

    if (!objc_msgSend_count(v18, v19, v20, v21, v22, v53, v54))
    {
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v55;
        _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_DEFAULT, "Couldn't build peerID to push token map for cid: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = v55;
          _os_log_impl(&dword_23BC9F000, v49, OS_LOG_TYPE_INFO, "Couldn't build peerID to push token map for cid: %@", buf, 0xCu);
        }
      }
    }

    result = v18;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v61 = a3;
        _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "No peers found for cid: %@", buf, 0xCu);
      }
    }

    result = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_pushTokensForPeerID:(id)a3 conferenceID:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = qword_2814228A0;
  v8 = objc_msgSend_GUID(self, a2, a3, a4, v4);
  v12 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend_objectForKey_(v12, v13, a4, v14, v15);
  if (v16)
  {
    v18 = v16;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = 0;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v48, v52, 16);
    if (v24)
    {
      v25 = *v49;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v27 = *(*(&v48 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKey_(v27, v20, @"id", v22, v23, v46);
          if (objc_msgSend_isEqualToString_(a3, v29, v28, v30, v31))
          {
            v32 = objc_msgSend_objectForKey_(v27, v20, @"push-token", v22, v23);
            v33 = IMOSLoggingEnabled();
            if (v32)
            {
              if (v33)
              {
                v34 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v54 = v32;
                  v55 = 2112;
                  v56 = a3;
                  _os_log_impl(&dword_23BC9F000, v34, OS_LOG_TYPE_INFO, "Found token: %@ for peer ID: %@", buf, 0x16u);
                }
              }

              v35 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v54 = v32;
                v55 = 2112;
                v56 = a3;
                _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_DEFAULT, "Found token: %@ for peer ID: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  v46 = v32;
                  v47 = a3;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  v46 = v32;
                  v47 = a3;
                  IMLogString();
                }
              }

              if (!v19)
              {
                v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              objc_msgSend_addObject_(v19, v36, v32, v37, v38, v46, v47);
            }

            else
            {
              if (v33)
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v54 = a3;
                  _os_log_impl(&dword_23BC9F000, v39, OS_LOG_TYPE_INFO, "Found no token for peer ID: %@", buf, 0xCu);
                }
              }

              v40 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v54 = a3;
                _os_log_impl(&dword_23BC9F000, v40, OS_LOG_TYPE_DEFAULT, "Found no token for peer ID: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  v46 = a3;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  v46 = a3;
                  IMLogString();
                }
              }
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v48, v52, 16);
      }

      while (v24);
    }

    if (!objc_msgSend_count(v19, v20, v21, v22, v23, v46))
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = a3;
        _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_DEFAULT, "Found no mapping at all for peer ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = a3;
          _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "Found no mapping at all for peer ID: %@", buf, 0xCu);
        }
      }
    }

    result = v19;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v54 = a3;
        v55 = 2112;
        v56 = a4;
        _os_log_impl(&dword_23BC9F000, v44, OS_LOG_TYPE_INFO, "No peers found for peer id: %@  cid: %@", buf, 0x16u);
      }
    }

    result = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_pushTokenForPeerID:(id)a3 conferenceID:(id)a4
{
  v5 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, a2, a3, a4, v4);

  return objc_msgSend_lastObject(v5, v6, v7, v8, v9);
}

- (id)_peerIDsForDiplayID:(id)a3 conferenceID:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = qword_2814228A0;
  v8 = objc_msgSend_GUID(self, a2, a3, a4, v4);
  v12 = objc_msgSend_objectForKey_(v7, v9, v8, v10, v11);
  v16 = objc_msgSend_objectForKey_(v12, v13, a4, v14, v15);
  if (v16)
  {
    v17 = v16;
    v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v65, v75, 16);
    if (v23)
    {
      v24 = *v66;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v66 != v24)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(*(&v65 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKey_(v26, v19, @"canonical-id", v21, v22);
          v32 = objc_msgSend__stripFZIDPrefix(v27, v28, v29, v30, v31);
          v36 = objc_msgSend_objectForKey_(v26, v33, @"alternate-display-id", v34, v35);
          if ((objc_msgSend_isEqualToString_(v32, v37, a3, v38, v39) & 1) != 0 || v36 && objc_msgSend_isEqualToString_(a3, v19, v36, v21, v22))
          {
            v40 = objc_msgSend_objectForKey_(v26, v19, @"id", v21, v22);
            if (v40)
            {
              v41 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v70 = v40;
                v71 = 2112;
                v72 = a3;
                v73 = 2112;
                v74 = v26;
                _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_DEFAULT, "Found peer ID: %@ for display ID: %@  (Peer info: %@)", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (MarcoShouldLog())
                {
                  v62 = a3;
                  v63 = v26;
                  v61 = v40;
                  MarcoLog();
                }

                if (IMShouldLog())
                {
                  v62 = a3;
                  v63 = v26;
                  v61 = v40;
                  IMLogString();
                }
              }

              if (IMOSLoggingEnabled())
              {
                v45 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v70 = v40;
                  v71 = 2112;
                  v72 = a3;
                  v73 = 2112;
                  v74 = v26;
                  _os_log_impl(&dword_23BC9F000, v45, OS_LOG_TYPE_INFO, "Found peer ID: %@ for display ID: %@  (Peer info: %@)", buf, 0x20u);
                }
              }

              objc_msgSend_addObject_(v64, v42, v40, v43, v44, v61, v62, v63);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v46 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v70 = v26;
                  _os_log_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_INFO, "Found no ref ID in peer info: %@", buf, 0xCu);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v47 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v70 = v26;
                  _os_log_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_INFO, "Found no ref ID in peer info: %@", buf, 0xCu);
                }
              }
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v65, v75, 16);
      }

      while (v23);
    }

    if (objc_msgSend_count(v64, v19, v20, v21, v22))
    {
      v48 = v64;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v70 = a3;
          _os_log_impl(&dword_23BC9F000, v52, OS_LOG_TYPE_INFO, "Found no peers for display ID: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v70 = a3;
          _os_log_impl(&dword_23BC9F000, v53, OS_LOG_TYPE_INFO, "Found no peers for display ID: %@", buf, 0xCu);
        }
      }

      v54 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = a3;
        _os_log_impl(&dword_23BC9F000, v54, OS_LOG_TYPE_DEFAULT, "Found no peers for display ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v48 = 0;
    }

    v55 = v48;
    result = objc_msgSend_allObjects(v55, v56, v57, v58, v59);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v70 = a3;
        v71 = 2112;
        v72 = a4;
        _os_log_impl(&dword_23BC9F000, v49, OS_LOG_TYPE_INFO, "No peers found for display id: %@  cid: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v70 = a3;
        v71 = 2112;
        v72 = a4;
        _os_log_impl(&dword_23BC9F000, v50, OS_LOG_TYPE_INFO, "No peers found for display id: %@  cid: %@", buf, 0x16u);
      }
    }

    result = 0;
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_peerIDForDiplayID:(id)a3 conferenceID:(id)a4
{
  v5 = objc_msgSend__peerIDsForDiplayID_conferenceID_(self, a2, a3, a4, v4);

  return objc_msgSend_lastObject(v5, v6, v7, v8, v9);
}

- (id)_peerIDPushTokensPairsForPeerID:(id)a3 conferenceID:(id)a4 skippingPairs:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend__peerIDPushTokenPairsForConferenceID_(self, v9, a4, v10, v11);
  v17 = objc_msgSend_pushToken(self, v13, v14, v15, v16);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v34, v38, 16);
  if (v19)
  {
    v24 = v19;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v12);
        }

        v27 = *(*(&v34 + 1) + 8 * i);
        v28 = objc_msgSend_objectForKey_(v27, v20, @"push-token", v22, v23);
        if ((objc_msgSend_containsObject_(a5, v29, v27, v30, v31) & 1) == 0 && (!v17 || (objc_msgSend_isEqual_(v17, v20, v28, v22, v23) & 1) == 0))
        {
          objc_msgSend_addObject_(v8, v20, v27, v22, v23);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v20, &v34, v38, 16);
    }

    while (v24);
  }

  if (!objc_msgSend_count(v8, v20, v21, v22, v23))
  {

    v8 = 0;
  }

  result = v8;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_peerInfoForDisplayID:(id)a3 conferenceID:(id)a4 skippingPairs:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = a4;
  v12 = objc_msgSend__peerIDPushTokenPairsForConferenceID_(self, v9, a4, v10, v11);
  v17 = objc_msgSend_pushToken(self, v13, v14, v15, v16);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v37, v49, 16);
  if (v23)
  {
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v12);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKey_(v26, v19, @"push-token", v21, v22);
        if ((objc_msgSend_containsObject_(a5, v28, v26, v29, v30) & 1) == 0 && (!v17 || (objc_msgSend_isEqual_(v17, v19, v27, v21, v22) & 1) == 0))
        {
          objc_msgSend_addObject_(v8, v19, v26, v21, v22);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, &v37, v49, 16);
    }

    while (v23);
  }

  if (!objc_msgSend_count(v8, v19, v20, v21, v22))
  {

    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v42 = a5;
      v43 = 2112;
      v44 = a3;
      v45 = 2112;
      v46 = v35;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_23BC9F000, v31, OS_LOG_TYPE_INFO, "Skipping pairs: %@    for display id: %@   conference: %@  Built peer info: %@", buf, 0x2Au);
    }
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = a5;
    v43 = 2112;
    v44 = a3;
    v45 = 2112;
    v46 = v35;
    v47 = 2112;
    v48 = v8;
    _os_log_impl(&dword_23BC9F000, v32, OS_LOG_TYPE_DEFAULT, "Skipping pairs: %@    for display id: %@   conference: %@  Built peer info: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  result = v8;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setConferenceIDMap:(id)a3 forToken:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v26 = 138412546;
        *v27 = a4;
        *&v27[8] = 2112;
        *&v27[10] = a3;
        _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_INFO, "Setting token %@ for conference ID %@", &v26, 0x16u);
      }
    }

    conferenceIDMap = self->_conferenceIDMap;
    if (!conferenceIDMap)
    {
      conferenceIDMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_conferenceIDMap = conferenceIDMap;
    }

    if (objc_msgSend_count(conferenceIDMap, v7, v8, v9, v10) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = self->_conferenceIDMap;
          v26 = 67109378;
          *v27 = 20;
          *&v27[4] = 2112;
          *&v27[6] = v20;
          _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "Max cache size of %d reached for conferenceIDMap. Removing all objects in conferenceIDMap %@", &v26, 0x12u);
        }
      }

      objc_msgSend_removeAllObjects(self->_conferenceIDMap, v15, v16, v17, v18);
    }

    objc_msgSend_setObject_forKey_(self->_conferenceIDMap, v13, a4, a3, v14);
    objc_msgSend__setPurgeTimer(self, v21, v22, v23, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_setInitiatedConference:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    initiatedConferences = self->_initiatedConferences;
    if (!initiatedConferences)
    {
      initiatedConferences = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_initiatedConferences = initiatedConferences;
    }

    if (objc_msgSend_count(initiatedConferences, a2, a3, v3, v4) >= 0x15)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = self->_initiatedConferences;
          v18[0] = 67109378;
          v18[1] = 20;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "Max cache size of %d reached for initiatedConferences map. Removing all objects in initiatedConferences %@", v18, 0x12u);
        }
      }

      objc_msgSend_removeAllObjects(self->_initiatedConferences, v11, v12, v13, v14);
    }

    objc_msgSend_addObject_(self->_initiatedConferences, v8, a3, v9, v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int)_callTypeForConferenceID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_objectForKey_(self->_callTypeMap, a2, a3, v3, v4);
  if (!v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        callTypeMap = self->_callTypeMap;
        v16 = 138412546;
        v17 = a3;
        v18 = 2112;
        v19 = callTypeMap;
        _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Could not find call type for conference ID %@ in map: %@", &v16, 0x16u);
      }
    }
  }

  result = objc_msgSend_intValue(v11, v7, v8, v9, v10);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (FaceTimeServiceSession)initWithAccount:(id)a3 service:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v108.receiver = self;
  v108.super_class = FaceTimeServiceSession;
  v4 = [(IMDAppleServiceSession *)&v108 initWithAccount:a3 service:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D186C8]);
    v4->_callAccountController = objc_msgSend_initWithService_(v5, v6, *MEMORY[0x277D18690], v7, v8);
    v4->_loggingCategory = @"FaceTime";
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      loggingCategory = v4->_loggingCategory;
      v15 = objc_msgSend_GUID(v4, v10, v11, v12, v13);
      *buf = 138412546;
      *&buf[4] = loggingCategory;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_DEBUG, "Initializing FaceTime Session with category: %@   accountID: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v104 = v4->_loggingCategory;
      v105 = objc_msgSend_GUID(v4, v16, v17, v18, v19);
      IMLogString();
    }

    v20 = qword_281422898;
    v21 = objc_msgSend_GUID(v4, v16, v17, v18, v19, v104, v105);
    objc_msgSend_addObject_(v20, v22, v21, v23, v24);
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "Priming FaceTime Server bag", buf, 2u);
      }
    }

    objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], v25, 0, v26, v27);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v29, OS_LOG_TYPE_INFO, "...done", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v30, OS_LOG_TYPE_INFO, "Building push listener", buf, 2u);
      }
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = objc_msgSend_topicForCallType_(v4, v32, 1, v33, v34);
    if (objc_msgSend_length(v35, v36, v37, v38, v39))
    {
      objc_msgSend_addObject_(v31, v40, v35, v41, v42);
    }

    v43 = objc_msgSend_topicForCallType_(v4, v40, 0, v41, v42);
    if (objc_msgSend_length(v43, v44, v45, v46, v47))
    {
      objc_msgSend_addObject_(v31, v48, v43, v49, v50);
    }

    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v31;
        _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "  => Topics: %@", buf, 0xCu);
      }
    }

    v52 = [FaceTimePushHandler alloc];
    v56 = objc_msgSend_initWithTopics_(v52, v53, v31, v54, v55);
    v4->_ftPushHandler = v56;
    objc_msgSend_addListener_(v56, v57, v4, v58, v59);

    objc_msgSend_configureAsMacNotificationCenterObserver_(v4->_ftPushHandler, v60, *MEMORY[0x277D194C0], v61, v62);
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v63, OS_LOG_TYPE_INFO, "...done", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v64, OS_LOG_TYPE_INFO, "Building Message delivery", buf, 2u);
      }
    }

    if (!qword_281422890)
    {
      if (IMOSLoggingEnabled())
      {
        v69 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v69, OS_LOG_TYPE_INFO, "Building Message delivery", buf, 2u);
        }
      }

      qword_281422890 = objc_alloc_init(objc_msgSend_APNSMessageDeliveryClass(MEMORY[0x277D07DC0], v65, v66, v67, v68));
      objc_msgSend_setUserAgent_(qword_281422890, v70, @"com.apple.invitation-service", v71, v72);
    }

    v73 = objc_alloc_init(MEMORY[0x277D19258]);
    v4->_broadcasterACInvocationQueue = v73;
    v74 = IMGetDaemonListenerProtocol();
    objc_msgSend_setProtocol_(v73, v75, v74, v76, v77);
    objc_msgSend_setDelegate_(v4->_broadcasterACInvocationQueue, v78, v4, v79, v80);
    objc_msgSend_setDequeueRate_(v4->_broadcasterACInvocationQueue, v81, v82, v83, v84, 0.1);
    v85 = objc_alloc_init(MEMORY[0x277D19258]);
    v4->_broadcasterVCInvocationQueue = v85;
    v86 = IMGetDaemonListenerProtocol();
    objc_msgSend_setProtocol_(v85, v87, v86, v88, v89);
    objc_msgSend_setDelegate_(v4->_broadcasterVCInvocationQueue, v90, v4, v91, v92);
    objc_msgSend_setDequeueRate_(v4->_broadcasterVCInvocationQueue, v93, v94, v95, v96, 0.1);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v110 = sub_23BCA41F0;
    v111 = sub_23BCA4200;
    v112 = v4;
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = sub_23BCA420C;
    v107[3] = &unk_278B8F168;
    v107[4] = v4;
    v107[5] = buf;
    v4->_completionBlock = objc_msgSend_copy(v107, v97, v98, v99, v100);
    if (IMOSLoggingEnabled())
    {
      v101 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        *v106 = 0;
        _os_log_impl(&dword_23BC9F000, v101, OS_LOG_TYPE_INFO, "...done", v106, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v102 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v7, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4, v5, v6);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, 0, 0);
  objc_msgSend__purgeMap(self, v10, v11, v12, v13);

  objc_msgSend_removeListener_(self->_ftPushHandler, v14, self, v15, v16);
  v17 = qword_2814228A0;
  v22 = objc_msgSend_GUID(self, v18, v19, v20, v21);
  objc_msgSend_removeObjectForKey_(v17, v23, v22, v24, v25);

  v26 = qword_281422898;
  v31 = objc_msgSend_GUID(self, v27, v28, v29, v30);
  objc_msgSend_removeObject_(v26, v32, v31, v33, v34);
  if (!objc_msgSend_count(qword_281422898, v35, v36, v37, v38))
  {
    objc_msgSend_invalidate(qword_281422890, v39, v40, v41, v42);

    qword_281422890 = 0;
  }

  objc_msgSend_setDelegate_(self->_broadcasterACInvocationQueue, v43, 0, v44, v45);
  objc_msgSend_setTarget_(self->_broadcasterACInvocationQueue, v46, 0, v47, v48);
  objc_msgSend_removeAllInvocations(self->_broadcasterACInvocationQueue, v49, v50, v51, v52);

  objc_msgSend_setDelegate_(self->_broadcasterVCInvocationQueue, v53, 0, v54, v55);
  objc_msgSend_setTarget_(self->_broadcasterVCInvocationQueue, v56, 0, v57, v58);
  objc_msgSend_removeAllInvocations(self->_broadcasterVCInvocationQueue, v59, v60, v61, v62);

  v63.receiver = self;
  v63.super_class = FaceTimeServiceSession;
  [(IMDAppleServiceSession *)&v63 dealloc];
}

- (id)regionID
{
  v5 = objc_msgSend_idsAccount(self, a2, v2, v3, v4);
  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v14 = 0;
    v12 = "********** Requesting regionID but we don't have an IDSAccount, please file a radar ********** ";
    v13 = &v14;
    goto LABEL_9;
  }

  result = objc_msgSend_regionID(v5, v6, v7, v8, v9);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v12 = "********** IDSAccount returned empty regionID ********** ";
      v13 = &v15;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
    }
  }

  return 0;
}

- (id)regionBasePhoneNumber
{
  v5 = objc_msgSend_idsAccount(self, a2, v2, v3, v4);
  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v14 = 0;
    v12 = "********** Requesting regionBasePhoneNumber but we don't have an IDSAccount, please file a radar ********** ";
    v13 = &v14;
    goto LABEL_9;
  }

  result = objc_msgSend_regionBasePhoneNumber(v5, v6, v7, v8, v9);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v12 = "********** IDSAccount returned empty regionBasePhoneNumber ********** ";
      v13 = &v15;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
    }
  }

  return 0;
}

- (id)regionServerContext
{
  v5 = objc_msgSend_idsAccount(self, a2, v2, v3, v4);
  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v14 = 0;
    v12 = "********** Requesting regionServerContext but we don't have an IDSAccount, please file a radar ********** ";
    v13 = &v14;
    goto LABEL_9;
  }

  result = objc_msgSend_regionServerContext(v5, v6, v7, v8, v9);
  if (result)
  {
    return result;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v12 = "********** IDSAccount returned empty regionServerContext ********** ";
      v13 = &v15;
LABEL_9:
      _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
    }
  }

  return 0;
}

- (id)profileID
{
  v5 = objc_msgSend_idsAccount(self, a2, v2, v3, v4);
  if (v5)
  {
    v10 = objc_msgSend_profileID(v5, v6, v7, v8, v9);
    if (!objc_msgSend_length(v10, v11, v12, v13, v14))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "********** IDSAccount returned empty profileID ********** ", buf, 2u);
        }
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
        *v18 = 0;
        _os_log_impl(&dword_23BC9F000, v16, OS_LOG_TYPE_INFO, "********** Requesting profileID but we don't have an IDSAccount, please file a radar ********** ", v18, 2u);
      }
    }

    return 0;
  }

  return v10;
}

- (id)userID
{
  v5 = objc_msgSend_account(self, a2, v2, v3, v4);

  return objc_msgSend_loginID(v5, v6, v7, v8, v9);
}

- (id)phoneNumber
{
  v5 = objc_msgSend_idsAccount(self, a2, v2, v3, v4);
  if (v5)
  {
    v10 = objc_msgSend_loginID(v5, v6, v7, v8, v9);
    if (!objc_msgSend_length(v10, v11, v12, v13, v14))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_INFO, "********** IDSAccount returned empty phoneNumber ********** ", buf, 2u);
        }
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
        *v18 = 0;
        _os_log_impl(&dword_23BC9F000, v16, OS_LOG_TYPE_INFO, "********** Requesting phoneNumber but we don't have an IDSAccount, please file a radar ********** ", v18, 2u);
      }
    }

    return 0;
  }

  return v10;
}

- (__SecKey)callerPrivateKey
{
  if (!self->_privateIdentityLoaded)
  {
    v6 = 0;
    cf[0] = 0;
    v5 = 0;
    _IDSAppleRegistrationCopyKeyPair();
    self->_privateIdentityLoaded = 1;
  }

  if (!self->_privateKey)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(cf[0]) = 0;
        _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_INFO, "********** Requesting private key but it's NULL ********** ", cf, 2u);
      }
    }
  }

  return self->_privateKey;
}

- (BOOL)_checkBadPushToken:(id)a3
{
  v7 = objc_msgSend_pushToken(self, a2, a3, v3, v4);
  LOBYTE(v10) = 1;
  if (a3 && v7)
  {
    if (objc_msgSend_isEqual_(a3, v6, v7, v8, v9))
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v11, OS_LOG_TYPE_DEFAULT, "Received push to myself, from myself - ignoring", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v10 = IMOSLoggingEnabled();
      if (v10)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        v10 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v10)
        {
          *v14 = 0;
          _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "Received push to myself, from myself - ignoring", v14, 2u);
          LOBYTE(v10) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (void)refreshRegistration
{
  v47 = *MEMORY[0x277D85DE8];
  ftPushHandler = self->_ftPushHandler;
  isDeviceRegistered = objc_msgSend__isDeviceRegistered(self, a2, v2, v3, v4);
  objc_msgSend_setRegistered_(ftPushHandler, v8, isDeviceRegistered, v9, v10);
  if (objc_msgSend__isDeviceRegistered(self, v11, v12, v13, v14))
  {
    v19 = MEMORY[0x277CBEAC0];
    v20 = _IDSInvitationProtocolVersionNumber();
    v23 = objc_msgSend_dictionaryWithObject_forKey_(v19, v21, v20, @"InvitationProtocolVersion", v22);
    v28 = objc_msgSend_account(self, v24, v25, v26, v27);
    objc_msgSend_writeAccountDefaults_(v28, v29, v23, v30, v31);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = objc_msgSend_idsAccounts(self, v15, v16, v17, v18, 0);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v42, v46, 16);
  if (v34)
  {
    v38 = v34;
    v39 = *v43;
    do
    {
      v40 = 0;
      do
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(v32);
        }

        objc_msgSend_resetCallerIDForIDSAccount_(self, v35, *(*(&v42 + 1) + 8 * v40++), v36, v37);
      }

      while (v38 != v40);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v42, v46, 16);
    }

    while (v38);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_registrationSupportedForRegistration
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v4);
  if (objc_msgSend_isExpired(v5, v6, v7, v8, v9))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "*** Lockdown state is expired, not allowing registration", buf, 2u);
      }
    }

    v15 = OSLogHandleForRegistrationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_ERROR, "*** Lockdown state is expired, not allowing registration", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      IMLogString();
    }

    LOBYTE(v16) = 0;
  }

  else
  {
    v17 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v10, v11, v12, v13);
    v16 = objc_msgSend_registrationSupported(v17, v18, v19, v20, v21);
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = @"NO";
      if (v16)
      {
        v23 = @"YES";
      }

      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&dword_23BC9F000, v22, OS_LOG_TYPE_DEBUG, "Returning device support registration supported: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_validRegistrationStateToAcceptCalls
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v4);
  if (objc_msgSend_isExpired(v6, v7, v8, v9, v10))
  {
    v15 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing accept", buf, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ((objc_msgSend__registrationSupportedForRegistration(self, v11, v12, v13, v14) & 1) == 0)
  {
    v58 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 0;
      _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_DEFAULT, "Registration is not supported, we cannot accept calls", v66, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v20 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v16, v17, v18, v19);
  if ((objc_msgSend_isSetup(v20, v21, v22, v23, v24) & 1) == 0)
  {
    v59 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v65 = 0;
      _os_log_impl(&dword_23BC9F000, v59, OS_LOG_TYPE_DEFAULT, "We're not restored from backup yet, we cannot accept calls", v65, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v29 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v25, v26, v27, v28);
  if ((objc_msgSend_isActivated(v29, v30, v31, v32, v33) & 1) == 0)
  {
    v60 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *v64 = 0;
      _os_log_impl(&dword_23BC9F000, v60, OS_LOG_TYPE_DEFAULT, "Locked down, we cannot accept calls", v64, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v38 = objc_msgSend_idsAccount(self, v34, v35, v36, v37);
  if (objc_msgSend_accountType(v38, v39, v40, v41, v42) || (v47 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v43, v44, v45, v46), isTelephonyDevice = objc_msgSend_isTelephonyDevice(v47, v48, v49, v50, v51), !isTelephonyDevice) || (sub_23BCAA810(isTelephonyDevice, v53, v54, v55, v56) & 1) != 0)
  {
    LOBYTE(v57) = 1;
    return v57;
  }

  v61 = OSLogHandleForFaceTimeCategory();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 0;
    _os_log_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_DEFAULT, "Not a valid sim state, we cannot accept calls", v63, 2u);
  }

  if (MarcoShouldLog())
  {
    MarcoLog();
  }

  v57 = _IMWillLog();
  if (v57)
  {
LABEL_32:
    _IMAlwaysLog();
LABEL_33:
    LOBYTE(v57) = 0;
  }

  return v57;
}

- (id)registeredURIs
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = objc_msgSend_idsAccounts(self, v7, v8, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v39, v43, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v40;
    do
    {
      v20 = 0;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = objc_msgSend_registeredURIs(*(*(&v39 + 1) + 8 * v20), v14, v15, v16, v17);
        objc_msgSend_addObjectsFromArray_(v6, v22, v21, v23, v24);
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v39, v43, 16);
    }

    while (v18);
  }

  if (objc_msgSend_count(v6, v14, v15, v16, v17))
  {
    IMDInconsistencyResolved();
    result = objc_msgSend_allObjects(v6, v29, v30, v31, v32);
  }

  else
  {
    if (objc_msgSend_isActive(self, v25, v26, v27, v28))
    {
      objc_msgSend_accounts(self, v34, v35, v36, v37);
      IMDNoticedInconsistency();
    }

    result = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)idsAccounts
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = objc_msgSend_accounts(self, v7, v8, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v40, v44, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_msgSend_idsAccount(v21, v22, v23, v24, v25);
          objc_msgSend_addObject_(v6, v27, v26, v28, v29);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v22, &v40, v44, 16);
    }

    while (v18);
  }

  if (objc_msgSend_count(v6, v14, v15, v16, v17))
  {
    IMDInconsistencyResolved();
  }

  else
  {
    if (objc_msgSend_isActive(self, v30, v31, v32, v33))
    {
      objc_msgSend_accounts(self, v34, v35, v36, v37);
      IMDNoticedInconsistency();
    }

    v6 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_validRegistrationStateToMakeCalls
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], a2, v2, v3, v4);
  if ((objc_msgSend_isActivated(v6, v7, v8, v9, v10) & 1) == 0)
  {
    v57 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v57, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing calls", buf, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v15 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v11, v12, v13, v14);
  if ((objc_msgSend_isSetup(v15, v16, v17, v18, v19) & 1) == 0)
  {
    v58 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 0;
      _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_DEFAULT, "We're not restored from backup yet, we cannot make calls", v66, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ((objc_msgSend__registrationSupportedForRegistration(self, v20, v21, v22, v23) & 1) == 0)
  {
    v59 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v65 = 0;
      _os_log_impl(&dword_23BC9F000, v59, OS_LOG_TYPE_DEFAULT, "Registration is not supported, we cannot make calls", v65, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v28 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v24, v25, v26, v27);
  if ((objc_msgSend_isActivated(v28, v29, v30, v31, v32) & 1) == 0)
  {
    v60 = OSLogHandleForFaceTimeCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *v64 = 0;
      _os_log_impl(&dword_23BC9F000, v60, OS_LOG_TYPE_DEFAULT, "Locked down, we cannot make calls", v64, 2u);
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v37 = objc_msgSend_idsAccount(self, v33, v34, v35, v36);
  if (objc_msgSend_accountType(v37, v38, v39, v40, v41) || (v46 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v42, v43, v44, v45), isTelephonyDevice = objc_msgSend_isTelephonyDevice(v46, v47, v48, v49, v50), !isTelephonyDevice) || (sub_23BCAAF28(isTelephonyDevice, v52, v53, v54, v55) & 1) != 0)
  {
    LOBYTE(v56) = 1;
    return v56;
  }

  v61 = OSLogHandleForFaceTimeCategory();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *v63 = 0;
    _os_log_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_DEFAULT, "Not a valid sim state, we cannot make calls", v63, 2u);
  }

  if (MarcoShouldLog())
  {
    MarcoLog();
  }

  v56 = _IMWillLog();
  if (v56)
  {
LABEL_32:
    _IMAlwaysLog();
LABEL_33:
    LOBYTE(v56) = 0;
  }

  return v56;
}

- (void)sessionWillBecomeInactiveWithAccount:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[FaceTimeServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  objc_msgSend__purgeMap(self, v5, v6, v7, v8);
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {

    self->_completionBlock = 0;
  }

  v12.receiver = self;
  v12.super_class = FaceTimeServiceSession;
  [(IMDAppleServiceSession *)&v12 sessionWillBecomeInactiveWithAccount:a3];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_logLocalInfo
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = objc_msgSend_registeredURIs(self, v4, v5, v6, v7);
    _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      objc_msgSend_registeredURIs(self, v8, v9, v10, v11);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      objc_msgSend_registeredURIs(self, v12, v13, v14, v15);
      IMLogString();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)refreshServiceCapabilities
{
  v6 = objc_msgSend_broadcaster(self, a2, v2, v3, v4);
  v11 = objc_msgSend_accountID(self, v7, v8, v9, v10);
  v16 = objc_msgSend_capabilities(self, v12, v13, v14, v15);

  MEMORY[0x2821F9670](v6, sel_account_capabilitiesChanged_, v11, v16, v17);
}

- (void)_cancelVCRequestWithPerson:(id)a3 properties:(id)a4 conference:(id)a5 pairsToSkip:(id)a6 reason:(id)a7
{
  v155 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v146 = a3;
      v147 = 2112;
      v148 = a5;
      v149 = 2112;
      v150 = a4;
      v151 = 2112;
      v152 = a6;
      v153 = 2112;
      v154 = a7;
      _os_log_impl(&dword_23BC9F000, v16, OS_LOG_TYPE_INFO, "cancelVCRequestWithPerson: %@  conference: %@ properties: %@ pairsToSkip: %@ reason: %@", buf, 0x34u);
    }
  }

  v17 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v13, a5, v14, v15);
  v21 = objc_msgSend__callTypeForConferenceID_(self, v18, a5, v19, v20);
  v25 = objc_msgSend_objectForKey_(a4, v22, *MEMORY[0x277D19568], v23, v24);
  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"unknown";
    if (!v21)
    {
      v27 = @"video";
    }

    *buf = 138413058;
    v146 = a3;
    if (v21 == 1)
    {
      v27 = @"audio";
    }

    v147 = 2112;
    v148 = v27;
    v149 = 2112;
    v150 = a5;
    v151 = 2112;
    v152 = v25;
    _os_log_impl(&dword_23BC9F000, v26, OS_LOG_TYPE_DEFAULT, "userID: %@  call type: %@  rid: %@ sessionID: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v29 = @"unknown";
      if (!v21)
      {
        v29 = @"video";
      }

      if (v21 == 1)
      {
        v29 = @"audio";
      }

      v140 = a5;
      v141 = v25;
      v137 = a3;
      v139 = v29;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v30 = @"unknown";
      if (!v21)
      {
        v30 = @"video";
      }

      if (v21 == 1)
      {
        v30 = @"audio";
      }

      v140 = a5;
      v141 = v25;
      v137 = a3;
      v139 = v30;
      IMLogString();
    }
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v28, 3, v21, a5, a3, 0, v137, v139, v140, v141) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v31, 3, v21, a5, a3, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v32, 3, v21, a5, a3, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v33, 3, v21, a5, a3, 0))
  {
    v142 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(self, v34, a3, a5, a6);
    if (objc_msgSend_count(v142, v35, v36, v37, v38))
    {
      goto LABEL_35;
    }

    v42 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v39, a5, v40, v41);
    v47 = objc_msgSend___imHexString(v42, v43, v44, v45, v46);
    if (v47)
    {
      v143 = v47;
      if ((objc_msgSend_isEqualToString_(a5, v48, v47, v50, v51) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v53 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v146 = v143;
            v147 = 2112;
            v148 = a5;
            _os_log_impl(&dword_23BC9F000, v53, OS_LOG_TYPE_INFO, "New conference ID %@ for %@, finding peers", buf, 0x16u);
          }
        }

        v142 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(self, v52, a3, v143, a6);
      }
    }

    if (objc_msgSend_count(v142, v48, v49, v50, v51))
    {
LABEL_35:
      v144 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *buf = objc_msgSend_unsignedIntValue(v25, v58, v59, v60, v61);
      v64 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v62, buf, 4, v63);
      objc_msgSend_setObject_forKey_(v144, v65, v64, @"s", v66);
      v70 = objc_alloc_init(FTCancelMessage);
      if (!v17)
      {
        v17 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v67, a5, v68, v69);
      }

      objc_msgSend_setSessionToken_(v70, v67, v17, v68, v69);
      objc_msgSend_setReason_(v70, v71, a7, v72, v73);
      objc_msgSend_setPeers_(v70, v74, v142, v75, v76);
      objc_msgSend_setClientInfo_(v70, v77, v144, v78, v79);
      v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v85 = v80;
      if (a3)
      {
        CFDictionarySetValue(v80, @"ID", a3);
      }

      if (a5)
      {
        CFDictionarySetValue(v85, @"conference", a5);
      }

      v87 = objc_msgSend_date(MEMORY[0x277CBEAA8], v81, v82, v83, v84);
      if (v87)
      {
        CFDictionarySetValue(v85, @"sendDate", v87);
      }

      v90 = objc_msgSend_topicForCallType_(self, v86, v21, v88, v89);
      objc_msgSend_setTopic_(v70, v91, v90, v92, v93);
      objc_msgSend_setUserInfo_(v70, v94, v85, v95, v96);
      objc_msgSend_setCompletionBlock_(v70, v97, self->_completionBlock, v98, v99);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v100, v70, v101, v102);
      objc_msgSend_setTimeout_(v70, v103, v104, v105, v106);
      v110 = objc_msgSend_callerCertForCallType_(self, v107, v21, v108, v109);
      objc_msgSend_setIDCertificate_(v70, v111, v110, v112, v113);
      v118 = objc_msgSend_callerPrivateKey(self, v114, v115, v116, v117);
      objc_msgSend_setIdentityPrivateKey_(v70, v119, v118, v120, v121);
      v126 = objc_msgSend_callerURI(self, v122, v123, v124, v125);
      objc_msgSend_setSelfURI_(v70, v127, v126, v128, v129);
      if (IMOSLoggingEnabled())
      {
        v130 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v146 = a3;
          _os_log_impl(&dword_23BC9F000, v130, OS_LOG_TYPE_INFO, "Sending cancel invitation to: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v138 = a3;
        MarcoNoteCheckpoint();
      }

      objc_msgSend_sendMessage_(qword_281422890, v131, v70, v132, v133, v138);
    }

    else
    {
      if (objc_msgSend__hasOutgoingInvitationInFlight(self, v54, v55, v56, v57))
      {
        if (IMOSLoggingEnabled())
        {
          v135 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v146 = a5;
            _os_log_impl(&dword_23BC9F000, v135, OS_LOG_TYPE_INFO, "Delaying cancel for cid %@", buf, 0xCu);
          }
        }

        im_dispatch_after();
      }

      if (IMOSLoggingEnabled())
      {
        v136 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v136, OS_LOG_TYPE_INFO, "No peers to send cancel invitation to, ignoring", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }
  }

  v134 = *MEMORY[0x277D85DE8];
}

- (void)requestVCWithPerson:(id)a3 properties:(id)a4 conference:(id)a5
{
  v408 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v401 = a3;
      v402 = 2112;
      v403 = a4;
      v404 = 2112;
      v405 = a5;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "requestVCWithPerson: %@  properties: %@ conference: %@", buf, 0x20u);
    }
  }

  value = a3;
  v386 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_callerURI(self, v10, v11, v12, v13);
      *buf = 138412546;
      v401 = a3;
      v402 = 2112;
      v403 = v14;
      _os_log_impl(&dword_23BC9F000, v9, OS_LOG_TYPE_INFO, "Sending invitation to: %@   from: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v372 = a3;
    v375 = objc_msgSend_callerURI(self, v15, v16, v17, v18);
    MarcoNoteCheckpoint();
  }

  objc_msgSend__logLocalInfo(self, v15, v16, v17, v18, v372, v375);
  v23 = objc_msgSend__FZBestGuessFZIDType(a3, v19, v20, v21, v22);
  v27 = objc_msgSend__URIFromFZIDType_(a3, v24, v23, v25, v26);
  v31 = objc_msgSend_objectForKey_(a4, v28, *MEMORY[0x277D194E0], v29, v30);
  v35 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v32, v31, v33, v34);
  v39 = objc_msgSend_objectForKey_(v35, v36, *MEMORY[0x277D194F0], v37, v38);
  v43 = objc_msgSend_objectForKey_(v35, v40, *MEMORY[0x277D19510], v41, v42);
  v47 = objc_msgSend_objectForKey_(v35, v44, *MEMORY[0x277D19508], v45, v46);
  v382 = objc_msgSend_objectForKey_(v35, v48, *MEMORY[0x277D19560], v49, v50);
  v383 = objc_msgSend_objectForKey_(v35, v51, *MEMORY[0x277D19568], v52, v53);
  v381 = objc_msgSend_objectForKey_(v35, v54, *MEMORY[0x277D19500], v55, v56);
  v60 = objc_msgSend_objectForKey_(v35, v57, @"excludingPushTokens", v58, v59);
  v385 = objc_msgSend_objectForKey_(a4, v61, *MEMORY[0x277D194C8], v62, v63);
  v67 = objc_msgSend_objectForKey_(a4, v64, *MEMORY[0x277D19518], v65, v66);
  v384 = objc_msgSend_objectForKey_(a4, v68, *MEMORY[0x277D194D8], v69, v70);
  v387 = objc_msgSend_BOOLValue(v385, v71, v72, v73, v74);
  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v75, 1, v387, a5, a3, a4) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v76, 1, v387, a5, a3, a4) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v77, 1, v387, a5, a3, a4) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v78, 1, v387, a5, a3, a4) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v79, 1, v387, a5, a3, a4, v27))
  {
    v80 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = @"video";
      *buf = 138413058;
      v401 = a3;
      if (v387)
      {
        v81 = @"audio";
      }

      v402 = 2112;
      v403 = v383;
      v404 = 2112;
      v405 = a4;
      v406 = 2112;
      v407 = v81;
      _os_log_impl(&dword_23BC9F000, v80, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ props: %@   call type: %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v82 = @"video";
        if (v387)
        {
          v82 = @"audio";
        }

        v377 = a4;
        v378 = v82;
        v373 = a3;
        v376 = v383;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v83 = @"video";
        if (v387)
        {
          v83 = @"audio";
        }

        v377 = a4;
        v378 = v83;
        v373 = a3;
        v376 = v383;
        IMLogString();
      }
    }

    v379 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v384)
    {
      v380 = objc_alloc_init(FTReInitiateMessage);
      if (v67)
      {
        v87 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v84, v67, v85, v86);
      }

      else
      {
        v87 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v84, a5, v85, v86);
      }

      objc_msgSend_setSessionToken_(v380, v88, v87, v89, v90, v373, v376, v377, v378);
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v96 = objc_msgSend_sessionToken(v380, v91, v95, v92, v93);
          *buf = 138412802;
          v401 = v67;
          v402 = 2112;
          v403 = a5;
          v404 = 2112;
          v405 = v96;
          _os_log_impl(&dword_23BC9F000, v94, OS_LOG_TYPE_INFO, "existingConferenceID %@   conferenceID %@   sessionToken %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v380 = objc_alloc_init(FTInitiateMessage);
    }

    objc_msgSend_setSelfNATType_(v380, v91, v43, v92, v93);
    objc_msgSend_setSelfNatIP_(v380, v97, v47, v98, v99);
    v104 = objc_msgSend_pushToken(self, v100, v101, v102, v103);
    objc_msgSend_setSelfPushToken_(v380, v105, v104, v106, v107);
    objc_msgSend_setSelfBlob_(v380, v108, v39, v109, v110);
    v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v384)
    {
      v117 = qword_2814228A0;
      v118 = objc_msgSend_GUID(self, v112, v113, v114, v115);
      v122 = objc_msgSend_objectForKey_(v117, v119, v118, v120, v121);
      v130 = (objc_msgSend_length(v67, v123, v124, v125, v126) ? objc_msgSend_objectForKey_(v122, v127, v67, v128, v129, v373) : objc_msgSend_objectForKey_(v122, v127, a5, v128, v129, v373));
      Object = objc_msgSend_lastObject(v130, v131, v132, v133, v134);
      v136 = Object;
      if (Object)
      {
        v137 = objc_msgSend_objectForKey_(Object, v112, @"id", v114, v115);
        v141 = objc_msgSend_objectForKey_(v136, v138, @"push-token", v139, v140);
        if (IMOSLoggingEnabled())
        {
          v142 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v401 = v136;
            _os_log_impl(&dword_23BC9F000, v142, OS_LOG_TYPE_INFO, "Existing peer found %@", buf, 0xCu);
          }
        }

        v143 = objc_alloc(MEMORY[0x277CBEAC0]);
        v147 = objc_msgSend_initWithObjectsAndKeys_(v143, v144, v137, v145, v146, @"id", v141, @"push-token", 0);
        objc_msgSend_addObject_(v111, v148, v147, v149, v150);
      }
    }

    if (!objc_msgSend_count(v111, v112, v113, v114, v115, v373))
    {
      v151 = objc_alloc_init(MEMORY[0x277CBEB58]);
      if (objc_msgSend_count(v381, v152, v153, v154, v155))
      {
        v159 = objc_msgSend_arrayByApplyingSelector_(v381, v156, sel__bestGuessURI, v157, v158);
        objc_msgSend_addObjectsFromArray_(v151, v160, v159, v161, v162);
      }

      v396 = 0u;
      v397 = 0u;
      v394 = 0u;
      v395 = 0u;
      v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v156, &v394, v399, 16);
      if (v165)
      {
        v166 = *v395;
        do
        {
          for (i = 0; i != v165; ++i)
          {
            if (*v395 != v166)
            {
              objc_enumerationMutation(v151);
            }

            v168 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v163, *(*(&v394 + 1) + 8 * i), @"raw-id", v164);
            objc_msgSend_addObject_(v111, v169, v168, v170, v171);
          }

          v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v163, &v394, v399, 16);
        }

        while (v165);
      }

      v392 = 0u;
      v393 = 0u;
      v390 = 0u;
      v391 = 0u;
      v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v163, &v390, v398, 16);
      if (v174)
      {
        v175 = *v391;
        do
        {
          for (j = 0; j != v174; ++j)
          {
            if (*v391 != v175)
            {
              objc_enumerationMutation(v60);
            }

            v177 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v172, *(*(&v390 + 1) + 8 * j), @"push-token", v173);
            objc_msgSend_addObject_(v116, v178, v177, v179, v180);
          }

          v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v172, &v390, v398, 16);
        }

        while (v174);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v184 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v401 = v116;
        _os_log_impl(&dword_23BC9F000, v184, OS_LOG_TYPE_INFO, "All peers %@", buf, 0xCu);
      }
    }

    objc_msgSend_setPeers_(v380, v181, v111, v182, v183);
    if (objc_opt_respondsToSelector())
    {
      if (IMOSLoggingEnabled())
      {
        v192 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v401 = v116;
          _os_log_impl(&dword_23BC9F000, v192, OS_LOG_TYPE_INFO, "Excluding push tokens %@", buf, 0xCu);
        }
      }

      objc_msgSend_setPushTokensToExclude_(v380, v189, v116, v190, v191);
    }

    *buf = objc_msgSend_unsignedIntValue(v383, v185, v186, v187, v188);
    v195 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v193, buf, 4, v194);
    objc_msgSend_setObject_forKey_(v379, v196, v195, @"s", v197);
    *buf = objc_msgSend_unsignedIntValue(v385, v198, v199, v200, v201);
    v204 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v202, buf, 4, v203);
    objc_msgSend_setObject_forKey_(v379, v205, v204, @"a", v206);
    if (v384)
    {
      v210 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v207, 1, v208, v209);
      sub_23BCACF04(v210, v379, v211, v212, v213);
    }

    if (v382)
    {
      objc_msgSend_setObject_forKey_(v379, v207, v382, @"k", v209);
      v217 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v214, 1, v215, v216);
      objc_msgSend_setObject_forKey_(v379, v218, v217, @"kv", v219);
    }

    v220 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v207, 1, v208, v209);
    sub_23BCACFD4(v220, v379, v221, v222, v223);
    v227 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v224, 2, v225, v226);
    *buf = objc_msgSend_unsignedIntValue(v227, v228, v229, v230, v231);
    v234 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v232, buf, 4, v233);
    objc_msgSend_setObject_forKey_(v379, v235, v234, @"p", v236);
    objc_msgSend_setClientInfo_(v380, v237, v379, v238, v239);
    v243 = objc_msgSend_callerCertForCallType_(self, v240, v387, v241, v242);
    objc_msgSend_setIDCertificate_(v380, v244, v243, v245, v246);
    v251 = objc_msgSend_callerPrivateKey(self, v247, v248, v249, v250);
    objc_msgSend_setIdentityPrivateKey_(v380, v252, v251, v253, v254);
    v259 = objc_msgSend_callerURI(self, v255, v256, v257, v258);
    objc_msgSend_setSelfURI_(v380, v260, v259, v261, v262);
    v267 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v263, v264, v265, v266);
    v272 = objc_msgSend_CTNetworkInformation(v267, v268, v269, v270, v271);
    v281 = objc_msgSend_mutableCopy(v272, v273, v274, v275, v276);
    if (!v281)
    {
      v281 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v282 = objc_msgSend_idsAccount(self, v277, v278, v279, v280);
    v287 = objc_msgSend_accountType(v282, v283, v284, v285, v286);
    if (!v287)
    {
      v319 = objc_msgSend_phoneNumber(self, v288, v289, v290, v291);
      v328 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v328, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v401 = v319;
        _os_log_impl(&dword_23BC9F000, v328, OS_LOG_TYPE_DEFAULT, "Using base number: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v374 = v319;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v374 = v319;
          IMLogString();
        }
      }

      goto LABEL_120;
    }

    if (v287 != 1)
    {
      v329 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v329, OS_LOG_TYPE_DEFAULT, "Local account used to call someone, unsupported", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      goto LABEL_122;
    }

    v293 = objc_msgSend_regionID(self, v288, v289, v290, v291);
    if (v293)
    {
      CFDictionarySetValue(v281, @"region-id", v293);
    }

    v297 = objc_msgSend_regionServerContext(self, v292, v293, v294, v295);
    if (v297)
    {
      CFDictionarySetValue(v281, @"extra", v297);
    }

    v300 = objc_msgSend_regionBasePhoneNumber(self, v296, v297, v298, v299);
    v305 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v301, v302, v303, v304);
    if (objc_msgSend_isTelephonyDevice(v305, v306, v307, v308, v309))
    {
      v314 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v310, v311, v312, v313);
      v319 = objc_msgSend_telephoneNumber(v314, v315, v316, v317, v318);
      if (objc_msgSend_length(v319, v320, v321, v322, v323))
      {
        v324 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v401 = v319;
          v402 = 2112;
          v403 = v300;
          _os_log_impl(&dword_23BC9F000, v324, OS_LOG_TYPE_DEFAULT, "Using device number: %@ instead of base number: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v374 = v319;
            v376 = v300;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v374 = v319;
            v376 = v300;
            IMLogString();
          }
        }

        goto LABEL_120;
      }

      v331 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v401 = v300;
        _os_log_impl(&dword_23BC9F000, v331, OS_LOG_TYPE_DEFAULT, "No device number present, using base number: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_119;
      }

      if (MarcoShouldLog())
      {
        v374 = v300;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
LABEL_119:
        v319 = v300;
LABEL_120:
        if (v319)
        {
          CFDictionarySetValue(v281, @"base-phone-number", v319);
        }

LABEL_122:
        objc_msgSend_setRegionInformation_(v380, v325, v281, v326, v327, v374, v376);
        v332 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v336 = v332;
        if (value)
        {
          CFDictionarySetValue(v332, @"ID", value);
        }

        if (v383)
        {
          CFDictionarySetValue(v336, @"sessionID", v383);
        }

        if (a4)
        {
          CFDictionarySetValue(v336, @"properties", a4);
        }

        v337 = v386;
        if (v386)
        {
          CFDictionarySetValue(v336, @"conference", v386);
        }

        v339 = objc_msgSend_date(MEMORY[0x277CBEAA8], v333, v337, v334, v335);
        if (v339)
        {
          CFDictionarySetValue(v336, @"sendDate", v339);
        }

        v342 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v338, v339, v340, v341);
        v348 = objc_msgSend_currentMessageContext(v342, v343, v344, v345, v346);
        if (v348)
        {
          CFDictionarySetValue(v336, @"messageContext", v348);
        }

        v351 = objc_msgSend_topicForCallType_(self, v347, v387, v349, v350);
        objc_msgSend_setTopic_(v380, v352, v351, v353, v354);
        objc_msgSend_setUserInfo_(v380, v355, v336, v356, v357);

        objc_msgSend_setCompletionBlock_(v380, v358, self->_completionBlock, v359, v360);
        objc_msgSend__messageTimeoutTimeForMessage_(self, v361, v380, v362, v363);
        objc_msgSend_setTimeout_(v380, v364, v365, v366, v367);
        objc_msgSend_sendMessage_(qword_281422890, v368, v380, v369, v370);

        goto LABEL_135;
      }
    }

    else
    {
      v330 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v401 = v300;
        _os_log_impl(&dword_23BC9F000, v330, OS_LOG_TYPE_DEFAULT, "This is not a telephony device, just using base number: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_119;
      }

      if (MarcoShouldLog())
      {
        v374 = v300;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_119;
      }
    }

    v374 = v300;
    IMLogString();
    goto LABEL_119;
  }

LABEL_135:
  v371 = *MEMORY[0x277D85DE8];
}

- (void)respondToVCInvitationWithPerson:(id)a3 properties:(id)a4 conference:(id)a5
{
  v292 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend__callTypeForConferenceID_(self, a2, a5, a4, a5);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"unknown";
      if (!v9)
      {
        v11 = @"video";
      }

      *buf = 138413058;
      v287 = a3;
      if (v9 == 1)
      {
        v11 = @"audio";
      }

      v288 = 2112;
      v289 = a4;
      v290 = 2112;
      *v291 = a5;
      *&v291[8] = 2112;
      *&v291[10] = v11;
      _os_log_impl(&dword_23BC9F000, v10, OS_LOG_TYPE_INFO, "respondToVCInvitationWithPerson: %@  properties: %@ conference: %@  callType: %@", buf, 0x2Au);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v287 = qword_2814228A0;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "All conference maps %@", buf, 0xCu);
    }
  }

  v15 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v12, a3, a5, v13);
  v18 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v16, v15, a5, v17);
  v22 = objc_msgSend_objectForKey_(a4, v19, *MEMORY[0x277D19550], v20, v21);
  v26 = objc_msgSend_objectForKey_(a4, v23, *MEMORY[0x277D19558], v24, v25);
  v30 = objc_msgSend_dictionaryWithPlistData_(MEMORY[0x277CBEAC0], v27, v26, v28, v29);
  value = objc_msgSend_objectForKey_(v30, v31, *MEMORY[0x277D19568], v32, v33);
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v287 = v30;
      _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_INFO, "Reponse dictionary: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v34, 4, v9, a5, a3, a4) && objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v36, 4, v9, a5, a3, a4) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v37, 4, v9, a5, a3, a4) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v38, 4, v9, a5, a3, a4) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v39, 4, v9, a5, a3, a4) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v40, 4, v9, a5, a3, a4, v15))
  {
    v283 = objc_alloc_init(MEMORY[0x277CBEB38]);
    theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (a3)
    {
      CFDictionarySetValue(theDict, @"ID", a3);
    }

    if (v22)
    {
      CFDictionarySetValue(theDict, @"response", v22);
    }

    if (value)
    {
      CFDictionarySetValue(theDict, @"sessionID", value);
    }

    if (a4)
    {
      CFDictionarySetValue(theDict, @"properties", a4);
    }

    if (a5)
    {
      CFDictionarySetValue(theDict, @"conference", a5);
    }

    v46 = objc_msgSend_date(MEMORY[0x277CBEAA8], v41, v42, v43, v44);
    if (v46)
    {
      CFDictionarySetValue(theDict, @"sendDate", v46);
    }

    v49 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v45, v46, v47, v48);
    v55 = objc_msgSend_currentMessageContext(v49, v50, v51, v52, v53);
    if (v55)
    {
      CFDictionarySetValue(theDict, @"messageContext", v55);
    }

    *buf = objc_msgSend_unsignedIntValue(value, v54, v55, v56, v57);
    v60 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v58, buf, 4, v59);
    objc_msgSend_setObject_forKey_(v283, v61, v60, @"s", v62);
    v66 = objc_msgSend_objectForKey_(a4, v63, *MEMORY[0x277D194E8], v64, v65);
    sub_23BCACFD4(v66, v283, v67, v68, v69);
    v73 = objc_msgSend_objectForKey_(v30, v70, *MEMORY[0x277D19560], v71, v72);
    sub_23BCACF68(v73, v283, v74, v75, v76);
    v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v77, 2, v78, v79);
    *buf = objc_msgSend_unsignedIntValue(v80, v81, v82, v83, v84);
    v87 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v85, buf, 4, v86);
    objc_msgSend_setObject_forKey_(v283, v88, v87, @"p", v89);
    if (!objc_msgSend_intValue(v22, v90, v91, v92, v93))
    {
      v284 = objc_alloc_init(FTAcceptMessage);
      objc_msgSend_setClientInfo_(v284, v115, v283, v116, v117);
      v121 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v118, a5, v119, v120);
      objc_msgSend_setSessionToken_(v284, v122, v121, v123, v124);
      v129 = objc_msgSend_pushToken(self, v125, v126, v127, v128);
      objc_msgSend_setSelfPushToken_(v284, v130, v129, v131, v132);
      v136 = objc_msgSend_objectForKey_(v30, v133, *MEMORY[0x277D194F0], v134, v135);
      objc_msgSend_setSelfBlob_(v284, v137, v136, v138, v139);
      v143 = objc_msgSend_objectForKey_(v30, v140, *MEMORY[0x277D19510], v141, v142);
      objc_msgSend_setSelfNATType_(v284, v144, v143, v145, v146);
      v150 = objc_msgSend_objectForKey_(v30, v147, *MEMORY[0x277D19508], v148, v149);
      objc_msgSend_setSelfNATIP_(v284, v151, v150, v152, v153);
      objc_msgSend_setPeerID_(v284, v154, v15, v155, v156);
      objc_msgSend_setPeerPushToken_(v284, v157, v18, v158, v159);
      v163 = objc_msgSend_objectForKey_(v30, v160, *MEMORY[0x277D19520], v161, v162);
      objc_msgSend_setPeerBlob_(v284, v164, v163, v165, v166);
      v170 = objc_msgSend_objectForKey_(v30, v167, *MEMORY[0x277D19538], v168, v169);
      objc_msgSend_setPeerNATType_(v284, v171, v170, v172, v173);
      v177 = objc_msgSend_objectForKey_(v30, v174, *MEMORY[0x277D19530], v175, v176);
      objc_msgSend_setPeerNATIP_(v284, v178, v177, v179, v180);
      if (IMOSLoggingEnabled())
      {
        v181 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v287 = a3;
          v288 = 2112;
          v289 = a5;
          _os_log_impl(&dword_23BC9F000, v181, OS_LOG_TYPE_INFO, "Sending accept to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v275 = a3;
        v277 = a5;
        MarcoNoteCheckpoint();
      }

      v185 = objc_msgSend_topicForCallType_(self, v182, v9, v183, v184, v275, v277);
      objc_msgSend_setTopic_(v284, v186, v185, v187, v188);
      objc_msgSend_setUserInfo_(v284, v189, theDict, v190, v191);
      objc_msgSend_setCompletionBlock_(v284, v192, self->_completionBlock, v193, v194);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v195, v284, v196, v197);
      objc_msgSend_setTimeout_(v284, v198, v199, v200, v201);
      v205 = objc_msgSend_callerCertForCallType_(self, v202, v9, v203, v204);
      objc_msgSend_setIDCertificate_(v284, v206, v205, v207, v208);
      v213 = objc_msgSend_callerPrivateKey(self, v209, v210, v211, v212);
      objc_msgSend_setIdentityPrivateKey_(v284, v214, v213, v215, v216);
      v221 = objc_msgSend_callerURI(self, v217, v218, v219, v220);
      objc_msgSend_setSelfURI_(v284, v222, v221, v223, v224);
      objc_msgSend_sendMessage_(qword_281422890, v225, v284, v226, v227);

      v228 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        v233 = objc_msgSend_intValue(v22, v229, v230, v231, v232);
        *buf = 138413314;
        v287 = a3;
        v288 = 2112;
        v289 = value;
        v290 = 1024;
        *v291 = v233;
        *&v291[4] = 2112;
        *&v291[6] = a4;
        *&v291[14] = 2112;
        *&v291[16] = v283;
        _os_log_impl(&dword_23BC9F000, v228, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@  client info: %@", buf, 0x30u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v280 = a4;
          v281 = v283;
          v278 = value;
          v279 = objc_msgSend_intValue(v22, v238, v239, v240, v241);
          v276 = a3;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v280 = a4;
          v281 = v283;
          v278 = value;
          v279 = objc_msgSend_intValue(v22, v234, v235, v236, v237);
          v276 = a3;
          IMLogString();
        }
      }

      if (v9 == 1)
      {
        v242 = objc_msgSend_broadcasterForACConferenceListeners(self, v234, v235, v236, v237);
      }

      else
      {
        v242 = objc_msgSend_broadcasterForVCConferenceListeners(self, v234, v235, v236, v237);
      }

      v265 = v242;
      v266 = objc_msgSend_accountID(self, v243, v244, v245, v246, v276, v278, v279, v280, v281);
      v267 = sub_23BCA7F48(a3);
      v272 = objc_msgSend_unsignedIntValue(value, v268, v269, v270, v271);
      objc_msgSend_account_conference_receivedAVMessage_from_sessionID_userInfo_(v265, v273, v266, a5, 350, v267, v272, 0);
      goto LABEL_77;
    }

    v98 = objc_msgSend_intValue(v22, v94, v95, v96, v97) == 1;
    v99 = IMOSLoggingEnabled();
    if (v98)
    {
      if (v99)
      {
        v100 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v287 = a3;
          v288 = 2112;
          v289 = a5;
          _os_log_impl(&dword_23BC9F000, v100, OS_LOG_TYPE_INFO, "Sending decline to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v275 = a3;
        v277 = a5;
        MarcoNoteCheckpoint();
      }

      v101 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v106 = objc_msgSend_intValue(v22, v102, v103, v104, v105);
        *buf = 138413058;
        v287 = a3;
        v288 = 2112;
        v289 = value;
        v290 = 1024;
        *v291 = v106;
        *&v291[4] = 2112;
        *&v291[6] = a4;
        _os_log_impl(&dword_23BC9F000, v101, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@", buf, 0x26u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }

      if (MarcoShouldLog())
      {
        v279 = objc_msgSend_intValue(v22, v110, v111, v112, v113);
        v280 = a4;
        v275 = a3;
        v277 = value;
        MarcoLog();
      }

      if ((IMShouldLog() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v99)
      {
        v247 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v287 = a3;
          v288 = 2112;
          v289 = a5;
          _os_log_impl(&dword_23BC9F000, v247, OS_LOG_TYPE_INFO, "Sending busy to: %@  for conference: %@", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v275 = a3;
        v277 = a5;
        MarcoNoteCheckpoint();
      }

      v248 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
      {
        v253 = objc_msgSend_intValue(v22, v249, v250, v251, v252);
        *buf = 138413058;
        v287 = a3;
        v288 = 2112;
        v289 = value;
        v290 = 1024;
        *v291 = v253;
        *&v291[4] = 2112;
        *&v291[6] = a4;
        _os_log_impl(&dword_23BC9F000, v248, OS_LOG_TYPE_DEFAULT, "userID: %@  sessionID: %@ response: %d props: %@", buf, 0x26u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_74;
      }

      if (MarcoShouldLog())
      {
        v279 = objc_msgSend_intValue(v22, v254, v255, v256, v257);
        v280 = a4;
        v275 = a3;
        v277 = value;
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_74;
      }
    }

    v279 = objc_msgSend_intValue(v22, v107, v114, v108, v109, v275, v277, v279, v280);
    v280 = a4;
    v275 = a3;
    v277 = value;
    IMLogString();
LABEL_74:
    v258 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v107, a5, v108, v109, v275, v277, v279, v280);
    v263 = objc_msgSend_intValue(v22, v259, v260, v261, v262);
    objc_msgSend__sendRejectToPeerID_peerToken_sessionToken_callType_reason_clientInfo_(self, v264, v15, v18, v258, v9, v263, v283);
LABEL_77:
  }

  v274 = *MEMORY[0x277D85DE8];
}

- (void)relay:(id)a3 sendInitateRequest:(id)a4 toPerson:(id)a5
{
  v164 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v159 = a5;
      v160 = 2112;
      v161 = a3;
      v162 = 2112;
      v163 = a4;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "sendRelayInitateRequestTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  v13 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v9, a3, v10, v11);
  v16 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v14, a5, a3, v15);
  v19 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v17, v16, a3, v18);
  v23 = objc_msgSend__callTypeForConferenceID_(self, v20, a3, v21, v22);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"unknown";
      if (!v23)
      {
        v25 = @"video";
      }

      if (v23 == 1)
      {
        v25 = @"audio";
      }

      *buf = 138412546;
      v159 = a5;
      v160 = 2112;
      v161 = v25;
      _os_log_impl(&dword_23BC9F000, v24, OS_LOG_TYPE_INFO, "Sending relay initate to: %@  callType: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v27 = @"unknown";
    if (!v23)
    {
      v27 = @"video";
    }

    if (v23 == 1)
    {
      v27 = @"audio";
    }

    v156 = a5;
    v157 = v27;
    MarcoNoteCheckpoint();
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v26, 7, v23, a3, a5, 0, v156, v157) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v28, 7, v23, a3, a5, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v29, 7, v23, a3, a5, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v30, 7, v23, a3, a5, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v31, 7, v23, a3, a5, 0, v16))
  {
    if (v13)
    {
      v33 = objc_alloc_init(FTRelayInitateMessage);
      objc_msgSend_setSessionToken_(v33, v34, v13, v35, v36);
    }

    else
    {
      if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v32, 7, v23, a3, a5, 0) & 1) == 0)
      {
        goto LABEL_35;
      }

      v33 = objc_alloc_init(FTRelayInitateMessage);
      v44 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v41, a3, v42, v43);
      objc_msgSend_setSessionToken_(v33, v45, v44, v46, v47);
    }

    v48 = objc_msgSend_pushToken(self, v37, v38, v39, v40);
    objc_msgSend_setSelfPushToken_(v33, v49, v48, v50, v51);
    v55 = objc_msgSend_objectForKey_(a4, v52, *MEMORY[0x277D18FB0], v53, v54);
    objc_msgSend_setSelfNatType_(v33, v56, v55, v57, v58);
    v62 = objc_msgSend_objectForKey_(a4, v59, *MEMORY[0x277D18FA8], v60, v61);
    objc_msgSend_setSelfNATIP_(v33, v63, v62, v64, v65);
    objc_msgSend_setPeerID_(v33, v66, v16, v67, v68);
    objc_msgSend_setPeerPushToken_(v33, v69, v19, v70, v71);
    v75 = objc_msgSend_objectForKey_(a4, v72, *MEMORY[0x277D18F68], v73, v74);
    objc_msgSend_setPeerNatType_(v33, v76, v75, v77, v78);
    v82 = objc_msgSend_objectForKey_(a4, v79, *MEMORY[0x277D18F60], v80, v81);
    objc_msgSend_setPeerNATIP_(v33, v83, v82, v84, v85);
    v89 = objc_msgSend_objectForKey_(a4, v86, *MEMORY[0x277D18F98], v87, v88);
    objc_msgSend_setRelayCandidateID_(v33, v90, v89, v91, v92);
    v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v98 = v93;
    if (a5)
    {
      CFDictionarySetValue(v93, @"ID", a5);
    }

    if (a3)
    {
      CFDictionarySetValue(v98, @"conference", a3);
    }

    v100 = objc_msgSend_date(MEMORY[0x277CBEAA8], v94, v95, v96, v97);
    if (v100)
    {
      CFDictionarySetValue(v98, @"sendDate", v100);
    }

    v103 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v99, v100, v101, v102);
    v109 = objc_msgSend_currentMessageContext(v103, v104, v105, v106, v107);
    if (v109)
    {
      CFDictionarySetValue(v98, @"messageContext", v109);
    }

    v112 = objc_msgSend_topicForCallType_(self, v108, v23, v110, v111);
    objc_msgSend_setTopic_(v33, v113, v112, v114, v115);
    objc_msgSend_setUserInfo_(v33, v116, v98, v117, v118);
    objc_msgSend_setCompletionBlock_(v33, v119, self->_completionBlock, v120, v121);
    objc_msgSend__messageTimeoutTimeForMessage_(self, v122, v33, v123, v124);
    objc_msgSend_setTimeout_(v33, v125, v126, v127, v128);
    v132 = objc_msgSend_callerCertForCallType_(self, v129, v23, v130, v131);
    objc_msgSend_setIDCertificate_(v33, v133, v132, v134, v135);
    v140 = objc_msgSend_callerPrivateKey(self, v136, v137, v138, v139);
    objc_msgSend_setIdentityPrivateKey_(v33, v141, v140, v142, v143);
    v148 = objc_msgSend_callerURI(self, v144, v145, v146, v147);
    objc_msgSend_setSelfURI_(v33, v149, v148, v150, v151);
    objc_msgSend_sendMessage_(qword_281422890, v152, v33, v153, v154);
  }

LABEL_35:
  v155 = *MEMORY[0x277D85DE8];
}

- (void)relay:(id)a3 sendUpdate:(id)a4 toPerson:(id)a5
{
  v219 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v214 = a5;
      v215 = 2112;
      v216 = a3;
      v217 = 2112;
      v218 = a4;
      _os_log_impl(&dword_23BC9F000, v12, OS_LOG_TYPE_INFO, "sendRelayUpdateTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  v13 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v9, a3, v10, v11);
  v16 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v14, a5, a3, v15);
  v19 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v17, v16, a3, v18);
  v23 = objc_msgSend__callTypeForConferenceID_(self, v20, a3, v21, v22);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"unknown";
      if (!v23)
      {
        v25 = @"video";
      }

      if (v23 == 1)
      {
        v25 = @"audio";
      }

      *buf = 138412546;
      v214 = a5;
      v215 = 2112;
      v216 = v25;
      _os_log_impl(&dword_23BC9F000, v24, OS_LOG_TYPE_INFO, "Sending relay update to: %@   callType: %@", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v27 = @"unknown";
    if (!v23)
    {
      v27 = @"video";
    }

    if (v23 == 1)
    {
      v27 = @"audio";
    }

    v211 = a5;
    v212 = v27;
    MarcoNoteCheckpoint();
  }

  if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v26, 8, v23, a3, a5, 0, v211, v212) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v28, 8, v23, a3, a5, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v29, 8, v23, a3, a5, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v30, 8, v23, a3, a5, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v31, 8, v23, a3, a5, 0, v16))
  {
    if (v13)
    {
      v33 = objc_alloc_init(FTRelayUpdateMessage);
      objc_msgSend_setSessionToken_(v33, v34, v13, v35, v36);
    }

    else
    {
      if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v32, 8, v23, a3, a5, 0) & 1) == 0)
      {
        goto LABEL_38;
      }

      v33 = objc_alloc_init(FTRelayUpdateMessage);
      v43 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v40, a3, v41, v42);
      objc_msgSend_setSessionToken_(v33, v44, v43, v45, v46);
    }

    objc_msgSend_setPeerID_(v33, v37, v16, v38, v39);
    objc_msgSend_setPeerPushToken_(v33, v47, v19, v48, v49);
    v53 = objc_msgSend_objectForKey_(a4, v50, *MEMORY[0x277D18FE8], v51, v52);
    objc_msgSend_setRelayType_(v33, v54, v53, v55, v56);
    v60 = objc_msgSend_objectForKey_(a4, v57, *MEMORY[0x277D18F48], v58, v59);
    objc_msgSend_setRelayConnectionID_(v33, v61, v60, v62, v63);
    v67 = objc_msgSend_objectForKey_(a4, v64, *MEMORY[0x277D18FE0], v65, v66);
    objc_msgSend_setRelayTransactionIDAlloc_(v33, v68, v67, v69, v70);
    v74 = objc_msgSend_objectForKey_(a4, v71, *MEMORY[0x277D18FD8], v72, v73);
    objc_msgSend_setRelayTokenAllocRes_(v33, v75, v74, v76, v77);
    v82 = objc_msgSend_pushToken(self, v78, v79, v80, v81);
    objc_msgSend_setSelfPushToken_(v33, v83, v82, v84, v85);
    v89 = objc_msgSend_objectForKey_(a4, v86, *MEMORY[0x277D18FB8], v87, v88);
    objc_msgSend_setSelfRelayIP_(v33, v90, v89, v91, v92);
    v96 = objc_msgSend_objectForKey_(a4, v93, *MEMORY[0x277D18FD0], v94, v95);
    objc_msgSend_setSelfRelayPort_(v33, v97, v96, v98, v99);
    v103 = objc_msgSend_objectForKey_(a4, v100, *MEMORY[0x277D18FC0], v101, v102);
    objc_msgSend_setSelfRelayNATIP_(v33, v104, v103, v105, v106);
    v110 = objc_msgSend_objectForKey_(a4, v107, *MEMORY[0x277D18FC8], v108, v109);
    objc_msgSend_setSelfRelayNATPort_(v33, v111, v110, v112, v113);
    v114 = *MEMORY[0x277D18F78];
    v118 = objc_msgSend_objectForKey_(a4, v115, *MEMORY[0x277D18F78], v116, v117);
    v122 = *MEMORY[0x277D18F70];
    if (v118)
    {
      v123 = objc_msgSend_objectForKey_(a4, v119, v114, v120, v121);
    }

    else
    {
      v123 = objc_msgSend_objectForKey_(a4, v119, *MEMORY[0x277D18F70], v120, v121);
    }

    objc_msgSend_setPeerRelayIP_(v33, v124, v123, v125, v126);
    v130 = objc_msgSend_objectForKey_(a4, v127, *MEMORY[0x277D18F88], v128, v129);
    objc_msgSend_setPeerRelayPort_(v33, v131, v130, v132, v133);
    v137 = objc_msgSend_objectForKey_(a4, v134, *MEMORY[0x277D18F90], v135, v136);
    objc_msgSend_setSelfRelayBlob_(v33, v138, v137, v139, v140);
    v144 = objc_msgSend_objectForKey_(a4, v141, *MEMORY[0x277D18F98], v142, v143);
    objc_msgSend_setRelayCandidateID_(v33, v145, v144, v146, v147);
    v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v153 = v148;
    if (a5)
    {
      CFDictionarySetValue(v148, @"ID", a5);
    }

    if (a3)
    {
      CFDictionarySetValue(v153, @"conference", a3);
    }

    v155 = objc_msgSend_date(MEMORY[0x277CBEAA8], v149, v150, v151, v152);
    if (v155)
    {
      CFDictionarySetValue(v153, @"sendDate", v155);
    }

    v158 = objc_msgSend_sharedDaemon(MEMORY[0x277D18F38], v154, v155, v156, v157);
    v164 = objc_msgSend_currentMessageContext(v158, v159, v160, v161, v162);
    if (v164)
    {
      CFDictionarySetValue(v153, @"messageContext", v164);
    }

    v167 = objc_msgSend_topicForCallType_(self, v163, v23, v165, v166);
    objc_msgSend_setTopic_(v33, v168, v167, v169, v170);
    objc_msgSend_setUserInfo_(v33, v171, v153, v172, v173);
    objc_msgSend_setCompletionBlock_(v33, v174, self->_completionBlock, v175, v176);
    objc_msgSend__messageTimeoutTimeForMessage_(self, v177, v33, v178, v179);
    objc_msgSend_setTimeout_(v33, v180, v181, v182, v183);
    v187 = objc_msgSend_callerCertForCallType_(self, v184, v23, v185, v186);
    objc_msgSend_setIDCertificate_(v33, v188, v187, v189, v190);
    v195 = objc_msgSend_callerPrivateKey(self, v191, v192, v193, v194);
    objc_msgSend_setIdentityPrivateKey_(v33, v196, v195, v197, v198);
    v203 = objc_msgSend_callerURI(self, v199, v200, v201, v202);
    objc_msgSend_setSelfURI_(v33, v204, v203, v205, v206);
    objc_msgSend_sendMessage_(qword_281422890, v207, v33, v208, v209);
  }

LABEL_38:
  v210 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasOutgoingRelayInitiateInFlight
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_currentMessage(qword_281422890, a2, v2, v3, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = objc_msgSend_allMessages(qword_281422890, v5, v6, v7, v8, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
    if (!v9)
    {
      goto LABEL_3;
    }

    v13 = v9;
    v14 = *v20;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v19, v23, 16);
        LOBYTE(v9) = 0;
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  LOBYTE(v9) = 1;
LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)relay:(id)a3 sendCancel:(id)a4 toPerson:(id)a5
{
  v169 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v164 = a5;
      v165 = 2112;
      v166 = a3;
      v167 = 2112;
      v168 = a4;
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_INFO, "sendRelayCancelTo: %@ relayID: %@  userInfo: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend__hasOutgoingRelayInitiateInFlight(self, v9, v10, v11, v12))
  {
    im_dispatch_after();
  }

  else
  {
    v17 = objc_msgSend__mappedSessionTokenForConferenceID_(self, v14, a3, v15, v16);
    v20 = objc_msgSend__peerIDForDiplayID_conferenceID_(self, v18, a5, a3, v19);
    v23 = objc_msgSend__pushTokenForPeerID_conferenceID_(self, v21, v20, a3, v22);
    v27 = objc_msgSend__callTypeForConferenceID_(self, v24, a3, v25, v26);
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = @"unknown";
        if (!v27)
        {
          v29 = @"video";
        }

        if (v27 == 1)
        {
          v29 = @"audio";
        }

        *buf = 138412546;
        v164 = a5;
        v165 = 2112;
        v166 = v29;
        _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "Sending relay cancel to: %@  callType: %@", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v31 = @"unknown";
      if (!v27)
      {
        v31 = @"video";
      }

      if (v27 == 1)
      {
        v31 = @"audio";
      }

      v161 = a5;
      v162 = v31;
      MarcoNoteCheckpoint();
    }

    if (objc_msgSend__checkRegistrationAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v30, 9, v27, a3, a5, 0, v161, v162) && objc_msgSend__checkManagedProfileAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v32, 9, v27, a3, a5, 0) && objc_msgSend__checkCanSendRequestsAndFailIfNecessaryAction_callType_conferenceID_withPerson_properties_(self, v33, 9, v27, a3, a5, 0) && objc_msgSend__checkAliasInfoAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v34, 9, v27, a3, a5, 0) && objc_msgSend__checkForBadPeerIDWithAction_callType_conferenceID_withPerson_properties_peerID_(self, v35, 9, v27, a3, a5, 0, v20))
    {
      if (v17)
      {
        v37 = objc_alloc_init(FTRelayCancelMessage);
        objc_msgSend_setSessionToken_(v37, v38, v17, v39, v40);
      }

      else
      {
        if ((objc_msgSend__checkConferenceIDAndFailIfNecessaryWithAction_callType_conferenceID_withPerson_properties_(self, v36, 9, v27, a3, a5, 0) & 1) == 0)
        {
          goto LABEL_36;
        }

        v37 = objc_alloc_init(FTRelayCancelMessage);
        v47 = objc_msgSend___imDataWithHexString_(MEMORY[0x277CBEA90], v44, a3, v45, v46);
        objc_msgSend_setSessionToken_(v37, v48, v47, v49, v50);
      }

      objc_msgSend_setPeerID_(v37, v41, v20, v42, v43);
      objc_msgSend_setPeerPushToken_(v37, v51, v23, v52, v53);
      objc_msgSend_setReason_(v37, v54, &unk_284E75830, v55, v56);
      v60 = objc_msgSend_objectForKey_(a4, v57, *MEMORY[0x277D18FE8], v58, v59);
      objc_msgSend_setRelayType_(v37, v61, v60, v62, v63);
      v67 = objc_msgSend_objectForKey_(a4, v64, *MEMORY[0x277D18F48], v65, v66);
      objc_msgSend_setRelayConnectionID_(v37, v68, v67, v69, v70);
      v74 = objc_msgSend_objectForKey_(a4, v71, *MEMORY[0x277D18FB8], v72, v73);
      objc_msgSend_setSelfRelayIP_(v37, v75, v74, v76, v77);
      v81 = objc_msgSend_objectForKey_(a4, v78, *MEMORY[0x277D18FD0], v79, v80);
      objc_msgSend_setSelfRelayPort_(v37, v82, v81, v83, v84);
      v85 = *MEMORY[0x277D18F78];
      v89 = objc_msgSend_objectForKey_(a4, v86, *MEMORY[0x277D18F78], v87, v88);
      v93 = *MEMORY[0x277D18F70];
      if (v89)
      {
        v94 = objc_msgSend_objectForKey_(a4, v90, v85, v91, v92);
      }

      else
      {
        v94 = objc_msgSend_objectForKey_(a4, v90, *MEMORY[0x277D18F70], v91, v92);
      }

      objc_msgSend_setPeerRelayIP_(v37, v95, v94, v96, v97);
      v101 = objc_msgSend_objectForKey_(a4, v98, *MEMORY[0x277D18F88], v99, v100);
      objc_msgSend_setPeerRelayPort_(v37, v102, v101, v103, v104);
      v108 = objc_msgSend_objectForKey_(a4, v105, *MEMORY[0x277D18F98], v106, v107);
      objc_msgSend_setRelayCandidateID_(v37, v109, v108, v110, v111);
      v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v116 = v112;
      if (a5)
      {
        CFDictionarySetValue(v112, @"ID", a5);
      }

      if (a3)
      {
        CFDictionarySetValue(v116, @"conference", a3);
      }

      v117 = objc_msgSend_topicForCallType_(self, v113, v27, v114, v115);
      objc_msgSend_setTopic_(v37, v118, v117, v119, v120);
      objc_msgSend_setUserInfo_(v37, v121, v116, v122, v123);
      objc_msgSend_setCompletionBlock_(v37, v124, self->_completionBlock, v125, v126);
      objc_msgSend__messageTimeoutTimeForMessage_(self, v127, v37, v128, v129);
      objc_msgSend_setTimeout_(v37, v130, v131, v132, v133);
      v137 = objc_msgSend_callerCertForCallType_(self, v134, v27, v135, v136);
      objc_msgSend_setIDCertificate_(v37, v138, v137, v139, v140);
      v145 = objc_msgSend_callerPrivateKey(self, v141, v142, v143, v144);
      objc_msgSend_setIdentityPrivateKey_(v37, v146, v145, v147, v148);
      v153 = objc_msgSend_callerURI(self, v149, v150, v151, v152);
      objc_msgSend_setSelfURI_(v37, v154, v153, v155, v156);
      objc_msgSend_sendMessage_(qword_281422890, v157, v37, v158, v159);
    }
  }

LABEL_36:
  v160 = *MEMORY[0x277D85DE8];
}

- (void)_cancelOtherInvitesForPeerID:(id)a3 skipPairs:(id)a4 properties:(id)a5 conference:(id)a6 reason:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = a3;
      v28 = 2112;
      v29 = a4;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_INFO, "Cancelling other invites for peer ID: %@     ignore pairs: %@", &v26, 0x16u);
    }
  }

  v15 = objc_msgSend__peerIDPushTokensPairsForPeerID_conferenceID_skippingPairs_(self, v13, a3, a6, a4);
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v15;
      _os_log_impl(&dword_23BC9F000, v20, OS_LOG_TYPE_INFO, "         pairs to cancel: %@", &v26, 0xCu);
    }
  }

  if (objc_msgSend_count(v15, v16, v17, v18, v19))
  {
    v23 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v21, a3, a6, v22);
    objc_msgSend__cancelVCRequestWithPerson_properties_conference_pairsToSkip_reason_(self, v24, v23, a5, a6, a4, a7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasOutgoingInvitationInFlight
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_currentMessage(qword_281422890, a2, v2, v3, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = objc_msgSend_allMessages(qword_281422890, v5, v6, v7, v8, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
    if (!v9)
    {
      goto LABEL_3;
    }

    v13 = v9;
    v14 = *v20;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v19 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v19, v23, 16);
        LOBYTE(v9) = 0;
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  LOBYTE(v9) = 1;
LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handler:(id)a3 sessionInitated:(id)a4 topic:(id)a5 myID:(id)a6 peerID:(id)a7 peerDisplayID:(id)a8 peerCN:(id)a9 peerPushToken:(id)a10 peerNATType:(id)a11 peerBlob:(id)a12 peerNatIP:(id)a13 clientInfo:(id)a14 serviceData:(id)a15
{
  v325 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v320 = a4;
      v321 = 2112;
      v322 = a5;
      v323 = 2112;
      v324 = a6;
      _os_log_impl(&dword_23BC9F000, v23, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@, myID: %@", buf, 0x20u);
    }
  }

  isEqualToString = objc_msgSend_isEqualToString_(a5, v20, @"com.apple.private.ac", v21, v22);
  v28 = objc_msgSend_idsAccount(self, v24, v25, v26, v27);
  v33 = objc_msgSend_accountType(v28, v29, v30, v31, v32);
  if (v33)
  {
    if (v33 != 1)
    {
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v73, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v74, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      goto LABEL_184;
    }

    v38 = objc_msgSend_profileID(self, v34, v35, v36, v37);
    v42 = objc_msgSend_isEqualToString_(a6, v39, v38, v40, v41);
  }

  else
  {
    v47 = objc_msgSend_phoneNumber(self, v34, v35, v36, v37);
    v51 = objc_msgSend__IDFromFZIDType_(v47, v48, 0, v49, v50);
    v42 = objc_msgSend_isEqualToString_(a6, v52, v51, v53, v54);
  }

  if ((v42 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v80 = objc_msgSend_userID(self, v76, v77, v78, v79);
        *buf = 138412546;
        v320 = a6;
        v321 = 2112;
        v322 = v80;
        _os_log_impl(&dword_23BC9F000, v75, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v86 = objc_msgSend_userID(self, v82, v83, v84, v85);
        *buf = 138412546;
        v320 = a6;
        v321 = 2112;
        v322 = v86;
        _os_log_impl(&dword_23BC9F000, v81, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      objc_msgSend_userID(self, v87, v88, v89, v90);
      MarcoNoteCheckpoint();
    }

    goto LABEL_184;
  }

  v55 = objc_msgSend___imHexString(a4, v43, v44, v45, v46);
  objc_msgSend__setCallType_forConferenceID_(self, v56, isEqualToString, v55, v57);
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v62 = objc_msgSend_allValues(qword_2814228A0, v58, v59, v60, v61);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v312, v318, 16);
  if (v68)
  {
    v69 = *v313;
LABEL_11:
    v70 = 0;
    while (1)
    {
      if (*v313 != v69)
      {
        objc_enumerationMutation(v62);
      }

      if (objc_msgSend_objectForKey_(*(*(&v312 + 1) + 8 * v70), v64, v55, v66, v67))
      {
        break;
      }

      if (v68 == ++v70)
      {
        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v64, &v312, v318, 16);
        if (v68)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (objc_msgSend__hasOutgoingInvitationInFlight(self, v64, v65, v66, v67))
    {
      if (IMOSLoggingEnabled())
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v320 = v55;
          v321 = 2112;
          v322 = a4;
          _os_log_impl(&dword_23BC9F000, v72, OS_LOG_TYPE_INFO, "Delaying initiate for conference ID: %@  (token: %@)", buf, 0x16u);
        }
      }

      v294 = MEMORY[0x277D85DD0];
      v295 = 3221225472;
      v296 = sub_23BCB0E2C;
      v297 = &unk_278B8F200;
      v298 = self;
      v299 = a3;
      v300 = a4;
      v301 = a5;
      v302 = a6;
      v303 = a7;
      v304 = a8;
      v305 = a9;
      v306 = a10;
      v307 = a11;
      v308 = a12;
      v309 = a13;
      v310 = a14;
      v311 = a15;
      im_dispatch_after();
      goto LABEL_184;
    }
  }

  v91 = objc_msgSend_sharedInstance(MEMORY[0x277D18728], v64, v71, v66, v67);
  objc_msgSend__setCurrentIDStatus_forDestination_service_(v91, v92, 1, a8, a5);
  v97 = sub_23BCB0E7C(a14, v93, v94, v95, v96);
  if (objc_msgSend_length(a8, v98, v99, v100, v101))
  {
    v106 = objc_msgSend__stripFZIDPrefix(a8, v102, v103, v104, v105);
  }

  else
  {
    v106 = objc_msgSend__stripFZIDPrefix(a7, v102, v103, v104, v105);
  }

  v282 = v106;
  if ((v97 & 1) == 0)
  {
    MarcoBeginSession();
    MarcoSetInitiator();
  }

  v111 = objc_msgSend_idsAccount(self, v107, v108, v109, v110);
  if (objc_msgSend_accountType(v111, v112, v113, v114, v115) == 1)
  {
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v120 = objc_msgSend_aliases(self, v116, v117, v118, v119);
    v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v121, &v290, v317, 16);
    if (!v122)
    {
LABEL_52:
      if (IMOSLoggingEnabled())
      {
        v125 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v125, OS_LOG_TYPE_INFO, "Ignoring this invite, we don't have any validated aliases", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v126 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v126, OS_LOG_TYPE_INFO, "Ignoring this invite, we don't have any validated aliases", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
LABEL_59:
        MarcoNoteCheckpoint();
        goto LABEL_184;
      }

      goto LABEL_184;
    }

    v123 = *v291;
LABEL_46:
    v124 = 0;
    while (1)
    {
      if (*v291 != v123)
      {
        objc_enumerationMutation(v120);
      }

      if (objc_msgSend_validationStatusForAlias_(self, v116, *(*(&v290 + 1) + 8 * v124), v118, v119) == 3)
      {
        break;
      }

      if (v122 == ++v124)
      {
        v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v116, &v290, v317, 16);
        if (v122)
        {
          goto LABEL_46;
        }

        goto LABEL_52;
      }
    }
  }

  v127 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v116, v117, v118, v119);
  if (objc_msgSend_isFastUserSwitched(v127, v128, v129, v130, v131))
  {
    if (IMOSLoggingEnabled())
    {
      v136 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v136, OS_LOG_TYPE_INFO, "Ignoring this invite, we're fast user switched out", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v137 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v137, OS_LOG_TYPE_INFO, "Ignoring this invite, we're fast user switched out", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      goto LABEL_59;
    }
  }

  else
  {
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    v138 = objc_msgSend_allValues(qword_2814228A0, v132, v133, v134, v135);
    v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v139, &v286, v316, 16);
    if (v143)
    {
      v144 = *v287;
LABEL_71:
      v145 = 0;
      while (1)
      {
        if (*v287 != v144)
        {
          objc_enumerationMutation(v138);
        }

        v146 = objc_msgSend_objectForKey_(*(*(&v286 + 1) + 8 * v145), v140, v55, v141, v142);
        if (v146)
        {
          break;
        }

        if (v143 == ++v145)
        {
          v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v140, &v286, v316, 16);
          if (v143)
          {
            goto LABEL_71;
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      v146 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v147 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v320 = v146;
        _os_log_impl(&dword_23BC9F000, v147, OS_LOG_TYPE_INFO, "Peers for this call %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v152 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
      {
        v153 = @"NO";
        if (v97)
        {
          v153 = @"YES";
        }

        *buf = 138412290;
        v320 = v153;
        _os_log_impl(&dword_23BC9F000, v152, OS_LOG_TYPE_INFO, "Is reinitiate: %@", buf, 0xCu);
      }
    }

    if (v146)
    {
      v154 = v97;
    }

    else
    {
      v154 = 1;
    }

    if (v154)
    {
      v155 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v148, v149, v150, v151);
      objc_msgSend_isScreenLocked(v155, v156, v157, v158, v159);
      FTAWDSetSubmissionDate();
      FTAWDLogCallInvitationReceived();
      v160 = MEMORY[0x277CBEAC0];
      v164 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v161, @"%@", v162, v163, v55);
      objc_msgSend_dictionaryWithObject_forKey_(v160, v165, v164, @"ConferenceID", v166);
      PLLogRegisteredEvent();
      if (IMOSLoggingEnabled())
      {
        v167 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
        {
          v168 = @"video";
          *buf = 138412802;
          v320 = v282;
          v321 = 2112;
          if (isEqualToString)
          {
            v168 = @"audio";
          }

          v322 = a7;
          v323 = 2112;
          v324 = v168;
          _os_log_impl(&dword_23BC9F000, v167, OS_LOG_TYPE_INFO, "Received invite push from: %@ (%@)  type: %@", buf, 0x20u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        if (isEqualToString)
        {
          v169 = @"audio";
        }

        else
        {
          v169 = @"video";
        }

        v280 = a7;
        v281 = v169;
        v277 = v282;
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v170 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v320 = v55;
          _os_log_impl(&dword_23BC9F000, v170, OS_LOG_TYPE_INFO, "Conference ID: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v277 = v55;
        MarcoNoteCheckpoint();
      }

      objc_msgSend__logLocalInfo(self, v171, v172, v173, v174, v277, v280, v281);
      if (objc_msgSend_allowedAsChild(self, v175, v176, v177, v178))
      {
        if (objc_msgSend__validRegistrationStateToAcceptCalls(self, v179, v180, v181, v182))
        {
          if (objc_msgSend__isDeviceRegistered(self, v183, v184, v185, v186))
          {
            v187 = objc_alloc(MEMORY[0x277D19290]);
            v191 = objc_msgSend_initWithIdentifier_timeout_(v187, v188, @"IncomingFaceTimeCall", v189, v190, 10.0);
            v192 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v196 = v192;
            if (a6)
            {
              CFDictionarySetValue(v192, *MEMORY[0x277D19570], a6);
            }

            if (a12)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D194F0], a12);
            }

            if (a9)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D194D0], a9);
            }

            v197 = a11;
            if (a11)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D19510], a11);
            }

            v198 = MEMORY[0x277D19508];
            if (a13)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D19508], a13);
            }

            v200 = sub_23BCB0F64(a14, v193, v197, v194, v195);
            if (v200)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D19568], v200);
            }

            v204 = sub_23BCB1050(a14, v199, v200, v201, v202);
            if (v204)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D194C8], v204);
            }

            v207 = MEMORY[0x277CCABB0];
            v208 = sub_23BCB0E7C(a14, v203, v204, v205, v206);
            v213 = objc_msgSend_numberWithBool_(v207, v209, v208, v210, v211);
            if (v213)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D194D8], v213);
            }

            v216 = MEMORY[0x277CCABB0];
            v217 = sub_23BCB113C(a14, v212, v213, v214, v215);
            v222 = objc_msgSend_numberWithBool_(v216, v218, v217, v219, v220);
            if (v222)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D194E8], v222);
            }

            v226 = sub_23BCB1224(a14, v221, v222, v223, v224);
            if (v226)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D19560], v226);
            }

            v229 = sub_23BCB1308(a14, v225, v226, v227, v228);
            if (v229)
            {
              CFDictionarySetValue(v196, *MEMORY[0x277D19540], v229);
            }

            if (IMOSLoggingEnabled())
            {
              v230 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v320 = v196;
                _os_log_impl(&dword_23BC9F000, v230, OS_LOG_TYPE_INFO, "ConferenceDictionary: %@", buf, 0xCu);
              }
            }

            v231 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v320 = v196;
              _os_log_impl(&dword_23BC9F000, v231, OS_LOG_TYPE_DEFAULT, "Response dictionary: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v278 = v196;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v278 = v196;
                IMLogString();
              }
            }

            v235 = MEMORY[0x277CBEB38];
            v236 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v232, 4, v233, v234, v278);
            v241 = objc_msgSend_plistData(v196, v237, v238, v239, v240);
            v245 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v242, 0, v243, v244);
            v249 = objc_msgSend_dictionaryWithObjectsAndKeys_(v235, v246, v236, v247, v248, *MEMORY[0x277D19578], v241, *MEMORY[0x277D194E0], v245, *MEMORY[0x277D19528], a13, *v198, 0);
            objc_msgSend_addEntriesFromDictionary_(v249, v250, v196, v251, v252);
            if (IMOSLoggingEnabled())
            {
              v253 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v320 = v249;
                _os_log_impl(&dword_23BC9F000, v253, OS_LOG_TYPE_INFO, "Generated Properties: %@", buf, 0xCu);
              }
            }

            v254 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v320 = v196;
              _os_log_impl(&dword_23BC9F000, v254, OS_LOG_TYPE_DEFAULT, "Properties dictionary: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (MarcoShouldLog())
              {
                v279 = v196;
                MarcoLog();
              }

              if (IMShouldLog())
              {
                v279 = v196;
                IMLogString();
              }
            }

            if (isEqualToString)
            {
              v259 = objc_msgSend_broadcasterForACConferenceListeners(self, v255, v256, v257, v258);
            }

            else
            {
              v259 = objc_msgSend_broadcasterForVCConferenceListeners(self, v255, v256, v257, v258);
            }

            v271 = v259;
            v272 = objc_msgSend_accountID(self, v260, v261, v262, v263, v279);
            v273 = sub_23BCA7F48(v282);
            objc_msgSend_account_conference_receivedInvitationFrom_properties_(v271, v274, v272, v55, v273, v249);
            objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v275, a7, v282, a10, v55);

            goto LABEL_184;
          }

          if (IMOSLoggingEnabled())
          {
            v269 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v269, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v269, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v270 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v270, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v270, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v267 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v267, OS_LOG_TYPE_INFO, "Ignoring invite due to reg agent state", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v268 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v268, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v268, OS_LOG_TYPE_INFO, "Ignoring this invite, we're not in a good state to recieve calls", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v265 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v265, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v266 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v266, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v266, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }

      MarcoEndSession();
      goto LABEL_184;
    }

    if (IMOSLoggingEnabled())
    {
      v264 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v264, OS_LOG_TYPE_INFO, "This is an invitation from ourselves. Ignoring it", buf, 2u);
      }
    }
  }

LABEL_184:
  v276 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 peerDisplay:(id)a4 topic:(id)a5 myID:(id)a6 sessionInitated:(id)a7 clientInfo:(id)a8 peerID:(id)a9 peerPushToken:(id)a10
{
  v144 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v20, OS_LOG_TYPE_INFO, "started protected intitate", buf, 2u);
    }
  }

  v21 = objc_msgSend__stripFZIDPrefix(a4, v16, v17, v18, v19);
  isEqualToString = objc_msgSend_isEqualToString_(a5, v22, @"com.apple.private.ac", v23, v24);
  v30 = objc_msgSend_idsAccount(self, v26, v27, v28, v29);
  v35 = objc_msgSend_accountType(v30, v31, v32, v33, v34);
  v40 = objc_msgSend___imHexString(a7, v36, v37, v38, v39);
  objc_msgSend__setCallType_forConferenceID_(self, v41, isEqualToString, v40, v42);
  if (v35)
  {
    if (v35 != 1)
    {
      if (IMOSLoggingEnabled())
      {
        v110 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v110, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v111 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v111, OS_LOG_TYPE_INFO, "Ignoring this invite, it came to the local account", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      goto LABEL_65;
    }

    v47 = objc_msgSend_profileID(self, v43, v44, v45, v46);
    v51 = objc_msgSend_isEqualToString_(a6, v48, v47, v49, v50);
  }

  else
  {
    v56 = objc_msgSend_phoneNumber(self, v43, v44, v45, v46);
    v60 = objc_msgSend__IDFromFZIDType_(v56, v57, 0, v58, v59);
    v51 = objc_msgSend_isEqualToString_(a6, v61, v60, v62, v63);
  }

  if (v51)
  {
    if (objc_msgSend_allowedAsChild(self, v52, v53, v54, v55))
    {
      if (objc_msgSend__validRegistrationStateToAcceptCalls(self, v64, v65, v66, v67))
      {
        if (objc_msgSend__isDeviceRegistered(self, v68, v69, v70, v71))
        {
          v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v78 = sub_23BCB0F64(a8, v73, v74, v75, v76);
          if (v78)
          {
            CFDictionarySetValue(v72, *MEMORY[0x277D19568], v78);
          }

          v82 = sub_23BCB1050(a8, v77, v78, v79, v80);
          if (v82)
          {
            CFDictionarySetValue(v72, *MEMORY[0x277D194C8], v82);
          }

          v85 = objc_msgSend_plistData(v72, v81, v82, v83, v84);
          v90 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v86, v87, v88, v89);
          v94 = v90;
          if (v85)
          {
            objc_msgSend_setObject_forKey_(v90, v91, v85, *MEMORY[0x277D194E0], v93);
          }

          v95 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v91, 0, v92, v93);
          objc_msgSend_setObject_forKey_(v94, v96, v95, *MEMORY[0x277D19528], v97);
          objc_msgSend_addEntriesFromDictionary_(v94, v98, v72, v99, v100);
          if (isEqualToString)
          {
            v105 = objc_msgSend_broadcasterForACConferenceListeners(self, v101, v102, v103, v104);
          }

          else
          {
            v105 = objc_msgSend_broadcasterForVCConferenceListeners(self, v101, v102, v103, v104);
          }

          v134 = v105;
          v135 = objc_msgSend_accountID(self, v106, v107, v108, v109);
          v136 = sub_23BCA7F48(v21);
          objc_msgSend_account_conference_remoteUser_properties_(v134, v137, v135, v40, v136, v94);
          objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v138, a9, v21, a10, v40);

          goto LABEL_65;
        }

        if (IMOSLoggingEnabled())
        {
          v132 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v132, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v133 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v133, OS_LOG_TYPE_INFO, "Device is not registered, not showing invite", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v130 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v130, OS_LOG_TYPE_INFO, "Ignoring invite due to reg agent state", buf, 2u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v131 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v131, OS_LOG_TYPE_INFO, "Ignoring this invite, we're not in a good state to recieve calls", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v128 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v128, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v129 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v129, OS_LOG_TYPE_INFO, "Managed configuration has disabled FaceTime, we're ignoring this", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }

    MarcoEndSession();
    goto LABEL_65;
  }

  if (IMOSLoggingEnabled())
  {
    v112 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v117 = objc_msgSend_userID(self, v113, v114, v115, v116);
      *buf = 138412546;
      v141 = a6;
      v142 = 2112;
      v143 = v117;
      _os_log_impl(&dword_23BC9F000, v112, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v118 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
    {
      v123 = objc_msgSend_userID(self, v119, v120, v121, v122);
      *buf = 138412546;
      v141 = a6;
      v142 = 2112;
      v143 = v123;
      _os_log_impl(&dword_23BC9F000, v118, OS_LOG_TYPE_INFO, "Ignoring this invite, it is not to me, but instead to: %@  (mine is: %@)", buf, 0x16u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    objc_msgSend_userID(self, v124, v125, v126, v127);
    MarcoNoteCheckpoint();
  }

LABEL_65:
  v139 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 sessionAccepted:(id)a4 topic:(id)a5 peerID:(id)a6 peerCN:(id)a7 peerPushToken:(id)a8 peerNATType:(id)a9 peerBlob:(id)a10 peerNatIP:(id)a11 relayType:(id)a12 relayConnectionID:(id)a13 relayTransactionIDAlloc:(id)a14 relayTokenAllocReq:(id)a15 myRelayIP:(id)a16 myRelayPort:(id)a17 peerRelayIP:(id)a18 peerRelayPort:(id)a19 clientInfo:(id)a20 serviceData:(id)a21
{
  v193 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v187 = a4;
      v188 = 2112;
      v189 = a5;
      _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v25, a8, v26, v27))
  {
    v33 = objc_msgSend___imHexString(a4, v29, v30, v31, v32);
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v38 = objc_msgSend_allValues(qword_2814228A0, v34, v35, v36, v37);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v182, v192, 16);
    if (v44)
    {
      v45 = *v183;
LABEL_7:
      v46 = 0;
      while (1)
      {
        if (*v183 != v45)
        {
          objc_enumerationMutation(v38);
        }

        if (objc_msgSend_objectForKey_(*(*(&v182 + 1) + 8 * v46), v40, v33, v42, v43))
        {
          break;
        }

        if (v44 == ++v46)
        {
          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v182, v192, 16);
          if (v44)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      if (objc_msgSend__hasOutgoingInvitationInFlight(self, v40, v41, v42, v43))
      {
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v187 = v33;
            v188 = 2112;
            v189 = a4;
            _os_log_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_INFO, "Delaying accept for conference ID: %@  (token: %@)", buf, 0x16u);
          }
        }

        im_dispatch_after();
        goto LABEL_95;
      }
    }

    if ((sub_23BCB0E7C(a20, v40, v47, v42, v43) & 1) == 0 && (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v49, a6, v33, v50) & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_95;
      }

      v173 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
      {
        goto LABEL_95;
      }

      *buf = 138412546;
      v187 = a6;
      v188 = 2112;
      v189 = v33;
      v170 = "Ignoring this accept, no peers with peerID %@ in conferenceID %@";
      v171 = v173;
      v172 = 22;
LABEL_94:
      _os_log_impl(&dword_23BC9F000, v171, OS_LOG_TYPE_INFO, v170, buf, v172);
      goto LABEL_95;
    }

    v51 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v49, a6, v33, v50);
    v54 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v52, a6, v33, v53);
    isEqualToString = objc_msgSend_isEqualToString_(a5, v55, @"com.apple.private.ac", v56, v57);
    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = @"video";
        *buf = 138412802;
        v187 = v51;
        v188 = 2112;
        if (isEqualToString)
        {
          v59 = @"audio";
        }

        v189 = a6;
        v190 = 2112;
        v191 = v59;
        _os_log_impl(&dword_23BC9F000, v58, OS_LOG_TYPE_INFO, "Received accept push from: %@ (%@)   %@", buf, 0x20u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      if (isEqualToString)
      {
        v63 = @"audio";
      }

      else
      {
        v63 = @"video";
      }

      v177 = a6;
      v178 = v63;
      v175 = v51;
      MarcoNoteCheckpoint();
    }

    if (objc_msgSend_containsObject_(v54, v60, a8, v61, v62, v175, v177, v178))
    {
      v68 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v64, v65, v66, v67);
      objc_msgSend_isScreenLocked(v68, v69, v70, v71, v72);
      FTAWDLogCallAcceptReceived();
      v73 = MEMORY[0x277CBEAC0];
      v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%@", v75, v76, v33);
      objc_msgSend_dictionaryWithObject_forKey_(v73, v78, v77, @"ConferenceID", v79);
      PLLogRegisteredEvent();
      v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v84 = v80;
      if (a10)
      {
        CFDictionarySetValue(v80, *MEMORY[0x277D194F0], a10);
      }

      if (a7)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D194D0], a7);
      }

      v85 = a9;
      if (a9)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D19510], a9);
      }

      v87 = sub_23BCB0F64(a20, v81, v85, v82, v83);
      if (v87)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D19568], v87);
      }

      v90 = MEMORY[0x277CCABB0];
      v91 = sub_23BCB0E7C(a20, v86, v87, v88, v89);
      v96 = objc_msgSend_numberWithBool_(v90, v92, v91, v93, v94);
      if (v96)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D194D8], v96);
      }

      v99 = MEMORY[0x277CCABB0];
      v100 = sub_23BCB113C(a20, v95, v96, v97, v98);
      v105 = objc_msgSend_numberWithBool_(v99, v101, v100, v102, v103);
      if (v105)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D194E8], v105);
      }

      v109 = sub_23BCB1224(a20, v104, v105, v106, v107);
      if (v109)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D19560], v109);
      }

      v112 = sub_23BCB1308(a20, v108, v109, v110, v111);
      if (v112)
      {
        CFDictionarySetValue(v84, *MEMORY[0x277D19540], v112);
      }

      if (IMOSLoggingEnabled())
      {
        v116 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v187 = v84;
          _os_log_impl(&dword_23BC9F000, v116, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
        }
      }

      if (a12)
      {
        if (IMOSLoggingEnabled())
        {
          v117 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v187 = a12;
            _os_log_impl(&dword_23BC9F000, v117, OS_LOG_TYPE_INFO, "Accept also had inline relay request for relay type: %@", buf, 0xCu);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          v176 = a12;
          MarcoNoteCheckpoint();
        }

        v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
        CFDictionarySetValue(v118, *MEMORY[0x277D18FE8], a12);
        if (a13)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18F48], a13);
        }

        if (a14)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18FE0], a14);
        }

        if (a15)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18FD8], a15);
        }

        if (a6)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18F58], a6);
        }

        if (a18)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18F70], a18);
        }

        if (a19)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18F88], a19);
        }

        if (a16)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18FB8], a16);
        }

        if (a17)
        {
          CFDictionarySetValue(v118, *MEMORY[0x277D18FD0], a17);
        }

        if (v118)
        {
          CFDictionarySetValue(v84, *MEMORY[0x277D194F8], v118);
        }
      }

      v119 = MEMORY[0x277CBEAC0];
      v120 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v113, 0, v114, v115, v176);
      v124 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v121, 4, v122, v123);
      v129 = objc_msgSend_plistData(v84, v125, v126, v127, v128);
      v133 = objc_msgSend_dictionaryWithObjectsAndKeys_(v119, v130, v120, v131, v132, *MEMORY[0x277D19550], v124, *MEMORY[0x277D19578], v129, *MEMORY[0x277D19558], 0);
      if (IMOSLoggingEnabled())
      {
        v138 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v187 = v133;
          _os_log_impl(&dword_23BC9F000, v138, OS_LOG_TYPE_INFO, "Generated Properties: %@", buf, 0xCu);
        }
      }

      v139 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
      if (isEqualToString)
      {
        v139 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
      }

      v140 = *(&self->super.super.super.isa + *v139);
      v141 = objc_msgSend_accountID(self, v134, v135, v136, v137);
      v146 = objc_msgSend___imHexString(a4, v142, v143, v144, v145);
      v147 = sub_23BCA7F48(v51);
      objc_msgSend_account_conference_receivedResponseToInvitationFrom_properties_(v140, v148, v141, v146, v147, v133);
      v149 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v154 = sub_23BCB0F64(a20, v150, v151, v152, v153);
      if (v154)
      {
        CFDictionarySetValue(v149, *MEMORY[0x277D19568], v154);
      }

      v155 = sub_23BCB2858(a6, a8);
      v160 = objc_msgSend___imHexString(a4, v156, v157, v158, v159);
      objc_msgSend__cancelOtherInvitesForPeerID_skipPairs_properties_conference_reason_(self, v161, a6, v155, v149, v160, &unk_284E75848);
      v166 = objc_msgSend___imHexString(a4, v162, v163, v164, v165);
      objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v167, a6, 0, a8, v166);

      goto LABEL_95;
    }

    if (IMOSLoggingEnabled())
    {
      v168 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v187 = a8;
        v188 = 2112;
        v189 = v54;
        v190 = 2112;
        v191 = a6;
        _os_log_impl(&dword_23BC9F000, v168, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v169 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v187 = a8;
        v188 = 2112;
        v189 = v54;
        v190 = 2112;
        v191 = a6;
        v170 = "Response from token (%@) not in this conference set: %@ (%@)";
        v171 = v169;
        v172 = 32;
        goto LABEL_94;
      }
    }
  }

LABEL_95:
  v174 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 sessionRejected:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 reason:(id)a8 clientInfo:(id)a9 serviceData:(id)a10
{
  v132 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v126 = a4;
      v127 = 2112;
      v128 = a5;
      _os_log_impl(&dword_23BC9F000, v18, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v19 = objc_msgSend___imHexString(a4, v14, v15, v16, v17);
  isEqualToString = objc_msgSend_isEqualToString_(a5, v20, @"com.apple.private.ac", v21, v22);
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v27 = objc_msgSend_allValues(qword_2814228A0, v23, v24, v25, v26);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v121, v131, 16);
  if (v33)
  {
    v34 = *v122;
LABEL_6:
    v35 = 0;
    while (1)
    {
      if (*v122 != v34)
      {
        objc_enumerationMutation(v27);
      }

      if (objc_msgSend_objectForKey_(*(*(&v121 + 1) + 8 * v35), v29, v19, v31, v32))
      {
        break;
      }

      if (v33 == ++v35)
      {
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v121, v131, 16);
        if (v33)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (objc_msgSend__hasOutgoingInvitationInFlight(self, v29, v30, v31, v32))
    {
      im_dispatch_after();
      goto LABEL_48;
    }
  }

  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v29, a6, v19, v32))
  {
    v38 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v36, a6, v19, v37);
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v126 = v38;
        v127 = 2112;
        v128 = a6;
        _os_log_impl(&dword_23BC9F000, v39, OS_LOG_TYPE_INFO, "Received reject push from: %@  (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v116 = v38;
      v117 = a6;
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v126 = v38;
        v127 = 2112;
        v128 = a6;
        _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "Received reject push from: %@  (%@)", buf, 0x16u);
      }
    }

    v43 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v40, a6, v19, v41, v116, v117);
    if (objc_msgSend_containsObject_(v43, v44, a7, v45, v46))
    {
      v50 = MEMORY[0x277CBEAC0];
      v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"%@", v48, v49, v19);
      objc_msgSend_dictionaryWithObject_forKey_(v50, v52, v51, @"ConferenceID", v53);
      PLLogRegisteredEvent();
      v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v59 = sub_23BCB0F64(a9, v55, v56, v57, v58);
      if (v59)
      {
        CFDictionarySetValue(v54, *MEMORY[0x277D19568], v59);
      }

      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v126 = v54;
          _os_log_impl(&dword_23BC9F000, v63, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
        }
      }

      v64 = MEMORY[0x277CBEAC0];
      v65 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v60, 4, v61, v62);
      v70 = objc_msgSend_plistData(v54, v66, v67, v68, v69);
      v71 = *MEMORY[0x277D19550];
      v75 = objc_msgSend_dictionaryWithObjectsAndKeys_(v64, v72, a8, v73, v74, *MEMORY[0x277D19550], v65, *MEMORY[0x277D19578], v70, *MEMORY[0x277D19558], 0);
      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v126 = a8;
          v127 = 2112;
          v128 = v38;
          v129 = 2112;
          v130 = a7;
          _os_log_impl(&dword_23BC9F000, v80, OS_LOG_TYPE_INFO, "Reject response: %@   from peer: %@   token: %@", buf, 0x20u);
        }
      }

      v81 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
      if (isEqualToString)
      {
        v81 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
      }

      v82 = *(&self->super.super.super.isa + *v81);
      v83 = objc_msgSend_accountID(self, v76, v77, v78, v79);
      v88 = objc_msgSend___imHexString(a4, v84, v85, v86, v87);
      v89 = sub_23BCA7F48(v38);
      objc_msgSend_account_conference_receivedResponseToInvitationFrom_properties_(v82, v90, v83, v88, v89, v75);
      v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v97 = sub_23BCB0F64(a9, v92, v93, v94, v95);
      if (v97)
      {
        CFDictionarySetValue(v91, *MEMORY[0x277D19568], v97);
      }

      v100 = objc_msgSend_objectForKey_(v75, v96, v71, v98, v99);
      v105 = objc_msgSend_intValue(v100, v101, v102, v103, v104);
      if (v105 > 0xB || ((1 << v105) & 0x830) == 0)
      {
        v106 = sub_23BCB2858(a6, a7);
        v111 = objc_msgSend___imHexString(a4, v107, v108, v109, v110);
        objc_msgSend__cancelOtherInvitesForPeerID_skipPairs_properties_conference_reason_(self, v112, a6, v106, v91, v111, &unk_284E75860);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v114 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v126 = a7;
          v127 = 2112;
          v128 = v43;
          v129 = 2112;
          v130 = a6;
          _os_log_impl(&dword_23BC9F000, v114, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v113 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v126 = a6;
      v127 = 2112;
      v128 = v19;
      _os_log_impl(&dword_23BC9F000, v113, OS_LOG_TYPE_INFO, "Ignoring this reject, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }

LABEL_48:
  v115 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 sessionCancelled:(id)a4 topic:(id)a5 peerID:(id)a6 reason:(id)a7 clientInfo:(id)a8 serviceData:(id)a9
{
  v85 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v82 = a4;
      v83 = 2112;
      v84 = a5;
      _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v20 = objc_msgSend___imHexString(a4, v15, v16, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(a5, v21, @"com.apple.private.ac", v22, v23);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v25, a6, v20, v26))
  {
    v30 = MEMORY[0x277CBEAC0];
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%@", v28, v29, v20);
    objc_msgSend_dictionaryWithObject_forKey_(v30, v32, v31, @"ConferenceID", v33);
    PLLogRegisteredEvent();
    v36 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v34, a6, v20, v35);
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v82 = v36;
        v83 = 2112;
        v84 = a6;
        _os_log_impl(&dword_23BC9F000, v37, OS_LOG_TYPE_INFO, "Received cancel push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v79 = v36;
      v80 = a6;
      MarcoNoteCheckpoint();
    }

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v44 = sub_23BCB0F64(a8, v39, v40, v41, v42);
    if (v44)
    {
      CFDictionarySetValue(v38, *MEMORY[0x277D19568], v44);
    }

    v47 = MEMORY[0x277CCABB0];
    v48 = objc_msgSend_intValue(a7, v43, v44, v45, v46, v79, v80);
    v52 = objc_msgSend_numberWithInt_(v47, v49, v48, v50, v51);
    if (v52)
    {
      CFDictionarySetValue(v38, *MEMORY[0x277D19550], v52);
    }

    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v82 = v38;
        _os_log_impl(&dword_23BC9F000, v57, OS_LOG_TYPE_INFO, "Response Dictionary : %@", buf, 0xCu);
      }
    }

    v58 = MEMORY[0x277CBEAC0];
    v59 = objc_msgSend_plistData(v38, v53, v54, v55, v56);
    v67 = objc_msgSend_dictionaryWithObjectsAndKeys_(v58, v60, v59, v61, v62, *MEMORY[0x277D19558], 0);
    if (isEqualToString)
    {
      v68 = objc_msgSend_broadcasterForACConferenceListeners(self, v63, v64, v65, v66);
    }

    else
    {
      v68 = objc_msgSend_broadcasterForVCConferenceListeners(self, v63, v64, v65, v66);
    }

    v74 = v68;
    v75 = objc_msgSend_accountID(self, v69, v70, v71, v72);
    v76 = sub_23BCA7F48(v36);
    objc_msgSend_account_conference_receivedCancelInvitationFrom_properties_(v74, v77, v75, v20, v76, v67);
  }

  else if (IMOSLoggingEnabled())
  {
    v73 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v82 = a6;
      v83 = 2112;
      v84 = v20;
      _os_log_impl(&dword_23BC9F000, v73, OS_LOG_TYPE_INFO, "Ignoring this cancel, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 incomingMessage:(id)a4 topic:(id)a5 peerID:(id)a6 reason:(id)a7 clientInfo:(id)a8 serviceData:(id)a9
{
  v71 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v70 = a4;
      *&v70[8] = 2112;
      *&v70[10] = a5;
      _os_log_impl(&dword_23BC9F000, v19, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v20 = objc_msgSend___imHexString(a4, v15, v16, v17, v18);
  v25 = sub_23BCB0F64(a8, v21, v22, v23, v24);
  isEqualToString = objc_msgSend_isEqualToString_(a5, v26, @"com.apple.private.ac", v27, v28);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v30, a6, v20, v31))
  {
    v34 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v32, a6, v20, v33);
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v70 = v34;
        *&v70[8] = 2112;
        *&v70[10] = a6;
        _os_log_impl(&dword_23BC9F000, v35, OS_LOG_TYPE_INFO, "Received generic message push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v67 = v34;
      v68 = a6;
      MarcoNoteCheckpoint();
    }

    v39 = objc_msgSend_objectForKey_(a8, v36, @"info", v37, v38, v67, v68);
    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_msgSend_intValue(a7, v40, v41, v42, v43);
        *buf = 67109378;
        *v70 = v45;
        *&v70[4] = 2112;
        *&v70[6] = v39;
        _os_log_impl(&dword_23BC9F000, v44, OS_LOG_TYPE_INFO, "Incoming message type: %d   info: %@", buf, 0x12u);
      }
    }

    if (isEqualToString)
    {
      v46 = objc_msgSend_broadcasterForACConferenceListeners(self, v40, v41, v42, v43);
    }

    else
    {
      v46 = objc_msgSend_broadcasterForVCConferenceListeners(self, v40, v41, v42, v43);
    }

    v52 = v46;
    v53 = objc_msgSend_accountID(self, v47, v48, v49, v50);
    v58 = objc_msgSend_intValue(a7, v54, v55, v56, v57);
    v59 = sub_23BCA7F48(v34);
    v64 = objc_msgSend_unsignedIntValue(v25, v60, v61, v62, v63);
    objc_msgSend_account_conference_receivedAVMessage_from_sessionID_userInfo_(v52, v65, v53, v20, v58, v59, v64, v39);
  }

  else if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v70 = a6;
      *&v70[8] = 2112;
      *&v70[10] = v20;
      _os_log_impl(&dword_23BC9F000, v51, OS_LOG_TYPE_INFO, "Ignoring this message, no peers with peerID %@ conferenceID %@", buf, 0x16u);
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 relayInitiated:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 relayType:(id)a8 relayConnectionID:(id)value relayTransactionIDAlloc:(id)a10 relayTokenAllocReq:(id)a11 relayCandidateID:(id)a12 myRelayIP:(id)a13 myRelayPort:(id)a14 peerRelayIP:(id)a15 peerRelayPort:(id)a16 clientInfo:(id)a17 serviceData:(id)a18
{
  v101 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v96 = a4;
      v97 = 2112;
      v98 = a5;
      _os_log_impl(&dword_23BC9F000, v27, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v24, a7, v25, v26))
  {
    v32 = objc_msgSend___imHexString(a4, v28, v29, v30, v31);
    isEqualToString = objc_msgSend_isEqualToString_(a5, v33, @"com.apple.private.ac", v34, v35);
    if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v37, a6, v32, v38))
    {
      v41 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v39, a6, v32, v40);
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v96 = v41;
          v97 = 2112;
          v98 = a6;
          _os_log_impl(&dword_23BC9F000, v42, OS_LOG_TYPE_INFO, "Received relay initate push from: %@ (%@)", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v93 = v41;
        v94 = a6;
        MarcoNoteCheckpoint();
      }

      v45 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v43, a6, v32, v44, v93, v94);
      if (objc_msgSend_containsObject_(v45, v46, a7, v47, v48))
      {
        objc_msgSend_containsObject_(self->_initiatedConferences, v49, v32, v50, v51);
        v56 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v52, v53, v54, v55);
        objc_msgSend_isScreenLocked(v56, v57, v58, v59, v60);
        FTAWDLogCallRelayInitiateReceived();
        v61 = MEMORY[0x277CBEAC0];
        v65 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, @"%@", v63, v64, v32);
        objc_msgSend_dictionaryWithObject_forKey_(v61, v66, v65, @"ConferenceID", v67);
        PLLogRegisteredEvent();
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v72 = v68;
        if (a8)
        {
          CFDictionarySetValue(v68, *MEMORY[0x277D18FE8], a8);
        }

        if (value)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18F48], value);
        }

        if (a10)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18FE0], a10);
        }

        if (a11)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18FD8], a11);
        }

        if (a6)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18F58], a6);
        }

        if (a15)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18F70], a15);
        }

        if (a16)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18F88], a16);
        }

        if (a13)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18FB8], a13);
        }

        if (a14)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18FD0], a14);
        }

        v73 = a12;
        if (a12)
        {
          CFDictionarySetValue(v72, *MEMORY[0x277D18F98], a12);
        }

        v74 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
        if (isEqualToString)
        {
          v74 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
        }

        v75 = *(&self->super.super.super.isa + *v74);
        v76 = objc_msgSend_accountID(self, v69, v73, v70, v71);
        v81 = objc_msgSend___imHexString(a4, v77, v78, v79, v80);
        v82 = sub_23BCA7F48(v41);
        objc_msgSend_account_relay_handleInitate_fromPerson_(v75, v83, v76, v81, v72, v82);
        v88 = objc_msgSend___imHexString(a4, v84, v85, v86, v87);
        objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v89, a6, 0, a7, v88);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v91 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v96 = a7;
            v97 = 2112;
            v98 = v45;
            v99 = 2112;
            v100 = a6;
            _os_log_impl(&dword_23BC9F000, v91, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v90 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v96 = a6;
        v97 = 2112;
        v98 = v32;
        _os_log_impl(&dword_23BC9F000, v90, OS_LOG_TYPE_INFO, "Ignoring this relay initiate, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
      }
    }
  }

  v92 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 relayUpdated:(id)a4 topic:(id)a5 peerID:(id)a6 peerPushToken:(id)a7 relayType:(id)a8 relayConnectionID:(id)value relayTransactionIDChannelBind:(id)a10 relayTokenChannelBind:(id)a11 relayCandidateID:(id)a12 relayBlob:(id)a13 peerRelayNATIP:(id)a14 peerRelayNATPort:(id)a15 clientInfo:(id)a16 serviceData:(id)a17
{
  v100 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v95 = a4;
      v96 = 2112;
      v97 = a5;
      _os_log_impl(&dword_23BC9F000, v26, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  if (objc_msgSend__checkBadPushToken_(self, v23, a7, v24, v25))
  {
    v31 = objc_msgSend___imHexString(a4, v27, v28, v29, v30);
    if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v32, a6, v31, v33))
    {
      v36 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v34, a6, v31, v35);
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v95 = v36;
          v96 = 2112;
          v97 = a6;
          _os_log_impl(&dword_23BC9F000, v37, OS_LOG_TYPE_INFO, "Received relay update push from: %@ (%@)", buf, 0x16u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        v92 = v36;
        v93 = a6;
        MarcoNoteCheckpoint();
      }

      v40 = objc_msgSend__pushTokensForPeerID_conferenceID_(self, v38, a6, v31, v39, v92, v93);
      if (objc_msgSend_containsObject_(v40, v41, a7, v42, v43))
      {
        objc_msgSend_containsObject_(self->_initiatedConferences, v44, v31, v45, v46);
        isEqualToString = objc_msgSend_isEqualToString_(a5, v47, @"com.apple.private.ac", v48, v49);
        v55 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v51, v52, v53, v54);
        objc_msgSend_isScreenLocked(v55, v56, v57, v58, v59);
        FTAWDLogCallRelayUpdatedReceived();
        v60 = MEMORY[0x277CBEAC0];
        v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"%@", v62, v63, v31);
        objc_msgSend_dictionaryWithObject_forKey_(v60, v65, v64, @"ConferenceID", v66);
        PLLogRegisteredEvent();
        v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v71 = v67;
        if (a8)
        {
          CFDictionarySetValue(v67, *MEMORY[0x277D18FE8], a8);
        }

        if (value)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F48], value);
        }

        if (a10)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18FE0], a10);
        }

        if (a11)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18FD8], a11);
        }

        if (a6)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F58], a6);
        }

        if (a14)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F78], a14);
        }

        if (a15)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F80], a15);
        }

        if (a13)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F90], a13);
        }

        v72 = a12;
        if (a12)
        {
          CFDictionarySetValue(v71, *MEMORY[0x277D18F98], a12);
        }

        v73 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
        if (isEqualToString)
        {
          v73 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
        }

        v74 = *(&self->super.super.super.isa + *v73);
        v75 = objc_msgSend_accountID(self, v68, v72, v69, v70);
        v80 = objc_msgSend___imHexString(a4, v76, v77, v78, v79);
        v81 = sub_23BCA7F48(v36);
        objc_msgSend_account_relay_handleUpdate_fromPerson_(v74, v82, v75, v80, v71, v81);
        v87 = objc_msgSend___imHexString(a4, v83, v84, v85, v86);
        objc_msgSend__retargetPeerID_displayID_pushToken_conferenceID_(self, v88, a6, 0, a7, v87);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v90 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v95 = a7;
            v96 = 2112;
            v97 = v40;
            v98 = 2112;
            v99 = a6;
            _os_log_impl(&dword_23BC9F000, v90, OS_LOG_TYPE_INFO, "Response from token (%@) not in this conference set: %@ (%@)", buf, 0x20u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v89 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v95 = a6;
        v96 = 2112;
        v97 = v31;
        _os_log_impl(&dword_23BC9F000, v89, OS_LOG_TYPE_INFO, "Ignoring this relay update, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
      }
    }
  }

  v91 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 relayCancelled:(id)a4 topic:(id)a5 peerID:(id)a6 relayType:(id)a7 relayTokenAllocReq:(id)a8 relayConnectionID:(id)value relayTransactionIDAlloc:(id)a10 relayCandidateID:(id)a11 myRelayIP:(id)a12 myRelayPort:(id)a13 peerRelayIP:(id)a14 peerRelayPort:(id)a15 reason:(id)a16 clientInfo:(id)a17 serviceData:(id)a18
{
  v71 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v68 = a4;
      v69 = 2112;
      v70 = a5;
      _os_log_impl(&dword_23BC9F000, v28, OS_LOG_TYPE_INFO, "sessionToken: %@, topic: %@", buf, 0x16u);
    }
  }

  v29 = objc_msgSend___imHexString(a4, v24, v25, v26, v27);
  isEqualToString = objc_msgSend_isEqualToString_(a5, v30, @"com.apple.private.ac", v31, v32);
  if (objc_msgSend__hasPeersForPeerID_conferenceID_(self, v34, a6, v29, v35))
  {
    v39 = MEMORY[0x277CBEAC0];
    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%@", v37, v38, v29);
    objc_msgSend_dictionaryWithObject_forKey_(v39, v41, v40, @"ConferenceID", v42);
    PLLogRegisteredEvent();
    v45 = objc_msgSend__displayIDForPeerID_conferenceID_(self, v43, a6, v29, v44);
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v68 = v45;
        v69 = 2112;
        v70 = a6;
        _os_log_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_INFO, "Received relay cancel push from: %@ (%@)", buf, 0x16u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      v65 = v45;
      v66 = a6;
      MarcoNoteCheckpoint();
    }

    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v51 = v47;
    if (a7)
    {
      CFDictionarySetValue(v47, *MEMORY[0x277D18FE8], a7);
    }

    if (a8)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18FD8], a8);
    }

    if (value)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18F48], value);
    }

    if (a10)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18FE0], a10);
    }

    if (a11)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18F98], a11);
    }

    if (a12)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18FB8], a12);
    }

    if (a13)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18FD0], a13);
    }

    if (a14)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18F70], a14);
    }

    v52 = a15;
    if (a15)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18F88], a15);
    }

    if (a6)
    {
      CFDictionarySetValue(v51, *MEMORY[0x277D18F58], a6);
    }

    v53 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
    if (isEqualToString)
    {
      v53 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
    }

    v54 = *(&self->super.super.super.isa + *v53);
    v55 = objc_msgSend_accountID(self, v48, v52, v49, v50, v65, v66);
    v60 = objc_msgSend___imHexString(a4, v56, v57, v58, v59);
    v61 = sub_23BCA7F48(v45);
    objc_msgSend_account_relay_handleCancel_fromPerson_(v54, v62, v55, v60, v51, v61);
  }

  else if (IMOSLoggingEnabled())
  {
    v63 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v68 = a6;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&dword_23BC9F000, v63, OS_LOG_TYPE_INFO, "Ignoring this relay cancel, no peers with peerID %@ in conferenceID %@", buf, 0x16u);
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (unint64_t)queue:(id)a3 optionsForInvocation:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_selector(a4, a2, a3, a4, v4);
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = NSStringFromSelector(v7);
    _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_DEFAULT, "Checking queue options for: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v25 = NSStringFromSelector(v7);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v25 = NSStringFromSelector(v7);
      IMLogString();
    }
  }

  if (objc_msgSend_hasQueuedItems(qword_281422890, v9, v10, v11, v12, v25))
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_DEFAULT, "This should queue normally", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    result = 1;
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v15, OS_LOG_TYPE_DEFAULT, "This should just happen now!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (self->_broadcasterACInvocationQueue == a3)
    {
      v20 = objc_msgSend_broadcasterForACConferenceListeners(self, v16, v17, v18, v19);
    }

    else
    {
      v20 = objc_msgSend_broadcasterForVCConferenceListeners(self, v16, v17, v18, v19);
    }

    objc_msgSend_setTarget_(a3, v21, v20, v22, v23);
    result = 16;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)queue:(id)a3 shouldInvoke:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_selector(a4, a2, a3, a4, v4);
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = NSStringFromSelector(v7);
    _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_DEFAULT, "Checking to see if I can invoke: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v52 = NSStringFromSelector(v7);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v52 = NSStringFromSelector(v7);
      IMLogString();
    }
  }

  hasQueuedItems = objc_msgSend_hasQueuedItems(qword_281422890, v9, v10, v11, v12, v52);
  if (hasQueuedItems)
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_currentMessage(qword_281422890, v15, v16, v17, v18);
      v24 = objc_msgSend_queuedMessages(qword_281422890, v20, v21, v22, v23);
      *buf = 138412546;
      v54 = v19;
      v55 = 2112;
      v56 = v24;
      _os_log_impl(&dword_23BC9F000, v14, OS_LOG_TYPE_DEFAULT, "Can't send yet, current delivery: %@ queued items: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        objc_msgSend_currentMessage(qword_281422890, v25, v26, v27, v28);
        objc_msgSend_queuedMessages(qword_281422890, v29, v30, v31, v32);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        objc_msgSend_currentMessage(qword_281422890, v33, v34, v35, v36);
        objc_msgSend_queuedMessages(qword_281422890, v37, v38, v39, v40);
        IMLogString();
      }
    }
  }

  else
  {
    v41 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v41, OS_LOG_TYPE_DEFAULT, "Looks good to go, i'll send it along", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    if (self->_broadcasterACInvocationQueue == a3)
    {
      v46 = objc_msgSend_broadcasterForACConferenceListeners(self, v42, v43, v44, v45);
    }

    else
    {
      v46 = objc_msgSend_broadcasterForVCConferenceListeners(self, v42, v43, v44, v45);
    }

    objc_msgSend_setTarget_(a3, v47, v46, v48, v49);
  }

  v50 = *MEMORY[0x277D85DE8];
  return hasQueuedItems ^ 1;
}

- (id)loggingName
{
  if (self->_loggingCategory)
  {
    return self->_loggingCategory;
  }

  else
  {
    return @"FaceTime";
  }
}

- (double)_messageTimeoutTimeForMessage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  objc_msgSend_timeout(a3, a2, a3, v3, v4);
  v6 = v5;
  v7 = IMGetCachedDomainIntForKey();
  if (v7 < 1)
  {
    v7 = v6;
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = v7;
      _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "Using override timeout for message delivery of %ld seconds", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end