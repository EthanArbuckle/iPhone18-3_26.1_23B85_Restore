@interface NEIKEv2Session
+ (void)removeItemsFromDictionary:(int)dictionary lowerEdge:;
+ (void)removeItemsFromSet:(int)set lowerEdge:;
- (BOOL)checkSelectedChildSAProposal:(id)proposal;
- (BOOL)checkSelectedIKEProposal:(id)proposal;
- (BOOL)peerAuthenticated;
- (BOOL)ppkAuthenticated;
- (BOOL)updateConfiguration:(id)configuration;
- (NEIKEv2Session)initWithIKEConfig:(id)config firstChildConfig:(id)childConfig sessionConfig:(id)sessionConfig queue:(id)queue ipsecInterface:(NEVirtualInterface_s *)interface ikeSocketHandler:(id)handler kernelSASessionName:(id)name packetDelegate:(id)self0;
- (NEIKEv2Session)initWithIKEConfig:(id)config firstChildConfig:(id)childConfig sessionConfig:(id)sessionConfig queue:(id)queue ipsecInterface:(NEVirtualInterface_s *)interface ikeSocketHandler:(id)handler saSession:(id)session packetDelegate:(id)self0;
- (NSObject)initWithIKEConfig:(NSObject *)config configurationDelegate:(void *)delegate queue:(void *)queue saSession:(void *)session shouldCopySASession:(void *)aSession transport:(void *)transport packetDelegate:(void *)packetDelegate;
- (NSObject)initWithIKEConfig:(void *)config configurationDelegate:(void *)delegate queue:(void *)queue kernelSASessionName:(void *)name transport:(void *)transport packetDelegate:;
- (NSObject)initWithIKEConfig:(void *)config firstChildConfig:(void *)childConfig sessionConfig:(void *)sessionConfig queue:(void *)queue ipsecInterface:(void *)interface ikeSocketHandler:(void *)handler saSession:(char)session shouldOwnSASession:(void *)self0 packetDelegate:(void *)self1 transport:(void *)self2 configurationDelegate:;
- (NSString)description;
- (_BYTE)abort;
- (_DWORD)copyChildWithID:(void *)d;
- (_OWORD)addEmptyInterface;
- (__CFString)interfaceName;
- (id)copyChildWithSPI:(void *)i;
- (id)copySAFromDictionary:(void *)dictionary forChild:(void *)child;
- (id)copySAFromDictionary:(void *)dictionary forSPI:(void *)i;
- (id)firstChildSA;
- (uint64_t)copyIPsecInterfaceWithMissingAllowed:(uint64_t)allowed;
- (uint64_t)fireWaitingRequestHandlerWithPacket:(void *)packet;
- (uint64_t)generateSPIForChild:(void *)child proposals:;
- (uint64_t)handleIKEIntermediateForResponderIKESA:(uint64_t)a iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:;
- (uint64_t)installChildSA:(uint64_t)a;
- (uint64_t)interfaceIndex;
- (uint64_t)migrateAllChildSAs;
- (uint64_t)packetsToSave;
- (uint64_t)receiveDeleteChildSPI:(void *)i remoteSPI:(void *)pI packet:;
- (uint64_t)sendCurrentRequest:(uint64_t)request;
- (uint64_t)sendReply:(void *)reply replyHandler:;
- (uint64_t)sendReplyForMessageID:(id)self;
- (uint64_t)sendRequest:(uint64_t)request retry:(void *)retry replyHandler:(void *)handler;
- (uint64_t)sendRequest:(unint64_t)request retryIntervalInMilliseconds:(int)milliseconds maxRetries:(void *)retries timeoutError:(char)error resend:(uint64_t)resend sendMessageID:(void *)d sendCompletionHandler:(void *)handler replyHandler:;
- (uint64_t)setupReceivedChildCopyError;
- (uint64_t)uninstallAllChildSAs;
- (unsigned)addChild:(id)child;
- (void)addFirstChild:(void *)child;
- (void)blackholeDetectedSA:(id)a;
- (void)cancelSendTimer;
- (void)connect;
- (void)dealloc;
- (void)deleteSA:(id)a;
- (void)disconnect;
- (void)dpdTimerFired;
- (void)enqueuePendingRequestContext:(void *)context;
- (void)expireSA:(id)a;
- (void)finishConfigurationEstablishment;
- (void)forceRekeyChild:(unsigned int)child;
- (void)forceRekeyIKE;
- (void)handleEAPAndGSPMForIKESA:(void *)a authPacket:(void *)packet handler:;
- (void)handleFollowupKEForRekeyChildSAInitiator:(unint64_t)initiator iteration:(void *)iteration handler:;
- (void)handleFollowupKEForRekeyChildSAResponder:(uint64_t)responder iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:;
- (void)handleFollowupKEForRekeyIKESAInitiator:(void *)initiator rekeyIKEContext:(unint64_t)context iteration:(void *)iteration handler:;
- (void)handleFollowupKEForRekeyIKESAResponder:(uint64_t)responder iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:;
- (void)handleIKEIntermediateForInitiatorIKESA:(unint64_t)a iteration:(void *)iteration handler:;
- (void)idleTimeoutSA:(id)a;
- (void)initiateDelete:(void *)delete;
- (void)initiateDeleteChildSPI:(void *)i remoteSPI:(void *)pI deleteCompletionCallback:;
- (void)initiateMOBIKE:(_BYTE *)e;
- (void)installRekeyedChildSA:(id *)a andReturnIPsecSAsToDelete:;
- (void)invalidateDPDTimer;
- (void)invalidateWithCompletionHandler:(BOOL)handler completionHandler:(id)completionHandler;
- (void)processFragment:(_DWORD *)fragment;
- (void)receiveConnection:(void *)connection;
- (void)receiveDeleteChildSA:(void *)a;
- (void)receiveDeleteIKESA:(void *)a;
- (void)receiveInformational:(_BYTE *)informational;
- (void)receiveMOBIKE:(void *)e;
- (void)receiveNewChildSA:(void *)a packet:;
- (void)receivePacket:(id)packet;
- (void)receiveRedirect:(void *)redirect;
- (void)receiveRekeyChildSA:(void *)a packet:;
- (void)receiveRekeyIKESA:(void *)a;
- (void)removeChild:(void *)child withReason:;
- (void)removeFirstChild;
- (void)reportConfiguration;
- (void)reportPrivateNotifies:(void *)notifies;
- (void)reportPrivateNotifiesInPacket:(id *)packet;
- (void)reportServerRedirect:(void *)redirect;
- (void)reportState;
- (void)reportTrafficSelectorsForChildSA:(void *)a;
- (void)resetAll;
- (void)resetChild:(char *)child;
- (void)resetMessages;
- (void)retryCookieForIKESA:(uint64_t)a validated:(void *)validated handler:;
- (void)sendKeepaliveWithRetries:(unsigned int)retries retryIntervalInMilliseconds:(unint64_t)milliseconds callbackQueue:(id)queue callback:(id)callback;
- (void)sendMOBIKEWithRetries:(unsigned int)retries retryInterval:(unint64_t)interval interfaceName:(id)name invalidateTransport:(BOOL)transport resetEndpoint:(id)endpoint callbackQueue:(id)queue callback:(id)callback;
- (void)sendPendingRequestContext;
- (void)sendPrivateNotifies:(id)notifies maxRetries:(unsigned int)retries retryIntervalInMilliseconds:(unint64_t)milliseconds callbackQueue:(id)queue callback:(id)callback;
- (void)setIKESA:(uint64_t)a;
- (void)setPendingPrivateNotifies:(uint64_t)notifies;
- (void)setSentMOBIKERequest:(int)request messageID:;
- (void)startDPDTimer;
- (void)startIKELifetimeTimer;
- (void)uninstallOldRekeyedChildSA:(void *)a andDeleteIPsecSAs:;
- (void)uninstallTLSChildSA:(char)a rekey:;
- (void)updateEndpointState;
- (void)updateReceivedRequestWindow;
- (void)updateSentRequestWindow;
@end

@implementation NEIKEv2Session

- (void)reportPrivateNotifiesInPacket:(id *)packet
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (packet)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v3;
    self = packet;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3)
    {
      Property = objc_getProperty(v3, v4, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = Property;
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if (v11)
          {
            v12 = v11[4];
            if ((v12 - 40960) >> 13 <= 2)
            {
              v13 = ne_log_obj();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v15 = objc_getProperty(v11, v14, 40, 1);
                *buf = 138412802;
                *v39 = self;
                *&v39[8] = 1024;
                *&v39[10] = v12;
                v40 = 2112;
                v41 = v15;
                _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_INFO, "%@ Received private notify status %u %@", buf, 0x1Cu);
              }

              v16 = [NEIKEv2PrivateNotify alloc];
              v18 = objc_getProperty(v11, v17, 40, 1);
              v19 = [(NEIKEv2PrivateNotify *)v16 initWithNotifyStatus:v12 notifyData:v18];

              if (v19)
              {
                [v33 addObject:v19];
              }

              else
              {
                v20 = ne_log_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  v22 = objc_getProperty(v11, v21, 40, 1);
                  *buf = 67109378;
                  *v39 = v12;
                  *&v39[4] = 2112;
                  *&v39[6] = v22;
                  _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "NEIKEv2PrivateNotify init %u %@ failed", buf, 0x12u);
                }
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v8);
    }

    v3 = v31;
    if ([v33 count])
    {
      v24 = objc_getProperty(self, v23, 352, 1);
      if (v24 && (v25 = v24[6], v24, v25 == 2))
      {
        [(NEIKEv2Session *)self reportPrivateNotifies:v33];
      }

      else
      {
        v26 = self[51];

        if (!v26)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = self[51];
          self[51] = v27;
        }

        v29 = self[51];
        [v29 addObjectsFromArray:v33];
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)initiateDelete:(void *)delete
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (delete)
  {
    v5 = objc_getProperty(delete, v3, 384, 1);
    dispatch_assert_queue_V2(v5);

    if (!v4)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NEIKEv2Session(Exchange) initiateDelete:]";
        _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null deleteIKEContext", buf, 0xCu);
      }

      goto LABEL_27;
    }

    objc_opt_self();
    initOutbound = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initOutbound];
    if (initOutbound)
    {
      v7 = objc_alloc_init(NEIKEv2DeletePayload);
      p_super = &v7->super.super;
      if (v7)
      {
        v7->_protocol = 1;
      }

      if (([(NEIKEv2Payload *)v7 isValid]& 1) != 0)
      {
        *buf = p_super;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
        objc_setProperty_atomic(initOutbound, v10, v9, 88);

        v11 = initOutbound;
        goto LABEL_11;
      }

      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NEIKEv2InformationalPacket(Exchange) createDeleteIKE]";
        _os_log_fault_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_FAULT, "%s called with null delete.isValid", buf, 0xCu);
      }
    }

    else
    {
      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
      }
    }

    v11 = 0;
LABEL_11:

    if (v11)
    {
      if (v4[24] == 1)
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __43__NEIKEv2Session_Exchange__initiateDelete___block_invoke;
        v54[3] = &unk_1E7F08198;
        v54[4] = delete;
        v12 = v4;
        v55 = v12;
        if ([NEIKEv2Session sendRequest:delete retry:v11 replyHandler:v54]== -1)
        {
          [v12 sendCallbackSuccess:0 session:delete];
          v14 = objc_getProperty(delete, v13, 352, 1);
          ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete with reply", v15, v16, v17, v18, v19, v20, v21, v49);
          [(NEIKEv2IKESA *)v14 setState:ErrorFailedToSend error:?];

          [(NEIKEv2Session *)delete reportState];
          [(NEIKEv2Session *)delete resetAll];
        }

        v25 = v55;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __43__NEIKEv2Session_Exchange__initiateDelete___block_invoke_4;
        aBlock[3] = &unk_1E7F081C0;
        v27 = v4;
        v52 = v27;
        deleteCopy = delete;
        v28 = _Block_copy(aBlock);
        v11 = v11;
        v29 = v28;
        Property = objc_getProperty(delete, v30, 352, 1);
        v32 = 4;
        if (Property)
        {
          if (Property[17])
          {
            v32 = 12;
          }

          else
          {
            v32 = 4;
          }
        }

        Error = NEIKEv2CreateError(3);
        v34 = [(NEIKEv2Session *)delete sendRequest:v11 retryIntervalInMilliseconds:0 maxRetries:v32 timeoutError:Error resend:0 sendMessageID:0xFFFFFFFFLL sendCompletionHandler:v29 replyHandler:0];

        if (v34 == -1)
        {
          [v27 sendCallbackSuccess:0 session:delete];
          v36 = objc_getProperty(delete, v35, 352, 1);
          v44 = NEIKEv2CreateErrorFailedToSend(@"delete with send complete", v37, v38, v39, v40, v41, v42, v43, v50);
          [(NEIKEv2IKESA *)v36 setState:v44 error:?];

          [(NEIKEv2Session *)delete reportState];
          [(NEIKEv2Session *)delete resetAll];
        }

        v25 = v52;
      }
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = delete;
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "%@ Failed to create Delete packet", buf, 0xCu);
      }

      [v4 sendCallbackSuccess:0 session:delete];
      v11 = 0;
    }

LABEL_27:
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateDelete___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 37)
  {
    if (v3 && ![(NEIKEv2Packet *)v3 hasErrors])
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 1;
      goto LABEL_9;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *v13 = 138412290;
      *&v13[4] = v6;
      v7 = "%@ Failed to process packet";
LABEL_11:
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, v7, v13, 0xCu);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *v13 = 138412290;
      *&v13[4] = v12;
      v7 = "%@ Failed to receive Delete packet";
      goto LABEL_11;
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = 0;
LABEL_9:
  [v8 sendCallbackSuccess:v10 session:{v9, *v13}];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initiateDeleteChildSPI:(void *)i remoteSPI:(void *)pI deleteCompletionCallback:
{
  v42 = *MEMORY[0x1E69E9840];
  iCopy = i;
  pICopy = pI;
  if (!self)
  {
    goto LABEL_22;
  }

  v9 = a2;
  v11 = objc_getProperty(self, v10, 384, 1);
  dispatch_assert_queue_V2(v11);

  v12 = v9;
  objc_opt_self();
  if (!v12)
  {
    initOutbound = ne_log_obj();
    if (os_log_type_enabled(initOutbound, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NEIKEv2InformationalPacket(Exchange) createDeleteChild:]";
      _os_log_fault_impl(&dword_1BA83C000, initOutbound, OS_LOG_TYPE_FAULT, "%s called with null childSPI", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_14;
  }

  initOutbound = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initOutbound];
  if (!initOutbound)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, &v14->super.super, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v14 = objc_alloc_init(NEIKEv2DeletePayload);
  protocol = [v12 protocol];
  if (v14)
  {
    v14->_protocol = protocol;
  }

  v40 = v12;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  if (v14)
  {
    objc_setProperty_atomic(v14, v16, v17, 40);
  }

  if (([(NEIKEv2Payload *)v14 isValid]& 1) == 0)
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NEIKEv2InformationalPacket(Exchange) createDeleteChild:]";
      _os_log_fault_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_FAULT, "%s called with null delete.isValid", buf, 0xCu);
    }

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  *buf = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
  objc_setProperty_atomic(initOutbound, v19, v18, 88);

  v20 = initOutbound;
LABEL_13:

LABEL_14:
  if (v20)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__NEIKEv2Session_Exchange__initiateDeleteChildSPI_remoteSPI_deleteCompletionCallback___block_invoke;
    v37[3] = &unk_1E7F08210;
    v37[4] = self;
    v21 = pICopy;
    v39 = v21;
    v38 = iCopy;
    if ([NEIKEv2Session sendRequest:self retry:v20 replyHandler:v37]== -1)
    {
      (*(v21 + 2))(v21, 0);
      v23 = objc_getProperty(self, v22, 352, 1);
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete child", v24, v25, v26, v27, v28, v29, v30, v37[0]);
      [(NEIKEv2IKESA *)v23 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];
    }
  }

  else
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "%@ Failed to create Delete packet", buf, 0xCu);
    }

    (*(pICopy + 2))(pICopy, 0);
  }

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];
}

void __86__NEIKEv2Session_Exchange__initiateDeleteChildSPI_remoteSPI_deleteCompletionCallback___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] != 37)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
      goto LABEL_8;
    }

    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    v6 = "%@ Failed to receive Delete packet";
LABEL_10:
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, v6, &v9, 0xCu);
    goto LABEL_7;
  }

  if (([(NEIKEv2InformationalPacket *)v3 validateDeleteChild:?]& 1) == 0)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    v6 = "%@ Failed to process Delete packet";
    goto LABEL_10;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), 1);
LABEL_8:

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)receiveDeleteChildSPI:(void *)i remoteSPI:(void *)pI packet:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  iCopy = i;
  pICopy = pI;
  if (self)
  {
    Property = objc_getProperty(self, v9, 384, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  dispatch_assert_queue_V2(v12);

  if (([(NEIKEv2InformationalPacket *)pICopy validateDeleteChild:iCopy]& 1) == 0)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v31 = 138412290;
      *&v31[4] = self;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ Failed to process Delete packet", v31, 0xCu);
    }

    goto LABEL_18;
  }

  if (v7)
  {
    [NEIKEv2InformationalPacket createDeleteResponse:pICopy child:v7];
  }

  else
  {
    [NEIKEv2InformationalPacket createInformationalResponse:pICopy ikeSA:0];
  }
  v13 = ;
  if (!v13)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v31 = 138412290;
      *&v31[4] = self;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to create Delete packet", v31, 0xCu);
    }

    v13 = 0;
    goto LABEL_18;
  }

  if (([(NEIKEv2Session *)self sendReply:v13 replyHandler:0]& 1) == 0)
  {
    if (self)
    {
      v17 = objc_getProperty(self, v14, 352, 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete child reply", v19, v20, v21, v22, v23, v24, v25, *v31);
    [(NEIKEv2IKESA *)v18 setState:ErrorFailedToSend error:?];

    [(NEIKEv2Session *)self reportState];
    [(NEIKEv2Session *)self resetAll];
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 1;
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

void __50__NEIKEv2Session_Exchange__initiateInformational___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v48 = v10;
      v9 = "%@ Failed to receive informational packet";
      v11 = v7;
      v12 = 12;
LABEL_32:
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v9, buf, v12);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ([v3 exchangeType] != 37)
  {
    v7 = ne_log_large_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 32);
      *buf = 138412546;
      v48 = v44;
      v49 = 2112;
      v50 = v4;
      v9 = "%@ Received packet was not informational as expected %@";
      goto LABEL_31;
    }

LABEL_9:

    [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v13, 352, 1);
    }

    v15 = Property;
    Error = NEIKEv2CreateError(4);
    [(NEIKEv2IKESA *)v15 setState:Error error:?];

    [(NEIKEv2Session *)*(a1 + 32) reportState];
    [(NEIKEv2Session *)*(a1 + 32) resetAll];
    goto LABEL_12;
  }

  if ([(NEIKEv2Packet *)v4 hasErrors])
  {
    v7 = ne_log_large_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v48 = v8;
      v49 = 2112;
      v50 = v4;
      v9 = "%@ Failed to process informational packet %@";
LABEL_31:
      v11 = v7;
      v12 = 22;
      goto LABEL_32;
    }

    goto LABEL_9;
  }

  v20 = *(a1 + 32);
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = objc_getProperty(v20, v6, 352, 1);
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21[11];

  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

  v23 = [(NEIKEv2Packet *)v4 copyNotification:?];
  v25 = v23;
  if (v23)
  {
    v23 = objc_getProperty(v23, v24, 40, 1);
  }

  v27 = v23;
  v28 = *(a1 + 32);
  if (v28)
  {
    v29 = objc_getProperty(v28, v26, 352, 1);
    v31 = v29;
    if (v29)
    {
      v29 = objc_getProperty(v29, v30, 504, 1);
    }
  }

  else
  {
    v31 = 0;
    v29 = 0;
  }

  v32 = v29;
  v33 = [v27 isEqualToData:v32];

  if ((v33 & 1) == 0)
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 32);
      *buf = 138412290;
      v48 = v37;
      _os_log_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_INFO, "%@ Successfully received informational packet, need SA update", buf, 0xCu);
    }

    v39 = [NEIKEv2MOBIKEContext alloc];
    v40 = *(a1 + 32);
    if (v40)
    {
      v40 = objc_getProperty(v40, v38, 384, 1);
    }

    v41 = v40;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __50__NEIKEv2Session_Exchange__initiateInformational___block_invoke_28;
    v45[3] = &unk_1E7F081E8;
    v42 = *(a1 + 40);
    v45[4] = *(a1 + 32);
    v46 = v42;
    v43 = [(NEIKEv2MOBIKEContext *)&v39->super.super.isa initWithMOBIKEInterface:0 mobikeEndpoint:0 invalidateTransport:4 maxRetries:0 retryIntervalMilliseconds:v41 callbackQueue:v45 callback:?];

    [(NEIKEv2Session *)*(a1 + 32) initiateMOBIKE:v43];
  }

  else
  {
LABEL_22:
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = *(a1 + 32);
      *buf = 138412290;
      v48 = v35;
      _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@ Successfully received informational packet", buf, 0xCu);
    }

    [*(a1 + 40) sendCallbackSuccess:1 session:*(a1 + 32)];
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
}

void __50__NEIKEv2Session_Exchange__initiateInformational___block_invoke_28(uint64_t a1, void *a2, int a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a2;
  v9 = ne_log_obj();
  v10 = v9;
  if (a3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v19 = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@ Updated remote SA successfully", &v19, 0xCu);
    }

    [*(a1 + 40) sendCallbackSuccess:1 session:v8];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ Failed to remote SA", &v19, 0xCu);
    }

    [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
    if (v8)
    {
      Property = objc_getProperty(v8, v12, 352, 1);
    }

    else
    {
      Property = 0;
    }

    v14 = Property;
    [(NEIKEv2IKESA *)v14 setState:v7 error:?];

    [(NEIKEv2Session *)v8 reportState];
    [(NEIKEv2Session *)v8 resetAll];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)initiateMOBIKE:(_BYTE *)e
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (e)
  {
    v5 = objc_getProperty(e, v3, 384, 1);
    dispatch_assert_queue_V2(v5);

    if ((e[15] & 1) == 0)
    {
      __assert_rtn("[NEIKEv2Session(Exchange) initiateMOBIKE:]", "NEIKEv2Exchange.m", 2895, "self.hasOutboundRequestInFlight");
    }

    if (!v4)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v58 = "[NEIKEv2Session(Exchange) initiateMOBIKE:]";
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null mobikeContext", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v7 = objc_getProperty(e, v6, 352, 1);
    if (!v7)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v58 = "[NEIKEv2Session(Exchange) initiateMOBIKE:]";
        _os_log_fault_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
      }

      [v4 sendCallbackSuccess:0 session:e];
      v8 = 0;
      goto LABEL_33;
    }

    v8 = v7;
    if ((v7[11] & 1) == 0)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "MOBIKE not supported for this IKE SA. Ignoring request", buf, 2u);
      }

      Error = NEIKEv2CreateError(9);
      [(NEIKEv2MOBIKEContext *)v4 sendCallbackSuccess:e session:Error error:?];
      goto LABEL_32;
    }

    if (*(v4 + 24) == 1)
    {
      [(NEIKEv2IKESA *)v7 detachTransportWithShouldInvalidate:?];
      v10 = objc_getProperty(e, v9, 376, 1);
      if (v10)
      {
        *(v10 + 24) = xmmword_1BAA4E550;
        *(v10 + 12) = -1;
        *(v10 + 16) = 0;
        *(v10 + 40) = 0;
        *(v10 + 48) = 30;
        *(v10 + 56) = 0;
        *(v10 + 64) = 1000;
        *(v10 + 8) = 0;
      }
    }

    v11 = v4[4];
    objc_setProperty_atomic(v8, v12, v11, 304);

    v13 = v4[5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_27:
      [(NEIKEv2IKESA *)v8 setState:0 error:?];
      [(NEIKEv2Session *)e reportState];
      Error = [(NEIKEv2IKESA *)v8 copyTransport];
      if (Error)
      {
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __43__NEIKEv2Session_Exchange__initiateMOBIKE___block_invoke;
        v55[3] = &unk_1E7F0A0E8;
        v55[4] = e;
        v56 = v4;
        [(NEIKEv2Transport *)Error waitForTransport:v55];
      }

      else
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to create a new transport for IKE SA", buf, 2u);
        }

        ErrorInternal = NEIKEv2CreateErrorInternal(@"Initiate MOBIKE failed to create a new transport for IKE SA", v43, v44, v45, v46, v47, v48, v49, v55[0]);
        [(NEIKEv2MOBIKEContext *)v4 sendCallbackSuccess:e session:ErrorInternal error:?];
      }

LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v15 = v4[5];
    v16 = v15;
    if (v15)
    {
      if ([v15 address])
      {
        if (nelog_is_debug_logging_enabled())
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v58 = v8;
            v59 = 2112;
            v60 = v16;
            _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "Setting remote address of %@ to %@", buf, 0x16u);
          }
        }

        address = [v16 address];
        if (*(address + 2))
        {
          v19 = __rev16(*(address + 2));
        }

        else if (*(v8 + 12))
        {
          v19 = 4500;
        }

        else
        {
          v19 = 500;
        }

        v22 = -[NEIKEv2IKESA copyAddressFrom:with:]([v16 address], v19);
        objc_setProperty_atomic(v8, v23, v22, 72);

        objc_setProperty_atomic(v8, v24, 0, 64);
        v26 = objc_getProperty(v8, v25, 472, 1);
        Property = objc_getProperty(v8, v27, 32, 1);
        [(NEIKEv2Transport *)v26 cancelClient:0 shouldInvalidate:?];

        v30 = objc_getProperty(v8, v29, 480, 1);
        v32 = objc_getProperty(v8, v31, 32, 1);
        [(NEIKEv2Transport *)v30 cancelClient:v32 shouldInvalidate:0];

        v34 = objc_getProperty(v8, v33, 488, 1);
        v36 = objc_getProperty(v8, v35, 32, 1);
        [(NEIKEv2Transport *)v34 cancelClient:v36 shouldInvalidate:0];

        objc_setProperty_atomic(v8, v37, 0, 472);
        objc_setProperty_atomic(v8, v38, 0, 480);
        objc_setProperty_atomic(v8, v39, 0, 488);
        goto LABEL_26;
      }

      v53 = ne_log_obj();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
LABEL_44:

LABEL_26:
        goto LABEL_27;
      }

      *buf = 136315138;
      v58 = "[NEIKEv2IKESA resetRemoteAddress:]";
      v54 = "%s called with null remoteAddress.address";
    }

    else
    {
      v53 = ne_log_obj();
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_44;
      }

      *buf = 136315138;
      v58 = "[NEIKEv2IKESA resetRemoteAddress:]";
      v54 = "%s called with null remoteAddress";
    }

    _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, v54, buf, 0xCu);
    goto LABEL_44;
  }

LABEL_34:

  v51 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateMOBIKE___block_invoke(uint64_t a1, const char *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  [(NEIKEv2IKESA *)v4 resyncAddress];

  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6)
  {
    v9 = objc_getProperty(v6, v7, 384, 1);
    dispatch_assert_queue_V2(v9);

    v11 = objc_getProperty(v6, v10, 352, 1);
    v13 = v11;
    if (v11)
    {
      v14 = objc_getProperty(v11, v12, 64, 1);

      if (v14)
      {
        if (v8)
        {
          v15 = v8[7];
          v16 = *(v8 + 6);
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        *&v59 = MEMORY[0x1E69E9820];
        *(&v59 + 1) = 3221225472;
        v60 = __48__NEIKEv2Session_Exchange__initiateMOBIKEInner___block_invoke;
        v61 = &unk_1E7F08378;
        v62 = v8;
        v63 = v6;
        v64 = v13;
        v17 = &v59;
        v19 = objc_getProperty(v6, v18, 384, 1);
        dispatch_assert_queue_V2(v19);

        v21 = objc_getProperty(v6, v20, 352, 1);
        v22 = v6[6];
        v24 = objc_getProperty(v6, v23, 392, 1);
        v25 = v24;
        if (v22 == -1 || !v24)
        {
          v60(v17, 0);
        }

        else
        {
          v51 = v16;
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_INFO, "Re-sending previous MOBIKE request", buf, 2u);
          }

          *buf = MEMORY[0x1E69E9820];
          v54 = 3221225472;
          v55 = __87__NEIKEv2Session_Exchange__resendPreviousMOBIKEInnerWithRetries_retryInterval_handler___block_invoke;
          v56 = &unk_1E7F08580;
          v27 = v17;
          v58 = v27;
          v57 = v21;
          if ([(NEIKEv2Session *)v6 sendRequest:v25 retryIntervalInMilliseconds:v51 maxRetries:v15 timeoutError:0 resend:1 sendMessageID:v22 sendCompletionHandler:0 replyHandler:buf]== -1)
          {
            v28 = ne_log_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *v52 = 0;
              _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "Resend previous MOBIKE, failed to send Informational packet", v52, 2u);
            }

            ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"resend previous MOBIKE, failed to send Informational packet", v29, v30, v31, v32, v33, v34, v35, v50);
            v60(v27, ErrorFailedToSend);
          }
        }

        ErrorInternal = v62;
        goto LABEL_23;
      }

      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v59) = 0;
        _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to fetch new local address for IKE SA", &v59, 2u);
      }

      v45 = @"Initiate MOBIKE failed to fetch new local address for IKE SA";
    }

    else
    {
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        LODWORD(v59) = 136315138;
        *(&v59 + 4) = "[NEIKEv2Session(Exchange) initiateMOBIKEInner:]";
        _os_log_fault_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", &v59, 0xCu);
      }

      v45 = @"Initiate MOBIKE failed, no IKE SA";
    }

    ErrorInternal = NEIKEv2CreateErrorInternal(v45, v38, v39, v40, v41, v42, v43, v44, v49);
    [(NEIKEv2MOBIKEContext *)v8 sendCallbackSuccess:v6 session:ErrorInternal error:?];
LABEL_23:
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __48__NEIKEv2Session_Exchange__initiateMOBIKEInner___block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *MEMORY[0x1E69E9840];

    [(NEIKEv2MOBIKEContext *)v3 sendCallbackSuccess:v4 session:a2 error:?];
    return;
  }

  v6 = *(a1 + 48);
  objc_opt_self();
  if (!v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v89 = "+[NEIKEv2InformationalPacket(Exchange) createUpdateAddressInitiator:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
    }

    v23 = 0;
    goto LABEL_23;
  }

  v7 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initOutbound];
  v8 = v7;
  if (!v7)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v24 = "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed";
LABEL_38:
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, v24, buf, 2u);
    goto LABEL_14;
  }

  if ([(NEIKEv2Packet *)v7 addNotification:0 data:?])
  {
    v10 = [(NEIKEv2IKESA *)v6 initiatorSPI];
    v12 = [(NEIKEv2IKESA *)v6 responderSPI];
    v14 = objc_getProperty(v6, v13, 64, 1);
    v15 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:v10 responderSPI:v12 address:v14];

    if ([(NEIKEv2Packet *)v8 addNotification:v15 data:?])
    {
      v17 = [(NEIKEv2IKESA *)v6 initiatorSPI];
      v19 = [(NEIKEv2IKESA *)v6 responderSPI];
      v21 = objc_getProperty(v6, v20, 72, 1);
      v22 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:v17 responderSPI:v19 address:v21];

      if ([(NEIKEv2Packet *)v8 addNotification:v22 data:?])
      {
        v23 = v8;
LABEL_21:

        goto LABEL_22;
      }

      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed", buf, 2u);
      }
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
      }
    }

    v23 = 0;
    goto LABEL_21;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v24 = "[packet addNotification:NEIKEv2NotifyTypeUpdateSAAddresses] failed";
    goto LABEL_38;
  }

LABEL_14:
  v23 = 0;
LABEL_22:

LABEL_23:
  if (v23)
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    if (v26)
    {
      v28 = *(v26 + 48);
      v29 = *(v26 + 28);
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    Error = NEIKEv2CreateError(3);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __48__NEIKEv2Session_Exchange__initiateMOBIKEInner___block_invoke_643;
    v84[3] = &unk_1E7F08530;
    v84[4] = *(a1 + 40);
    v85 = v23;
    v86 = *(a1 + 32);
    v87 = *(a1 + 48);
    v31 = [(NEIKEv2Session *)v27 sendRequest:v85 retryIntervalInMilliseconds:v28 maxRetries:v29 timeoutError:Error resend:0 sendMessageID:0xFFFFFFFFLL sendCompletionHandler:0 replyHandler:v84];

    if (v31 == -1)
    {
      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator update addresses", v32, v33, v34, v35, v36, v37, v38, v81);
      [(NEIKEv2MOBIKEContext *)v39 sendCallbackSuccess:v40 session:ErrorFailedToSend error:?];

      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v42, 352, 1);
      }

      v44 = Property;
      v52 = NEIKEv2CreateErrorFailedToSend(@"initiator update addresses", v45, v46, v47, v48, v49, v50, v51, v82);
      [(NEIKEv2IKESA *)v44 setState:v52 error:?];

      [(NEIKEv2Session *)*(a1 + 40) reportState];
      [(NEIKEv2Session *)*(a1 + 40) resetAll];
    }
  }

  else
  {
    v55 = ne_log_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to create Update Addresses packet", buf, 2u);
    }

    v56 = *(a1 + 32);
    v57 = *(a1 + 40);
    ErrorInternal = NEIKEv2CreateErrorInternal(@"Initiate MOBIKE failed to create Update Addresses packet", v58, v59, v60, v61, v62, v63, v64, v80);
    [(NEIKEv2MOBIKEContext *)v56 sendCallbackSuccess:v57 session:ErrorInternal error:?];

    v67 = *(a1 + 40);
    if (v67)
    {
      v67 = objc_getProperty(v67, v66, 352, 1);
    }

    v68 = v67;
    v76 = NEIKEv2CreateErrorInternal(@"Initiate MOBIKE failed to create Update Addresses packet", v69, v70, v71, v72, v73, v74, v75, v83);
    [(NEIKEv2IKESA *)v68 setState:v76 error:?];

    [(NEIKEv2Session *)*(a1 + 40) reportState];
    [(NEIKEv2Session *)*(a1 + 40) resetAll];
  }

  v79 = *MEMORY[0x1E69E9840];
}

void __87__NEIKEv2Session_Exchange__resendPreviousMOBIKEInnerWithRetries_retryInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 exchangeType] != 37)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Resend previous MOBIKE, failed to receive Informational packet again", buf, 2u);
    }

    v12 = *(a1 + 40);
    v13 = @"Resend previous MOBIKE, failed to receive Informational packet again";
    goto LABEL_10;
  }

  if (([(NEIKEv2InformationalPacket *)v3 validateUpdateAddresses:?]& 1) == 0)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Resend previous MOBIKE, failed to process Informational packet", &v16, 2u);
    }

    v12 = *(a1 + 40);
    v13 = @"Resend previous MOBIKE, failed to process Informational packet";
LABEL_10:
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(v13, v5, v6, v7, v8, v9, v10, v11, v16);
    (*(v12 + 16))(v12, ErrorPeerInvalidSyntax);

    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:
}

void __48__NEIKEv2Session_Exchange__initiateMOBIKEInner___block_invoke_643(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 exchangeType] == 37)
  {
    [(NEIKEv2Session *)*(a1 + 32) setSentMOBIKERequest:-1 messageID:?];
    if (([(NEIKEv2InformationalPacket *)v3 validateUpdateAddresses:?]& 1) != 0)
    {
      if (([(NEIKEv2Session *)*(a1 + 32) migrateAllChildSAs]& 1) != 0)
      {
        [(NEIKEv2Session *)*(a1 + 32) reportConfiguration];
        v6 = *(a1 + 56);
        if (v6)
        {
          *(v6 + 26) = 0;
          *(v6 + 120) = 0;
          *(v6 + 21) = 0;
          v7 = *(a1 + 56);
        }

        else
        {
          v7 = 0;
        }

        [(NEIKEv2IKESA *)v7 setState:0 error:?];
        [(NEIKEv2Session *)*(a1 + 32) reportState];
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v54) = 0;
          _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "Initiate MOBIKE switched IKE SA addresses", &v54, 2u);
        }

        [(NEIKEv2MOBIKEContext *)*(a1 + 48) sendCallbackSuccess:*(a1 + 32) session:0 error:?];
      }

      else
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *v55 = 0;
          _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to migrate child SAs", v55, 2u);
        }

        v31 = *(a1 + 48);
        v32 = *(a1 + 32);
        ErrorInternal = NEIKEv2CreateErrorInternal(@"Initiate MOBIKE failed to migrate child SAs", v33, v34, v35, v36, v37, v38, v39, v54);
        [(NEIKEv2MOBIKEContext *)v31 sendCallbackSuccess:v32 session:ErrorInternal error:?];

        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v41, 352, 1);
        }

        v43 = Property;
        v51 = NEIKEv2CreateErrorInternal(@"Initiate MOBIKE failed to migrate child SAs", v44, v45, v46, v47, v48, v49, v50, v54);
        [(NEIKEv2IKESA *)v43 setState:v51 error:?];

        [(NEIKEv2Session *)*(a1 + 32) reportState];
        [(NEIKEv2Session *)*(a1 + 32) resetAll];
      }
    }

    else
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v56 = 0;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to process Informational packet", v56, 2u);
      }

      ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Initiate MOBIKE failed to process Informational packet", v17, v18, v19, v20, v21, v22, v23, v54);
      [(NEIKEv2MOBIKEContext *)*(a1 + 48) sendCallbackSuccess:*(a1 + 32) session:ErrorPeerInvalidSyntax error:?];
      v26 = *(a1 + 32);
      if (v26)
      {
        v26 = objc_getProperty(v26, v25, 352, 1);
      }

      v27 = v26;
      [(NEIKEv2IKESA *)v27 setState:ErrorPeerInvalidSyntax error:?];

      [(NEIKEv2Session *)*(a1 + 32) reportState];
      [(NEIKEv2Session *)*(a1 + 32) resetAll];
    }
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Initiate MOBIKE failed to receive Informational packet", buf, 2u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = v11[7];
    }

    else
    {
      v12 = 0;
    }

    [(NEIKEv2Session *)*(a1 + 32) setSentMOBIKERequest:v11 messageID:v12];
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    Error = NEIKEv2CreateError(3);
    [(NEIKEv2MOBIKEContext *)v13 sendCallbackSuccess:v14 session:Error error:?];
  }
}

- (void)receiveInformational:(_BYTE *)informational
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (informational)
  {
    v5 = objc_getProperty(informational, v3, 384, 1);
    dispatch_assert_queue_V2(v5);

    Property = objc_getProperty(informational, v6, 352, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    Property = 0;
  }

  v8 = Property;

  if (v8)
  {
    if (v4 && ![(NEIKEv2Packet *)v4 hasErrors])
    {
      if (informational[11])
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v40) = 138412290;
          *(&v40 + 4) = informational;
          v12 = "%@ Session has been aborted, cannot process informational";
          goto LABEL_13;
        }
      }

      else
      {
        v13 = objc_getProperty(informational, v10, 352, 1);
        shortDPDEventBlock = v13;
        if (v13)
        {
          v16 = [objc_getProperty(v13 v14];
          if (v16)
          {
            v17 = v16;
            Current = CFAbsoluteTimeGetCurrent();
            v20 = *(shortDPDEventBlock + 120);
            if (v20 == 0.0 || Current - v20 > v17 || (v21 = *(shortDPDEventBlock + 26) + 1, *(shortDPDEventBlock + 26) = v21, [objc_getProperty(shortDPDEventBlock v18] > v21) || (*(shortDPDEventBlock + 21) & 1) != 0)
            {
              *(shortDPDEventBlock + 120) = Current;
            }

            else
            {
              *(shortDPDEventBlock + 21) = 1;
              *(shortDPDEventBlock + 120) = Current;

              if (objc_getProperty(informational, v38, 352, 1))
              {
                shortDPDEventBlock = [informational shortDPDEventBlock];
                clientQueue = [informational clientQueue];
                if (clientQueue && shortDPDEventBlock)
                {
                  *&v40 = MEMORY[0x1E69E9820];
                  *(&v40 + 1) = 3221225472;
                  v41 = __32__NEIKEv2Session_reportShortDPD__block_invoke;
                  v42 = &unk_1E7F0B588;
                  informationalCopy = informational;
                  v44 = shortDPDEventBlock;
                  dispatch_async(clientQueue, &v40);
                }
              }

              else
              {
                shortDPDEventBlock = ne_log_obj();
                if (os_log_type_enabled(shortDPDEventBlock, OS_LOG_TYPE_FAULT))
                {
                  LODWORD(v40) = 136315138;
                  *(&v40 + 4) = "[NEIKEv2Session reportShortDPD]";
                  _os_log_fault_impl(&dword_1BA83C000, shortDPDEventBlock, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", &v40, 0xCu);
                }
              }
            }
          }
        }

        [(NEIKEv2Session *)informational reportPrivateNotifiesInPacket:v4];
        v23 = objc_getProperty(informational, v22, 352, 1);
        v11 = [NEIKEv2InformationalPacket createInformationalResponse:v4 ikeSA:v23];

        if (v11)
        {
          if (([(NEIKEv2Session *)informational sendReply:v11 replyHandler:0]& 1) == 0)
          {
            v25 = objc_getProperty(informational, v24, 352, 1);
            ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"informational reply", v26, v27, v28, v29, v30, v31, v32, v40);
            [(NEIKEv2IKESA *)v25 setState:ErrorFailedToSend error:?];

            [(NEIKEv2Session *)informational reportState];
            [(NEIKEv2Session *)informational resetAll];
          }
        }

        else
        {
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v40) = 138412290;
            *(&v40 + 4) = informational;
            _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@ Failed to create Keepalive packet", &v40, 0xCu);
          }

          v11 = 0;
        }
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v40) = 138412290;
        *(&v40 + 4) = informational;
        v12 = "%@ Failed to process informational packet";
LABEL_13:
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v12, &v40, 0xCu);
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v40) = 136315138;
      *(&v40 + 4) = "[NEIKEv2Session(Exchange) receiveInformational:]";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", &v40, 0xCu);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)retryCookieForIKESA:(uint64_t)a validated:(void *)validated handler:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  validatedCopy = validated;
  if (self)
  {
    v10 = objc_getProperty(self, v8, 384, 1);
    dispatch_assert_queue_V2(v10);

    if ((a & 1) != 0 || (!v7 ? (Property = 0) : (Property = objc_getProperty(v7, v11, 280, 1)), v13 = Property, v13, !v13))
    {
      validatedCopy[2](validatedCopy, a);
    }

    else
    {
      [(NEIKEv2Session *)self resetMessages];
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ Received cookie notification, retrying IKE SA Init with cookie (connect retry cookie)", buf, 0xCu);
      }

      v16 = [NEIKEv2IKESAInitPacket createIKESAInitForInitiatorIKESA:v7];
      if (v16)
      {
        v17 = v16;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __66__NEIKEv2Session_Exchange__retryCookieForIKESA_validated_handler___block_invoke;
        v45[3] = &unk_1E7F08210;
        v45[4] = self;
        v46 = v7;
        v47 = validatedCopy;
        if ([NEIKEv2Session sendRequest:self retry:v17 replyHandler:v45]== -1)
        {
          v19 = objc_getProperty(self, v18, 352, 1);
          ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"retry SA INIT cookie", v20, v21, v22, v23, v24, v25, v26, v44);
          [(NEIKEv2IKESA *)v19 setState:ErrorFailedToSend error:?];

          [(NEIKEv2Session *)self reportState];
          [(NEIKEv2Session *)self resetAll];
        }
      }

      else
      {
        v31 = ne_log_obj();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
          _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init retry packet (connect retry cookie)", buf, 0xCu);
        }

        v33 = objc_getProperty(self, v32, 352, 1);
        ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init retry packet (connect retry cookie)", v34, v35, v36, v37, v38, v39, v40, v44);
        [(NEIKEv2IKESA *)v33 setState:ErrorInternal error:?];

        [(NEIKEv2Session *)self reportState];
        [(NEIKEv2Session *)self resetAll];
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __66__NEIKEv2Session_Exchange__retryCookieForIKESA_validated_handler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 34)
  {
    if (([(NEIKEv2IKESAInitPacket *)v3 validateSAInitAsInitiator:?]& 1) != 0)
    {
      v4 = *(*(a1 + 48) + 16);
    }

    else
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        *v23 = 138412290;
        *&v23[4] = v22;
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@ Failed to parse IKE SA Init retry reply (connect retry cookie)", v23, 0xCu);
      }

      v4 = *(*(a1 + 48) + 16);
    }

    v4();
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *v23 = 138412290;
      *&v23[4] = v21;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE SA Init retry reply (connect retry cookie)", v23, 0xCu);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 352, 1);
    }

    v8 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE SA Init retry reply (connect retry cookie)", v9, v10, v11, v12, v13, v14, v15, *v23);
    [(NEIKEv2IKESA *)v8 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)*(a1 + 32) reportState];
    [(NEIKEv2Session *)*(a1 + 32) resetAll];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __62__NEIKEv2Session_Exchange__retryKEForIKESA_validated_handler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 34)
  {
    if (([(NEIKEv2IKESAInitPacket *)v3 validateSAInitAsInitiator:?]& 1) != 0)
    {
      v4 = *(*(a1 + 48) + 16);
    }

    else
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        *v23 = 138412290;
        *&v23[4] = v22;
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@ Failed to parse IKE SA Init retry reply (connect retry KE)", v23, 0xCu);
      }

      v4 = *(*(a1 + 48) + 16);
    }

    v4();
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *v23 = 138412290;
      *&v23[4] = v21;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE SA Init retry reply (connect retry KE)", v23, 0xCu);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 352, 1);
    }

    v8 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE SA Init retry reply (connect retry KE)", v9, v10, v11, v12, v13, v14, v15, *v23);
    [(NEIKEv2IKESA *)v8 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)*(a1 + 32) reportState];
    [(NEIKEv2Session *)*(a1 + 32) resetAll];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleIKEIntermediateForInitiatorIKESA:(unint64_t)a iteration:(void *)iteration handler:
{
  v122 = *MEMORY[0x1E69E9840];
  v7 = a2;
  iterationCopy = iteration;
  if (self)
  {
    v10 = objc_getProperty(self, v8, 384, 1);
    dispatch_assert_queue_V2(v10);

    if (v7)
    {
      Property = objc_getProperty(v7, v11, 96, 1);
      v14 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v13, 136, 1);
      }
    }

    else
    {
      v14 = 0;
      Property = 0;
    }

    v15 = Property;
    v16 = [v15 count];

    if (v16 > a)
    {
      if (v7)
      {
        v18 = objc_getProperty(v7, v17, 96, 1);
        v20 = v18;
        if (v18)
        {
          v18 = objc_getProperty(v18, v19, 136, 1);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0;
      }

      v21 = v18;
      v22 = [v21 objectAtIndexedSubscript:a];

      if (v7)
      {
        v24 = objc_getProperty(v7, v23, 96, 1);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)v25 chosenAdditionalKEMProtocols];
      v27 = [chosenAdditionalKEMProtocols objectForKeyedSubscript:v22];

      if (v27)
      {
        if (([(NEIKEv2IKESA *)v7 generateLocalValuesForKEMProtocol:v27]& 1) != 0)
        {
          initOutbound = [(NEIKEv2Packet *)[NEIKEv2IntermediatePacket alloc] initOutbound];
          v29 = objc_alloc_init(NEIKEv2KeyExchangePayload);
          v31 = v29;
          if (initOutbound)
          {
            objc_setProperty_atomic(initOutbound, v30, v29, 96);

            v33 = objc_getProperty(initOutbound, v32, 96, 1);
            v35 = v33;
            if (v33)
            {
              objc_setProperty_atomic(v33, v34, v27, 32);
            }
          }

          else
          {

            v35 = 0;
          }

          v112 = v22;
          if (v7)
          {
            v37 = objc_getProperty(v7, v36, 160, 1);
            v38 = v37;
            if (v37)
            {
              v39 = *(v37 + 2);
              goto LABEL_19;
            }
          }

          else
          {
            v38 = 0;
          }

          v39 = 0;
LABEL_19:
          v40 = v39;
          v42 = v40;
          if (initOutbound)
          {
            v43 = objc_getProperty(initOutbound, v41, 96, 1);
            v45 = v43;
            if (v43)
            {
              objc_setProperty_atomic(v43, v44, v42, 40);
            }

            v47 = objc_getProperty(initOutbound, v46, 96, 1);
          }

          else
          {

            v47 = 0;
          }

          v48 = v47;
          isValid = [(NEIKEv2Payload *)v48 isValid];

          if ((isValid & 1) == 0)
          {
            v65 = ne_log_obj();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy4 = self;
              _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE_INTERMEDIATE packet (connect intermediate)", buf, 0xCu);
            }

            v67 = objc_getProperty(self, v66, 352, 1);
            ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create IKE_INTERMEDIATE packet (connect intermediate)", v68, v69, v70, v71, v72, v73, v74, v111);
            [(NEIKEv2IKESA *)v67 setState:ErrorInternal error:?];

            [(NEIKEv2Session *)self reportState];
            [(NEIKEv2Session *)self resetAll];
            v53 = v112;
            goto LABEL_40;
          }

          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 3221225472;
          v113[2] = __85__NEIKEv2Session_Exchange__handleIKEIntermediateForInitiatorIKESA_iteration_handler___block_invoke;
          v113[3] = &unk_1E7F08238;
          v113[4] = self;
          v114 = v27;
          v50 = v7;
          v115 = v50;
          aCopy = a;
          v116 = iterationCopy;
          if ([NEIKEv2Session sendRequest:self retry:initOutbound replyHandler:v113]== -1)
          {
            v56 = objc_getProperty(self, v51, 352, 1);
            ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator IKE_INTERMEDIATE #%zu", v78, v79, v80, v81, v82, v83, v84, a + 1);
            [(NEIKEv2IKESA *)v56 setState:ErrorFailedToSend error:?];
            v53 = v112;
          }

          else
          {
            if (initOutbound)
            {
              v52 = HIDWORD(initOutbound[3].isa) + 1;
            }

            else
            {
              v52 = 1;
            }

            v53 = v112;
            if (v7)
            {
              v50[7] = v52;
            }

            if (([(NEIKEv2IKESA *)v50 updateIntAuthWithPacket:initOutbound]& 1) != 0)
            {
              goto LABEL_39;
            }

            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy4 = self;
              _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE_INTERMEDIATE request packet for AUTH (connect intermediate)", buf, 0xCu);
            }

            v56 = objc_getProperty(self, v55, 352, 1);
            ErrorFailedToSend = NEIKEv2CreateErrorCrypto(@"Failed to process IKE_INTERMEDIATE request packet for AUTH (connect intermediate)", v57, v58, v59, v60, v61, v62, v63, v111);
            [(NEIKEv2IKESA *)v56 setState:ErrorFailedToSend error:?];
          }

          [(NEIKEv2Session *)self reportState];
          [(NEIKEv2Session *)self resetAll];
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        v99 = ne_log_obj();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy4 = self;
          v120 = 2112;
          v121 = v27;
          _os_log_error_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (connect intermediate)", buf, 0x16u);
        }

        v90 = objc_getProperty(self, v100, 352, 1);
        v98 = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (connect intermediate)", v101, v102, v103, v104, v105, v106, v107, v27);
      }

      else
      {
        v88 = ne_log_obj();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          selfCopy4 = self;
          v120 = 2112;
          v121 = v22;
          _os_log_error_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (connect intermediate)", buf, 0x16u);
        }

        v90 = objc_getProperty(self, v89, 352, 1);
        v98 = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (connect intermediate)", v91, v92, v93, v94, v95, v96, v97, v22);
      }

      v108 = v98;
      [(NEIKEv2IKESA *)v90 setState:v98 error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];

      goto LABEL_41;
    }

    iterationCopy[2](iterationCopy);
  }

LABEL_41:

  v87 = *MEMORY[0x1E69E9840];
}

void __85__NEIKEv2Session_Exchange__handleIKEIntermediateForInitiatorIKESA_iteration_handler___block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 43)
  {
    Property = v3;
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 96, 1);
    }

    v7 = Property;

    if (v7)
    {
      if (v6)
      {
        v9 = objc_getProperty(v6, v8, 96, 1);
        v11 = v9;
        if (v9)
        {
          v9 = objc_getProperty(v9, v10, 32, 1);
        }
      }

      else
      {
        v11 = 0;
        v9 = 0;
      }

      v12 = v9;

      if (v12)
      {
        if (v6)
        {
          v14 = objc_getProperty(v6, v13, 96, 1);
          v16 = v14;
          if (v14)
          {
            v14 = objc_getProperty(v14, v15, 40, 1);
          }
        }

        else
        {
          v16 = 0;
          v14 = 0;
        }

        v17 = v14;

        if (v17)
        {
          if (v6)
          {
            v19 = objc_getProperty(v6, v18, 96, 1);
            v21 = v19;
            if (v19)
            {
              v19 = objc_getProperty(v19, v20, 32, 1);
            }
          }

          else
          {
            v21 = 0;
            v19 = 0;
          }

          v22 = v19;
          v23 = [v22 method];
          v24 = [*(a1 + 40) method];

          if (v23 != v24)
          {
            v57 = ne_log_obj();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v77 = *(a1 + 32);
              if (v6)
              {
                v78 = objc_getProperty(v6, v58, 96, 1);
                v80 = v78;
                if (v78)
                {
                  v78 = objc_getProperty(v78, v79, 32, 1);
                }
              }

              else
              {
                v80 = 0;
                v78 = 0;
              }

              v81 = v78;
              v82 = [v81 method];
              v83 = [*(a1 + 40) method];
              *buf = 138412802;
              v120 = v77;
              v121 = 2048;
              v122 = v82;
              v123 = 2048;
              v124 = v83;
              _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (connect intermediate)", buf, 0x20u);
            }

            v60 = *(a1 + 32);
            if (v60)
            {
              v60 = objc_getProperty(v60, v59, 352, 1);
            }

            v44 = v60;
            if (v6)
            {
              v62 = objc_getProperty(v6, v61, 96, 1);
              v53 = v62;
              if (v62)
              {
                v62 = objc_getProperty(v62, v63, 32, 1);
              }
            }

            else
            {
              v53 = 0;
              v62 = 0;
            }

            v64 = v62;
            v65 = [v64 method];
            [*(a1 + 40) method];
            ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (connect intermediate)", v66, v67, v68, v69, v70, v71, v72, v65);
            [(NEIKEv2IKESA *)v44 setState:ErrorPeerInvalidSyntax error:?];

            goto LABEL_44;
          }

          if (([(NEIKEv2IKESA *)*(a1 + 48) updateIntAuthWithPacket:v6]& 1) != 0)
          {
            if (v6)
            {
              v26 = objc_getProperty(v6, v25, 96, 1);
              v28 = v26;
              if (v26)
              {
                v26 = objc_getProperty(v26, v27, 40, 1);
              }
            }

            else
            {
              v28 = 0;
              v26 = 0;
            }

            v30 = v26;
            v31 = *(a1 + 48);
            if (v31)
            {
              objc_setProperty_atomic(v31, v29, v30, 152);
            }

            if (([(NEIKEv2IKESA *)*(a1 + 48) processPrimaryKeyExchange]& 1) != 0)
            {
              v33 = *(a1 + 48);
              if (v33 && ([(NEIKEv2IKESA *)v33 generateAllValuesUsingSA:?]& 1) != 0)
              {
                [(NEIKEv2Session *)*(a1 + 32) handleIKEIntermediateForInitiatorIKESA:*(a1 + 64) + 1 iteration:*(a1 + 56) handler:?];
LABEL_45:

                goto LABEL_46;
              }

              v112 = ne_log_obj();
              if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
                v117 = *(a1 + 32);
                *buf = 138412290;
                v120 = v117;
                _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ Failed to generate crypto values (connect intermediate)", buf, 0xCu);
              }

              v114 = *(a1 + 32);
              if (v114)
              {
                v114 = objc_getProperty(v114, v113, 352, 1);
              }

              v44 = v114;
              v108 = @"Failed to generate crypto values (connect intermediate)";
            }

            else
            {
              v109 = ne_log_obj();
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v109, OS_LOG_TYPE_ERROR, "Failed to process KE data (connect intermediate)", buf, 2u);
              }

              v111 = *(a1 + 32);
              if (v111)
              {
                v111 = objc_getProperty(v111, v110, 352, 1);
              }

              v44 = v111;
              v108 = @"Failed to process KE data (connect intermediate)";
            }
          }

          else
          {
            v98 = ne_log_obj();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              v116 = *(a1 + 32);
              *buf = 138412290;
              v120 = v116;
              _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE_INTERMEDIATE reply packet for AUTH (connect intermediate)", buf, 0xCu);
            }

            v100 = *(a1 + 32);
            if (v100)
            {
              v100 = objc_getProperty(v100, v99, 352, 1);
            }

            v44 = v100;
            v108 = @"Failed to process IKE_INTERMEDIATE reply packet for AUTH (connect intermediate)";
          }

          ErrorCrypto = NEIKEv2CreateErrorCrypto(v108, v101, v102, v103, v104, v105, v106, v107, v118);
LABEL_43:
          v53 = ErrorCrypto;
          [(NEIKEv2IKESA *)v44 setState:ErrorCrypto error:?];
LABEL_44:

          [(NEIKEv2Session *)*(a1 + 32) reportState];
          [(NEIKEv2Session *)*(a1 + 32) resetAll];
          goto LABEL_45;
        }

        v49 = ne_log_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v76 = *(a1 + 32);
          *buf = 138412290;
          v120 = v76;
          _os_log_error_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (connect intermediate)", buf, 0xCu);
        }

        v51 = *(a1 + 32);
        if (v51)
        {
          v51 = objc_getProperty(v51, v50, 352, 1);
        }

        v44 = v51;
        v45 = @"Did not receive data in KE payload (connect intermediate)";
      }

      else
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v75 = *(a1 + 32);
          *buf = 138412290;
          v120 = v75;
          _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (connect intermediate)", buf, 0xCu);
        }

        v48 = *(a1 + 32);
        if (v48)
        {
          v48 = objc_getProperty(v48, v47, 352, 1);
        }

        v44 = v48;
        v45 = @"Did not receive method in KE payload (connect intermediate)";
      }
    }

    else
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v74 = *(a1 + 32);
        *buf = 138412290;
        v120 = v74;
        _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (connect intermediate)", buf, 0xCu);
      }

      v36 = *(a1 + 32);
      if (v36)
      {
        v36 = objc_getProperty(v36, v35, 352, 1);
      }

      v44 = v36;
      v45 = @"Did not receive KE payload (connect intermediate)";
    }

    ErrorCrypto = NEIKEv2CreateErrorPeerInvalidSyntax(v45, v37, v38, v39, v40, v41, v42, v43, v118);
    goto LABEL_43;
  }

  v84 = ne_log_obj();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    v115 = *(a1 + 32);
    *buf = 138412290;
    v120 = v115;
    _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE_INTERMEDIATE reply (connect intermediate)", buf, 0xCu);
  }

  v86 = *(a1 + 32);
  if (v86)
  {
    v86 = objc_getProperty(v86, v85, 352, 1);
  }

  v87 = v86;
  v95 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE_INTERMEDIATE reply (connect intermediate)", v88, v89, v90, v91, v92, v93, v94, v118);
  [(NEIKEv2IKESA *)v87 setState:v95 error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  [(NEIKEv2Session *)*(a1 + 32) resetAll];
LABEL_46:

  v56 = *MEMORY[0x1E69E9840];
}

- (uint64_t)handleIKEIntermediateForResponderIKESA:(uint64_t)a iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:
{
  v11 = a2;
  packetCopy = packet;
  descriptionCopy = description;
  if (self)
  {
    iterationCopy = iteration;
    v16 = objc_getProperty(self, v15, 384, 1);
    dispatch_assert_queue_V2(v16);

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __120__NEIKEv2Session_Exchange__handleIKEIntermediateForResponderIKESA_iteration_replyPacket_replyPacketDescription_handler___block_invoke;
    v31[3] = &unk_1E7F08260;
    aCopy = a;
    v32 = v11;
    selfCopy = self;
    v34 = descriptionCopy;
    v17 = [(NEIKEv2Session *)self sendReply:iterationCopy replyHandler:v31];

    if ((v17 & 1) == 0)
    {
      v19 = objc_getProperty(self, v18, 352, 1);
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"%@", v20, v21, v22, v23, v24, v25, v26, packetCopy);
      [(NEIKEv2IKESA *)v19 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __120__NEIKEv2Session_Exchange__handleIKEIntermediateForResponderIKESA_iteration_replyPacket_replyPacketDescription_handler___block_invoke(uint64_t a1, void *a2)
{
  v239 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v3, 96, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 136, 1);
    }
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v10 = Property;
  v11 = [v10 count];

  v12 = [v4 exchangeType];
  if (v5 < v11)
  {
    if (v12 == 43)
    {
      v14 = v4;
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = objc_getProperty(v15, v13, 96, 1);
        v18 = v16;
        if (v16)
        {
          v16 = objc_getProperty(v16, v17, 136, 1);
        }
      }

      else
      {
        v18 = 0;
        v16 = 0;
      }

      v19 = v16;
      v20 = [v19 objectAtIndexedSubscript:*(a1 + 56)];

      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = objc_getProperty(v22, v21, 96, 1);
      }

      v23 = v22;
      v24 = [(NEIKEv2IKESAProposal *)v23 chosenAdditionalKEMProtocols];
      v25 = [v24 objectForKeyedSubscript:v20];

      if (!v25)
      {
        v206 = ne_log_obj();
        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          v219 = *(a1 + 40);
          *buf = 138412546;
          v234 = v219;
          v235 = 2112;
          v236 = v20;
          _os_log_error_impl(&dword_1BA83C000, v206, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (receive intermediate)", buf, 0x16u);
        }

        v209 = *(a1 + 40);
        v111 = (a1 + 40);
        v208 = v209;
        if (v209)
        {
          v208 = objc_getProperty(v208, v207, 352, 1);
        }

        v120 = v208;
        ErrorInternal = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (receive intermediate)", v210, v211, v212, v213, v214, v215, v216, v20);
        goto LABEL_81;
      }

      if (v14)
      {
        v27 = objc_getProperty(v14, v26, 96, 1);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (v28)
      {
        if (v14)
        {
          v30 = objc_getProperty(v14, v29, 96, 1);
          v32 = v30;
          if (v30)
          {
            v30 = objc_getProperty(v30, v31, 32, 1);
          }
        }

        else
        {
          v32 = 0;
          v30 = 0;
        }

        v33 = v30;

        if (v33)
        {
          if (v14)
          {
            v35 = objc_getProperty(v14, v34, 96, 1);
            v37 = v35;
            if (v35)
            {
              v35 = objc_getProperty(v35, v36, 40, 1);
            }
          }

          else
          {
            v37 = 0;
            v35 = 0;
          }

          v38 = v35;

          if (v38)
          {
            v232 = v20;
            if (v14)
            {
              v40 = objc_getProperty(v14, v39, 96, 1);
              v42 = v40;
              if (v40)
              {
                v40 = objc_getProperty(v40, v41, 32, 1);
              }
            }

            else
            {
              v42 = 0;
              v40 = 0;
            }

            v43 = v40;
            v44 = [v43 method];
            v45 = [v25 method];

            if (v44 != v45)
            {
              v135 = ne_log_obj();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                v231 = *(a1 + 40);
                if (v14)
                {
                  v182 = objc_getProperty(v14, v136, 96, 1);
                  v184 = v182;
                  if (v182)
                  {
                    v182 = objc_getProperty(v182, v183, 32, 1);
                  }
                }

                else
                {
                  v184 = 0;
                  v182 = 0;
                }

                v185 = v182;
                *buf = 138412802;
                v234 = v231;
                v235 = 2048;
                v236 = [v185 method];
                v237 = 2048;
                v238 = [v25 method];
                _os_log_error_impl(&dword_1BA83C000, v135, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (receive intermediate)", buf, 0x20u);
              }

              v139 = *(a1 + 40);
              v111 = (a1 + 40);
              v138 = v139;
              if (v139)
              {
                v138 = objc_getProperty(v138, v137, 352, 1);
              }

              v120 = v138;
              if (v14)
              {
                v141 = objc_getProperty(v14, v140, 96, 1);
                v131 = v141;
                if (v141)
                {
                  v141 = objc_getProperty(v141, v142, 32, 1);
                }
              }

              else
              {
                v131 = 0;
                v141 = 0;
              }

              v143 = v141;
              v144 = [v143 method];
              [v25 method];
              ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (receive intermediate)", v145, v146, v147, v148, v149, v150, v151, v144);
              [(NEIKEv2IKESA *)v120 setState:ErrorPeerInvalidSyntax error:?];

              v20 = v232;
              goto LABEL_82;
            }

            v47 = *(a1 + 32);
            if (v14)
            {
              v48 = objc_getProperty(v14, v46, 96, 1);
              v50 = v48;
              if (v48)
              {
                v48 = objc_getProperty(v48, v49, 40, 1);
              }
            }

            else
            {
              v50 = 0;
              v48 = 0;
            }

            v51 = v48;
            v52 = [(NEIKEv2IKESA *)v47 generateLocalValuesForKEMProtocol:v25 peerPayload:v51];

            if (v52)
            {
              v53 = [(NEIKEv2Packet *)[NEIKEv2IntermediatePacket alloc] initResponse:v14];
              v54 = objc_alloc_init(NEIKEv2KeyExchangePayload);
              v56 = v54;
              if (v53)
              {
                objc_setProperty_atomic(v53, v55, v54, 96);

                v58 = objc_getProperty(v53, v57, 96, 1);
                v60 = v58;
                if (v58)
                {
                  objc_setProperty_atomic(v58, v59, v25, 32);
                }
              }

              else
              {

                v60 = 0;
              }

              v62 = *(a1 + 32);
              if (v62)
              {
                v63 = objc_getProperty(v62, v61, 160, 1);
                v64 = v63;
                if (v63)
                {
                  v65 = *(v63 + 2);
                  goto LABEL_37;
                }
              }

              else
              {
                v64 = 0;
              }

              v65 = 0;
LABEL_37:
              v66 = v65;
              v68 = v66;
              if (v53)
              {
                v69 = objc_getProperty(v53, v67, 96, 1);
                v71 = v69;
                if (v69)
                {
                  objc_setProperty_atomic(v69, v70, v68, 40);
                }

                v73 = objc_getProperty(v53, v72, 96, 1);
              }

              else
              {

                v73 = 0;
              }

              v74 = v73;
              v75 = [(NEIKEv2Payload *)v74 isValid];

              if ((v75 & 1) == 0)
              {
                v164 = ne_log_obj();
                if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  v187 = *(a1 + 40);
                  *buf = 138412290;
                  v234 = v187;
                  _os_log_error_impl(&dword_1BA83C000, v164, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE_INTERMEDIATE packet (receive intermediate)", buf, 0xCu);
                }

                v168 = *(a1 + 40);
                v167 = (a1 + 40);
                v166 = v168;
                if (v168)
                {
                  v166 = objc_getProperty(v166, v165, 352, 1);
                }

                v104 = v166;
                ErrorCrypto = NEIKEv2CreateErrorInternal(@"Failed to create IKE_INTERMEDIATE packet (receive intermediate)", v169, v170, v171, v172, v173, v174, v175, v229);
                [(NEIKEv2IKESA *)v104 setState:ErrorCrypto error:?];
                v87 = v167;
                goto LABEL_102;
              }

              v77 = *(a1 + 32);
              if (v77)
              {
                v78 = objc_getProperty(v77, v76, 160, 1);
                v79 = v78;
                if (v78)
                {
                  v80 = *(v78 + 3);
LABEL_45:
                  v82 = v80;
                  v83 = *(a1 + 32);
                  if (v83)
                  {
                    objc_setProperty_atomic(v83, v81, v82, 168);
                  }

                  v85 = *(a1 + 32);
                  if (v85)
                  {
                    objc_setProperty_atomic(v85, v84, 0, 160);
                    v86 = *(a1 + 32);
                  }

                  else
                  {
                    v86 = 0;
                  }

                  v87 = (a1 + 40);
                  v88 = *(a1 + 40);
                  v89 = *(a1 + 56);
                  v90 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v230 = *(a1 + 56) + 1;
                  v91 = [v90 initWithFormat:@"responder IKE_INTERMEDIATE #%zu"];
                  v92 = [(NEIKEv2Session *)v88 handleIKEIntermediateForResponderIKESA:v86 iteration:v89 + 1 replyPacket:v53 replyPacketDescription:v91 handler:*(a1 + 48)];

                  v20 = v232;
                  if (!v92)
                  {
                    goto LABEL_103;
                  }

                  if (([(NEIKEv2IKESA *)*(a1 + 32) updateIntAuthWithPacket:v14]& 1) != 0)
                  {
                    if (([(NEIKEv2IKESA *)*(a1 + 32) updateIntAuthWithPacket:v53]& 1) != 0)
                    {
                      v93 = *(a1 + 32);
                      if (v93 && ([(NEIKEv2IKESA *)v93 generateAllValuesUsingSA:?]& 1) != 0)
                      {
                        goto LABEL_103;
                      }

                      v94 = ne_log_obj();
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                      {
                        v228 = *v87;
                        *buf = 138412290;
                        v234 = v228;
                        _os_log_error_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_ERROR, "%@ Failed to generate crypto values (receive intermediate)", buf, 0xCu);
                      }

                      v96 = *v87;
                      if (*v87)
                      {
                        v96 = objc_getProperty(v96, v95, 352, 1);
                      }

                      v104 = v96;
                      v105 = @"Failed to generate crypto values (receive intermediate)";
                    }

                    else
                    {
                      v223 = ne_log_obj();
                      if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
                      {
                        v227 = *v87;
                        *buf = 138412290;
                        v234 = v227;
                        _os_log_error_impl(&dword_1BA83C000, v223, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE_INTERMEDIATE reply packet for AUTH (receive intermediate)", buf, 0xCu);
                      }

                      v225 = *v87;
                      if (*v87)
                      {
                        v225 = objc_getProperty(v225, v224, 352, 1);
                      }

                      v104 = v225;
                      v105 = @"Failed to process IKE_INTERMEDIATE reply packet for AUTH (receive intermediate)";
                    }
                  }

                  else
                  {
                    v220 = ne_log_obj();
                    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
                    {
                      v226 = *v87;
                      *buf = 138412290;
                      v234 = v226;
                      _os_log_error_impl(&dword_1BA83C000, v220, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE_INTERMEDIATE request packet for AUTH (receive intermediate)", buf, 0xCu);
                    }

                    v222 = *v87;
                    if (*v87)
                    {
                      v222 = objc_getProperty(v222, v221, 352, 1);
                    }

                    v104 = v222;
                    v105 = @"Failed to process IKE_INTERMEDIATE request packet for AUTH (receive intermediate)";
                  }

                  ErrorCrypto = NEIKEv2CreateErrorCrypto(v105, v97, v98, v99, v100, v101, v102, v103, v230);
                  [(NEIKEv2IKESA *)v104 setState:ErrorCrypto error:?];
LABEL_102:

                  [(NEIKEv2Session *)*v87 reportState];
                  [(NEIKEv2Session *)*v87 resetAll];
                  v20 = v232;
LABEL_103:

                  goto LABEL_83;
                }
              }

              else
              {
                v79 = 0;
              }

              v80 = 0;
              goto LABEL_45;
            }

            v153 = ne_log_obj();
            v20 = v232;
            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              v186 = *(a1 + 40);
              *buf = 138412546;
              v234 = v186;
              v235 = 2112;
              v236 = v25;
              _os_log_error_impl(&dword_1BA83C000, v153, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (receive intermediate)", buf, 0x16u);
            }

            v156 = *(a1 + 40);
            v111 = (a1 + 40);
            v155 = v156;
            if (v156)
            {
              v155 = objc_getProperty(v155, v154, 352, 1);
            }

            v120 = v155;
            ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (receive intermediate)", v157, v158, v159, v160, v161, v162, v163, v25);
LABEL_81:
            v131 = ErrorInternal;
            [(NEIKEv2IKESA *)v120 setState:ErrorInternal error:?];
LABEL_82:

            [(NEIKEv2Session *)*v111 reportState];
            [(NEIKEv2Session *)*v111 resetAll];
LABEL_83:

            goto LABEL_84;
          }

          v126 = ne_log_obj();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            v181 = *(a1 + 40);
            *buf = 138412290;
            v234 = v181;
            _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (receive intermediate)", buf, 0xCu);
          }

          v129 = *(a1 + 40);
          v111 = (a1 + 40);
          v128 = v129;
          if (v129)
          {
            v128 = objc_getProperty(v128, v127, 352, 1);
          }

          v120 = v128;
          v121 = @"Did not receive data in KE payload (receive intermediate)";
        }

        else
        {
          v122 = ne_log_obj();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            v180 = *(a1 + 40);
            *buf = 138412290;
            v234 = v180;
            _os_log_error_impl(&dword_1BA83C000, v122, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (receive intermediate)", buf, 0xCu);
          }

          v125 = *(a1 + 40);
          v111 = (a1 + 40);
          v124 = v125;
          if (v125)
          {
            v124 = objc_getProperty(v124, v123, 352, 1);
          }

          v120 = v124;
          v121 = @"Did not receive method in KE payload (receive intermediate)";
        }
      }

      else
      {
        v108 = ne_log_obj();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v179 = *(a1 + 40);
          *buf = 138412290;
          v234 = v179;
          _os_log_error_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (receive intermediate)", buf, 0xCu);
        }

        v112 = *(a1 + 40);
        v111 = (a1 + 40);
        v110 = v112;
        if (v112)
        {
          v110 = objc_getProperty(v110, v109, 352, 1);
        }

        v120 = v110;
        v121 = @"Did not receive KE payload (receive intermediate)";
      }

      ErrorInternal = NEIKEv2CreateErrorPeerInvalidSyntax(v121, v113, v114, v115, v116, v117, v118, v119, v229);
      goto LABEL_81;
    }

    v188 = ne_log_obj();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
    {
      v217 = *(a1 + 40);
      *buf = 138412290;
      v234 = v217;
      _os_log_error_impl(&dword_1BA83C000, v188, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE_INTERMEDIATE packet (receive intermediate)", buf, 0xCu);
    }

    v190 = *(a1 + 40);
    if (v190)
    {
      v190 = objc_getProperty(v190, v189, 352, 1);
    }

    v198 = v190;
    v199 = @"Failed to receive IKE_INTERMEDIATE packet (receive intermediate)";
LABEL_118:
    v203 = NEIKEv2CreateErrorPeerInvalidSyntax(v199, v191, v192, v193, v194, v195, v196, v197, v229);
    [(NEIKEv2IKESA *)v198 setState:v203 error:?];

    [(NEIKEv2Session *)*(a1 + 40) reportState];
    [(NEIKEv2Session *)*(a1 + 40) resetAll];
    goto LABEL_84;
  }

  if (v12 != 35)
  {
    v200 = ne_log_obj();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      v218 = *(a1 + 40);
      *buf = 138412290;
      v234 = v218;
      _os_log_error_impl(&dword_1BA83C000, v200, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE Auth packet (receive)", buf, 0xCu);
    }

    v202 = *(a1 + 40);
    if (v202)
    {
      v202 = objc_getProperty(v202, v201, 352, 1);
    }

    v198 = v202;
    v199 = @"Failed to receive IKE Auth packet (receive)";
    goto LABEL_118;
  }

  if (v4)
  {
    v106 = v4[7];
  }

  else
  {
    v106 = 0;
  }

  v107 = *(a1 + 32);
  if (v107)
  {
    *(v107 + 28) = v106;
  }

  (*(*(a1 + 48) + 16))();
LABEL_84:

  v134 = *MEMORY[0x1E69E9840];
}

- (void)handleEAPAndGSPMForIKESA:(void *)a authPacket:(void *)packet handler:
{
  v464 = *MEMORY[0x1E69E9840];
  v7 = a2;
  aCopy = a;
  packetCopy = packet;
  if (!self)
  {
    goto LABEL_179;
  }

  v11 = objc_getProperty(self, v9, 384, 1);
  dispatch_assert_queue_V2(v11);

  if (aCopy)
  {
    v13 = objc_getProperty(aCopy, v12, 136, 1);
    if (v13)
    {

LABEL_8:
      Property = objc_getProperty(aCopy, v15, 136, 1);
      goto LABEL_9;
    }

    v16 = objc_getProperty(aCopy, v14, 144, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    packetCopy[2](packetCopy, aCopy);
    goto LABEL_179;
  }

  if (aCopy)
  {
    goto LABEL_8;
  }

  Property = 0;
LABEL_9:
  v19 = Property;

  if (!v19)
  {
    if (aCopy)
    {
      v44 = objc_getProperty(aCopy, v20, 144, 1);
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;

    if (!v45)
    {
      v65 = 0;
      v66 = "";
      if (!v7)
      {
        goto LABEL_175;
      }

      goto LABEL_171;
    }

    v46 = v7;
    v47 = aCopy;
    objc_opt_self();
    v435 = aCopy;
    if (v46)
    {
      if (aCopy)
      {
        v433 = packetCopy;
        if ([(NEIKEv2Packet *)v47 hasErrors])
        {
          v437 = v47;
          obja = v46;
          v457 = 0u;
          v458 = 0u;
          v455 = 0u;
          v456 = 0u;
          v50 = objc_getProperty(v47, v49, 64, 1);
          v51 = [v50 countByEnumeratingWithState:&v455 objects:v462 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v456;
            while (2)
            {
              for (i = 0; i != v52; ++i)
              {
                if (*v456 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v455 + 1) + 8 * i);
                if (v55 && v55[1].isa - 1 <= 0x3FFE)
                {
                  copyError = [(NEIKEv2NotifyPayload *)v55 copyError];
                  v96 = ne_log_obj();
                  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription = [(NEIKEv2Packet *)v437 copyShortDescription];
                    *buf = 138412546;
                    *&buf[4] = copyShortDescription;
                    v460 = 2112;
                    v461 = copyError;
                    _os_log_error_impl(&dword_1BA83C000, v96, OS_LOG_TYPE_ERROR, "%@ Initiator auth GSPM received notify error: %@", buf, 0x16u);
                  }

                  ErrorInternal = copyError;
                  v65 = 0;
                  v63 = ErrorInternal;
                  v47 = v437;
                  v46 = obja;
                  goto LABEL_169;
                }
              }

              v52 = [v50 countByEnumeratingWithState:&v455 objects:v462 count:16];
              if (v52)
              {
                continue;
              }

              break;
            }
          }

          v47 = v437;
          v46 = obja;
        }

        v56 = objc_getProperty(v47, v49, 144, 1);
        v57 = v56;
        if (v56)
        {
          v58 = *(v56 + 4);
        }

        else
        {
          v58 = 0;
        }

        v59 = v58;

        if (!v59)
        {
          v98 = ne_log_obj();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription2 = [(NEIKEv2Packet *)v47 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = copyShortDescription2;
            _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "%@ No GSPM data received", buf, 0xCu);
          }

          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"No GSPM data received", v99, v100, v101, v102, v103, v104, v105, v422);
          goto LABEL_90;
        }

        v61 = objc_getProperty(v46, v60, 464, 1);
        v63 = v61;
        if (BYTE1(v46[1].isa))
        {
          if (v61)
          {
            if (BYTE1(v46[2].isa))
            {
LABEL_58:
              v64 = 0;
              v428 = 0;
              goto LABEL_117;
            }

            if (([(NEIKEv2IKEAuthPacket *)v47 validateAuthInitialAsInitiator:v46 beforeEAP:0]& 1) != 0)
            {
              if (![(NEIKEv2Packet *)v47 hasNotification:?])
              {
                goto LABEL_58;
              }

              Error = NEIKEv2CreateError(5);
            }

            else
            {
              Error = NEIKEv2CreateErrorPeerInvalidSyntax(@"Initial AUTH validation failed", v129, v130, v131, v132, v133, v134, v135, v422);
            }

            ErrorInternal = Error;
            goto LABEL_168;
          }

          v374 = ne_log_obj();
          if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription3 = [(NEIKEv2Packet *)v47 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = copyShortDescription3;
            _os_log_error_impl(&dword_1BA83C000, v374, OS_LOG_TYPE_ERROR, "%@ Initiator is missing GSPM handler", buf, 0xCu);
          }

          v382 = @"Initiator is missing GSPM handler";
          goto LABEL_269;
        }

        if (v61)
        {
          v64 = 0;
        }

        else
        {
          v138 = [[NEIKEv2GSPM alloc] initWithIKESA:v46];
          if (!v138)
          {
            v391 = ne_log_obj();
            if (os_log_type_enabled(v391, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription4 = [(NEIKEv2Packet *)v47 copyShortDescription];
              *buf = 138412290;
              *&buf[4] = copyShortDescription4;
              _os_log_error_impl(&dword_1BA83C000, v391, OS_LOG_TYPE_ERROR, "%@ Failed to create GSPM handler", buf, 0xCu);
            }

            v382 = @"Failed to create GSPM handler";
LABEL_269:
            ErrorPeerInvalidSyntax = NEIKEv2CreateErrorInternal(v382, v375, v376, v377, v378, v379, v380, v381, v422);
LABEL_90:
            ErrorInternal = ErrorPeerInvalidSyntax;
            v63 = 0;
LABEL_168:
            v65 = 0;
            goto LABEL_169;
          }

          v63 = v138;
          objc_setProperty_atomic(v46, v139, v138, 464);
          v64 = objc_alloc_init(NEIKEv2ResponderIdentifierPayload);
          localIdentifier = [(NEIKEv2IKESA *)v46 localIdentifier];
          if (v64)
          {
            objc_setProperty_atomic(v64, v141, localIdentifier, 32);
          }

          if (([(NEIKEv2Payload *)v64 isValid]& 1) == 0)
          {
            ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create responder identifier payload for GSPM", v143, v144, v145, v146, v147, v148, v149, v422);

            goto LABEL_168;
          }

          objc_storeStrong(&v46[42].isa, v64);
        }

        v428 = v63[2].isa;
LABEL_117:
        v439 = v47;
        objb = v46;
        BYTE1(v46[2].isa) = 1;
        v150 = objc_getProperty(v47, v62, 144, 1);
        v151 = v150;
        if (v150)
        {
          v152 = *(v150 + 4);
        }

        else
        {
          v152 = 0;
        }

        v160 = v152;
        if (v63[5].isa)
        {
          if (v63[1].isa)
          {
            v161 = NEIKEv2CreateErrorInternal(@"Failed to process extraneous peer message", v153, v154, v155, v156, v157, v158, v159, v422);
          }

          else
          {
            v167 = v64;
            isa = v63[3].isa;
            *buf = 0;
            v169 = isa;
            v170 = [(objc_class *)v169 processSecondPeerMessage:v160 error:buf];
            v161 = *buf;
            v171 = v63[1].isa;
            v63[1].isa = v170;

            if (v63[1].isa)
            {
              v172 = v63[2].isa;
              v63[2].isa = 0;

              v161 = 0;
            }

            v64 = v167;
          }
        }

        else
        {
          v424 = v64;
          v162 = v7;
          v163 = v63[3].isa;
          *buf = 0;
          v164 = v163;
          v165 = [(objc_class *)v164 processFirstPeerMessage:v160 error:buf];
          v166 = *buf;

          if (v165)
          {
            objc_storeStrong(&v63[2].isa, v165);
            objc_storeStrong(&v63[5].isa, v152);
            v161 = 0;
          }

          else
          {
            v161 = v166;
          }

          v7 = v162;
          v64 = v424;
        }

        v426 = v161;
        if (v161)
        {
          v349 = ne_log_obj();
          if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription5 = [(NEIKEv2Packet *)v439 copyShortDescription];
            *buf = 138412546;
            *&buf[4] = copyShortDescription5;
            v460 = 2112;
            v461 = v161;
            _os_log_error_impl(&dword_1BA83C000, v349, OS_LOG_TYPE_ERROR, "%@ Failed to process GSPM message: %@", buf, 0x16u);
          }

          ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process GSPM message", v350, v351, v352, v353, v354, v355, v356, v422);
        }

        else
        {
          v173 = v428;
          if (BYTE1(v46[1].isa))
          {
            v174 = v63[2].isa;

            v175 = BYTE1(v46[1].isa);
            v176 = [NEIKEv2IKEAuthPacket alloc];
            if (v175)
            {
              initOutbound = [(NEIKEv2Packet *)v176 initOutbound];
              if (!initOutbound)
              {
                v383 = ne_log_obj();
                if (os_log_type_enabled(v383, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v383, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initOutbound] failed", buf, 2u);
                }

                ErrorInternal = NEIKEv2CreateErrorInternal(@"[[NEIKEv2IKEAuthPacket alloc] initOutbound] failed", v384, v385, v386, v387, v388, v389, v390, v422);
                v185 = 0;
                v65 = 0;
                v184 = v174;
                packetCopy = v433;
                v47 = v439;
                goto LABEL_161;
              }

              v65 = initOutbound;
              v173 = v174;
              packetCopy = v433;
              v47 = v439;
LABEL_137:
              if (v173)
              {
                v180 = objc_alloc_init(NEIKEv2GSPMPayload);
                objc_setProperty_atomic(v65, v181, v180, 144);

                v183 = objc_getProperty(v65, v182, 144, 1);
                [(NEIKEv2GSPMPayload *)v183 setGspmData:v173];

                v184 = v173;
                ErrorInternal = 0;
                v185 = 0;
LABEL_161:

                goto LABEL_169;
              }

              v428 = 0;
              v425 = v64;
              v186 = objc_alloc_init(NEIKEv2AuthPayload);
              objc_setProperty_atomic(v65, v187, v186, 128);

              v188 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:-1];
              v190 = objc_getProperty(v65, v189, 128, 1);
              [(NEIKEv2AuthPayload *)v190 setAuthProtocol:v188];

              v191 = [(NEIKEv2IKESA *)v46 createInitiatorGSPMAuthenticationDataUsingPrimeKey:?];
              v193 = objc_getProperty(v65, v192, 128, 1);
              [(NEIKEv2AuthPayload *)v193 setAuthenticationData:v191];

              v195 = objc_getProperty(v65, v194, 128, 1);
              LOBYTE(v193) = [(NEIKEv2Payload *)v195 isValid];

              if ((v193 & 1) == 0)
              {
                v209 = ne_log_obj();
                v64 = v425;
                if (os_log_type_enabled(v209, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createGSPMForIKESA:lastPacket:refusalError:]";
                  _os_log_fault_impl(&dword_1BA83C000, v209, OS_LOG_TYPE_FAULT, "%s called with null responsePacket.auth.isValid", buf, 0xCu);
                }

                ErrorInternal = 0;
                v184 = 0;
                v185 = v65;
                v65 = 0;
                goto LABEL_161;
              }

              if ((v46[3].isa & 1) == 0)
              {
                goto LABEL_149;
              }

              v197 = objc_getProperty(v46, v196, 88, 1);
              ppkIDType = [v197 ppkIDType];

              HIBYTE(v454) = ppkIDType;
              if (ppkIDType)
              {
                v200 = objc_getProperty(v46, v199, 88, 1);
                ppkID = [v200 ppkID];

                if (ppkIDType != 2 || ppkID)
                {
                  v202 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(ppkID, "length") + 1}];
                  [v202 appendBytes:&v454 + 1 length:1];
                  [v202 appendData:ppkID];
                  v423 = v202;
                  if ([(NEIKEv2Packet *)v65 addNotification:v202 data:?])
                  {
                    v46 = objb;
                    v204 = objc_getProperty(objb, v203, 88, 1);
                    ppkMandatory = [v204 ppkMandatory];

                    if (ppkMandatory)
                    {
LABEL_148:

LABEL_149:
                      ErrorInternal = 0;
                      v185 = 0;
                      v64 = v425;
LABEL_150:
                      v184 = v428;
                      goto LABEL_161;
                    }

                    v206 = [(NEIKEv2IKESA *)objb createInitiatorGSPMAuthenticationDataUsingPrimeKey:?];
                    if ([(NEIKEv2Packet *)v65 addNotification:v206 data:?])
                    {

                      v47 = v439;
                      goto LABEL_148;
                    }

                    v394 = ppkID;
                    v404 = ne_log_obj();
                    if (os_log_type_enabled(v404, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v404, OS_LOG_TYPE_FAULT, "[responsePacket addNotification:NEIKEv2NotifyTypeNoPPKAuth] failed", buf, 2u);
                    }

                    ErrorInternal = NEIKEv2CreateErrorInternal(@"[responsePacket addNotification:NEIKEv2NotifyTypeNoPPKAuth] failed", v405, v406, v407, v408, v409, v410, v411, v422);
                  }

                  else
                  {
                    v394 = ppkID;
                    v395 = ne_log_obj();
                    if (os_log_type_enabled(v395, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v395, OS_LOG_TYPE_FAULT, "[responsePacket addNotification:NEIKEv2NotifyTypePPKIdentity] failed", buf, 2u);
                    }

                    ErrorInternal = NEIKEv2CreateErrorInternal(@"[responsePacket addNotification:NEIKEv2NotifyTypePPKIdentity] failed", v396, v397, v398, v399, v400, v401, v402, v422);
                    v206 = 0;
                  }

LABEL_284:
                  v184 = 0;
                  v185 = v65;
                  v65 = 0;
                  packetCopy = v433;
                  v47 = v439;
                  v46 = objb;
                  v64 = v425;
                  goto LABEL_161;
                }

                v392 = ne_log_obj();
                if (!os_log_type_enabled(v392, OS_LOG_TYPE_FAULT))
                {
LABEL_279:

                  ErrorInternal = 0;
                  goto LABEL_284;
                }

                *buf = 136315138;
                *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createGSPMForIKESA:lastPacket:refusalError:]";
                v393 = "%s called with null ppkID";
              }

              else
              {
                v392 = ne_log_obj();
                if (!os_log_type_enabled(v392, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_279;
                }

                *buf = 136315138;
                *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createGSPMForIKESA:lastPacket:refusalError:]";
                v393 = "%s called with null ppkIDType";
              }

              _os_log_fault_impl(&dword_1BA83C000, v392, OS_LOG_TYPE_FAULT, v393, buf, 0xCu);
              goto LABEL_279;
            }

            v173 = v174;
          }

          else
          {
            v176 = [NEIKEv2IKEAuthPacket alloc];
          }

          packetCopy = v433;
          v47 = v439;
          v178 = [(NEIKEv2Packet *)v176 initResponse:v439];
          if (v178)
          {
            v65 = v178;
            objc_setProperty_atomic(v178, v179, v64, 104);
            goto LABEL_137;
          }

          v428 = v173;
          v414 = ne_log_obj();
          if (os_log_type_enabled(v414, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v414, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initResponse:] failed", buf, 2u);
          }

          ErrorCrypto = NEIKEv2CreateErrorInternal(@"[[NEIKEv2IKEAuthPacket alloc] initResponse:] failed", v415, v416, v417, v418, v419, v420, v421, v422);
        }

        ErrorInternal = ErrorCrypto;
        v185 = 0;
        v65 = 0;
        packetCopy = v433;
        v47 = v439;
        goto LABEL_150;
      }

      v63 = ne_log_obj();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
LABEL_237:
        ErrorInternal = 0;
        v65 = 0;
LABEL_169:

        if (v65)
        {

          v66 = "GSPM";
          aCopy = v435;
          if (!v7)
          {
            goto LABEL_175;
          }

          goto LABEL_171;
        }

        if (!v46 || (BYTE1(v46[1].isa) & 1) == 0)
        {
          v345 = ne_log_obj();
          if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
          {
            *v462 = 138412290;
            selfCopy8 = self;
            _os_log_error_impl(&dword_1BA83C000, v345, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth (GSPM) packet (receive)", v462, 0xCu);
          }

          v346 = [NEIKEv2IKEAuthPacket createIKEAuthResponse:v47 refusalError:0x18uLL];
          if (([(NEIKEv2Session *)self sendReply:v346 replyHandler:0]& 1) != 0)
          {
            [(NEIKEv2IKESA *)v46 setState:ErrorInternal error:?];
            [(NEIKEv2Session *)self reportState];
          }

          else
          {
            v358 = objc_getProperty(self, v347, 352, 1);
            ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"GSPM refusal (receive) %@", v359, v360, v361, v362, v363, v364, v365, ErrorInternal);
            [(NEIKEv2IKESA *)v358 setState:ErrorFailedToSend error:?];

            [(NEIKEv2Session *)self reportState];
            [(NEIKEv2Session *)self resetAll];
          }

          goto LABEL_256;
        }

        domain = [(__CFString *)ErrorInternal domain];
        if ([domain isEqual:@"NEIKEv2ErrorDomain"])
        {
          code = [(__CFString *)ErrorInternal code];

          if (code == 5)
          {
            v329 = ne_log_obj();
            if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
            {
              *v462 = 138412290;
              selfCopy8 = self;
              _os_log_impl(&dword_1BA83C000, v329, OS_LOG_TYPE_DEFAULT, "%@ Received server redirect in IKE Auth (GSPM) (connect)", v462, 0xCu);
            }

            [(NEIKEv2IKESA *)v46 setState:ErrorInternal error:?];
            [(NEIKEv2Session *)self reportServerRedirect:v47];
            [(NEIKEv2Session *)self resetAll];
            packetCopy[2](packetCopy, 0);
LABEL_256:

            aCopy = v435;
            goto LABEL_179;
          }
        }

        else
        {
        }

        v369 = ne_log_obj();
        if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
        {
          *v462 = 138412290;
          selfCopy8 = self;
          _os_log_error_impl(&dword_1BA83C000, v369, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth (GSPM) packet (connect)", v462, 0xCu);
        }

        v371 = objc_getProperty(self, v370, 352, 1);
        [(NEIKEv2IKESA *)v371 setState:ErrorInternal error:?];

        [(NEIKEv2Session *)self reportState];
        [(NEIKEv2Session *)self resetAll];
        goto LABEL_256;
      }

      *v462 = 136315138;
      selfCopy8 = "+[NEIKEv2IKEAuthPacket(Exchange) createGSPMForIKESA:lastPacket:refusalError:]";
      v326 = "%s called with null lastPacket";
    }

    else
    {
      v63 = ne_log_obj();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_237;
      }

      *v462 = 136315138;
      selfCopy8 = "+[NEIKEv2IKEAuthPacket(Exchange) createGSPMForIKESA:lastPacket:refusalError:]";
      v326 = "%s called with null ikeSA";
    }

    _os_log_fault_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_FAULT, v326, v462, 0xCu);
    goto LABEL_237;
  }

  if (!v7 || (v7[9] & 1) == 0)
  {
    v283 = packetCopy;
    v284 = v7;
    v285 = ne_log_obj();
    if (os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
    {
      *v462 = 138412290;
      selfCopy8 = self;
      _os_log_fault_impl(&dword_1BA83C000, v285, OS_LOG_TYPE_FAULT, "%@ EAP is not supported by responder (receive)", v462, 0xCu);
    }

    v286 = [NEIKEv2IKEAuthPacket createIKEAuthResponse:aCopy refusalError:0x18uLL];
    if (([(NEIKEv2Session *)self sendReply:v286 replyHandler:0]& 1) != 0)
    {
      v294 = NEIKEv2CreateErrorInternal(@"EAP is not supported by responder (receive)", v287, v288, v289, v290, v291, v292, v293, v422);
      [(NEIKEv2IKESA *)v284 setState:v294 error:?];

      [(NEIKEv2Session *)self reportState];
    }

    else
    {
      v315 = objc_getProperty(self, v287, 352, 1);
      v323 = NEIKEv2CreateErrorFailedToSend(@"EAP unsupported refusal (receive)", v316, v317, v318, v319, v320, v321, v322, v422);
      [(NEIKEv2IKESA *)v315 setState:v323 error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];
    }

    v7 = v284;
    packetCopy = v283;
    goto LABEL_179;
  }

  v21 = v7;
  v22 = aCopy;
  objc_opt_self();
  if ((v7[9] & 1) == 0)
  {
    copyError2 = ne_log_obj();
    if (!os_log_type_enabled(copyError2, OS_LOG_TYPE_FAULT))
    {
LABEL_219:
      v65 = 0;
      goto LABEL_156;
    }

    *v462 = 136315138;
    selfCopy8 = "+[NEIKEv2IKEAuthPacket(Exchange) createEAPForInitiatorIKESA:lastResponderPacket:]";
    v296 = "%s called with null ikeSA.isInitiator";
LABEL_261:
    _os_log_fault_impl(&dword_1BA83C000, copyError2, OS_LOG_TYPE_FAULT, v296, v462, 0xCu);
    goto LABEL_219;
  }

  if (!aCopy)
  {
    copyError2 = ne_log_obj();
    if (!os_log_type_enabled(copyError2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_219;
    }

    *v462 = 136315138;
    selfCopy8 = "+[NEIKEv2IKEAuthPacket(Exchange) createEAPForInitiatorIKESA:lastResponderPacket:]";
    v296 = "%s called with null lastResponderPacket";
    goto LABEL_261;
  }

  if ([(NEIKEv2Packet *)v22 hasErrors])
  {
    v436 = v21;
    selfCopy5 = self;
    v432 = packetCopy;
    v457 = 0u;
    v458 = 0u;
    v455 = 0u;
    v456 = 0u;
    v25 = v22;
    obj = objc_getProperty(v22, v24, 64, 1);
    v26 = [(NEIKEv2EAP *)obj countByEnumeratingWithState:&v455 objects:v462 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v456;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v456 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v455 + 1) + 8 * j);
          if (v31 && (*(v31 + 32) - 1) <= 0x3FFE)
          {
            copyError2 = [(NEIKEv2NotifyPayload *)*(*(&v455 + 1) + 8 * j) copyError];

            v33 = ne_log_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription6 = [(NEIKEv2Packet *)v25 copyShortDescription];
              *buf = 138412546;
              *&buf[4] = copyShortDescription6;
              v460 = 2112;
              v461 = copyError2;
              _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "%@ Initiator auth EAP received notify error: %@", buf, 0x16u);
            }

            if (*(v31 + 32) & 0xFFFFFFFFFFFFE000) != 0x2000 || (*(v436 + 18))
            {
LABEL_60:
              [(NEIKEv2IKESA *)v436 setState:copyError2 error:?];
              v65 = 0;
              self = selfCopy5;
              packetCopy = v432;
              v22 = v25;
              v21 = v436;
              goto LABEL_155;
            }

            v35 = objc_getProperty(v25, v34, 128, 1);
            v37 = v35;
            if (v35 && (v38 = *(v35 + 40)) != 0)
            {
            }

            else
            {
              v39 = objc_getProperty(v25, v36, 136, 1);
              v41 = v39;
              if (v39)
              {
                v39 = objc_getProperty(v39, v40, 32, 1);
              }

              v42 = v39;

              if (!v42)
              {
                goto LABEL_60;
              }
            }

            v28 = copyError2;
          }
        }

        v27 = [(NEIKEv2EAP *)obj countByEnumeratingWithState:&v455 objects:v462 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v28 = 0;
    }

    copyError2 = v28;
    self = selfCopy5;
    packetCopy = v432;
    v22 = v25;
    v21 = v436;
  }

  else
  {
    copyError2 = 0;
  }

  v67 = objc_getProperty(v22, v24, 136, 1);
  v69 = v67;
  if (v67)
  {
    v67 = objc_getProperty(v67, v68, 32, 1);
  }

  v70 = v67;

  if (!v70)
  {
    v85 = copyError2;
    v86 = ne_log_obj();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription7 = [(NEIKEv2Packet *)v22 copyShortDescription];
      *buf = 138412290;
      *&buf[4] = copyShortDescription7;
      _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "%@ No EAP data received", buf, 0xCu);
    }

    objc = NEIKEv2CreateErrorAuthentication(@"No EAP data received", v87, v88, v89, v90, v91, v92, v93, v422);
    [(NEIKEv2IKESA *)v21 setState:objc error:?];
    v65 = 0;
    copyError2 = v85;

    goto LABEL_156;
  }

  obj = objc_getProperty(v21, v71, 456, 1);
  if (obj)
  {
    goto LABEL_70;
  }

  if (![(NEIKEv2IKEAuthPacket *)v22 validateAuthInitialAsInitiator:v21 beforeEAP:1])
  {
    goto LABEL_219;
  }

  if (![(NEIKEv2Packet *)v22 hasNotification:?])
  {
    obj = objc_alloc_init(NEIKEv2EAP);
    objc_setProperty_atomic(v21, v137, obj, 456);
    BYTE1(v21[2].isa) = 1;
LABEL_70:
    v454 = 0;
    v73 = objc_getProperty(v22, v72, 136, 1);
    v75 = v73;
    selfCopy6 = self;
    if (v73)
    {
      v73 = objc_getProperty(v73, v74, 32, 1);
    }

    v76 = v73;
    v77 = [(NEIKEv2EAP *)obj createPayloadResponseForRequest:v76 ikeSA:v21 success:&v454 + 1 reportEAPError:&v454];

    if (copyError2)
    {
      [(NEIKEv2IKESA *)v21 setState:copyError2 error:?];
LABEL_153:
      v65 = 0;
      goto LABEL_154;
    }

    if ((v454 & 0x100) == 0 && !v77)
    {
      if (v454 == 1)
      {
        ErrorAuthentication = NEIKEv2CreateError(10);
      }

      else
      {
        ErrorAuthentication = NEIKEv2CreateErrorAuthentication(@"EAP error", v78, v79, v80, v81, v82, v83, v84, v422);
      }

      v207 = ErrorAuthentication;
      [(NEIKEv2IKESA *)v21 setState:ErrorAuthentication error:?];

      goto LABEL_153;
    }

    initOutbound2 = [(NEIKEv2Packet *)[NEIKEv2IKEAuthPacket alloc] initOutbound];
    if (!initOutbound2)
    {
      v210 = ne_log_obj();
      if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v210, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initOutbound:] failed", buf, 2u);
      }

      v218 = NEIKEv2CreateErrorInternal(@"[[NEIKEv2IKEAuthPacket alloc] initOutbound:] failed", v211, v212, v213, v214, v215, v216, v217, v422);
      [(NEIKEv2IKESA *)v21 setState:v218 error:?];

      goto LABEL_165;
    }

    if (v77)
    {
      v108 = objc_alloc_init(NEIKEv2EAPPayload);
      objc_setProperty_atomic(initOutbound2, v109, v108, 136);

      v111 = objc_getProperty(initOutbound2, v110, 136, 1);
      v113 = v111;
      if (v111)
      {
        objc_setProperty_atomic(v111, v112, v77, 32);
      }

LABEL_98:
      if ([(NEIKEv2Packet *)v22 hasNotification:?])
      {
        v434 = initOutbound2;
        v438 = v21;
        v114 = BYTE2(v21[2].isa);
        v115 = ne_log_obj();
        v116 = os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT);
        if (v114)
        {
          if (v116)
          {
            copyShortDescription8 = [(NEIKEv2Packet *)v22 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = copyShortDescription8;
            _os_log_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_DEFAULT, "%@ Received request for device identity", buf, 0xCu);
          }

          v21 = v438;
          copyDeviceIdentityNotifyPayload = [(NEIKEv2IKESA *)v438 copyDeviceIdentityNotifyPayload];
          if (copyDeviceIdentityNotifyPayload)
          {
            v115 = copyDeviceIdentityNotifyPayload;
            if (![(NEIKEv2Packet *)initOutbound2 addNotification:copyDeviceIdentityNotifyPayload data:?])
            {
              v120 = ne_log_obj();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1BA83C000, v120, OS_LOG_TYPE_FAULT, "[responsePacket addNotifyPayload:notifyPayload] failed", buf, 2u);
              }

              v128 = NEIKEv2CreateErrorInternal(@"[responsePacket addNotification:NEIKEv2NotifyTypeDeviceIdentity] failed", v121, v122, v123, v124, v125, v126, v127, v422);
              v21 = v438;
              [(NEIKEv2IKESA *)v438 setState:v128 error:?];

              v65 = 0;
              goto LABEL_194;
            }
          }

          else
          {
            v273 = ne_log_obj();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription9 = [(NEIKEv2Packet *)v22 copyShortDescription];
              *buf = 138412290;
              *&buf[4] = copyShortDescription9;
              _os_log_error_impl(&dword_1BA83C000, v273, OS_LOG_TYPE_ERROR, "%@ Failed to get device identity payload", buf, 0xCu);
            }

            v115 = 0;
          }
        }

        else
        {
          if (v116)
          {
            copyShortDescription10 = [(NEIKEv2Packet *)v22 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = copyShortDescription10;
            _os_log_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_DEFAULT, "%@ Ignoring request for device identity as peer is not authenticated", buf, 0xCu);
          }

          v21 = v438;
        }
      }

      v65 = initOutbound2;
      goto LABEL_201;
    }

    v246 = objc_alloc_init(NEIKEv2AuthPayload);
    objc_setProperty_atomic(initOutbound2, v247, v246, 128);

    v248 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
    objc_getProperty(initOutbound2, v249, 128, 1);
    v251 = v250 = initOutbound2;
    [(NEIKEv2AuthPayload *)v251 setAuthProtocol:v248];

    v252 = [(NEIKEv2IKESA *)v21 createInitiatorEAPAuthenticationDataUsingPrimeKey:?];
    v254 = objc_getProperty(v250, v253, 128, 1);
    [(NEIKEv2AuthPayload *)v254 setAuthenticationData:v252];

    v434 = v250;
    v256 = objc_getProperty(v250, v255, 128, 1);
    LOBYTE(v254) = [(NEIKEv2Payload *)v256 isValid];

    if (v254)
    {
      initOutbound2 = v250;
      if ((v21[3].isa & 1) == 0)
      {
        goto LABEL_98;
      }

      v258 = objc_getProperty(v21, v257, 88, 1);
      ppkIDType2 = [v258 ppkIDType];

      v453 = ppkIDType2;
      if (!ppkIDType2)
      {
        v270 = ne_log_obj();
        if (!os_log_type_enabled(v270, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_193;
        }

        *buf = 136315138;
        *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createEAPForInitiatorIKESA:lastResponderPacket:]";
        v314 = "%s called with null ppkIDType";
        goto LABEL_224;
      }

      v261 = objc_getProperty(v21, v260, 88, 1);
      ppkID2 = [v261 ppkID];

      initOutbound2 = v434;
      if (v453 != 2 || ppkID2)
      {
        v263 = ppkID2;
        v264 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(ppkID2, "length") + 1}];
        [v264 appendBytes:&v453 length:1];
        v429 = v263;
        [v264 appendData:v263];
        if ([(NEIKEv2Packet *)v434 addNotification:v264 data:?])
        {
          v266 = objc_getProperty(v21, v265, 88, 1);
          ppkMandatory2 = [v266 ppkMandatory];

          if (ppkMandatory2)
          {
LABEL_189:

            initOutbound2 = v434;
            goto LABEL_98;
          }

          v268 = [(NEIKEv2IKESA *)v21 createInitiatorEAPAuthenticationDataUsingPrimeKey:?];
          initOutbound2 = v434;
          if ([(NEIKEv2Packet *)v434 addNotification:v268 data:?])
          {

            goto LABEL_189;
          }

          v427 = v268;
          v305 = ne_log_obj();
          if (os_log_type_enabled(v305, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v305, OS_LOG_TYPE_FAULT, "[responsePacket addNotification:NEIKEv2NotifyTypeNoPPKAuth] failed", buf, 2u);
          }

          v313 = NEIKEv2CreateErrorInternal(@"[responsePacket addNotification:NEIKEv2NotifyTypeNoPPKAuth] failed", v306, v307, v308, v309, v310, v311, v312, v422);
          [(NEIKEv2IKESA *)v21 setState:v313 error:?];

          v282 = v427;
        }

        else
        {
          v274 = ne_log_obj();
          if (os_log_type_enabled(v274, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v274, OS_LOG_TYPE_FAULT, "[responsePacket addNotification:NEIKEv2NotifyTypePPKIdentity] failed", buf, 2u);
          }

          v282 = NEIKEv2CreateErrorInternal(@"[responsePacket addNotification:NEIKEv2NotifyTypePPKIdentity] failed", v275, v276, v277, v278, v279, v280, v281, v422);
          [(NEIKEv2IKESA *)v21 setState:v282 error:?];
        }

LABEL_165:
        v65 = 0;
LABEL_201:

LABEL_154:
        self = selfCopy6;
LABEL_155:

        goto LABEL_156;
      }

      v270 = ne_log_obj();
      if (os_log_type_enabled(v270, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createEAPForInitiatorIKESA:lastResponderPacket:]";
        v314 = "%s called with null ppkID";
        goto LABEL_224;
      }
    }

    else
    {
      v270 = ne_log_obj();
      if (os_log_type_enabled(v270, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NEIKEv2IKEAuthPacket(Exchange) createEAPForInitiatorIKESA:lastResponderPacket:]";
        v314 = "%s called with null responsePacket.auth.isValid";
LABEL_224:
        _os_log_fault_impl(&dword_1BA83C000, v270, OS_LOG_TYPE_FAULT, v314, buf, 0xCu);
      }
    }

LABEL_193:

    v65 = 0;
LABEL_194:
    initOutbound2 = v434;
    goto LABEL_201;
  }

  objd = NEIKEv2CreateError(5);
  [(NEIKEv2IKESA *)v21 setState:objd error:?];
  v65 = 0;

LABEL_156:
  if (v65)
  {
    v66 = "EAP";
LABEL_171:
    if (v7[9])
    {
      v449[0] = MEMORY[0x1E69E9820];
      v449[1] = 3221225472;
      v449[2] = __72__NEIKEv2Session_Exchange__handleEAPAndGSPMForIKESA_authPacket_handler___block_invoke;
      v449[3] = &unk_1E7F08260;
      v449[4] = self;
      v452 = v66;
      v450 = v7;
      v451 = packetCopy;
      if ([NEIKEv2Session sendRequest:self retry:v65 replyHandler:v449]== -1)
      {
        v220 = objc_getProperty(self, v219, 352, 1);
        v228 = NEIKEv2CreateErrorFailedToSend(@"%s response (connect)", v221, v222, v223, v224, v225, v226, v227, v66);
        [(NEIKEv2IKESA *)v220 setState:v228 error:?];

        [(NEIKEv2Session *)self reportState];
        [(NEIKEv2Session *)self resetAll];
      }

      v231 = v450;
LABEL_178:

      goto LABEL_179;
    }

LABEL_175:
    v445[0] = MEMORY[0x1E69E9820];
    v445[1] = 3221225472;
    v445[2] = __72__NEIKEv2Session_Exchange__handleEAPAndGSPMForIKESA_authPacket_handler___block_invoke_168;
    v445[3] = &unk_1E7F08260;
    v445[4] = self;
    v448 = v66;
    v446 = v7;
    v447 = packetCopy;
    if (([(NEIKEv2Session *)self sendReply:v65 replyHandler:v445]& 1) == 0)
    {
      v233 = objc_getProperty(self, v232, 352, 1);
      v241 = NEIKEv2CreateErrorFailedToSend(@"%s response (receive)", v234, v235, v236, v237, v238, v239, v240, v66);
      [(NEIKEv2IKESA *)v233 setState:v241 error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];
    }

    v231 = v446;
    goto LABEL_178;
  }

  if (v21[6].isa == 3)
  {
    v297 = v21;
    v298 = objc_getProperty(v21, v208, 56, 1);
    domain2 = [v298 domain];
    if ([domain2 isEqual:@"NEIKEv2ErrorDomain"])
    {
      v301 = objc_getProperty(v297, v300, 56, 1);
      code2 = [v301 code];

      if (code2 == 5)
      {
        v303 = ne_log_obj();
        if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
        {
          *v462 = 138412290;
          selfCopy8 = self;
          _os_log_impl(&dword_1BA83C000, v303, OS_LOG_TYPE_DEFAULT, "%@ Received server redirect in IKE Auth (EAP) (connect)", v462, 0xCu);
        }

        [(NEIKEv2Session *)self reportServerRedirect:v22];
        [(NEIKEv2Session *)self resetAll];
        packetCopy[2](packetCopy, 0);
        goto LABEL_179;
      }
    }

    else
    {
    }
  }

  v332 = ne_log_obj();
  if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
  {
    *v462 = 138412290;
    selfCopy8 = self;
    _os_log_error_impl(&dword_1BA83C000, v332, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth (EAP) packet (connect)", v462, 0xCu);
  }

  v334 = objc_getProperty(self, v333, 352, 1);
  v342 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process IKE Auth (EAP) packet (connect)", v335, v336, v337, v338, v339, v340, v341, v422);
  [(NEIKEv2IKESA *)v334 setState:v342 error:?];

  [(NEIKEv2Session *)self reportState];
  [(NEIKEv2Session *)self resetAll];
LABEL_179:

  v244 = *MEMORY[0x1E69E9840];
}

void __72__NEIKEv2Session_Exchange__handleEAPAndGSPMForIKESA_authPacket_handler___block_invoke(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 35)
  {
    [(NEIKEv2Session *)a1[4] handleEAPAndGSPMForIKESA:v3 authPacket:a1[6] handler:?];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[4];
      v20 = a1[7];
      *buf = 138412546;
      v22 = v19;
      v23 = 2080;
      v24 = v20;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE Auth (%s) reply (connect)", buf, 0x16u);
    }

    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 352, 1);
    }

    v7 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE Auth (%s) reply (connect)", v8, v9, v10, v11, v12, v13, v14, a1[7]);
    [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)a1[4] reportState];
    [(NEIKEv2Session *)a1[4] resetAll];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __72__NEIKEv2Session_Exchange__handleEAPAndGSPMForIKESA_authPacket_handler___block_invoke_168(uint64_t *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 35)
  {
    [(NEIKEv2Session *)a1[4] handleEAPAndGSPMForIKESA:v3 authPacket:a1[6] handler:?];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[4];
      v20 = a1[7];
      *buf = 138412546;
      v22 = v19;
      v23 = 2080;
      v24 = v20;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE Auth (%s) reply (receive)", buf, 0x16u);
    }

    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 352, 1);
    }

    v7 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE Auth (%s) reply (receive)", v8, v9, v10, v11, v12, v13, v14, a1[7]);
    [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)a1[4] reportState];
    [(NEIKEv2Session *)a1[4] resetAll];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] != 34)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      *buf = 138412290;
      v40 = v34;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE SA Init reply (connect)", buf, 0xCu);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v17, 352, 1);
    }

    v19 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE SA Init reply (connect)", v20, v21, v22, v23, v24, v25, v26, v35);
    [(NEIKEv2IKESA *)v19 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)*(a1 + 32) reportState];
    goto LABEL_17;
  }

  v5 = [(NEIKEv2IKESAInitPacket *)v3 validateSAInitAsInitiator:?];
  if ((v5 & 1) != 0 || (v6 = *(a1 + 40)) == 0 || v6[6] != 3)
  {
LABEL_19:
    v30 = *(a1 + 32);
    v29 = *(a1 + 40);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_193;
    v36[3] = &unk_1E7F08300;
    v36[4] = v30;
    v31 = v29;
    v32 = *(a1 + 48);
    v37 = v31;
    v38 = v32;
    [(NEIKEv2Session *)v30 retryCookieForIKESA:v31 validated:v5 handler:v36];

    goto LABEL_20;
  }

  v7 = objc_getProperty(v6, v4, 56, 1);
  v8 = [v7 domain];
  if (([v8 isEqual:@"NEIKEv2ErrorDomain"] & 1) == 0)
  {

    goto LABEL_19;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 56, 1);
  }

  v11 = v10;
  v12 = [v11 code];

  if (v12 != 5)
  {
    goto LABEL_19;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v40 = v14;
    _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEFAULT, "%@ Received server redirect in IKE SA Init (connect)", buf, 0xCu);
  }

  [(NEIKEv2Session *)*(a1 + 32) reportServerRedirect:v3];
LABEL_17:
  [(NEIKEv2Session *)*(a1 + 32) resetAll];
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_193(void *a1, uint64_t a2)
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v4 = a1[5];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v101 = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_2;
  v102 = &unk_1E7F08300;
  v103 = v5;
  v6 = v4;
  v7 = a1[6];
  v104 = v6;
  v105 = v7;
  v8 = v6;
  v10 = v100;
  if (!v5)
  {
    goto LABEL_49;
  }

  v11 = objc_getProperty(v5, v9, 384, 1);
  dispatch_assert_queue_V2(v11);

  if ((a2 & 1) != 0 || (!v8 ? (Property = 0) : (Property = objc_getProperty(v8, v12, 144, 1)), v14 = Property, v14, !v14))
  {
    v101(v10, a2);
    goto LABEL_49;
  }

  [(NEIKEv2Session *)v5 resetMessages];
  if (v8)
  {
    objc_setProperty_atomic(v8, v16, 0, 160);
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v19 = objc_getProperty(v8, v18, 144, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [v20 method];
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v21;
    _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "%@ Received KE method preference %tu, retrying IKE SA Init (connect retry KE)", buf, 0x16u);
  }

  if (v8)
  {
    v23 = objc_getProperty(v8, v22, 144, 1);
  }

  else
  {
    v23 = 0;
  }

  v98 = v23;
  v25 = [v98 method];
  v99 = v10;
  if (v8)
  {
    v26 = objc_getProperty(v8, v24, 80, 1);
  }

  else
  {
    v26 = 0;
  }

  v97 = v26;
  v27 = [v97 proposals];
  objc_opt_self();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v110 objects:buf count:16];
  if (!v29)
  {
    goto LABEL_31;
  }

  v30 = v29;
  v31 = *v111;
  v96 = *v111;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v111 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v110 + 1) + 8 * i);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v34 = [v33 kemProtocols];
      v35 = [v34 countByEnumeratingWithState:&v106 objects:v114 count:16];
      if (!v35)
      {
        goto LABEL_29;
      }

      v36 = v35;
      v37 = *v107;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v107 != v37)
          {
            objc_enumerationMutation(v34);
          }

          if ([*(*(&v106 + 1) + 8 * j) method] == v25)
          {

            if (([(NEIKEv2IKESA *)v8 generateInitialValues]& 1) != 0)
            {
              v56 = [NEIKEv2IKESAInitPacket createIKESAInitForInitiatorIKESA:v8];
              v10 = v99;
              if (v56)
              {
                v57 = v56;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __62__NEIKEv2Session_Exchange__retryKEForIKESA_validated_handler___block_invoke;
                v116 = &unk_1E7F08210;
                v117 = v5;
                v118 = v8;
                v119 = v99;
                if ([NEIKEv2Session sendRequest:v5 retry:v57 replyHandler:buf]== -1)
                {
                  v59 = objc_getProperty(v5, v58, 352, 1);
                  ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"retry SA INIT KE", v60, v61, v62, v63, v64, v65, v66, v95);
                  [(NEIKEv2IKESA *)v59 setState:ErrorFailedToSend error:?];

                  [(NEIKEv2Session *)v5 reportState];
                  [(NEIKEv2Session *)v5 resetAll];
                }

                goto LABEL_49;
              }

              v80 = ne_log_obj();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v5;
                _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init retry packet (connect retry KE)", buf, 0xCu);
              }

              v43 = objc_getProperty(v5, v81, 352, 1);
              ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init retry packet (connect retry KE)", v82, v83, v84, v85, v86, v87, v88, v95);
            }

            else
            {
              v70 = ne_log_obj();
              v10 = v99;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v5;
                _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, "%@ Failed to generate local crypto values (connect retry KE)", buf, 0xCu);
              }

              v43 = objc_getProperty(v5, v71, 352, 1);
              ErrorInternal = NEIKEv2CreateErrorCrypto(@"Failed to generate local crypto values (connect retry KE)", v72, v73, v74, v75, v76, v77, v78, v95);
            }

            v45 = ErrorInternal;
            [(NEIKEv2IKESA *)v43 setState:ErrorInternal error:?];
            goto LABEL_48;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v106 objects:v114 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }

LABEL_29:

      v31 = v96;
    }

    v30 = [v28 countByEnumeratingWithState:&v110 objects:buf count:16];
  }

  while (v30);
LABEL_31:

  v39 = ne_log_obj();
  v10 = v99;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    if (v8)
    {
      v92 = objc_getProperty(v8, v40, 144, 1);
    }

    else
    {
      v92 = 0;
    }

    v93 = v92;
    v94 = [v93 method];
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v94;
    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@ Received KE method preference %tu is not in config (connect retry KE)", buf, 0x16u);
  }

  v43 = objc_getProperty(v5, v41, 352, 1);
  if (v8)
  {
    v44 = objc_getProperty(v8, v42, 144, 1);
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  v46 = [v45 method];
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received KE method preference %tu is not in config (connect retry KE)", v47, v48, v49, v50, v51, v52, v53, v46);
  [(NEIKEv2IKESA *)v43 setState:ErrorPeerInvalidSyntax error:?];

LABEL_48:
  [(NEIKEv2Session *)v5 reportState];
  [(NEIKEv2Session *)v5 resetAll];
LABEL_49:

  v91 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_2(void *a1, uint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_3;
  v8[3] = &unk_1E7F08300;
  v8[4] = v5;
  v6 = v4;
  v7 = a1[6];
  v9 = v6;
  v10 = v7;
  [(NEIKEv2Session *)v5 retryCookieForIKESA:v6 validated:a2 handler:v8];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_3(uint64_t *a1, const char *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v26 = a1[4];
      *buf = 138412290;
      v54 = v26;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE SA Init packet (connect)", buf, 0xCu);
    }

    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 352, 1);
    }

    v20 = Property;
    v21 = @"Failed to process IKE SA Init packet (connect)";
    goto LABEL_12;
  }

  v3 = a1[5];
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, 0, 280);
    v5 = a1[5];
    v6 = *(*(a1[6] + 8) + 40);
    if (v5)
    {
      v7 = *(v5 + 23);
      if (v6)
      {
        if (v7)
        {
          [(NEIKEv2Session *)a1[4] removeFirstChild];
          v8 = *(a1[6] + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = 0;

          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v6 = *(*(a1[6] + 8) + 40);
  }

  if (!v6)
  {
LABEL_14:
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = a1[4];
      *buf = 138412290;
      v54 = v27;
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "%@ Failed to negotiate Childless SA (connect)", buf, 0xCu);
    }

    v25 = a1[4];
    if (v25)
    {
      v25 = objc_getProperty(v25, v24, 352, 1);
    }

    v20 = v25;
    v21 = @"Failed to negotiate Childless SA (connect)";
LABEL_12:
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(v21, v13, v14, v15, v16, v17, v18, v19, v48);
LABEL_29:
    v43 = ErrorPeerInvalidSyntax;
    [(NEIKEv2IKESA *)v20 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)a1[4] reportState];
    [(NEIKEv2Session *)a1[4] resetAll];
    goto LABEL_30;
  }

LABEL_21:
  [(NEIKEv2ChildSA *)v6 setState:0 error:?];
  [(NEIKEv2Session *)a1[4] reportState];
LABEL_22:
  if (([(NEIKEv2IKESA *)a1[5] generateAllValuesForSAInit]& 1) == 0)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v47 = a1[4];
      *buf = 138412290;
      v54 = v47;
      _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "%@ Failed to generate crypto values (connect)", buf, 0xCu);
    }

    v35 = a1[4];
    if (v35)
    {
      v35 = objc_getProperty(v35, v34, 352, 1);
    }

    v20 = v35;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorCrypto(@"Failed to generate crypto values (connect)", v36, v37, v38, v39, v40, v41, v42, v48);
    goto LABEL_29;
  }

  v30 = a1[4];
  v29 = a1[5];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_203;
  v49[3] = &unk_1E7F082D8;
  v31 = v29;
  v32 = a1[4];
  v50 = v31;
  v51 = v32;
  v52 = a1[6];
  [(NEIKEv2Session *)v30 handleIKEIntermediateForInitiatorIKESA:v31 iteration:0 handler:v49];

LABEL_30:
  v46 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_203(uint64_t a1, const char *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3 || (v3[24] & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [(NEIKEv2IKESA *)*(a1 + 32) ppk];
  v5 = [(NEIKEv2IKESA *)v3 generateDerivativesFromPPK:v4];

  if (v5)
  {
    v3 = *(a1 + 32);
LABEL_5:
    v7 = [NEIKEv2IKEAuthPacket createIKEAuthForInitiatorIKESA:v3 childSA:*(*(*(a1 + 48) + 8) + 40)];
    if (v7)
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 352, 1);
      }

      v9 = Property;
      v11 = [(NEIKEv2IKESA *)v9 authenticationProtocol];
      v12 = [v11 isSecurePassword];

      if (v12)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v14 = objc_getProperty(v14, v13, 352, 1);
        }

        v15 = v14;
        v17 = [(NEIKEv2IKESA *)v15 authenticationProtocol];
      }

      else
      {
        v47 = objc_getProperty(v7, v13, 128, 1);
        v15 = v47;
        if (v47)
        {
          v48 = *(v47 + 32);
        }

        else
        {
          v48 = 0;
        }

        v17 = v48;
      }

      v49 = v17;
      v50 = *(a1 + 40);
      if (v50)
      {
        v50 = objc_getProperty(v50, v18, 352, 1);
      }

      v51 = v50;
      [(NEIKEv2IKESA *)v51 setLocalAuthProtocolUsed:v49];

      v52 = *(a1 + 40);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_210;
      v72[3] = &unk_1E7F082B0;
      v72[4] = v52;
      v53 = *(a1 + 32);
      v54 = *(a1 + 48);
      v73 = v53;
      v74 = v54;
      if ([NEIKEv2Session sendRequest:v52 retry:v7 replyHandler:v72]== -1)
      {
        v56 = *(a1 + 40);
        if (v56)
        {
          v56 = objc_getProperty(v56, v55, 352, 1);
        }

        v57 = v56;
        ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator AUTH", v58, v59, v60, v61, v62, v63, v64, v71);
        [(NEIKEv2IKESA *)v57 setState:ErrorFailedToSend error:?];

        [(NEIKEv2Session *)*(a1 + 40) reportState];
        [(NEIKEv2Session *)*(a1 + 40) resetAll];
      }
    }

    else
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v69 = *(a1 + 40);
        *buf = 138412290;
        v76 = v69;
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE Auth packet (connect)", buf, 0xCu);
      }

      v21 = *(a1 + 40);
      if (v21)
      {
        v21 = objc_getProperty(v21, v20, 352, 1);
      }

      v22 = v21;
      ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create IKE Auth packet (connect)", v23, v24, v25, v26, v27, v28, v29, v71);
      [(NEIKEv2IKESA *)v22 setState:ErrorInternal error:?];

      [(NEIKEv2Session *)*(a1 + 40) reportState];
      [(NEIKEv2Session *)*(a1 + 40) resetAll];
    }

    goto LABEL_33;
  }

  v33 = ne_log_obj();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v70 = *(a1 + 40);
    *buf = 138412290;
    v76 = v70;
    _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "%@ Failed to generate PPK-derived keys (connect)", buf, 0xCu);
  }

  v35 = *(a1 + 40);
  if (v35)
  {
    v35 = objc_getProperty(v35, v34, 352, 1);
  }

  v36 = v35;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate PPK-derived keys (connect)", v37, v38, v39, v40, v41, v42, v43, v71);
  [(NEIKEv2IKESA *)v36 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  [(NEIKEv2Session *)*(a1 + 40) resetAll];
LABEL_33:
  v68 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_210(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 35)
  {
    v4 = v3;
    v5 = *(a1 + 40);
    v7 = v5;
    if (v4)
    {
      if (v5)
      {
        if (![(NEIKEv2IKESA *)v5 usesEAPOnlyAuthentication])
        {
          goto LABEL_6;
        }

        v9 = objc_getProperty(v4, v8, 136, 1);

        if (v9)
        {
          goto LABEL_6;
        }

        if ([(NEIKEv2Packet *)v4 hasErrors])
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v38 = objc_getProperty(v4, v31, 64, 1);
          v39 = [v38 countByEnumeratingWithState:&v66 objects:buf count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v67;
            while (2)
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v67 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v66 + 1) + 8 * i);
                if (v43 && v43[1].isa - 1 <= 0x3FFE)
                {
                  v15 = [(NEIKEv2NotifyPayload *)v43 copyError];
                  v46 = ne_log_obj();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v52 = [(NEIKEv2Packet *)v4 copyShortDescription];
                    *v70 = 138412546;
                    v71 = v52;
                    v72 = 2112;
                    v73 = v15;
                    _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "%@ EAP only authentication, received notify error %@", v70, 0x16u);
                  }

                  goto LABEL_31;
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v66 objects:buf count:16];
              if (v40)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_6;
        }

        ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"EAP only mode, IKE Auth packet does not contain EAP (connect)", v31, v32, v33, v34, v35, v36, v37, v61[0]);
      }

      else
      {
        v53 = ne_log_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          *v70 = 136315138;
          v71 = "[NEIKEv2IKEAuthPacket(Exchange) validateEAPOnlyAuthentication:]";
          _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", v70, 0xCu);
        }

        ErrorPeerInvalidSyntax = NEIKEv2CreateErrorInternal(@"IKE SA is nil", v54, v55, v56, v57, v58, v59, v60, v61[0]);
      }

      v15 = ErrorPeerInvalidSyntax;
LABEL_31:

      v11 = *(a1 + 32);
      if (v15)
      {
        if (v11)
        {
          Property = objc_getProperty(*(a1 + 32), v47, 352, 1);
        }

        else
        {
          Property = 0;
        }

        v49 = Property;
        [(NEIKEv2IKESA *)v49 setState:v15 error:?];

        [(NEIKEv2Session *)*(a1 + 32) reportState];
        [(NEIKEv2Session *)*(a1 + 32) resetAll];
        goto LABEL_8;
      }

LABEL_7:
      v12 = *(a1 + 40);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_214;
      v61[3] = &unk_1E7F08288;
      v13 = v12;
      v65 = *(a1 + 48);
      v14 = *(a1 + 32);
      v62 = v13;
      v63 = v14;
      v64 = v4;
      [(NEIKEv2Session *)v11 handleEAPAndGSPMForIKESA:v13 authPacket:v64 handler:v61];

      v15 = 0;
LABEL_8:

      goto LABEL_14;
    }

LABEL_6:

    v11 = *(a1 + 32);
    goto LABEL_7;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v45 = *(a1 + 32);
    *buf = 138412290;
    v75 = v45;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to receive IKE Auth packet (connect)", buf, 0xCu);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v18 = objc_getProperty(v18, v17, 352, 1);
  }

  v19 = v18;
  v27 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive IKE Auth packet (connect)", v20, v21, v22, v23, v24, v25, v26, v61[0]);
  [(NEIKEv2IKESA *)v19 setState:v27 error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  [(NEIKEv2Session *)*(a1 + 32) resetAll];
LABEL_14:

  v30 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_214(uint64_t a1, void *a2)
{
  v460 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  v8 = v6;
  self = v3;
  v410 = a1;
  if (!v3)
  {
    goto LABEL_315;
  }

  if (v5)
  {
    if (v6 || (v5[23] & 1) != 0)
    {
      if (v5[9])
      {
        if ([(NEIKEv2Packet *)v3 hasErrors])
        {
          v458 = 0u;
          v459 = 0u;
          *block = 0u;
          v457 = 0u;
          v10 = objc_getProperty(v3, v9, 64, 1);
          v11 = [v10 countByEnumeratingWithState:block objects:&v433 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v457;
            do
            {
              v15 = 0;
              do
              {
                if (*v457 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*&block[8] + 8 * v15);
                if (v16 && v16[1].isa - 1 <= 0x3FFE)
                {
                  v17 = [(NEIKEv2NotifyPayload *)v16 copyError];

                  v18 = ne_log_obj();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                  {
                    v25 = [(NEIKEv2Packet *)self copyShortDescription];
                    *buf = 138412546;
                    *&buf[4] = v25;
                    *&buf[12] = 2112;
                    *&buf[14] = v17;
                    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Initiator auth received notify error %@", buf, 0x16u);
                  }

                  v20 = v16[1].isa & 0xFFFFFFFFFFFFE000;
                  a1 = v410;
                  if (v20 != 0x2000 || (v5[18] & 1) != 0 || ((objc_getProperty(self, v19, 128, 1), v21 = objc_claimAutoreleasedReturnValue(), (v22 = v21) == 0) ? (v23 = 0) : (v23 = *(v21 + 40)), v24 = v23, v24, v22, !v24))
                  {
                    [(NEIKEv2IKESA *)v5 setState:v17 error:?];
                    v421[0] = 0;

                    v3 = self;
                    goto LABEL_43;
                  }

                  v13 = v17;
                }

                else
                {
                  a1 = v410;
                }

                ++v15;
              }

              while (v12 != v15);
              v26 = [v10 countByEnumeratingWithState:block objects:&v433 count:16];
              v12 = v26;
            }

            while (v26);
          }

          else
          {
            v13 = 0;
          }

          v3 = self;
        }

        else
        {
          v13 = 0;
        }

        if ([(NEIKEv2IKESA *)v5 usesEAPOnlyAuthentication]&& (v5[20] & 1) == 0)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v266 = [(NEIKEv2Packet *)v3 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = v266;
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "%@ EAP only authentication incomplete", buf, 0xCu);
          }

          ErrorAuthentication = NEIKEv2CreateErrorAuthentication(@"EAP only authentication did not complete", v28, v29, v30, v31, v32, v33, v34, v377);
          [(NEIKEv2IKESA *)v5 setState:ErrorAuthentication error:?];

          goto LABEL_42;
        }

        if ((v5[17] & 1) == 0 && ([(NEIKEv2IKEAuthPacket *)v3 validateAuthInitialAsInitiator:v5 beforeEAP:0]& 1) == 0 || ([(NEIKEv2IKEAuthPacket *)v3 validateAuthPayloadAsInitiator:v5 beforeEAP:0]& 1) == 0)
        {
LABEL_42:
          v421[0] = 0;

LABEL_43:
          v36 = v421[0];
          goto LABEL_44;
        }

        if (v13)
        {
          [(NEIKEv2IKESA *)v5 setState:v13 error:?];
          goto LABEL_42;
        }

        if ([(NEIKEv2Packet *)v3 hasNotification:?])
        {
          v244 = 5;
LABEL_219:
          Error = NEIKEv2CreateError(v244);
          [(NEIKEv2IKESA *)v5 setState:Error error:?];

          v421[0] = 0;
          goto LABEL_43;
        }

        if (v5[23])
        {
LABEL_228:
          v250 = objc_getProperty(v3, v243, 152, 1);

          if (v250)
          {
            Property = objc_getProperty(v3, v251, 152, 1);
            v254 = Property;
            if (Property)
            {
              Property = objc_getProperty(Property, v253, 32, 1);
            }

            v255 = Property;
            objc_setProperty_atomic(v5, v256, v255, 496);
          }

          v257 = objc_getProperty(v5, v251, 88, 1);
          if ([v257 negotiateMOBIKE])
          {
            v258 = [(NEIKEv2Packet *)v3 hasNotification:?];

            if (v258)
            {
              v259 = ne_log_obj();
              if (os_log_type_enabled(v259, OS_LOG_TYPE_DEBUG))
              {
                v340 = [(NEIKEv2Packet *)v3 copyShortDescription];
                *v421 = 138412290;
                v422 = v340;
                _os_log_debug_impl(&dword_1BA83C000, v259, OS_LOG_TYPE_DEBUG, "%@ Server MOBIKE supported", v421, 0xCu);
              }

              v5[11] = 1;
            }
          }

          else
          {
          }

          v421[0] = 1;
          goto LABEL_43;
        }

        if (v8)
        {
          v261 = objc_getProperty(v8, v243, 48, 1);
        }

        else
        {
          v261 = 0;
        }

        v262 = v261;
        if ([v262 mode] == 1)
        {
          v263 = [(NEIKEv2Packet *)v3 hasNotification:?];

          if ((v263 & 1) == 0)
          {
            v265 = ne_log_obj();
            if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
            {
              v341 = [(NEIKEv2Packet *)v3 copyShortDescription];
              *buf = 138412290;
              *&buf[4] = v341;
              _os_log_error_impl(&dword_1BA83C000, v265, OS_LOG_TYPE_ERROR, "%@ Transport mode Child SA was not accepted", buf, 0xCu);
            }

            v244 = 9;
            goto LABEL_219;
          }
        }

        else
        {
        }

        v268 = objc_getProperty(v3, v264, 88, 1);
        v270 = v268;
        if (v268)
        {
          v268 = objc_getProperty(v268, v269, 32, 1);
        }

        v271 = v268;

        if ([v271 count] != 1)
        {
          v285 = ne_log_obj();
          if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
          {
            v330 = [(NEIKEv2Packet *)v3 copyShortDescription];
            v331 = [v271 count];
            *buf = 138412546;
            *&buf[4] = v330;
            *&buf[12] = 1024;
            *&buf[14] = v331;
            _os_log_error_impl(&dword_1BA83C000, v285, OS_LOG_TYPE_ERROR, "%@ Received %u child SA proposals, require 1", buf, 0x12u);
          }

          v286 = [v271 count];
          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received %u child SA proposals", v287, v288, v289, v290, v291, v292, v293, v286);
          [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];

          v421[0] = 0;
          goto LABEL_295;
        }

        v272 = [v271 firstObject];
        if (([(NEIKEv2ChildSAProposal *)v272 isAValidResponse]& 1) != 0)
        {
          if (v272)
          {
            v275 = objc_getProperty(v272, v274, 80, 1);
          }

          else
          {
            v275 = 0;
          }

          v276 = v275;

          if (v276)
          {
            v408 = v5;
            v431 = 0u;
            v432 = 0u;
            *v429 = 0u;
            v430 = 0u;
            v278 = [(NEIKEv2ChildSA *)v8 configProposalsWithoutKEM];
            v279 = [v278 countByEnumeratingWithState:v429 objects:buf count:16];
            if (v279)
            {
              v280 = v279;
              v281 = *v430;
LABEL_256:
              v282 = 0;
              while (1)
              {
                if (*v430 != v281)
                {
                  objc_enumerationMutation(v278);
                }

                v283 = *(*&v429[8] + 8 * v282);
                if (([(NEIKEv2ChildSAProposal *)v283 matchesLocalProposal:v272 preferRemoteProposal:0 checkKEMethod:0]& 1) != 0)
                {
                  break;
                }

                if (v280 == ++v282)
                {
                  v280 = [v278 countByEnumeratingWithState:v429 objects:buf count:16];
                  if (v280)
                  {
                    goto LABEL_256;
                  }

                  goto LABEL_262;
                }
              }

              v298 = v283;

              if (!v298)
              {
                goto LABEL_287;
              }

              v299 = [(NEIKEv2ChildSAProposal *)v298 copyFromRemote:v272 preferRemoteProposal:0 checkKEMethod:0];
              v301 = v299;
              v3 = self;
              if (v8)
              {
                objc_setProperty_atomic(v8, v300, v299, 56);

                v303 = objc_getProperty(v8, v302, 56, 1);
              }

              else
              {

                v303 = 0;
              }

              v304 = v303;

              v305 = ne_log_obj();
              v306 = v305;
              if (!v304)
              {
                if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
                {
                  v373 = [(NEIKEv2Packet *)self copyShortDescription];
                  *v421 = 138412290;
                  v422 = v373;
                  _os_log_error_impl(&dword_1BA83C000, v306, OS_LOG_TYPE_ERROR, "%@ Could not set chosen proposal values", v421, 0xCu);
                }

                v339 = @"Could not set chosen proposal values";
LABEL_324:
                v366 = NEIKEv2CreateErrorPeerInvalidSyntax(v339, v332, v333, v334, v335, v336, v337, v338, v377);
                v5 = v408;
                [(NEIKEv2IKESA *)v408 setState:v366 error:?];

                v421[0] = 0;
                goto LABEL_294;
              }

              if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
              {
                v308 = [(NEIKEv2Packet *)self copyShortDescription];
                if (v8)
                {
                  v309 = objc_getProperty(v8, v307, 56, 1);
                }

                else
                {
                  v309 = 0;
                }

                v310 = v309;
                *v421 = 138412802;
                v422 = v8;
                v423 = 2112;
                v424 = v308;
                v425 = 2112;
                v426 = v310;
                _os_log_impl(&dword_1BA83C000, v306, OS_LOG_TYPE_DEFAULT, "%@ %@ Chose responder auth child proposal %@", v421, 0x20u);
              }

              [(NEIKEv2ChildSA *)v8 setConfigProposalsWithoutKEM:v311];
              if (v8)
              {
                v313 = objc_getProperty(v8, v312, 48, 1);
              }

              else
              {
                v313 = 0;
              }

              v314 = v313;
              if ([v314 sequencePerTrafficClass])
              {
                v315 = [(NEIKEv2Packet *)self hasNotification:?];

                if (v315)
                {
                  v317 = ne_log_obj();
                  if (os_log_type_enabled(v317, OS_LOG_TYPE_DEBUG))
                  {
                    v375 = [(NEIKEv2Packet *)self copyShortDescription];
                    *v421 = 138412290;
                    v422 = v375;
                    _os_log_debug_impl(&dword_1BA83C000, v317, OS_LOG_TYPE_DEBUG, "%@ Server Sequence Per Traffic Class supported", v421, 0xCu);
                  }

                  if (v8)
                  {
                    v8[10] = 1;
                  }
                }
              }

              else
              {
              }

              v342 = objc_getProperty(self, v316, 160, 1);
              v344 = v342;
              if (v342)
              {
                v342 = objc_getProperty(v342, v343, 32, 1);
              }

              v345 = v342;
              [(NEIKEv2ChildSA *)v8 setInitiatorTrafficSelectors:v345];

              v347 = [(NEIKEv2ChildSA *)v8 initiatorTrafficSelectors];

              if (v347)
              {
                v349 = objc_getProperty(self, v348, 168, 1);
                v351 = v349;
                if (v349)
                {
                  v349 = objc_getProperty(v349, v350, 32, 1);
                }

                v352 = v349;
                [(NEIKEv2ChildSA *)v8 setResponderTrafficSelectors:v352];

                v354 = [(NEIKEv2ChildSA *)v8 responderTrafficSelectors];

                v3 = self;
                if (v354)
                {

                  v5 = v408;
                  goto LABEL_228;
                }

                v365 = ne_log_obj();
                if (os_log_type_enabled(v365, OS_LOG_TYPE_ERROR))
                {
                  v376 = [(NEIKEv2Packet *)self copyShortDescription];
                  *v421 = 138412290;
                  v422 = v376;
                  _os_log_error_impl(&dword_1BA83C000, v365, OS_LOG_TYPE_ERROR, "%@ Could not set responder traffic selectors", v421, 0xCu);
                }

                v339 = @"Could not set responder traffic selectors";
                goto LABEL_324;
              }

              v356 = ne_log_obj();
              v5 = v408;
              if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
              {
                v374 = [(NEIKEv2Packet *)self copyShortDescription];
                *v421 = 138412290;
                v422 = v374;
                _os_log_error_impl(&dword_1BA83C000, v356, OS_LOG_TYPE_ERROR, "%@ Could not set initiator traffic selectors", v421, 0xCu);

                v5 = v408;
              }

              v364 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Could not set initiator traffic selectors", v357, v358, v359, v360, v361, v362, v363, v377);
              [(NEIKEv2IKESA *)v5 setState:v364 error:?];

              v421[0] = 0;
              v3 = self;
              goto LABEL_294;
            }

LABEL_262:

LABEL_287:
            v318 = ne_log_obj();
            v3 = self;
            v5 = v408;
            if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
            {
              v368 = [(NEIKEv2Packet *)self copyShortDescription];
              if (v8)
              {
                v369 = objc_getProperty(v8, v367, 48, 1);
              }

              else
              {
                v369 = 0;
              }

              v370 = v369;
              v371 = [v370 proposals];
              *v421 = 138413058;
              v422 = v8;
              v423 = 2112;
              v424 = v368;
              v425 = 2112;
              v426 = v272;
              v427 = 2112;
              v428 = v371;
              _os_log_error_impl(&dword_1BA83C000, v318, OS_LOG_TYPE_ERROR, "%@ %@ Received child proposal %@ does not match config %@", v421, 0x2Au);

              v3 = self;
              a1 = v410;
              v5 = v408;
            }

            v326 = @"Received child proposal does not match config";
LABEL_293:
            v327 = NEIKEv2CreateErrorPeerInvalidSyntax(v326, v319, v320, v321, v322, v323, v324, v325, v377);
            [(NEIKEv2IKESA *)v5 setState:v327 error:?];

            v421[0] = 0;
LABEL_294:

LABEL_295:
            goto LABEL_43;
          }

          v296 = ne_log_obj();
          if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
          {
            v372 = [(NEIKEv2Packet *)v3 copyShortDescription];
            *buf = 138412290;
            *&buf[4] = v372;
            _os_log_error_impl(&dword_1BA83C000, v296, OS_LOG_TYPE_ERROR, "%@ Child SA proposal missing SPI", buf, 0xCu);
          }

          v297 = @"Received child proposal missing SPI %@";
        }

        else
        {
          v296 = ne_log_obj();
          if (os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
          {
            v355 = [(NEIKEv2Packet *)v3 copyShortDescription];
            *buf = 138412802;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v355;
            *&buf[22] = 2112;
            *&buf[24] = v272;
            _os_log_error_impl(&dword_1BA83C000, v296, OS_LOG_TYPE_ERROR, "%@ %@ Received invalid child proposal %@", buf, 0x20u);
          }

          v297 = @"Received invalid child proposal %@";
        }

        v377 = v272;
        v326 = v297;
        goto LABEL_293;
      }

      v328 = ne_log_obj();
      if (!os_log_type_enabled(v328, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_314;
      }

      LODWORD(v433) = 136315138;
      *(&v433 + 4) = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthFinalAsInitiator:childSA:]";
      v329 = "%s called with null ikeSA.isInitiator";
      goto LABEL_313;
    }

    v328 = ne_log_obj();
    if (os_log_type_enabled(v328, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v433) = 136315138;
      *(&v433 + 4) = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthFinalAsInitiator:childSA:]";
      v329 = "%s called with null childSA";
      goto LABEL_313;
    }
  }

  else
  {
    v328 = ne_log_obj();
    if (os_log_type_enabled(v328, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v433) = 136315138;
      *(&v433 + 4) = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthFinalAsInitiator:childSA:]";
      v329 = "%s called with null ikeSA";
LABEL_313:
      _os_log_fault_impl(&dword_1BA83C000, v328, OS_LOG_TYPE_FAULT, v329, &v433, 0xCu);
    }
  }

LABEL_314:

LABEL_315:
  v36 = 0;
LABEL_44:

  v38 = *(a1 + 32);
  if (v38)
  {
    *(v38 + 17) = 0;
  }

  [(NEIKEv2Session *)*(a1 + 40) updateSentRequestWindow];
  if (!v36)
  {
    v74 = *(a1 + 32);
    if (v74 && v74[6] == 3)
    {
      v75 = objc_getProperty(v74, v39, 56, 1);
      v76 = [v75 domain];
      if ([v76 isEqual:@"NEIKEv2ErrorDomain"])
      {
        v78 = *(a1 + 32);
        if (v78)
        {
          v78 = objc_getProperty(v78, v77, 56, 1);
        }

        v79 = v78;
        v80 = [v79 code];

        if (v80 == 5)
        {
          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v82 = *(a1 + 40);
            LODWORD(v433) = 138412290;
            *(&v433 + 4) = v82;
            _os_log_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_DEFAULT, "%@ Received server redirect in IKE Auth (connect)", &v433, 0xCu);
          }

          v84 = [NEIKEv2DeleteIKEContext alloc];
          v85 = *(a1 + 40);
          if (v85)
          {
            v85 = objc_getProperty(v85, v83, 384, 1);
          }

          v86 = v85;
          v418[0] = MEMORY[0x1E69E9820];
          v418[1] = 3221225472;
          v418[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_216;
          v418[3] = &unk_1E7F081C0;
          v418[4] = *(a1 + 40);
          v419 = v3;
          v87 = [(NEIKEv2DeleteIKEContext *)&v84->super.super.isa initDeleteIKEWithResponse:v86 callbackQueue:v418 callback:?];

          [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v87];
          goto LABEL_226;
        }
      }

      else
      {
      }
    }

    v88 = ne_log_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v260 = *(a1 + 40);
      LODWORD(v433) = 138412290;
      *(&v433 + 4) = v260;
      _os_log_error_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth packet (connect)", &v433, 0xCu);
    }

    v90 = *(a1 + 32);
    if (!v90 || *(v90 + 48) != 1)
    {
      v98 = *(a1 + 40);
      if (v98)
      {
        v98 = objc_getProperty(v98, v89, 352, 1);
      }

      v99 = v98;
      v107 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process IKE Auth packet (connect)", v100, v101, v102, v103, v104, v105, v106, v377);
      [(NEIKEv2IKESA *)v99 setState:v107 error:?];

      [(NEIKEv2Session *)*(a1 + 40) reportState];
      [(NEIKEv2Session *)*(a1 + 40) resetAll];
      goto LABEL_226;
    }

    v91 = *(*(*(a1 + 56) + 8) + 40);
    if (v91 && v91[4] == 3)
    {
      v92 = objc_getProperty(v91, v89, 40, 1);
      [(NEIKEv2IKESA *)v90 setState:v92 error:?];
    }

    v94 = [NEIKEv2DeleteIKEContext alloc];
    v95 = *(a1 + 40);
    if (v95)
    {
      v95 = objc_getProperty(v95, v93, 384, 1);
    }

    v96 = v95;
    v417[0] = MEMORY[0x1E69E9820];
    v417[1] = 3221225472;
    v417[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_217;
    v417[3] = &unk_1E7F08740;
    v417[4] = *(a1 + 40);
    v97 = v417;
LABEL_216:
    v242 = [(NEIKEv2DeleteIKEContext *)&v94->super.super.isa initDeleteIKEWithResponse:v96 callbackQueue:v97 callback:?];

    [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v242];
    goto LABEL_226;
  }

  v40 = *(a1 + 40);
  v41 = v3;
  if (v40)
  {
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memset(buf, 0, sizeof(buf));
    v454 = 0u;
    v455 = 0u;
    v402 = v40;
    v404 = v41;
    if (v3)
    {
      v44 = objc_getProperty(v41, v42, 64, 1);
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:buf objects:&v433 count:16];
    if (v46)
    {
      v48 = v46;
      v49 = **&buf[16];
      v50 = &OBJC_IVAR___NEFilterFlow__direction;
      do
      {
        v51 = 0;
        do
        {
          if (**&buf[16] != v49)
          {
            objc_enumerationMutation(v45);
          }

          v52 = *(*&buf[8] + 8 * v51);
          if (v52 && (*(v52 + 32) - 16397) <= 1)
          {
            v53 = objc_getProperty(*(*&buf[8] + 8 * v51), v47, v50[559], 1);
            v54 = v53;
            v55 = *(v52 + 32);
            if (v55 == 16398)
            {
              memset(block, 0, sizeof(block));
              DWORD2(v457) = 0;
              *&v457 = 0;
              if ([v53 length] == 16)
              {
                *block = 7708;
                v56 = &block[8];
                v57 = v54;
                v58 = 16;
LABEL_63:
                [v57 getBytes:v56 length:v58];
                v59 = [MEMORY[0x1E6977E08] endpointWithAddress:block];
              }

              else
              {
                v64 = ne_log_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  v68 = [v54 length];
                  *v429 = 134217984;
                  *&v429[4] = v68;
                  v66 = v64;
                  v67 = "Additional IPv6 address has invalid length %llu";
LABEL_77:
                  _os_log_error_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_ERROR, v67, v429, 0xCu);
                }

LABEL_70:

                v59 = 0;
              }

              if (v59)
              {
                [v43 addObject:v59];
              }
            }

            else
            {
              if (v55 == 16397)
              {
                memset(block, 0, sizeof(block));
                if ([v53 length] == 4)
                {
                  *block = 528;
                  v56 = &block[4];
                  v57 = v54;
                  v58 = 4;
                  goto LABEL_63;
                }

                v64 = ne_log_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  v65 = [v54 length];
                  *v429 = 134217984;
                  *&v429[4] = v65;
                  v66 = v64;
                  v67 = "Additional IPv4 address has invalid length %llu";
                  goto LABEL_77;
                }

                goto LABEL_70;
              }

              v60 = v45;
              v61 = v50;
              v62 = v43;
              v63 = ne_log_obj();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
              {
                *block = 138412290;
                *&block[4] = v52;
                _os_log_fault_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_FAULT, "Cannot copy additional address from notification %@", block, 0xCu);
              }

              v59 = 0;
              v43 = v62;
              v50 = v61;
              v45 = v60;
            }
          }

          ++v51;
        }

        while (v48 != v51);
        v69 = [v45 countByEnumeratingWithState:buf objects:&v433 count:16];
        v48 = v69;
      }

      while (v69);
    }

    v3 = self;
    a1 = v410;
    if (![v43 count])
    {
      goto LABEL_113;
    }

    v71 = v43;
    if (v71)
    {
      if (objc_getProperty(v402, v70, 352, 1))
      {
        v72 = [v402 additionalAddressesUpdateBlock];
        v73 = [v402 clientQueue];
        if (v73 && v72)
        {
          *block = MEMORY[0x1E69E9820];
          *&block[8] = 3221225472;
          *&v457 = __50__NEIKEv2Session_reportServerAdditionalAddresses___block_invoke;
          *(&v457 + 1) = &unk_1E7F0AAA0;
          *&v458 = v402;
          *&v459 = v72;
          *(&v458 + 1) = v71;
          dispatch_async(v73, block);
        }

        goto LABEL_112;
      }

      v72 = ne_log_obj();
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
      {
LABEL_112:

LABEL_113:
        v41 = v404;
        goto LABEL_114;
      }

      *block = 136315138;
      *&block[4] = "[NEIKEv2Session reportServerAdditionalAddresses:]";
      v284 = "%s called with null self.ikeSA";
    }

    else
    {
      v72 = ne_log_obj();
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_112;
      }

      *block = 136315138;
      *&block[4] = "[NEIKEv2Session reportServerAdditionalAddresses:]";
      v284 = "%s called with null additionalAddresses";
    }

    _os_log_fault_impl(&dword_1BA83C000, v72, OS_LOG_TYPE_FAULT, v284, block, 0xCu);
    goto LABEL_112;
  }

LABEL_114:

  [(NEIKEv2Session *)*(a1 + 40) reportPrivateNotifiesInPacket:v41];
  v110 = *(a1 + 40);
  if (v110)
  {
    v110 = v110[51];
  }

  v111 = v110;
  v112 = [v111 count];

  if (v112)
  {
    v114 = *(a1 + 40);
    if (v114)
    {
      v115 = v114[51];
    }

    else
    {
      v115 = 0;
    }

    v116 = v115;
    [(NEIKEv2Session *)v114 reportPrivateNotifies:v116];

    [(NEIKEv2Session *)*(a1 + 40) setPendingPrivateNotifies:?];
  }

  v117 = *(*(*(a1 + 56) + 8) + 40);
  if (v117 && ([(NEIKEv2ChildSA *)v117 generateAllValues]& 1) == 0)
  {
    v236 = ne_log_obj();
    if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
    {
      v267 = *(a1 + 40);
      LODWORD(v433) = 138412290;
      *(&v433 + 4) = v267;
      _os_log_error_impl(&dword_1BA83C000, v236, OS_LOG_TYPE_ERROR, "%@ Failed to generate Child SA crypto values (connect)", &v433, 0xCu);
    }

    v94 = [NEIKEv2DeleteIKEContext alloc];
    v238 = *(a1 + 40);
    if (v238)
    {
      v238 = objc_getProperty(v238, v237, 384, 1);
    }

    v96 = v238;
    v416[0] = MEMORY[0x1E69E9820];
    v416[1] = 3221225472;
    v416[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_221;
    v416[3] = &unk_1E7F08740;
    v416[4] = *(a1 + 40);
    v97 = v416;
    goto LABEL_216;
  }

  [(NEIKEv2Session *)*(a1 + 40) finishConfigurationEstablishment];
  [(NEIKEv2Session *)*(a1 + 40) reportConfiguration];
  v119 = *(a1 + 40);
  if (v119)
  {
    v120 = [MEMORY[0x1E696AE30] processInfo];
    v121 = [v120 processName];

    if (([&unk_1F38BA850 containsObject:v121] & 1) == 0)
    {
      v123 = objc_getProperty(v119, v122, 352, 1);
      v125 = v123;
      if (v123)
      {
        v123 = objc_getProperty(v123, v124, 96, 1);
      }

      v126 = v123;
      v128 = [(NEIKEv2Session *)v119 firstChildSA];
      v130 = v128;
      if (v128)
      {
        v128 = objc_getProperty(v128, v129, 56, 1);
      }

      v131 = v128;

      if (v126)
      {
        v133 = objc_getProperty(v126, v132, 104, 1);
      }

      else
      {
        v133 = 0;
      }

      v134 = v133;
      v406 = [v134 description];

      if (v126)
      {
        v136 = objc_getProperty(v126, v135, 112, 1);
      }

      else
      {
        v136 = 0;
      }

      v137 = v136;
      v405 = [v137 description];

      if (v126)
      {
        v139 = objc_getProperty(v126, v138, 120, 1);
      }

      else
      {
        v139 = 0;
      }

      v140 = v139;
      v403 = [v140 description];

      if (v126)
      {
        v142 = objc_getProperty(v126, v141, 128, 1);
      }

      else
      {
        v142 = 0;
      }

      v143 = v142;
      v401 = [v143 description];

      if (v125)
      {
        v145 = objc_getProperty(v125, v144, 144, 1);
      }

      else
      {
        v145 = 0;
      }

      v146 = v145;
      v147 = MEMORY[0x1E695E118];
      v148 = MEMORY[0x1E695E110];
      if (v146)
      {
        v149 = MEMORY[0x1E695E118];
      }

      else
      {
        v149 = MEMORY[0x1E695E110];
      }

      v400 = v149;

      if (v125)
      {
        v151 = objc_getProperty(v125, v150, 280, 1);
      }

      else
      {
        v151 = 0;
      }

      v152 = v151;
      if (v152)
      {
        v153 = v147;
      }

      else
      {
        v153 = v148;
      }

      v399 = v153;

      if (v131)
      {
        v155 = objc_getProperty(v131, v154, 96, 1);
      }

      else
      {
        v155 = 0;
      }

      v156 = v155;
      v397 = [v156 description];

      if (v131)
      {
        v158 = objc_getProperty(v131, v157, 104, 1);
      }

      else
      {
        v158 = 0;
      }

      v159 = v158;
      v395 = [v159 description];

      if (v125)
      {
        v160 = v125[55];
      }

      else
      {
        v160 = 0;
      }

      v161 = v160;
      v390 = [v161 description];

      if (v125)
      {
        v162 = v125[56];
      }

      else
      {
        v162 = 0;
      }

      v163 = v162;
      v388 = [v163 description];

      if (v125)
      {
        v165 = objc_getProperty(v125, v164, 456, 1);
        v167 = v165;
        if (v165)
        {
          v386 = [objc_getProperty(v165 v166];
        }

        else
        {
          v386 = 0;
        }

        v168 = MEMORY[0x1E696AD98];
        v170 = objc_getProperty(v125, v169, 128, 1);
      }

      else
      {
        v386 = 0;
        v170 = 0;
        v168 = MEMORY[0x1E696AD98];
      }

      v171 = v170;
      v385 = [v168 numberWithUnsignedInteger:{objc_msgSend(v171, "length")}];

      v173 = MEMORY[0x1E696AD98];
      if (v125)
      {
        v174 = objc_getProperty(v125, v172, 136, 1);
      }

      else
      {
        v174 = 0;
      }

      v175 = v174;
      v383 = [v173 numberWithUnsignedInteger:{objc_msgSend(v175, "length")}];

      v393 = v131;
      if (v126)
      {
        v177 = objc_getProperty(v126, v176, 136, 1);
      }

      else
      {
        v177 = 0;
      }

      v178 = v177;
      v381 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v178, "count")}];
      v180 = MEMORY[0x1E696AD98];
      if (v125)
      {
        v181 = objc_getProperty(v125, v179, 88, 1);
      }

      else
      {
        v181 = 0;
      }

      v407 = v121;
      v182 = v181;
      v379 = [v180 numberWithBool:{objc_msgSend(v182, "allowPostQuantumKeyExchangeFallbackForAnalytics")}];

      v183 = 7;
      v184 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
      do
      {
        [v184 addObject:@"<unknown>"];
        --v183;
      }

      while (v183);
      v392 = v125;
      v394 = v126;
      v185 = [(NEIKEv2IKESAProposal *)v126 chosenAdditionalKEMProtocols];
      *block = 0u;
      v457 = 0u;
      v458 = 0u;
      v459 = 0u;
      v186 = v178;
      v187 = [v186 countByEnumeratingWithState:block objects:buf count:16];
      if (v187)
      {
        v188 = v187;
        v189 = *v457;
        do
        {
          for (i = 0; i != v188; ++i)
          {
            if (*v457 != v189)
            {
              objc_enumerationMutation(v186);
            }

            v191 = *(*&block[8] + 8 * i);
            v192 = [v191 unsignedIntegerValue] - 6;
            v193 = [v185 objectForKeyedSubscript:v191];
            v194 = [v193 description];
            [v184 setObject:v194 atIndexedSubscript:v192];
          }

          v188 = [v186 countByEnumeratingWithState:block objects:buf count:16];
        }

        while (v188);
      }

      *&v433 = MEMORY[0x1E69E9820];
      *(&v433 + 1) = 3221225472;
      v434 = __48__NEIKEv2Session_sendAnalyticsOfChosenProtocols__block_invoke;
      v435 = &unk_1E7F08B80;
      v436 = v406;
      v437 = v405;
      v438 = v403;
      v439 = v401;
      v440 = v400;
      v441 = v399;
      v442 = v397;
      v443 = v395;
      v444 = v390;
      v445 = v388;
      v446 = v386;
      v447 = v385;
      v448 = v383;
      v449 = v407;
      v450 = v379;
      v451 = v381;
      v452 = v184;
      v378 = v184;
      v382 = v381;
      v380 = v379;
      v384 = v383;
      v195 = v385;
      v387 = v386;
      v389 = v388;
      v391 = v390;
      v396 = v395;
      v398 = v397;
      v121 = v407;
      v196 = v399;
      v197 = v400;
      v198 = v401;
      v199 = v403;
      v200 = v405;
      v201 = v406;
      AnalyticsSendEventLazy();

      v3 = self;
      a1 = v410;
    }
  }

  [(NEIKEv2IKESA *)*(a1 + 32) setLocalAuthProtocolUsed:?];
  [(NEIKEv2IKESA *)*(a1 + 32) setRemoteAuthProtocolUsed:?];
  [(NEIKEv2IKESA *)*(a1 + 32) clearPostAuthenticationData];
  v203 = *(*(*(a1 + 56) + 8) + 40);
  if (v203 && ([(NEIKEv2Session *)*(a1 + 40) installChildSA:v203]& 1) == 0)
  {
    v239 = ne_log_obj();
    if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
    {
      v295 = *(a1 + 40);
      LODWORD(v433) = 138412290;
      *(&v433 + 4) = v295;
      _os_log_error_impl(&dword_1BA83C000, v239, OS_LOG_TYPE_ERROR, "%@ Failed to install Child SA (connect)", &v433, 0xCu);
    }

    v94 = [NEIKEv2DeleteIKEContext alloc];
    v241 = *(a1 + 40);
    if (v241)
    {
      v241 = objc_getProperty(v241, v240, 384, 1);
    }

    v96 = v241;
    v415[0] = MEMORY[0x1E69E9820];
    v415[1] = 3221225472;
    v415[2] = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_225;
    v415[3] = &unk_1E7F08740;
    v415[4] = *(a1 + 40);
    v97 = v415;
    goto LABEL_216;
  }

  v204 = *(a1 + 40);
  if (!v204)
  {
    goto LABEL_221;
  }

  WeakRetained = objc_loadWeakRetained((v204 + 368));

  if (!WeakRetained)
  {
    goto LABEL_221;
  }

  v413 = 0u;
  v414 = 0u;
  v411 = 0u;
  v412 = 0u;
  v207 = *(a1 + 48);
  if (v207 && (v208 = objc_getProperty(v207, v206, 152, 1)) != 0)
  {
    v210 = v208;
    v211 = objc_getProperty(v208, v209, 32, 1);
    v213 = v211;
    if (v211)
    {
      v211 = objc_getProperty(v211, v212, 16, 1);
    }
  }

  else
  {
    v213 = 0;
    v210 = 0;
    v211 = 0;
  }

  v214 = v211;

  v215 = [v214 countByEnumeratingWithState:&v411 objects:v420 count:16];
  if (!v215)
  {

    goto LABEL_221;
  }

  v216 = v215;
  v217 = v3;
  v218 = 0;
  v219 = *v412;
  do
  {
    v220 = 0;
    do
    {
      if (*v412 != v219)
      {
        objc_enumerationMutation(v214);
      }

      v221 = *(*(&v411 + 1) + 8 * v220);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v223 = [v221 address];
        v224 = *(a1 + 40);
        if (!v224)
        {
          goto LABEL_200;
        }

        v225 = objc_getProperty(v224, v222, 352, 1);
        v227 = v225;
        if (v225)
        {
          v228 = v223;
          v229 = 64;
LABEL_196:
          objc_setProperty_atomic(v225, v226, v228, v229);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_198;
        }

        v223 = [v221 address];
        v231 = *(a1 + 40);
        if (!v231)
        {
LABEL_200:
          v227 = 0;
          goto LABEL_197;
        }

        v225 = objc_getProperty(v231, v230, 352, 1);
        v227 = v225;
        if (v225)
        {
          v228 = v223;
          v229 = 72;
          goto LABEL_196;
        }
      }

LABEL_197:

      v218 = 1;
LABEL_198:
      ++v220;
    }

    while (v216 != v220);
    v232 = [v214 countByEnumeratingWithState:&v411 objects:v420 count:16];
    v216 = v232;
  }

  while (v232);

  v3 = v217;
  if (v218)
  {
    v233 = ne_log_obj();
    if (os_log_type_enabled(v233, OS_LOG_TYPE_INFO))
    {
      v234 = *(a1 + 40);
      LODWORD(v433) = 138412290;
      *(&v433 + 4) = v234;
      _os_log_impl(&dword_1BA83C000, v233, OS_LOG_TYPE_INFO, "%@ Changing addresses and migrating (connect)", &v433, 0xCu);
    }

    [(NEIKEv2Session *)*(a1 + 40) migrateAllChildSAs];
  }

LABEL_221:
  v246 = ne_log_obj();
  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
  {
    v247 = *(a1 + 40);
    LODWORD(v433) = 138412290;
    *(&v433 + 4) = v247;
    _os_log_impl(&dword_1BA83C000, v246, OS_LOG_TYPE_DEFAULT, "%@ Completed connection (connect)", &v433, 0xCu);
  }

  [(NEIKEv2IKESA *)*(a1 + 32) setState:0 error:?];
  v248 = *(*(*(a1 + 56) + 8) + 40);
  if (v248)
  {
    [(NEIKEv2Session *)*(a1 + 40) reportTrafficSelectorsForChildSA:v248];
    [(NEIKEv2ChildSA *)*(*(*(a1 + 56) + 8) + 40) setState:0 error:?];
  }

  [(NEIKEv2Session *)*(a1 + 40) reportState];
LABEL_226:

  v249 = *MEMORY[0x1E69E9840];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_216(uint64_t a1)
{
  [(NEIKEv2Session *)*(a1 + 32) reportServerRedirect:?];
  v3 = *(a1 + 32);

  [(NEIKEv2Session *)v3 resetAll];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_221(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA crypto values (connect)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke_225(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to install Child SA (connect)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

- (uint64_t)setupReceivedChildCopyError
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = objc_getProperty(self, a2, 384, 1);
    dispatch_assert_queue_V2(v3);

    firstChildSA = [(NEIKEv2Session *)self firstChildSA];
    v7 = firstChildSA;
    if (firstChildSA)
    {
      *(firstChildSA + 9) = 0;
      [(NEIKEv2ChildSA *)firstChildSA setState:0 error:?];
      [(NEIKEv2Session *)self reportState];
      v10 = objc_getProperty(v7, v9, 48, 1);
      proposals = [v10 proposals];
      v12 = [(NEIKEv2Session *)self generateSPIForChild:v7 proposals:proposals];

      ErrorInternal = 0;
      if ((v12 & 1) == 0)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v29 = 138412290;
          *&v29[4] = self;
          _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ Failed to generate Child SA SPI (receive)", v29, 0xCu);
        }

        v22 = @"Failed to generate Child SA SPI (receive)";
LABEL_14:
        ErrorInternal = NEIKEv2CreateErrorInternal(v22, v15, v16, v17, v18, v19, v20, v21, *v29);
      }
    }

    else
    {
      v23 = objc_getProperty(self, v6, 352, 1);
      if (!v23 || (v24 = v23[23], v23, (v24 & 1) == 0))
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v29 = 138412290;
          *&v29[4] = self;
          _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "%@ Failed to get childSA receiver", v29, 0xCu);
        }

        v22 = @"Failed to get childSA receiver";
        goto LABEL_14;
      }

      [(NEIKEv2Session *)self reportState];
      ErrorInternal = 0;
    }

    goto LABEL_16;
  }

  ErrorInternal = 0;
LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
  return ErrorInternal;
}

void __58__NEIKEv2Session_Exchange__setupReceivedChildWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v9 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 384, 1);
  }

  v11 = Property;
  dispatch_assert_queue_V2(v11);

  v13 = *(a1 + 32);
  if (!v13 || (*(v13 + 13) & 1) == 0)
  {
    ErrorInternal = ne_log_obj();
    if (os_log_type_enabled(ErrorInternal, OS_LOG_TYPE_FAULT))
    {
      v29 = *(a1 + 32);
      *v52 = 138412290;
      *&v52[4] = v29;
      _os_log_fault_impl(&dword_1BA83C000, ErrorInternal, OS_LOG_TYPE_FAULT, "%@ already received config block", v52, 0xCu);
    }

    goto LABEL_35;
  }

  *(v13 + 13) = 0;
  if (!v7)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = *(a1 + 32);
      *v52 = 138412290;
      *&v52[4] = v35;
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Listener rejected this IKEv2 inbound connection by sending back nil sessionConfig", v52, 0xCu);
    }

    v26 = *(a1 + 40);
    v27 = @"Listener rejected this IKEv2 inbound connection by sending back nil sessionConfig";
    goto LABEL_34;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = objc_getProperty(v14, v12, 352, 1);
    if (v15)
    {
      v16 = v15[23];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
LABEL_9:

  if (!v9 && (v16 & 1) == 0)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1 + 32);
      *v52 = 138412290;
      *&v52[4] = v36;
      _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Listener rejected this IKEv2 inbound connection by sending back nil childConfig", v52, 0xCu);
    }

    v26 = *(a1 + 40);
    v27 = @"Listener rejected this IKEv2 inbound connection by sending back nil childConfig";
LABEL_34:
    ErrorInternal = NEIKEv2CreateErrorInternal(v27, v19, v20, v21, v22, v23, v24, v25, *v52);
    (*(v26 + 16))(v26, ErrorInternal);
    goto LABEL_35;
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = objc_getProperty(v31, v17, 352, 1);
    if (v32)
    {
      v33 = v32[23];

      if (v9)
      {
        if (v33)
        {
          v34 = ne_log_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            v37 = *(a1 + 32);
            *v52 = 138412290;
            *&v52[4] = v37;
            _os_log_fault_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_FAULT, "%@ Listener sent back non-nil childConfig for childless SA connection", v52, 0xCu);
          }

          v26 = *(a1 + 40);
          v27 = @"Listener sent back non-nil childConfig for childless SA connection";
          goto LABEL_34;
        }
      }
    }
  }

  if (a4)
  {
    v38 = *(a1 + 32);
    if (v38 && *(v38 + 344))
    {
      v39 = ne_log_obj();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *v52 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_FAULT, "Tried to set ipsecInterface when already set", v52, 2u);
      }

      v26 = *(a1 + 40);
      v27 = @"Tried to set ipsecInterface when already set";
      goto LABEL_34;
    }

    v41 = CFRetain(a4);
    v42 = *(a1 + 32);
    if (v42)
    {
      *(v42 + 344) = v41;
    }
  }

  v43 = ne_log_large_obj();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = *(a1 + 32);
    *v52 = 138412802;
    *&v52[4] = v44;
    v53 = 2112;
    v54 = v7;
    v55 = 2112;
    v56 = v9;
    _os_log_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_INFO, "%@ Received responseSessionConfig %@ responseChildConfig %@", v52, 0x20u);
  }

  v46 = *(a1 + 32);
  if (v46)
  {
    v47 = objc_getProperty(v46, v45, 352, 1);
    v49 = v47;
    if (v47)
    {
      objc_setProperty_atomic(v47, v48, v7, 88);
    }
  }

  else
  {
    v49 = 0;
  }

  if (v9)
  {
    [(NEIKEv2Session *)*(a1 + 32) addFirstChild:v9];
  }

  v51 = *(a1 + 40);
  ErrorInternal = [(NEIKEv2Session *)*(a1 + 32) setupReceivedChildCopyError];
  (*(v51 + 16))(v51, ErrorInternal);
LABEL_35:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)receiveConnection:(void *)connection
{
  v275[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!connection)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_161;
  }

  v5 = objc_getProperty(connection, v3, 384, 1);
  dispatch_assert_queue_V2(v5);

  v7 = objc_getProperty(connection, v6, 352, 1);
  if (!v7)
  {
LABEL_161:
    v245 = ne_log_obj();
    if (os_log_type_enabled(v245, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      connectionCopy12 = "[NEIKEv2Session(Exchange) receiveConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v245, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = v7;
  if (v4)
  {
    v10 = v4[7];
    if (v10)
    {
      v16 = ne_log_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 138412546;
      connectionCopy12 = connection;
      v273 = 1024;
      v274 = v10;
      v17 = "%@ Dropping IKE_SA_INIT with wrong message ID %d";
      v189 = v16;
      v190 = 18;
      goto LABEL_92;
    }
  }

  v11 = objc_getProperty(v7, v8, 80, 1);
  serverMode = [v11 serverMode];

  if ((serverMode & 1) == 0)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      connectionCopy12 = connection;
      v17 = "%@ Dropping IKE_SA_INIT sent to non-server session";
      goto LABEL_91;
    }

LABEL_10:

    goto LABEL_11;
  }

  v14 = objc_getProperty(v9, v13, 96, 1);

  v15 = ne_log_obj();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      connectionCopy12 = connection;
      v17 = "%@ Dropping IKE_SA_INIT sent to session that already selected proposal";
LABEL_91:
      v189 = v16;
      v190 = 12;
LABEL_92:
      _os_log_error_impl(&dword_1BA83C000, v189, OS_LOG_TYPE_ERROR, v17, buf, v190);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    connectionCopy12 = connection;
    _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@ Starting IKEv2 responder from SA_INIT", buf, 0xCu);
  }

  v9[9] = 0;
  [(NEIKEv2IKESA *)v9 setState:0 error:?];
  [(NEIKEv2Session *)connection reportState];
  v21 = objc_getProperty(v9, v20, 304, 1);

  if (!v21)
  {
    ikeInterfaceName = [connection ikeInterfaceName];
    objc_setProperty_atomic(v9, v23, ikeInterfaceName, 304);
  }

  v259 = 7;
  if (([(NEIKEv2IKESAInitPacket *)v4 validateSAInitAsResponder:v9 errorCodeToSend:&v259]& 1) == 0)
  {
    if (v259 == 17)
    {
      Property = objc_getProperty(v4, v24, 104, 1);
      v146 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v145, 32, 1);
      }

      v16 = Property;

      v148 = objc_getProperty(v9, v147, 96, 1);
      kemProtocol = [(NEIKEv2IKESAProposal *)v148 kemProtocol];

      *v269 = bswap32([kemProtocol method]) >> 16;
      v151 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v269 length:2];
      v152 = [NEIKEv2IKESAInitPacket createIKESAInitResponse:v4 errorCode:0x11uLL errorData:v151];

      if (v152)
      {
        v153 = [(NEIKEv2Session *)connection sendReply:v152 replyHandler:0];
        v162 = objc_getProperty(connection, v154, 352, 1);
        if (v153)
        {
          ErrorCrypto = NEIKEv2CreateErrorCrypto(@"KE method received in IKE SA Init packet (%@) doesn't match selected (%@) (receive)", v155, v156, v157, v158, v159, v160, v161, v16);
        }

        else
        {
          ErrorCrypto = NEIKEv2CreateErrorFailedToSend(@"SA INIT INVALID KE", v155, v156, v157, v158, v159, v160, v161, v246);
        }
      }

      else
      {
        v191 = ne_log_obj();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          connectionCopy12 = connection;
          _os_log_error_impl(&dword_1BA83C000, v191, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init Invalid KE packet", buf, 0xCu);
        }

        v162 = objc_getProperty(connection, v192, 352, 1);
        ErrorCrypto = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init Invalid KE packet", v193, v194, v195, v196, v197, v198, v199, v246);
      }

      v209 = ErrorCrypto;
      [(NEIKEv2IKESA *)v162 setState:ErrorCrypto error:?];

      [(NEIKEv2Session *)connection reportState];
      [(NEIKEv2Session *)connection resetAll];
    }

    else
    {
      v177 = ne_log_obj();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        connectionCopy12 = connection;
        _os_log_error_impl(&dword_1BA83C000, v177, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE SA Init packet (receive)", buf, 0xCu);
      }

      v16 = [NEIKEv2IKESAInitPacket createIKESAInitResponse:v4 errorCode:v259 errorData:0];
      if (v16)
      {
        v178 = [(NEIKEv2Session *)connection sendReply:v16 replyHandler:0];
        v187 = objc_getProperty(connection, v179, 352, 1);
        if (v178)
        {
          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process IKE SA Init packet (receive)", v180, v181, v182, v183, v184, v185, v186, v246);
        }

        else
        {
          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorFailedToSend(@"SA INIT refusal", v180, v181, v182, v183, v184, v185, v186, v246);
        }
      }

      else
      {
        v200 = ne_log_obj();
        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          connectionCopy12 = connection;
          _os_log_error_impl(&dword_1BA83C000, v200, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init refusal packet", buf, 0xCu);
        }

        v187 = objc_getProperty(connection, v201, 352, 1);
        ErrorPeerInvalidSyntax = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init refusal packet", v202, v203, v204, v205, v206, v207, v208, v246);
      }

      v212 = ErrorPeerInvalidSyntax;
      [(NEIKEv2IKESA *)v187 setState:ErrorPeerInvalidSyntax error:?];

      [(NEIKEv2Session *)connection reportState];
      [(NEIKEv2Session *)connection resetAll];
    }

    goto LABEL_10;
  }

  if (([(NEIKEv2IKESA *)v9 generateInitialValues]& 1) != 0)
  {
    v25 = v4;
    v26 = v9;
    objc_opt_self();
    v28 = objc_getProperty(v26, v27, 96, 1);

    if (!v28)
    {
      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        connectionCopy12 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitResponse:ikeSA:]";
        _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.chosenProposal", buf, 0xCu);
      }

      v143 = 0;
LABEL_118:

      if (v143)
      {
        generateAllValuesForSAInit = [(NEIKEv2IKESA *)v26 generateAllValuesForSAInit];
        v218 = ne_log_obj();
        v219 = v218;
        if (generateAllValuesForSAInit)
        {
          if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            connectionCopy12 = connection;
            _os_log_impl(&dword_1BA83C000, v219, OS_LOG_TYPE_DEFAULT, "%@ Sending SA_INIT reply", buf, 0xCu);
          }

          v256[0] = MEMORY[0x1E69E9820];
          v256[1] = 3221225472;
          v256[2] = __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke;
          v256[3] = &unk_1E7F083A0;
          v257 = v26;
          connectionCopy9 = connection;
          [(NEIKEv2Session *)connection handleIKEIntermediateForResponderIKESA:v257 iteration:0 replyPacket:v143 replyPacketDescription:@"responder SA INIT" handler:v256];

          goto LABEL_130;
        }

        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          connectionCopy12 = connection;
          _os_log_error_impl(&dword_1BA83C000, v219, OS_LOG_TYPE_ERROR, "%@ Failed to generate crypto values (receive)", buf, 0xCu);
        }

        v222 = objc_getProperty(connection, v231, 352, 1);
        ErrorInternal = NEIKEv2CreateErrorCrypto(@"Failed to generate crypto values (receive)", v232, v233, v234, v235, v236, v237, v238, v246);
      }

      else
      {
        v220 = ne_log_obj();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          connectionCopy12 = connection;
          _os_log_error_impl(&dword_1BA83C000, v220, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init packet (receive)", buf, 0xCu);
        }

        v222 = objc_getProperty(connection, v221, 352, 1);
        ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init packet (receive)", v223, v224, v225, v226, v227, v228, v229, v246);
      }

      v239 = ErrorInternal;
      [(NEIKEv2IKESA *)v222 setState:ErrorInternal error:?];

      [(NEIKEv2Session *)connection reportState];
      [(NEIKEv2Session *)connection resetAll];
LABEL_130:

      goto LABEL_11;
    }

    v29 = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initResponse:v25];
    if (!v29)
    {
      v81 = ne_log_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKESAInitPacket alloc] initResponse:] failed", buf, 2u);
      }

      v143 = 0;
      goto LABEL_117;
    }

    v254 = v25;
    v30 = objc_alloc_init(NEIKEv2IKESAPayload);
    objc_setProperty_atomic(v29, v31, v30, 96);

    self = v26;
    v33 = objc_getProperty(v26, v32, 96, 1);
    v275[0] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v275 count:1];
    v36 = objc_getProperty(v29, v35, 96, 1);
    v38 = v36;
    if (v36)
    {
      objc_setProperty_atomic(v36, v37, v34, 32);
    }

    v40 = objc_getProperty(v29, v39, 96, 1);
    isValid = [(NEIKEv2Payload *)v40 isValid];

    if (isValid)
    {
      v42 = objc_alloc_init(NEIKEv2KeyExchangePayload);
      objc_setProperty_atomic(v29, v43, v42, 104);

      v45 = objc_getProperty(self, v44, 96, 1);
      kemProtocol2 = [(NEIKEv2IKESAProposal *)v45 kemProtocol];
      v49 = objc_getProperty(v29, v48, 104, 1);
      v51 = v49;
      if (v49)
      {
        objc_setProperty_atomic(v49, v50, kemProtocol2, 32);
      }

      v53 = objc_getProperty(self, v52, 160, 1);
      v54 = v53;
      if (v53)
      {
        v55 = *(v53 + 2);
      }

      else
      {
        v55 = 0;
      }

      v56 = v55;
      v58 = objc_getProperty(v29, v57, 104, 1);
      v60 = v58;
      if (v58)
      {
        objc_setProperty_atomic(v58, v59, v56, 40);
      }

      v62 = objc_getProperty(v29, v61, 104, 1);
      isValid2 = [(NEIKEv2Payload *)v62 isValid];

      if (isValid2)
      {
        v64 = objc_alloc_init(NEIKEv2NoncePayload);
        objc_setProperty_atomic(v29, v65, v64, 112);

        v26 = self;
        v67 = objc_getProperty(self, v66, 128, 1);
        v69 = objc_getProperty(v29, v68, 112, 1);
        v71 = v69;
        if (v69)
        {
          objc_setProperty_atomic(v69, v70, v67, 32);
        }

        v73 = objc_getProperty(v29, v72, 112, 1);
        isValid3 = [(NEIKEv2Payload *)v73 isValid];

        if (isValid3)
        {
          initiatorSPI = [(NEIKEv2IKESA *)self initiatorSPI];
          responderSPI = [(NEIKEv2IKESA *)self responderSPI];
          v80 = objc_getProperty(self, v79, 64, 1);
          v81 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v80];

          if (![(NEIKEv2Packet *)v29 addNotification:v81 data:?])
          {
            v89 = ne_log_obj();
            v25 = v254;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
            }

            v143 = 0;
            v26 = self;
            goto LABEL_156;
          }

          v248 = v81;
          initiatorSPI2 = [(NEIKEv2IKESA *)self initiatorSPI];
          responderSPI2 = [(NEIKEv2IKESA *)self responderSPI];
          v87 = objc_getProperty(self, v86, 72, 1);
          v88 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v87];

          v89 = v88;
          if ([(NEIKEv2Packet *)v29 addNotification:v88 data:?])
          {
            if ([(NEIKEv2Packet *)v29 addNotification:0 data:?])
            {
              v247 = v88;
              v91 = objc_getProperty(self, v90, 80, 1);
              extraSupportedSignatureHashes = [v91 extraSupportedSignatureHashes];
              remoteAuthentication = [(NEIKEv2IKESA *)self remoteAuthentication];
              v95 = [NEIKEv2Crypto copySignHashDataForSet:extraSupportedSignatureHashes authentication:remoteAuthentication];

              log = v95;
              if (v95 && ![(NEIKEv2Packet *)v29 addNotification:v95 data:?])
              {
                v242 = ne_log_obj();
                if (!os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_152;
                }

                *buf = 0;
                v243 = "[packet addNotification:NEIKEv2NotifyTypeSignatureHashAlgorithms] failed";
              }

              else
              {
                v97 = objc_getProperty(self, v96, 80, 1);
                requestChildlessSA = [v97 requestChildlessSA];

                if (requestChildlessSA && ![(NEIKEv2Packet *)v29 addNotification:0 data:?])
                {
                  v242 = ne_log_obj();
                  if (!os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_152;
                  }

                  *buf = 0;
                  v243 = "[packet addNotification:NEIKEv2NotifyTypeChildlessIKEv2Supported] failed";
                }

                else
                {
                  if ((self[3] & 1) == 0 || [(NEIKEv2Packet *)v29 addNotification:0 data:?])
                  {
                    v100 = objc_getProperty(self, v99, 96, 1);
                    v102 = v100;
                    if (v100)
                    {
                      v100 = objc_getProperty(v100, v101, 136, 1);
                    }

                    v103 = v100;

                    if (!v103 || [(NEIKEv2Packet *)v29 addNotification:0 data:?])
                    {
                      v104 = self;
                      v105 = self[13];

                      if (!v105)
                      {
LABEL_49:
                        v266 = 0u;
                        v267 = 0u;
                        v265 = 0u;
                        v264 = 0u;
                        v110 = objc_getProperty(v104, v106, 80, 1);
                        customIKESAInitVendorPayloads = [v110 customIKESAInitVendorPayloads];

                        v252 = [customIKESAInitVendorPayloads countByEnumeratingWithState:&v264 objects:buf count:16];
                        if (v252)
                        {
                          v250 = *v265;
                          do
                          {
                            for (i = 0; i != v252; ++i)
                            {
                              if (*v265 != v250)
                              {
                                objc_enumerationMutation(customIKESAInitVendorPayloads);
                              }

                              v113 = *(*(&v264 + 1) + 8 * i);
                              v114 = objc_alloc_init(NEIKEv2VendorIDPayload);
                              vendorData = [v113 vendorData];
                              if (v114)
                              {
                                objc_setProperty_atomic(v114, v115, vendorData, 32);
                              }

                              v118 = objc_getProperty(v29, v117, 120, 1);

                              if (v118)
                              {
                                v120 = objc_getProperty(v29, v119, 120, 1);
                                v121 = [v120 arrayByAddingObject:v114];
                                objc_setProperty_atomic(v29, v122, v121, 120);
                              }

                              else
                              {
                                v270 = v114;
                                v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v270 count:1];
                                objc_setProperty_atomic(v29, v123, v120, 120);
                              }
                            }

                            v252 = [customIKESAInitVendorPayloads countByEnumeratingWithState:&v264 objects:buf count:16];
                          }

                          while (v252);
                        }

                        v262 = 0u;
                        v263 = 0u;
                        v260 = 0u;
                        v261 = 0u;
                        v125 = objc_getProperty(self, v124, 80, 1);
                        customIKESAInitPayloads = [v125 customIKESAInitPayloads];

                        v251 = customIKESAInitPayloads;
                        v127 = [customIKESAInitPayloads countByEnumeratingWithState:&v260 objects:v269 count:16];
                        if (v127)
                        {
                          v128 = v127;
                          v253 = *v261;
                          do
                          {
                            v129 = 0;
                            do
                            {
                              if (*v261 != v253)
                              {
                                objc_enumerationMutation(v251);
                              }

                              v130 = *(*(&v260 + 1) + 8 * v129);
                              v131 = objc_alloc_init(NEIKEv2CustomPayload);
                              customType = [v130 customType];
                              if (v131)
                              {
                                v131->_customType = customType;
                                customData = [v130 customData];
                                objc_setProperty_atomic(v131, v134, customData, 40);
                              }

                              else
                              {
                                customData = [v130 customData];
                              }

                              v136 = objc_getProperty(v29, v135, 56, 1);

                              if (v136)
                              {
                                v138 = objc_getProperty(v29, v137, 56, 1);
                                v139 = [v138 arrayByAddingObject:v131];
                                objc_setProperty_atomic(v29, v140, v139, 56);
                              }

                              else
                              {
                                v268 = v131;
                                v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
                                objc_setProperty_atomic(v29, v141, v138, 56);
                              }

                              ++v129;
                            }

                            while (v128 != v129);
                            v142 = [v251 countByEnumeratingWithState:&v260 objects:v269 count:16];
                            v128 = v142;
                          }

                          while (v142);
                        }

                        v143 = v29;
                        goto LABEL_154;
                      }

                      v107 = self[13];
                      v108 = bswap32([v107 securePasswordMethod]) >> 16;

                      *buf = v108;
                      v109 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:2];
                      if ([(NEIKEv2Packet *)v29 addNotification:v109 data:?])
                      {

                        v104 = self;
                        goto LABEL_49;
                      }

                      v244 = ne_log_obj();
                      if (os_log_type_enabled(v244, OS_LOG_TYPE_FAULT))
                      {
                        *v269 = 0;
                        _os_log_fault_impl(&dword_1BA83C000, v244, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeSecurePasswordMethods] failed", v269, 2u);
                      }

LABEL_153:
                      v143 = 0;
LABEL_154:
                      v25 = v254;
                      v26 = self;
                      v89 = v247;
                      v81 = v248;
                      goto LABEL_155;
                    }

                    v242 = ne_log_obj();
                    if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      v243 = "[packet addNotification:NEIKEv2NotifyTypeIntermediateExchangeSupported] failed";
                      goto LABEL_151;
                    }

LABEL_152:

                    goto LABEL_153;
                  }

                  v242 = ne_log_obj();
                  if (!os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_152;
                  }

                  *buf = 0;
                  v243 = "[packet addNotification:NEIKEv2NotifyTypeUsePPK] failed";
                }
              }

LABEL_151:
              _os_log_fault_impl(&dword_1BA83C000, v242, OS_LOG_TYPE_FAULT, v243, buf, 2u);
              goto LABEL_152;
            }

            log = ne_log_obj();
            v25 = v254;
            v26 = self;
            if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, log, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeIKEv2FragmentationSupported] failed", buf, 2u);
            }

            v143 = 0;
          }

          else
          {
            log = ne_log_obj();
            v25 = v254;
            if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, log, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed", buf, 2u);
            }

            v143 = 0;
            v26 = self;
          }

          v81 = v248;
LABEL_155:

LABEL_156:
          goto LABEL_117;
        }

        v81 = ne_log_obj();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          connectionCopy12 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitResponse:ikeSA:]";
          v215 = "%s called with null packet.nonce.isValid";
          goto LABEL_115;
        }

LABEL_116:
        v143 = 0;
LABEL_117:

        goto LABEL_118;
      }

      v81 = ne_log_obj();
      v26 = self;
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_116;
      }

      *buf = 136315138;
      connectionCopy12 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitResponse:ikeSA:]";
      v215 = "%s called with null packet.ke.isValid";
    }

    else
    {
      v81 = ne_log_obj();
      v26 = self;
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_116;
      }

      *buf = 136315138;
      connectionCopy12 = "+[NEIKEv2IKESAInitPacket(Exchange) createIKESAInitResponse:ikeSA:]";
      v215 = "%s called with null packet.sa.isValid";
    }

LABEL_115:
    _os_log_fault_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_FAULT, v215, buf, 0xCu);
    goto LABEL_116;
  }

  v164 = ne_log_obj();
  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    connectionCopy12 = connection;
    _os_log_error_impl(&dword_1BA83C000, v164, OS_LOG_TYPE_ERROR, "%@ Failed to generate local crypto values (receive)", buf, 0xCu);
  }

  v166 = objc_getProperty(connection, v165, 352, 1);
  v174 = NEIKEv2CreateErrorCrypto(@"Failed to generate local crypto values (receive)", v167, v168, v169, v170, v171, v172, v173, v246);
  [(NEIKEv2IKESA *)v166 setState:v174 error:?];

  [(NEIKEv2Session *)connection reportState];
  [(NEIKEv2Session *)connection resetAll];
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

void __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke(uint64_t a1, void *a2)
{
  v262 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v4;
  if (!v3)
  {
    goto LABEL_100;
  }

  if (v4 && (v4[9] & 1) != 0)
  {
    v231 = ne_log_obj();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
    {
      *v252 = 136315138;
      v253 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthPart1AsResponderCopyErrorForIKESA:errorCodeToSend:]";
      _os_log_fault_impl(&dword_1BA83C000, v231, OS_LOG_TYPE_FAULT, "%s called with null !ikeSA.isInitiator", v252, 0xCu);
    }

    ErrorInternal = NEIKEv2CreateErrorInternal(@"validateAuthPart1AsResponder called as initiator", v232, v233, v234, v235, v236, v237, v238, v239);
    goto LABEL_142;
  }

  if ([(NEIKEv2Packet *)v3 hasErrors])
  {
    v250 = 0u;
    v251 = 0u;
    *location = 0u;
    v249 = 0u;
    v8 = objc_getProperty(v3, v7, 64, 1);
    v9 = [v8 countByEnumeratingWithState:location objects:buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v249;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v249 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(location[1] + i);
          if (v13)
          {
            isa = v13[1].isa;
            if (isa - 1 <= 0x3FFE)
            {
              ErrorPeerInvalidSyntax = [(NEIKEv2NotifyPayload *)v13 copyError];
              if (!ErrorPeerInvalidSyntax)
              {
                ErrorPeerInvalidSyntax = NEIKEv2CreateErrorInternal(@"Failed to copy notify error", v28, v29, v30, v31, v32, v33, v34, v239);
              }

              v36 = ne_log_obj();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v219 = [(NEIKEv2Packet *)v3 copyShortDescription];
                *v252 = 138412546;
                v253 = v219;
                v254 = 2112;
                v255 = ErrorPeerInvalidSyntax;
                _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@ Responder auth received notify error %@", v252, 0x16u);
              }

              goto LABEL_106;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:location objects:buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  Property = objc_getProperty(v3, v7, 96, 1);
  v17 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v16, 32, 1);
  }

  v18 = Property;

  if (!v18)
  {
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v220 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v252 = 138412290;
      v253 = v220;
      _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "%@ Initiator ID missing", v252, 0xCu);
    }

    v45 = @"Initiator ID missing";
    goto LABEL_104;
  }

  v20 = objc_getProperty(v3, v19, 96, 1);
  v21 = v20;
  if (v6)
  {
    objc_storeStrong((v6 + 328), v20);

    v23 = objc_getProperty(v6, v22, 80, 1);
  }

  else
  {

    v23 = 0;
  }

  v24 = v23;
  if (([v24 requestChildlessSA] & 1) == 0)
  {

    goto LABEL_33;
  }

  v26 = objc_getProperty(v3, v25, 88, 1);

  if (v26)
  {
LABEL_33:
    if (v6 && (*(v6 + 23) & 1) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v6)
  {
    *(v6 + 23) = 1;
    goto LABEL_38;
  }

LABEL_35:
  v46 = objc_getProperty(v3, v27, 88, 1);
  v48 = v46;
  if (v46)
  {
    v46 = objc_getProperty(v46, v47, 32, 1);
  }

  v49 = v46;

  if (!v49)
  {
    v154 = ne_log_obj();
    if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
    {
      v229 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v252 = 138412290;
      v253 = v229;
      _os_log_error_impl(&dword_1BA83C000, v154, OS_LOG_TYPE_ERROR, "%@ Received no SA proposals", v252, 0xCu);
    }

    v45 = @"Received no SA proposals";
LABEL_104:
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(v45, v38, v39, v40, v41, v42, v43, v44, v239);
    goto LABEL_105;
  }

LABEL_38:
  v50 = objc_getProperty(v3, v27, 96, 1);
  v52 = v50;
  if (v50)
  {
    v53 = objc_getProperty(v50, v51, 32, 1);
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  if (v6)
  {
    objc_storeStrong((v6 + 352), v53);
  }

  v56 = objc_getProperty(v3, v55, 104, 1);
  v58 = v56;
  if (v56)
  {
    v59 = objc_getProperty(v56, v57, 32, 1);
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;
  if (v6)
  {
    objc_storeStrong((v6 + 344), v59);
  }

  v61 = [(NEIKEv2Packet *)v3 hasNotification:?];
  if (v6)
  {
    v63 = 1;
    if (!v61)
    {
      v63 = 2;
    }

    *(v6 + 360) = v63;
  }

  v64 = objc_getProperty(v3, v62, 88, 1);
  v66 = v64;
  if (v64)
  {
    v67 = objc_getProperty(v64, v65, 32, 1);
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;
  if (v6)
  {
    objc_storeStrong((v6 + 368), v67);
  }

  v70 = objc_getProperty(v3, v69, 152, 1);
  v72 = v70;
  if (v70)
  {
    v73 = objc_getProperty(v70, v71, 32, 1);
  }

  else
  {
    v73 = 0;
  }

  v74 = v73;
  if (v6)
  {
    objc_storeStrong((v6 + 400), v73);
  }

  v76 = objc_getProperty(v3, v75, 160, 1);
  v78 = v76;
  if (v76)
  {
    v79 = objc_getProperty(v76, v77, 32, 1);
  }

  else
  {
    v79 = 0;
  }

  v80 = v79;
  if (v6)
  {
    objc_storeStrong((v6 + 408), v79);
  }

  v82 = objc_getProperty(v3, v81, 168, 1);
  v84 = v82;
  if (v82)
  {
    v85 = objc_getProperty(v82, v83, 32, 1);
  }

  else
  {
    v85 = 0;
  }

  v86 = v85;
  v87 = v86;
  if (v6)
  {
    objc_storeStrong((v6 + 416), v85);

    v88 = *(v6 + 104);
  }

  else
  {

    v88 = 0;
  }

  v89 = v88;

  v91 = objc_getProperty(v3, v90, 128, 1);
  v92 = v91;
  if (v91)
  {
    v93 = *(v91 + 32);
  }

  else
  {
    v93 = 0;
  }

  v94 = v93;
  v95 = v94;
  if (!v89)
  {
    [(NEIKEv2IKESA *)v6 setAuthProtocolFromPacket:v94];

    v112 = objc_getProperty(v3, v111, 128, 1);
    v113 = v112;
    if (v112)
    {
      v114 = *(v112 + 40);
    }

    else
    {
      v114 = 0;
    }

    v115 = v114;
    if (v6)
    {
      objc_storeStrong((v6 + 384), v114);
    }

    goto LABEL_86;
  }

  if (v95)
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v221 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v223 = objc_getProperty(v3, v222, 128, 1);
      v224 = v223;
      if (v223)
      {
        v225 = *(v223 + 32);
      }

      else
      {
        v225 = 0;
      }

      v226 = v225;
      if (v6)
      {
        v227 = *(v6 + 104);
      }

      else
      {
        v227 = 0;
      }

      v228 = v227;
      *v252 = 138412802;
      v253 = v221;
      v254 = 2112;
      v255 = v226;
      v256 = 2112;
      v257 = v228;
      _os_log_error_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_ERROR, "%@ Responder packet authentication method %@ is not compatible with configuration %@", v252, 0x20u);
    }

    v99 = objc_getProperty(v3, v98, 128, 1);
    v100 = v99;
    if (v99)
    {
      v101 = *(v99 + 32);
    }

    else
    {
      v101 = 0;
    }

    v102 = v101;
    if (v6)
    {
      v103 = *(v6 + 104);
    }

    else
    {
      v103 = 0;
    }

    v240 = v103;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorAuthentication(@"Responder packet authentication method %@ is not compatible with configuration %@", v104, v105, v106, v107, v108, v109, v110, v102);

    goto LABEL_76;
  }

  v116 = objc_getProperty(v3, v96, 144, 1);

  if (!v116)
  {
    v203 = ne_log_obj();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
    {
      v230 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v252 = 138412290;
      v253 = v230;
      _os_log_error_impl(&dword_1BA83C000, v203, OS_LOG_TYPE_ERROR, "%@ Packet missing GSPM payload", v252, 0xCu);
    }

    ErrorInternal = NEIKEv2CreateErrorAuthentication(@"Packet missing GSPM payload", v204, v205, v206, v207, v208, v209, v210, v239);
LABEL_142:
    ErrorPeerInvalidSyntax = ErrorInternal;
LABEL_76:
    isa = 24;
    goto LABEL_106;
  }

  if (v6)
  {
    v117 = *(v6 + 104);
  }

  else
  {
    v117 = 0;
  }

  v113 = v117;
  [(NEIKEv2IKESA *)v6 setAuthProtocolFromPacket:v113];
LABEL_86:

  if (!v6 || (*(v6 + 24) & 1) == 0)
  {
    goto LABEL_100;
  }

  v118 = [(NEIKEv2Packet *)v3 copyNotification:?];
  v120 = v118;
  if (!v118)
  {
LABEL_99:

LABEL_100:
    goto LABEL_111;
  }

  v121 = [(NEIKEv2NotifyPayload *)v118 getPPKIDType];
  v129 = v121;
  if ((v121 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"PPK ID type %zu is invalid", v122, v123, v124, v125, v126, v127, v128, v121);
  }

  else
  {
    v130 = [(NEIKEv2NotifyPayload *)v120 copyPPKID];
    v131 = [v130 length];
    if (v129 == 2 && !v131)
    {
      ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"PPK ID missing from payload", v132, v133, v134, v135, v136, v137, v138, v239);
    }

    else
    {
      [(NEIKEv2IKESA *)v6 setPpkIDFromPacket:v130];
      *(v6 + 424) = v129;
      v139 = [(NEIKEv2Packet *)v3 copyNotification:?];
      v141 = v139;
      if (v139)
      {
        v139 = objc_getProperty(v139, v140, 40, 1);
      }

      v142 = v139;

      if (!v142)
      {
        goto LABEL_98;
      }

      v143 = *(v6 + 376);
      v144 = [v143 isDigitalSignature];

      if (!v144)
      {
        goto LABEL_98;
      }

      v252[0] = 0;
      [v142 getBytes:v252 length:1];
      v145 = v252[0] + 1;
      if ([v142 length] > v145)
      {
        v153 = [v142 subdataWithRange:{v145, objc_msgSend(v142, "length") - v145}];

        v142 = v153;
LABEL_98:
        [(NEIKEv2IKESA *)v6 setPrimeAuthenticationDataFromPacket:v142];

        goto LABEL_99;
      }

      ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"NoPPK AuthData too short for AlgorithmIdentifier len %u, payload %@", v146, v147, v148, v149, v150, v151, v152, v145);
    }
  }

LABEL_105:
  isa = 7;
LABEL_106:

  if (ErrorPeerInvalidSyntax)
  {
    v155 = ne_log_obj();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
    {
      v218 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v218;
      *&buf[12] = 2112;
      *&buf[14] = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth packet (receive p1) %@", buf, 0x16u);
    }

    v156 = [NEIKEv2IKEAuthPacket createIKEAuthResponse:v3 refusalError:isa];
    if (([(NEIKEv2Session *)*(a1 + 40) sendReply:v156 replyHandler:0]& 1) != 0)
    {
      [(NEIKEv2IKESA *)*(a1 + 32) setState:ErrorPeerInvalidSyntax error:?];
      [(NEIKEv2Session *)*(a1 + 40) reportState];
    }

    else
    {
      v168 = *(a1 + 40);
      if (v168)
      {
        v168 = objc_getProperty(v168, v157, 352, 1);
      }

      v169 = v168;
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"AUTH refusal p1 %@", v170, v171, v172, v173, v174, v175, v176, ErrorPeerInvalidSyntax);
      [(NEIKEv2IKESA *)v169 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)*(a1 + 40) reportState];
      [(NEIKEv2Session *)*(a1 + 40) resetAll];
    }

    goto LABEL_151;
  }

LABEL_111:
  v159 = *(a1 + 40);
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v243 = __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke_292;
  v244 = &unk_1E7F08378;
  v245 = v159;
  v246 = *(a1 + 32);
  v247 = v3;
  v161 = v242;
  if (v159)
  {
    v162 = objc_getProperty(v159, v160, 384, 1);
    dispatch_assert_queue_V2(v162);

    WeakRetained = objc_loadWeakRetained((v159 + 360));
    v165 = [(NEIKEv2Session *)v159 firstChildSA];

    if (v165 || !WeakRetained)
    {
      v180 = objc_getProperty(v159, v166, 352, 1);
      v182 = v180;
      if (v180 && (v180[23] & 1) != 0)
      {
        v183 = [(NEIKEv2Session *)v159 firstChildSA];

        if (v183)
        {
          [(NEIKEv2Session *)v159 removeFirstChild];
        }
      }

      else
      {
      }

      v167 = [(NEIKEv2Session *)v159 setupReceivedChildCopyError];
      v243(v161, v167);
    }

    else if (*(v159 + 13) == 1)
    {
      v167 = ne_log_obj();
      if (os_log_type_enabled(&v167->super, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v159;
        _os_log_fault_impl(&dword_1BA83C000, &v167->super, OS_LOG_TYPE_FAULT, "%@ already expecting config block", buf, 0xCu);
      }
    }

    else
    {
      *(v159 + 13) = 257;
      v185 = objc_getProperty(v159, v166, 352, 1);
      v187 = v185;
      if (v185)
      {
        if (objc_getProperty(v185, v186, 88, 1))
        {
          v167 = [objc_getProperty(v187 v188];
        }

        else
        {
          v167 = objc_alloc_init(NEIKEv2SessionConfiguration);
          v189 = [v187[43] copy];
          [(NEIKEv2SessionConfiguration *)v167 setLocalIdentifier:v189];

          v190 = [v187[44] copy];
          [(NEIKEv2SessionConfiguration *)v167 setRemoteIdentifier:v190];

          v191 = [v187[47] copy];
          [(NEIKEv2SessionConfiguration *)v167 setRemoteAuthentication:v191];

          v192 = [v187[50] copy];
          [(NEIKEv2SessionConfiguration *)v167 setConfigurationRequest:v192];

          v193 = [v187[54] copy];
          [(NEIKEv2SessionConfiguration *)v167 setPpkID:v193];

          [(NEIKEv2SessionConfiguration *)v167 setPpkIDType:v187[53]];
        }
      }

      else
      {
        v167 = 0;
      }

      v195 = objc_getProperty(v159, v194, 352, 1);
      v197 = v195;
      if (v195 && (*(v195 + 23) & 1) != 0)
      {
        v198 = 0;
      }

      else
      {
        v199 = objc_getProperty(v159, v196, 352, 1);
        if (v199)
        {
          v198 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
          [(NEIKEv2ChildSAConfiguration *)v198 setMode:v199[45]];
          v200 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v199[46] copyItems:1];
          [(NEIKEv2ChildSAConfiguration *)v198 setProposals:v200];

          if (*(v199 + 9))
          {
            v201 = ne_log_obj();
            if (os_log_type_enabled(v201, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v201, OS_LOG_TYPE_FAULT, "copyChildConfig called on initiator", buf, 2u);
            }

            v241 = 51;
            v202 = 52;
          }

          else
          {
            v241 = 52;
            v202 = 51;
          }

          v212 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v199[v202] copyItems:1];
          [(NEIKEv2ChildSAConfiguration *)v198 setRemoteTrafficSelectors:v212];

          v213 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v199[v241] copyItems:1];
          [(NEIKEv2ChildSAConfiguration *)v198 setLocalTrafficSelectors:v213];
        }

        else
        {
          v198 = 0;
        }
      }

      v215 = objc_getProperty(v159, v214, 352, 1);
      if (v215)
      {
        objc_initWeak(location, v215);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__NEIKEv2IKESA_Crypto__copyValidateAuthBlock__block_invoke;
        v259 = &unk_1E7F080B0;
        objc_copyWeak(&v260, location);
        v216 = _Block_copy(buf);
        objc_destroyWeak(&v260);
        objc_destroyWeak(location);
      }

      else
      {
        v216 = 0;
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __58__NEIKEv2Session_Exchange__setupReceivedChildWithHandler___block_invoke;
      v259 = &unk_1E7F08328;
      v260 = v159;
      v261 = v161;
      [WeakRetained requestConfigurationForSession:v159 sessionConfig:v167 childConfig:v198 validateAuthBlock:v216 responseBlock:buf];
    }
  }

  ErrorPeerInvalidSyntax = 0;
LABEL_151:

  v217 = *MEMORY[0x1E69E9840];
}

void __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke_292(void **a1, void *a2)
{
  v268 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = [(NEIKEv2Session *)a1[4] firstChildSA];
  v6 = v5;
  if (v3)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      *buf = 138412546;
      v263 = v26;
      v264 = 2112;
      v265 = v6;
      _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "%@ Set up Child SA %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v27 = a1[5];
  if (v27 && (v27[23] & 1) != 0)
  {
    goto LABEL_22;
  }

  v28 = ne_log_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v212 = a1[4];
    *buf = 138412290;
    v263 = v212;
    _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%@ Failed to set up Child SA", buf, 0xCu);
  }

  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to set up Child SA", v29, v30, v31, v32, v33, v34, v35, v233);
  if (!ErrorInternal)
  {
LABEL_22:
    v37 = a1[6];
    v38 = a1[5];
    v39 = v6;
    v41 = v39;
    if (!v37)
    {
      goto LABEL_128;
    }

    if (v38)
    {
      if (v38[9])
      {
        v222 = ne_log_obj();
        if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v263 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthPart2AsResponderCopyErrorForIKESA:childSA:errorCodeToSend:]";
          _os_log_fault_impl(&dword_1BA83C000, v222, OS_LOG_TYPE_FAULT, "%s called with null !ikeSA.isInitiator", buf, 0xCu);
        }

        v230 = @"validateAuthPart2AsResponder called as initiator";
        goto LABEL_144;
      }

      v42 = v38[23];
      if (v39)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v42 = 0;
      if (v39)
      {
LABEL_27:
        v43 = [(NEIKEv2IKESA *)v38 remoteIdentifier];

        v244 = v37;
        if (!v43)
        {
          goto LABEL_31;
        }

        Property = objc_getProperty(v37, v44, 96, 1);
        v47 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v46, 32, 1);
        }

        v48 = Property;
        v50 = [(NEIKEv2IKESA *)v38 remoteIdentifier];
        v51 = [v48 isEqual:v50];

        v37 = v244;
        if ((v51 & 1) == 0)
        {
          v109 = objc_getProperty(v244, v44, 96, 1);
          v111 = v109;
          if (v109)
          {
            v109 = objc_getProperty(v109, v110, 32, 1);
          }

          v112 = v109;
          v113 = [(NEIKEv2Identifier *)v112 copyShortDescription];

          v115 = [(NEIKEv2IKESA *)v38 remoteIdentifier];
          v116 = [(NEIKEv2Identifier *)v115 copyShortDescription];

          v117 = ne_log_obj();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            v210 = [(NEIKEv2Packet *)v244 copyShortDescription];
            *buf = 138412802;
            v263 = v210;
            v264 = 2112;
            v265 = v113;
            v266 = 2112;
            v267 = v116;
            _os_log_error_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_ERROR, "%@ Initiator ID could not be verified (%@ != %@)", buf, 0x20u);
          }

          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Initiator ID could not be verified (%@ != %@)", v118, v119, v120, v121, v122, v123, v124, v113);
        }

        else
        {
LABEL_31:
          v52 = objc_getProperty(v37, v44, 104, 1);
          v54 = v52;
          if (v52)
          {
            v52 = objc_getProperty(v52, v53, 32, 1);
          }

          v55 = v52;

          if (!v55)
          {
            goto LABEL_37;
          }

          v57 = objc_getProperty(v37, v56, 104, 1);
          v59 = v57;
          if (v57)
          {
            v57 = objc_getProperty(v57, v58, 32, 1);
          }

          v60 = v57;
          v62 = [(NEIKEv2IKESA *)v38 localIdentifier];
          v63 = [v60 isEqual:v62];

          v37 = v244;
          if (v63)
          {
LABEL_37:
            v64 = objc_getProperty(v37, v56, 152, 1);
            v66 = v64;
            if (!v64 || (v67 = objc_getProperty(v64, v65, 32, 1)) == 0)
            {
              v77 = 0;
LABEL_72:

              goto LABEL_73;
            }

            v68 = v67[1];

            if (v68 != 1)
            {
LABEL_73:
              if (!v38 || (v38[23] & 1) == 0)
              {
                if ([(NEIKEv2Packet *)v37 hasNotification:?])
                {
                  v98 = 1;
                }

                else
                {
                  v98 = 2;
                }

                if (v6)
                {
                  v99 = objc_getProperty(v41, v97, 48, 1);
                }

                else
                {
                  v99 = 0;
                }

                v100 = v99;
                v101 = [v100 mode];

                if (v98 == v101)
                {
                  if (v6)
                  {
                    v103 = objc_getProperty(v41, v102, 48, 1);
                  }

                  else
                  {
                    v103 = 0;
                  }

                  v104 = v244;
                  v105 = v103;
                  if ([v105 sequencePerTrafficClass])
                  {
                    v106 = [(NEIKEv2Packet *)v244 hasNotification:?];

                    if (v106)
                    {
                      v108 = ne_log_obj();
                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
                      {
                        v221 = [(NEIKEv2Packet *)v244 copyShortDescription];
                        *buf = 138412290;
                        v263 = v221;
                        _os_log_debug_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_DEBUG, "%@ Sequence Per Traffic Class supported", buf, 0xCu);
                      }

                      if (v6)
                      {
                        BYTE2(v41->info) = 1;
                      }
                    }
                  }

                  else
                  {
                  }

                  v153 = objc_getProperty(v244, v107, 88, 1);
                  v155 = v153;
                  if (v153)
                  {
                    v153 = objc_getProperty(v153, v154, 32, 1);
                  }

                  v156 = v153;

                  if (v6)
                  {
                    v158 = objc_getProperty(v41, v157, 48, 1);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  v159 = v158;
                  v160 = [v159 proposals];

                  if (v6)
                  {
                    v162 = objc_getProperty(v41, v161, 48, 1);
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v163 = v162;
                  v164 = +[NEIKEv2ChildSAProposal chooseChildSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:checkKEMethod:](NEIKEv2ChildSAProposal, v160, v156, [v163 preferInitiatorProposalOrder], 0);
                  v166 = v164;
                  if (v6)
                  {
                    objc_setProperty_atomic(v41, v165, v164, 56);

                    v168 = objc_getProperty(v41, v167, 56, 1);
                  }

                  else
                  {

                    v168 = 0;
                  }

                  v169 = v168;

                  v170 = ne_log_obj();
                  v171 = v170;
                  if (v169)
                  {
                    v247 = v160;
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                    {
                      v173 = [(NEIKEv2Packet *)v244 copyShortDescription];
                      if (v6)
                      {
                        v174 = objc_getProperty(v41, v172, 56, 1);
                      }

                      else
                      {
                        v174 = 0;
                      }

                      v175 = v174;
                      *buf = 138412802;
                      v263 = v41;
                      v264 = 2112;
                      v265 = v173;
                      v266 = 2112;
                      v267 = v175;
                      _os_log_impl(&dword_1BA83C000, v171, OS_LOG_TYPE_DEFAULT, "%@ %@ Chose initiator auth child proposal %@", buf, 0x20u);

                      v104 = v244;
                    }

                    v177 = objc_getProperty(v104, v176, 160, 1);
                    v179 = v177;
                    if (v177)
                    {
                      v177 = objc_getProperty(v177, v178, 32, 1);
                    }

                    v180 = v38;
                    v182 = v177;
                    v243 = a1;
                    if (v6)
                    {
                      v183 = v41;
                      v184 = objc_getProperty(v41, v181, 48, 1);
                    }

                    else
                    {
                      v184 = 0;
                      v183 = v41;
                    }

                    v185 = v184;
                    v186 = [v185 remoteTrafficSelectors];
                    v187 = [NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:v182 reply:v186];
                    [(NEIKEv2ChildSA *)v183 setInitiatorTrafficSelectors:v187];

                    v189 = objc_getProperty(v244, v188, 168, 1);
                    v191 = v189;
                    if (v189)
                    {
                      v189 = objc_getProperty(v189, v190, 32, 1);
                    }

                    v38 = v180;
                    v193 = v189;
                    if (v6)
                    {
                      v194 = objc_getProperty(v41, v192, 48, 1);
                    }

                    else
                    {
                      v194 = 0;
                    }

                    v195 = v194;
                    v196 = [v195 localTrafficSelectors];
                    v197 = [NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:v193 reply:v196];
                    [(NEIKEv2ChildSA *)v41 setResponderTrafficSelectors:v197];

                    a1 = v243;
                    goto LABEL_128;
                  }

                  if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                  {
                    v220 = [(NEIKEv2Packet *)v244 copyShortDescription];
                    *buf = 138412290;
                    v263 = v220;
                    _os_log_error_impl(&dword_1BA83C000, v171, OS_LOG_TYPE_ERROR, "%@ No matching proposal found", buf, 0xCu);
                  }

                  v3 = NEIKEv2CreateErrorPeerInvalidSyntax(@"No matching proposal found", v198, v199, v200, v201, v202, v203, v204, v233);
                }

                else
                {
                  v141 = ne_log_obj();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    v213 = [(NEIKEv2Packet *)v244 copyShortDescription];
                    ChildSAModeString = NEIKEv2CreateChildSAModeString(v98);
                    v216 = v38;
                    if (v6)
                    {
                      v217 = objc_getProperty(v41, v214, 48, 1);
                    }

                    else
                    {
                      v217 = 0;
                    }

                    v218 = v217;
                    v219 = NEIKEv2CreateChildSAModeString([v218 mode]);
                    *buf = 138412802;
                    v263 = v213;
                    v264 = 2112;
                    v265 = ChildSAModeString;
                    v266 = 2112;
                    v267 = v219;
                    _os_log_error_impl(&dword_1BA83C000, v141, OS_LOG_TYPE_ERROR, "%@ Transport mode Child SA did not match (packet had %@ but config expected %@)", buf, 0x20u);

                    v38 = v216;
                  }

                  v143 = NEIKEv2CreateChildSAModeString(v98);
                  if (v6)
                  {
                    v144 = objc_getProperty(v41, v142, 48, 1);
                  }

                  else
                  {
                    v144 = 0;
                  }

                  v145 = v144;
                  v234 = NEIKEv2CreateChildSAModeString([v145 mode]);
                  v3 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Transport mode Child SA did not match (packet had %@ but config expected %@)", v146, v147, v148, v149, v150, v151, v152, v143);
                }

                v7 = 14;
LABEL_133:

                if (v3)
                {
                  goto LABEL_3;
                }

LABEL_134:
                v206 = a1[4];
                v205 = a1[5];
                v207 = a1[6];
                v248[0] = MEMORY[0x1E69E9820];
                v248[1] = 3221225472;
                v248[2] = __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke_299;
                v248[3] = &unk_1E7F08350;
                v208 = v205;
                v209 = a1[4];
                v249 = v208;
                v250 = v209;
                v251 = a1[6];
                v252 = v41;
                [(NEIKEv2Session *)v206 handleEAPAndGSPMForIKESA:v208 authPacket:v207 handler:v248];

                v3 = v249;
                goto LABEL_11;
              }

LABEL_128:

              goto LABEL_134;
            }

            v70 = objc_getProperty(v37, v69, 152, 1);
            v66 = v70;
            if (v70)
            {
              v70 = objc_getProperty(v70, v71, 32, 1);
            }

            v73 = v70;
            if (v38)
            {
              v74 = objc_getProperty(v38, v72, 88, 1);
            }

            else
            {
              v74 = 0;
            }

            v75 = v74;
            v76 = [v75 configurationReply];
            v77 = v73;
            v78 = v76;
            objc_opt_self();
            v241 = v6;
            if (v77 && v77[1] == 1)
            {
              if (v78 && v78[1] == 2)
              {
                v236 = v75;
                v238 = v66;
                v239 = v38;
                v240 = v41;
                v242 = a1;
                v79 = objc_alloc_init(NEIKEv2ConfigurationMessage);
                if (v79)
                {
                  v79->_configurationType = 2;
                }

                self = v79;
                v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v257 = 0u;
                v258 = 0u;
                v259 = 0u;
                v260 = 0u;
                v237 = v77;
                obj = objc_getProperty(v77, v81, 16, 1);
                v82 = [obj countByEnumeratingWithState:&v257 objects:buf count:16];
                if (v82)
                {
                  v84 = v82;
                  v246 = *v258;
                  do
                  {
                    for (i = 0; i != v84; ++i)
                    {
                      if (*v258 != v246)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v86 = *(*(&v257 + 1) + 8 * i);
                      v253 = 0u;
                      v254 = 0u;
                      v255 = 0u;
                      v256 = 0u;
                      v87 = v78;
                      v88 = objc_getProperty(v78, v83, 16, 1);
                      v89 = [v88 countByEnumeratingWithState:&v253 objects:v261 count:16];
                      if (v89)
                      {
                        v90 = v89;
                        v91 = *v254;
                        do
                        {
                          for (j = 0; j != v90; ++j)
                          {
                            if (*v254 != v91)
                            {
                              objc_enumerationMutation(v88);
                            }

                            v93 = *(*(&v253 + 1) + 8 * j);
                            if ([v93 isMemberOfClass:objc_opt_class()])
                            {
                              [v80 addObject:v93];
                            }
                          }

                          v90 = [v88 countByEnumeratingWithState:&v253 objects:v261 count:16];
                        }

                        while (v90);
                      }

                      v78 = v87;
                    }

                    v84 = [obj countByEnumeratingWithState:&v257 objects:buf count:16];
                  }

                  while (v84);
                }

                v95 = self;
                if (self)
                {
                  objc_setProperty_atomic(self, v94, v80, 16);
                }

                a1 = v242;
                v37 = v244;
                v38 = v239;
                v41 = v240;
                v77 = v237;
                v66 = v238;
                v75 = v236;
                goto LABEL_69;
              }

              v80 = ne_log_obj();
              if (!os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
              {
LABEL_148:
                v95 = 0;
                v37 = v244;
LABEL_69:

                if (v38)
                {
                  objc_setProperty_atomic(v38, v96, v95, 496);
                }

                v6 = v241;
                goto LABEL_72;
              }

              *buf = 136315138;
              v263 = "+[NEIKEv2ConfigurationMessage copyConfigurationForRequest:reply:]";
              v232 = "%s called with null (reply.configurationType == NEIKEv2ConfigurationTypeReply)";
            }

            else
            {
              v80 = ne_log_obj();
              if (!os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_148;
              }

              *buf = 136315138;
              v263 = "+[NEIKEv2ConfigurationMessage copyConfigurationForRequest:reply:]";
              v232 = "%s called with null (request.configurationType == NEIKEv2ConfigurationTypeRequest)";
            }

            _os_log_fault_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_FAULT, v232, buf, 0xCu);
            goto LABEL_148;
          }

          v126 = objc_getProperty(v244, v56, 104, 1);
          v128 = v126;
          if (v126)
          {
            v126 = objc_getProperty(v126, v127, 32, 1);
          }

          v129 = v126;
          v113 = [(NEIKEv2Identifier *)v129 copyShortDescription];

          v131 = [(NEIKEv2IKESA *)v38 localIdentifier];
          v116 = [(NEIKEv2Identifier *)v131 copyShortDescription];

          v132 = ne_log_obj();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            v211 = [(NEIKEv2Packet *)v244 copyShortDescription];
            *buf = 138412802;
            v263 = v211;
            v264 = 2112;
            v265 = v113;
            v266 = 2112;
            v267 = v116;
            _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "%@ Responder ID could not be verified (%@ != %@)", buf, 0x20u);
          }

          ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Responder ID could not be verified (%@ != %@)", v133, v134, v135, v136, v137, v138, v139, v113);
        }

        v3 = ErrorPeerInvalidSyntax;

LABEL_100:
        v7 = 24;
        goto LABEL_133;
      }
    }

    if (v42)
    {
      goto LABEL_27;
    }

    v231 = ne_log_obj();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v263 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthPart2AsResponderCopyErrorForIKESA:childSA:errorCodeToSend:]";
      _os_log_fault_impl(&dword_1BA83C000, v231, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
    }

    v230 = @"validateAuthPart2AsResponder called with nil childSA";
LABEL_144:
    v3 = NEIKEv2CreateErrorInternal(v230, v223, v224, v225, v226, v227, v228, v229, v233);
    goto LABEL_100;
  }

  v3 = ErrorInternal;
LABEL_2:
  v7 = 24;
LABEL_3:
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v140 = a1[4];
    *buf = 138412290;
    v263 = v140;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth packet (receive p2)", buf, 0xCu);
  }

  v9 = [NEIKEv2IKEAuthPacket createIKEAuthResponse:v7 refusalError:?];
  if (([(NEIKEv2Session *)a1[4] sendReply:v9 replyHandler:0]& 1) != 0)
  {
    [(NEIKEv2IKESA *)a1[5] setState:v3 error:?];
    [(NEIKEv2Session *)a1[4] reportState];
  }

  else
  {
    v12 = a1[4];
    if (v12)
    {
      v12 = objc_getProperty(v12, v10, 352, 1);
    }

    v13 = v12;
    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"AUTH refusal p2 %@", v14, v15, v16, v17, v18, v19, v20, v3);
    [(NEIKEv2IKESA *)v13 setState:ErrorFailedToSend error:?];

    [(NEIKEv2Session *)a1[4] reportState];
    [(NEIKEv2Session *)a1[4] resetAll];
  }

LABEL_11:
  v24 = *MEMORY[0x1E69E9840];
}

void __46__NEIKEv2Session_Exchange__receiveConnection___block_invoke_299(uint64_t a1, void *a2)
{
  v530[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v4;
  if (!v3)
  {
    goto LABEL_15;
  }

  if (!v4 || (v4[9] & 1) == 0)
  {
    v7 = [(NEIKEv2IKESA *)v4 remoteAuthentication];
    if ([v7 method])
    {
      if (!v6)
      {

LABEL_7:
        v10 = objc_getProperty(v3, v9, 128, 1);
        v11 = v10;
        v12 = a1;
        if (v10)
        {
          v13 = *(v10 + 32);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v16 = objc_getProperty(v3, v15, 128, 1);
        v17 = v16;
        if (v16)
        {
          v18 = *(v16 + 40);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if ([v14 isSecurePassword] && (-[NEIKEv2IKESA remoteAuthentication](v6, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isSecurePassword"), v21, v22))
        {
          v23 = [(NEIKEv2IKESA *)v6 remoteAuthentication];

          v14 = v23;
        }

        else
        {
          v58 = [(NEIKEv2IKESA *)v6 remoteAuthentication];
          v59 = [NEIKEv2Crypto isRemoteAuthenticationPacketProtocol:v14 compatibleWithConfiguredProtocol:v58];

          if ((v59 & 1) == 0)
          {
            v121 = ne_log_obj();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
            {
              v458 = [(NEIKEv2Packet *)v3 copyShortDescription];
              v460 = [(NEIKEv2IKESA *)v6 remoteAuthentication];
              *buf = 138412802;
              v525 = v458;
              v526 = 2112;
              v527 = v14;
              v528 = 2112;
              v529 = v460;
              _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, "%@ Responder packet authentication method %@ is not compatible with configuration %@", buf, 0x20u);
            }

            v100 = [(NEIKEv2IKESA *)v6 remoteAuthentication];
            v496 = v14;
            v130 = @"Packet authentication method %@ is not compatible with configuration %@";
            goto LABEL_71;
          }
        }

        if (!v6 || (*(v6 + 24) & 1) == 0)
        {
          goto LABEL_161;
        }

        v60 = objc_getProperty(v6, v24, 464, 1);
        if (!v60 || (v62 = *(v6 + 424), v60, v62))
        {
LABEL_52:
          v89 = *(v6 + 424);
          v90 = objc_getProperty(v6, v61, 88, 1);
          v91 = v90;
          if (v89)
          {
            v92 = [v90 ppkIDType];

            if (v92 != 2 || (v94 = objc_getProperty(v6, v93, 88, 1), [v94 ppkID], v95 = objc_claimAutoreleasedReturnValue(), v95, v94, v95))
            {
              v96 = objc_getProperty(v6, v93, 88, 1);
              v97 = [v96 ppkIDType];

              v99 = objc_getProperty(v6, v98, 88, 1);
              v100 = [v99 ppkID];

              if (*(v6 + 424) == v97)
              {
                v101 = v3;
                v102 = *(v6 + 432);
                if ([v102 length] || objc_msgSend(v100, "length"))
                {
                  v103 = *(v6 + 432);
                  v104 = [v103 isEqualToData:v100];

                  if ((v104 & 1) == 0)
                  {
                    v106 = ne_log_obj();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      v479 = *(v6 + 432);
                      *buf = 138412546;
                      v525 = v479;
                      v526 = 2112;
                      v527 = v100;
                      _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "PPK ID %@ != Expected %@", buf, 0x16u);
                    }

                    v3 = v101;
LABEL_200:

                    v309 = objc_getProperty(v6, v308, 88, 1);
                    v310 = [v309 ppkMandatory];

                    if (v310)
                    {
                      v311 = ne_log_obj();
                      if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v311, OS_LOG_TYPE_ERROR, "Wrong PPK ID received with mandatory PPK auth", buf, 2u);
                      }

                      v130 = @"Wrong PPK ID received with mandatory PPK auth";
LABEL_71:
                      ErrorAuthentication = NEIKEv2CreateErrorAuthentication(v130, v123, v124, v125, v126, v127, v128, v129, v496);
LABEL_72:
                      ErrorInternal = ErrorAuthentication;

LABEL_73:
                      v133 = 24;
LABEL_74:

LABEL_294:
                      a1 = v12;
                      goto LABEL_295;
                    }

                    v313 = *(v6 + 392);

                    v314 = ne_log_obj();
                    v315 = v314;
                    if (!v313)
                    {
                      if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v315, OS_LOG_TYPE_ERROR, "Wrong PPK ID received and no non-PPK AUTH data received", buf, 2u);
                      }

                      v130 = @"Wrong PPK ID received and no non-PPK AUTH data received";
                      goto LABEL_71;
                    }

                    if (os_log_type_enabled(v314, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1BA83C000, v315, OS_LOG_TYPE_INFO, "Wrong PPK ID received, falling back to non-PPK AUTH data", buf, 2u);
                    }

                    v316 = *(v6 + 392);
                    v272 = 0;
                    v19 = v316;
                    goto LABEL_324;
                  }
                }

                else
                {
                }

                v462 = [(NEIKEv2IKESA *)v6 ppk];
                v463 = [(NEIKEv2IKESA *)v6 generateDerivativesFromPPK:v462];

                if ((v463 & 1) == 0)
                {
                  v464 = ne_log_obj();
                  v3 = v101;
                  if (os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v525 = v101;
                    _os_log_error_impl(&dword_1BA83C000, v464, OS_LOG_TYPE_ERROR, "%@ Failed to generate PPK-derived keys", buf, 0xCu);
                  }

                  ErrorAuthentication = NEIKEv2CreateErrorCrypto(@"Failed to generate PPK-derived keys", v465, v466, v467, v468, v469, v470, v471, v496);
                  goto LABEL_72;
                }

                v272 = 1;
                v3 = v101;
LABEL_324:

LABEL_162:
                v273 = v14;
                v275 = [(NEIKEv2IKESA *)v6 remoteAuthentication];
                v276 = [v275 isNonStandard];

                v278 = v273;
                if (v276)
                {
                  v278 = [(NEIKEv2IKESA *)v6 remoteAuthentication];
                }

                if (v6)
                {
                  Property = objc_getProperty(v6, v277, 464, 1);
                }

                else
                {
                  Property = 0;
                }

                v280 = Property;

                if (v280)
                {
                  if ([v278 method] == 12)
                  {
                    v281 = [(NEIKEv2IKESA *)v6 createInitiatorGSPMAuthenticationDataUsingPrimeKey:?];
                    if (v281 && [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v281 remoteAuthData:v19])
                    {
                      if (v6)
                      {
                        *(v6 + 18) = 1;
                        if (v272)
                        {
                          *(v6 + 19) = 1;
                        }
                      }

LABEL_197:
                      a1 = v12;
                      goto LABEL_15;
                    }

                    v300 = ne_log_obj();
                    if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
                    {
                      v474 = v3;
                      v475 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      *buf = 138412290;
                      v525 = v475;
                      _os_log_error_impl(&dword_1BA83C000, v300, OS_LOG_TYPE_ERROR, "%@ GSPM authentication data could not be verified", buf, 0xCu);

                      v3 = v474;
                    }

                    ErrorInternal = NEIKEv2CreateErrorAuthentication(@"GSPM authentication data could not be verified", v301, v302, v303, v304, v305, v306, v307, v496);
                    goto LABEL_293;
                  }

                  v289 = ne_log_obj();
                  if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
                  {
                    v473 = [(NEIKEv2Packet *)v3 copyShortDescription];
                    *buf = 138412546;
                    v525 = v473;
                    v526 = 2112;
                    v527 = v278;
                    _os_log_error_impl(&dword_1BA83C000, v289, OS_LOG_TYPE_ERROR, "%@ Wrong authentication method %@ for GSPM", buf, 0x16u);
                  }

                  v297 = NEIKEv2CreateErrorAuthentication(@"Wrong authentication method $@ for GSPM", v290, v291, v292, v293, v294, v295, v296, v278);
                }

                else
                {
                  if ([v278 isSignature])
                  {
                    if (v6)
                    {
                      v283 = objc_getProperty(v6, v282, 88, 1);
                    }

                    else
                    {
                      v283 = 0;
                    }

                    v284 = v3;
                    v285 = v283;
                    v286 = [(NEIKEv2SessionConfiguration *)v285 copyRemoteAuthKey];

                    if (v286)
                    {
                      v287 = [(NEIKEv2IKESA *)v6 createRemoteSignedOctetVectorUsingPrimeKey:?];
                      v288 = [NEIKEv2Crypto validateSignature:v19 signedDataVector:v287 authProtocol:v278 publicKey:v286];
                      CFRelease(v286);
                      if (v288)
                      {
                        if (v6)
                        {
                          *(v6 + 18) = 1;
                          if (v272)
                          {
                            *(v6 + 19) = 1;
                          }
                        }

                        v3 = v284;
                        goto LABEL_197;
                      }

                      v438 = ne_log_obj();
                      if (os_log_type_enabled(v438, OS_LOG_TYPE_ERROR))
                      {
                        v478 = [(NEIKEv2Packet *)v284 copyShortDescription];
                        *buf = 138412546;
                        v525 = v478;
                        v526 = 2112;
                        v527 = v278;
                        _os_log_error_impl(&dword_1BA83C000, v438, OS_LOG_TYPE_ERROR, "%@ Responder failed to validate remote authentication data %@", buf, 0x16u);
                      }

                      ErrorInternal = NEIKEv2CreateErrorAuthentication(@"Failed to validate remote authentication data %@", v439, v440, v441, v442, v443, v444, v445, v278);
                    }

                    else
                    {
                      v488 = ne_log_obj();
                      if (os_log_type_enabled(v488, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        _os_log_fault_impl(&dword_1BA83C000, v488, OS_LOG_TYPE_FAULT, "Responder configuration is missing remote public key", buf, 2u);
                      }

                      ErrorInternal = NEIKEv2CreateErrorInternal(@"Responder configuration is missing remote public key", v489, v490, v491, v492, v493, v494, v495, v496);
                    }

                    v3 = v284;
LABEL_293:

                    v133 = 24;
                    goto LABEL_294;
                  }

                  if ([(NEIKEv2IKESA *)v6 checkSharedKeyAuthData:v19 usingPrimeKey:0])
                  {
                    if (v6)
                    {
                      *(v6 + 18) = 1;
                      if (v272)
                      {
                        *(v6 + 19) = 1;
                      }
                    }

                    goto LABEL_197;
                  }

                  v415 = ne_log_obj();
                  if (os_log_type_enabled(v415, OS_LOG_TYPE_ERROR))
                  {
                    v477 = [(NEIKEv2Packet *)v3 copyShortDescription];
                    *buf = 138412546;
                    v525 = v477;
                    v526 = 2112;
                    v527 = v278;
                    _os_log_error_impl(&dword_1BA83C000, v415, OS_LOG_TYPE_ERROR, "%@ Responder failed to validate remote authentication data %@", buf, 0x16u);
                  }

                  v297 = NEIKEv2CreateErrorAuthentication(@"Failed to validate remote authentication data %@", v416, v417, v418, v419, v420, v421, v422, v278);
                }

                ErrorInternal = v297;
                goto LABEL_293;
              }

              v106 = ne_log_obj();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v476 = *(v6 + 424);
                *buf = 134218240;
                v525 = v476;
                v526 = 2048;
                v527 = v97;
                _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "PPK Type %zu != Expected Type %zu", buf, 0x16u);
              }

              goto LABEL_200;
            }

            v449 = ne_log_obj();
            if (os_log_type_enabled(v449, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v525 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthFinalAsResponderCopyErrorForIKESA:errorCodeToSend:]";
              _os_log_fault_impl(&dword_1BA83C000, v449, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.sessionConfiguration.ppkID", buf, 0xCu);
            }

            v271 = NEIKEv2CreateErrorInternal(@"PPK use negotiated but PPK ID is not present in configuration", v450, v451, v452, v453, v454, v455, v456, v496);
LABEL_312:
            ErrorInternal = v271;
            goto LABEL_73;
          }

          v262 = [v90 ppkMandatory];

          if (v262)
          {
            v263 = ne_log_obj();
            if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v263, OS_LOG_TYPE_ERROR, "No PPK ID received with mandatory PPK auth", buf, 2u);
            }

            v271 = NEIKEv2CreateErrorAuthentication(@"No PPK ID received with mandatory PPK auth", v264, v265, v266, v267, v268, v269, v270, v496);
            goto LABEL_312;
          }

LABEL_161:
          v272 = 0;
          goto LABEL_162;
        }

        v63 = [(NEIKEv2Packet *)v3 copyNotification:?];
        v65 = v63;
        if (v63)
        {
          v66 = [(NEIKEv2NotifyPayload *)v63 getPPKIDType];
          v74 = v66;
          if ((v66 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            ErrorInternal = NEIKEv2CreateErrorPeerInvalidSyntax(@"PPK ID type %zu is invalid", v67, v68, v69, v70, v71, v72, v73, v66);
          }

          else
          {
            v75 = [(NEIKEv2NotifyPayload *)v65 copyPPKID];
            v76 = [v75 length];
            if (v74 != 2 || v76)
            {
              [(NEIKEv2IKESA *)v6 setPpkIDFromPacket:v75];
              *(v6 + 424) = v74;
              v84 = [(NEIKEv2Packet *)v3 copyNotification:?];
              v86 = v84;
              v87 = v3;
              if (v84)
              {
                v84 = objc_getProperty(v84, v85, 40, 1);
              }

              v88 = v84;
              [(NEIKEv2IKESA *)v6 setPrimeAuthenticationDataFromPacket:v88];

              v3 = v87;
              goto LABEL_51;
            }

            ErrorInternal = NEIKEv2CreateErrorPeerInvalidSyntax(@"PPK ID missing from payload", v77, v78, v79, v80, v81, v82, v83, v496);
          }

          v133 = 7;
          goto LABEL_74;
        }

LABEL_51:

        goto LABEL_52;
      }

      v8 = *(v6 + 18);

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_15:

    goto LABEL_16;
  }

  v480 = ne_log_obj();
  if (os_log_type_enabled(v480, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v525 = "[NEIKEv2IKEAuthPacket(Exchange) validateAuthFinalAsResponderCopyErrorForIKESA:errorCodeToSend:]";
    _os_log_fault_impl(&dword_1BA83C000, v480, OS_LOG_TYPE_FAULT, "%s called with null !ikeSA.isInitiator", buf, 0xCu);
  }

  ErrorInternal = NEIKEv2CreateErrorInternal(@"validateAuthFinalAsResponder called as initiator", v481, v482, v483, v484, v485, v486, v487, v496);
  v133 = 24;
LABEL_295:

  if (ErrorInternal)
  {
    v423 = ne_log_obj();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
    {
      v457 = *(a1 + 40);
      *buf = 138412290;
      v525 = v457;
      _os_log_error_impl(&dword_1BA83C000, v423, OS_LOG_TYPE_ERROR, "%@ Failed to process IKE Auth packet (receive final)", buf, 0xCu);
    }

    v214 = [NEIKEv2IKEAuthPacket createIKEAuthResponse:v3 refusalError:v133];
    if (([(NEIKEv2Session *)*(a1 + 40) sendReply:v214 replyHandler:0]& 1) != 0)
    {
      [(NEIKEv2IKESA *)*(a1 + 32) setState:ErrorInternal error:?];
      [(NEIKEv2Session *)*(a1 + 40) reportState];
    }

    else
    {
      v426 = *(a1 + 40);
      if (v426)
      {
        v426 = objc_getProperty(v426, v424, 352, 1);
      }

      v427 = v426;
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"AUTH refusal final %@", v428, v429, v430, v431, v432, v433, v434, ErrorInternal);
      [(NEIKEv2IKESA *)v427 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)*(a1 + 40) reportState];
      [(NEIKEv2Session *)*(a1 + 40) resetAll];
    }

    goto LABEL_288;
  }

LABEL_16:
  [(NEIKEv2Session *)*(a1 + 40) reportPrivateNotifiesInPacket:?];
  if (*(a1 + 48) != v3)
  {
    [(NEIKEv2Session *)*(a1 + 40) reportPrivateNotifiesInPacket:v3];
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    v25 = v25[51];
  }

  v26 = v25;
  v27 = [v26 count];

  if (v27)
  {
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = v28[51];
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    [(NEIKEv2Session *)v28 reportPrivateNotifies:v30];

    [(NEIKEv2Session *)*(a1 + 40) setPendingPrivateNotifies:?];
  }

  v31 = *(a1 + 32);
  v32 = *(a1 + 56);
  v33 = v3;
  v34 = v31;
  v35 = v32;
  objc_opt_self();
  if (!v34)
  {
    v40 = ne_log_obj();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_219;
    }

    *buf = 136315138;
    v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
    v57 = "%s called with null ikeSA";
    goto LABEL_38;
  }

  if (!v35 && (*(v34 + 23) & 1) == 0)
  {
    v40 = ne_log_obj();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_219;
    }

    *buf = 136315138;
    v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
    v57 = "%s called with null childSA";
    goto LABEL_38;
  }

  v37 = objc_getProperty(v34, v36, 96, 1);

  if (!v37)
  {
    v40 = ne_log_obj();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
LABEL_219:
      v214 = 0;
      goto LABEL_220;
    }

    *buf = 136315138;
    v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
    v57 = "%s called with null ikeSA.chosenProposal";
LABEL_38:
    _os_log_fault_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_FAULT, v57, buf, 0xCu);
    goto LABEL_219;
  }

  v38 = [(NEIKEv2Packet *)[NEIKEv2IKEAuthPacket alloc] initResponse:v33];
  if (!v38)
  {
    v107 = ne_log_obj();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_FAULT, "[[NEIKEv2IKEAuthPacket alloc] initResponse:] failed", buf, 2u);
    }

    v40 = 0;
    goto LABEL_219;
  }

  v40 = v38;
  if ((*(v34 + 17) & 1) == 0)
  {
    v41 = objc_alloc_init(NEIKEv2ResponderIdentifierPayload);
    objc_setProperty_atomic(v40, v42, v41, 104);

    v44 = [(NEIKEv2IKESA *)v34 localIdentifier];
    v46 = objc_getProperty(v40, v45, 104, 1);
    v48 = v46;
    if (v46)
    {
      objc_setProperty_atomic(v46, v47, v44, 32);
    }

    v50 = objc_getProperty(v40, v49, 104, 1);
    v51 = [(NEIKEv2Payload *)v50 isValid];

    if ((v51 & 1) == 0)
    {
      v134 = ne_log_obj();
      if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_218;
      }

      *buf = 136315138;
      v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
      v135 = "%s called with null packet.idr.isValid";
LABEL_188:
      v298 = v134;
      v299 = 12;
LABEL_189:
      _os_log_fault_impl(&dword_1BA83C000, v298, OS_LOG_TYPE_FAULT, v135, buf, v299);
      goto LABEL_218;
    }

    v53 = objc_getProperty(v40, v52, 104, 1);
    objc_storeStrong(v34 + 42, v53);
  }

  v499 = v3;
  v54 = objc_getProperty(v34, v39, 96, 1);
  if ([(NEIKEv2IKESAProposal *)v54 hasEAPMethods])
  {

    goto LABEL_81;
  }

  v108 = [(NEIKEv2IKESA *)v34 authenticationProtocol];
  v109 = [v108 method];

  if (!v109)
  {
    goto LABEL_81;
  }

  v110 = [(NEIKEv2IKESA *)v34 authenticationProtocol];
  v111 = [v110 isSecurePassword];

  if (v111)
  {
    v112 = objc_alloc_init(NEIKEv2AuthPayload);
    objc_setProperty_atomic(v40, v113, v112, 128);

    v115 = [(NEIKEv2IKESA *)v34 authenticationProtocol];
    v117 = objc_getProperty(v40, v116, 128, 1);
    [(NEIKEv2AuthPayload *)v117 setAuthProtocol:v115];

    v118 = [(NEIKEv2IKESA *)v34 createResponderGSPMAuthenticationDataUsingPrimeKey:?];
    v120 = objc_getProperty(v40, v119, 128, 1);
    [(NEIKEv2AuthPayload *)v120 setAuthenticationData:v118];
  }

  else
  {
    v118 = [(NEIKEv2IKESA *)v34 copyAuthenticationPayloadUsingPrimeKey:?];
    objc_setProperty_atomic(v40, v136, v118, 128);
  }

  v138 = objc_getProperty(v40, v137, 128, 1);
  v139 = [(NEIKEv2Payload *)v138 isValid];

  if ((v139 & 1) == 0)
  {
    v134 = ne_log_obj();
    v3 = v499;
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 136315138;
    v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
    v135 = "%s called with null packet.auth.isValid";
    goto LABEL_188;
  }

  v141 = objc_getProperty(v34, v140, 224, 1);

  if (v141 && ![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v261 = ne_log_obj();
    if (!os_log_type_enabled(v261, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_154;
    }

    *buf = 0;
    v446 = "[packet addNotification:NEIKEv2NotifyTypePPKIdentity] failed";
    v447 = v261;
    v448 = 2;
    goto LABEL_320;
  }

LABEL_81:
  v142 = objc_getProperty(v34, v56, 88, 1);
  v143 = [v142 configurationReply];

  if (v143)
  {
    v145 = objc_alloc_init(NEIKEv2ConfigPayload);
    objc_setProperty_atomic(v40, v146, v145, 152);

    v148 = objc_getProperty(v34, v147, 88, 1);
    v149 = [v148 configurationReply];
    v151 = objc_getProperty(v40, v150, 152, 1);
    v153 = v151;
    if (v151)
    {
      objc_setProperty_atomic(v151, v152, v149, 32);
    }

    v155 = objc_getProperty(v40, v154, 152, 1);
    v156 = [(NEIKEv2Payload *)v155 isValid];

    if ((v156 & 1) == 0)
    {
      v261 = ne_log_obj();
      if (!os_log_type_enabled(v261, OS_LOG_TYPE_FAULT))
      {
LABEL_154:

        v214 = 0;
        v3 = v499;
        goto LABEL_220;
      }

      *buf = 136315138;
      v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
      v446 = "%s called with null packet.config.isValid";
      v447 = v261;
      v448 = 12;
LABEL_320:
      _os_log_fault_impl(&dword_1BA83C000, v447, OS_LOG_TYPE_FAULT, v446, buf, v448);
      goto LABEL_154;
    }
  }

  v3 = v499;
  v501 = v40;
  if (*(v34 + 23))
  {
    goto LABEL_86;
  }

  v215 = objc_alloc_init(NEIKEv2ChildSAPayload);
  objc_setProperty_atomic(v40, v216, v215, 88);

  if (v35)
  {
    v218 = objc_getProperty(v35, v217, 56, 1);
  }

  else
  {
    v218 = 0;
  }

  v219 = v218;
  v220 = [(NEIKEv2ChildSAProposal *)v219 copyWithoutKEM];
  v530[0] = v220;
  v221 = [MEMORY[0x1E695DEC8] arrayWithObjects:v530 count:1];
  v223 = objc_getProperty(v40, v222, 88, 1);
  v225 = v223;
  if (v223)
  {
    objc_setProperty_atomic(v223, v224, v221, 32);
  }

  v227 = objc_getProperty(v40, v226, 88, 1);
  v228 = [(NEIKEv2Payload *)v227 isValid];

  if ((v228 & 1) == 0)
  {
    v134 = ne_log_obj();
    v3 = v499;
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 136315138;
    v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
    v135 = "%s called with null packet.sa.isValid";
    goto LABEL_188;
  }

  v229 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
  objc_setProperty_atomic(v40, v230, v229, 160);

  v232 = [(NEIKEv2ChildSA *)v35 initiatorTrafficSelectors];
  v234 = objc_getProperty(v40, v233, 160, 1);
  v236 = v234;
  v3 = v499;
  if (v234)
  {
    objc_setProperty_atomic(v234, v235, v232, 32);
  }

  v238 = objc_getProperty(v40, v237, 160, 1);
  v239 = [(NEIKEv2Payload *)v238 isValid];

  if ((v239 & 1) == 0)
  {
    v317 = ne_log_obj();
    if (os_log_type_enabled(v317, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v317, OS_LOG_TYPE_FAULT, "%s called with null packet.tsi.isValid", buf, 0xCu);
    }

    goto LABEL_315;
  }

  v240 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
  objc_setProperty_atomic(v40, v241, v240, 168);

  v243 = [(NEIKEv2ChildSA *)v35 responderTrafficSelectors];
  v245 = objc_getProperty(v40, v244, 168, 1);
  v247 = v245;
  if (v245)
  {
    objc_setProperty_atomic(v245, v246, v243, 32);
  }

  v249 = objc_getProperty(v40, v248, 168, 1);
  v250 = [(NEIKEv2Payload *)v249 isValid];

  if ((v250 & 1) == 0)
  {
    v317 = ne_log_obj();
    if (os_log_type_enabled(v317, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v525 = "+[NEIKEv2IKEAuthPacket(Exchange) createIKEAuthResponse:ikeSA:childSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v317, OS_LOG_TYPE_FAULT, "%s called with null packet.tsr.isValid", buf, 0xCu);
    }

LABEL_315:

    v214 = 0;
    goto LABEL_220;
  }

  if (v35)
  {
    v252 = objc_getProperty(v35, v251, 48, 1);
  }

  else
  {
    v252 = 0;
  }

  v253 = v252;
  v254 = [v253 mode];

  if (v254 == 1 && ![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v134 = ne_log_obj();
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v135 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
    goto LABEL_336;
  }

  if (![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v134 = ne_log_obj();
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v135 = "[packet addNotification:NEIKEv2NotifyTypeESPTFCPaddingNotSupported] failed";
    goto LABEL_336;
  }

  if (![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v134 = ne_log_obj();
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v135 = "[packet addNotification:NEIKEv2NotifyTypeNonFirstFragmentsAlso] failed";
    goto LABEL_336;
  }

  if (v35)
  {
    v256 = objc_getProperty(v35, v255, 48, 1);
  }

  else
  {
    v256 = 0;
  }

  v257 = v256;
  if (![v257 sequencePerTrafficClass])
  {

    goto LABEL_86;
  }

  v258 = [(NEIKEv2Packet *)v33 hasNotification:?];

  if (v258)
  {
    v259 = +[NEIKEv2NotifyPayload createNotifyPayloadType:];
    v260 = [(NEIKEv2Packet *)v40 addNotifyPayload:v259];

    if (!v260)
    {
      v134 = ne_log_obj();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v135 = "[packet addNotifyPayload:notifyPayload] failed";
LABEL_336:
        v298 = v134;
        v299 = 2;
        goto LABEL_189;
      }

LABEL_218:

      goto LABEL_219;
    }
  }

LABEL_86:
  v157 = objc_getProperty(v34, v144, 88, 1);
  v158 = [v157 initialContactDisabled];

  if ((v158 & 1) == 0 && ![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v134 = ne_log_obj();
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v135 = "[packet addNotification:NEIKEv2NotifyTypeInitialContact] failed";
    goto LABEL_336;
  }

  v160 = objc_getProperty(v34, v159, 88, 1);
  v161 = [v160 negotiateMOBIKE];

  if (v161 && ![(NEIKEv2Packet *)v40 addNotification:0 data:?])
  {
    v134 = ne_log_obj();
    if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_218;
    }

    *buf = 0;
    v135 = "[packet addNotification:NEIKEv2NotifyTypeMOBIKESupported] failed";
    goto LABEL_336;
  }

  v497 = v33;
  v498 = a1;
  v517 = 0u;
  v518 = 0u;
  v515 = 0u;
  v516 = 0u;
  v163 = objc_getProperty(v34, v162, 88, 1);
  v164 = [v163 customIKEAuthPrivateNotifies];

  v165 = [v164 countByEnumeratingWithState:&v515 objects:buf count:16];
  if (v165)
  {
    v166 = v165;
    v167 = *v516;
    while (2)
    {
      v168 = 0;
      do
      {
        if (*v516 != v167)
        {
          objc_enumerationMutation(v164);
        }

        v169 = *(*(&v515 + 1) + 8 * v168);
        v170 = objc_alloc_init(NEIKEv2NotifyPayload);
        v171 = [v169 notifyStatus];
        if (v170)
        {
          v170->_notifyType = v171;
          v172 = [v169 notifyData];
          objc_setProperty_atomic(v170, v173, v172, 40);
        }

        else
        {
          v172 = [v169 notifyData];
        }

        if (![(NEIKEv2Packet *)v40 addNotifyPayload:v170])
        {
          v312 = ne_log_obj();
          if (os_log_type_enabled(v312, OS_LOG_TYPE_FAULT))
          {
            *v523 = 0;
            _os_log_fault_impl(&dword_1BA83C000, v312, OS_LOG_TYPE_FAULT, "[packet addNotifyPayload:notifyPayload] failed", v523, 2u);
          }

          v214 = 0;
          goto LABEL_207;
        }

        ++v168;
      }

      while (v166 != v168);
      v174 = [v164 countByEnumeratingWithState:&v515 objects:buf count:16];
      v166 = v174;
      if (v174)
      {
        continue;
      }

      break;
    }
  }

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  v176 = objc_getProperty(v34, v175, 88, 1);
  v177 = [v176 customIKEAuthVendorPayloads];

  obj = v177;
  v178 = [v177 countByEnumeratingWithState:&v511 objects:v523 count:16];
  if (v178)
  {
    v179 = v178;
    v180 = *v512;
    do
    {
      for (i = 0; i != v179; ++i)
      {
        if (*v512 != v180)
        {
          objc_enumerationMutation(obj);
        }

        v182 = *(*(&v511 + 1) + 8 * i);
        v183 = objc_alloc_init(NEIKEv2VendorIDPayload);
        v185 = [v182 vendorData];
        if (v183)
        {
          objc_setProperty_atomic(v183, v184, v185, 32);
        }

        v187 = objc_getProperty(v501, v186, 176, 1);

        if (v187)
        {
          v189 = objc_getProperty(v501, v188, 176, 1);
          v190 = [v189 arrayByAddingObject:v183];
          objc_setProperty_atomic(v501, v191, v190, 176);
        }

        else
        {
          v522 = v183;
          v189 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v522 count:1];
          objc_setProperty_atomic(v501, v192, v189, 176);
        }
      }

      v179 = [obj countByEnumeratingWithState:&v511 objects:v523 count:16];
    }

    while (v179);
  }

  v509 = 0u;
  v510 = 0u;
  v507 = 0u;
  v508 = 0u;
  v194 = objc_getProperty(v34, v193, 88, 1);
  v195 = [v194 customIKEAuthPayloads];

  v196 = v195;
  v197 = [v195 countByEnumeratingWithState:&v507 objects:v521 count:16];
  if (v197)
  {
    v198 = v197;
    v199 = *v508;
    do
    {
      v200 = 0;
      do
      {
        if (*v508 != v199)
        {
          objc_enumerationMutation(v196);
        }

        v201 = *(*(&v507 + 1) + 8 * v200);
        v202 = objc_alloc_init(NEIKEv2CustomPayload);
        v203 = [v201 customType];
        if (v202)
        {
          v202->_customType = v203;
          v204 = [v201 customData];
          objc_setProperty_atomic(v202, v205, v204, 40);
        }

        else
        {
          v204 = [v201 customData];
        }

        v207 = objc_getProperty(v501, v206, 56, 1);

        if (v207)
        {
          v209 = objc_getProperty(v501, v208, 56, 1);
          v210 = [v209 arrayByAddingObject:v202];
          objc_setProperty_atomic(v501, v211, v210, 56);
        }

        else
        {
          v520 = v202;
          v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v520 count:1];
          objc_setProperty_atomic(v501, v212, v209, 56);
        }

        ++v200;
      }

      while (v198 != v200);
      v213 = [v196 countByEnumeratingWithState:&v507 objects:v521 count:16];
      v198 = v213;
    }

    while (v213);
  }

  v40 = v501;
  v214 = v40;
LABEL_207:
  v3 = v499;
  v33 = v497;
  a1 = v498;
LABEL_220:

  if (v214)
  {
    v319 = *(a1 + 32);
    if (v319)
    {
      *(v319 + 17) = 0;
    }

    [(NEIKEv2Session *)*(a1 + 40) updateReceivedRequestWindow];
    v320 = ne_log_obj();
    if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
    {
      v321 = *(a1 + 40);
      *buf = 138412290;
      v525 = v321;
      _os_log_impl(&dword_1BA83C000, v320, OS_LOG_TYPE_DEFAULT, "%@ Sending AUTH reply", buf, 0xCu);
    }

    if (([(NEIKEv2Session *)*(a1 + 40) sendReply:v214 replyHandler:0]& 1) != 0)
    {
      v323 = *(a1 + 56);
      if (v323 && ([(NEIKEv2ChildSA *)v323 generateAllValues]& 1) == 0)
      {
        v387 = ne_log_obj();
        if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
        {
          v461 = *(a1 + 40);
          *buf = 138412290;
          v525 = v461;
          _os_log_error_impl(&dword_1BA83C000, v387, OS_LOG_TYPE_ERROR, "%@ Failed to generate Child SA crypto values (receive)", buf, 0xCu);
        }

        v389 = *(a1 + 40);
        if (v389)
        {
          v389 = objc_getProperty(v389, v388, 352, 1);
        }

        v378 = v389;
        ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA crypto values (receive)", v390, v391, v392, v393, v394, v395, v396, v496);
      }

      else
      {
        [(NEIKEv2Session *)*(a1 + 40) finishConfigurationEstablishment];
        [(NEIKEv2Session *)*(a1 + 40) reportConfiguration];
        [(NEIKEv2IKESA *)*(a1 + 32) clearPostAuthenticationData];
        v326 = *(a1 + 56);
        if (!v326 || ([(NEIKEv2Session *)*(a1 + 40) installChildSA:v326]& 1) != 0)
        {
          v327 = ne_log_obj();
          if (os_log_type_enabled(v327, OS_LOG_TYPE_DEFAULT))
          {
            v328 = *(a1 + 40);
            v329 = *(a1 + 56);
            *buf = 138412546;
            v525 = v328;
            v526 = 2112;
            v527 = v329;
            _os_log_impl(&dword_1BA83C000, v327, OS_LOG_TYPE_DEFAULT, "%@ Installed Child SA %@", buf, 0x16u);
          }

          v330 = *(a1 + 40);
          if (v330)
          {
            WeakRetained = objc_loadWeakRetained((v330 + 368));

            if (WeakRetained)
            {
              v505 = 0u;
              v506 = 0u;
              v503 = 0u;
              v504 = 0u;
              v333 = *(a1 + 40);
              if (v333)
              {
                v334 = objc_getProperty(v333, v332, 352, 1);
                v336 = v334;
                v337 = a1;
                if (v334)
                {
                  v334 = objc_getProperty(v334, v335, 88, 1);
                }
              }

              else
              {
                v337 = a1;
                v336 = 0;
                v334 = 0;
              }

              v338 = v334;
              v339 = [v338 configurationReply];
              v341 = v339;
              if (v339)
              {
                v339 = objc_getProperty(v339, v340, 16, 1);
              }

              v342 = v339;

              v343 = [v342 countByEnumeratingWithState:&v503 objects:v519 count:16];
              if (!v343)
              {

                a1 = v337;
                goto LABEL_282;
              }

              v344 = v343;
              v502 = v214;
              v345 = 0;
              v346 = *v504;
              while (1)
              {
                v347 = 0;
                do
                {
                  if (*v504 != v346)
                  {
                    objc_enumerationMutation(v342);
                  }

                  v348 = *(*(&v503 + 1) + 8 * v347);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v350 = [v348 address];
                    v351 = *(v337 + 40);
                    if (!v351)
                    {
                      goto LABEL_256;
                    }

                    v352 = objc_getProperty(v351, v349, 352, 1);
                    v354 = v352;
                    if (v352)
                    {
                      v355 = v350;
                      v356 = 72;
LABEL_252:
                      objc_setProperty_atomic(v352, v353, v355, v356);
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_254;
                    }

                    v350 = [v348 address];
                    v358 = *(v337 + 40);
                    if (!v358)
                    {
LABEL_256:
                      v354 = 0;
                      goto LABEL_253;
                    }

                    v352 = objc_getProperty(v358, v357, 352, 1);
                    v354 = v352;
                    if (v352)
                    {
                      v355 = v350;
                      v356 = 64;
                      goto LABEL_252;
                    }
                  }

LABEL_253:

                  v345 = 1;
LABEL_254:
                  ++v347;
                }

                while (v344 != v347);
                v359 = [v342 countByEnumeratingWithState:&v503 objects:v519 count:16];
                v344 = v359;
                if (!v359)
                {

                  a1 = v337;
                  v214 = v502;
                  if (v345)
                  {
                    v360 = ne_log_obj();
                    if (os_log_type_enabled(v360, OS_LOG_TYPE_DEFAULT))
                    {
                      v361 = *(v337 + 40);
                      *buf = 138412290;
                      v525 = v361;
                      _os_log_impl(&dword_1BA83C000, v360, OS_LOG_TYPE_DEFAULT, "%@ Changing addresses and migrating (receive)", buf, 0xCu);
                    }

                    [(NEIKEv2Session *)*(v337 + 40) migrateAllChildSAs];
                  }

                  break;
                }
              }
            }
          }

LABEL_282:
          v410 = ne_log_obj();
          if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
          {
            v411 = *(a1 + 40);
            *buf = 138412290;
            v525 = v411;
            _os_log_impl(&dword_1BA83C000, v410, OS_LOG_TYPE_DEFAULT, "%@ Completed connection (receive)", buf, 0xCu);
          }

          [(NEIKEv2IKESA *)*(a1 + 32) setState:0 error:?];
          v412 = *(a1 + 56);
          if (v412)
          {
            [(NEIKEv2Session *)*(a1 + 40) reportTrafficSelectorsForChildSA:v412];
            [(NEIKEv2ChildSA *)*(a1 + 56) setState:0 error:?];
          }

          [(NEIKEv2Session *)*(a1 + 40) reportState];
LABEL_287:
          ErrorInternal = 0;
          goto LABEL_288;
        }

        v397 = ne_log_obj();
        if (os_log_type_enabled(v397, OS_LOG_TYPE_ERROR))
        {
          v472 = *(a1 + 40);
          *buf = 138412290;
          v525 = v472;
          _os_log_error_impl(&dword_1BA83C000, v397, OS_LOG_TYPE_ERROR, "%@ Failed to install Child SA (receive)", buf, 0xCu);
        }

        v399 = *(a1 + 40);
        if (v399)
        {
          v399 = objc_getProperty(v399, v398, 352, 1);
        }

        v378 = v399;
        ErrorCrypto = NEIKEv2CreateErrorInternal(@"Failed to install Child SA (receive)", v400, v401, v402, v403, v404, v405, v406, v496);
      }
    }

    else
    {
      v377 = *(a1 + 40);
      if (v377)
      {
        v377 = objc_getProperty(v377, v322, 352, 1);
      }

      v378 = v377;
      ErrorCrypto = NEIKEv2CreateErrorFailedToSend(@"responder AUTH", v379, v380, v381, v382, v383, v384, v385, v496);
    }

    v407 = ErrorCrypto;
    [(NEIKEv2IKESA *)v378 setState:ErrorCrypto error:?];

    [(NEIKEv2Session *)*(a1 + 40) reportState];
    [(NEIKEv2Session *)*(a1 + 40) resetAll];
    goto LABEL_287;
  }

  v363 = ne_log_obj();
  if (os_log_type_enabled(v363, OS_LOG_TYPE_ERROR))
  {
    v414 = *(a1 + 40);
    *buf = 138412290;
    v525 = v414;
    _os_log_error_impl(&dword_1BA83C000, v363, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE AUTH packet (receive)", buf, 0xCu);
  }

  v365 = *(a1 + 40);
  if (v365)
  {
    v365 = objc_getProperty(v365, v364, 352, 1);
  }

  v366 = v365;
  v374 = NEIKEv2CreateErrorInternal(@"Failed to create IKE AUTH packet (receive)", v367, v368, v369, v370, v371, v372, v373, v496);
  [(NEIKEv2IKESA *)v366 setState:v374 error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  [(NEIKEv2Session *)*(a1 + 40) resetAll];
  ErrorInternal = 0;
  v214 = 0;
LABEL_288:

  v413 = *MEMORY[0x1E69E9840];
}

void __47__NEIKEv2Session_Exchange__initiateNewChildSA___block_invoke(id *a1, void *a2)
{
  v220 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] != 36)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v219 = 0;
      _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Failed to receive Create Child SA packet", v219, 2u);
    }

    [a1[4] sendCallbackSuccess:0 session:a1[5]];
    v26 = a1[6];
    v27 = @"Failed to receive Create Child SA packet";
    goto LABEL_83;
  }

  v4 = a1[6];
  v6 = v4;
  if (!v3)
  {
    goto LABEL_80;
  }

  if (!v4 || (v4[9] & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v211 = "[NEIKEv2CreateChildPacket(Exchange) validateCreateChildAsInitiator:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null childSA.isInitiator", buf, 0xCu);
    }

    goto LABEL_79;
  }

  if (![(NEIKEv2Packet *)v3 hasErrors])
  {
    goto LABEL_16;
  }

  v208 = 0u;
  v209 = 0u;
  v207 = 0u;
  v206 = 0u;
  v8 = objc_getProperty(v3, v7, 64, 1);
  v9 = [v8 countByEnumeratingWithState:&v206 objects:v219 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v207;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v207 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v206 + 1) + 8 * i);
      if (v13 && v13[1].isa - 1 <= 0x3FFE)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v43 = [(NEIKEv2Packet *)v3 copyShortDescription];
          v44 = [(NEIKEv2NotifyPayload *)v13 copyError];
          *buf = 138412802;
          v211 = v6;
          v212 = 2112;
          v213 = v43;
          v214 = 2112;
          v215 = v44;
          v45 = "%@ %@ Initiator create child received notify error %@";
          v46 = v17;
          goto LABEL_46;
        }

LABEL_78:

        goto LABEL_79;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v206 objects:v219 count:16];
  }

  while (v10);
LABEL_15:

LABEL_16:
  v14 = objc_getProperty(v6, v7, 48, 1);
  if ([v14 mode] != 1)
  {

LABEL_24:
    Property = objc_getProperty(v3, v16, 96, 1);
    v30 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v29, 32, 1);
    }

    v8 = Property;

    if ([v8 count]== 1)
    {
      v17 = [v8 firstObject];
      if (([(NEIKEv2ChildSAProposal *)v17 isAValidResponse]& 1) != 0)
      {
        if (v17)
        {
          v33 = objc_getProperty(v17, v32, 80, 1);
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;

        if (v34)
        {
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v36 = objc_getProperty(v6, v35, 48, 1);
          v37 = [v36 proposals];

          v38 = [v37 countByEnumeratingWithState:&v202 objects:v218 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v203;
LABEL_33:
            v41 = 0;
            while (1)
            {
              if (*v203 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v202 + 1) + 8 * v41);
              if (([(NEIKEv2ChildSAProposal *)v42 matchesLocalProposal:v17 preferRemoteProposal:0 checkKEMethod:0]& 1) != 0)
              {
                break;
              }

              if (v39 == ++v41)
              {
                v39 = [v37 countByEnumeratingWithState:&v202 objects:v218 count:16];
                if (v39)
                {
                  goto LABEL_33;
                }

                goto LABEL_39;
              }
            }

            v44 = v42;

            if (!v44)
            {
              goto LABEL_64;
            }

            v49 = [(NEIKEv2ChildSAProposal *)v44 copyFromRemote:v17 preferRemoteProposal:0 checkKEMethod:0];
            objc_setProperty_atomic(v6, v50, v49, 56);

            v52 = objc_getProperty(v6, v51, 56, 1);
            v53 = ne_log_obj();
            v43 = v53;
            if (v52)
            {
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = [(NEIKEv2Packet *)v3 copyShortDescription];
                v56 = objc_getProperty(v6, v55, 56, 1);
                *buf = 138412802;
                v211 = v6;
                v212 = 2112;
                v213 = v54;
                v214 = 2112;
                v215 = v56;
                _os_log_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_DEFAULT, "%@ %@ Chose responder new child proposal %@", buf, 0x20u);
              }

              v58 = objc_getProperty(v3, v57, 112, 1);

              if (v58)
              {
                v60 = objc_getProperty(v3, v59, 112, 1);
                v62 = v60;
                if (v60)
                {
                  v60 = objc_getProperty(v60, v61, 32, 1);
                }

                v63 = v60;

                if (v63)
                {
                  v64 = [(NEIKEv2ChildSA *)v6 ikeSA];
                  self = v64;
                  if (v64)
                  {
                    v64 = objc_getProperty(v64, v65, 80, 1);
                  }

                  v66 = v64;
                  v67 = [v66 strictNonceSizeChecks];

                  if (v67)
                  {
                    v69 = objc_getProperty(v3, v68, 112, 1);
                    v71 = v69;
                    if (v69)
                    {
                      v69 = objc_getProperty(v69, v70, 32, 1);
                    }

                    v72 = v69;
                    v73 = [v72 length];

                    if ((v73 - 257) <= 0xFFFFFFFFFFFFFF0ELL)
                    {
                      v75 = ne_log_obj();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                        *buf = 138412802;
                        v211 = v6;
                        v212 = 2112;
                        v213 = v76;
                        v214 = 2048;
                        v215 = v73;
                        v77 = "%@ %@ NONCE data length %zu is out of bounds";
                        v78 = v75;
                        v79 = 32;
LABEL_142:
                        _os_log_error_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_ERROR, v77, buf, v79);
                      }

LABEL_148:

                      goto LABEL_77;
                    }

                    v89 = self;
                    v194 = v73;
                    if (self)
                    {
                      v89 = objc_getProperty(self, v74, 96, 1);
                    }

                    v90 = v89;
                    v92 = [(NEIKEv2IKESAProposal *)v90 prfProtocol];
                    v93 = [v92 nonceSize];

                    if (v194 < v93)
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      v95 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      if (self)
                      {
                        v96 = objc_getProperty(self, v94, 96, 1);
                      }

                      else
                      {
                        v96 = 0;
                      }

                      v97 = v96;
                      v99 = [(NEIKEv2IKESAProposal *)v97 prfProtocol];
                      *buf = 138413058;
                      v211 = v6;
                      v212 = 2112;
                      v213 = v95;
                      v214 = 2048;
                      v215 = v194;
                      v216 = 2112;
                      v217 = v99;
                      _os_log_error_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_ERROR, "%@ %@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x2Au);

LABEL_147:
                      goto LABEL_148;
                    }
                  }

                  v100 = objc_getProperty(v3, v68, 112, 1);
                  v102 = v100;
                  if (v100)
                  {
                    v100 = objc_getProperty(v100, v101, 32, 1);
                  }

                  v103 = v100;
                  objc_setProperty_atomic(v6, v104, v103, 88);

                  if ([(NEIKEv2ChildSA *)v6 shouldGenerateNewDHKeys])
                  {
                    v107 = objc_getProperty(v3, v106, 104, 1);

                    if (!v107)
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      *buf = 138412546;
                      v211 = v6;
                      v212 = 2112;
                      v213 = v76;
                      v77 = "%@ %@ Did not receive KE payload";
                      goto LABEL_141;
                    }

                    v109 = objc_getProperty(v3, v108, 104, 1);
                    v111 = v109;
                    if (v109)
                    {
                      v109 = objc_getProperty(v109, v110, 32, 1);
                    }

                    v112 = v109;

                    if (!v112)
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      *buf = 138412546;
                      v211 = v6;
                      v212 = 2112;
                      v213 = v76;
                      v77 = "%@ %@ Did not receive method in KE payload";
                      goto LABEL_141;
                    }

                    v114 = objc_getProperty(v3, v113, 104, 1);
                    v116 = v114;
                    if (v114)
                    {
                      v114 = objc_getProperty(v114, v115, 40, 1);
                    }

                    v117 = v114;

                    if (!v117)
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      *buf = 138412546;
                      v211 = v6;
                      v212 = 2112;
                      v213 = v76;
                      v77 = "%@ %@ Did not receive data in KE payload";
                      goto LABEL_141;
                    }

                    v119 = objc_getProperty(v3, v118, 104, 1);
                    if (v119)
                    {
                      v121 = v119;
                      v119 = objc_getProperty(v119, v120, 32, 1);
                    }

                    else
                    {
                      v121 = 0;
                    }

                    v192 = v119;
                    v195 = [v192 method];
                    v123 = objc_getProperty(v6, v122, 56, 1);
                    v125 = [(NEIKEv2ChildSAProposal *)v123 kemProtocol];
                    v126 = [v125 method];

                    if (v195 != v126)
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      v193 = [(NEIKEv2Packet *)v3 copyShortDescription];
                      v165 = objc_getProperty(v3, v164, 104, 1);
                      v196 = v165;
                      if (v165)
                      {
                        v165 = objc_getProperty(v165, v166, 32, 1);
                      }

                      v191 = v165;
                      v190 = [v191 method];
                      v168 = objc_getProperty(v6, v167, 56, 1);
                      v170 = [(NEIKEv2ChildSAProposal *)v168 kemProtocol];
                      v171 = [v170 method];
                      *buf = 138413058;
                      v211 = v6;
                      v212 = 2112;
                      v95 = v193;
                      v213 = v193;
                      v214 = 2048;
                      v215 = v190;
                      v216 = 2048;
                      v217 = v171;
                      _os_log_error_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_ERROR, "%@ %@ Did not receive matching method from KE payload (%zu != %zu)", buf, 0x2Au);

                      goto LABEL_147;
                    }

                    v128 = objc_getProperty(v3, v127, 104, 1);
                    v130 = v128;
                    if (v128)
                    {
                      v128 = objc_getProperty(v128, v129, 40, 1);
                    }

                    v131 = v128;
                    objc_setProperty_atomic(v6, v132, v131, 104);
                  }

                  v133 = objc_getProperty(v3, v106, 128, 1);
                  v135 = v133;
                  if (v133)
                  {
                    v133 = objc_getProperty(v133, v134, 32, 1);
                  }

                  v136 = v133;
                  [(NEIKEv2ChildSA *)v6 setInitiatorTrafficSelectors:v136];

                  v138 = [(NEIKEv2ChildSA *)v6 initiatorTrafficSelectors];

                  if (v138)
                  {
                    v140 = objc_getProperty(v3, v139, 136, 1);
                    v142 = v140;
                    if (v140)
                    {
                      v140 = objc_getProperty(v140, v141, 32, 1);
                    }

                    v143 = v140;
                    [(NEIKEv2ChildSA *)v6 setResponderTrafficSelectors:v143];

                    v145 = [(NEIKEv2ChildSA *)v6 responderTrafficSelectors];

                    if (v145)
                    {

                      v147 = a1[6];
                      if (v147)
                      {
                        v148 = objc_getProperty(v147, v146, 56, 1);
                        v150 = v148;
                        if (v148)
                        {
                          v148 = objc_getProperty(v148, v149, 112, 1);
                        }
                      }

                      else
                      {
                        v150 = 0;
                        v148 = 0;
                      }

                      v151 = v148;

                      if (v151 && ([(NEIKEv2ChildSA *)a1[6] processPrimaryKeyExchange]& 1) == 0)
                      {
                        v189 = ne_log_obj();
                        if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                        {
                          *v219 = 0;
                          _os_log_error_impl(&dword_1BA83C000, v189, OS_LOG_TYPE_ERROR, "Failed to process KE data", v219, 2u);
                        }

                        [a1[4] sendCallbackSuccess:0 session:a1[5]];
                        v26 = a1[6];
                        v163 = @"Failed to process KE data";
                      }

                      else
                      {
                        if (([(NEIKEv2ChildSA *)a1[6] generateAllValues]& 1) != 0)
                        {
                          if (([(NEIKEv2Session *)a1[5] installChildSA:?]& 1) != 0)
                          {
                            [(NEIKEv2Session *)a1[5] reportTrafficSelectorsForChildSA:?];
                            v153 = ne_log_obj();
                            if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                            {
                              *v219 = 0;
                              _os_log_impl(&dword_1BA83C000, v153, OS_LOG_TYPE_INFO, "Completed new child SA connection", v219, 2u);
                            }

                            [(NEIKEv2ChildSA *)a1[6] setState:0 error:?];
                            [(NEIKEv2Session *)a1[5] reportState];
                            [a1[4] sendCallbackSuccess:1 session:a1[5]];
                          }

                          else
                          {
                            v172 = ne_log_obj();
                            if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
                            {
                              *v219 = 0;
                              _os_log_error_impl(&dword_1BA83C000, v172, OS_LOG_TYPE_ERROR, "Failed to install Child SA", v219, 2u);
                            }

                            v175 = a1[5];
                            v174 = a1[6];
                            if (v174)
                            {
                              v176 = objc_getProperty(v174, v173, 56, 1);
                              v178 = v176;
                              if (v176)
                              {
                                v176 = objc_getProperty(v176, v177, 80, 1);
                              }
                            }

                            else
                            {
                              v178 = 0;
                              v176 = 0;
                            }

                            v180 = v176;
                            v181 = a1[6];
                            if (v181)
                            {
                              v182 = objc_getProperty(v181, v179, 56, 1);
                              v184 = v182;
                              if (v182)
                              {
                                v182 = objc_getProperty(v182, v183, 88, 1);
                              }
                            }

                            else
                            {
                              v184 = 0;
                              v182 = 0;
                            }

                            v185 = v182;
                            v198[0] = MEMORY[0x1E69E9820];
                            v198[1] = 3221225472;
                            v198[2] = __47__NEIKEv2Session_Exchange__initiateNewChildSA___block_invoke_338;
                            v198[3] = &unk_1E7F083C8;
                            v186 = a1[4];
                            v187 = a1[5];
                            v188 = a1[6];
                            v199 = v186;
                            v200 = v187;
                            v201 = v188;
                            [(NEIKEv2Session *)v175 initiateDeleteChildSPI:v180 remoteSPI:v185 deleteCompletionCallback:v198];
                          }

                          goto LABEL_85;
                        }

                        v155 = ne_log_obj();
                        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                        {
                          *v219 = 0;
                          _os_log_error_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_ERROR, "Failed to generate Child SA crypto values", v219, 2u);
                        }

                        [a1[4] sendCallbackSuccess:0 session:a1[5]];
                        v26 = a1[6];
                        v163 = @"Failed to generate Child SA crypto values";
                      }

                      ErrorCrypto = NEIKEv2CreateErrorCrypto(v163, v156, v157, v158, v159, v160, v161, v162, v190);
                      goto LABEL_84;
                    }

                    v75 = ne_log_obj();
                    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_148;
                    }

                    v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                    *buf = 138412546;
                    v211 = v6;
                    v212 = 2112;
                    v213 = v76;
                    v77 = "%@ %@ Could not set responder traffic selectors";
                  }

                  else
                  {
                    v75 = ne_log_obj();
                    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_148;
                    }

                    v76 = [(NEIKEv2Packet *)v3 copyShortDescription];
                    *buf = 138412546;
                    v211 = v6;
                    v212 = 2112;
                    v213 = v76;
                    v77 = "%@ %@ Could not set initiator traffic selectors";
                  }

LABEL_141:
                  v78 = v75;
                  v79 = 22;
                  goto LABEL_142;
                }

                v43 = ne_log_obj();
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                v81 = [(NEIKEv2Packet *)v3 copyShortDescription];
                *buf = 138412546;
                v211 = v6;
                v212 = 2112;
                v213 = v81;
                v83 = "%@ %@ Did not receive NONCE data";
              }

              else
              {
                v43 = ne_log_obj();
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_76;
                }

                v81 = [(NEIKEv2Packet *)v3 copyShortDescription];
                *buf = 138412546;
                v211 = v6;
                v212 = 2112;
                v213 = v81;
                v83 = "%@ %@ Did not receive NONCE payload";
              }
            }

            else
            {
              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_76;
              }

              v81 = [(NEIKEv2Packet *)v3 copyShortDescription];
              *buf = 138412546;
              v211 = v6;
              v212 = 2112;
              v213 = v81;
              v83 = "%@ %@ Could not set chosen proposal values";
            }

            _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, v83, buf, 0x16u);
            goto LABEL_75;
          }

LABEL_39:

LABEL_64:
          v44 = ne_log_obj();
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          v43 = [(NEIKEv2Packet *)v3 copyShortDescription];
          v81 = objc_getProperty(v6, v80, 48, 1);
          v82 = [v81 proposals];
          *buf = 138413058;
          v211 = v6;
          v212 = 2112;
          v213 = v43;
          v214 = 2112;
          v215 = v17;
          v216 = 2112;
          v217 = v82;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@ %@ Received proposal %@ does not match config %@", buf, 0x2Au);

LABEL_75:
          goto LABEL_76;
        }

        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v43 = [(NEIKEv2Packet *)v3 copyShortDescription];
          *buf = 138412546;
          v211 = v6;
          v212 = 2112;
          v213 = v43;
          v45 = "%@ %@ Child SA proposal missing SPI";
          v46 = v44;
          v48 = 22;
LABEL_47:
          _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, v45, buf, v48);
LABEL_76:
        }
      }

      else
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v43 = [(NEIKEv2Packet *)v3 copyShortDescription];
          *buf = 138412802;
          v211 = v6;
          v212 = 2112;
          v213 = v43;
          v214 = 2112;
          v215 = v17;
          v45 = "%@ %@ Received invalid child proposal %@";
          v46 = v44;
LABEL_46:
          v48 = 32;
          goto LABEL_47;
        }
      }
    }

    else
    {
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      v44 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v47 = [v8 count];
      *buf = 138412802;
      v211 = v6;
      v212 = 2112;
      v213 = v44;
      v214 = 1024;
      LODWORD(v215) = v47;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%@ %@ Received %u child SA proposals, require 1", buf, 0x1Cu);
    }

LABEL_77:

    goto LABEL_78;
  }

  v15 = [(NEIKEv2Packet *)v3 hasNotification:?];

  if (v15)
  {
    goto LABEL_24;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = [(NEIKEv2Packet *)v3 copyShortDescription];
    *buf = 138412546;
    v211 = v6;
    v212 = 2112;
    v213 = v17;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ %@ Transport mode Child SA was not accepted", buf, 0x16u);
    goto LABEL_78;
  }

LABEL_79:

LABEL_80:
  v84 = ne_log_obj();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    *v219 = 0;
    _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, "Failed to process Create Child SA packet", v219, 2u);
  }

  [a1[4] sendCallbackSuccess:0 session:a1[5]];
  v26 = a1[6];
  v27 = @"Failed to process Create Child SA packet";
LABEL_83:
  ErrorCrypto = NEIKEv2CreateErrorPeerInvalidSyntax(v27, v19, v20, v21, v22, v23, v24, v25, v190);
LABEL_84:
  v86 = ErrorCrypto;
  [(NEIKEv2ChildSA *)v26 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)a1[5] reportState];
  [(NEIKEv2Session *)a1[5] resetChild:?];
LABEL_85:

  v88 = *MEMORY[0x1E69E9840];
}

void __47__NEIKEv2Session_Exchange__initiateNewChildSA___block_invoke_338(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  v2 = *(a1 + 48);
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to install Child SA", v3, v4, v5, v6, v7, v8, v9, v14);
  [(NEIKEv2ChildSA *)v2 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

- (void)receiveNewChildSA:(void *)a packet:
{
  v398 = *MEMORY[0x1E69E9840];
  v5 = a2;
  selfCopy2 = a;
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_226;
  }

  v8 = objc_getProperty(self, v6, 384, 1);
  dispatch_assert_queue_V2(v8);

  v10 = objc_getProperty(self, v9, 352, 1);
  if (!v10)
  {
LABEL_226:
    v352 = ne_log_obj();
    if (os_log_type_enabled(v352, OS_LOG_TYPE_FAULT))
    {
      *v396 = 136315138;
      v397 = "[NEIKEv2Session(Exchange) receiveNewChildSA:packet:]";
      _os_log_fault_impl(&dword_1BA83C000, v352, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", v396, 0xCu);
    }

    v12 = 0;
    goto LABEL_92;
  }

  v12 = v10;
  if (!v5)
  {
    v73 = ne_log_obj();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      *v396 = 0;
      _os_log_debug_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_DEBUG, "No eligible configuration for new Child SAs", v396, 2u);
    }

    v74 = [NEIKEv2CreateChildPacket createChildSAResponse:selfCopy2 errorCode:0x23uLL errorData:0];
    if (v74)
    {
      if (([(NEIKEv2Session *)self sendReply:v74 replyHandler:0]& 1) != 0)
      {
        v82 = 0;
LABEL_59:

        [(NEIKEv2Session *)self reportState];
        [(NEIKEv2Session *)self resetChild:?];

        goto LABEL_92;
      }

      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"create child SA refusal (no eligible configuration)", v75, v76, v77, v78, v79, v80, v81, v365);
    }

    else
    {
      v95 = ne_log_obj();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        *v396 = 0;
        _os_log_error_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", v396, 2u);
      }

      ErrorFailedToSend = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v96, v97, v98, v99, v100, v101, v102, v365);
    }

    v82 = ErrorFailedToSend;

    goto LABEL_59;
  }

  v13 = objc_getProperty(v5, v11, 48, 1);
  proposals = [v13 proposals];
  v15 = [(NEIKEv2Session *)self generateSPIForChild:v5 proposals:proposals];

  if (v15)
  {
    if (([(NEIKEv2ChildSA *)v5 generateInitialValues]& 1) != 0)
    {
      v17 = v5;
      v18 = 0x1E7F04000;
      if (v17[9])
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v389 = "[NEIKEv2CreateChildPacket(Exchange) validateCreateChildAsResponder:]";
          _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "%s called with null !childSA.isInitiator", buf, 0xCu);
        }

        v18 = 0x1E7F04000;
        goto LABEL_75;
      }

      if ([(NEIKEv2Packet *)selfCopy2 hasErrors])
      {
        v386 = 0u;
        v387 = 0u;
        v384 = 0u;
        v385 = 0u;
        self = selfCopy2;
        if (selfCopy2)
        {
          Property = objc_getProperty(selfCopy2, v19, 64, 1);
        }

        else
        {
          Property = 0;
        }

        v21 = Property;
        v22 = [v21 countByEnumeratingWithState:&v384 objects:v396 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v385;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v385 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v384 + 1) + 8 * i);
              if (v26 && v26[1].isa - 1 <= 0x3FFE)
              {
                v105 = ne_log_obj();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
                  copyError = [(NEIKEv2NotifyPayload *)v26 copyError];
                  *buf = 138412802;
                  v389 = v17;
                  v390 = 2112;
                  v391 = copyShortDescription;
                  v392 = 2112;
                  v393 = copyError;
                  _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "%@ %@ Responder create child received notify error %@", buf, 0x20u);
                }

                selfCopy2 = self;
                v18 = 0x1E7F04000;
                goto LABEL_75;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v384 objects:v396 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        selfCopy2 = self;
        v18 = 0x1E7F04000uLL;
      }

      if ([(NEIKEv2Packet *)selfCopy2 hasNotification:?])
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v29 = objc_getProperty(v17, v27, 48, 1);
      mode = [v29 mode];

      if (v28 != mode)
      {
        v21 = ne_log_obj();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_75:

          goto LABEL_76;
        }

        copyShortDescription2 = [(NEIKEv2Packet *)selfCopy2 copyShortDescription];
        *buf = 138412546;
        v389 = v17;
        v390 = 2112;
        v391 = copyShortDescription2;
        _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ %@ Transport mode Child SA did not match", buf, 0x16u);
LABEL_74:

        goto LABEL_75;
      }

      v32 = objc_getProperty(selfCopy2, v31, 96, 1);
      v34 = v32;
      if (v32)
      {
        v32 = objc_getProperty(v32, v33, 32, 1);
      }

      v21 = v32;

      v36 = objc_getProperty(v17, v35, 48, 1);
      copyShortDescription2 = [v36 proposals];

      if ([v21 count])
      {
        selfa = selfCopy2;
        v39 = objc_getProperty(v17, v38, 48, 1);
        v40 = +[NEIKEv2ChildSAProposal chooseChildSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:checkKEMethod:](NEIKEv2ChildSAProposal, copyShortDescription2, v21, [v39 preferInitiatorProposalOrder], 0);
        objc_setProperty_atomic(v17, v41, v40, 56);

        v43 = objc_getProperty(v17, v42, 56, 1);
        v44 = ne_log_obj();
        v45 = v44;
        if (!v43)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v106 = v18;
            v107 = selfa;
            copyShortDescription3 = [(NEIKEv2Packet *)selfa copyShortDescription];
            *buf = 138412546;
            v389 = v17;
            v390 = 2112;
            v391 = copyShortDescription3;
            v109 = "%@ %@ No matching proposal found";
            goto LABEL_164;
          }

LABEL_72:
          selfCopy2 = selfa;
          goto LABEL_73;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          copyShortDescription4 = [(NEIKEv2Packet *)selfa copyShortDescription];
          v48 = v18;
          v49 = v12;
          v50 = objc_getProperty(v17, v47, 56, 1);
          *buf = 138412802;
          v389 = v17;
          v390 = 2112;
          v391 = copyShortDescription4;
          v392 = 2112;
          v393 = v50;
          _os_log_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEFAULT, "%@ %@ Chose initiator new child proposal %@", buf, 0x20u);

          v12 = v49;
          v18 = v48;
        }

        selfCopy2 = selfa;
        v52 = objc_getProperty(selfa, v51, 112, 1);

        if (v52)
        {
          v54 = objc_getProperty(selfa, v53, 112, 1);
          v56 = v54;
          if (v54)
          {
            v54 = objc_getProperty(v54, v55, 32, 1);
          }

          v57 = v54;

          if (v57)
          {
            WeakRetained = objc_loadWeakRetained(v17 + 3);
            v370 = WeakRetained;
            v60 = v12;
            if (WeakRetained)
            {
              WeakRetained = objc_getProperty(WeakRetained, v59, 80, 1);
            }

            v61 = WeakRetained;
            strictNonceSizeChecks = [v61 strictNonceSizeChecks];

            if (strictNonceSizeChecks)
            {
              v64 = objc_getProperty(selfa, v63, 112, 1);
              v66 = v64;
              if (v64)
              {
                v64 = objc_getProperty(v64, v65, 32, 1);
              }

              v67 = v64;
              v68 = [v67 length];

              v366 = v68;
              v70 = (v68 != 15) & __CFADD__(v68 - 257, 242);
              v12 = v60;
              if (!v70)
              {
                v71 = ne_log_obj();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription5 = [(NEIKEv2Packet *)selfa copyShortDescription];
                  *buf = 138412802;
                  v389 = v17;
                  v390 = 2112;
                  v391 = copyShortDescription5;
                  v392 = 2048;
                  v393 = v366;
                  _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, "%@ %@ NONCE data length %zu is out of bounds", buf, 0x20u);
                }

                goto LABEL_162;
              }

              v142 = v370;
              if (v370)
              {
                v142 = objc_getProperty(v370, v69, 96, 1);
              }

              v143 = v142;
              prfProtocol = [(NEIKEv2IKESAProposal *)v143 prfProtocol];
              nonceSize = [prfProtocol nonceSize];

              if (v366 < nonceSize)
              {
                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  v12 = v60;
LABEL_162:

                  selfCopy2 = selfa;
LABEL_76:
                  v111 = ne_log_obj();
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                  {
                    *v396 = 0;
                    _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "Failed to process Create Child SA", v396, 2u);
                  }

                  v113 = objc_getProperty(v17, v112, 40, 1);
                  domain = [v113 domain];
                  v115 = [domain isEqual:@"NEIKEv2ErrorDomain"];

                  if (v115)
                  {
                    v117 = objc_getProperty(v17, v116, 40, 1);
                    code = [v117 code];

                    if (code == 8)
                    {
                      v119 = 24;
                    }

                    else
                    {
                      v119 = 7;
                    }
                  }

                  else
                  {
                    v119 = 7;
                  }

                  v120 = [(NEIKEv2CreateChildPacket *)*(v18 + 2384) createChildSAResponse:selfCopy2 errorCode:v119 errorData:0];
                  if (v120)
                  {
                    if (([(NEIKEv2Session *)self sendReply:v120 replyHandler:0]& 1) != 0)
                    {
                      [(NEIKEv2ChildSA *)v17 setState:0 error:?];
LABEL_91:
                      [(NEIKEv2Session *)self reportState];
                      [(NEIKEv2Session *)self resetChild:v17];

                      goto LABEL_92;
                    }

                    ErrorInternal = NEIKEv2CreateErrorFailedToSend(@"create child SA refusal (failed to create response packet)", v121, v122, v123, v124, v125, v126, v127, v365);
                  }

                  else
                  {
                    v129 = ne_log_obj();
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                    {
                      *v396 = 0;
                      _os_log_error_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", v396, 2u);
                    }

                    ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v130, v131, v132, v133, v134, v135, v136, v365);
                  }

                  v138 = ErrorInternal;
                  [(NEIKEv2ChildSA *)v17 setState:ErrorInternal error:?];

                  goto LABEL_91;
                }

                v369 = copyShortDescription2;
                copyShortDescription6 = [(NEIKEv2Packet *)selfa copyShortDescription];
                if (v370)
                {
                  v337 = objc_getProperty(v370, v335, 96, 1);
                }

                else
                {
                  v337 = 0;
                }

                v338 = v337;
                prfProtocol2 = [(NEIKEv2IKESAProposal *)v338 prfProtocol];
                *buf = 138413058;
                v389 = v17;
                v390 = 2112;
                v391 = copyShortDescription6;
                v392 = 2048;
                v393 = v366;
                v394 = 2112;
                v395 = prfProtocol2;
                _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, "%@ %@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", buf, 0x2Au);

                v12 = v60;
LABEL_161:
                copyShortDescription2 = v369;
                goto LABEL_162;
              }
            }

            v147 = objc_getProperty(selfa, v63, 112, 1);
            v149 = v147;
            if (v147)
            {
              v147 = objc_getProperty(v147, v148, 32, 1);
            }

            v150 = v147;
            objc_setProperty_atomic(v17, v151, v150, 88);

            v12 = v60;
            v369 = copyShortDescription2;
            if (![(NEIKEv2ChildSA *)v17 shouldGenerateNewDHKeys])
            {
LABEL_114:
              v181 = objc_getProperty(selfa, v153, 128, 1);
              v183 = v181;
              v372 = v12;
              if (v181)
              {
                v181 = objc_getProperty(v181, v182, 32, 1);
              }

              v184 = v181;
              v186 = objc_getProperty(v17, v185, 48, 1);
              remoteTrafficSelectors = [v186 remoteTrafficSelectors];
              v188 = [NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:v184 reply:remoteTrafficSelectors];
              [(NEIKEv2ChildSA *)v17 setInitiatorTrafficSelectors:v188];

              v190 = objc_getProperty(selfa, v189, 136, 1);
              v192 = v190;
              if (v190)
              {
                v190 = objc_getProperty(v190, v191, 32, 1);
              }

              v193 = v190;
              v195 = objc_getProperty(v17, v194, 48, 1);
              localTrafficSelectors = [v195 localTrafficSelectors];
              v197 = [NEIKEv2TrafficSelector copyConstrainedTrafficSelectorsForRequest:v193 reply:localTrafficSelectors];
              [(NEIKEv2ChildSA *)v17 setResponderTrafficSelectors:v197];

              v198 = *(v18 + 2384);
              selfCopy2 = selfa;
              v199 = selfa;
              v200 = v17;
              objc_opt_self();
              if (v17[9])
              {
                v205 = ne_log_obj();
                if (os_log_type_enabled(v205, OS_LOG_TYPE_FAULT))
                {
                  *v396 = 136315138;
                  v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                  _os_log_fault_impl(&dword_1BA83C000, v205, OS_LOG_TYPE_FAULT, "%s called with null !childSA.isInitiator", v396, 0xCu);
                }

                v276 = 0;
                v12 = v372;
                goto LABEL_176;
              }

              v202 = objc_getProperty(v200, v201, 56, 1);

              v12 = v372;
              if (v202)
              {
                v203 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initResponse:v199];
                if (v203)
                {
                  v205 = v203;
                  v206 = objc_getProperty(v200, v204, 48, 1);
                  mode2 = [v206 mode];

                  if (mode2 != 1 || [(NEIKEv2Packet *)v205 addNotification:0 data:?])
                  {
                    v208 = objc_alloc_init(NEIKEv2ChildSAPayload);
                    objc_setProperty_atomic(v205, v209, v208, 96);

                    v211 = objc_getProperty(v200, v210, 48, 1);
                    proposals2 = [v211 proposals];
                    v214 = objc_getProperty(v205, v213, 96, 1);
                    v216 = v214;
                    if (v214)
                    {
                      objc_setProperty_atomic(v214, v215, proposals2, 32);
                    }

                    v218 = objc_getProperty(v205, v217, 96, 1);
                    isValid = [(NEIKEv2Payload *)v218 isValid];

                    if (isValid)
                    {
                      if ([(NEIKEv2ChildSA *)v200 shouldGenerateNewDHKeys])
                      {
                        v221 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                        objc_setProperty_atomic(v205, v222, v221, 104);

                        v224 = objc_getProperty(v200, v223, 56, 1);
                        kemProtocol = [(NEIKEv2ChildSAProposal *)v224 kemProtocol];
                        v228 = objc_getProperty(v205, v227, 104, 1);
                        v230 = v228;
                        if (v228)
                        {
                          objc_setProperty_atomic(v228, v229, kemProtocol, 32);
                        }

                        v232 = objc_getProperty(v200, v231, 112, 1);
                        v233 = v232;
                        if (v232)
                        {
                          v234 = *(v232 + 2);
                        }

                        else
                        {
                          v234 = 0;
                        }

                        v235 = v234;
                        v237 = objc_getProperty(v205, v236, 104, 1);
                        v239 = v237;
                        if (v237)
                        {
                          objc_setProperty_atomic(v237, v238, v235, 40);
                        }

                        v241 = objc_getProperty(v205, v240, 104, 1);
                        isValid2 = [(NEIKEv2Payload *)v241 isValid];

                        if ((isValid2 & 1) == 0)
                        {
                          v285 = ne_log_obj();
                          if (!os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_215;
                          }

                          *v396 = 136315138;
                          v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                          v286 = "%s called with null packet.ke.isValid";
                          goto LABEL_221;
                        }
                      }

                      v243 = objc_alloc_init(NEIKEv2NoncePayload);
                      objc_setProperty_atomic(v205, v244, v243, 112);

                      v246 = objc_getProperty(v200, v245, 80, 1);
                      v248 = objc_getProperty(v205, v247, 112, 1);
                      v250 = v248;
                      v12 = v372;
                      if (v248)
                      {
                        objc_setProperty_atomic(v248, v249, v246, 32);
                      }

                      v252 = objc_getProperty(v205, v251, 112, 1);
                      isValid3 = [(NEIKEv2Payload *)v252 isValid];

                      if (isValid3)
                      {
                        v254 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
                        objc_setProperty_atomic(v205, v255, v254, 128);

                        initiatorTrafficSelectors = [(NEIKEv2ChildSA *)v200 initiatorTrafficSelectors];
                        v259 = objc_getProperty(v205, v258, 128, 1);
                        v261 = v259;
                        if (v259)
                        {
                          objc_setProperty_atomic(v259, v260, initiatorTrafficSelectors, 32);
                        }

                        v263 = objc_getProperty(v205, v262, 128, 1);
                        isValid4 = [(NEIKEv2Payload *)v263 isValid];

                        if (isValid4)
                        {
                          v265 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
                          objc_setProperty_atomic(v205, v266, v265, 136);

                          responderTrafficSelectors = [(NEIKEv2ChildSA *)v200 responderTrafficSelectors];
                          v270 = objc_getProperty(v205, v269, 136, 1);
                          v272 = v270;
                          if (v270)
                          {
                            objc_setProperty_atomic(v270, v271, responderTrafficSelectors, 32);
                          }

                          v274 = objc_getProperty(v205, v273, 136, 1);
                          isValid5 = [(NEIKEv2Payload *)v274 isValid];

                          if (isValid5)
                          {
                            v205 = v205;
                            v276 = v205;
LABEL_216:
                            v12 = v372;
                            goto LABEL_176;
                          }

                          v285 = ne_log_obj();
                          if (!os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
                          {
LABEL_215:

                            v276 = 0;
                            goto LABEL_216;
                          }

                          *v396 = 136315138;
                          v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                          v286 = "%s called with null packet.tsr.isValid";
LABEL_221:
                          _os_log_fault_impl(&dword_1BA83C000, v285, OS_LOG_TYPE_FAULT, v286, v396, 0xCu);
                          goto LABEL_215;
                        }

                        v281 = ne_log_obj();
                        if (os_log_type_enabled(v281, OS_LOG_TYPE_FAULT))
                        {
                          *v396 = 136315138;
                          v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                          v282 = "%s called with null packet.tsi.isValid";
                          goto LABEL_173;
                        }

LABEL_175:

                        v276 = 0;
LABEL_176:
                        selfCopy2 = selfa;
LABEL_177:

                        if (v276)
                        {
                          if (([(NEIKEv2Session *)self sendReply:v276 replyHandler:0]& 1) != 0)
                          {
                            v294 = objc_getProperty(v200, v287, 56, 1);
                            v296 = v294;
                            if (v294)
                            {
                              v294 = objc_getProperty(v294, v295, 112, 1);
                            }

                            v297 = v294;

                            if (v297 && ([(NEIKEv2ChildSA *)v200 processPrimaryKeyExchange]& 1) == 0)
                            {
                              v353 = v12;
                              v354 = ne_log_obj();
                              if (os_log_type_enabled(v354, OS_LOG_TYPE_ERROR))
                              {
                                *v396 = 0;
                                _os_log_error_impl(&dword_1BA83C000, v354, OS_LOG_TYPE_ERROR, "Failed to process KE data", v396, 2u);
                              }

                              v356 = objc_getProperty(v200, v355, 56, 1);
                              v358 = v356;
                              if (v356)
                              {
                                v356 = objc_getProperty(v356, v357, 80, 1);
                              }

                              v359 = v356;
                              v361 = objc_getProperty(v200, v360, 56, 1);
                              v363 = v361;
                              if (v361)
                              {
                                v361 = objc_getProperty(v361, v362, 88, 1);
                              }

                              v364 = v361;
                              v381[0] = MEMORY[0x1E69E9820];
                              v381[1] = 3221225472;
                              v381[2] = __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke;
                              v381[3] = &unk_1E7F081C0;
                              v382 = v200;
                              selfCopy3 = self;
                              [(NEIKEv2Session *)self initiateDeleteChildSPI:v359 remoteSPI:v364 deleteCompletionCallback:v381];

                              v12 = v353;
                            }

                            else
                            {
                              if (([(NEIKEv2ChildSA *)v200 generateAllValues]& 1) != 0)
                              {
                                if (([(NEIKEv2Session *)self installChildSA:v200]& 1) != 0)
                                {
                                  [(NEIKEv2ChildSA *)v200 setState:0 error:?];
                                  [(NEIKEv2Session *)self reportState];
LABEL_207:

                                  goto LABEL_92;
                                }

                                v324 = ne_log_obj();
                                if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
                                {
                                  *v396 = 0;
                                  _os_log_error_impl(&dword_1BA83C000, v324, OS_LOG_TYPE_ERROR, "Failed to install Child SA", v396, 2u);
                                }

                                v326 = objc_getProperty(v200, v325, 56, 1);
                                v328 = v326;
                                if (v326)
                                {
                                  v326 = objc_getProperty(v326, v327, 80, 1);
                                }

                                v329 = v326;
                                v331 = objc_getProperty(v200, v330, 56, 1);
                                v333 = v331;
                                v321 = v12;
                                if (v331)
                                {
                                  v331 = objc_getProperty(v331, v332, 88, 1);
                                }

                                v334 = v331;
                                v375[0] = MEMORY[0x1E69E9820];
                                v375[1] = 3221225472;
                                v375[2] = __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke_355;
                                v375[3] = &unk_1E7F081C0;
                                v376 = v200;
                                selfCopy4 = self;
                                [(NEIKEv2Session *)self initiateDeleteChildSPI:v329 remoteSPI:v334 deleteCompletionCallback:v375];

                                v323 = v376;
                              }

                              else
                              {
                                v311 = ne_log_obj();
                                if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
                                {
                                  *v396 = 0;
                                  _os_log_error_impl(&dword_1BA83C000, v311, OS_LOG_TYPE_ERROR, "Failed to generate Child SA crypto values", v396, 2u);
                                }

                                v313 = objc_getProperty(v200, v312, 56, 1);
                                v315 = v313;
                                if (v313)
                                {
                                  v313 = objc_getProperty(v313, v314, 80, 1);
                                }

                                v316 = v313;
                                v318 = objc_getProperty(v200, v317, 56, 1);
                                v320 = v318;
                                v321 = v12;
                                if (v318)
                                {
                                  v318 = objc_getProperty(v318, v319, 88, 1);
                                }

                                v322 = v318;
                                v378[0] = MEMORY[0x1E69E9820];
                                v378[1] = 3221225472;
                                v378[2] = __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke_354;
                                v378[3] = &unk_1E7F081C0;
                                v379 = v200;
                                selfCopy5 = self;
                                [(NEIKEv2Session *)self initiateDeleteChildSPI:v316 remoteSPI:v322 deleteCompletionCallback:v378];

                                v323 = v379;
                              }

                              v12 = v321;
                            }

                            selfCopy2 = selfa;
                            goto LABEL_207;
                          }

                          v308 = NEIKEv2CreateErrorFailedToSend(@"create child SA reply", v287, v288, v289, v290, v291, v292, v293, v365);
                        }

                        else
                        {
                          v300 = ne_log_obj();
                          if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
                          {
                            *v396 = 0;
                            _os_log_error_impl(&dword_1BA83C000, v300, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", v396, 2u);
                          }

                          v308 = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v301, v302, v303, v304, v305, v306, v307, v365);
                        }

                        v309 = v308;
                        [(NEIKEv2ChildSA *)v200 setState:v308 error:?];

                        [(NEIKEv2Session *)self reportState];
                        [(NEIKEv2Session *)self resetChild:v200];
                        goto LABEL_207;
                      }

                      v281 = ne_log_obj();
                      if (!os_log_type_enabled(v281, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_175;
                      }

                      *v396 = 136315138;
                      v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                      v282 = "%s called with null packet.nonce.isValid";
                    }

                    else
                    {
                      v281 = ne_log_obj();
                      v12 = v372;
                      if (!os_log_type_enabled(v281, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_175;
                      }

                      *v396 = 136315138;
                      v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                      v282 = "%s called with null packet.childSA.isValid";
                    }

LABEL_173:
                    v283 = v281;
                    v284 = 12;
                    goto LABEL_174;
                  }

                  v281 = ne_log_obj();
                  if (os_log_type_enabled(v281, OS_LOG_TYPE_FAULT))
                  {
                    *v396 = 0;
                    v282 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
                    v283 = v281;
                    v284 = 2;
LABEL_174:
                    _os_log_fault_impl(&dword_1BA83C000, v283, OS_LOG_TYPE_FAULT, v282, v396, v284);
                    goto LABEL_175;
                  }

                  goto LABEL_175;
                }

                v278 = ne_log_obj();
                if (os_log_type_enabled(v278, OS_LOG_TYPE_FAULT))
                {
                  *v396 = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v278, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initResponse:] failed", v396, 2u);
                }

                v205 = 0;
              }

              else
              {
                v205 = ne_log_obj();
                if (os_log_type_enabled(v205, OS_LOG_TYPE_FAULT))
                {
                  *v396 = 136315138;
                  v397 = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAResponse:childSA:]";
                  _os_log_fault_impl(&dword_1BA83C000, v205, OS_LOG_TYPE_FAULT, "%s called with null childSA.chosenProposal", v396, 0xCu);
                }
              }

              v276 = 0;
              goto LABEL_177;
            }

            v154 = objc_getProperty(selfa, v153, 104, 1);

            if (v154)
            {
              v156 = objc_getProperty(selfa, v155, 104, 1);
              v158 = v156;
              if (v156)
              {
                v156 = objc_getProperty(v156, v157, 32, 1);
              }

              v18 = 0x1E7F04000;
              v159 = v156;

              if (v159)
              {
                v161 = objc_getProperty(selfa, v160, 104, 1);
                v163 = v161;
                if (v161)
                {
                  v161 = objc_getProperty(v161, v162, 40, 1);
                }

                v164 = v161;

                if (v164)
                {
                  v166 = objc_getProperty(selfa, v165, 104, 1);
                  v371 = v60;
                  if (v166)
                  {
                    v168 = v166;
                    v166 = objc_getProperty(v166, v167, 32, 1);
                  }

                  else
                  {
                    v168 = 0;
                  }

                  v169 = v166;
                  method = [v169 method];
                  v171 = objc_getProperty(v17, v170, 56, 1);
                  kemProtocol2 = [(NEIKEv2ChildSAProposal *)v171 kemProtocol];
                  method2 = [kemProtocol2 method];

                  if (method == method2)
                  {
                    v176 = objc_getProperty(selfa, v175, 104, 1);
                    v178 = v176;
                    v12 = v371;
                    if (v176)
                    {
                      v176 = objc_getProperty(v176, v177, 40, 1);
                    }

                    v18 = 0x1E7F04000uLL;
                    v179 = v176;
                    objc_setProperty_atomic(v17, v180, v179, 104);

                    goto LABEL_114;
                  }

                  v71 = ne_log_obj();
                  v12 = v371;
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription7 = [(NEIKEv2Packet *)selfa copyShortDescription];
                    v343 = objc_getProperty(selfa, v342, 104, 1);
                    v345 = v343;
                    if (v343)
                    {
                      v343 = objc_getProperty(v343, v344, 32, 1);
                    }

                    v368 = v343;
                    method3 = [v368 method];
                    v348 = objc_getProperty(v17, v347, 56, 1);
                    kemProtocol3 = [(NEIKEv2ChildSAProposal *)v348 kemProtocol];
                    method4 = [kemProtocol3 method];
                    *buf = 138413058;
                    v389 = v17;
                    v390 = 2112;
                    v391 = copyShortDescription7;
                    v392 = 2048;
                    v393 = method3;
                    v394 = 2048;
                    v395 = method4;
                    _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, "%@ %@ Did not receive matching method from KE payload (%zu != %zu)", buf, 0x2Au);

                    v12 = v371;
                  }

LABEL_160:
                  v18 = 0x1E7F04000;
                  goto LABEL_161;
                }

                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_161;
                }

                copyShortDescription8 = [(NEIKEv2Packet *)selfa copyShortDescription];
                *buf = 138412546;
                v389 = v17;
                v390 = 2112;
                v391 = copyShortDescription8;
                v280 = "%@ %@ Did not receive KE data";
              }

              else
              {
                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_161;
                }

                copyShortDescription8 = [(NEIKEv2Packet *)selfa copyShortDescription];
                *buf = 138412546;
                v389 = v17;
                v390 = 2112;
                v391 = copyShortDescription8;
                v280 = "%@ %@ Did not receive method in KE payload";
              }

              _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, v280, buf, 0x16u);

              goto LABEL_161;
            }

            v71 = ne_log_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription9 = [(NEIKEv2Packet *)selfa copyShortDescription];
              *buf = 138412546;
              v389 = v17;
              v390 = 2112;
              v391 = copyShortDescription9;
              _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, "%@ %@ Did not receive KE payload", buf, 0x16u);
            }

            goto LABEL_160;
          }

          v45 = ne_log_obj();
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_72;
          }

          v106 = v18;
          v107 = selfa;
          copyShortDescription3 = [(NEIKEv2Packet *)selfa copyShortDescription];
          *buf = 138412546;
          v389 = v17;
          v390 = 2112;
          v391 = copyShortDescription3;
          v109 = "%@ %@ Did not receive NONCE data";
LABEL_164:
          _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, v109, buf, 0x16u);

          selfCopy2 = v107;
          v18 = v106;
          goto LABEL_73;
        }

        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription10 = [(NEIKEv2Packet *)selfa copyShortDescription];
          *buf = 138412546;
          v389 = v17;
          v390 = 2112;
          v391 = copyShortDescription10;
          _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, "%@ %@ Did not receive NONCE payload", buf, 0x16u);

          goto LABEL_72;
        }
      }

      else
      {
        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v106 = v18;
          v107 = selfCopy2;
          copyShortDescription3 = [(NEIKEv2Packet *)selfCopy2 copyShortDescription];
          *buf = 138412546;
          v389 = v17;
          v390 = 2112;
          v391 = copyShortDescription3;
          v109 = "%@ %@ Received no SA proposals";
          goto LABEL_164;
        }
      }

LABEL_73:

      goto LABEL_74;
    }

    v92 = ne_log_obj();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      *v396 = 0;
      _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "Failed to generate local Child crypto values", v396, 2u);
    }

    v91 = @"Failed to generate local Child crypto values";
  }

  else
  {
    v83 = ne_log_obj();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *v396 = 0;
      _os_log_error_impl(&dword_1BA83C000, v83, OS_LOG_TYPE_ERROR, "Failed to generate Child SA SPI", v396, 2u);
    }

    v91 = @"Failed to generate Child SA SPI";
  }

  ErrorCrypto = NEIKEv2CreateErrorCrypto(v91, v84, v85, v86, v87, v88, v89, v90, v365);
  [(NEIKEv2ChildSA *)v5 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)self reportState];
  [(NEIKEv2Session *)self resetChild:v5];
LABEL_92:

  v139 = *MEMORY[0x1E69E9840];
}

void __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process KE data", a2, a3, a4, a5, a6, a7, a8, v14);
  [(NEIKEv2ChildSA *)v9 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke_354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA crypto values", a2, a3, a4, a5, a6, a7, a8, v14);
  [(NEIKEv2ChildSA *)v9 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __53__NEIKEv2Session_Exchange__receiveNewChildSA_packet___block_invoke_355(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to install Child SA", a2, a3, a4, a5, a6, a7, a8, v14);
  [(NEIKEv2ChildSA *)v9 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __69__NEIKEv2Session_Exchange__retryKEForRekeyChildSA_validated_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 36)
  {
    if (([(NEIKEv2CreateChildPacket *)v3 validateRekeyResponseChildSA:?]& 1) != 0)
    {
      v4 = *(*(a1 + 56) + 16);
    }

    else
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *v20 = 138412290;
        *&v20[4] = v19;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to process Create Child SA packet (child rekey retry KE)", v20, 0xCu);
      }

      v4 = *(*(a1 + 56) + 16);
    }

    v4();
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *v20 = 138412290;
      *&v20[4] = v18;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to receive Create Child SA packet (child rekey retry KE)", v20, 0xCu);
    }

    [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
    v6 = *(a1 + 48);
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive Create Child SA packet (child rekey retry KE)", v7, v8, v9, v10, v11, v12, v13, *v20);
    [(NEIKEv2ChildSA *)v6 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)*(a1 + 32) reportState];
    [(NEIKEv2Session *)*(a1 + 32) resetChild:?];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleFollowupKEForRekeyChildSAInitiator:(unint64_t)initiator iteration:(void *)iteration handler:
{
  v123 = *MEMORY[0x1E69E9840];
  v7 = a2;
  iterationCopy = iteration;
  if (self)
  {
    v10 = objc_getProperty(self, v8, 384, 1);
    dispatch_assert_queue_V2(v10);

    if (v7)
    {
      v11 = v7[6];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(NEIKEv2Session *)self copyChildWithID:v11];
    v14 = v12;
    if (v12)
    {
      Property = objc_getProperty(v12, v13, 56, 1);
      v17 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v16, 120, 1);
      }
    }

    else
    {
      v17 = 0;
      Property = 0;
    }

    v18 = Property;
    v19 = [v18 count];

    if (v19 <= initiator)
    {
      if (v14)
      {
        objc_setProperty_atomic(v14, v20, 0, 128);
      }

      iterationCopy[2](iterationCopy);
      goto LABEL_47;
    }

    if (!initiator)
    {
      v22 = objc_alloc(MEMORY[0x1E695DF70]);
      if (v14)
      {
        v23 = objc_getProperty(v14, v21, 56, 1);
        v25 = v23;
        if (v23)
        {
          v23 = objc_getProperty(v23, v24, 120, 1);
        }
      }

      else
      {
        v25 = 0;
        v23 = 0;
      }

      v26 = v23;
      v28 = [v22 initWithCapacity:{objc_msgSend(v26, "count")}];
      if (v14)
      {
        objc_setProperty_atomic(v14, v27, v28, 136);
      }
    }

    if (v14)
    {
      v29 = objc_getProperty(v14, v20, 56, 1);
      v31 = v29;
      if (v29)
      {
        v29 = objc_getProperty(v29, v30, 120, 1);
      }
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v32 = v29;
    v33 = [v32 objectAtIndexedSubscript:initiator];

    if (v14)
    {
      v35 = objc_getProperty(v14, v34, 56, 1);
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)v36 chosenAdditionalKEMProtocols];
    v38 = [chosenAdditionalKEMProtocols objectForKeyedSubscript:v33];

    if (v38)
    {
      if (([(NEIKEv2ChildSA *)v14 generateLocalValuesForKEMProtocol:v38]& 1) != 0)
      {
        initOutbound = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initOutbound];
        v40 = objc_alloc_init(NEIKEv2KeyExchangePayload);
        v42 = v40;
        initiatorCopy = initiator;
        if (initOutbound)
        {
          objc_setProperty_atomic(initOutbound, v41, v40, 88);

          v44 = objc_getProperty(initOutbound, v43, 88, 1);
          v46 = v44;
          if (v44)
          {
            objc_setProperty_atomic(v44, v45, v38, 32);
          }
        }

        else
        {

          v46 = 0;
        }

        v47 = v7;

        v49 = v38;
        if (v14)
        {
          v50 = objc_getProperty(v14, v48, 112, 1);
          v51 = v50;
          if (v50)
          {
            v52 = iterationCopy;
            v53 = *(v50 + 2);
LABEL_28:
            v55 = v53;
            if (initOutbound)
            {
              v56 = objc_getProperty(initOutbound, v54, 88, 1);
              v58 = v56;
              if (v56)
              {
                objc_setProperty_atomic(v56, v57, v55, 40);
              }
            }

            else
            {
              v58 = 0;
            }

            if (v14)
            {
              v60 = objc_getProperty(v14, v59, 128, 1);
            }

            else
            {
              v60 = 0;
            }

            iterationCopy = v52;
            v61 = v60;
            v63 = v61;
            v38 = v49;
            if (initOutbound)
            {
              objc_setProperty_atomic(initOutbound, v62, v61, 96);

              v65 = objc_getProperty(initOutbound, v64, 88, 1);
            }

            else
            {

              v65 = 0;
            }

            v7 = v47;
            v66 = v65;
            isValid = [(NEIKEv2Payload *)v66 isValid];

            if (isValid)
            {
              v113[0] = MEMORY[0x1E69E9820];
              v113[1] = 3221225472;
              v113[2] = __87__NEIKEv2Session_Exchange__handleFollowupKEForRekeyChildSAInitiator_iteration_handler___block_invoke;
              v113[3] = &unk_1E7F08440;
              v113[4] = self;
              v68 = v47;
              v114 = v68;
              v115 = v14;
              v116 = v38;
              v118 = initiatorCopy;
              v117 = iterationCopy;
              if ([NEIKEv2Session sendRequest:self retry:initOutbound replyHandler:v113]== -1)
              {
                [v68 sendCallbackSuccess:0 session:self];
                v70 = objc_getProperty(self, v69, 352, 1);
                ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator rekey child FOLLOWUP_KE #%zu", v71, v72, v73, v74, v75, v76, v77, initiatorCopy + 1);
                [(NEIKEv2IKESA *)v70 setState:ErrorFailedToSend error:?];

                [(NEIKEv2Session *)self reportState];
                [(NEIKEv2Session *)self resetAll];
              }
            }

            else
            {
              v81 = ne_log_obj();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                selfCopy3 = self;
                _os_log_error_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_ERROR, "%@ Failed to create FOLLOWUP_KE packet (initiator rekey child followup KE)", buf, 0xCu);
              }

              [v7 sendCallbackSuccess:0 session:self];
              ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create FOLLOWUP_KE packet (initiator rekey child followup KE)", v82, v83, v84, v85, v86, v87, v88, v111);
              [(NEIKEv2ChildSA *)v14 setState:ErrorInternal error:?];

              [(NEIKEv2Session *)self reportState];
              [(NEIKEv2Session *)self resetChild:v14];
            }

            goto LABEL_46;
          }

          v52 = iterationCopy;
        }

        else
        {
          v52 = iterationCopy;
          v51 = 0;
        }

        v53 = 0;
        goto LABEL_28;
      }

      v101 = ne_log_obj();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v121 = 2112;
        v122 = v38;
        _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (initiator rekey child followup KE)", buf, 0x16u);
      }

      [v7 sendCallbackSuccess:0 session:self];
      v100 = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (initiator rekey child followup KE)", v102, v103, v104, v105, v106, v107, v108, v38);
    }

    else
    {
      v92 = ne_log_obj();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v121 = 2112;
        v122 = v33;
        _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (initiator rekey child followup KE)", buf, 0x16u);
      }

      [v7 sendCallbackSuccess:0 session:self];
      v100 = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (initiator rekey child followup KE)", v93, v94, v95, v96, v97, v98, v99, v33);
    }

    v109 = v100;
    [(NEIKEv2ChildSA *)v14 setState:v100 error:?];

    [(NEIKEv2Session *)self reportState];
    [(NEIKEv2Session *)self resetChild:v14];
LABEL_46:

LABEL_47:
  }

  v91 = *MEMORY[0x1E69E9840];
}

void __87__NEIKEv2Session_Exchange__handleFollowupKEForRekeyChildSAInitiator_iteration_handler___block_invoke(uint64_t a1, void *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 44)
  {
    Property = v3;
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 88, 1);
    }

    v7 = Property;

    if (v7)
    {
      if (v6)
      {
        v9 = objc_getProperty(v6, v8, 88, 1);
        v11 = v9;
        if (v9)
        {
          v9 = objc_getProperty(v9, v10, 32, 1);
        }
      }

      else
      {
        v11 = 0;
        v9 = 0;
      }

      v12 = v9;

      if (v12)
      {
        if (v6)
        {
          v14 = objc_getProperty(v6, v13, 88, 1);
          v16 = v14;
          if (v14)
          {
            v14 = objc_getProperty(v14, v15, 40, 1);
          }
        }

        else
        {
          v16 = 0;
          v14 = 0;
        }

        v17 = v14;

        if (v17)
        {
          if (v6)
          {
            v19 = objc_getProperty(v6, v18, 88, 1);
            v21 = v19;
            if (v19)
            {
              v19 = objc_getProperty(v19, v20, 32, 1);
            }
          }

          else
          {
            v21 = 0;
            v19 = 0;
          }

          v22 = v19;
          v23 = [v22 method];
          v24 = [*(a1 + 56) method];

          if (v23 != v24)
          {
            v64 = ne_log_obj();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              v92 = *(a1 + 32);
              if (v6)
              {
                v93 = objc_getProperty(v6, v65, 88, 1);
                v95 = v93;
                if (v93)
                {
                  v93 = objc_getProperty(v93, v94, 32, 1);
                }
              }

              else
              {
                v95 = 0;
                v93 = 0;
              }

              v96 = v93;
              v97 = [v96 method];
              v98 = [*(a1 + 56) method];
              *buf = 138412802;
              v113 = v92;
              v114 = 2048;
              v115 = v97;
              v116 = 2048;
              v117 = v98;
              _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (initiator rekey child followup KE)", buf, 0x20u);
            }

            [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
            v67 = *(a1 + 48);
            if (v6)
            {
              v68 = objc_getProperty(v6, v66, 88, 1);
              v61 = v68;
              if (v68)
              {
                v68 = objc_getProperty(v68, v69, 32, 1);
              }
            }

            else
            {
              v61 = 0;
              v68 = 0;
            }

            v70 = v68;
            v71 = [v70 method];
            [*(a1 + 56) method];
            ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (initiator rekey child followup KE)", v72, v73, v74, v75, v76, v77, v78, v71);
            [(NEIKEv2ChildSA *)v67 setState:ErrorPeerInvalidSyntax error:?];

            goto LABEL_43;
          }

          if (v6)
          {
            v26 = objc_getProperty(v6, v25, 88, 1);
            v28 = v26;
            if (v26)
            {
              v26 = objc_getProperty(v26, v27, 40, 1);
            }
          }

          else
          {
            v28 = 0;
            v26 = 0;
          }

          v30 = v26;
          v31 = *(a1 + 48);
          if (v31)
          {
            objc_setProperty_atomic(v31, v29, v30, 104);
          }

          v33 = *(a1 + 48);
          if (v33)
          {
            v34 = objc_getProperty(*(a1 + 48), v32, 136, 1);

            if (v34)
            {
              if ([(NEIKEv2ChildSA *)v33 processCurrentKeyExchange])
              {
                v37 = objc_getProperty(v33, v36, 136, 1);
                v39 = objc_getProperty(v33, v38, 112, 1);
                v40 = v39;
                if (v39)
                {
                  v41 = v39[3];
                }

                else
                {
                  v41 = 0;
                }

                [v37 addObject:v41];

                objc_setProperty_atomic(v33, v42, 0, 112);
                if (v6)
                {
                  v44 = objc_getProperty(v6, v43, 96, 1);
                }

                else
                {
                  v44 = 0;
                }

                v46 = v44;
                v47 = *(a1 + 48);
                if (v47)
                {
                  objc_setProperty_atomic(v47, v45, v46, 128);
                }

                [(NEIKEv2Session *)*(a1 + 32) handleFollowupKEForRekeyChildSAInitiator:*(a1 + 72) + 1 iteration:*(a1 + 64) handler:?];
                goto LABEL_44;
              }
            }

            else
            {
              v80 = ne_log_obj();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                v113 = "[NEIKEv2ChildSA(Crypto) processFollowupKeyExchange]";
                _os_log_fault_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_FAULT, "%s called with null self.followupSharedSecrets", buf, 0xCu);
              }
            }
          }

          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_ERROR, "Failed to process KE data (initiator rekey child followup KE)", buf, 2u);
          }

          [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
          v56 = *(a1 + 48);
          ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process KE data (initiator rekey child followup KE)", v82, v83, v84, v85, v86, v87, v88, v111);
LABEL_42:
          v61 = ErrorCrypto;
          [(NEIKEv2ChildSA *)v56 setState:ErrorCrypto error:?];
LABEL_43:

          [(NEIKEv2Session *)*(a1 + 32) reportState];
          [(NEIKEv2Session *)*(a1 + 32) resetChild:?];
LABEL_44:

          goto LABEL_45;
        }

        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v91 = *(a1 + 32);
          *buf = 138412290;
          v113 = v91;
          _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (initiator rekey child followup KE)", buf, 0xCu);
        }

        [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
        v56 = *(a1 + 48);
        v57 = @"Did not receive data in KE payload (initiator rekey child followup KE)";
      }

      else
      {
        v58 = ne_log_obj();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v90 = *(a1 + 32);
          *buf = 138412290;
          v113 = v90;
          _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (initiator rekey child followup KE)", buf, 0xCu);
        }

        [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
        v56 = *(a1 + 48);
        v57 = @"Did not receive method in KE payload (initiator rekey child followup KE)";
      }
    }

    else
    {
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v89 = *(a1 + 32);
        *buf = 138412290;
        v113 = v89;
        _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (initiator rekey child followup KE)", buf, 0xCu);
      }

      [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
      v56 = *(a1 + 48);
      v57 = @"Did not receive KE payload (initiator rekey child followup KE)";
    }

    ErrorCrypto = NEIKEv2CreateErrorPeerInvalidSyntax(v57, v49, v50, v51, v52, v53, v54, v55, v111);
    goto LABEL_42;
  }

  v99 = ne_log_obj();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
  {
    v110 = *(a1 + 32);
    *buf = 138412290;
    v113 = v110;
    _os_log_error_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_ERROR, "%@ Failed to receive FOLLOWUP_KE reply (initiator rekey child followup KE)", buf, 0xCu);
  }

  [*(a1 + 40) sendCallbackSuccess:0 session:*(a1 + 32)];
  v100 = *(a1 + 48);
  v108 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive FOLLOWUP_KE reply (initiator rekey child followup KE)", v101, v102, v103, v104, v105, v106, v107, v111);
  [(NEIKEv2ChildSA *)v100 setState:v108 error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  [(NEIKEv2Session *)*(a1 + 32) resetChild:?];
LABEL_45:

  v63 = *MEMORY[0x1E69E9840];
}

- (void)handleFollowupKEForRekeyChildSAResponder:(uint64_t)responder iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:
{
  v11 = a2;
  packetCopy = packet;
  descriptionCopy = description;
  if (self)
  {
    iterationCopy = iteration;
    v16 = objc_getProperty(self, v15, 384, 1);
    dispatch_assert_queue_V2(v16);

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __122__NEIKEv2Session_Exchange__handleFollowupKEForRekeyChildSAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke;
    v27[3] = &unk_1E7F08260;
    responderCopy = responder;
    v17 = v11;
    v28 = v17;
    selfCopy = self;
    v30 = descriptionCopy;
    LOBYTE(v16) = [(NEIKEv2Session *)self sendReply:iterationCopy replyHandler:v27];

    if ((v16 & 1) == 0)
    {
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"%@", v18, v19, v20, v21, v22, v23, v24, packetCopy);
      [(NEIKEv2ChildSA *)v17 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetChild:v17];
    }
  }
}

void __122__NEIKEv2Session_Exchange__handleFollowupKEForRekeyChildSAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke(uint64_t *a1, void *a2)
{
  v276 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a1[7];
  v6 = a1[4];
  if (v6)
  {
    Property = objc_getProperty(v6, v3, 184, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 120, 1);
    }
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v10 = Property;
  v11 = [v10 count];

  if (v5 < v11)
  {
    if (!a1[7])
    {
      v13 = objc_alloc(MEMORY[0x1E695DF70]);
      v14 = a1[4];
      if (v14)
      {
        v15 = objc_getProperty(v14, v12, 184, 1);
        v17 = v15;
        if (v15)
        {
          v15 = objc_getProperty(v15, v16, 120, 1);
        }
      }

      else
      {
        v17 = 0;
        v15 = 0;
      }

      v18 = v15;
      v20 = [v13 initWithCapacity:{objc_msgSend(v18, "count")}];
      v21 = a1[4];
      if (v21)
      {
        objc_setProperty_atomic(v21, v19, v20, 136);
      }
    }

    if ([v4 exchangeType] == 44)
    {
      v23 = v4;
      v24 = a1[4];
      if (v24)
      {
        v25 = objc_getProperty(v24, v22, 184, 1);
        v27 = v25;
        if (v25)
        {
          v25 = objc_getProperty(v25, v26, 120, 1);
        }
      }

      else
      {
        v27 = 0;
        v25 = 0;
      }

      v28 = v25;
      v29 = [v28 objectAtIndexedSubscript:a1[7]];

      v31 = a1[4];
      if (v31)
      {
        v31 = objc_getProperty(v31, v30, 184, 1);
      }

      v32 = v31;
      v33 = [(NEIKEv2IKESAProposal *)v32 chosenAdditionalKEMProtocols];
      v34 = [v33 objectForKeyedSubscript:v29];

      if (v34)
      {
        if (v23)
        {
          v36 = objc_getProperty(v23, v35, 88, 1);
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (v37)
        {
          if (v23)
          {
            v39 = objc_getProperty(v23, v38, 88, 1);
            v41 = v39;
            if (v39)
            {
              v39 = objc_getProperty(v39, v40, 32, 1);
            }
          }

          else
          {
            v41 = 0;
            v39 = 0;
          }

          v42 = v39;

          if (v42)
          {
            if (v23)
            {
              v44 = objc_getProperty(v23, v43, 88, 1);
              v46 = v44;
              if (v44)
              {
                v44 = objc_getProperty(v44, v45, 40, 1);
              }
            }

            else
            {
              v46 = 0;
              v44 = 0;
            }

            v47 = v44;

            if (v47)
            {
              if (v23)
              {
                v49 = objc_getProperty(v23, v48, 88, 1);
                v51 = v49;
                if (v49)
                {
                  v49 = objc_getProperty(v49, v50, 32, 1);
                }
              }

              else
              {
                v51 = 0;
                v49 = 0;
              }

              v52 = v49;
              v53 = [v52 method];
              v54 = [v34 method];

              if (v53 == v54)
              {
                if (v23)
                {
                  v56 = objc_getProperty(v23, v55, 96, 1);
                  v58 = v56;
                  if (v56)
                  {
                    v56 = objc_getProperty(v56, v57, 40, 1);
                  }
                }

                else
                {
                  v58 = 0;
                  v56 = 0;
                }

                v60 = v56;
                v61 = a1[4];
                v271 = v29;
                if (v61)
                {
                  v62 = objc_getProperty(v61, v59, 128, 1);
                  v64 = v62;
                  if (v62)
                  {
                    v62 = objc_getProperty(v62, v63, 40, 1);
                  }
                }

                else
                {
                  v64 = 0;
                  v62 = 0;
                }

                v65 = v62;
                v66 = [v60 isEqualToData:v65];

                if ((v66 & 1) == 0)
                {
                  v132 = ne_log_obj();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                  {
                    v244 = a1[5];
                    if (v23)
                    {
                      v245 = objc_getProperty(v23, v133, 96, 1);
                      v247 = v245;
                      if (v245)
                      {
                        v245 = objc_getProperty(v245, v246, 40, 1);
                      }
                    }

                    else
                    {
                      v247 = 0;
                      v245 = 0;
                    }

                    v249 = v245;
                    v250 = a1[4];
                    if (v250)
                    {
                      v251 = objc_getProperty(v250, v248, 128, 1);
                      v253 = v251;
                      if (v251)
                      {
                        v251 = objc_getProperty(v251, v252, 40, 1);
                      }
                    }

                    else
                    {
                      v253 = 0;
                      v251 = 0;
                    }

                    v254 = v251;
                    *buf = 138412802;
                    *&buf[4] = v244;
                    *&buf[12] = 2112;
                    *&buf[14] = v249;
                    v274 = 2112;
                    v275 = v254;
                    _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "%@ ADDITIONAL_KEY_EXCHANGE in FOLLOWUP_KE request doesn't match expected (%@ != %@) (responder rekey child followup KE)", buf, 0x20u);
                  }

                  v134 = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initResponse:v23];
                  v135 = v134;
                  v29 = v271;
                  if (v134)
                  {
                    [(NEIKEv2Packet *)v134 addNotification:0 data:?];
                  }

                  v136 = [(NEIKEv2Session *)a1[5] sendReply:v135 replyHandler:0];
                  v144 = a1[4];
                  if (v136)
                  {
                    v270 = a1[4];
                    if (v23)
                    {
                      v145 = objc_getProperty(v23, v137, 96, 1);
                      ErrorFailedToSend = v145;
                      if (v145)
                      {
                        v145 = objc_getProperty(v145, v146, 40, 1);
                      }
                    }

                    else
                    {
                      ErrorFailedToSend = 0;
                      v145 = 0;
                    }

                    v149 = v145;
                    v150 = a1[4];
                    if (v150)
                    {
                      v151 = objc_getProperty(v150, v148, 128, 1);
                      v153 = v151;
                      if (v151)
                      {
                        v151 = objc_getProperty(v151, v152, 40, 1);
                      }
                    }

                    else
                    {
                      v153 = 0;
                      v151 = 0;
                    }

                    v269 = v151;
                    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"ADDITIONAL_KEY_EXCHANGE in FOLLOWUP_KE request doesn't match expected (%@ != %@) (responder rekey child followup KE)", v154, v155, v156, v157, v158, v159, v160, v149);
                    [(NEIKEv2ChildSA *)v270 setState:ErrorPeerInvalidSyntax error:?];

                    v29 = v271;
                  }

                  else
                  {
                    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"responder rekey child followup KE mismatched link", v137, v138, v139, v140, v141, v142, v143, v268);
                    [(NEIKEv2ChildSA *)v144 setState:ErrorFailedToSend error:?];
                  }

                  [(NEIKEv2Session *)a1[5] reportState];
                  [(NEIKEv2Session *)a1[5] resetChild:?];

                  goto LABEL_72;
                }

                v68 = a1[4];
                if (v23)
                {
                  v69 = objc_getProperty(v23, v67, 88, 1);
                  v71 = v69;
                  v29 = v271;
                  if (v69)
                  {
                    v69 = objc_getProperty(v69, v70, 40, 1);
                  }
                }

                else
                {
                  v71 = 0;
                  v69 = 0;
                  v29 = v271;
                }

                v72 = v69;
                v73 = v34;
                v75 = v72;
                if (!v68)
                {
                  goto LABEL_50;
                }

                v76 = objc_getProperty(v68, v74, 112, 1);

                if (v76)
                {
                  v77 = ne_log_obj();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "[NEIKEv2ChildSA(Crypto) generateLocalValuesForKEMProtocol:peerPayload:]";
                    _os_log_fault_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", buf, 0xCu);
                  }

                  v29 = v271;
LABEL_49:

LABEL_50:
                  v78 = ne_log_obj();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    v255 = a1[5];
                    *buf = 138412546;
                    *&buf[4] = v255;
                    *&buf[12] = 2112;
                    *&buf[14] = v73;
                    _os_log_error_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (responder rekey child followup KE)", buf, 0x16u);
                  }

                  v79 = a1[4];
                  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (responder rekey child followup KE)", v80, v81, v82, v83, v84, v85, v86, v73);
                  [(NEIKEv2ChildSA *)v79 setState:ErrorInternal error:?];

                  goto LABEL_71;
                }

                v163 = +[NEIKEv2KeyExchangeHandler handlerForMethod:peerPayload:](NEIKEv2KeyExchangeHandler, [v73 method], v75);
                objc_setProperty_atomic(v68, v164, v163, 112);

                v166 = objc_getProperty(v68, v165, 112, 1);
                if (!v166)
                {
                  v77 = ne_log_obj();
                  v29 = v271;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v73;
                    _os_log_error_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", buf, 0xCu);
                  }

                  goto LABEL_49;
                }

                v168 = a1[7] + 1;
                v169 = a1[4];
                v29 = v271;
                if (v169)
                {
                  v170 = objc_getProperty(v169, v167, 184, 1);
                  v172 = v170;
                  if (v170)
                  {
                    v170 = objc_getProperty(v170, v171, 120, 1);
                  }
                }

                else
                {
                  v172 = 0;
                  v170 = 0;
                }

                v173 = v170;
                v174 = [v173 count];

                if (v168 >= v174)
                {
                  v190 = a1[4];
                  v181 = &OBJC_IVAR___NEFilterFlow__direction;
                  if (v190)
                  {
                    objc_setProperty_atomic(v190, v175, 0, 128);
                  }
                }

                else
                {
                  v176 = [MEMORY[0x1E696AFB0] UUID];
                  *buf = 0;
                  *&buf[8] = 0;
                  [v176 getUUIDBytes:buf];
                  v177 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:16];
                  v179 = [NEIKEv2NotifyPayload createNotifyPayloadType:v177 data:?];
                  v180 = a1[4];
                  v181 = &OBJC_IVAR___NEFilterFlow__direction;
                  if (v180)
                  {
                    objc_setProperty_atomic(v180, v178, v179, 128);
                  }
                }

                v191 = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initResponse:v23];
                v192 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                v194 = v192;
                if (v191)
                {
                  objc_setProperty_atomic(v191, v193, v192, 88);

                  v196 = objc_getProperty(v191, v195, 88, 1);
                  v198 = v196;
                  if (v196)
                  {
                    objc_setProperty_atomic(v196, v197, v73, v181[541]);
                  }
                }

                else
                {

                  v198 = 0;
                }

                v200 = a1[4];
                if (v200)
                {
                  v201 = objc_getProperty(v200, v199, 112, 1);
                  v202 = v201;
                  if (v201)
                  {
                    v203 = *(v201 + 2);
                    goto LABEL_115;
                  }
                }

                else
                {
                  v202 = 0;
                }

                v203 = 0;
LABEL_115:
                v205 = v203;
                if (v191)
                {
                  v206 = objc_getProperty(v191, v204, 88, 1);
                  v208 = v206;
                  if (v206)
                  {
                    objc_setProperty_atomic(v206, v207, v205, 40);
                  }
                }

                else
                {
                  v208 = 0;
                }

                v210 = a1[4];
                if (v210)
                {
                  v210 = objc_getProperty(v210, v209, 128, 1);
                }

                v211 = v210;
                v213 = v211;
                if (v191)
                {
                  objc_setProperty_atomic(v191, v212, v211, 96);

                  v215 = objc_getProperty(v191, v214, 88, 1);
                }

                else
                {

                  v215 = 0;
                }

                v216 = v215;
                v217 = [(NEIKEv2Payload *)v216 isValid];

                if ((v217 & 1) == 0)
                {
                  v233 = ne_log_obj();
                  if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
                  {
                    v265 = a1[5];
                    *buf = 138412290;
                    *&buf[4] = v265;
                    _os_log_error_impl(&dword_1BA83C000, v233, OS_LOG_TYPE_ERROR, "%@ Failed to create FOLLOWUP_KE packet (responder rekey child followup KE)", buf, 0xCu);
                  }

                  v234 = a1[4];
                  v242 = NEIKEv2CreateErrorInternal(@"Failed to create FOLLOWUP_KE packet (responder rekey child followup KE)", v235, v236, v237, v238, v239, v240, v241, v268);
                  [(NEIKEv2ChildSA *)v234 setState:v242 error:?];

                  [(NEIKEv2Session *)a1[5] reportState];
                  [(NEIKEv2Session *)a1[5] resetChild:?];
                  goto LABEL_134;
                }

                v219 = a1[4];
                if (v219)
                {
                  v219 = objc_getProperty(v219, v218, 136, 1);
                }

                v221 = v219;
                v222 = a1[4];
                if (v222)
                {
                  v223 = objc_getProperty(v222, v220, 112, 1);
                  v224 = v223;
                  if (v223)
                  {
                    v225 = *(v223 + 3);
LABEL_128:
                    v226 = v225;
                    [v221 addObject:v226];

                    v228 = a1[4];
                    if (v228)
                    {
                      objc_setProperty_atomic(v228, v227, 0, 112);
                      v229 = a1[4];
                    }

                    else
                    {
                      v229 = 0;
                    }

                    v230 = a1[5];
                    v231 = a1[7];
                    v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"responder rekey child FOLLOWUP_KE #%zu", v231];
                    [(NEIKEv2Session *)v230 handleFollowupKEForRekeyChildSAResponder:v229 iteration:v231 + 1 replyPacket:v191 replyPacketDescription:v232 handler:a1[6]];

LABEL_134:
                    goto LABEL_73;
                  }
                }

                else
                {
                  v224 = 0;
                }

                v225 = 0;
                goto LABEL_128;
              }

              v116 = ne_log_obj();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                v272 = v29;
                v185 = a1[5];
                if (v23)
                {
                  v186 = objc_getProperty(v23, v117, 88, 1);
                  v188 = v186;
                  if (v186)
                  {
                    v186 = objc_getProperty(v186, v187, 32, 1);
                  }
                }

                else
                {
                  v188 = 0;
                  v186 = 0;
                }

                v189 = v186;
                *buf = 138412802;
                *&buf[4] = v185;
                *&buf[12] = 2048;
                *&buf[14] = [v189 method];
                v274 = 2048;
                v275 = [v34 method];
                _os_log_error_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (responder rekey child followup KE)", buf, 0x20u);

                v29 = v272;
              }

              v119 = a1[4];
              if (v23)
              {
                v120 = objc_getProperty(v23, v118, 88, 1);
                v114 = v120;
                if (v120)
                {
                  v120 = objc_getProperty(v120, v121, 32, 1);
                }
              }

              else
              {
                v114 = 0;
                v120 = 0;
              }

              v122 = v120;
              v123 = [v122 method];
              [v34 method];
              v131 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (responder rekey child followup KE)", v124, v125, v126, v127, v128, v129, v130, v123);
              [(NEIKEv2ChildSA *)v119 setState:v131 error:?];

LABEL_70:
LABEL_71:
              [(NEIKEv2Session *)a1[5] reportState];
              [(NEIKEv2Session *)a1[5] resetChild:?];
LABEL_72:

LABEL_73:
              goto LABEL_74;
            }

            v112 = ne_log_obj();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              v184 = a1[5];
              *buf = 138412290;
              *&buf[4] = v184;
              _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (responder rekey child followup KE)", buf, 0xCu);
            }

            v109 = a1[4];
            v110 = @"Did not receive data in KE payload (responder rekey child followup KE)";
          }

          else
          {
            v111 = ne_log_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              v183 = a1[5];
              *buf = 138412290;
              *&buf[4] = v183;
              _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (responder rekey child followup KE)", buf, 0xCu);
            }

            v109 = a1[4];
            v110 = @"Did not receive method in KE payload (responder rekey child followup KE)";
          }
        }

        else
        {
          v101 = ne_log_obj();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            v182 = a1[5];
            *buf = 138412290;
            *&buf[4] = v182;
            _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (responder rekey child followup KE)", buf, 0xCu);
          }

          v109 = a1[4];
          v110 = @"Did not receive KE payload (responder rekey child followup KE)";
        }

        v113 = NEIKEv2CreateErrorPeerInvalidSyntax(v110, v102, v103, v104, v105, v106, v107, v108, v268);
      }

      else
      {
        v257 = ne_log_obj();
        if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
        {
          v267 = a1[5];
          *buf = 138412546;
          *&buf[4] = v267;
          *&buf[12] = 2112;
          *&buf[14] = v29;
          _os_log_error_impl(&dword_1BA83C000, v257, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (responder rekey child followup KE)", buf, 0x16u);
        }

        v109 = a1[4];
        v113 = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (responder rekey child followup KE)", v258, v259, v260, v261, v262, v263, v264, v29);
      }

      v114 = v113;
      [(NEIKEv2ChildSA *)v109 setState:v113 error:?];
      goto LABEL_70;
    }

    v256 = ne_log_obj();
    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
    {
      v266 = a1[5];
      *buf = 138412290;
      *&buf[4] = v266;
      _os_log_error_impl(&dword_1BA83C000, v256, OS_LOG_TYPE_ERROR, "%@ Failed to receive FOLLOWUP_KE packet (responder rekey child followup KE)", buf, 0xCu);
    }

    v97 = a1[4];
    v98 = @"Failed to receive FOLLOWUP_KE packet (responder rekey child followup KE)";
    goto LABEL_58;
  }

  if ([v4 exchangeType] != 37)
  {
    v89 = ne_log_obj();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_ERROR, "Failed to receive Rekey Child SA Delete packet", buf, 2u);
    }

    v97 = a1[4];
    v98 = @"Failed to receive Rekey Child SA Delete packet";
LABEL_58:
    v99 = NEIKEv2CreateErrorPeerInvalidSyntax(v98, v90, v91, v92, v93, v94, v95, v96, v268);
    [(NEIKEv2ChildSA *)v97 setState:v99 error:?];

    [(NEIKEv2Session *)a1[5] reportState];
    [(NEIKEv2Session *)a1[5] resetChild:?];
    goto LABEL_74;
  }

  (*(a1[6] + 16))();
LABEL_74:

  v115 = *MEMORY[0x1E69E9840];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke(uint64_t a1, void *a2)
{
  v132 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 36)
  {
    v4 = [(NEIKEv2CreateChildPacket *)v3 validateRekeyResponseChildSA:?];
    v5 = *(a1 + 32);
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v112 = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_442;
    v113 = &unk_1E7F084B8;
    v109 = *(a1 + 40);
    v6 = *(&v109 + 1);
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v114 = v109;
    v115 = v9;
    v116 = *(a1 + 64);
    v10 = v5;
    v12 = v111;
    v13 = v109;
    if (v109)
    {
      v14 = objc_getProperty(v109, v11, 384, 1);
      dispatch_assert_queue_V2(v14);

      if (v10)
      {
        v15 = v10[6];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NEIKEv2Session *)v109 copyChildWithID:v15];
      v18 = v16;
      if ((v4 & 1) != 0 || (!v16 ? (Property = 0) : (Property = objc_getProperty(v16, v17, 96, 1)), v20 = Property, v20, !v20))
      {
        v112(v12, v4);
        goto LABEL_55;
      }

      if (v18)
      {
        objc_setProperty_atomic(v18, v21, 0, 112);
      }

      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        if (v18)
        {
          v24 = objc_getProperty(v18, v23, 96, 1);
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        v26 = [v25 method];
        *buf = 138412546;
        *&buf[4] = v109;
        *&buf[12] = 2048;
        *&buf[14] = v26;
        _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_INFO, "%@ Received KE method preference %tu, retrying rekey Child SA (child rekey retry KE)", buf, 0x16u);
      }

      v108 = v12;
      v110 = v10;

      if (v18)
      {
        v28 = objc_getProperty(v18, v27, 96, 1);
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v31 = [v29 method];
      if (v18)
      {
        v32 = objc_getProperty(v18, v30, 176, 1);
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      objc_opt_self();
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v34 = v33;
      v107 = [v34 countByEnumeratingWithState:&v121 objects:buf count:16];
      if (!v107)
      {
        goto LABEL_34;
      }

      v35 = *v122;
      v105 = *v122;
      v106 = v29;
      do
      {
        for (i = 0; i != v107; ++i)
        {
          if (*v122 != v35)
          {
            objc_enumerationMutation(v34);
          }

          v37 = *(*(&v121 + 1) + 8 * i);
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v38 = [v37 kemProtocols];
          v39 = [v38 countByEnumeratingWithState:&v117 objects:v125 count:16];
          if (!v39)
          {
            goto LABEL_32;
          }

          v40 = v39;
          v41 = *v118;
          while (2)
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v118 != v41)
              {
                objc_enumerationMutation(v38);
              }

              if ([*(*(&v117 + 1) + 8 * j) method] == v31)
              {

                if (([(NEIKEv2ChildSA *)v18 generateInitialValues]& 1) != 0)
                {
                  v68 = [NEIKEv2CreateChildPacket createRekeyRequestChildSA:v18];
                  v12 = v108;
                  v10 = v110;
                  if (v68)
                  {
                    v69 = v68;
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __69__NEIKEv2Session_Exchange__retryKEForRekeyChildSA_validated_handler___block_invoke;
                    v127 = &unk_1E7F08418;
                    v128 = v13;
                    v129 = v110;
                    v130 = v18;
                    v131 = v108;
                    if ([NEIKEv2Session sendRequest:v13 retry:v69 replyHandler:buf]== -1)
                    {
                      v71 = objc_getProperty(v13, v70, 352, 1);
                      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"child rekey retry KE", v72, v73, v74, v75, v76, v77, v78, v104);
                      [(NEIKEv2IKESA *)v71 setState:ErrorFailedToSend error:?];

                      [(NEIKEv2Session *)v13 reportState];
                      [(NEIKEv2Session *)v13 resetAll];
                    }

                    goto LABEL_55;
                  }

                  v91 = ne_log_obj();
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v13;
                    _os_log_error_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_ERROR, "%@ Failed to create Create Child SA packet (child rekey retry KE)", buf, 0xCu);
                  }

                  [v110 sendCallbackSuccess:0 session:v13];
                  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet (child rekey retry KE)", v92, v93, v94, v95, v96, v97, v98, v104);
                }

                else
                {
                  v82 = ne_log_obj();
                  v12 = v108;
                  v10 = v110;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v13;
                    _os_log_error_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_ERROR, "%@ Failed to generate local Child crypto values (child rekey retry KE)", buf, 0xCu);
                  }

                  [v110 sendCallbackSuccess:0 session:v13];
                  ErrorInternal = NEIKEv2CreateErrorCrypto(@"Failed to generate local Child crypto values (child rekey retry KE)", v83, v84, v85, v86, v87, v88, v89, v104);
                }

                v47 = ErrorInternal;
                [(NEIKEv2ChildSA *)v18 setState:ErrorInternal error:?];
                goto LABEL_54;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v117 objects:v125 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }

LABEL_32:

          v35 = v105;
        }

        v29 = v106;
        v107 = [v34 countByEnumeratingWithState:&v121 objects:buf count:16];
      }

      while (v107);
LABEL_34:

      v43 = ne_log_obj();
      v12 = v108;
      v10 = v110;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        if (v18)
        {
          v101 = objc_getProperty(v18, v44, 96, 1);
        }

        else
        {
          v101 = 0;
        }

        v102 = v101;
        v103 = [v102 method];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = v103;
        _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "%@ Received KE method preference %tu is not in Child rekey proposal (child rekey retry KE)", buf, 0x16u);
      }

      [v110 sendCallbackSuccess:0 session:v13];
      if (v18)
      {
        v46 = objc_getProperty(v18, v45, 96, 1);
      }

      else
      {
        v46 = 0;
      }

      v47 = v46;
      v48 = [v47 method];
      ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received KE method preference %tu is not in Child rekey proposal (child rekey retry KE)", v49, v50, v51, v52, v53, v54, v55, v48);
      [(NEIKEv2ChildSA *)v18 setState:ErrorPeerInvalidSyntax error:?];

LABEL_54:
      [(NEIKEv2Session *)v13 reportState];
      [(NEIKEv2Session *)v13 resetChild:v18];
LABEL_55:
    }
  }

  else
  {
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "Failed to receive Create Child SA packet", buf, 2u);
    }

    [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
    v58 = *(a1 + 48);
    v66 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive Create Child SA packet", v59, v60, v61, v62, v63, v64, v65, v104);
    [(NEIKEv2ChildSA *)v58 setState:v66 error:?];

    [(NEIKEv2Session *)*(a1 + 40) reportState];
    [(NEIKEv2Session *)*(a1 + 40) resetChild:?];
  }

  v100 = *MEMORY[0x1E69E9840];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_442(uint64_t a1, const char *a2)
{
  if ((a2 & 1) == 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "Failed to process Create Child SA packet", buf, 2u);
    }

    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
    if (v21)
    {
      Property = objc_getProperty(v21, v20, 56, 1);
      v18 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v24, 80, 1);
      }
    }

    else
    {
      v18 = 0;
      Property = 0;
    }

    v26 = Property;
    v27 = *(a1 + 40);
    if (v27)
    {
      v28 = objc_getProperty(v27, v25, 56, 1);
      v30 = v28;
      if (v28)
      {
        v28 = objc_getProperty(v28, v29, 88, 1);
      }
    }

    else
    {
      v30 = 0;
      v28 = 0;
    }

    v31 = v28;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_443;
    v56[3] = &unk_1E7F083C8;
    v11 = v57;
    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v57[0] = v32;
    v57[1] = v33;
    v12 = &v58;
    v58 = v34;
    v35 = v56;
    goto LABEL_17;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = objc_getProperty(v3, a2, 56, 1);
    v6 = v4;
    if (v4)
    {
      v4 = objc_getProperty(v4, v5, 112, 1);
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = v4;
  v8 = [v7 method];

  if (v8 && ([(NEIKEv2ChildSA *)*(a1 + 40) processPrimaryKeyExchange]& 1) == 0)
  {
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "Failed to process KE data", buf, 2u);
    }

    v22 = *(a1 + 32);
    v38 = *(a1 + 40);
    if (v38)
    {
      v39 = objc_getProperty(v38, v37, 56, 1);
      v18 = v39;
      if (v39)
      {
        v39 = objc_getProperty(v39, v40, 80, 1);
      }
    }

    else
    {
      v18 = 0;
      v39 = 0;
    }

    v26 = v39;
    v42 = *(a1 + 40);
    if (v42)
    {
      v43 = objc_getProperty(v42, v41, 56, 1);
      v30 = v43;
      if (v43)
      {
        v43 = objc_getProperty(v43, v44, 88, 1);
      }
    }

    else
    {
      v30 = 0;
      v43 = 0;
    }

    v31 = v43;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_444;
    v53[3] = &unk_1E7F083C8;
    v11 = v54;
    v45 = *(a1 + 48);
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    v54[0] = v45;
    v54[1] = v46;
    v12 = &v55;
    v55 = v47;
    v35 = v53;
LABEL_17:
    [(NEIKEv2Session *)v22 initiateDeleteChildSPI:v26 remoteSPI:v31 deleteCompletionCallback:v35];

    goto LABEL_18;
  }

  v10 = *(a1 + 48);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_2;
  v49[3] = &unk_1E7F08490;
  v11 = &v50;
  v12 = &v51;
  v13 = *(a1 + 32);
  *&v14 = *(a1 + 40);
  *(&v14 + 1) = *(a1 + 32);
  v48 = v14;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v50 = v48;
  v51 = v17;
  v52 = *(a1 + 64);
  [(NEIKEv2Session *)v13 handleFollowupKEForRekeyChildSAInitiator:v10 iteration:0 handler:v49];

  v18 = *(&v51 + 1);
LABEL_18:
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_443(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  v2 = *(a1 + 48);
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Create Child SA packet", v3, v4, v5, v6, v7, v8, v9, v14);
  [(NEIKEv2ChildSA *)v2 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_444(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  v2 = *(a1 + 48);
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process KE data", v3, v4, v5, v6, v7, v8, v9, v14);
  [(NEIKEv2ChildSA *)v2 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_2(void **a1)
{
  if (([(NEIKEv2ChildSA *)a1[4] generateAllValues]& 1) != 0)
  {
    *buf = 0;
    if (([(NEIKEv2Session *)a1[5] installRekeyedChildSA:buf andReturnIPsecSAsToDelete:?]& 1) != 0)
    {
      v3 = a1[4];
      if (v3 && (objc_setProperty_atomic(v3, v2, a1[7], 192), (v5 = a1[4]) != 0))
      {
        objc_setProperty_atomic(v5, v4, a1[8], 200);
        v6 = a1[4];
      }

      else
      {
        v6 = 0;
      }

      v7 = a1[5];
      v8 = a1[7];
      v9 = a1[8];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_2_447;
      v43[3] = &unk_1E7F08468;
      v43[4] = v7;
      v44 = v6;
      v10 = *buf;
      v45 = v10;
      v46 = a1[6];
      [(NEIKEv2Session *)v7 initiateDeleteChildSPI:v8 remoteSPI:v9 deleteCompletionCallback:v43];
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Failed to install Child SA", v50, 2u);
      }

      v28 = a1[4];
      v29 = a1[5];
      if (v28)
      {
        Property = objc_getProperty(v28, v27, 56, 1);
        v32 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v31, 80, 1);
        }
      }

      else
      {
        v32 = 0;
        Property = 0;
      }

      v34 = Property;
      v35 = a1[4];
      if (v35)
      {
        v36 = objc_getProperty(v35, v33, 56, 1);
        v38 = v36;
        if (v36)
        {
          v36 = objc_getProperty(v36, v37, 88, 1);
        }
      }

      else
      {
        v38 = 0;
        v36 = 0;
      }

      v39 = v36;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_446;
      v47[3] = &unk_1E7F083C8;
      v48 = a1[6];
      v42 = *(a1 + 2);
      v40 = v42.i64[0];
      v49 = vextq_s8(v42, v42, 8uLL);
      [(NEIKEv2Session *)v29 initiateDeleteChildSPI:v34 remoteSPI:v39 deleteCompletionCallback:v47];

      v10 = *buf;
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to generate Child SA crypto values", buf, 2u);
    }

    v13 = a1[4];
    v14 = a1[5];
    if (v13)
    {
      v15 = objc_getProperty(v13, v12, 56, 1);
      v17 = v15;
      if (v15)
      {
        v15 = objc_getProperty(v15, v16, 80, 1);
      }
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }

    v19 = v15;
    v20 = a1[4];
    if (v20)
    {
      v21 = objc_getProperty(v20, v18, 56, 1);
      v23 = v21;
      if (v21)
      {
        v21 = objc_getProperty(v21, v22, 88, 1);
      }
    }

    else
    {
      v23 = 0;
      v21 = 0;
    }

    v24 = v21;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_445;
    v52[3] = &unk_1E7F083C8;
    v53 = a1[6];
    v41 = *(a1 + 2);
    v25 = v41.i64[0];
    v54 = vextq_s8(v41, v41, 8uLL);
    [(NEIKEv2Session *)v14 initiateDeleteChildSPI:v19 remoteSPI:v24 deleteCompletionCallback:v52];
  }
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_445(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  v2 = *(a1 + 48);
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA crypto values", v3, v4, v5, v6, v7, v8, v9, v14);
  [(NEIKEv2ChildSA *)v2 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_446(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  v2 = *(a1 + 48);
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to install Child SA", v3, v4, v5, v6, v7, v8, v9, v14);
  [(NEIKEv2ChildSA *)v2 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

void __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke_2_447(void **a1, int a2)
{
  if (a2)
  {
    [(NEIKEv2Session *)a1[4] uninstallOldRekeyedChildSA:a1[6] andDeleteIPsecSAs:?];
    v4 = a1[5];
    if (v4)
    {
      objc_setProperty_atomic(v4, v3, 0, 192);
      v6 = a1[5];
      if (v6)
      {
        objc_setProperty_atomic(v6, v5, 0, 200);
      }
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "Rekeyed Child SA", &v21, 2u);
    }

    [(NEIKEv2ChildSA *)a1[5] setState:0 error:?];
    [(NEIKEv2Session *)a1[4] reportState];
    [a1[7] sendCallbackSuccess:1 session:a1[4]];
  }

  else
  {
    [a1[7] sendCallbackSuccess:0 session:a1[4]];
    v9 = a1[5];
    ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to delete old Child SA", v10, v11, v12, v13, v14, v15, v16, v21);
    [(NEIKEv2ChildSA *)v9 setState:ErrorInternal error:?];

    [(NEIKEv2Session *)a1[4] reportState];
    v19 = a1[4];
    v20 = a1[5];

    [(NEIKEv2Session *)v19 resetChild:v20];
  }
}

- (void)receiveRekeyChildSA:(void *)a packet:
{
  v372 = *MEMORY[0x1E69E9840];
  v5 = a2;
  selfCopy9 = a;
  if (self)
  {
    v8 = objc_getProperty(self, v6, 384, 1);
    dispatch_assert_queue_V2(v8);

    v10 = objc_getProperty(self, v9, 352, 1);
    if (v10)
    {
      v12 = v10;
      if (v5)
      {
        if ([(NEIKEv2ChildSA *)v5 isRekeying])
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Child SA already rekeying, skipping", buf, 2u);
          }

          goto LABEL_68;
        }

        v15 = objc_getProperty(v5, v13, 56, 1);

        if (v15)
        {
          Property = objc_getProperty(v5, v16, 56, 1);
          v19 = Property;
          if (Property)
          {
            Property = objc_getProperty(Property, v18, 80, 1);
          }

          v14 = Property;

          v21 = objc_getProperty(v5, v20, 56, 1);
          v23 = v21;
          if (v21)
          {
            v21 = objc_getProperty(v21, v22, 88, 1);
          }

          v353 = v21;

          objc_setProperty_atomic(v5, v24, 0, 184);
          v25 = v5;
          if ([(NEIKEv2Packet *)selfCopy9 hasNotification:?])
          {
            v27 = 1;
          }

          else
          {
            v27 = 2;
          }

          v28 = objc_getProperty(v25, v26, 48, 1);
          mode = [v28 mode];

          if (v27 != mode)
          {
            v81 = ne_log_obj();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription = [(NEIKEv2Packet *)selfCopy9 copyShortDescription];
              *v361 = 138412290;
              v362 = copyShortDescription;
              _os_log_error_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_ERROR, "%@ Transport mode Child SA did not match", v361, 0xCu);
            }

            v82 = 7;
            goto LABEL_51;
          }

          v31 = objc_getProperty(selfCopy9, v30, 96, 1);
          v33 = v31;
          self = selfCopy9;
          if (v31)
          {
            v31 = objc_getProperty(v31, v32, 32, 1);
          }

          v34 = v31;

          v36 = objc_getProperty(v25, v35, 48, 1);
          proposals = [v36 proposals];

          if ([v34 count])
          {
            v39 = objc_getProperty(v25, v38, 48, 1);
            opportunisticPFS = [v39 opportunisticPFS];

            v351 = v34;
            if (opportunisticPFS)
            {
              v349 = v14;
              v42 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:proposals];
              *v368 = 0u;
              v369 = 0u;
              v370 = 0u;
              v371 = 0u;
              proposals = proposals;
              v43 = [proposals countByEnumeratingWithState:v368 objects:buf count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v369;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v369 != v45)
                    {
                      objc_enumerationMutation(proposals);
                    }

                    copyWithoutKEM = [(NEIKEv2ChildSAProposal *)*(*&v368[8] + 8 * i) copyWithoutKEM];
                    v48 = [v42 count];
                    if (copyWithoutKEM)
                    {
                      copyWithoutKEM[8] = v48 + 1;
                    }

                    [v42 addObject:copyWithoutKEM];
                  }

                  v44 = [proposals countByEnumeratingWithState:v368 objects:buf count:16];
                }

                while (v44);
              }

              v49 = [proposals count];
              if (v49 != [v42 count])
              {
                array = [v42 array];

                proposals = array;
              }

              v34 = v351;

              v14 = v349;
            }

            v51 = objc_getProperty(v25, v41, 48, 1);
            v52 = +[NEIKEv2ChildSAProposal chooseChildSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:checkKEMethod:](NEIKEv2ChildSAProposal, proposals, v34, [v51 preferInitiatorProposalOrder], 1);
            objc_setProperty_atomic(v25, v53, v52, 184);

            v55 = objc_getProperty(v25, v54, 184, 1);
            if (v55)
            {
              v57 = &OBJC_IVAR___NEFilterFlow__direction;
              v58 = objc_getProperty(self, v56, 112, 1);

              if (v58)
              {
                v60 = objc_getProperty(self, v59, 112, 1);
                v62 = v60;
                if (v60)
                {
                  v60 = objc_getProperty(v60, v61, 32, 1);
                }

                v34 = v351;
                v63 = v60;

                if (v63)
                {
                  WeakRetained = objc_loadWeakRetained(v25 + 3);
                  v350 = WeakRetained;
                  if (WeakRetained)
                  {
                    WeakRetained = objc_getProperty(WeakRetained, v65, 80, 1);
                  }

                  v66 = WeakRetained;
                  strictNonceSizeChecks = [v66 strictNonceSizeChecks];

                  if (strictNonceSizeChecks)
                  {
                    v69 = objc_getProperty(self, v68, 112, 1);
                    v71 = v69;
                    if (v69)
                    {
                      v69 = objc_getProperty(v69, v70, 32, 1);
                    }

                    v72 = v69;
                    v73 = [v72 length];

                    v346 = v73;
                    if ((v73 - 257) <= 0xFFFFFFFFFFFFFF0ELL)
                    {
                      v75 = ne_log_obj();
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
                        *v361 = 138412546;
                        v362 = copyShortDescription2;
                        v363 = 2048;
                        v364 = v73;
                        v77 = "%@ NONCE data length %zu is out of bounds";
                        v78 = v75;
                        v79 = 22;
LABEL_110:
                        _os_log_error_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_ERROR, v77, v361, v79);
                      }

LABEL_111:

LABEL_112:
                      v359 = 0;
                      v82 = 7;
                      goto LABEL_119;
                    }

                    v110 = v350;
                    if (v350)
                    {
                      v110 = objc_getProperty(v350, v74, 96, 1);
                    }

                    v57 = &OBJC_IVAR___NEFilterFlow__direction;
                    v111 = v110;
                    prfProtocol = [(NEIKEv2IKESAProposal *)v111 prfProtocol];
                    nonceSize = [prfProtocol nonceSize];

                    if (v346 < nonceSize)
                    {
                      v114 = ne_log_obj();
                      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                      {
                        copyShortDescription3 = [(NEIKEv2Packet *)self copyShortDescription];
                        if (v350)
                        {
                          v334 = objc_getProperty(v350, v333, 96, 1);
                        }

                        else
                        {
                          v334 = 0;
                        }

                        v341 = v334;
                        prfProtocol2 = [(NEIKEv2IKESAProposal *)v341 prfProtocol];
                        *v361 = 138412802;
                        v362 = copyShortDescription3;
                        v363 = 2048;
                        v364 = v346;
                        v365 = 2112;
                        method5 = prfProtocol2;
                        _os_log_error_impl(&dword_1BA83C000, v114, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", v361, 0x20u);
                      }

                      goto LABEL_112;
                    }
                  }

                  v115 = objc_getProperty(self, v68, v57[604], 1);
                  v117 = v115;
                  if (v115)
                  {
                    v115 = objc_getProperty(v115, v116, 32, 1);
                  }

                  v118 = v115;
                  objc_setProperty_atomic(v25, v119, v118, 88);

                  v121 = objc_getProperty(v25, v120, 184, 1);
                  v123 = v121;
                  if (v121)
                  {
                    v121 = objc_getProperty(v121, v122, 112, 1);
                  }

                  v124 = v121;
                  method = [v124 method];

                  if (!method)
                  {
LABEL_99:
                    v359 = 1;
                    v82 = 7;
                    v34 = v351;
LABEL_119:

                    goto LABEL_120;
                  }

                  v127 = objc_getProperty(self, v126, 104, 1);

                  if (v127)
                  {
                    v129 = objc_getProperty(self, v128, 104, 1);
                    v131 = v129;
                    if (v129)
                    {
                      v129 = objc_getProperty(v129, v130, 32, 1);
                    }

                    v34 = v351;
                    v132 = v129;

                    if (v132)
                    {
                      v134 = objc_getProperty(self, v133, 104, 1);
                      v136 = v134;
                      if (v134)
                      {
                        v134 = objc_getProperty(v134, v135, 40, 1);
                      }

                      v137 = v134;

                      if (v137)
                      {
                        v139 = objc_getProperty(self, v138, 104, 1);
                        v347 = v139;
                        if (v139)
                        {
                          v139 = objc_getProperty(v139, v140, 32, 1);
                        }

                        v339 = v139;
                        method2 = [v339 method];
                        v142 = objc_getProperty(v25, v141, 184, 1);
                        v144 = v142;
                        if (v142)
                        {
                          v142 = objc_getProperty(v142, v143, 112, 1);
                        }

                        v145 = v142;
                        method3 = [v145 method];

                        if (method2 == method3)
                        {
                          v148 = objc_getProperty(self, v147, 104, 1);
                          v150 = v148;
                          if (v148)
                          {
                            v148 = objc_getProperty(v148, v149, 40, 1);
                          }

                          v151 = v148;
                          objc_setProperty_atomic(v25, v152, v151, 104);

                          goto LABEL_99;
                        }

                        v156 = ne_log_obj();
                        if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
                        {
                          copyShortDescription4 = [(NEIKEv2Packet *)self copyShortDescription];
                          v158 = objc_getProperty(self, v157, 104, 1);
                          v344 = v158;
                          if (v158)
                          {
                            v158 = objc_getProperty(v158, v159, 32, 1);
                          }

                          v340 = v158;
                          method4 = [v340 method];
                          v161 = objc_getProperty(v25, v160, 184, 1);
                          kemProtocol = [(NEIKEv2ChildSAProposal *)v161 kemProtocol];
                          *v361 = 138412802;
                          v362 = copyShortDescription4;
                          v363 = 2048;
                          v364 = method4;
                          v365 = 2048;
                          method5 = [kemProtocol method];
                          _os_log_impl(&dword_1BA83C000, v156, OS_LOG_TYPE_INFO, "%@ Received KE method %zu does not match KE method %zu in CHILD SA rekey proposal", v361, 0x20u);

                          v34 = v351;
                        }

LABEL_118:
                        v359 = 0;
                        v82 = 17;
                        goto LABEL_119;
                      }

                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_111;
                      }

                      copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
                      *v361 = 138412290;
                      v362 = copyShortDescription2;
                      v77 = "%@ Did not receive data in KE payload";
                    }

                    else
                    {
                      v75 = ne_log_obj();
                      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_111;
                      }

                      copyShortDescription2 = [(NEIKEv2Packet *)self copyShortDescription];
                      *v361 = 138412290;
                      v362 = copyShortDescription2;
                      v77 = "%@ Did not receive method in KE payload";
                    }

                    v78 = v75;
                    v79 = 12;
                    goto LABEL_110;
                  }

                  v153 = ne_log_obj();
                  v34 = v351;
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription5 = [(NEIKEv2Packet *)self copyShortDescription];
                    *v361 = 138412290;
                    v362 = copyShortDescription5;
                    _os_log_error_impl(&dword_1BA83C000, v153, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", v361, 0xCu);
                  }

                  goto LABEL_118;
                }

                v101 = ne_log_obj();
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
                  *v361 = 138412290;
                  v362 = copyShortDescription6;
                  v108 = "%@ Did not receive NONCE data";
LABEL_104:
                  _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, v108, v361, 0xCu);

                  goto LABEL_60;
                }

                goto LABEL_60;
              }

              v106 = ne_log_obj();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription7 = [(NEIKEv2Packet *)self copyShortDescription];
                *v361 = 138412290;
                v362 = copyShortDescription7;
                _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", v361, 0xCu);
              }

              v359 = 0;
              v82 = 7;
              v34 = v351;
            }

            else
            {
              v102 = ne_log_obj();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription8 = [(NEIKEv2Packet *)self copyShortDescription];
                *v361 = 138412290;
                v362 = copyShortDescription8;
                _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "%@ No matching rekey proposal found", v361, 0xCu);
              }

              v359 = 0;
              v82 = 14;
            }

LABEL_120:

            if (v359)
            {
              selfCopy9 = self;
              if (([(NEIKEv2ChildSA *)v25 generateInitialValues]& 1) == 0)
              {
                v279 = ne_log_obj();
                if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v279, OS_LOG_TYPE_ERROR, "Failed to generate local Child crypto values", buf, 2u);
                }

                ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate local Child crypto values", v280, v281, v282, v283, v284, v285, v286, method4);
                [(NEIKEv2ChildSA *)v25 setState:ErrorCrypto error:?];

                [(NEIKEv2Session *)self reportState];
                [(NEIKEv2Session *)self resetChild:v25];
                goto LABEL_67;
              }

              v166 = objc_getProperty(v25, v165, 184, 1);
              v168 = v166;
              if (v166)
              {
                v166 = objc_getProperty(v166, v167, 112, 1);
              }

              v169 = v166;
              method6 = [v169 method];

              if (method6 && ([(NEIKEv2ChildSA *)v25 processCurrentKeyExchange]& 1) == 0)
              {
                v337 = ne_log_obj();
                if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v337, OS_LOG_TYPE_ERROR, "Failed to process KE data", buf, 2u);
                }

                v297 = @"ailed to process KE data";
              }

              else
              {
                v172 = objc_getProperty(v25, v171, 184, 1);
                v360 = v172;
                v173 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v360 count:1];
                v174 = [(NEIKEv2Session *)self generateSPIForChild:v25 proposals:v173];

                if (v174)
                {
                  selfCopy2 = self;
                  v176 = v25;
                  objc_opt_self();
                  v177 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initResponse:selfCopy2];
                  if (!v177)
                  {
                    v309 = ne_log_obj();
                    if (os_log_type_enabled(v309, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v309, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initResponse:] failed", buf, 2u);
                    }

                    v179 = 0;
                    v265 = 0;
                    goto LABEL_183;
                  }

                  v179 = v177;
                  v180 = objc_getProperty(v176, v178, 48, 1);
                  mode2 = [v180 mode];

                  if (mode2 == 1 && ![(NEIKEv2Packet *)v179 addNotification:0 data:?])
                  {
                    v310 = ne_log_obj();
                    if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      v311 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
                      v312 = v310;
                      v313 = 2;
LABEL_204:
                      _os_log_fault_impl(&dword_1BA83C000, v312, OS_LOG_TYPE_FAULT, v311, buf, v313);
                      goto LABEL_182;
                    }

                    goto LABEL_182;
                  }

                  v182 = objc_alloc_init(NEIKEv2ChildSAPayload);
                  objc_setProperty_atomic(v179, v183, v182, 96);

                  v185 = objc_getProperty(v176, v184, 184, 1);
                  *v368 = v185;
                  v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:v368 count:1];
                  v188 = objc_getProperty(v179, v187, 96, 1);
                  v190 = v188;
                  if (v188)
                  {
                    objc_setProperty_atomic(v188, v189, v186, 32);
                  }

                  v192 = objc_getProperty(v176, v191, 184, 1);
                  kemProtocol2 = [(NEIKEv2ChildSAProposal *)v192 kemProtocol];
                  method7 = [kemProtocol2 method];

                  if (method7)
                  {
                    v197 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                    objc_setProperty_atomic(v179, v198, v197, 104);

                    v200 = objc_getProperty(v176, v199, 184, 1);
                    kemProtocol3 = [(NEIKEv2ChildSAProposal *)v200 kemProtocol];
                    v204 = objc_getProperty(v179, v203, 104, 1);
                    v206 = v204;
                    if (v204)
                    {
                      objc_setProperty_atomic(v204, v205, kemProtocol3, 32);
                    }

                    v208 = objc_getProperty(v176, v207, 112, 1);
                    v209 = v208;
                    if (v208)
                    {
                      v210 = *(v208 + 2);
                    }

                    else
                    {
                      v210 = 0;
                    }

                    v211 = v210;
                    v213 = objc_getProperty(v179, v212, 104, 1);
                    v215 = v213;
                    if (v213)
                    {
                      objc_setProperty_atomic(v213, v214, v211, 40);
                    }

                    v217 = objc_getProperty(v179, v216, 104, 1);
                    isValid = [(NEIKEv2Payload *)v217 isValid];

                    if ((isValid & 1) == 0)
                    {
                      v310 = ne_log_obj();
                      if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136315138;
                        *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:childSA:]";
                        v311 = "%s called with null packet.ke.isValid";
                        goto LABEL_203;
                      }

                      goto LABEL_182;
                    }
                  }

                  v219 = objc_getProperty(v179, v196, 96, 1);
                  isValid2 = [(NEIKEv2Payload *)v219 isValid];

                  if (isValid2)
                  {
                    v221 = objc_alloc_init(NEIKEv2NoncePayload);
                    objc_setProperty_atomic(v179, v222, v221, 112);

                    v224 = objc_getProperty(v176, v223, 80, 1);
                    v226 = objc_getProperty(v179, v225, 112, 1);
                    v228 = v226;
                    if (v226)
                    {
                      objc_setProperty_atomic(v226, v227, v224, 32);
                    }

                    v230 = objc_getProperty(v179, v229, 112, 1);
                    isValid3 = [(NEIKEv2Payload *)v230 isValid];

                    if (isValid3)
                    {
                      v232 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
                      objc_setProperty_atomic(v179, v233, v232, 128);

                      v235 = objc_getProperty(v176, v234, 72, 1);
                      v237 = objc_getProperty(v179, v236, 128, 1);
                      v239 = v237;
                      if (v237)
                      {
                        objc_setProperty_atomic(v237, v238, v235, 32);
                      }

                      v241 = objc_getProperty(v179, v240, 128, 1);
                      isValid4 = [(NEIKEv2Payload *)v241 isValid];

                      if (isValid4)
                      {
                        v243 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
                        objc_setProperty_atomic(v179, v244, v243, 136);

                        v246 = objc_getProperty(v176, v245, 64, 1);
                        v248 = objc_getProperty(v179, v247, 136, 1);
                        v250 = v248;
                        if (v248)
                        {
                          objc_setProperty_atomic(v248, v249, v246, 32);
                        }

                        v252 = objc_getProperty(v179, v251, 136, 1);
                        isValid5 = [(NEIKEv2Payload *)v252 isValid];

                        if (isValid5)
                        {
                          v255 = objc_getProperty(v176, v254, 184, 1);
                          v257 = v255;
                          if (v255)
                          {
                            v255 = objc_getProperty(v255, v256, 120, 1);
                          }

                          v258 = v255;

                          if (v258)
                          {
                            uUID = [MEMORY[0x1E696AFB0] UUID];
                            *buf = 0uLL;
                            [uUID getUUIDBytes:buf];
                            v260 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:16];
                            v261 = [NEIKEv2NotifyPayload createNotifyPayloadType:v260 data:?];
                            objc_setProperty_atomic(v176, v262, v261, 128);

                            v264 = objc_getProperty(v176, v263, 128, 1);
                            [(NEIKEv2Packet *)v179 addNotifyPayload:v264];
                          }

                          v179 = v179;
                          v265 = v179;
                          goto LABEL_183;
                        }

                        v310 = ne_log_obj();
                        if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136315138;
                          *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:childSA:]";
                          v311 = "%s called with null packet.tsr.isValid";
                          goto LABEL_203;
                        }

                        goto LABEL_182;
                      }

                      v310 = ne_log_obj();
                      if (!os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_182;
                      }

                      *buf = 136315138;
                      *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:childSA:]";
                      v331 = "%s called with null packet.tsi.isValid";
                    }

                    else
                    {
                      v310 = ne_log_obj();
                      if (!os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_182;
                      }

                      *buf = 136315138;
                      *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:childSA:]";
                      v331 = "%s called with null packet.nonce.isValid";
                    }

                    _os_log_fault_impl(&dword_1BA83C000, v310, OS_LOG_TYPE_FAULT, v331, buf, 0xCu);
                    goto LABEL_182;
                  }

                  v310 = ne_log_obj();
                  if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:childSA:]";
                    v311 = "%s called with null packet.childSA.isValid";
LABEL_203:
                    v312 = v310;
                    v313 = 12;
                    goto LABEL_204;
                  }

LABEL_182:

                  v265 = 0;
LABEL_183:

                  if (v265)
                  {
                    v315 = objc_getProperty(v176, v314, 112, 1);
                    v316 = v315;
                    selfCopy9 = self;
                    if (v315)
                    {
                      v317 = *(v315 + 3);
                    }

                    else
                    {
                      v317 = 0;
                    }

                    v318 = v317;
                    objc_setProperty_atomic(v176, v319, v318, 120);

                    objc_setProperty_atomic(v176, v320, 0, 112);
                    v354[0] = MEMORY[0x1E69E9820];
                    v354[1] = 3221225472;
                    v354[2] = __55__NEIKEv2Session_Exchange__receiveRekeyChildSA_packet___block_invoke;
                    v354[3] = &unk_1E7F08508;
                    v355 = v353;
                    v356 = v176;
                    selfCopy4 = self;
                    v358 = v14;
                    [(NEIKEv2Session *)self handleFollowupKEForRekeyChildSAResponder:v356 iteration:0 replyPacket:v265 replyPacketDescription:@"responder rekey child SA reply" handler:v354];
                  }

                  else
                  {
                    v321 = ne_log_obj();
                    selfCopy9 = self;
                    if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1BA83C000, v321, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", buf, 2u);
                    }

                    ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v322, v323, v324, v325, v326, v327, v328, method4);
                    [(NEIKEv2ChildSA *)v176 setState:ErrorInternal error:?];

                    [(NEIKEv2Session *)self reportState];
                    [(NEIKEv2Session *)self resetChild:v176];
                  }

                  goto LABEL_67;
                }

                v289 = ne_log_obj();
                if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v289, OS_LOG_TYPE_ERROR, "Failed to generate Child SA SPI", buf, 2u);
                }

                v297 = @"Failed to generate Child SA SPI";
              }

              v298 = NEIKEv2CreateErrorCrypto(v297, v290, v291, v292, v293, v294, v295, v296, method4);
              [(NEIKEv2ChildSA *)v25 setState:v298 error:?];

              [(NEIKEv2Session *)self reportState];
              [(NEIKEv2Session *)self resetChild:v25];
              selfCopy9 = self;
LABEL_67:

              goto LABEL_68;
            }

            selfCopy9 = self;
            if (v82 == 17)
            {
              v266 = objc_getProperty(v25, v164, 184, 1);
              v268 = v266;
              if (v266)
              {
                v266 = objc_getProperty(v266, v267, 112, 1);
              }

              v269 = v266;
              v270 = bswap32([v269 method]) >> 16;

              *buf = v270;
              v271 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:2];
              v83 = [NEIKEv2CreateChildPacket createChildSAResponse:0x11uLL errorCode:v271 errorData:?];

              if (v83)
              {
                if (([(NEIKEv2Session *)self sendReply:v83 replyHandler:0]& 1) != 0)
                {

                  selfCopy9 = self;
                  goto LABEL_161;
                }

                ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"rekey child SA refusal", v272, v273, v274, v275, v276, v277, v278, method4);
              }

              else
              {
                v300 = ne_log_obj();
                if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
                {
                  *v368 = 0;
                  _os_log_error_impl(&dword_1BA83C000, v300, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", v368, 2u);
                }

                ErrorFailedToSend = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v301, v302, v303, v304, v305, v306, v307, method4);
              }

              v103 = ErrorFailedToSend;
              selfCopy9 = self;
              goto LABEL_66;
            }

LABEL_51:
            v83 = [NEIKEv2CreateChildPacket createChildSAResponse:selfCopy9 errorCode:v82 errorData:0];
            if (v83)
            {
              if (([(NEIKEv2Session *)self sendReply:v83 replyHandler:0]& 1) != 0)
              {
                if (v82 == 14)
                {

LABEL_161:
                  objc_setProperty_atomic(v25, v91, 0, 184);
                  goto LABEL_67;
                }

                ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Create Child SA packet", v84, v85, v86, v87, v88, v89, v90, method4);
              }

              else
              {
                ErrorPeerInvalidSyntax = NEIKEv2CreateErrorFailedToSend(@"rekey child SA refusal", v84, v85, v86, v87, v88, v89, v90, method4);
              }
            }

            else
            {
              v92 = ne_log_obj();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", buf, 2u);
              }

              ErrorPeerInvalidSyntax = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v93, v94, v95, v96, v97, v98, v99, method4);
            }

            v103 = ErrorPeerInvalidSyntax;
LABEL_66:
            [(NEIKEv2ChildSA *)v25 setState:v103 error:?];

            [(NEIKEv2Session *)self reportState];
            [(NEIKEv2Session *)self resetChild:v25];

            goto LABEL_67;
          }

          v101 = ne_log_obj();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription6 = [(NEIKEv2Packet *)self copyShortDescription];
            *v361 = 138412290;
            v362 = copyShortDescription6;
            v108 = "%@ Received no SA proposals";
            goto LABEL_104;
          }

LABEL_60:

          v359 = 0;
          v82 = 7;
          goto LABEL_120;
        }

        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_68;
        }

        *buf = 136315138;
        *&buf[4] = "[NEIKEv2Session(Exchange) receiveRekeyChildSA:packet:]";
        v80 = "%s called with null childSA.chosenProposal";
      }

      else
      {
        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_68;
        }

        *buf = 136315138;
        *&buf[4] = "[NEIKEv2Session(Exchange) receiveRekeyChildSA:packet:]";
        v80 = "%s called with null childSA";
      }

      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v80, buf, 0xCu);
      goto LABEL_68;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2Session(Exchange) receiveRekeyChildSA:packet:]";
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
  }

  v12 = 0;
LABEL_68:

  v105 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2Session_Exchange__receiveRekeyChildSA_packet___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (([(NEIKEv2InformationalPacket *)v3 validateDeleteChild:?]& 1) != 0)
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 184, 1);
    }

    v7 = Property;
    v8 = a1[5];
    if (v8)
    {
      objc_setProperty_atomic(v8, v6, v7, 56);
    }

    v10 = a1[5];
    if (v10)
    {
      objc_setProperty_atomic(v10, v9, 0, 184);
      v11 = a1[5];
      if (v11)
      {
        v11[9] = 0;
        v10 = a1[5];
      }

      else
      {
        v10 = 0;
      }
    }

    if (([(NEIKEv2ChildSA *)v10 generateAllValues]& 1) != 0)
    {
      *buf = 0;
      if (([(NEIKEv2Session *)a1[6] installRekeyedChildSA:buf andReturnIPsecSAsToDelete:?]& 1) == 0)
      {
        v52 = ne_log_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v81 = 0;
          _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "Failed to install Child SA", v81, 2u);
        }

        v54 = a1[5];
        v55 = a1[6];
        if (v54)
        {
          v56 = objc_getProperty(v54, v53, 56, 1);
          v58 = v56;
          if (v56)
          {
            v56 = objc_getProperty(v56, v57, 80, 1);
          }
        }

        else
        {
          v58 = 0;
          v56 = 0;
        }

        v60 = v56;
        v61 = a1[5];
        if (v61)
        {
          v62 = objc_getProperty(v61, v59, 56, 1);
          v64 = v62;
          if (v62)
          {
            v62 = objc_getProperty(v62, v63, 88, 1);
          }
        }

        else
        {
          v64 = 0;
          v62 = 0;
        }

        v65 = v62;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __55__NEIKEv2Session_Exchange__receiveRekeyChildSA_packet___block_invoke_466;
        v78[3] = &unk_1E7F081C0;
        v66 = a1[5];
        v67 = a1[6];
        v79 = v66;
        v80 = v67;
        [(NEIKEv2Session *)v55 initiateDeleteChildSPI:v60 remoteSPI:v65 deleteCompletionCallback:v78];

        v22 = v79;
        v17 = *buf;
        goto LABEL_40;
      }

      v13 = a1[5];
      if (v13 && (objc_setProperty_atomic(v13, v12, a1[7], 192), (v15 = a1[5]) != 0))
      {
        objc_setProperty_atomic(v15, v14, a1[4], 200);
        v16 = a1[5];
      }

      else
      {
        v16 = 0;
      }

      v17 = *buf;
      [(NEIKEv2Session *)a1[6] uninstallOldRekeyedChildSA:v16 andDeleteIPsecSAs:*buf];
      v19 = a1[5];
      if (v19)
      {
        objc_setProperty_atomic(v19, v18, 0, 192);
        v21 = a1[5];
        if (v21)
        {
          objc_setProperty_atomic(v21, v20, 0, 200);
        }
      }

      v22 = [NEIKEv2InformationalPacket createDeleteResponse:v3 child:a1[7]];
      if (v22)
      {
        if (([(NEIKEv2Session *)a1[6] sendReply:v22 replyHandler:0]& 1) != 0)
        {
LABEL_40:

          goto LABEL_41;
        }

        v30 = a1[5];
        ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete child SA for rekey", v23, v24, v25, v26, v27, v28, v29, v78[0]);
      }

      else
      {
        v68 = ne_log_obj();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *v81 = 0;
          _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, "Failed to create Child SA Delete packet", v81, 2u);
        }

        v30 = a1[5];
        ErrorFailedToSend = NEIKEv2CreateErrorInternal(@"Failed to create Child SA Delete packet", v69, v70, v71, v72, v73, v74, v75, v78[0]);
      }

      v76 = ErrorFailedToSend;
      [(NEIKEv2ChildSA *)v30 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)a1[6] reportState];
      [(NEIKEv2Session *)a1[6] resetChild:?];
      goto LABEL_40;
    }

    v42 = ne_log_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "Failed to generate Child SA crypto values", buf, 2u);
    }

    v33 = a1[5];
    ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA crypto values", v43, v44, v45, v46, v47, v48, v49, v78[0]);
  }

  else
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "Failed to process Rekey Child SA Delete packet", buf, 2u);
    }

    v33 = a1[5];
    ErrorCrypto = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Rekey Child SA Delete packet", v34, v35, v36, v37, v38, v39, v40, v78[0]);
  }

  v50 = ErrorCrypto;
  [(NEIKEv2ChildSA *)v33 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)a1[6] reportState];
  [(NEIKEv2Session *)a1[6] resetChild:?];
LABEL_41:
}

void __55__NEIKEv2Session_Exchange__receiveRekeyChildSA_packet___block_invoke_466(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to install Child SA", a2, a3, a4, a5, a6, a7, a8, v14);
  [(NEIKEv2ChildSA *)v9 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);

  [(NEIKEv2Session *)v12 resetChild:v13];
}

- (void)handleFollowupKEForRekeyIKESAInitiator:(void *)initiator rekeyIKEContext:(unint64_t)context iteration:(void *)iteration handler:
{
  v122 = *MEMORY[0x1E69E9840];
  v9 = a2;
  initiatorCopy = initiator;
  iterationCopy = iteration;
  if (!self)
  {
    goto LABEL_44;
  }

  v13 = objc_getProperty(self, v11, 384, 1);
  dispatch_assert_queue_V2(v13);

  if (v9)
  {
    Property = objc_getProperty(v9, v14, 96, 1);
    v17 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 136, 1);
    }
  }

  else
  {
    v17 = 0;
    Property = 0;
  }

  v18 = Property;
  v19 = [v18 count];

  if (v19 > context)
  {
    if (!context)
    {
      v22 = objc_alloc(MEMORY[0x1E695DF70]);
      if (v9)
      {
        v23 = objc_getProperty(v9, v21, 96, 1);
        v25 = v23;
        if (v23)
        {
          v23 = objc_getProperty(v23, v24, 136, 1);
        }
      }

      else
      {
        v25 = 0;
        v23 = 0;
      }

      v26 = v23;
      v28 = [v22 initWithCapacity:{objc_msgSend(v26, "count")}];
      if (v9)
      {
        objc_setProperty_atomic(v9, v27, v28, 184);
      }
    }

    if (v9)
    {
      v29 = objc_getProperty(v9, v20, 96, 1);
      v31 = v29;
      if (v29)
      {
        v29 = objc_getProperty(v29, v30, 136, 1);
      }
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v32 = v29;
    v33 = [v32 objectAtIndexedSubscript:context];

    if (v9)
    {
      v35 = objc_getProperty(v9, v34, 96, 1);
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)v36 chosenAdditionalKEMProtocols];
    v38 = [chosenAdditionalKEMProtocols objectForKeyedSubscript:v33];

    if (v38)
    {
      v102 = v33;
      if (([(NEIKEv2IKESA *)v9 generateLocalValuesForKEMProtocol:v38]& 1) != 0)
      {
        initOutbound = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initOutbound];
        v40 = objc_alloc_init(NEIKEv2KeyExchangePayload);
        v42 = v40;
        selfCopy = self;
        if (initOutbound)
        {
          objc_setProperty_atomic(initOutbound, v41, v40, 88);

          v44 = objc_getProperty(initOutbound, v43, 88, 1);
          v46 = v44;
          if (v44)
          {
            objc_setProperty_atomic(v44, v45, v38, 32);
          }
        }

        else
        {

          v46 = 0;
        }

        v47 = v38;

        v49 = iterationCopy;
        if (v9)
        {
          v50 = objc_getProperty(v9, v48, 160, 1);
          v51 = v50;
          if (v50)
          {
            v52 = initiatorCopy;
            v53 = *(v50 + 2);
LABEL_26:
            v55 = v53;
            if (initOutbound)
            {
              v56 = objc_getProperty(initOutbound, v54, 88, 1);
              v58 = v56;
              if (v56)
              {
                objc_setProperty_atomic(v56, v57, v55, 40);
              }
            }

            else
            {
              v58 = 0;
            }

            if (v9)
            {
              v60 = objc_getProperty(v9, v59, 176, 1);
            }

            else
            {
              v60 = 0;
            }

            initiatorCopy = v52;
            v61 = v60;
            v63 = v61;
            iterationCopy = v49;
            if (initOutbound)
            {
              objc_setProperty_atomic(initOutbound, v62, v61, 96);

              v65 = objc_getProperty(initOutbound, v64, 88, 1);
            }

            else
            {

              v65 = 0;
            }

            v66 = v65;
            isValid = [(NEIKEv2Payload *)v66 isValid];

            if (isValid)
            {
              v103[0] = MEMORY[0x1E69E9820];
              v103[1] = 3221225472;
              v103[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_2;
              v103[3] = &unk_1E7F08440;
              v103[4] = selfCopy;
              v68 = initiatorCopy;
              v104 = v68;
              v105 = v47;
              v106 = v9;
              contextCopy = context;
              v107 = v49;
              if ([NEIKEv2Session sendRequest:selfCopy retry:initOutbound replyHandler:v103]== -1)
              {
                [v68 sendCallbackSuccess:0 session:selfCopy];
                v70 = objc_getProperty(selfCopy, v69, 352, 1);
                ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator rekey FOLLOWUP_KE #%zu", v71, v72, v73, v74, v75, v76, v77, context + 1);
                [(NEIKEv2IKESA *)v70 setState:ErrorFailedToSend error:?];

                [(NEIKEv2Session *)selfCopy reportState];
                [(NEIKEv2Session *)selfCopy resetAll];
              }

              v81 = v104;
            }

            else
            {
              v82 = ne_log_obj();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                selfCopy4 = selfCopy;
                _os_log_error_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_ERROR, "%@ Failed to create FOLLOWUP_KE packet (initiator rekey followup KE)", buf, 0xCu);
              }

              v83 = [NEIKEv2DeleteIKEContext alloc];
              v85 = objc_getProperty(selfCopy, v84, 384, 1);
              v109[0] = MEMORY[0x1E69E9820];
              v109[1] = 3221225472;
              v109[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_481;
              v109[3] = &unk_1E7F081C0;
              v110 = initiatorCopy;
              v111 = selfCopy;
              v86 = [(NEIKEv2DeleteIKEContext *)&v83->super.super.isa initDeleteIKEWithResponse:v85 callbackQueue:v109 callback:?];

              [(NEIKEv2Session *)selfCopy initiateDelete:v86];
              v81 = v110;
            }

            goto LABEL_44;
          }

          v52 = initiatorCopy;
        }

        else
        {
          v52 = initiatorCopy;
          v51 = 0;
        }

        v53 = 0;
        goto LABEL_26;
      }

      selfCopy3 = self;
      v97 = v38;
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy4 = selfCopy3;
        v120 = 2112;
        v121 = v38;
        _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (initiator rekey followup KE)", buf, 0x16u);
      }

      v99 = [NEIKEv2DeleteIKEContext alloc];
      v93 = objc_getProperty(selfCopy3, v100, 384, 1);
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_477;
      v112[3] = &unk_1E7F083C8;
      v94 = v113;
      v113[0] = initiatorCopy;
      v113[1] = selfCopy3;
      v95 = &v114;
      v114 = v97;
      v96 = [(NEIKEv2DeleteIKEContext *)&v99->super.super.isa initDeleteIKEWithResponse:v93 callbackQueue:v112 callback:?];
      v89 = v102;
    }

    else
    {
      selfCopy3 = self;
      v89 = v33;
      v90 = ne_log_obj();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy4 = self;
        v120 = 2112;
        v121 = v33;
        _os_log_error_impl(&dword_1BA83C000, v90, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (initiator rekey followup KE)", buf, 0x16u);
      }

      v91 = [NEIKEv2DeleteIKEContext alloc];
      v93 = objc_getProperty(selfCopy3, v92, 384, 1);
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke;
      v115[3] = &unk_1E7F083C8;
      v94 = v116;
      v116[0] = initiatorCopy;
      v116[1] = selfCopy3;
      v95 = &v117;
      v117 = v89;
      v96 = [(NEIKEv2DeleteIKEContext *)&v91->super.super.isa initDeleteIKEWithResponse:v93 callbackQueue:v115 callback:?];
      v97 = 0;
    }

    [(NEIKEv2Session *)selfCopy3 initiateDelete:v96];
    goto LABEL_44;
  }

  if (v9)
  {
    objc_setProperty_atomic(v9, v20, 0, 176);
  }

  iterationCopy[2](iterationCopy);
LABEL_44:

  v87 = *MEMORY[0x1E69E9840];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, *(a1 + 48));
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_477(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, *(a1 + 48));
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_481(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create FOLLOWUP_KE packet (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v137 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] == 44)
  {
    Property = v3;
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 88, 1);
    }

    v7 = Property;

    if (v7)
    {
      if (v6)
      {
        v9 = objc_getProperty(v6, v8, 88, 1);
        v11 = v9;
        if (v9)
        {
          v9 = objc_getProperty(v9, v10, 32, 1);
        }
      }

      else
      {
        v11 = 0;
        v9 = 0;
      }

      v12 = v9;

      if (v12)
      {
        if (v6)
        {
          v14 = objc_getProperty(v6, v13, 88, 1);
          v16 = v14;
          if (v14)
          {
            v14 = objc_getProperty(v14, v15, 40, 1);
          }
        }

        else
        {
          v16 = 0;
          v14 = 0;
        }

        v17 = v14;

        if (v17)
        {
          if (v6)
          {
            v19 = objc_getProperty(v6, v18, 88, 1);
            v21 = v19;
            if (v19)
            {
              v19 = objc_getProperty(v19, v20, 32, 1);
            }
          }

          else
          {
            v21 = 0;
            v19 = 0;
          }

          v22 = v19;
          v23 = [v22 method];
          v24 = [*(a1 + 48) method];

          if (v23 == v24)
          {
            if (v6)
            {
              v26 = objc_getProperty(v6, v25, 88, 1);
              v28 = v26;
              if (v26)
              {
                v26 = objc_getProperty(v26, v27, 40, 1);
              }
            }

            else
            {
              v28 = 0;
              v26 = 0;
            }

            v30 = v26;
            v31 = *(a1 + 56);
            if (v31)
            {
              objc_setProperty_atomic(v31, v29, v30, 152);
            }

            v33 = *(a1 + 56);
            if (v33)
            {
              v34 = objc_getProperty(*(a1 + 56), v32, 184, 1);

              if (v34)
              {
                if ([(NEIKEv2IKESA *)v33 processCurrentKeyExchange])
                {
                  v37 = objc_getProperty(v33, v36, 184, 1);
                  v39 = objc_getProperty(v33, v38, 160, 1);
                  v40 = v39;
                  if (v39)
                  {
                    v41 = v39[3];
                  }

                  else
                  {
                    v41 = 0;
                  }

                  [v37 addObject:v41];

                  objc_setProperty_atomic(v33, v42, 0, 160);
                  if (v6)
                  {
                    v44 = objc_getProperty(v6, v43, 96, 1);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v46 = v44;
                  v47 = *(a1 + 56);
                  if (v47)
                  {
                    objc_setProperty_atomic(v47, v45, v46, 176);
                  }

                  [(NEIKEv2Session *)*(a1 + 32) handleFollowupKEForRekeyIKESAInitiator:*(a1 + 40) rekeyIKEContext:*(a1 + 72) + 1 iteration:*(a1 + 64) handler:?];
                  goto LABEL_60;
                }
              }

              else
              {
                v82 = ne_log_obj();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  v132 = "[NEIKEv2IKESA(Crypto) processFollowupKeyExchange]";
                  _os_log_fault_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_FAULT, "%s called with null self.followupSharedSecrets", buf, 0xCu);
                }
              }
            }

            v83 = ne_log_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v83, OS_LOG_TYPE_ERROR, "Failed to process KE data (initiator rekey followup KE)", buf, 2u);
            }

            v85 = [NEIKEv2DeleteIKEContext alloc];
            v86 = *(a1 + 32);
            if (v86)
            {
              v86 = objc_getProperty(v86, v84, 384, 1);
            }

            v87 = v86;
            v111[0] = MEMORY[0x1E69E9820];
            v111[1] = 3221225472;
            v111[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_505;
            v111[3] = &unk_1E7F081C0;
            v88 = *(a1 + 40);
            v89 = *(a1 + 32);
            v112 = v88;
            v113 = v89;
            v90 = [(NEIKEv2DeleteIKEContext *)&v85->super.super.isa initDeleteIKEWithResponse:v87 callbackQueue:v111 callback:?];

            [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v90];
            v56 = v112;
          }

          else
          {
            v73 = ne_log_obj();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v95 = *(a1 + 32);
              if (v6)
              {
                v96 = objc_getProperty(v6, v74, 88, 1);
                v98 = v96;
                if (v96)
                {
                  v96 = objc_getProperty(v96, v97, 32, 1);
                }
              }

              else
              {
                v98 = 0;
                v96 = 0;
              }

              v99 = v96;
              v100 = [v99 method];
              v101 = [*(a1 + 48) method];
              *buf = 138412802;
              v132 = v95;
              v133 = 2048;
              v134 = v100;
              v135 = 2048;
              v136 = v101;
              _os_log_error_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (initiator rekey followup KE)", buf, 0x20u);
            }

            v76 = [NEIKEv2DeleteIKEContext alloc];
            v77 = *(a1 + 32);
            if (v77)
            {
              v77 = objc_getProperty(v77, v75, 384, 1);
            }

            v78 = v77;
            v114[0] = MEMORY[0x1E69E9820];
            v114[1] = 3221225472;
            v114[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_501;
            v114[3] = &unk_1E7F08468;
            v79 = *(a1 + 40);
            v80 = *(a1 + 32);
            v115 = v79;
            v116 = v80;
            v6 = v6;
            v117 = v6;
            v118 = *(a1 + 48);
            v81 = [(NEIKEv2DeleteIKEContext *)&v76->super.super.isa initDeleteIKEWithResponse:v78 callbackQueue:v114 callback:?];

            [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v81];
            v56 = v115;
          }
        }

        else
        {
          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v94 = *(a1 + 32);
            *buf = 138412290;
            v132 = v94;
            _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (initiator rekey followup KE)", buf, 0xCu);
          }

          v67 = [NEIKEv2DeleteIKEContext alloc];
          v68 = *(a1 + 32);
          if (v68)
          {
            v68 = objc_getProperty(v68, v66, 384, 1);
          }

          v69 = v68;
          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 3221225472;
          v119[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_497;
          v119[3] = &unk_1E7F081C0;
          v70 = *(a1 + 40);
          v71 = *(a1 + 32);
          v120 = v70;
          v121 = v71;
          v72 = [(NEIKEv2DeleteIKEContext *)&v67->super.super.isa initDeleteIKEWithResponse:v69 callbackQueue:v119 callback:?];

          [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v72];
          v56 = v120;
        }
      }

      else
      {
        v57 = ne_log_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v93 = *(a1 + 32);
          *buf = 138412290;
          v132 = v93;
          _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (initiator rekey followup KE)", buf, 0xCu);
        }

        v59 = [NEIKEv2DeleteIKEContext alloc];
        v60 = *(a1 + 32);
        if (v60)
        {
          v60 = objc_getProperty(v60, v58, 384, 1);
        }

        v61 = v60;
        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 3221225472;
        v122[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_493;
        v122[3] = &unk_1E7F081C0;
        v62 = *(a1 + 40);
        v63 = *(a1 + 32);
        v123 = v62;
        v124 = v63;
        v64 = [(NEIKEv2DeleteIKEContext *)&v59->super.super.isa initDeleteIKEWithResponse:v61 callbackQueue:v122 callback:?];

        [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v64];
        v56 = v123;
      }
    }

    else
    {
      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v92 = *(a1 + 32);
        *buf = 138412290;
        v132 = v92;
        _os_log_error_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (initiator rekey followup KE)", buf, 0xCu);
      }

      v50 = [NEIKEv2DeleteIKEContext alloc];
      v51 = *(a1 + 32);
      if (v51)
      {
        v51 = objc_getProperty(v51, v49, 384, 1);
      }

      v52 = v51;
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_489;
      v125[3] = &unk_1E7F081C0;
      v53 = *(a1 + 40);
      v54 = *(a1 + 32);
      v126 = v53;
      v127 = v54;
      v55 = [(NEIKEv2DeleteIKEContext *)&v50->super.super.isa initDeleteIKEWithResponse:v52 callbackQueue:v125 callback:?];

      [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v55];
      v56 = v126;
    }

    goto LABEL_60;
  }

  v102 = ne_log_obj();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
  {
    v110 = *(a1 + 32);
    *buf = 138412290;
    v132 = v110;
    _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "%@ Failed to receive FOLLOWUP_KE reply (initiator rekey followup KE)", buf, 0xCu);
  }

  v104 = [NEIKEv2DeleteIKEContext alloc];
  v105 = *(a1 + 32);
  if (v105)
  {
    v105 = objc_getProperty(v105, v103, 384, 1);
  }

  v106 = v105;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_485;
  v128[3] = &unk_1E7F081C0;
  v107 = *(a1 + 40);
  v108 = *(a1 + 32);
  v129 = v107;
  v130 = v108;
  v109 = [(NEIKEv2DeleteIKEContext *)&v104->super.super.isa initDeleteIKEWithResponse:v106 callbackQueue:v128 callback:?];

  [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v109];
  v6 = v129;
LABEL_60:

  v91 = *MEMORY[0x1E69E9840];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_485(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive FOLLOWUP_KE reply (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_489(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive KE payload (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_493(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive method in KE payload (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_497(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive data in KE payload (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_501(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v5 = Property;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 88, 1);
    v9 = v7;
    if (v7)
    {
      v7 = objc_getProperty(v7, v8, 32, 1);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v10 = v7;
  v11 = [v10 method];
  [*(a1 + 56) method];
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (initiator rekey followup KE)", v12, v13, v14, v15, v16, v17, v18, v11);
  [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v22 = *(a1 + 40);

  [(NEIKEv2Session *)v22 resetAll];
}

void __101__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAInitiator_rekeyIKEContext_iteration_handler___block_invoke_505(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process KE data (initiator rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

- (void)handleFollowupKEForRekeyIKESAResponder:(uint64_t)responder iteration:(void *)iteration replyPacket:(void *)packet replyPacketDescription:(void *)description handler:
{
  v11 = a2;
  packetCopy = packet;
  descriptionCopy = description;
  if (self)
  {
    iterationCopy = iteration;
    v16 = objc_getProperty(self, v15, 384, 1);
    dispatch_assert_queue_V2(v16);

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke;
    v30[3] = &unk_1E7F08260;
    responderCopy = responder;
    v31 = v11;
    selfCopy = self;
    v33 = descriptionCopy;
    v17 = [(NEIKEv2Session *)self sendReply:iterationCopy replyHandler:v30];

    if ((v17 & 1) == 0)
    {
      v19 = objc_getProperty(self, v18, 352, 1);
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"%@", v20, v21, v22, v23, v24, v25, v26, packetCopy);
      [(NEIKEv2IKESA *)v19 setState:ErrorFailedToSend error:?];

      [(NEIKEv2Session *)self reportState];
      [(NEIKEv2Session *)self resetAll];
    }
  }
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke(uint64_t a1, void *a2)
{
  v247 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v3, 96, 1);
    v9 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 136, 1);
    }
  }

  else
  {
    v9 = 0;
    Property = 0;
  }

  v10 = Property;
  v11 = [v10 count];

  if (v5 < v11)
  {
    if (!*(a1 + 56))
    {
      v13 = objc_alloc(MEMORY[0x1E695DF70]);
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = objc_getProperty(v14, v12, 96, 1);
        v17 = v15;
        if (v15)
        {
          v15 = objc_getProperty(v15, v16, 136, 1);
        }
      }

      else
      {
        v17 = 0;
        v15 = 0;
      }

      v18 = v15;
      v20 = [v13 initWithCapacity:{objc_msgSend(v18, "count")}];
      v21 = *(a1 + 32);
      if (v21)
      {
        objc_setProperty_atomic(v21, v19, v20, 184);
      }
    }

    if ([v4 exchangeType] == 44)
    {
      v23 = v4;
      v24 = *(a1 + 32);
      if (v24)
      {
        v25 = objc_getProperty(v24, v22, 96, 1);
        v27 = v25;
        if (v25)
        {
          v25 = objc_getProperty(v25, v26, 136, 1);
        }
      }

      else
      {
        v27 = 0;
        v25 = 0;
      }

      v28 = v25;
      v29 = [v28 objectAtIndexedSubscript:*(a1 + 56)];

      v31 = *(a1 + 32);
      if (v31)
      {
        v31 = objc_getProperty(v31, v30, 96, 1);
      }

      v32 = v31;
      v33 = [(NEIKEv2IKESAProposal *)v32 chosenAdditionalKEMProtocols];
      v34 = [v33 objectForKeyedSubscript:v29];

      if (v34)
      {
        if (v23)
        {
          v36 = objc_getProperty(v23, v35, 88, 1);
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (v37)
        {
          if (v23)
          {
            v39 = objc_getProperty(v23, v38, 88, 1);
            v41 = v39;
            if (v39)
            {
              v39 = objc_getProperty(v39, v40, 32, 1);
            }
          }

          else
          {
            v41 = 0;
            v39 = 0;
          }

          v42 = v39;

          if (v42)
          {
            if (v23)
            {
              v44 = objc_getProperty(v23, v43, 88, 1);
              v46 = v44;
              if (v44)
              {
                v44 = objc_getProperty(v44, v45, 40, 1);
              }
            }

            else
            {
              v46 = 0;
              v44 = 0;
            }

            v47 = v44;

            if (v47)
            {
              if (v23)
              {
                v49 = objc_getProperty(v23, v48, 88, 1);
                v51 = v49;
                if (v49)
                {
                  v49 = objc_getProperty(v49, v50, 32, 1);
                }
              }

              else
              {
                v51 = 0;
                v49 = 0;
              }

              v52 = v49;
              v53 = [v52 method];
              v54 = [v34 method];

              if (v53 == v54)
              {
                if (v23)
                {
                  v56 = objc_getProperty(v23, v55, 96, 1);
                  v58 = v56;
                  if (v56)
                  {
                    v56 = objc_getProperty(v56, v57, 40, 1);
                  }
                }

                else
                {
                  v58 = 0;
                  v56 = 0;
                }

                v60 = v56;
                v61 = *(a1 + 32);
                v226 = v29;
                if (v61)
                {
                  v62 = objc_getProperty(v61, v59, 176, 1);
                  v64 = v62;
                  if (v62)
                  {
                    v62 = objc_getProperty(v62, v63, 40, 1);
                  }
                }

                else
                {
                  v64 = 0;
                  v62 = 0;
                }

                v65 = v62;
                v66 = [v60 isEqualToData:v65];

                if ((v66 & 1) == 0)
                {
                  v117 = ne_log_obj();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                  {
                    v200 = *(a1 + 40);
                    if (v23)
                    {
                      v201 = objc_getProperty(v23, v118, 96, 1);
                      v203 = v201;
                      v204 = &OBJC_IVAR___NEFilterFlow__direction;
                      if (v201)
                      {
                        v201 = objc_getProperty(v201, v202, 40, 1);
                      }
                    }

                    else
                    {
                      v203 = 0;
                      v201 = 0;
                      v204 = &OBJC_IVAR___NEFilterFlow__direction;
                    }

                    v206 = v201;
                    v207 = *(a1 + 32);
                    if (v207)
                    {
                      v208 = objc_getProperty(v207, v205, 176, 1);
                      v210 = v208;
                      if (v208)
                      {
                        v208 = objc_getProperty(v208, v209, v204[559], 1);
                      }
                    }

                    else
                    {
                      v210 = 0;
                      v208 = 0;
                    }

                    v211 = v208;
                    *buf = 138412802;
                    *&buf[4] = v200;
                    *&buf[12] = 2112;
                    *&buf[14] = v206;
                    v245 = 2112;
                    v246 = v211;
                    _os_log_error_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_ERROR, "%@ ADDITIONAL_KEY_EXCHANGE in FOLLOWUP_KE request doesn't match expected (%@ != %@) (responder rekey followup KE)", buf, 0x20u);
                  }

                  v119 = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initResponse:v23];
                  v107 = v119;
                  v29 = v226;
                  if (v119)
                  {
                    [(NEIKEv2Packet *)v119 addNotification:0 data:?];
                  }

                  if (([(NEIKEv2Session *)*(a1 + 40) sendReply:v107 replyHandler:0]& 1) != 0)
                  {
                    v122 = [NEIKEv2DeleteIKEContext alloc];
                    v123 = *(a1 + 40);
                    if (v123)
                    {
                      v123 = objc_getProperty(v123, v121, 384, 1);
                    }

                    v124 = v123;
                    v232[0] = MEMORY[0x1E69E9820];
                    v232[1] = 3221225472;
                    v232[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_539;
                    v232[3] = &unk_1E7F083C8;
                    v232[4] = *(a1 + 40);
                    v233 = v23;
                    v234 = *(a1 + 32);
                    v125 = [(NEIKEv2DeleteIKEContext *)&v122->super.super.isa initDeleteIKEWithResponse:v124 callbackQueue:v232 callback:?];

                    [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v125];
                  }

                  else
                  {
                    v132 = *(a1 + 40);
                    if (v132)
                    {
                      v132 = objc_getProperty(v132, v120, 352, 1);
                    }

                    v133 = v132;
                    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"responder rekey followup KE mismatched link", v134, v135, v136, v137, v138, v139, v140, v225);
                    [(NEIKEv2IKESA *)v133 setState:ErrorFailedToSend error:?];

                    [(NEIKEv2Session *)*(a1 + 40) reportState];
                    [(NEIKEv2Session *)*(a1 + 40) resetAll];
                  }

                  goto LABEL_76;
                }

                v68 = *(a1 + 32);
                if (v23)
                {
                  v69 = objc_getProperty(v23, v67, 88, 1);
                  v71 = v69;
                  v29 = v226;
                  if (v69)
                  {
                    v69 = objc_getProperty(v69, v70, 40, 1);
                  }
                }

                else
                {
                  v71 = 0;
                  v69 = 0;
                  v29 = v226;
                }

                v72 = v69;
                v73 = [(NEIKEv2IKESA *)v68 generateLocalValuesForKEMProtocol:v34 peerPayload:v72];

                if (v73)
                {
                  v75 = *(a1 + 56) + 1;
                  v76 = *(a1 + 32);
                  if (v76)
                  {
                    v77 = objc_getProperty(v76, v74, 96, 1);
                    v79 = v77;
                    if (v77)
                    {
                      v77 = objc_getProperty(v77, v78, 136, 1);
                    }
                  }

                  else
                  {
                    v79 = 0;
                    v77 = 0;
                  }

                  v80 = v77;
                  v81 = [v80 count];

                  if (v75 >= v81)
                  {
                    v145 = *(a1 + 32);
                    v88 = &OBJC_IVAR___NEFilterFlow__direction;
                    if (v145)
                    {
                      objc_setProperty_atomic(v145, v82, 0, 176);
                    }
                  }

                  else
                  {
                    v83 = [MEMORY[0x1E696AFB0] UUID];
                    *buf = 0;
                    *&buf[8] = 0;
                    [v83 getUUIDBytes:buf];
                    v84 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:16];
                    v86 = [NEIKEv2NotifyPayload createNotifyPayloadType:v84 data:?];
                    v87 = *(a1 + 32);
                    v88 = &OBJC_IVAR___NEFilterFlow__direction;
                    if (v87)
                    {
                      objc_setProperty_atomic(v87, v85, v86, 176);
                    }
                  }

                  v107 = [(NEIKEv2Packet *)[NEIKEv2FollowupKEPacket alloc] initResponse:v23];
                  v146 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                  v148 = v146;
                  if (v107)
                  {
                    objc_setProperty_atomic(v107, v147, v146, 88);

                    v150 = objc_getProperty(v107, v149, 88, 1);
                    v152 = v150;
                    if (v150)
                    {
                      objc_setProperty_atomic(v150, v151, v34, v88[541]);
                    }
                  }

                  else
                  {

                    v152 = 0;
                  }

                  v154 = *(a1 + 32);
                  if (v154)
                  {
                    v155 = objc_getProperty(v154, v153, 160, 1);
                    v156 = v155;
                    if (v155)
                    {
                      v157 = *(v155 + 2);
                      goto LABEL_108;
                    }
                  }

                  else
                  {
                    v156 = 0;
                  }

                  v157 = 0;
LABEL_108:
                  v159 = v157;
                  if (v107)
                  {
                    v160 = objc_getProperty(v107, v158, 88, 1);
                    v162 = v160;
                    if (v160)
                    {
                      objc_setProperty_atomic(v160, v161, v159, 40);
                    }
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v164 = *(a1 + 32);
                  if (v164)
                  {
                    v164 = objc_getProperty(v164, v163, 176, 1);
                  }

                  v165 = v164;
                  v167 = v165;
                  if (v107)
                  {
                    objc_setProperty_atomic(v107, v166, v165, 96);

                    v169 = objc_getProperty(v107, v168, 88, 1);
                  }

                  else
                  {

                    v169 = 0;
                  }

                  v170 = v169;
                  v171 = [(NEIKEv2Payload *)v170 isValid];

                  if ((v171 & 1) == 0)
                  {
                    v187 = ne_log_obj();
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                    {
                      v213 = *(a1 + 40);
                      *buf = 138412290;
                      *&buf[4] = v213;
                      _os_log_error_impl(&dword_1BA83C000, v187, OS_LOG_TYPE_ERROR, "%@ Failed to create FOLLOWUP_KE packet (responder rekey followup KE)", buf, 0xCu);
                    }

                    v189 = [NEIKEv2DeleteIKEContext alloc];
                    v190 = *(a1 + 40);
                    if (v190)
                    {
                      v190 = objc_getProperty(v190, v188, 384, 1);
                    }

                    v191 = v190;
                    v229[0] = MEMORY[0x1E69E9820];
                    v229[1] = 3221225472;
                    v229[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_547;
                    v229[3] = &unk_1E7F08740;
                    v229[4] = *(a1 + 40);
                    v192 = [(NEIKEv2DeleteIKEContext *)&v189->super.super.isa initDeleteIKEWithResponse:v191 callbackQueue:v229 callback:?];

                    [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v192];
                    goto LABEL_76;
                  }

                  v173 = *(a1 + 32);
                  if (v173)
                  {
                    v173 = objc_getProperty(v173, v172, 184, 1);
                  }

                  v175 = v173;
                  v176 = *(a1 + 32);
                  if (v176)
                  {
                    v177 = objc_getProperty(v176, v174, 160, 1);
                    v178 = v177;
                    if (v177)
                    {
                      v179 = *(v177 + 3);
LABEL_121:
                      v180 = v179;
                      [v175 addObject:v180];

                      v182 = *(a1 + 32);
                      if (v182)
                      {
                        objc_setProperty_atomic(v182, v181, 0, 160);
                        v183 = *(a1 + 32);
                      }

                      else
                      {
                        v183 = 0;
                      }

                      v184 = *(a1 + 40);
                      v185 = *(a1 + 56);
                      v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"responder rekey FOLLOWUP_KE #%zu", v185 + 1];
                      [(NEIKEv2Session *)v184 handleFollowupKEForRekeyIKESAResponder:v183 iteration:v185 + 1 replyPacket:v107 replyPacketDescription:v186 handler:*(a1 + 48)];

                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v178 = 0;
                  }

                  v179 = 0;
                  goto LABEL_121;
                }

                v126 = ne_log_obj();
                if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  v212 = *(a1 + 40);
                  *buf = 138412546;
                  *&buf[4] = v212;
                  *&buf[12] = 2112;
                  *&buf[14] = v34;
                  _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "%@ Failed to generate values for KEM %@ (responder rekey followup KE)", buf, 0x16u);
                }

                v128 = [NEIKEv2DeleteIKEContext alloc];
                v129 = *(a1 + 40);
                if (v129)
                {
                  v129 = objc_getProperty(v129, v127, 384, 1);
                }

                v130 = v129;
                v230[0] = MEMORY[0x1E69E9820];
                v230[1] = 3221225472;
                v230[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_543;
                v230[3] = &unk_1E7F081C0;
                v230[4] = *(a1 + 40);
                v231 = v34;
                v131 = [(NEIKEv2DeleteIKEContext *)&v128->super.super.isa initDeleteIKEWithResponse:v130 callbackQueue:v230 callback:?];

                [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v131];
                v116 = v231;
              }

              else
              {
                v109 = ne_log_obj();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                {
                  v227 = v29;
                  v195 = *(a1 + 40);
                  if (v23)
                  {
                    v196 = objc_getProperty(v23, v110, 88, 1);
                    v198 = v196;
                    if (v196)
                    {
                      v196 = objc_getProperty(v196, v197, 32, 1);
                    }
                  }

                  else
                  {
                    v198 = 0;
                    v196 = 0;
                  }

                  v199 = v196;
                  *buf = 138412802;
                  *&buf[4] = v195;
                  *&buf[12] = 2048;
                  *&buf[14] = [v199 method];
                  v245 = 2048;
                  v246 = [v34 method];
                  _os_log_error_impl(&dword_1BA83C000, v109, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu) (responder rekey followup KE)", buf, 0x20u);

                  v29 = v227;
                }

                v112 = [NEIKEv2DeleteIKEContext alloc];
                v113 = *(a1 + 40);
                if (v113)
                {
                  v113 = objc_getProperty(v113, v111, 384, 1);
                }

                v114 = v113;
                v235[0] = MEMORY[0x1E69E9820];
                v235[1] = 3221225472;
                v235[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_532;
                v235[3] = &unk_1E7F083C8;
                v235[4] = *(a1 + 40);
                v236 = v23;
                v237 = v34;
                v115 = [(NEIKEv2DeleteIKEContext *)&v112->super.super.isa initDeleteIKEWithResponse:v114 callbackQueue:v235 callback:?];

                [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v115];
                v116 = v236;
              }

LABEL_84:

              goto LABEL_77;
            }

            v104 = ne_log_obj();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              v194 = *(a1 + 40);
              *buf = 138412290;
              *&buf[4] = v194;
              _os_log_error_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload (responder rekey followup KE)", buf, 0xCu);
            }

            v97 = [NEIKEv2DeleteIKEContext alloc];
            v106 = *(a1 + 40);
            if (v106)
            {
              v106 = objc_getProperty(v106, v105, 384, 1);
            }

            v99 = v106;
            v238[0] = MEMORY[0x1E69E9820];
            v238[1] = 3221225472;
            v238[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_528;
            v238[3] = &unk_1E7F08740;
            v238[4] = *(a1 + 40);
            v100 = v238;
          }

          else
          {
            v101 = ne_log_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v193 = *(a1 + 40);
              *buf = 138412290;
              *&buf[4] = v193;
              _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload (responder rekey followup KE)", buf, 0xCu);
            }

            v97 = [NEIKEv2DeleteIKEContext alloc];
            v103 = *(a1 + 40);
            if (v103)
            {
              v103 = objc_getProperty(v103, v102, 384, 1);
            }

            v99 = v103;
            v239[0] = MEMORY[0x1E69E9820];
            v239[1] = 3221225472;
            v239[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_524;
            v239[3] = &unk_1E7F08740;
            v239[4] = *(a1 + 40);
            v100 = v239;
          }
        }

        else
        {
          v95 = ne_log_obj();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v144 = *(a1 + 40);
            *buf = 138412290;
            *&buf[4] = v144;
            _os_log_error_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload (responder rekey followup KE)", buf, 0xCu);
          }

          v97 = [NEIKEv2DeleteIKEContext alloc];
          v98 = *(a1 + 40);
          if (v98)
          {
            v98 = objc_getProperty(v98, v96, 384, 1);
          }

          v99 = v98;
          v240[0] = MEMORY[0x1E69E9820];
          v240[1] = 3221225472;
          v240[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_520;
          v240[3] = &unk_1E7F08740;
          v240[4] = *(a1 + 40);
          v100 = v240;
        }

        v107 = [(NEIKEv2DeleteIKEContext *)&v97->super.super.isa initDeleteIKEWithResponse:v99 callbackQueue:v100 callback:?];

        [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v107];
LABEL_76:

LABEL_77:
        goto LABEL_78;
      }

      v217 = ne_log_obj();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        v224 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v224;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_error_impl(&dword_1BA83C000, v217, OS_LOG_TYPE_ERROR, "%@ No chosen KEM found for transform type %@ (responder rekey followup KE)", buf, 0x16u);
      }

      v219 = [NEIKEv2DeleteIKEContext alloc];
      v220 = *(a1 + 40);
      if (v220)
      {
        v220 = objc_getProperty(v220, v218, 384, 1);
      }

      v221 = v220;
      v241[0] = MEMORY[0x1E69E9820];
      v241[1] = 3221225472;
      v241[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_516;
      v241[3] = &unk_1E7F081C0;
      v241[4] = *(a1 + 40);
      v242 = v29;
      v222 = [(NEIKEv2DeleteIKEContext *)&v219->super.super.isa initDeleteIKEWithResponse:v221 callbackQueue:v241 callback:?];

      [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v222];
      v116 = v242;
      goto LABEL_84;
    }

    v214 = ne_log_obj();
    if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
    {
      v223 = *(a1 + 40);
      *buf = 138412290;
      *&buf[4] = v223;
      _os_log_error_impl(&dword_1BA83C000, v214, OS_LOG_TYPE_ERROR, "%@ Failed to receive FOLLOWUP_KE packet (responder rekey followup KE)", buf, 0xCu);
    }

    v91 = [NEIKEv2DeleteIKEContext alloc];
    v216 = *(a1 + 40);
    if (v216)
    {
      v216 = objc_getProperty(v216, v215, 384, 1);
    }

    v93 = v216;
    v243[0] = MEMORY[0x1E69E9820];
    v243[1] = 3221225472;
    v243[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_512;
    v243[3] = &unk_1E7F08740;
    v243[4] = *(a1 + 40);
    v94 = v243;
LABEL_59:
    v23 = [(NEIKEv2DeleteIKEContext *)&v91->super.super.isa initDeleteIKEWithResponse:v93 callbackQueue:v94 callback:?];

    [(NEIKEv2Session *)*(a1 + 40) initiateDelete:v23];
LABEL_78:

    goto LABEL_79;
  }

  if ([v4 exchangeType] != 37)
  {
    v89 = ne_log_obj();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_ERROR, "Failed to receive Rekey IKE Delete packet (receive rekey)", buf, 2u);
    }

    v91 = [NEIKEv2DeleteIKEContext alloc];
    v92 = *(a1 + 40);
    if (v92)
    {
      v92 = objc_getProperty(v92, v90, 384, 1);
    }

    v93 = v92;
    v228[0] = MEMORY[0x1E69E9820];
    v228[1] = 3221225472;
    v228[2] = __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_554;
    v228[3] = &unk_1E7F08740;
    v228[4] = *(a1 + 40);
    v94 = v228;
    goto LABEL_59;
  }

  (*(*(a1 + 48) + 16))();
LABEL_79:

  v108 = *MEMORY[0x1E69E9840];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_512(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive FOLLOWUP_KE packet (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_516(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"No chosen KEM found for transform type %@ (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, *(a1 + 40));
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_520(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive KE payload (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_524(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive method in KE payload (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_528(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive data in KE payload (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_532(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v5 = Property;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 88, 1);
    v9 = v7;
    if (v7)
    {
      v7 = objc_getProperty(v7, v8, 32, 1);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v10 = v7;
  v11 = [v10 method];
  [*(a1 + 48) method];
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu) (responder rekey followup KE)", v12, v13, v14, v15, v16, v17, v18, v11);
  [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v22 = *(a1 + 32);

  [(NEIKEv2Session *)v22 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_539(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v5 = Property;
  v6 = a1[5];
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 96, 1);
    v9 = v7;
    if (v7)
    {
      v7 = objc_getProperty(v7, v8, 40, 1);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v11 = v7;
  v12 = a1[6];
  if (v12)
  {
    v13 = objc_getProperty(v12, v10, 176, 1);
    v15 = v13;
    if (v13)
    {
      v13 = objc_getProperty(v13, v14, 40, 1);
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  v27 = v13;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"ADDITIONAL_KEY_EXCHANGE in FOLLOWUP_KE request doesn't match expected (%@ != %@) (responder rekey followup KE)", v16, v17, v18, v19, v20, v21, v22, v11);
  [(NEIKEv2IKESA *)v5 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)a1[4] reportState];
  v26 = a1[4];

  [(NEIKEv2Session *)v26 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_543(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to generate values for KEM %@ (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, *(a1 + 40));
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_547(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create FOLLOWUP_KE packet (responder rekey followup KE)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __120__NEIKEv2Session_Exchange__handleFollowupKEForRekeyIKESAResponder_iteration_replyPacket_replyPacketDescription_handler___block_invoke_554(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive Rekey IKE Delete packet (receive rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create valid IKE SA (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_561(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate local IKE crypto values (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_565(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2(uint64_t a1, void *a2)
{
  v262 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 exchangeType] != 36)
  {
    v109 = ne_log_obj();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v109, OS_LOG_TYPE_ERROR, "Failed to receive Create Child SA packet (initiate rekey)", buf, 2u);
    }

    v111 = [NEIKEv2DeleteIKEContext alloc];
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v110, 384, 1);
    }

    v113 = Property;
    v249[0] = MEMORY[0x1E69E9820];
    v249[1] = 3221225472;
    v249[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_569;
    v249[3] = &unk_1E7F081C0;
    v114 = v250;
    v115 = *(a1 + 40);
    v116 = *(a1 + 32);
    v250[0] = v115;
    v250[1] = v116;
    v117 = v249;
    goto LABEL_81;
  }

  v4 = *(a1 + 48);
  v6 = v4;
  if (!v3)
  {
    goto LABEL_76;
  }

  if (!v4)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v255 = 136315138;
      v256 = "[NEIKEv2CreateChildPacket(Exchange) validateRekeyIKESA:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", v255, 0xCu);
    }

    goto LABEL_75;
  }

  if ([(NEIKEv2Packet *)v3 hasErrors])
  {
    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v8 = objc_getProperty(v3, v7, 64, 1);
    v9 = [v8 countByEnumeratingWithState:&v251 objects:buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v252;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v252 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v251 + 1) + 8 * i);
          if (v13 && v13[1].isa - 1 <= 0x3FFE)
          {
            ErrorPeerInvalidSyntax = [(NEIKEv2NotifyPayload *)v13 copyError];
            v127 = ne_log_obj();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              v159 = [(NEIKEv2Packet *)v3 copyShortDescription];
              *v255 = 138412546;
              v256 = v159;
              v257 = 2112;
              v258 = ErrorPeerInvalidSyntax;
              _os_log_error_impl(&dword_1BA83C000, v127, OS_LOG_TYPE_ERROR, "%@ Rekey IKE received notify error %@", v255, 0x16u);
            }

            goto LABEL_63;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v251 objects:buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v14 = objc_getProperty(v3, v7, 88, 1);
  v16 = v14;
  if (v14)
  {
    v14 = objc_getProperty(v14, v15, 32, 1);
  }

  v8 = v14;

  if ([v8 count]!= 1)
  {
    v118 = ne_log_obj();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v156 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v157 = [v8 count];
      *v255 = 138412546;
      v256 = v156;
      v257 = 2048;
      v258 = v157;
      _os_log_error_impl(&dword_1BA83C000, v118, OS_LOG_TYPE_ERROR, "%@ Received %zu SA proposals, require 1", v255, 0x16u);
    }

    v119 = [v8 count];
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received %zu SA proposals, require 1", v120, v121, v122, v123, v124, v125, v126, v119);
LABEL_63:
    [(NEIKEv2IKESA *)v6 setState:ErrorPeerInvalidSyntax error:?];
    goto LABEL_74;
  }

  ErrorPeerInvalidSyntax = [v8 firstObject];
  if (([(NEIKEv2IKESAProposal *)ErrorPeerInvalidSyntax isAValidResponse]& 1) == 0)
  {
    v128 = ne_log_obj();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      v161 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412546;
      v256 = v161;
      v257 = 2112;
      v258 = ErrorPeerInvalidSyntax;
      _os_log_error_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_ERROR, "%@ Received invalid SA proposal for rekey %@", v255, 0x16u);
    }

    v136 = @"Received invalid SA proposal for rekey";
    goto LABEL_67;
  }

  v20 = objc_getProperty(v6, v19, 96, 1);
  v21 = [(NEIKEv2IKESAProposal *)ErrorPeerInvalidSyntax matchesLocalProposal:v20 preferRemoteProposal:0];

  if ((v21 & 1) == 0)
  {
    v138 = ne_log_obj();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v163 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v165 = objc_getProperty(v6, v164, 96, 1);
      *v255 = 138412802;
      v256 = v163;
      v257 = 2112;
      v258 = ErrorPeerInvalidSyntax;
      v259 = 2112;
      v260 = v165;
      _os_log_error_impl(&dword_1BA83C000, v138, OS_LOG_TYPE_ERROR, "%@ Received proposal for rekey %@ does not match previous chosen proposal %@", v255, 0x20u);
    }

    v99 = objc_getProperty(v6, v139, 96, 1);
    v147 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received proposal for rekey %@ does not match previous chosen proposal %@", v140, v141, v142, v143, v144, v145, v146, ErrorPeerInvalidSyntax);
    [(NEIKEv2IKESA *)v6 setState:v147 error:?];
    goto LABEL_72;
  }

  v23 = objc_getProperty(v6, v22, 96, 1);
  v24 = [(NEIKEv2IKESAProposal *)v23 copyFromRemote:0 preferRemoteProposal:?];
  objc_setProperty_atomic(v6, v25, v24, 96);

  v27 = objc_getProperty(v6, v26, 96, 1);
  if (!v27)
  {
    v155 = ne_log_obj();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
    {
      v185 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v185;
      _os_log_error_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_ERROR, "%@ Could not set chosen proposal values", v255, 0xCu);
    }

    v136 = @"Could not set chosen proposal values";
    goto LABEL_67;
  }

  v29 = objc_getProperty(v6, v28, 96, 1);
  v31 = v29;
  if (v29)
  {
    v29 = objc_getProperty(v29, v30, 96, 1);
  }

  v32 = v29;

  if (!v32)
  {
    v158 = ne_log_obj();
    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
    {
      v199 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v199;
      _os_log_error_impl(&dword_1BA83C000, v158, OS_LOG_TYPE_ERROR, "%@ SA proposal missing rekey SPI", v255, 0xCu);
    }

    v136 = @"SA proposal missing rekey SPI";
    goto LABEL_67;
  }

  v34 = objc_getProperty(v6, v33, 96, 1);
  v36 = v34;
  if (v34)
  {
    v34 = objc_getProperty(v34, v35, 96, 1);
  }

  v37 = v34;
  [(NEIKEv2IKESA *)v6 assignRemoteSPI:v37];

  v39 = objc_getProperty(v6, v38, 32, 1);
  v41 = objc_getProperty(v6, v40, 96, 1);
  v43 = v41;
  if (v41)
  {
    objc_setProperty_atomic(v41, v42, v39, 88);
  }

  v45 = objc_getProperty(v3, v44, 104, 1);

  if (!v45)
  {
    v160 = ne_log_obj();
    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
    {
      v201 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v201;
      _os_log_error_impl(&dword_1BA83C000, v160, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", v255, 0xCu);
    }

    v136 = @"Did not receive KE payload";
    goto LABEL_67;
  }

  v47 = objc_getProperty(v3, v46, 104, 1);
  v49 = v47;
  if (v47)
  {
    v47 = objc_getProperty(v47, v48, 32, 1);
  }

  v50 = v47;

  if (!v50)
  {
    v162 = ne_log_obj();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
    {
      v202 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v202;
      _os_log_error_impl(&dword_1BA83C000, v162, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", v255, 0xCu);
    }

    v136 = @"Did not receive method in KE payload";
    goto LABEL_67;
  }

  v52 = objc_getProperty(v3, v51, 104, 1);
  v54 = v52;
  if (v52)
  {
    v52 = objc_getProperty(v52, v53, 40, 1);
  }

  v55 = v52;

  if (!v55)
  {
    v166 = ne_log_obj();
    if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
    {
      v203 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v203;
      _os_log_error_impl(&dword_1BA83C000, v166, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", v255, 0xCu);
    }

    v136 = @"Did not receive data in KE payload";
    goto LABEL_67;
  }

  v57 = objc_getProperty(v3, v56, 104, 1);
  v238 = v57;
  if (v57)
  {
    v57 = objc_getProperty(v57, v58, 32, 1);
  }

  v59 = v57;
  v237 = [v59 method];
  v61 = objc_getProperty(v6, v60, 96, 1);
  v63 = [(NEIKEv2IKESAProposal *)v61 kemProtocol];
  v64 = [v63 method];

  if (v237 != v64)
  {
    v167 = ne_log_obj();
    v168 = &OBJC_IVAR___NEFilterFlow__direction;
    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      v204 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v206 = objc_getProperty(v3, v205, 104, 1);
      v240 = v206;
      if (v206)
      {
        v206 = objc_getProperty(v206, v207, 32, 1);
      }

      v236 = v206;
      v235 = [v236 method];
      v209 = objc_getProperty(v6, v208, 96, 1);
      v211 = [(NEIKEv2IKESAProposal *)v209 kemProtocol];
      v212 = [v211 method];
      *v255 = 138412802;
      v256 = v204;
      v257 = 2048;
      v258 = v235;
      v259 = 2048;
      v260 = v212;
      _os_log_error_impl(&dword_1BA83C000, v167, OS_LOG_TYPE_ERROR, "%@ Did not receive matching method from KE payload (%zu != %zu)", v255, 0x20u);

      v168 = &OBJC_IVAR___NEFilterFlow__direction;
    }

    v170 = objc_getProperty(v3, v169, v168[603], 1);
    v99 = v170;
    if (v170)
    {
      v170 = objc_getProperty(v170, v171, 32, 1);
    }

    v147 = v170;
    v172 = [v147 method];
    v174 = objc_getProperty(v6, v173, 96, 1);
    v176 = [(NEIKEv2IKESAProposal *)v174 kemProtocol];
    [v176 method];
    v184 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Did not receive matching method from KE payload (%zu != %zu)", v177, v178, v179, v180, v181, v182, v183, v172);
    [(NEIKEv2IKESA *)v6 setState:v184 error:?];

LABEL_72:
    goto LABEL_73;
  }

  v66 = objc_getProperty(v3, v65, 104, 1);
  v68 = v66;
  if (v66)
  {
    v66 = objc_getProperty(v66, v67, 40, 1);
  }

  v69 = v66;
  objc_setProperty_atomic(v6, v70, v69, 152);

  v71 = [(NEIKEv2Packet *)v3 copyNotification:?];
  objc_setProperty_atomic(v6, v72, v71, 176);

  v73 = &OBJC_IVAR___NEFilterFlow__direction;
  v75 = objc_getProperty(v3, v74, 112, 1);

  if (!v75)
  {
    v186 = ne_log_obj();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
    {
      v213 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v213;
      _os_log_error_impl(&dword_1BA83C000, v186, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", v255, 0xCu);
    }

    v136 = @"Did not receive NONCE payload";
    goto LABEL_67;
  }

  v77 = objc_getProperty(v3, v76, 112, 1);
  v79 = v77;
  v80 = &OBJC_IVAR___NEFilterFlow__direction;
  if (v77)
  {
    v77 = objc_getProperty(v77, v78, 32, 1);
  }

  v81 = v77;

  if (!v81)
  {
    v200 = ne_log_obj();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      v214 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412290;
      v256 = v214;
      _os_log_error_impl(&dword_1BA83C000, v200, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", v255, 0xCu);
    }

    v136 = @"Did not receive NONCE data";
LABEL_67:
    v137 = NEIKEv2CreateErrorPeerInvalidSyntax(v136, v129, v130, v131, v132, v133, v134, v135, v233);
LABEL_68:
    v99 = v137;
    [(NEIKEv2IKESA *)v6 setState:v137 error:?];
LABEL_73:

LABEL_74:
LABEL_75:

LABEL_76:
    v148 = ne_log_obj();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_ERROR, "Failed to process Create Child SA packet (initiate rekey)", buf, 2u);
    }

    v111 = [NEIKEv2DeleteIKEContext alloc];
    v150 = *(a1 + 32);
    if (v150)
    {
      v150 = objc_getProperty(v150, v149, 384, 1);
    }

    v113 = v150;
    v247[0] = MEMORY[0x1E69E9820];
    v247[1] = 3221225472;
    v247[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_573;
    v247[3] = &unk_1E7F081C0;
    v114 = v248;
    v151 = *(a1 + 40);
    v152 = *(a1 + 32);
    v248[0] = v151;
    v248[1] = v152;
    v117 = v247;
    goto LABEL_81;
  }

  v83 = objc_getProperty(v6, v82, 80, 1);
  v84 = [v83 strictNonceSizeChecks];

  if (!v84)
  {
    goto LABEL_105;
  }

  v86 = objc_getProperty(v3, v85, 112, 1);
  v88 = v86;
  if (v86)
  {
    v86 = objc_getProperty(v86, v87, 32, 1);
  }

  v89 = v86;
  v90 = [v89 length];

  if (v90 - 257 <= 0xFFFFFFFFFFFFFF0ELL)
  {
    v224 = ne_log_obj();
    if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
    {
      v232 = [(NEIKEv2Packet *)v3 copyShortDescription];
      *v255 = 138412546;
      v256 = v232;
      v257 = 2048;
      v258 = v90;
      _os_log_error_impl(&dword_1BA83C000, v224, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", v255, 0x16u);
    }

    v137 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v225, v226, v227, v228, v229, v230, v231, v90);
    goto LABEL_68;
  }

  v92 = objc_getProperty(v6, v91, 96, 1);
  v94 = [(NEIKEv2IKESAProposal *)v92 prfProtocol];
  v95 = [v94 nonceSize];

  v96 = v90 >= v95;
  v73 = &OBJC_IVAR___NEFilterFlow__direction;
  v80 = &OBJC_IVAR___NEFilterFlow__direction;
  if (!v96)
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v215 = [(NEIKEv2Packet *)v3 copyShortDescription];
      v241 = objc_getProperty(v6, v216, 96, 1);
      v218 = [(NEIKEv2IKESAProposal *)v241 prfProtocol];
      *v255 = 138412802;
      v256 = v215;
      v257 = 2048;
      v258 = v90;
      v259 = 2112;
      v260 = v218;
      _os_log_error_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", v255, 0x20u);
    }

    v99 = objc_getProperty(v6, v98, 96, 1);
    v234 = [(NEIKEv2IKESAProposal *)v99 prfProtocol];
    v108 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v101, v102, v103, v104, v105, v106, v107, v90);
    [(NEIKEv2IKESA *)v6 setState:v108 error:?];

    goto LABEL_73;
  }

LABEL_105:
  v187 = objc_getProperty(v3, v85, v73[604], 1);
  v189 = v187;
  if (v187)
  {
    v187 = objc_getProperty(v187, v188, v80[546], 1);
  }

  v190 = v187;
  objc_setProperty_atomic(v6, v191, v190, 136);

  if (([(NEIKEv2IKESA *)*(a1 + 48) processPrimaryKeyExchange]& 1) != 0)
  {
    v193 = *(a1 + 32);
    v194 = *(a1 + 40);
    v242[0] = MEMORY[0x1E69E9820];
    v242[1] = 3221225472;
    v242[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2_581;
    v242[3] = &unk_1E7F097D0;
    v114 = &v243;
    v195 = *(a1 + 48);
    v196 = *(a1 + 56);
    v239 = *(a1 + 32);
    v197 = *(&v239 + 1);
    *&v198 = v195;
    *(&v198 + 1) = v196;
    v243 = v198;
    v244 = v239;
    [(NEIKEv2Session *)v193 handleFollowupKEForRekeyIKESAInitiator:v195 rekeyIKEContext:v194 iteration:0 handler:v242];

    goto LABEL_82;
  }

  v219 = ne_log_obj();
  if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v219, OS_LOG_TYPE_ERROR, "Failed to process KE data (initiate rekey)", buf, 2u);
  }

  v111 = [NEIKEv2DeleteIKEContext alloc];
  v221 = *(a1 + 32);
  if (v221)
  {
    v221 = objc_getProperty(v221, v220, 384, 1);
  }

  v113 = v221;
  v245[0] = MEMORY[0x1E69E9820];
  v245[1] = 3221225472;
  v245[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_577;
  v245[3] = &unk_1E7F081C0;
  v114 = v246;
  v222 = *(a1 + 40);
  v223 = *(a1 + 32);
  v246[0] = v222;
  v246[1] = v223;
  v117 = v245;
LABEL_81:
  v153 = [(NEIKEv2DeleteIKEContext *)&v111->super.super.isa initDeleteIKEWithResponse:v113 callbackQueue:v117 callback:?];

  [(NEIKEv2Session *)*(a1 + 32) initiateDelete:v153];
LABEL_82:

  v154 = *MEMORY[0x1E69E9840];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_569(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to receive Create Child SA packet (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_573(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Create Child SA packet (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_577(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to process KE data (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2_581(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([(NEIKEv2IKESA *)v2 generateAllValuesUsingSA:?]& 1) != 0)
  {
    v4 = [NEIKEv2DeleteIKEContext alloc];
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 384, 1);
    }

    v6 = Property;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2_586;
    v20[3] = &unk_1E7F083C8;
    v7 = v21;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v21[0] = v8;
    v21[1] = v9;
    v22 = v10;
    v11 = [(NEIKEv2DeleteIKEContext *)&v4->super.super.isa initDeleteIKEWithResponse:v6 callbackQueue:v20 callback:?];

    [(NEIKEv2Session *)*(a1 + 48) initiateDelete:v11];
    v12 = v22;
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Failed to generate IKE SA crypto values (initiate rekey)", buf, 2u);
    }

    v15 = [NEIKEv2DeleteIKEContext alloc];
    v16 = *(a1 + 48);
    if (v16)
    {
      v16 = objc_getProperty(v16, v14, 384, 1);
    }

    v17 = v16;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_582;
    v23[3] = &unk_1E7F081C0;
    v7 = v24;
    v18 = *(a1 + 56);
    v19 = *(a1 + 48);
    v24[0] = v18;
    v24[1] = v19;
    v12 = [(NEIKEv2DeleteIKEContext *)&v15->super.super.isa initDeleteIKEWithResponse:v17 callbackQueue:v23 callback:?];

    [(NEIKEv2Session *)*(a1 + 48) initiateDelete:v12];
  }
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_582(uint64_t a1)
{
  [*(a1 + 32) sendCallbackSuccess:0 session:*(a1 + 40)];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate IKE SA crypto values (initiate rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 40) reportState];
  v15 = *(a1 + 40);

  [(NEIKEv2Session *)v15 resetAll];
}

void __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2_586(uint64_t a1, int a2)
{
  if (a2)
  {
    [(NEIKEv2IKESA *)*(a1 + 32) setState:0 error:?];
    [(NEIKEv2Session *)*(a1 + 40) setIKESA:?];
    [*(a1 + 48) sendCallbackSuccess:1 session:*(a1 + 40)];
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "Rekeyed IKE SA", buf, 2u);
    }
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to process Create Child SA Delete packet response (initiate rekey)", &v18, 2u);
    }

    [*(a1 + 48) sendCallbackSuccess:0 session:*(a1 + 40)];
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 352, 1);
    }

    v7 = Property;
    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Create Child SA Delete packet response (initiate rekey)", v8, v9, v10, v11, v12, v13, v14, v18);
    [(NEIKEv2IKESA *)v7 setState:ErrorPeerInvalidSyntax error:?];

    [(NEIKEv2Session *)*(a1 + 40) reportState];
    [(NEIKEv2Session *)*(a1 + 40) resetAll];
  }
}

- (void)receiveRekeyIKESA:(void *)a
{
  v372 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!a)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_175;
  }

  v5 = objc_getProperty(a, v3, 384, 1);
  dispatch_assert_queue_V2(v5);

  v7 = objc_getProperty(a, v6, 352, 1);
  if (!v7)
  {
LABEL_175:
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session(Exchange) receiveRekeyIKESA:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null oldIKESA", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_145;
  }

  v8 = v7;
  if (v7[16])
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "IKE SA already rekeying, skipping (receive rekey)", buf, 2u);
    }

    goto LABEL_145;
  }

  v7[16] = 1;
  v10 = [(NEIKEv2IKESA *)v7 copyForRekeyAsInitiator:?];
  if (v10)
  {
    v9 = v10;
    if ([(NEIKEv2Packet *)v4 hasErrors])
    {
      v370 = 0u;
      v371 = 0u;
      *v368 = 0u;
      v369 = 0u;
      if (v4)
      {
        Property = objc_getProperty(v4, v12, 64, 1);
      }

      else
      {
        Property = 0;
      }

      v14 = Property;
      v15 = [v14 countByEnumeratingWithState:v368 objects:buf count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v369;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v369 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*&v368[8] + 8 * i);
            if (v19 && v19[1].isa - 1 <= 0x3FFE)
            {
              copyError = [(NEIKEv2NotifyPayload *)v19 copyError];
              v110 = ne_log_obj();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription = [(NEIKEv2Packet *)v4 copyShortDescription];
                *v361 = 138412546;
                v362 = copyShortDescription;
                v363 = 2112;
                v364 = copyError;
                _os_log_error_impl(&dword_1BA83C000, v110, OS_LOG_TYPE_ERROR, "%@ Responder rekey IKE received notify error %@", v361, 0x16u);
              }

              [(NEIKEv2IKESA *)v9 setState:copyError error:?];
              v8[16] = 0;
              v111 = 7;
              goto LABEL_107;
            }
          }

          v16 = [v14 countByEnumeratingWithState:v368 objects:buf count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }

    v20 = &OBJC_IVAR___NEFilterFlow__direction;
    v21 = objc_getProperty(v4, v12, 88, 1);
    v23 = v21;
    if (v21)
    {
      v21 = objc_getProperty(v21, v22, 32, 1);
    }

    v24 = v21;

    v26 = objc_getProperty(v9, v25, 80, 1);
    proposals = [v26 proposals];

    v354 = proposals;
    if ([v24 count])
    {
      v29 = objc_getProperty(v9, v28, 80, 1);
      v30 = +[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:](NEIKEv2IKESAProposal, proposals, v24, [v29 preferInitiatorProposalOrder]);
      objc_setProperty_atomic(v9, v31, v30, 96);

      v33 = objc_getProperty(v9, v32, 96, 1);
      if (!v33)
      {
        v121 = ne_log_obj();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription2 = [(NEIKEv2Packet *)v4 copyShortDescription];
          *v361 = 138412290;
          v362 = copyShortDescription2;
          _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, "%@ No matching proposal found", v361, 0xCu);
        }

        ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"No matching proposal found", v122, v123, v124, v125, v126, v127, v128, v347);
        [(NEIKEv2IKESA *)v9 setState:ErrorPeerInvalidSyntax error:?];
        v130 = 0;
        v111 = 14;
        goto LABEL_80;
      }

      v35 = objc_getProperty(v9, v34, 96, 1);
      v37 = v35;
      if (v35)
      {
        v35 = objc_getProperty(v35, v36, 96, 1);
      }

      v38 = v35;

      if (v38)
      {
        v40 = objc_getProperty(v9, v39, 96, 1);
        v42 = v40;
        if (v40)
        {
          v40 = objc_getProperty(v40, v41, 96, 1);
        }

        v43 = v40;
        [(NEIKEv2IKESA *)v9 assignRemoteSPI:v43];

        v45 = objc_getProperty(v9, v44, 32, 1);
        v47 = objc_getProperty(v9, v46, 96, 1);
        v49 = v47;
        if (v47)
        {
          objc_setProperty_atomic(v47, v48, v45, 88);
        }

        v51 = objc_getProperty(v4, v50, 104, 1);

        if (v51)
        {
          v53 = objc_getProperty(v4, v52, 104, 1);
          v55 = v53;
          if (v53)
          {
            v53 = objc_getProperty(v53, v54, 32, 1);
          }

          v56 = v53;

          if (v56)
          {
            v58 = objc_getProperty(v4, v57, 104, 1);
            v60 = v58;
            if (v58)
            {
              v58 = objc_getProperty(v58, v59, 40, 1);
            }

            v61 = v58;

            if (v61)
            {
              v63 = objc_getProperty(v4, v62, 104, 1);
              v65 = v63;
              if (v63)
              {
                v63 = objc_getProperty(v63, v64, 32, 1);
              }

              v66 = v63;
              method = [v66 method];
              v68 = objc_getProperty(v9, v67, 96, 1);
              kemProtocol = [(NEIKEv2IKESAProposal *)v68 kemProtocol];
              method2 = [kemProtocol method];

              if (method == method2)
              {
                v73 = objc_getProperty(v4, v72, 104, 1);
                v75 = v73;
                v20 = &OBJC_IVAR___NEFilterFlow__direction;
                if (v73)
                {
                  v73 = objc_getProperty(v73, v74, 40, 1);
                }

                v76 = v73;
                objc_setProperty_atomic(v9, v77, v76, 152);

                v79 = objc_getProperty(v4, v78, 112, 1);

                if (v79)
                {
                  v81 = objc_getProperty(v4, v80, 112, 1);
                  v83 = v81;
                  if (v81)
                  {
                    v81 = objc_getProperty(v81, v82, 32, 1);
                  }

                  v84 = v81;

                  if (v84)
                  {
                    v86 = objc_getProperty(v9, v85, 80, 1);
                    strictNonceSizeChecks = [v86 strictNonceSizeChecks];

                    if (strictNonceSizeChecks)
                    {
                      v89 = objc_getProperty(v4, v88, 112, 1);
                      v91 = v89;
                      if (v89)
                      {
                        v89 = objc_getProperty(v89, v90, 32, 1);
                      }

                      v92 = v89;
                      v93 = [v92 length];

                      if (v93 - 257 <= 0xFFFFFFFFFFFFFF0ELL)
                      {
                        v95 = ne_log_obj();
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription3 = [(NEIKEv2Packet *)v4 copyShortDescription];
                          *v361 = 138412546;
                          v362 = copyShortDescription3;
                          v363 = 2048;
                          v364 = v93;
                          _os_log_error_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is out of bounds", v361, 0x16u);
                        }

                        v103 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is out of bounds", v96, v97, v98, v99, v100, v101, v102, v93);
                        goto LABEL_153;
                      }

                      v298 = objc_getProperty(v9, v94, 96, 1);
                      prfProtocol = [(NEIKEv2IKESAProposal *)v298 prfProtocol];
                      nonceSize = [prfProtocol nonceSize];

                      v302 = v93 >= nonceSize;
                      v20 = &OBJC_IVAR___NEFilterFlow__direction;
                      if (!v302)
                      {
                        v303 = ne_log_obj();
                        if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
                        {
                          copyShortDescription4 = [(NEIKEv2Packet *)v4 copyShortDescription];
                          v344 = objc_getProperty(v9, v343, 96, 1);
                          prfProtocol2 = [(NEIKEv2IKESAProposal *)v344 prfProtocol];
                          *v361 = 138412802;
                          v362 = copyShortDescription4;
                          v363 = 2048;
                          v364 = v93;
                          v365 = 2112;
                          method4 = prfProtocol2;
                          _os_log_error_impl(&dword_1BA83C000, v303, OS_LOG_TYPE_ERROR, "%@ NONCE data length %zu is shorter than the minimum for PRF protocol %@", v361, 0x20u);

                          v20 = &OBJC_IVAR___NEFilterFlow__direction;
                        }

                        ErrorPeerInvalidSyntax = objc_getProperty(v9, v304, 96, 1);
                        prfProtocol3 = [(NEIKEv2IKESAProposal *)ErrorPeerInvalidSyntax prfProtocol];
                        v313 = NEIKEv2CreateErrorPeerInvalidSyntax(@"NONCE data length %zu is shorter than the minimum for PRF protocol %@", v306, v307, v308, v309, v310, v311, v312, v93);
                        [(NEIKEv2IKESA *)v9 setState:v313 error:?];

                        goto LABEL_154;
                      }
                    }

                    v314 = objc_getProperty(v4, v88, 112, 1);
                    ErrorPeerInvalidSyntax = v314;
                    if (v314)
                    {
                      v314 = objc_getProperty(v314, v315, 32, 1);
                    }

                    v316 = v314;
                    objc_setProperty_atomic(v9, v317, v316, 136);

                    v130 = 1;
LABEL_79:
                    v111 = 7;
                    goto LABEL_80;
                  }

                  v295 = ne_log_obj();
                  if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription5 = [(NEIKEv2Packet *)v4 copyShortDescription];
                    *v361 = 138412290;
                    v362 = copyShortDescription5;
                    _os_log_error_impl(&dword_1BA83C000, v295, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE data", v361, 0xCu);
                  }

                  v293 = @"Did not receive NONCE data";
                }

                else
                {
                  v285 = ne_log_obj();
                  if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                  {
                    copyShortDescription6 = [(NEIKEv2Packet *)v4 copyShortDescription];
                    *v361 = 138412290;
                    v362 = copyShortDescription6;
                    _os_log_error_impl(&dword_1BA83C000, v285, OS_LOG_TYPE_ERROR, "%@ Did not receive NONCE payload", v361, 0xCu);
                  }

                  v293 = @"Did not receive NONCE payload";
                }

                v103 = NEIKEv2CreateErrorPeerInvalidSyntax(v293, v286, v287, v288, v289, v290, v291, v292, v347);
LABEL_153:
                ErrorPeerInvalidSyntax = v103;
                [(NEIKEv2IKESA *)v9 setState:v103 error:?];
LABEL_154:
                v130 = 0;
                v111 = 7;
                goto LABEL_80;
              }

              v243 = ne_log_obj();
              v244 = &OBJC_IVAR___NEFilterFlow__direction;
              if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
              {
                copyShortDescription7 = [(NEIKEv2Packet *)v4 copyShortDescription];
                v321 = objc_getProperty(v4, v320, 104, 1);
                v350 = v321;
                v353 = copyShortDescription7;
                if (v321)
                {
                  v321 = objc_getProperty(v321, v322, 32, 1);
                }

                v349 = v321;
                method3 = [v349 method];
                v325 = objc_getProperty(v9, v324, 96, 1);
                kemProtocol2 = [(NEIKEv2IKESAProposal *)v325 kemProtocol];
                *v361 = 138412802;
                v362 = v353;
                v363 = 2048;
                v364 = method3;
                v365 = 2048;
                method4 = [kemProtocol2 method];
                _os_log_error_impl(&dword_1BA83C000, v243, OS_LOG_TYPE_ERROR, "%@ Received KE method %zu does not match KE method %zu in SA rekey proposal", v361, 0x20u);

                v244 = &OBJC_IVAR___NEFilterFlow__direction;
              }

              ErrorPeerInvalidSyntax = [(NEIKEv2Packet *)v4 copyShortDescription];
              v246 = objc_getProperty(v4, v245, v244[603], 1);
              v248 = v246;
              if (v246)
              {
                v246 = objc_getProperty(v246, v247, 32, 1);
              }

              v352 = v246;
              [v352 method];
              v250 = objc_getProperty(v9, v249, 96, 1);
              kemProtocol3 = [(NEIKEv2IKESAProposal *)v250 kemProtocol];
              [kemProtocol3 method];
              v260 = NEIKEv2CreateErrorPeerInvalidSyntax(@"Received KE method %zu does not match KE method %zu in SA rekey proposal", v253, v254, v255, v256, v257, v258, v259, ErrorPeerInvalidSyntax);
              [(NEIKEv2IKESA *)v9 setState:v260 error:?];

              v130 = 0;
              v111 = 17;
              v20 = &OBJC_IVAR___NEFilterFlow__direction;
LABEL_80:

              if (v130)
              {
                if (([(NEIKEv2IKESA *)v9 generateInitialValues]& 1) != 0)
                {
                  if (([(NEIKEv2IKESA *)v9 processCurrentKeyExchange]& 1) != 0)
                  {
                    v137 = v4;
                    v9 = v9;
                    objc_opt_self();
                    v139 = objc_getProperty(v9, v138, 96, 1);

                    if (v139)
                    {
                      v140 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initResponse:v137];
                      if (v140)
                      {
                        v141 = v140;
                        v355 = v137;
                        v142 = objc_alloc_init(NEIKEv2IKESAPayload);
                        objc_setProperty_atomic(v141, v143, v142, v20[601]);

                        v145 = objc_getProperty(v9, v144, 96, 1);
                        *v368 = v145;
                        v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:v368 count:1];
                        v147 = v20;
                        v149 = objc_getProperty(v141, v148, v20[601], 1);
                        v151 = v149;
                        if (v149)
                        {
                          objc_setProperty_atomic(v149, v150, v146, 32);
                        }

                        v153 = objc_getProperty(v141, v152, v147[601], 1);
                        isValid = [(NEIKEv2Payload *)v153 isValid];

                        if (isValid)
                        {
                          v155 = objc_alloc_init(NEIKEv2NoncePayload);
                          objc_setProperty_atomic(v141, v156, v155, 112);

                          v158 = objc_getProperty(v9, v157, 128, 1);
                          v160 = objc_getProperty(v141, v159, 112, 1);
                          v162 = v160;
                          if (v160)
                          {
                            objc_setProperty_atomic(v160, v161, v158, 32);
                          }

                          v164 = objc_getProperty(v141, v163, 112, 1);
                          isValid2 = [(NEIKEv2Payload *)v164 isValid];

                          if (isValid2)
                          {
                            v166 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                            objc_setProperty_atomic(v141, v167, v166, 104);

                            v169 = objc_getProperty(v9, v168, 96, 1);
                            kemProtocol4 = [(NEIKEv2IKESAProposal *)v169 kemProtocol];
                            v173 = objc_getProperty(v141, v172, 104, 1);
                            v175 = v173;
                            if (v173)
                            {
                              objc_setProperty_atomic(v173, v174, kemProtocol4, 32);
                            }

                            v177 = objc_getProperty(v9, v176, 160, 1);
                            v178 = v177;
                            if (v177)
                            {
                              v179 = *(v177 + 2);
                            }

                            else
                            {
                              v179 = 0;
                            }

                            v180 = v179;
                            v182 = objc_getProperty(v141, v181, 104, 1);
                            v184 = v182;
                            if (v182)
                            {
                              objc_setProperty_atomic(v182, v183, v180, 40);
                            }

                            v186 = objc_getProperty(v141, v185, 104, 1);
                            isValid3 = [(NEIKEv2Payload *)v186 isValid];

                            if (isValid3)
                            {
                              v189 = objc_getProperty(v9, v188, 96, 1);
                              v191 = v189;
                              if (v189)
                              {
                                v189 = objc_getProperty(v189, v190, 136, 1);
                              }

                              v192 = v189;

                              if (v192)
                              {
                                uUID = [MEMORY[0x1E696AFB0] UUID];
                                *buf = 0uLL;
                                [uUID getUUIDBytes:buf];
                                v194 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:16];
                                v195 = [NEIKEv2NotifyPayload createNotifyPayloadType:v194 data:?];
                                objc_setProperty_atomic(v9, v196, v195, 176);

                                v198 = objc_getProperty(v9, v197, 176, 1);
                                [(NEIKEv2Packet *)v141 addNotifyPayload:v198];
                              }

                              v141 = v141;
                              v199 = v141;
                              goto LABEL_136;
                            }

                            v241 = ne_log_obj();
                            if (os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 136315138;
                              *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:ikeSA:]";
                              v242 = "%s called with null packet.ke.isValid";
                              goto LABEL_134;
                            }

LABEL_135:

                            v199 = 0;
LABEL_136:
                            v137 = v355;
                            goto LABEL_137;
                          }

                          v241 = ne_log_obj();
                          if (!os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_135;
                          }

                          *buf = 136315138;
                          *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:ikeSA:]";
                          v242 = "%s called with null packet.nonce.isValid";
                        }

                        else
                        {
                          v241 = ne_log_obj();
                          if (!os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_135;
                          }

                          *buf = 136315138;
                          *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:ikeSA:]";
                          v242 = "%s called with null packet.ikeSA.isValid";
                        }

LABEL_134:
                        _os_log_fault_impl(&dword_1BA83C000, v241, OS_LOG_TYPE_FAULT, v242, buf, 0xCu);
                        goto LABEL_135;
                      }

                      v240 = ne_log_obj();
                      if (os_log_type_enabled(v240, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        _os_log_fault_impl(&dword_1BA83C000, v240, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initResponse:] failed", buf, 2u);
                      }

                      v141 = 0;
                    }

                    else
                    {
                      v141 = ne_log_obj();
                      if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136315138;
                        *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyResponse:ikeSA:]";
                        _os_log_fault_impl(&dword_1BA83C000, v141, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.chosenProposal", buf, 0xCu);
                      }
                    }

                    v199 = 0;
LABEL_137:

                    if (v199)
                    {
                      v265 = objc_getProperty(v9, v264, 160, 1);
                      v266 = v265;
                      if (v265)
                      {
                        v267 = *(v265 + 3);
                      }

                      else
                      {
                        v267 = 0;
                      }

                      v268 = v267;
                      objc_setProperty_atomic(v9, v269, v268, 168);

                      objc_setProperty_atomic(v9, v270, 0, 160);
                      v356[0] = MEMORY[0x1E69E9820];
                      v356[1] = 3221225472;
                      v356[2] = __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke_614;
                      v356[3] = &unk_1E7F08558;
                      v357 = v9;
                      v358 = v8;
                      aCopy = a;
                      [(NEIKEv2Session *)a handleFollowupKEForRekeyIKESAResponder:v357 iteration:0 replyPacket:v199 replyPacketDescription:@"rekey IKE SA reply" handler:v356];
                    }

                    else
                    {
                      v271 = ne_log_obj();
                      if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v271, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet (receive rekey)", buf, 2u);
                      }

                      v273 = objc_getProperty(a, v272, 352, 1);
                      ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet (receive rekey)", v274, v275, v276, v277, v278, v279, v280, v347);
                      [(NEIKEv2IKESA *)v273 setState:ErrorInternal error:?];

                      [(NEIKEv2Session *)a reportState];
                      [(NEIKEv2Session *)a resetAll];
                    }

                    goto LABEL_145;
                  }

                  v332 = ne_log_obj();
                  if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1BA83C000, v332, OS_LOG_TYPE_ERROR, "Failed to process KE data (receive rekey)", buf, 2u);
                  }

                  v235 = objc_getProperty(a, v333, 352, 1);
                  v236 = @"Failed to process KE data (receive rekey)";
                }

                else
                {
                  v226 = ne_log_obj();
                  if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1BA83C000, v226, OS_LOG_TYPE_ERROR, "Failed to generate local IKE crypto values (receive rekey)", buf, 2u);
                  }

                  v235 = objc_getProperty(a, v227, 352, 1);
                  v236 = @"Failed to generate local IKE crypto values (receive rekey)";
                }

                ErrorCrypto = NEIKEv2CreateErrorCrypto(v236, v228, v229, v230, v231, v232, v233, v234, v347);
                [(NEIKEv2IKESA *)v235 setState:ErrorCrypto error:?];

                [(NEIKEv2Session *)a reportState];
                [(NEIKEv2Session *)a resetAll];
                goto LABEL_145;
              }

              v8[16] = 0;
              if (v111 == 17)
              {
                v200 = objc_getProperty(v9, v135, 96, 1);
                kemProtocol5 = [(NEIKEv2IKESAProposal *)v200 kemProtocol];
                v203 = bswap32([kemProtocol5 method]) >> 16;

                *buf = v203;
                v204 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:2];
                v205 = [NEIKEv2CreateChildPacket createChildSAResponse:v4 errorCode:0x11uLL errorData:v204];

                if (v205)
                {
                  if (([(NEIKEv2Session *)a sendReply:v205 replyHandler:0]& 1) == 0)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_113;
                }

                v330 = ne_log_obj();
                if (os_log_type_enabled(v330, OS_LOG_TYPE_ERROR))
                {
                  *v368 = 0;
                  _os_log_error_impl(&dword_1BA83C000, v330, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet (receive rekey)", v368, 2u);
                }
              }

              else
              {
LABEL_107:
                v205 = [NEIKEv2CreateChildPacket createChildSAResponse:v4 errorCode:v111 errorData:0];
                if (v205)
                {
                  if (([(NEIKEv2Session *)a sendReply:v205 replyHandler:0]& 1) == 0)
                  {
LABEL_111:
                    v207 = objc_getProperty(a, v206, 352, 1);
                    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"rekey IKE SA refusal", v216, v217, v218, v219, v220, v221, v222, v347);
                    goto LABEL_112;
                  }

                  if (v111 != 14)
                  {
                    v207 = objc_getProperty(a, v206, 352, 1);
                    ErrorFailedToSend = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Create Child SA packet (receive rekey)", v208, v209, v210, v211, v212, v213, v214, v347);
LABEL_112:
                    v223 = ErrorFailedToSend;
                    [(NEIKEv2IKESA *)v207 setState:ErrorFailedToSend error:?];

                    [(NEIKEv2Session *)a reportState];
                    [(NEIKEv2Session *)a resetAll];
                  }

LABEL_113:

                  goto LABEL_145;
                }

                v330 = ne_log_obj();
                if (os_log_type_enabled(v330, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v330, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet (receive rekey)", buf, 2u);
                }
              }

              v207 = objc_getProperty(a, v334, 352, 1);
              ErrorFailedToSend = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet (receive rekey)", v335, v336, v337, v338, v339, v340, v341, v347);
              goto LABEL_112;
            }

            v134 = ne_log_obj();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription8 = [(NEIKEv2Packet *)v4 copyShortDescription];
              *v361 = 138412290;
              v362 = copyShortDescription8;
              _os_log_error_impl(&dword_1BA83C000, v134, OS_LOG_TYPE_ERROR, "%@ Did not receive data in KE payload", v361, 0xCu);
            }

            v120 = @"Did not receive data in KE payload";
          }

          else
          {
            v133 = ne_log_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription9 = [(NEIKEv2Packet *)v4 copyShortDescription];
              *v361 = 138412290;
              v362 = copyShortDescription9;
              _os_log_error_impl(&dword_1BA83C000, v133, OS_LOG_TYPE_ERROR, "%@ Did not receive method in KE payload", v361, 0xCu);
            }

            v120 = @"Did not receive method in KE payload";
          }
        }

        else
        {
          v132 = ne_log_obj();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            copyShortDescription10 = [(NEIKEv2Packet *)v4 copyShortDescription];
            *v361 = 138412290;
            v362 = copyShortDescription10;
            _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "%@ Did not receive KE payload", v361, 0xCu);
          }

          v120 = @"Did not receive KE payload";
        }
      }

      else
      {
        v131 = ne_log_obj();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          copyShortDescription11 = [(NEIKEv2Packet *)v4 copyShortDescription];
          *v361 = 138412290;
          v362 = copyShortDescription11;
          _os_log_error_impl(&dword_1BA83C000, v131, OS_LOG_TYPE_ERROR, "%@ SA proposal missing rekey SPI", v361, 0xCu);
        }

        v120 = @"SA proposal missing rekey SPI";
      }
    }

    else
    {
      v112 = ne_log_obj();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription12 = [(NEIKEv2Packet *)v4 copyShortDescription];
        *v361 = 138412290;
        v362 = copyShortDescription12;
        _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ Received no SA proposals", v361, 0xCu);
      }

      v120 = @"Received no SA proposals";
    }

    ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(v120, v113, v114, v115, v116, v117, v118, v119, v347);
    [(NEIKEv2IKESA *)v9 setState:ErrorPeerInvalidSyntax error:?];
    v130 = 0;
    goto LABEL_79;
  }

  v104 = ne_log_obj();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_ERROR, "Failed to create valid IKE SA (receive rekey)", buf, 2u);
  }

  v105 = [NEIKEv2DeleteIKEContext alloc];
  v107 = objc_getProperty(a, v106, 384, 1);
  v360[0] = MEMORY[0x1E69E9820];
  v360[1] = 3221225472;
  v360[2] = __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke;
  v360[3] = &unk_1E7F08740;
  v360[4] = a;
  v108 = [(NEIKEv2DeleteIKEContext *)&v105->super.super.isa initDeleteIKEWithResponse:v107 callbackQueue:v360 callback:?];

  [(NEIKEv2Session *)a initiateDelete:v108];
  v9 = 0;
LABEL_145:

  v284 = *MEMORY[0x1E69E9840];
}

void __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create valid IKE SA (receive rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorInternal error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

void __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke_614(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4 || ([(NEIKEv2IKESA *)v4 generateAllValuesUsingSA:?]& 1) == 0)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to generate IKE SA crypto values (receive rekey)", buf, 2u);
    }

    v11 = [NEIKEv2DeleteIKEContext alloc];
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v10, 384, 1);
    }

    v13 = Property;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke_615;
    v54[3] = &unk_1E7F08740;
    v54[4] = *(a1 + 48);
    v6 = [(NEIKEv2DeleteIKEContext *)&v11->super.super.isa initDeleteIKEWithResponse:v13 callbackQueue:v54 callback:?];

    [(NEIKEv2Session *)*(a1 + 48) initiateDelete:v6];
    goto LABEL_29;
  }

  if (v3 && ([(NEIKEv2InformationalPacket *)v3 isDeleteIKE]& 1) != 0)
  {
    v6 = [NEIKEv2InformationalPacket createInformationalResponse:v3 ikeSA:0];
    if (v6)
    {
      if (([(NEIKEv2Session *)*(a1 + 48) sendReply:v6 replyHandler:0]& 1) != 0)
      {
        [(NEIKEv2IKESA *)*(a1 + 32) setState:0 error:?];
        [(NEIKEv2Session *)*(a1 + 48) setIKESA:?];
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "Rekeyed IKE SA", buf, 2u);
        }

        goto LABEL_29;
      }

      v40 = *(a1 + 48);
      if (v40)
      {
        v40 = objc_getProperty(v40, v7, 352, 1);
      }

      v31 = v40;
      ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete reply", v41, v42, v43, v44, v45, v46, v47, v53);
    }

    else
    {
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 48);
        *buf = 138412290;
        v56 = v52;
        _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE Delete response packet", buf, 0xCu);
      }

      v30 = *(a1 + 48);
      if (v30)
      {
        v30 = objc_getProperty(v30, v29, 352, 1);
      }

      v31 = v30;
      ErrorFailedToSend = NEIKEv2CreateErrorInternal(@"Failed to create IKE Delete response packet (receive rekey)", v32, v33, v34, v35, v36, v37, v38, v53);
    }

    v48 = ErrorFailedToSend;
    [(NEIKEv2IKESA *)v31 setState:ErrorFailedToSend error:?];

    [(NEIKEv2Session *)*(a1 + 48) reportState];
    [(NEIKEv2Session *)*(a1 + 48) resetAll];
LABEL_29:

    goto LABEL_30;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Failed to process Rekey IKE Delete packet (receive rekey)", buf, 2u);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v16 = objc_getProperty(v16, v15, 352, 1);
  }

  v17 = v16;
  ErrorPeerInvalidSyntax = NEIKEv2CreateErrorPeerInvalidSyntax(@"Failed to process Rekey IKE Delete packet (receive rekey)", v18, v19, v20, v21, v22, v23, v24, v53);
  [(NEIKEv2IKESA *)v17 setState:ErrorPeerInvalidSyntax error:?];

  [(NEIKEv2Session *)*(a1 + 48) reportState];
  [(NEIKEv2Session *)*(a1 + 48) resetAll];
LABEL_30:

  v51 = *MEMORY[0x1E69E9840];
}

void __46__NEIKEv2Session_Exchange__receiveRekeyIKESA___block_invoke_615(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  v4 = Property;
  ErrorCrypto = NEIKEv2CreateErrorCrypto(@"Failed to generate IKE SA crypto values (receive rekey)", v5, v6, v7, v8, v9, v10, v11, v16);
  [(NEIKEv2IKESA *)v4 setState:ErrorCrypto error:?];

  [(NEIKEv2Session *)*(a1 + 32) reportState];
  v15 = *(a1 + 32);

  [(NEIKEv2Session *)v15 resetAll];
}

- (void)receiveMOBIKE:(void *)e
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!e)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_49;
  }

  v5 = objc_getProperty(e, v3, 384, 1);
  dispatch_assert_queue_V2(v5);

  v7 = objc_getProperty(e, v6, 352, 1);
  if (!v7)
  {
LABEL_49:
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v63 = "[NEIKEv2Session(Exchange) receiveMOBIKE:]";
      _os_log_fault_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_47;
  }

  v8 = v7;
  if (([(NEIKEv2InformationalPacket *)v4 isMOBIKE]& 1) == 0)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Failed to receive MOBIKE packet";
LABEL_33:
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    }

    goto LABEL_47;
  }

  v8 = v8;
  if (![(NEIKEv2Packet *)v4 hasErrors])
  {
LABEL_17:
    Property = [(NEIKEv2Packet *)v4 copyNotification:?];
    v20 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v19, 40, 1);
    }

    v21 = Property;

    if (v21)
    {
      if (v20)
      {
        v23 = objc_getProperty(v20, v22, 40, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      objc_setProperty_atomic(v8, v25, v24, 288);
    }

    v26 = v4;
    v8 = v8;
    objc_opt_self();
    v27 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initResponse:v26];
    if (v27)
    {
      v29 = v27;
      v30 = objc_getProperty(v8, v28, 288, 1);

      if (!v30 || (objc_getProperty(v8, v31, 288, 1), v32 = objc_claimAutoreleasedReturnValue(), v33 = [(NEIKEv2Packet *)v29 addNotification:v32 data:?], v32, v33))
      {
        v29 = v29;
        v34 = v29;
        goto LABEL_41;
      }

      v38 = ne_log_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeCookie2] failed", buf, 2u);
      }
    }

    else
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
      }

      v29 = 0;
    }

    v34 = 0;
LABEL_41:

    if (v34)
    {
      if (([(NEIKEv2Session *)e sendReply:v34 replyHandler:0]& 1) == 0)
      {
        v40 = objc_getProperty(e, v39, 352, 1);
        ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"MOBIKE reply", v41, v42, v43, v44, v45, v46, v47, v54);
        [(NEIKEv2IKESA *)v40 setState:ErrorFailedToSend error:?];

        [(NEIKEv2Session *)e reportState];
        [(NEIKEv2Session *)e resetAll];
      }
    }

    else
    {
      v51 = ne_log_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, "Failed to create MOBIKE packet", buf, 2u);
      }

      v34 = 0;
    }

    goto LABEL_47;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  if (v4)
  {
    v11 = objc_getProperty(v4, v10, 64, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v54 objects:buf count:16];
  if (!v13)
  {
LABEL_16:

    goto LABEL_17;
  }

  v14 = v13;
  v15 = *v55;
LABEL_9:
  v16 = 0;
  while (1)
  {
    if (*v55 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v17 = *(*(&v54 + 1) + 8 * v16);
    if (v17)
    {
      if ((*(v17 + 32) - 1) <= 0x3FFE)
      {
        break;
      }
    }

    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    copyShortDescription = [(NEIKEv2Packet *)v4 copyShortDescription];
    *v58 = 138412546;
    v59 = copyShortDescription;
    v60 = 2112;
    v61 = v17;
    _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@ MOBIKE received notify error %@", v58, 0x16u);
  }

  v34 = ne_log_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v35 = "Failed to process MOBIKE packet";
    goto LABEL_33;
  }

LABEL_47:

  v52 = *MEMORY[0x1E69E9840];
}

- (void)receiveRedirect:(void *)redirect
{
  v4 = a2;
  if (redirect)
  {
    Property = objc_getProperty(redirect, v3, 384, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  dispatch_assert_queue_V2(v6);

  if (([(NEIKEv2Packet *)v4 hasNotification:?]& 1) != 0)
  {
    if (v4)
    {
      hasErrors = [(NEIKEv2Packet *)v4 hasErrors];
      v9 = ne_log_obj();
      v10 = v9;
      if (!hasErrors)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Received server redirect", buf, 2u);
        }

        [(NEIKEv2Session *)redirect reportServerRedirect:v4];
        v13 = [NEIKEv2InformationalPacket createInformationalResponse:v4 ikeSA:0];
        if (v13)
        {
          v10 = v13;
          if (([(NEIKEv2Session *)redirect sendReply:v13 replyHandler:0]& 1) == 0)
          {
            if (redirect)
            {
              v15 = objc_getProperty(redirect, v14, 352, 1);
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"redirect reply", v17, v18, v19, v20, v21, v22, v23, v28);
            [(NEIKEv2IKESA *)v16 setState:ErrorFailedToSend error:?];

            [(NEIKEv2Session *)redirect reportState];
            [(NEIKEv2Session *)redirect resetAll];
          }
        }

        else
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v28) = 0;
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "Failed to create REDIRECT response packet", &v28, 2u);
          }

          v10 = 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v10 = ne_log_obj();
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v11 = "Failed to process redirect packet";
      v12 = &v30;
LABEL_21:
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    }
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      v11 = "Failed to receive redirect packet";
      v12 = v31;
      goto LABEL_21;
    }
  }

LABEL_9:
}

- (void)receiveDeleteIKESA:(void *)a
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a)
  {
    v5 = objc_getProperty(a, v3, 384, 1);
    dispatch_assert_queue_V2(v5);

    v7 = objc_getProperty(a, v6, 352, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v4;
      v11 = v9;
      if (v9 && ![(NEIKEv2Packet *)v9 hasErrors])
      {
        v13 = [NEIKEv2InformationalPacket createInformationalResponse:v11 ikeSA:0];
        if (v13)
        {
          v12 = v13;
          if (([(NEIKEv2Session *)a sendReply:v13 replyHandler:0]& 1) != 0)
          {
            v15 = 1;
            goto LABEL_15;
          }

          v17 = objc_getProperty(a, v14, 352, 1);
          ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"delete reply", v18, v19, v20, v21, v22, v23, v24, *v37);
          [(NEIKEv2IKESA *)v17 setState:ErrorFailedToSend error:?];

          [(NEIKEv2Session *)a reportState];
          [(NEIKEv2Session *)a resetAll];
        }

        else
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *v37 = 138412290;
            *&v37[4] = a;
            _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to create Delete packet", v37, 0xCu);
          }

          v12 = 0;
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v37 = 138412290;
          *&v37[4] = a;
          _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to process Delete packet", v37, 0xCu);
        }
      }

      v15 = 0;
LABEL_15:

      v28 = ne_log_large_obj();
      v29 = v28;
      if (v15)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 138412546;
          *&v37[4] = a;
          v38 = 2112;
          v39 = v8;
          _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEFAULT, "%@ Received IKE SA Delete %@", v37, 0x16u);
        }

        v31 = objc_getProperty(a, v30, 352, 1);
        Error = NEIKEv2CreateError(14);
        [(NEIKEv2IKESA *)v31 setState:Error error:?];

        [(NEIKEv2Session *)a reportState];
        [(NEIKEv2Session *)a resetAll];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *v37 = 138412546;
          *&v37[4] = a;
          v38 = 2112;
          v39 = v8;
          _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, "%@ Failed to process received IKE SA Delete %@", v37, 0x16u);
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    *v37 = 136315138;
    *&v37[4] = "[NEIKEv2Session(Exchange) receiveDeleteIKESA:]";
    _os_log_fault_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", v37, 0xCu);
  }

  v8 = 0;
LABEL_22:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)receiveDeleteChildSA:(void *)a
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a)
  {
    v5 = objc_getProperty(a, v3, 384, 1);
    dispatch_assert_queue_V2(v5);

    v7 = objc_getProperty(a, v6, 352, 1);
    if (v7)
    {
      v9 = v7;
      v65 = v4;
      v10 = objc_getProperty(v4, v8, 88, 1);
      firstObject = [v10 firstObject];

      if (firstObject)
      {
        Property = objc_getProperty(firstObject, v12, 40, 1);
      }

      else
      {
        Property = 0;
      }

      v14 = Property;
      firstObject2 = [v14 firstObject];

      v16 = [(NEIKEv2Session *)a copyChildWithSPI:firstObject2];
      v64 = firstObject2;
      if (v16)
      {
        v18 = v16;
        v19 = objc_getProperty(v16, v17, 56, 1);
        v21 = v19;
        if (v19)
        {
          v19 = objc_getProperty(v19, v20, 80, 1);
        }

        v4 = v65;
        v22 = v19;
        v24 = objc_getProperty(v18, v23, 56, 1);
        v26 = v24;
        if (v24)
        {
          v24 = objc_getProperty(v24, v25, 88, 1);
        }

        v27 = v24;
        v28 = [(NEIKEv2Session *)a receiveDeleteChildSPI:v22 remoteSPI:v27 packet:v65];

        v29 = ne_log_large_obj();
        v30 = v29;
        if (v28)
        {
          v32 = v9;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v33 = objc_getProperty(v18, v31, 56, 1);
            v35 = v33;
            if (v33)
            {
              v33 = objc_getProperty(v33, v34, 88, 1);
            }

            v36 = v33;
            *buf = 138412546;
            aCopy4 = a;
            v72 = 2112;
            v73 = v36;
            _os_log_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_DEFAULT, "%@ Received Child SA Delete for remote SPI %@", buf, 0x16u);
          }

          [(NEIKEv2ChildSA *)v18 setState:0 error:?];
          [(NEIKEv2Session *)a reportState];
          [(NEIKEv2Session *)a resetChild:v18];
          v38 = v64;
          goto LABEL_43;
        }

        v32 = v9;
        v38 = v64;
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
LABEL_34:

LABEL_43:
          goto LABEL_44;
        }
      }

      else
      {
        v63 = v9;
        v39 = firstObject2;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v41 = objc_getProperty(a, v40, 304, 1);
        v42 = [v41 countByEnumeratingWithState:&v66 objects:buf count:16];
        if (!v42)
        {
LABEL_32:

LABEL_40:
          v18 = ne_log_obj();
          v38 = v64;
          v4 = v65;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            aCopy4 = a;
            v72 = 2112;
            v73 = v39;
            _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Failed to find child SA for spi %@", buf, 0x16u);
          }

          v32 = v63;
          goto LABEL_43;
        }

        v44 = v42;
        v45 = *v67;
        v62 = firstObject;
LABEL_18:
        v46 = 0;
        while (1)
        {
          if (*v67 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v66 + 1) + 8 * v46);
          v48 = v47 ? objc_getProperty(*(*(&v66 + 1) + 8 * v46), v43, 192, 1) : 0;
          v49 = v48;
          if ([v49 isEqual:v39])
          {
            break;
          }

          if (v47)
          {
            v51 = objc_getProperty(v47, v50, 200, 1);
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;
          v53 = [v52 isEqual:v39];

          if (v53)
          {
            goto LABEL_36;
          }

          if (v44 == ++v46)
          {
            v54 = [v41 countByEnumeratingWithState:&v66 objects:buf count:16];
            v44 = v54;
            firstObject = v62;
            if (v54)
            {
              goto LABEL_18;
            }

            goto LABEL_32;
          }
        }

LABEL_36:
        v18 = v47;

        firstObject = v62;
        if (!v47)
        {
          goto LABEL_40;
        }

        v38 = v64;
        v4 = v65;
        v56 = objc_getProperty(v18, v55, 200, 1);
        v57 = [(NEIKEv2Session *)a receiveDeleteChildSPI:v56 remoteSPI:v65 packet:?];

        v58 = ne_log_large_obj();
        v30 = v58;
        v32 = v63;
        if (v57)
        {
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v60 = objc_getProperty(v18, v59, 200, 1);
            *buf = 138412546;
            aCopy4 = a;
            v72 = 2112;
            v73 = v60;
            _os_log_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_DEFAULT, "%@ Received Child SA Delete for remote SPI %@", buf, 0x16u);
          }

          goto LABEL_34;
        }

        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      *buf = 138412546;
      aCopy4 = a;
      v72 = 2112;
      v73 = v18;
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ Failed to process received Child SA Delete %@", buf, 0x16u);
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }

  firstObject = ne_log_obj();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    aCopy4 = "[NEIKEv2Session(Exchange) receiveDeleteChildSA:]";
    _os_log_fault_impl(&dword_1BA83C000, firstObject, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
  }

  v32 = 0;
LABEL_44:

  v61 = *MEMORY[0x1E69E9840];
}

uint64_t __50__NEIKEv2Session_Exchange__initiateDeleteChildSA___block_invoke(uint64_t a1, uint64_t a2)
{
  [(NEIKEv2Session *)*(a1 + 32) resetChild:?];
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);

  return [v4 sendCallbackSuccess:a2 session:v5];
}

- (BOOL)checkSelectedChildSAProposal:(id)proposal
{
  proposalCopy = proposal;
  Property = [(NEIKEv2Session *)self firstChildSA];
  v8 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 56, 1);
  }

  v9 = Property;

  encryptionProtocols = [proposalCopy encryptionProtocols];
  firstObject = [encryptionProtocols firstObject];

  if (!firstObject)
  {
    goto LABEL_14;
  }

  if (v9)
  {
    v13 = objc_getProperty(v9, v12, 96, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [firstObject isEqual:v14];

  if ((v15 & 1) == 0)
  {
    firstObject2 = ne_log_obj();
    if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Incorrect encryption algorithm chosen";
      v22 = buf;
      goto LABEL_26;
    }

LABEL_31:
    v33 = 0;
    goto LABEL_32;
  }

  v17 = firstObject[2];
  if (v17 <= 0x1F && ((0xD0100000 >> v17) & 1) != 0)
  {
    if (v9)
    {
      v18 = objc_getProperty(v9, v16, 104, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19)
    {
      firstObject2 = ne_log_obj();
      if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
      {
        v39 = 0;
        v21 = "Integrity algorithm chosen with authenticated encryption";
        v22 = &v39;
LABEL_26:
        _os_log_error_impl(&dword_1BA83C000, firstObject2, OS_LOG_TYPE_ERROR, v21, v22, 2u);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  else
  {
LABEL_14:
    integrityProtocols = [proposalCopy integrityProtocols];
    firstObject2 = [integrityProtocols firstObject];

    if (firstObject2)
    {
      v25 = v9 ? objc_getProperty(v9, v24, 104, 1) : 0;
      v26 = v25;
      v27 = [firstObject2 isEqual:v26];

      if ((v27 & 1) == 0)
      {
        v34 = ne_log_obj();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          goto LABEL_31;
        }

        v40 = 0;
        v35 = "Incorrect integrity algorithm chosen";
        v36 = &v40;
LABEL_34:
        _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v35, v36, 2u);
        goto LABEL_30;
      }
    }
  }

  kemProtocols = [proposalCopy kemProtocols];
  firstObject2 = [kemProtocols firstObject];

  if (firstObject2)
  {
    v30 = v9 ? objc_getProperty(v9, v29, 112, 1) : 0;
    v31 = v30;
    v32 = [firstObject2 isEqual:v31];

    if ((v32 & 1) == 0)
    {
      v34 = ne_log_obj();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v38 = 0;
      v35 = "Incorrect KE method chosen";
      v36 = &v38;
      goto LABEL_34;
    }
  }

  v33 = 1;
LABEL_32:

  return v33;
}

- (id)firstChildSA
{
  if (self)
  {
    self = [objc_getProperty(self a2];
    v2 = vars8;
  }

  return self;
}

- (BOOL)checkSelectedIKEProposal:(id)proposal
{
  proposalCopy = proposal;
  if (self)
  {
    Property = objc_getProperty(self, v4, 352, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 96, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  encryptionProtocols = [proposalCopy encryptionProtocols];
  firstObject = [encryptionProtocols firstObject];

  if (!firstObject)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    v12 = objc_getProperty(v8, v11, 104, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [firstObject isEqual:v13];

  if (v14)
  {
    v16 = firstObject[2];
    if (v16 <= 0x1F && ((0xD0100000 >> v16) & 1) != 0)
    {
      if (v8)
      {
        v17 = objc_getProperty(v8, v15, 112, 1);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        firstObject2 = ne_log_obj();
        if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
        {
          v44 = 0;
          v20 = "Integrity algorithm chosen with authenticated encryption";
          v21 = &v44;
LABEL_31:
          _os_log_error_impl(&dword_1BA83C000, firstObject2, OS_LOG_TYPE_ERROR, v20, v21, 2u);
          goto LABEL_35;
        }

        goto LABEL_35;
      }

LABEL_20:
      prfProtocols = [proposalCopy prfProtocols];
      firstObject2 = [prfProtocols firstObject];

      if (firstObject2 && (!v8 ? (v29 = 0) : (v29 = objc_getProperty(v8, v28, 120, 1)), v30 = v29, v31 = [firstObject2 isEqual:v30], v30, (v31 & 1) == 0))
      {
        firstObject3 = ne_log_obj();
        if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_ERROR))
        {
          *v43 = 0;
          _os_log_error_impl(&dword_1BA83C000, firstObject3, OS_LOG_TYPE_ERROR, "Incorrect PRF algorithm chosen", v43, 2u);
        }
      }

      else
      {
        kemProtocols = [proposalCopy kemProtocols];
        firstObject3 = [kemProtocols firstObject];

        if (!firstObject3 || (!v8 ? (v35 = 0) : (v35 = objc_getProperty(v8, v34, 128, 1)), v36 = v35, v37 = [firstObject3 isEqual:v36], v36, (v37 & 1) != 0))
        {
          v38 = 1;
LABEL_42:

          goto LABEL_43;
        }

        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v42 = 0;
          _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "Incorrect KE method chosen", v42, 2u);
        }
      }

      v38 = 0;
      goto LABEL_42;
    }

LABEL_15:
    integrityProtocols = [proposalCopy integrityProtocols];
    firstObject2 = [integrityProtocols firstObject];

    if (firstObject2)
    {
      v24 = v8 ? objc_getProperty(v8, v23, 112, 1) : 0;
      v25 = v24;
      v26 = [firstObject2 isEqual:v25];

      if ((v26 & 1) == 0)
      {
        v39 = ne_log_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *v45 = 0;
          _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "Incorrect integrity algorithm chosen", v45, 2u);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_20;
  }

  firstObject2 = ne_log_obj();
  if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v20 = "Incorrect encryption algorithm chosen";
    v21 = buf;
    goto LABEL_31;
  }

LABEL_35:
  v38 = 0;
LABEL_43:

  return v38;
}

- (void)invalidateWithCompletionHandler:(BOOL)handler completionHandler:(id)completionHandler
{
  v17 = *MEMORY[0x1E69E9840];
  completionHandlerCopy = completionHandler;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating %@", buf, 0xCu);
  }

  if (self)
  {
    self->_isInvalidated = 1;
    Property = objc_getProperty(self, v8, 384, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NEIKEv2Session_invalidateWithCompletionHandler_completionHandler___block_invoke;
  block[3] = &unk_1E7F08C20;
  handlerCopy = handler;
  block[4] = self;
  v13 = completionHandlerCopy;
  v10 = completionHandlerCopy;
  dispatch_async(Property, block);

  v11 = *MEMORY[0x1E69E9840];
}

void __68__NEIKEv2Session_invalidateWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      Property = objc_getProperty(*(a1 + 32), a2, 384, 1);
      dispatch_assert_queue_V2(Property);
      if ([*(v3 + 336) count])
      {
        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v3;
          _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@ flushed all pending requests", buf, 0xCu);
        }

        [*(v3 + 336) removeAllObjects];
      }
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  v7 = [NEIKEv2DeleteIKEContext alloc];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v6, 384, 1);
  }

  v10 = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__NEIKEv2Session_invalidateWithCompletionHandler_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7F08BF8;
  objc_copyWeak(&v16, buf);
  v15 = *(a1 + 40);
  v11 = [(NEIKEv2DeleteIKEContext *)&v7->super.super.isa initDeleteIKEWithResponse:v10 callbackQueue:v14 callback:?];

  [(NEIKEv2Session *)*(a1 + 32) abort];
  [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __68__NEIKEv2Session_invalidateWithCompletionHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    self = WeakRetained;
    [(NEIKEv2Session *)WeakRetained resetAll];
    Property = objc_getProperty(self, v4, 352, 1);
    if (Property && Property[6] == 2)
    {
      v7 = objc_getProperty(self, v6, 352, 1);
      [(NEIKEv2IKESA *)v7 setState:0 error:?];
    }

    if (objc_getProperty(self, v6, 192, 1))
    {
      v9 = self;
      if (self[9] == 1)
      {
        [objc_getProperty(self v8];
        v9 = self;
      }

      objc_setProperty_atomic(v9, v8, 0, 192);
    }

    WeakRetained = *(a1 + 32);
    v3 = self;
    if (WeakRetained)
    {
      WeakRetained = (*(WeakRetained + 2))(WeakRetained, self);
      v3 = self;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (_BYTE)abort
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    Property = objc_getProperty(result, a2, 384, 1);
    dispatch_assert_queue_V2(Property);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Aborting session %@", &v8, 0xCu);
    }

    v2[11] = 1;
    [v2 setConfigurationUpdateBlock:0];
    [v2 setTrafficSelectorUpdateBlock:0];
    [(NEIKEv2Session *)v2 cancelSendTimer];
    [(NEIKEv2Session *)v2 invalidateDPDTimer];
    result = [(NEIKEv2Session *)v2 fireWaitingRequestHandlerWithPacket:?];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enqueuePendingRequestContext:(void *)context
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (context)
  {
    Property = objc_getProperty(context, v3, 384, 1);
    dispatch_assert_queue_V2(Property);
    v6 = ne_log_obj();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        contextCopy = context;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@ Enqueueing %@", buf, 0x16u);
      }

      v8 = context[42];
      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = context[42];
        context[42] = v9;

        v8 = context[42];
      }

      [v8 addObject:v4];
      contextCopy2 = context;
      if (*(v4 + 9) == 1 && objc_opt_class())
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [contextCopy2 description];
        v14 = [v4 description];
        v15 = [v12 initWithFormat:@"com.apple.networkextension[%@ %@]", v13, v14];

        v16 = [objc_alloc(MEMORY[0x1E69D54A8]) initWithIdentifier:v15];
        v17 = v4[2];
        v4[2] = v16;

        [v4[2] acquireWithTimeout:0 handler:0.0];
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v4[2];
          *buf = 138412290;
          contextCopy = v19;
          _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "Took power assertion %@", buf, 0xCu);
        }
      }

      if ((contextCopy2[15] & 1) == 0)
      {
        [(NEIKEv2Session *)contextCopy2 sendPendingRequestContext];
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        contextCopy = "[NEIKEv2Session enqueuePendingRequestContext:]";
        _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null requestContext", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendPendingRequestContext
{
  v513 = *MEMORY[0x1E69E9840];
  if (self)
  {
    Property = objc_getProperty(self, a2, 384, 1);
    dispatch_assert_queue_V2(Property);
    if ((*(self + 15) & 1) == 0)
    {
      v4 = *(self + 336);
      firstObject = [v4 firstObject];

      if (firstObject)
      {
        if ((*(self + 11) & 1) == 0 || [firstObject requestType] == 7)
        {
          firstObject3 = firstObject;
LABEL_7:
          v7 = ne_log_obj();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = firstObject3;
            _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@ Dequeueing %@", buf, 0x16u);
          }

          [*(self + 336) removeObjectAtIndex:0];
          if (![*(self + 336) count])
          {
            objc_storeStrong((self + 336), 0);
          }

          *(firstObject3 + 8) = 1;
          *(self + 15) = 1;
          requestType = [firstObject3 requestType];
          if (requestType > 3)
          {
            if (requestType <= 5)
            {
              if (requestType == 4)
              {
                [(NEIKEv2Session *)self initiateMOBIKE:firstObject3];
LABEL_279:

                goto LABEL_306;
              }

              firstObject3 = firstObject3;
              v11 = objc_getProperty(self, v10, 384, 1);
              dispatch_assert_queue_V2(v11);

              if ((*(self + 15) & 1) == 0)
              {
                __assert_rtn("[NEIKEv2Session(Exchange) initiateNewChildSA:]", "NEIKEv2Exchange.m", 1523, "self.hasOutboundRequestInFlight");
              }

              v12 = *(firstObject3 + 3);
              v14 = objc_getProperty(self, v13, 352, 1);
              v15 = v14;
              if (v12)
              {
                if (v14)
                {
                  [(NEIKEv2ChildSA *)v12 setState:0 error:?];
                  [(NEIKEv2Session *)self reportState];
                  v18 = objc_getProperty(v12, v17, 48, 1);
                  proposals = [v18 proposals];
                  v20 = [(NEIKEv2Session *)self generateSPIForChild:v12 proposals:proposals];

                  if (v20)
                  {
                    if (([(NEIKEv2ChildSA *)v12 generateInitialValues]& 1) != 0)
                    {
                      v21 = v12;
                      objc_opt_self();
                      if ((v21[9] & 1) == 0)
                      {
                        v24 = ne_log_obj();
                        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136315138;
                          *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                          _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "%s called with null childSA.isInitiator", buf, 0xCu);
                        }

                        goto LABEL_268;
                      }

                      initOutbound = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initOutbound];
                      if (!initOutbound)
                      {
                        v261 = ne_log_obj();
                        if (os_log_type_enabled(v261, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 0;
                          _os_log_fault_impl(&dword_1BA83C000, v261, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initOutbound:] failed", buf, 2u);
                        }

                        v24 = 0;
                        goto LABEL_268;
                      }

                      v24 = initOutbound;
                      v25 = objc_getProperty(v21, v23, 48, 1);
                      mode = [v25 mode];

                      if (mode != 1 || [(NEIKEv2Packet *)v24 addNotification:0 data:?])
                      {
                        v27 = objc_alloc_init(NEIKEv2ChildSAPayload);
                        objc_setProperty_atomic(v24, v28, v27, 96);

                        v30 = objc_getProperty(v21, v29, 48, 1);
                        proposals2 = [v30 proposals];
                        v33 = objc_getProperty(v24, v32, 96, 1);
                        v35 = v33;
                        if (v33)
                        {
                          objc_setProperty_atomic(v33, v34, proposals2, 32);
                        }

                        v37 = objc_getProperty(v24, v36, 96, 1);
                        isValid = [(NEIKEv2Payload *)v37 isValid];

                        if (isValid)
                        {
                          if (![(NEIKEv2ChildSA *)v21 shouldGenerateNewDHKeys])
                          {
                            goto LABEL_34;
                          }

                          v40 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                          objc_setProperty_atomic(v24, v41, v40, 104);

                          obj = objc_getProperty(v21, v42, 48, 1);
                          proposals3 = [obj proposals];
                          firstObject2 = [proposals3 firstObject];
                          kemProtocol = [(NEIKEv2ChildSAProposal *)firstObject2 kemProtocol];
                          v48 = objc_getProperty(v24, v47, 104, 1);
                          v50 = v48;
                          if (v48)
                          {
                            objc_setProperty_atomic(v48, v49, kemProtocol, 32);
                          }

                          v52 = objc_getProperty(v21, v51, 112, 1);
                          v53 = v52;
                          if (v52)
                          {
                            v54 = *(v52 + 2);
                          }

                          else
                          {
                            v54 = 0;
                          }

                          v55 = v54;
                          v57 = objc_getProperty(v24, v56, 104, 1);
                          v59 = v57;
                          if (v57)
                          {
                            objc_setProperty_atomic(v57, v58, v55, 40);
                          }

                          v61 = objc_getProperty(v24, v60, 104, 1);
                          isValid2 = [(NEIKEv2Payload *)v61 isValid];

                          if ((isValid2 & 1) == 0)
                          {
                            v295 = ne_log_obj();
                            if (!os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_267;
                            }

                            *buf = 136315138;
                            *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                            v296 = "%s called with null packet.ke.isValid";
                          }

                          else
                          {
LABEL_34:
                            v63 = objc_alloc_init(NEIKEv2NoncePayload);
                            objc_setProperty_atomic(v24, v64, v63, 112);

                            v66 = objc_getProperty(v21, v65, 80, 1);
                            v68 = objc_getProperty(v24, v67, 112, 1);
                            v70 = v68;
                            if (v68)
                            {
                              objc_setProperty_atomic(v68, v69, v66, 32);
                            }

                            v72 = objc_getProperty(v24, v71, 112, 1);
                            isValid3 = [(NEIKEv2Payload *)v72 isValid];

                            if (isValid3)
                            {
                              v74 = objc_alloc_init(NEIKEv2InitiatorTrafficSelectorPayload);
                              objc_setProperty_atomic(v24, v75, v74, 128);

                              configuredInitiatorTrafficSelectors = [(NEIKEv2ChildSA *)v21 configuredInitiatorTrafficSelectors];
                              v79 = objc_getProperty(v24, v78, 128, 1);
                              v81 = v79;
                              if (v79)
                              {
                                objc_setProperty_atomic(v79, v80, configuredInitiatorTrafficSelectors, 32);
                              }

                              v83 = objc_getProperty(v24, v82, 128, 1);
                              isValid4 = [(NEIKEv2Payload *)v83 isValid];

                              if (isValid4)
                              {
                                v85 = objc_alloc_init(NEIKEv2ResponderTrafficSelectorPayload);
                                objc_setProperty_atomic(v24, v86, v85, 136);

                                configuredResponderTrafficSelectors = [(NEIKEv2ChildSA *)v21 configuredResponderTrafficSelectors];
                                v90 = objc_getProperty(v24, v89, 136, 1);
                                v92 = v90;
                                if (v90)
                                {
                                  objc_setProperty_atomic(v90, v91, configuredResponderTrafficSelectors, 32);
                                }

                                v94 = objc_getProperty(v24, v93, 136, 1);
                                isValid5 = [(NEIKEv2Payload *)v94 isValid];

                                if (isValid5)
                                {
                                  v24 = v24;
                                  v96 = v24;
                                  goto LABEL_269;
                                }

                                v295 = ne_log_obj();
                                if (!os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                                {
                                  goto LABEL_267;
                                }

                                *buf = 136315138;
                                *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                                v296 = "%s called with null packet.tsr.isValid";
                                goto LABEL_265;
                              }

                              v295 = ne_log_obj();
                              if (os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136315138;
                                *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                                v296 = "%s called with null packet.tsi.isValid";
                                goto LABEL_265;
                              }

LABEL_267:

LABEL_268:
                              v96 = 0;
LABEL_269:

                              if (v96)
                              {
                                *buf = MEMORY[0x1E69E9820];
                                *&buf[8] = 3221225472;
                                *&buf[16] = __47__NEIKEv2Session_Exchange__initiateNewChildSA___block_invoke;
                                v508 = &unk_1E7F083F0;
                                v386 = firstObject3;
                                selfCopy8 = v386;
                                selfCopy10 = self;
                                v511 = v21;
                                if ([NEIKEv2Session sendRequest:self retry:v96 replyHandler:buf]== -1)
                                {
                                  [v386 sendCallbackSuccess:0 session:self];
                                  v388 = objc_getProperty(self, v387, 352, 1);
                                  ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"create child SA", v389, v390, v391, v392, v393, v394, v395, v476);
                                  [(NEIKEv2IKESA *)v388 setState:ErrorFailedToSend error:?];

                                  [(NEIKEv2Session *)self reportState];
                                  [(NEIKEv2Session *)self resetAll];
                                }
                              }

                              else
                              {
                                v399 = ne_log_obj();
                                if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 0;
                                  _os_log_error_impl(&dword_1BA83C000, v399, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", buf, 2u);
                                }

                                [firstObject3 sendCallbackSuccess:0 session:self];
                                ErrorInternal = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v400, v401, v402, v403, v404, v405, v406, v476);
                                [(NEIKEv2ChildSA *)v21 setState:ErrorInternal error:?];

                                [(NEIKEv2Session *)self reportState];
                                [(NEIKEv2Session *)self resetChild:v21];
                              }

                              goto LABEL_276;
                            }

                            v295 = ne_log_obj();
                            if (!os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_267;
                            }

                            *buf = 136315138;
                            *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                            v296 = "%s called with null packet.nonce.isValid";
                          }
                        }

                        else
                        {
                          v295 = ne_log_obj();
                          if (!os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_267;
                          }

                          *buf = 136315138;
                          *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createChildSAForInitiatorChildSA:]";
                          v296 = "%s called with null packet.childSA.isValid";
                        }

LABEL_265:
                        v300 = v295;
                        v301 = 12;
                        goto LABEL_266;
                      }

                      v295 = ne_log_obj();
                      if (os_log_type_enabled(v295, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        v296 = "[packet addNotification:NEIKEv2NotifyTypeUseTransportMode] failed";
                        v300 = v295;
                        v301 = 2;
LABEL_266:
                        _os_log_fault_impl(&dword_1BA83C000, v300, OS_LOG_TYPE_FAULT, v296, buf, v301);
                        goto LABEL_267;
                      }

                      goto LABEL_267;
                    }

                    v248 = ne_log_obj();
                    if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1BA83C000, v248, OS_LOG_TYPE_ERROR, "Failed to generate local Child crypto values", buf, 2u);
                    }

                    [firstObject3 sendCallbackSuccess:0 session:self];
                    v211 = @"Failed to generate local Child crypto values";
                  }

                  else
                  {
                    v203 = ne_log_obj();
                    if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1BA83C000, v203, OS_LOG_TYPE_ERROR, "Failed to generate Child SA SPI", buf, 2u);
                    }

                    [firstObject3 sendCallbackSuccess:0 session:self];
                    v211 = @"Failed to generate Child SA SPI";
                  }

                  ErrorCrypto = NEIKEv2CreateErrorCrypto(v211, v204, v205, v206, v207, v208, v209, v210, v476);
                  [(NEIKEv2ChildSA *)v12 setState:ErrorCrypto error:?];

                  [(NEIKEv2Session *)self reportState];
                  [(NEIKEv2Session *)self resetChild:v12];
LABEL_277:

LABEL_278:
                  goto LABEL_279;
                }

                v256 = ne_log_obj();
                if (!os_log_type_enabled(v256, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_158;
                }

                *buf = 136315138;
                *&buf[4] = "[NEIKEv2Session(Exchange) initiateNewChildSA:]";
                v323 = "%s called with null ikeSA";
              }

              else
              {
                v256 = ne_log_obj();
                if (!os_log_type_enabled(v256, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_158;
                }

                *buf = 136315138;
                *&buf[4] = "[NEIKEv2Session(Exchange) initiateNewChildSA:]";
                v323 = "%s called with null childSA";
              }

              goto LABEL_228;
            }

            if (requestType == 6)
            {
              firstObject3 = firstObject3;
              v141 = objc_getProperty(self, v140, 384, 1);
              dispatch_assert_queue_V2(v141);

              v142 = [(NEIKEv2Session *)self copyChildWithID:?];
              if (v142)
              {
                v12 = v142;
                if (*(v142 + 4) == 3)
                {
                  [firstObject3 sendCallbackSuccess:1 session:self];
                }

                else
                {
                  v153 = ne_log_large_obj();
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v12;
                    _os_log_impl(&dword_1BA83C000, v153, OS_LOG_TYPE_DEFAULT, "%@ initiate delete Child SA %@", buf, 0x16u);
                  }

                  v154 = *(firstObject3 + 4);
                  [(NEIKEv2ChildSA *)v12 setState:v154 error:?];

                  [(NEIKEv2Session *)self reportState];
                  v157 = objc_getProperty(v12, v156, 56, 1);
                  v159 = v157;
                  if (v157)
                  {
                    v157 = objc_getProperty(v157, v158, 80, 1);
                  }

                  v160 = v157;
                  v162 = objc_getProperty(v12, v161, 56, 1);
                  v164 = v162;
                  if (v162)
                  {
                    v162 = objc_getProperty(v162, v163, 88, 1);
                  }

                  v165 = v162;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __50__NEIKEv2Session_Exchange__initiateDeleteChildSA___block_invoke;
                  v508 = &unk_1E7F083C8;
                  selfCopy8 = self;
                  v12 = v12;
                  selfCopy10 = v12;
                  v511 = firstObject3;
                  [(NEIKEv2Session *)self initiateDeleteChildSPI:v160 remoteSPI:v165 deleteCompletionCallback:buf];
                }
              }

              else
              {
                v409 = ne_log_obj();
                if (os_log_type_enabled(v409, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "[NEIKEv2Session(Exchange) initiateDeleteChildSA:]";
                  _os_log_fault_impl(&dword_1BA83C000, v409, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
                }

                [firstObject3 sendCallbackSuccess:0 session:self];
                v12 = 0;
              }

              goto LABEL_278;
            }

            if (requestType == 7)
            {
              v131 = objc_getProperty(self, v9, 352, 1);
              if (v131 && v131[6] == 2)
              {
                [(NEIKEv2Session *)self initiateDelete:firstObject3];
              }

              else
              {
                [firstObject3 sendCallbackSuccess:0 session:self];
              }

              goto LABEL_279;
            }

LABEL_81:
            v139 = ne_log_obj();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
            {
              v293 = NEIKEv2RequestContextTypeString([firstObject3 requestType]);
              *buf = 138412290;
              *&buf[4] = v293;
              _os_log_fault_impl(&dword_1BA83C000, v139, OS_LOG_TYPE_FAULT, "bad request type %@", buf, 0xCu);
            }

            goto LABEL_279;
          }

          if (requestType != 1)
          {
            if (requestType != 2)
            {
              if (requestType != 3)
              {
                goto LABEL_81;
              }

              v97 = firstObject3;
              v99 = objc_getProperty(self, v98, 384, 1);
              dispatch_assert_queue_V2(v99);

              if ((*(self + 15) & 1) == 0)
              {
                __assert_rtn("[NEIKEv2Session(Exchange) initiateInformational:]", "NEIKEv2Exchange.m", 308, "self.hasOutboundRequestInFlight");
              }

              v100 = ne_log_obj();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v97;
                _os_log_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_INFO, "%@ Sending %@", buf, 0x16u);
              }

              v102 = &OBJC_IVAR___NEFilterFlow__direction;
              if (!v97[6] || (v103 = objc_getProperty(self, v101, 352, 1)) == 0 || (v104 = v103[6], v103, v104 != 2))
              {
                [v97 sendCallbackSuccess:0 session:self];
                goto LABEL_305;
              }

              v106 = objc_getProperty(self, v105, 352, 1);
              if (!v106 || (v107 = v106[11], v106, (v107 & 1) == 0))
              {
                objc_opt_self();
                initOutbound2 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initOutbound];
                v109 = initOutbound2;
                if (initOutbound2)
                {
                  v417 = initOutbound2;
                }

                else
                {
                  v418 = ne_log_obj();
                  if (os_log_type_enabled(v418, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_1BA83C000, v418, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
                  }
                }

                v128 = v109;
LABEL_313:

                if (v128)
                {
                  v419 = *(v97 + 4);
                  v420 = [v419 count];

                  if (v420)
                  {
                    v421 = v128;
                    v498 = 0u;
                    v499 = 0u;
                    *v496 = 0u;
                    v497 = 0u;
                    objc = *(v97 + 4);
                    v422 = [objc countByEnumeratingWithState:v496 objects:buf count:16];
                    if (v422)
                    {
                      v423 = v422;
                      v424 = *v497;
                      while (2)
                      {
                        v425 = 0;
                        do
                        {
                          if (*v497 != v424)
                          {
                            objc_enumerationMutation(objc);
                          }

                          v426 = *(*&v496[8] + 8 * v425);
                          v427 = objc_alloc_init(NEIKEv2NotifyPayload);
                          notifyStatus = [v426 notifyStatus];
                          if (v427)
                          {
                            v427->_notifyType = notifyStatus;
                            notifyData = [v426 notifyData];
                            objc_setProperty_atomic(v427, v430, notifyData, 40);
                          }

                          else
                          {
                            notifyData = [v426 notifyData];
                          }

                          if (![(NEIKEv2Packet *)v421 addNotifyPayload:v427])
                          {
                            v451 = ne_log_obj();
                            if (os_log_type_enabled(v451, OS_LOG_TYPE_FAULT))
                            {
                              *v492 = 0;
                              _os_log_fault_impl(&dword_1BA83C000, v451, OS_LOG_TYPE_FAULT, "[sendKeepalive addNotifyPayload:notifyPayload] failed", v492, 2u);
                            }

                            [v97 sendCallbackSuccess:0 session:self];
                            v453 = objc_getProperty(self, v452, 352, 1);
                            v461 = NEIKEv2CreateErrorInternal(@"[sendKeepalive addNotifyPayload:notifyPayload] failed", v454, v455, v456, v457, v458, v459, v460, v476);
                            [(NEIKEv2IKESA *)v453 setState:v461 error:?];

                            [(NEIKEv2Session *)self reportState];
                            [(NEIKEv2Session *)self resetAll];

                            v128 = v421;
                            goto LABEL_257;
                          }

                          ++v425;
                        }

                        while (v423 != v425);
                        v431 = [objc countByEnumeratingWithState:v496 objects:buf count:16];
                        v423 = v431;
                        if (v431)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v102 = &OBJC_IVAR___NEFilterFlow__direction;
                    v128 = v421;
                  }

                  v432 = *(v97 + 5);
                  v433 = *(v97 + v102[776]);
                  Error = NEIKEv2CreateError(3);
                  *v492 = MEMORY[0x1E69E9820];
                  *&v492[8] = 3221225472;
                  *&v493 = __50__NEIKEv2Session_Exchange__initiateInformational___block_invoke;
                  *(&v493 + 1) = &unk_1E7F08198;
                  *&v494 = self;
                  v435 = v97;
                  *(&v494 + 1) = v435;
                  v436 = [(NEIKEv2Session *)self sendRequest:v128 retryIntervalInMilliseconds:v432 maxRetries:v433 timeoutError:Error resend:0 sendMessageID:0xFFFFFFFFLL sendCompletionHandler:0 replyHandler:v492];

                  if (v436 == -1)
                  {
                    [v435 sendCallbackSuccess:0 session:self];
                    v465 = objc_getProperty(self, v464, 352, 1);
                    v473 = NEIKEv2CreateErrorFailedToSend(@"informational packet", v466, v467, v468, v469, v470, v471, v472, v477);
                    [(NEIKEv2IKESA *)v465 setState:v473 error:?];

                    [(NEIKEv2Session *)self reportState];
                    [(NEIKEv2Session *)self resetAll];
                  }

                  else
                  {
                    v437 = ne_log_obj();
                    if (os_log_type_enabled(v437, OS_LOG_TYPE_INFO))
                    {
                      *v501 = 138412802;
                      selfCopy3 = self;
                      v503 = 2112;
                      v504 = v435;
                      v505 = 1024;
                      v506 = v436;
                      _os_log_impl(&dword_1BA83C000, v437, OS_LOG_TYPE_INFO, "%@ Sent %@ with message ID %d", v501, 0x1Cu);
                    }
                  }
                }

                else
                {
                  v438 = ne_log_obj();
                  if (os_log_type_enabled(v438, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = self;
                    _os_log_error_impl(&dword_1BA83C000, v438, OS_LOG_TYPE_ERROR, "%@ Failed to create informational packet", buf, 0xCu);
                  }

                  [v97 sendCallbackSuccess:0 session:self];
                  v440 = objc_getProperty(self, v439, 352, 1);
                  v448 = NEIKEv2CreateErrorInternal(@"Failed to create informational packet", v441, v442, v443, v444, v445, v446, v447, v476);
                  [(NEIKEv2IKESA *)v440 setState:v448 error:?];

                  [(NEIKEv2Session *)self reportState];
                  [(NEIKEv2Session *)self resetAll];
                }

                goto LABEL_257;
              }

              v109 = objc_getProperty(self, v108, 352, 1);
              objc_opt_self();
              initOutbound3 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initOutbound];
              if (!initOutbound3)
              {
                v118 = ne_log_obj();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v118, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
                }

                v128 = 0;
                goto LABEL_207;
              }

              initiatorSPI = [(NEIKEv2IKESA *)v109 initiatorSPI];
              responderSPI = [(NEIKEv2IKESA *)v109 responderSPI];
              if (v109)
              {
                v116 = objc_getProperty(v109, v114, 64, 1);
              }

              else
              {
                v116 = 0;
              }

              v117 = v116;
              v118 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v117];

              if ([(NEIKEv2Packet *)initOutbound3 addNotification:v118 data:?])
              {
                initiatorSPI2 = [(NEIKEv2IKESA *)v109 initiatorSPI];
                responderSPI2 = [(NEIKEv2IKESA *)v109 responderSPI];
                v124 = v97;
                if (v109)
                {
                  v125 = objc_getProperty(v109, v122, 72, 1);
                }

                else
                {
                  v125 = 0;
                }

                v126 = v125;
                v127 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v126];

                if (![(NEIKEv2Packet *)initOutbound3 addNotification:v127 data:?])
                {
                  v303 = ne_log_obj();
                  v97 = v124;
                  v102 = &OBJC_IVAR___NEFilterFlow__direction;
                  if (os_log_type_enabled(v303, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_1BA83C000, v303, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed", buf, 2u);
                  }

                  v128 = 0;
                  goto LABEL_206;
                }

                v128 = initOutbound3;
                v97 = v124;
              }

              else
              {
                v127 = ne_log_obj();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v127, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
                }

                v128 = 0;
              }

              v102 = &OBJC_IVAR___NEFilterFlow__direction;
LABEL_206:

LABEL_207:
              goto LABEL_313;
            }

            firstObject3 = firstObject3;
            v144 = objc_getProperty(self, v143, 384, 1);
            dispatch_assert_queue_V2(v144);

            if ((*(self + 15) & 1) == 0)
            {
              __assert_rtn("[NEIKEv2Session(Exchange) initiateRekeyChildSA:]", "NEIKEv2Exchange.m", 2000, "self.hasOutboundRequestInFlight");
            }

            v12 = objc_getProperty(self, v145, 352, 1);
            v146 = [(NEIKEv2Session *)self copyChildWithID:?];
            v15 = v146;
            if (v12)
            {
              if (v146)
              {
                isRekeying = [(NEIKEv2ChildSA *)v146 isRekeying];
                v149 = ne_log_large_obj();
                v150 = v149;
                if (isRekeying)
                {
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    *&buf[4] = self;
                    *&buf[12] = 2112;
                    *&buf[14] = v15;
                    _os_log_debug_impl(&dword_1BA83C000, v150, OS_LOG_TYPE_DEBUG, "%@ Child SA %@ already rekeying, skipping", buf, 0x16u);
                  }

                  v151 = firstObject3;
                  v152 = 1;
                  goto LABEL_159;
                }

                if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_1BA83C000, v150, OS_LOG_TYPE_INFO, "%@ Rekey Child SA %@", buf, 0x16u);
                }

                v213 = objc_getProperty(v15, v212, 56, 1);
                if (!v213)
                {
                  v256 = ne_log_obj();
                  if (!os_log_type_enabled(v256, OS_LOG_TYPE_FAULT))
                  {
LABEL_158:

                    v151 = firstObject3;
                    v152 = 0;
LABEL_159:
                    [v151 sendCallbackSuccess:v152 session:self];
                    goto LABEL_277;
                  }

                  *buf = 136315138;
                  *&buf[4] = "[NEIKEv2Session(Exchange) initiateRekeyChildSA:]";
                  v323 = "%s called with null childSA.chosenProposal";
LABEL_228:
                  _os_log_fault_impl(&dword_1BA83C000, v256, OS_LOG_TYPE_FAULT, v323, buf, 0xCu);
                  goto LABEL_158;
                }

                v215 = objc_getProperty(v15, v214, 56, 1);
                v217 = v215;
                if (v215)
                {
                  v215 = objc_getProperty(v215, v216, 80, 1);
                }

                v96 = v215;

                v219 = objc_getProperty(v15, v218, 56, 1);
                v221 = v219;
                if (v219)
                {
                  v219 = objc_getProperty(v219, v220, 88, 1);
                }

                v222 = v219;

                v224 = objc_getProperty(v15, v223, 48, 1);
                proposals4 = [v224 proposals];

                objb = proposals4;
                if ([proposals4 count] == 1 && (v227 = objc_getProperty(v15, v226, 48, 1), v228 = objc_msgSend(v227, "opportunisticPFS"), v227, (v228 & 1) == 0))
                {
                  v262 = [objb objectAtIndexedSubscript:0];
                  copyForRekey = [(NEIKEv2ChildSAProposal *)v262 copyForRekey];

                  if (copyForRekey)
                  {
                    copyForRekey[8] = 1;
                  }

                  *buf = copyForRekey;
                  v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
                  objc_setProperty_atomic(v15, v263, v232, 176);
                }

                else
                {
                  v480 = v222;
                  v483 = v96;
                  selfa = v12;
                  v487 = firstObject3;
                  v229 = objc_getProperty(v15, v226, 56, 1);
                  copyForRekey2 = [(NEIKEv2ChildSAProposal *)v229 copyForRekey];
                  copyForRekey = [(NEIKEv2ChildSAProposal *)copyForRekey2 copyWithoutKEM];

                  v232 = objc_alloc_init(MEMORY[0x1E695DFA0]);
                  *v492 = 0u;
                  v493 = 0u;
                  v494 = 0u;
                  v495 = 0u;
                  v233 = objb;
                  v234 = [v233 countByEnumeratingWithState:v492 objects:buf count:16];
                  if (v234)
                  {
                    v235 = v234;
                    v236 = *v493;
                    do
                    {
                      for (i = 0; i != v235; ++i)
                      {
                        if (*v493 != v236)
                        {
                          objc_enumerationMutation(v233);
                        }

                        copyForRekey3 = [(NEIKEv2ChildSAProposal *)*(*&v492[8] + 8 * i) copyForRekey];
                        copyWithoutKEM = [(NEIKEv2ChildSAProposal *)copyForRekey3 copyWithoutKEM];
                        if ([copyWithoutKEM isEqual:copyForRekey])
                        {
                          v240 = [v232 count];
                          if (copyForRekey3)
                          {
                            copyForRekey3[8] = v240 + 1;
                          }

                          [v232 addObject:copyForRekey3];
                        }
                      }

                      v235 = [v233 countByEnumeratingWithState:v492 objects:buf count:16];
                    }

                    while (v235);
                  }

                  v242 = objc_getProperty(v15, v241, 48, 1);
                  opportunisticPFS = [v242 opportunisticPFS];

                  v12 = selfa;
                  firstObject3 = v487;
                  v222 = v480;
                  v96 = v483;
                  if (opportunisticPFS)
                  {
                    v244 = [v232 count];
                    if (copyForRekey)
                    {
                      copyForRekey[8] = v244 + 1;
                    }

                    [v232 addObject:copyForRekey];
                  }

                  if ([v232 count])
                  {
                    array = [v232 array];
                    v246 = [array copy];
                    objc_setProperty_atomic(v15, v247, v246, 176);
                  }
                }

                v265 = objc_getProperty(v15, v264, 176, 1);
                if (!v265)
                {
                  v283 = ne_log_obj();
                  if (os_log_type_enabled(v283, OS_LOG_TYPE_FAULT))
                  {
                    *v496 = 136315138;
                    *&v496[4] = "[NEIKEv2Session(Exchange) initiateRekeyChildSA:]";
                    _os_log_fault_impl(&dword_1BA83C000, v283, OS_LOG_TYPE_FAULT, "%s called with null childSA.rekeyRequestProposals", v496, 0xCu);
                  }

                  [firstObject3 sendCallbackSuccess:0 session:self];
                  goto LABEL_224;
                }

                v267 = objc_getProperty(v15, v266, 176, 1);
                v268 = [(NEIKEv2Session *)self generateSPIForChild:v15 proposals:v267];

                if (v268)
                {
                  if (([(NEIKEv2ChildSA *)v15 generateInitialValues]& 1) != 0)
                  {
                    v269 = [NEIKEv2CreateChildPacket createRekeyRequestChildSA:v15];
                    if (v269)
                    {
                      *v496 = MEMORY[0x1E69E9820];
                      *&v496[8] = 3221225472;
                      *&v497 = __49__NEIKEv2Session_Exchange__initiateRekeyChildSA___block_invoke;
                      *(&v497 + 1) = &unk_1E7F084E0;
                      v270 = firstObject3;
                      *&v498 = v270;
                      *(&v498 + 1) = self;
                      *&v499 = v15;
                      *(&v499 + 1) = v96;
                      v500 = v222;
                      if ([NEIKEv2Session sendRequest:self retry:v269 replyHandler:v496]== -1)
                      {
                        [v270 sendCallbackSuccess:0 session:self];
                        v272 = objc_getProperty(self, v271, 352, 1);
                        v280 = NEIKEv2CreateErrorFailedToSend(@"initiator rekey child SA", v273, v274, v275, v276, v277, v278, v279, v476);
                        [(NEIKEv2IKESA *)v272 setState:v280 error:?];

                        [(NEIKEv2Session *)self reportState];
                        [(NEIKEv2Session *)self resetAll];
                      }
                    }

                    else
                    {
                      v313 = ne_log_obj();
                      if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
                      {
                        *v496 = 0;
                        _os_log_error_impl(&dword_1BA83C000, v313, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet", v496, 2u);
                      }

                      [firstObject3 sendCallbackSuccess:0 session:self];
                      v321 = NEIKEv2CreateErrorInternal(@"Failed to create Create Child SA packet", v314, v315, v316, v317, v318, v319, v320, v476);
                      [(NEIKEv2ChildSA *)v15 setState:v321 error:?];

                      [(NEIKEv2Session *)self reportState];
                      [(NEIKEv2Session *)self resetChild:v15];
                    }

                    goto LABEL_224;
                  }

                  v297 = ne_log_obj();
                  if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
                  {
                    *v496 = 0;
                    _os_log_error_impl(&dword_1BA83C000, v297, OS_LOG_TYPE_ERROR, "Failed to generate local Child crypto values", v496, 2u);
                  }

                  [firstObject3 sendCallbackSuccess:0 session:self];
                  v292 = @"Failed to generate local Child crypto values";
                }

                else
                {
                  v284 = ne_log_obj();
                  if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
                  {
                    *v496 = 0;
                    _os_log_error_impl(&dword_1BA83C000, v284, OS_LOG_TYPE_ERROR, "Failed to generate Child SA SPI", v496, 2u);
                  }

                  [firstObject3 sendCallbackSuccess:0 session:self];
                  v292 = @"Failed to generate Child SA SPI";
                }

                v298 = NEIKEv2CreateErrorCrypto(v292, v285, v286, v287, v288, v289, v290, v291, v476);
                [(NEIKEv2ChildSA *)v15 setState:v298 error:?];

                [(NEIKEv2Session *)self reportState];
                [(NEIKEv2Session *)self resetChild:v15];
LABEL_224:

LABEL_276:
                goto LABEL_277;
              }

              v411 = v12;
              v412 = firstObject3;
              v413 = ne_log_obj();
              if (!os_log_type_enabled(v413, OS_LOG_TYPE_FAULT))
              {
LABEL_299:

                firstObject3 = v412;
                [v412 sendCallbackSuccess:0 session:self];
                v12 = v411;
                goto LABEL_277;
              }

              *buf = 136315138;
              *&buf[4] = "[NEIKEv2Session(Exchange) initiateRekeyChildSA:]";
              v414 = "%s called with null childSA";
            }

            else
            {
              v411 = 0;
              v412 = firstObject3;
              v413 = ne_log_obj();
              if (!os_log_type_enabled(v413, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_299;
              }

              *buf = 136315138;
              *&buf[4] = "[NEIKEv2Session(Exchange) initiateRekeyChildSA:]";
              v414 = "%s called with null ikeSA";
            }

            _os_log_fault_impl(&dword_1BA83C000, v413, OS_LOG_TYPE_FAULT, v414, buf, 0xCu);
            goto LABEL_299;
          }

          v97 = firstObject3;
          v133 = objc_getProperty(self, v132, 384, 1);
          dispatch_assert_queue_V2(v133);

          if ((*(self + 15) & 1) == 0)
          {
            __assert_rtn("[NEIKEv2Session(Exchange) initiateRekeyIKESA:]", "NEIKEv2Exchange.m", 2553, "self.hasOutboundRequestInFlight");
          }

          v135 = objc_getProperty(self, v134, 352, 1);
          v128 = v135;
          if (!v135)
          {
            v410 = ne_log_obj();
            if (os_log_type_enabled(v410, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              *&buf[4] = "[NEIKEv2Session(Exchange) initiateRekeyIKESA:]";
              _os_log_fault_impl(&dword_1BA83C000, v410, OS_LOG_TYPE_FAULT, "%s called with null oldIKESA", buf, 0xCu);
            }

            v137 = v97;
            v138 = 0;
            goto LABEL_80;
          }

          if (v135[2].isa)
          {
            v136 = ne_log_obj();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_1BA83C000, v136, OS_LOG_TYPE_DEBUG, "IKE SA already rekeying, skipping (initiate rekey)", buf, 2u);
            }

            v137 = v97;
            v138 = 1;
LABEL_80:
            [v137 sendCallbackSuccess:v138 session:self];
LABEL_257:

LABEL_305:
            goto LABEL_306;
          }

          LOBYTE(v135[2].isa) = 1;
          v166 = [(NEIKEv2IKESA *)v135 copyForRekeyAsInitiator:?];
          v168 = v166;
          if (v166)
          {
            if (([(NEIKEv2IKESA *)v166 generateInitialValues]& 1) != 0)
            {
              v169 = v168;
              objc_opt_self();
              v171 = objc_getProperty(v169, v170, 96, 1);

              if (!v171)
              {
                selfCopy7 = ne_log_obj();
                if (os_log_type_enabled(selfCopy7, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyIKESAForInitiator:]";
                  _os_log_fault_impl(&dword_1BA83C000, selfCopy7, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.chosenProposal", buf, 0xCu);
                }

                goto LABEL_248;
              }

              initOutbound4 = [(NEIKEv2Packet *)[NEIKEv2CreateChildPacket alloc] initOutbound];
              if (!initOutbound4)
              {
                v302 = ne_log_obj();
                if (os_log_type_enabled(v302, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v302, OS_LOG_TYPE_FAULT, "[[NEIKEv2CreateChildPacket alloc] initOutbound:] failed", buf, 2u);
                }

                selfCopy7 = 0;
                goto LABEL_248;
              }

              v173 = initOutbound4;
              v174 = objc_alloc_init(NEIKEv2IKESAPayload);
              self = v173;
              objc_setProperty_atomic(v173, v175, v174, 88);

              v177 = objc_getProperty(v169, v176, 96, 1);
              v179 = objc_getProperty(v169, v178, 32, 1);
              v486 = v179;
              obja = v169;
              if (v177)
              {
                v180 = objc_alloc_init(NEIKEv2IKESAProposal);
                v182 = v180;
                if (v180)
                {
                  v180->_proposalNumber = 1;
                  objc_setProperty_atomic(v180, v181, v179, 88);
                }

                v181 = [objc_getProperty(v177 v181];
                if (v182)
                {
                  objc_setProperty_atomic(v182, v183, v181, 104);
                }

                v185 = [objc_getProperty(v177 v185];
                if (v182)
                {
                  objc_setProperty_atomic(v182, v186, v185, 112);
                }

                v188 = [objc_getProperty(v177 v188];
                if (v182)
                {
                  objc_setProperty_atomic(v182, v189, v188, 120);
                }

                v191 = [objc_getProperty(v177 v191];
                if (v182)
                {
                  objc_setProperty_atomic(v182, v192, v191, 128);
                }

                v482 = v182;

                chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)v177 chosenAdditionalKEMProtocols];

                if (chosenAdditionalKEMProtocols)
                {
                  chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)v177 chosenAdditionalKEMProtocols];
                  v196 = [chosenAdditionalKEMProtocols2 count];
                  v197 = [objc_getProperty(v177 v197];

                  if (v196 == v197)
                  {
                    v200 = objc_alloc(MEMORY[0x1E695DF20]);
                    chosenAdditionalKEMProtocols3 = [(NEIKEv2IKESAProposal *)v177 chosenAdditionalKEMProtocols];
                    v202 = [v200 initWithDictionary:chosenAdditionalKEMProtocols3 copyItems:1];
LABEL_219:
                    v179 = v486;
                    v182 = v482;
                    [(NEIKEv2IKESAProposal *)v482 setChosenAdditionalKEMProtocols:v202];

                    goto LABEL_232;
                  }

                  if (objc_getProperty(v177, v199, 136, 1))
                  {
                    v479 = v97;
                    v481 = v168;
                    v478 = v128;
                    chosenAdditionalKEMProtocols3 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    *v496 = 0u;
                    v497 = 0u;
                    v498 = 0u;
                    v499 = 0u;
                    v305 = objc_getProperty(v177, v304, 136, 1);
                    v306 = [v305 countByEnumeratingWithState:v496 objects:buf count:16];
                    if (v306)
                    {
                      v307 = v306;
                      v308 = *v497;
                      do
                      {
                        for (j = 0; j != v307; ++j)
                        {
                          if (*v497 != v308)
                          {
                            objc_enumerationMutation(v305);
                          }

                          v310 = *(*&v496[8] + 8 * j);
                          chosenAdditionalKEMProtocols4 = [(NEIKEv2IKESAProposal *)v177 chosenAdditionalKEMProtocols];
                          v312 = [chosenAdditionalKEMProtocols4 objectForKeyedSubscript:v310];
                          [chosenAdditionalKEMProtocols3 setObject:v312 forKeyedSubscript:v310];
                        }

                        v307 = [v305 countByEnumeratingWithState:v496 objects:buf count:16];
                      }

                      while (v307);
                    }

                    v202 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:chosenAdditionalKEMProtocols3 copyItems:1];
                    v128 = v478;
                    v97 = v479;
                    v168 = v481;
                    goto LABEL_219;
                  }

                  v179 = v486;
                }
              }

              else
              {
                v182 = 0;
              }

LABEL_232:

              *v496 = v182;
              v324 = [MEMORY[0x1E695DEC8] arrayWithObjects:v496 count:1];
              v326 = objc_getProperty(self, v325, 88, 1);
              v328 = v326;
              if (v326)
              {
                objc_setProperty_atomic(v326, v327, v324, 32);
              }

              v330 = objc_getProperty(self, v329, 88, 1);
              isValid6 = [(NEIKEv2Payload *)v330 isValid];

              if (isValid6)
              {
                v332 = objc_alloc_init(NEIKEv2NoncePayload);
                objc_setProperty_atomic(self, v333, v332, 112);

                v335 = objc_getProperty(obja, v334, 128, 1);
                v337 = objc_getProperty(self, v336, 112, 1);
                v339 = v337;
                if (v337)
                {
                  objc_setProperty_atomic(v337, v338, v335, 32);
                }

                v341 = objc_getProperty(self, v340, 112, 1);
                isValid7 = [(NEIKEv2Payload *)v341 isValid];

                if ((isValid7 & 1) == 0)
                {
                  selfCopy7 = self;
                  v384 = ne_log_obj();
                  if (os_log_type_enabled(v384, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyIKESAForInitiator:]";
                    _os_log_fault_impl(&dword_1BA83C000, v384, OS_LOG_TYPE_FAULT, "%s called with null packet.nonce.isValid", buf, 0xCu);
                  }

                  v260 = 0;
                  v169 = obja;
                  goto LABEL_249;
                }

                v343 = objc_alloc_init(NEIKEv2KeyExchangePayload);
                objc_setProperty_atomic(self, v344, v343, 104);

                v346 = objc_getProperty(obja, v345, 96, 1);
                kemProtocol2 = [(NEIKEv2IKESAProposal *)v346 kemProtocol];
                v350 = objc_getProperty(self, v349, 104, 1);
                v352 = v350;
                if (v350)
                {
                  objc_setProperty_atomic(v350, v351, kemProtocol2, 32);
                }

                v169 = obja;
                v354 = objc_getProperty(obja, v353, 160, 1);
                v355 = v354;
                if (v354)
                {
                  v356 = *(v354 + 2);
                }

                else
                {
                  v356 = 0;
                }

                v357 = v356;
                v359 = objc_getProperty(self, v358, 104, 1);
                v361 = v359;
                if (v359)
                {
                  objc_setProperty_atomic(v359, v360, v357, 40);
                }

                v363 = objc_getProperty(self, v362, 104, 1);
                isValid8 = [(NEIKEv2Payload *)v363 isValid];

                if (isValid8)
                {
                  selfCopy7 = self;
                  v260 = selfCopy7;
                  goto LABEL_249;
                }

                selfCopy7 = self;
                v365 = ne_log_obj();
                if (!os_log_type_enabled(v365, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_247;
                }

                *buf = 136315138;
                *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyIKESAForInitiator:]";
                v385 = "%s called with null packet.ke.isValid";
              }

              else
              {
                selfCopy7 = self;
                v365 = ne_log_obj();
                v169 = obja;
                if (!os_log_type_enabled(v365, OS_LOG_TYPE_FAULT))
                {
LABEL_247:

LABEL_248:
                  v260 = 0;
LABEL_249:

                  if (v260)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_2;
                    v508 = &unk_1E7F08530;
                    selfCopy8 = self;
                    v366 = v97;
                    selfCopy10 = v366;
                    v511 = v169;
                    v512 = v128;
                    if ([NEIKEv2Session sendRequest:self retry:v260 replyHandler:buf]== -1)
                    {
                      [v366 sendCallbackSuccess:0 session:self];
                      v368 = objc_getProperty(self, v367, 352, 1);
                      v376 = NEIKEv2CreateErrorFailedToSend(@"initiator rekey IKE SA", v369, v370, v371, v372, v373, v374, v375, v476);
                      [(NEIKEv2IKESA *)v368 setState:v376 error:?];

                      [(NEIKEv2Session *)self reportState];
                      [(NEIKEv2Session *)self resetAll];
                    }
                  }

                  else
                  {
                    v379 = ne_log_obj();
                    if (os_log_type_enabled(v379, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_1BA83C000, v379, OS_LOG_TYPE_ERROR, "Failed to create Create Child SA packet (initiate rekey)", buf, 2u);
                    }

                    v380 = [NEIKEv2DeleteIKEContext alloc];
                    v382 = objc_getProperty(self, v381, 384, 1);
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_565;
                    v508 = &unk_1E7F081C0;
                    selfCopy8 = v97;
                    selfCopy10 = self;
                    v383 = [(NEIKEv2DeleteIKEContext *)&v380->super.super.isa initDeleteIKEWithResponse:v382 callbackQueue:buf callback:?];

                    [(NEIKEv2Session *)self initiateDelete:v383];
                    v260 = 0;
                  }

                  goto LABEL_256;
                }

                *buf = 136315138;
                *&buf[4] = "+[NEIKEv2CreateChildPacket(Exchange) createRekeyIKESAForInitiator:]";
                v385 = "%s called with null packet.ikeSA.isValid";
              }

              _os_log_fault_impl(&dword_1BA83C000, v365, OS_LOG_TYPE_FAULT, v385, buf, 0xCu);
              goto LABEL_247;
            }

            v257 = ne_log_obj();
            if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v257, OS_LOG_TYPE_ERROR, "Failed to generate local IKE crypto values", buf, 2u);
            }

            v252 = [NEIKEv2DeleteIKEContext alloc];
            v254 = objc_getProperty(self, v258, 384, 1);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            v255 = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke_561;
          }

          else
          {
            v251 = ne_log_obj();
            if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v251, OS_LOG_TYPE_ERROR, "Failed to create valid IKE SA (initiate rekey)", buf, 2u);
            }

            v252 = [NEIKEv2DeleteIKEContext alloc];
            v254 = objc_getProperty(self, v253, 384, 1);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            v255 = __47__NEIKEv2Session_Exchange__initiateRekeyIKESA___block_invoke;
          }

          *&buf[16] = v255;
          v508 = &unk_1E7F081C0;
          selfCopy8 = v97;
          selfCopy10 = self;
          v259 = [(NEIKEv2DeleteIKEContext *)&v252->super.super.isa initDeleteIKEWithResponse:v254 callbackQueue:buf callback:?];

          [(NEIKEv2Session *)self initiateDelete:v259];
          v260 = selfCopy8;
LABEL_256:

          goto LABEL_257;
        }

        while (1)
        {
          v129 = ne_log_obj();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = firstObject;
            _os_log_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_INFO, "%@ Session aborted, skip request %@", buf, 0x16u);
          }

          [*(self + 336) removeObjectAtIndex:0];
          [firstObject sendCallbackSuccess:0 session:self];
          v130 = *(self + 336);
          firstObject3 = [v130 firstObject];

          if (!firstObject3)
          {
            break;
          }

          firstObject = firstObject3;
          if ([firstObject3 requestType] == 7)
          {
            goto LABEL_7;
          }
        }

        objc_storeStrong((self + 336), 0);
      }
    }
  }

LABEL_306:
  v415 = *MEMORY[0x1E69E9840];
}

- (void)cancelSendTimer
{
  if (self)
  {
    if (objc_getProperty(self, a2, 312, 1))
    {
      Property = objc_getProperty(self, v3, 312, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(self, v5, 0, 312);
    }

    if (objc_getProperty(self, v3, 376, 1))
    {
      v7 = objc_getProperty(self, v6, 376, 1);
      if (v7)
      {
        *(v7 + 24) = xmmword_1BAA4E550;
        *(v7 + 3) = -1;
        *(v7 + 2) = 0;
        *(v7 + 5) = 0;
        *(v7 + 6) = 30;
        *(v7 + 7) = 0;
        *(v7 + 8) = 1000;
        *(v7 + 4) = 0;
      }
    }

    if (objc_getProperty(self, v6, 216, 1))
    {
      v10 = objc_getProperty(self, v8, 216, 1);
      objc_setProperty_atomic_copy(self, v9, 0, 216);
      v10[2](v10, 0);
    }
  }
}

- (void)invalidateDPDTimer
{
  if (objc_getProperty(self, a2, 288, 1))
  {
    [objc_getProperty(self v3];
    objc_setProperty_atomic(self, v4, 0, 288);
  }

  if (objc_getProperty(self, v3, 296, 1))
  {
    Property = objc_getProperty(self, v5, 296, 1);
    dispatch_source_cancel(Property);

    objc_setProperty_atomic(self, v7, 0, 296);
  }
}

- (uint64_t)fireWaitingRequestHandlerWithPacket:(void *)packet
{
  v4 = a2;
  if (!packet)
  {
    goto LABEL_6;
  }

  v5 = packet[40];
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = packet[40];
    packet[40] = 0;
  }

  if (objc_getProperty(packet, v3, 224, 1))
  {
    v8 = 1;
    v9 = objc_getProperty(packet, v7, 224, 1);
    objc_setProperty_atomic_copy(packet, v10, 0, 224);
    v9[2](v9, v4);
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

- (void)resetAll
{
  v42 = *MEMORY[0x1E69E9840];
  if (self)
  {
    Property = objc_getProperty(self, a2, 384, 1);
    dispatch_assert_queue_V2(Property);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Resetting %@", &v40, 0xCu);
    }

    [(NEIKEv2Session *)self abort];
    [(NEIKEv2Session *)self uninstallAllChildSAs];
    if (objc_getProperty(self, v6, 280, 1))
    {
      v8 = objc_getProperty(self, v7, 280, 1);
      dispatch_source_cancel(v8);
      objc_setProperty_atomic(self, v9, 0, 280);
    }

    [(NEIKEv2Session *)self invalidateDPDTimer];
    if (*(self + 10))
    {
      v11 = *(self + 344);
      if (v11)
      {
        CFRelease(v11);
        *(self + 344) = 0;
      }
    }

    [(NEIKEv2Session *)self resetMessages];
    v13 = objc_getProperty(self, v12, 352, 1);
    if (v13)
    {
      v15 = v13;
      [(NEIKEv2IKESA *)v13 detachTransportWithShouldInvalidate:?];
      [(NEIKEv2IKESA *)v15 clearPostAuthenticationData];
      *(v15 + 9) = 1;
      *(v15 + 16) = 0;
      v17 = objc_alloc_init(NEIKEv2IKESPI);
      objc_setProperty_atomic(v15, v18, v17, 32);

      objc_setProperty_atomic(v15, v19, 0, 40);
      objc_setProperty_atomic(v15, v20, 0, 152);
      objc_setProperty_atomic(v15, v21, 0, 160);
      objc_setProperty_atomic(v15, v22, 0, 168);
      objc_setProperty_atomic(v15, v23, 0, 176);
      objc_setProperty_atomic(v15, v24, 0, 184);
      objc_setProperty_atomic(v15, v25, 0, 128);
      objc_setProperty_atomic(v15, v26, 0, 136);
      objc_setProperty_atomic(v15, v27, 0, 208);
      objc_setProperty_atomic(v15, v28, 0, 216);
      objc_setProperty_atomic(v15, v29, 0, 496);
      objc_setProperty_atomic(v15, v30, 0, 96);
      v31 = v15[14];
      v15[14] = 0;
    }

    v32 = objc_getProperty(self, v14, 376, 1);
    if (v32)
    {
      *(v32 + 24) = xmmword_1BAA4E550;
      *(v32 + 3) = -1;
      *(v32 + 2) = 0;
      *(v32 + 5) = 0;
      *(v32 + 6) = 30;
      *(v32 + 7) = 0;
      *(v32 + 8) = 1000;
      *(v32 + 4) = 0;
    }

    if ([objc_getProperty(self v33])
    {
      v35 = [objc_getProperty(self v34];
      [objc_getProperty(self v36];
      if (v35)
      {
        [(NEIKEv2ChildSA *)v35 reset];
        [objc_getProperty(self v38];
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (uint64_t)uninstallAllChildSAs
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v1;
      v32 = 2112;
      Property = objc_getProperty(v1, v3, 192, 1);
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@ %@ Uninstalling all child SAs", buf, 0x16u);
    }

    [objc_getProperty(v1 v4];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = objc_getProperty(v1, v5, 200, 1);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v24 + 1) + 8 * v10++) invalidate];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    [objc_getProperty(v1 v11];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = objc_getProperty(v1, v12, 208, 1);
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * v17++) invalidate];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    result = [objc_getProperty(v1 v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resetMessages
{
  [(NEIKEv2Session *)self cancelSendTimer];
  [(NEIKEv2Session *)self fireWaitingRequestHandlerWithPacket:?];
  self[4] = -1;
  self[5] = -1;
  self[6] = -1;
  Property = objc_getProperty(self, v3, 352, 1);
  if (Property)
  {
    objc_setProperty_atomic(Property, v5, 0, 312);
  }

  v6 = objc_getProperty(self, v5, 352, 1);
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, 0, 320);
  }

  objc_setProperty_atomic(self, v7, 0, 232);
  [objc_getProperty(self v8];
  [objc_getProperty(self v9];
  [objc_getProperty(self v10];
  [objc_getProperty(self v11];
  [objc_getProperty(self v12];

  objc_setProperty_atomic(self, v13, 0, 392);
}

- (void)receivePacket:(id)packet
{
  v195 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  if (self)
  {
    Property = objc_getProperty(self, v6, 384, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (packetCopy)
  {
    v10 = *(packetCopy + 7);
    if (self)
    {
      if (packetCopy[10])
      {
        v11 = 256;
      }

      else
      {
        v11 = 248;
      }

      v12 = objc_getProperty(self, v9, v11, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      typeDescription = [packetCopy typeDescription];
      if (packetCopy[10])
      {
        v15 = "Reply";
      }

      else
      {
        v15 = "Request";
      }

      v180 = [MEMORY[0x1E696AD98] numberWithInt:{v10, v15}];
      v17 = v13;
      if ([v13 containsObject:v180])
      {
        v18 = " retransmission";
      }

      else
      {
        v18 = "";
      }

      v19 = *(packetCopy + 4);
      v4 = objc_getProperty(packetCopy, v16, 32, 1);
      v21 = objc_getProperty(packetCopy, v20, 40, 1);
      *buf = 138414082;
      *v185 = self;
      *&v185[8] = 2112;
      *v186 = typeDescription;
      *&v186[8] = 2080;
      *v187 = v179;
      *&v187[8] = 2080;
      v188 = v18;
      v13 = v17;
      v189 = 1024;
      *v190 = v19;
      *&v190[4] = 1024;
      *&v190[6] = v10;
      v191 = 2112;
      v192 = v4;
      v193 = 2112;
      v194 = v21;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "%@ Receiving %@ %s%s, length %u, ID %u (%@->%@)", buf, 0x4Au);
    }

    if (packetCopy[11])
    {
      v23 = objc_getProperty(packetCopy, v22, 40, 1);
    }

    else
    {
      v23 = objc_getProperty(packetCopy, v22, 32, 1);
    }

    v24 = v23;
    value = [v23 value];
    if (!value)
    {
      if (self)
      {
        v27 = objc_getProperty(self, v25, 352, 1);
        typeDescription = v27;
        if (v27)
        {
          v27 = objc_getProperty(v27, v28, 80, 1);
        }
      }

      else
      {
        typeDescription = 0;
        v27 = 0;
      }

      v4 = v27;
      if ([v4 serverMode])
      {

        goto LABEL_31;
      }
    }

    if (self)
    {
      v30 = objc_getProperty(self, v25, 352, 1);
      if (v30)
      {
        v30 = objc_getProperty(v30, v31, 32, 1);
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = v30;
    v33 = [v32 isEqual:v24];

    if (value)
    {
      if (v33)
      {
        goto LABEL_31;
      }
    }

    else
    {

      if (v33)
      {
LABEL_31:
        if (packetCopy[9] == 1)
        {
          if (self)
          {
            v34 = objc_getProperty(self, v29, 352, 1);
            if (v34)
            {
              v34 = objc_getProperty(v34, v35, 96, 1);
            }
          }

          else
          {
            v34 = 0;
          }

          v36 = v34;

          if (!v36)
          {
            v62 = ne_log_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v185 = self;
              _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ Ignoring fragment received before security established", buf, 0xCu);
            }

            goto LABEL_81;
          }

          v37 = ne_log_large_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(packetCopy + 5);
            v39 = *(packetCopy + 6);
            *buf = 138413058;
            *v185 = self;
            *&v185[8] = 1024;
            *v186 = v38;
            *&v186[4] = 1024;
            *&v186[6] = v39;
            *v187 = 2112;
            *&v187[2] = packetCopy;
            _os_log_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_DEFAULT, "%@ Received fragment %u/%u: %@", buf, 0x22u);
          }
        }

        if ((packetCopy[10] & 1) == 0)
        {
          goto LABEL_44;
        }

        if (self)
        {
          v40 = objc_getProperty(self, v29, 256, 1);
        }

        else
        {
          v40 = 0;
        }

        v41 = MEMORY[0x1E696AD98];
        v42 = v40;
        v43 = [v41 numberWithInt:v10];
        v44 = [v42 containsObject:v43];

        if (v44)
        {
          if (packetCopy[10])
          {
            goto LABEL_82;
          }

LABEL_44:
          if (self)
          {
            v45 = objc_getProperty(self, v29, 248, 1);
          }

          else
          {
            v45 = 0;
          }

          v46 = MEMORY[0x1E696AD98];
          v47 = v45;
          v48 = [v46 numberWithInt:v10];
          v49 = [v47 containsObject:v48];

          if (v49)
          {
            if ((packetCopy[10] & 1) == 0)
            {
              if (self)
              {
                v51 = objc_getProperty(self, v50, 240, 1);
              }

              else
              {
                v51 = 0;
              }

              v52 = MEMORY[0x1E696AD98];
              v53 = v51;
              v54 = [v52 numberWithInt:v10];
              v55 = [v53 objectForKeyedSubscript:v54];

              if (v55)
              {
                if (packetCopy[9])
                {
                  v56 = v10;
                  selfCopy = self;
                  v58 = packetCopy;
                  v59 = v13;
                  v60 = v58[5];

                  v61 = v60 == 1;
                  v13 = v59;
                  packetCopy = v58;
                  self = selfCopy;
                  v10 = v56;
                  if (!v61)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                }

                v106 = ne_log_obj();
                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *v185 = self;
                  *&v185[8] = 1024;
                  *v186 = v10;
                  _os_log_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_INFO, "%@ Received duplicate for message %d, re-sending reply", buf, 0x12u);
                }

                [(NEIKEv2Session *)self sendReplyForMessageID:v10];
                goto LABEL_82;
              }
            }

LABEL_82:

            goto LABEL_83;
          }

          if (self)
          {
            if (v10 < self->_lastReceivedMessageID)
            {
              goto LABEL_72;
            }

            v80 = packetCopy;
            if (packetCopy[9] != 1)
            {
              v81 = *(packetCopy + 7);
              v82 = objc_getProperty(self, v79, 352, 1);
              if (([(NEIKEv2Packet *)v80 decryptReceivedPacketWithIKESA:v82]& 1) == 0)
              {
                v91 = ne_log_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v185 = self;
                  _os_log_error_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_ERROR, "%@ Discarding undecrypted packet", buf, 0xCu);
                }

                goto LABEL_114;
              }

              v83 = ne_log_large_obj();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v185 = self;
                *&v185[8] = 2112;
                *v186 = v80;
                _os_log_impl(&dword_1BA83C000, v83, OS_LOG_TYPE_DEFAULT, "%@ Received request: %@", buf, 0x16u);
              }

              if (self->_lastReceivedMessageID < v81)
              {
                self->_lastReceivedMessageID = v81;
              }

              v85 = objc_getProperty(self, v84, 248, 1);
              v86 = MEMORY[0x1E696AD98];
              v87 = v85;
              v88 = [v86 numberWithInt:v81];
              [v87 addObject:v88];

              [(NEIKEv2Session *)self updateReceivedRequestWindow];
              if (([(NEIKEv2Session *)self fireWaitingRequestHandlerWithPacket:v80]& 1) != 0)
              {
                goto LABEL_115;
              }

              exchangeType = [v80 exchangeType];
              if (exchangeType == 34)
              {
                [(NEIKEv2Session *)self receiveConnection:v80];
                goto LABEL_115;
              }

              if (exchangeType != 37)
              {
                if (exchangeType == 36)
                {
                  v91 = v80;
                  if (objc_getProperty(v91, v92, 88, 1))
                  {
                    [(NEIKEv2Session *)self receiveRekeyIKESA:v91];
                  }

                  else
                  {
                    if ([(NEIKEv2Packet *)v91 hasNotification:?])
                    {
                      v112 = [(NEIKEv2Packet *)v91 copyNotification:?];
                      v114 = v112;
                      if (v112)
                      {
                        v112 = objc_getProperty(v112, v113, 48, 1);
                      }

                      v115 = v112;
                      v116 = [(NEIKEv2Session *)self copyChildWithSPI:v115];

                      [(NEIKEv2Session *)self receiveRekeyChildSA:v116 packet:v91];
                    }

                    else
                    {
                      if (objc_getProperty(self, v111, 184, 1))
                      {
                        v121 = [NEIKEv2ChildSA alloc];
                        v123 = objc_getProperty(self, v122, 184, 1);
                        objc_opt_self();
                        add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
                        if (!add_explicit)
                        {
                          add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
                        }

                        v126 = objc_getProperty(self, v124, 352, 1);
                        v114 = [(NEIKEv2ChildSA *)&v121->super initWithConfiguration:v123 childID:add_explicit ikeSA:v126];
                      }

                      else
                      {
                        v114 = 0;
                      }

                      [(NEIKEv2Session *)self receiveNewChildSA:v114 packet:v91];
                    }
                  }

                  goto LABEL_114;
                }

                v109 = ne_log_obj();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
                {
                  copyShortDescription = [(NEIKEv2Packet *)v80 copyShortDescription];
                  *buf = 138412546;
                  *v185 = self;
                  *&v185[8] = 2112;
                  *v186 = copyShortDescription;
                  _os_log_fault_impl(&dword_1BA83C000, v109, OS_LOG_TYPE_FAULT, "%@ Unable to handle unsolicited request %@", buf, 0x16u);
                }

LABEL_184:

                goto LABEL_115;
              }

              v91 = v80;
              if ([(NEIKEv2InformationalPacket *)v91 isDeleteIKE])
              {
                [(NEIKEv2Session *)self receiveDeleteIKESA:v91];
              }

              else if ([(NEIKEv2InformationalPacket *)v91 isDeleteChild])
              {
                [(NEIKEv2Session *)self receiveDeleteChildSA:v91];
              }

              else
              {
                if (![(NEIKEv2InformationalPacket *)v91 isMOBIKE])
                {
                  v127 = objc_getProperty(self, v117, 352, 1);
                  if (v127)
                  {
                    v127 = objc_getProperty(v127, v128, 80, 1);
                  }

                  v129 = v127;
                  if ([v129 allowRedirect] && (v131 = objc_getProperty(self, v130, 352, 1)) != 0 && v131[6] == 2)
                  {
                    v132 = [(NEIKEv2Packet *)v91 hasNotification:?];

                    if (v132)
                    {
                      [(NEIKEv2Session *)self receiveRedirect:v91];
                      goto LABEL_114;
                    }
                  }

                  else
                  {
                  }

                  [(NEIKEv2Session *)self receiveInformational:v91];
                  goto LABEL_114;
                }

                [(NEIKEv2Session *)self receiveMOBIKE:v91];
              }

LABEL_114:

              goto LABEL_115;
            }

            goto LABEL_97;
          }

          if ((v10 & 0x80000000) != 0)
          {
LABEL_72:
            v62 = ne_log_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v185 = self;
              v77 = "%@ Discarding stale request";
LABEL_78:
              _os_log_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_INFO, v77, buf, 0xCu);
              goto LABEL_81;
            }

            goto LABEL_81;
          }

LABEL_221:
          v178 = packetCopy;
          goto LABEL_115;
        }

        if (!self)
        {
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_221;
          }

LABEL_76:
          v62 = ne_log_obj();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v185 = self;
            v77 = "%@ Discarding stale reply";
            goto LABEL_78;
          }

LABEL_81:

          goto LABEL_82;
        }

        if (v10 < self->_lastRequestMessageID)
        {
          goto LABEL_76;
        }

        v80 = packetCopy;
        if (packetCopy[9] == 1)
        {
LABEL_97:
          [(NEIKEv2Session *)self processFragment:v80];
LABEL_115:

          goto LABEL_82;
        }

        v94 = *(packetCopy + 7);
        v95 = objc_getProperty(self, v93, 352, 1);
        if (![(NEIKEv2Packet *)v80 decryptReceivedPacketWithIKESA:v95])
        {
          goto LABEL_115;
        }

        if (objc_getProperty(self, v96, 352, 1) && [v80 exchangeType] == 34 && -[NEIKEv2Packet hasNotification:](v80, 0x4017))
        {
          v97 = [(NEIKEv2Packet *)v80 copyNotification:?];
          v99 = v97;
          if (!v97)
          {
LABEL_153:
            v133 = 0;
LABEL_154:
            v134 = ne_log_large_obj();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v185 = self;
              *&v185[8] = 2112;
              *v186 = v80;
              _os_log_error_impl(&dword_1BA83C000, v134, OS_LOG_TYPE_ERROR, "%@ Ignoring received SA_INIT packet (redirect nonce check failed): %@", buf, 0x16u);
            }

            goto LABEL_115;
          }

          if (v97[4] != 16407)
          {
            v100 = ne_log_obj();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v185 = v99;
              _os_log_error_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_ERROR, "BACKTRACE Cannot copy server redirect nonce from notification %@", buf, 0xCu);
            }

            goto LABEL_152;
          }

          v100 = objc_getProperty(v97, v98, 40, 1);
          if ([v100 length]<= 1)
          {
            v101 = ne_log_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v102 = [v100 length];
              *buf = 134217984;
              *v185 = v102;
              v103 = "Server redirect has invalid length %llu";
              v104 = v101;
              v105 = 12;
LABEL_150:
              _os_log_error_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_ERROR, v103, buf, v105);
              goto LABEL_151;
            }

            goto LABEL_151;
          }

          bytes = [v100 bytes];
          if ([v100 length]- 2 < *(bytes + 1))
          {
            v101 = ne_log_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v119 = [v100 length];
              v120 = *(bytes + 1);
              *buf = 67109376;
              *v185 = v119;
              *&v185[4] = 1024;
              *&v185[6] = v120;
              v103 = "Server redirect has invalid length %u (gateway length %u)";
              v104 = v101;
              v105 = 14;
              goto LABEL_150;
            }

LABEL_151:

LABEL_152:
            goto LABEL_153;
          }

          if ([v100 length]== *(bytes + 1) + 2)
          {
            v101 = ne_log_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v103 = "Server redirect has no nonce";
              v104 = v101;
              v105 = 2;
              goto LABEL_150;
            }

            goto LABEL_151;
          }

          v181 = v13;
          v133 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes + *(bytes + 1) + 2 length:{-[NSObject length](v100, "length") - *(bytes + 1) - 2}];

          if (!v133)
          {
            goto LABEL_154;
          }

          v136 = objc_getProperty(self, v135, 352, 1);
          if (v136)
          {
            v136 = objc_getProperty(v136, v137, 128, 1);
          }

          v138 = v136;
          v139 = [v133 isEqualToData:v138];

          if ((v139 & 1) == 0)
          {
            v13 = v181;
            goto LABEL_154;
          }

          v13 = v181;
        }

        v140 = ne_log_large_obj();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v185 = self;
          *&v185[8] = 2112;
          *v186 = v80;
          _os_log_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_DEFAULT, "%@ Received response: %@", buf, 0x16u);
        }

        v142 = objc_getProperty(self, v141, 256, 1);
        v143 = MEMORY[0x1E696AD98];
        v144 = v142;
        v145 = [v143 numberWithInt:v94];
        [v144 addObject:v145];

        v147 = objc_getProperty(self, v146, 216, 1);
        selfCopy2 = self;
        if (!v147 || (v149 = packetCopy, v150 = v13, lastRequestMessageID = selfCopy2->_lastRequestMessageID, v147, v61 = lastRequestMessageID == v94, v13 = v150, packetCopy = v149, !v61))
        {
          v91 = ne_log_obj();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v185 = selfCopy2;
            _os_log_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_INFO, "%@ Ignoring unexpected response", buf, 0xCu);
          }

          goto LABEL_114;
        }

        v152 = ne_log_obj();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
        {
          v153 = selfCopy2->_lastRequestMessageID;
          *buf = 138412546;
          *v185 = selfCopy2;
          *&v185[8] = 1024;
          *v186 = v153;
          _os_log_impl(&dword_1BA83C000, v152, OS_LOG_TYPE_INFO, "%@ Processing response for message %u", buf, 0x12u);
        }

        v155 = objc_getProperty(selfCopy2, v154, 376, 1);
        v156 = selfCopy2;
        if (!v155)
        {
LABEL_183:

          v109 = objc_getProperty(v156, v159, 216, 1);
          objc_setProperty_atomic_copy(v156, v160, 0, 216);
          objc_setProperty_atomic(v156, v161, 0, 232);
          [(NEIKEv2Session *)v156 cancelSendTimer];
          (v109[2].isa)(v109, v80);
          goto LABEL_184;
        }

        if (*(v155 + 3) != v94)
        {
          v157 = ne_log_obj();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
          {
            v158 = *(v155 + 3);
            *buf = 138412802;
            *v185 = v156;
            *&v185[8] = 1024;
            *v186 = v94;
            *&v186[4] = 1024;
            *&v186[6] = v158;
            _os_log_impl(&dword_1BA83C000, v157, OS_LOG_TYPE_INFO, "%@, response message ID(%u) != request message ID(%u)", buf, 0x18u);
          }

          goto LABEL_183;
        }

        if (*(v155 + 4) < 2u)
        {
          v182 = 0;
          v183 = 0;
          if (![NEIKEv2RTT getCurrentTime:?])
          {
            v172 = ne_log_obj();
            if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v185 = v156;
              _os_log_error_impl(&dword_1BA83C000, v172, OS_LOG_TYPE_ERROR, "%@, failed to update RTT", buf, 0xCu);
            }

            goto LABEL_183;
          }

          v163 = (v183 / 1000);
          v164 = 1000 * v182 - *(v155 + 5);
          v165 = v164 + v163;
          if (v164 + v163 >= 1)
          {
            ++*(v155 + 7);
            *(v155 + 2) = v165 & 0x7FFFFFFF;
            v166 = ne_log_obj();
            if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *v185 = v156;
              *&v185[8] = 1024;
              *v186 = v165;
              _os_log_impl(&dword_1BA83C000, v166, OS_LOG_TYPE_INFO, "%@, current rtt %u", buf, 0x12u);
            }

            v167 = *(v155 + 3);
            if (v167)
            {
              v168 = 4 * v165 - (v167 >> 3);
              v169 = v167 + v168;
              if (v169 <= 1)
              {
                v169 = 1;
              }

              if (v168 < 0)
              {
                LODWORD(v168) = -v168;
              }

              v170 = *(v155 + 4) + (v168 - (*(v155 + 4) >> 2));
              if (v170 <= 1)
              {
                v171 = 1;
              }

              else
              {
                v171 = v170;
              }

              *(v155 + 3) = v169;
              *(v155 + 4) = v171;
            }

            else
            {
              v173 = vshl_u32(vdup_n_s32(v165), 0x300000005);
              *&v174 = v173.i32[0];
              *(&v174 + 1) = v173.i32[1];
              *(v155 + 24) = v174;
              v169 = v173.i32[0];
              v171 = v173.i32[1];
            }

            v175 = *(v155 + 6);
            v176 = v171 + (v169 >> 3);
            if (v175 <= v176 >> 2)
            {
              v177 = v176 >> 2;
            }

            else
            {
              v177 = *(v155 + 6);
            }

            *(v155 + 8) = v177;
            if (v177 < v175)
            {
              goto LABEL_208;
            }

            if (v177 >= 0xFA01)
            {
              v175 = 64000;
LABEL_208:
              *(v155 + 8) = v175;
            }
          }
        }

        [(NEIKEv2RTT *)v155 resetRTTMeasurement];
        goto LABEL_183;
      }
    }

    v62 = ne_log_large_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v64 = objc_getProperty(self, v63, 352, 1);
        if (v64)
        {
          v64 = objc_getProperty(v64, v65, 80, 1);
        }
      }

      else
      {
        v64 = 0;
      }

      v66 = v64;
      if ([v66 serverMode])
      {
        v68 = "Responder";
      }

      else
      {
        v68 = "Initiator";
      }

      if (self)
      {
        v69 = objc_getProperty(self, v67, 352, 1);
        if (v69)
        {
          v69 = objc_getProperty(v69, v70, 32, 1);
        }

        v71 = v69;
        v73 = objc_getProperty(self, v72, 352, 1);
        if (v73)
        {
          v73 = objc_getProperty(v73, v74, 40, 1);
        }

        v75 = v71;
      }

      else
      {
        v71 = 0;
        v75 = 0;
        v73 = 0;
      }

      v76 = v73;
      *buf = 138413314;
      *v185 = self;
      *&v185[8] = 2080;
      *v186 = v68;
      *&v186[8] = 2112;
      *v187 = v75;
      *&v187[8] = 2112;
      v188 = v76;
      v189 = 2112;
      *v190 = packetCopy;
      _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "%@ %s ignoring received packet: (Local %@, Remote %@): %@", buf, 0x34u);
    }

    goto LABEL_81;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *v185 = "[NEIKEv2Session receivePacket:]";
    _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null packet", buf, 0xCu);
  }

LABEL_83:

  v78 = *MEMORY[0x1E69E9840];
}

- (uint64_t)sendReplyForMessageID:(id)self
{
  selfCopy = self;
  v57 = *MEMORY[0x1E69E9840];
  if (self)
  {
    Property = objc_getProperty(self, a2, 384, 1);
    dispatch_assert_queue_V2(Property);
    if (*(selfCopy + 12))
    {
      copyTransport = ne_log_obj();
      if (os_log_type_enabled(copyTransport, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v49 = selfCopy;
        v50 = 1024;
        *v51 = a2;
        _os_log_impl(&dword_1BA83C000, copyTransport, OS_LOG_TYPE_DEFAULT, "%@ Skipping sending reply %d on invalidated session", buf, 0x12u);
      }

      goto LABEL_17;
    }

    if (objc_getProperty(selfCopy, v5, 352, 1))
    {
      v8 = objc_getProperty(selfCopy, v7, 352, 1);
      if (([(NEIKEv2IKESA *)v8 hasTransport]& 1) != 0)
      {
        v11 = objc_getProperty(selfCopy, v10, 352, 1);
        copyTransport = [(NEIKEv2IKESA *)v11 copyTransport];
        v14 = objc_getProperty(selfCopy, v13, 240, 1);
        v15 = MEMORY[0x1E696AD98];
        v16 = v14;
        v17 = [v15 numberWithInt:a2];
        v18 = [v16 objectForKeyedSubscript:v17];

        if ([v18 count] == 1)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            firstObject = [v18 firstObject];
            *buf = 138413058;
            v49 = selfCopy;
            v50 = 1024;
            *v51 = [firstObject length];
            *&v51[4] = 1024;
            *&v51[6] = a2;
            v52 = 2112;
            *v53 = copyTransport;
            _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@ Sending reply of length %u with ID %u on %@\n", buf, 0x22u);
          }

          firstObject2 = [v18 firstObject];
          v21 = [(NEIKEv2Transport *)&copyTransport->isa sendData:firstObject2 sendCompletionHandler:0];

          if ((v21 & 1) == 0)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "Sending reply data failed", buf, 2u);
            }

            v24 = objc_getProperty(selfCopy, v23, 352, 1);
            [(NEIKEv2IKESA *)v24 detachTransportWithShouldInvalidate:?];
            selfCopy = 0;
            goto LABEL_40;
          }
        }

        else
        {
          if ([v18 count])
          {
            v42 = v18;
            v43 = [v18 count];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v28 = v18;
            v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v45;
              v32 = 1;
              while (2)
              {
                v33 = 0;
                do
                {
                  if (*v45 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v34 = *(*(&v44 + 1) + 8 * v33);
                  v35 = ne_log_obj();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    v36 = [v34 length];
                    *buf = 138413570;
                    v49 = selfCopy;
                    v50 = 1024;
                    *v51 = v32;
                    *&v51[4] = 1024;
                    *&v51[6] = v43;
                    v52 = 1024;
                    *v53 = v36;
                    *&v53[4] = 1024;
                    *&v53[6] = a2;
                    v54 = 2112;
                    v55 = copyTransport;
                    _os_log_debug_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEBUG, "%@ Sending reply fragment %u/%u of length %u with ID %u on %@\n", buf, 0x2Eu);
                  }

                  if (([(NEIKEv2Transport *)&copyTransport->isa sendData:v34 sendCompletionHandler:0]& 1) == 0)
                  {
                    v37 = ne_log_obj();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v49 = selfCopy;
                      _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "%@ Sending fragment reply data failed", buf, 0xCu);
                    }

                    v39 = objc_getProperty(selfCopy, v38, 352, 1);
                    [(NEIKEv2IKESA *)v39 detachTransportWithShouldInvalidate:?];

                    selfCopy = 0;
                    goto LABEL_35;
                  }

                  ++v32;
                  ++v33;
                }

                while (v30 != v33);
                v30 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                if (v30)
                {
                  continue;
                }

                break;
              }
            }

            selfCopy = 1;
LABEL_35:
            v18 = v42;
            goto LABEL_40;
          }

          v40 = ne_log_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v49 = selfCopy;
            v50 = 2112;
            *v51 = v18;
            _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%@ Sending reply had unexpected sendValue %@", buf, 0x16u);
          }
        }

        selfCopy = 1;
LABEL_40:

        goto LABEL_18;
      }

      copyTransport = ne_log_obj();
      if (!os_log_type_enabled(copyTransport, OS_LOG_TYPE_FAULT))
      {
LABEL_17:
        selfCopy = 0;
LABEL_18:

        goto LABEL_19;
      }

      *buf = 136315138;
      v49 = "[NEIKEv2Session sendReplyForMessageID:]";
      v25 = "%s called with null self.ikeSA.hasTransport";
    }

    else
    {
      copyTransport = ne_log_obj();
      if (!os_log_type_enabled(copyTransport, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315138;
      v49 = "[NEIKEv2Session sendReplyForMessageID:]";
      v25 = "%s called with null self.ikeSA";
    }

    _os_log_fault_impl(&dword_1BA83C000, copyTransport, OS_LOG_TYPE_FAULT, v25, buf, 0xCu);
    goto LABEL_17;
  }

LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)processFragment:(_DWORD *)fragment
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a2;
  Property = objc_getProperty(fragment, v5, 384, 1);
  dispatch_assert_queue_V2(Property);
  if ((v4[9] & 1) == 0)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session processFragment:]";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null fragment.isFragmented", buf, 0xCu);
    }

    goto LABEL_75;
  }

  v8 = *(v4 + 7);
  v9 = v4[10];
  packetsToSave = [(NEIKEv2Session *)fragment packetsToSave];
  if (v9)
  {
    v12 = fragment[4];
    v13 = v12 - packetsToSave;
    if (v12 < packetsToSave)
    {
      if (v8 > v12)
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = fragment;
          v15 = "%@ Discarding too new fragment";
LABEL_15:
          _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
          goto LABEL_75;
        }

        goto LABEL_75;
      }

      v16 = 272;
LABEL_17:
      v14 = objc_getProperty(fragment, v11, v16, 1);
      v17 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      v18 = [v14 objectForKeyedSubscript:v17];

      if (v18)
      {
        v20 = *(v18 + 10);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v4 + 12);
      v22 = *(v4 + 10);
      if (!*(v4 + 12) || v22 - 1 >= v21)
      {
        v23 = ne_log_obj();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

        *buf = 138412802;
        *&buf[4] = fragment;
        *&buf[12] = 1024;
        *&buf[14] = v22;
        v76 = 1024;
        v77 = v21;
        v24 = "%@ Invalid fragment numbers %u/%u";
        goto LABEL_29;
      }

      if (v20)
      {
        if (v21 == v20 && [(NEIKEv2FragmentMap *)v18 hasFragmentForNumber:?])
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *&buf[4] = fragment;
            *&buf[12] = 1024;
            *&buf[14] = v22;
            v76 = 1024;
            v77 = v8;
            _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@ Received duplicate fragment %u for message %d", buf, 0x18u);
          }

          goto LABEL_73;
        }

        if (v21 < v20)
        {
          v23 = ne_log_obj();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = fragment;
            *&buf[12] = 1024;
            *&buf[14] = v21;
            v76 = 1024;
            v77 = v20;
            v24 = "%@ Fragment count %u < last received count %u";
LABEL_29:
            v25 = v23;
            v26 = 24;
LABEL_78:
            _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
          }

LABEL_73:

LABEL_74:
          goto LABEL_75;
        }
      }

      v27 = objc_getProperty(fragment, v19, 352, 1);
      if (([(NEIKEv2Packet *)v4 decryptReceivedPacketWithIKESA:v27]& 1) == 0)
      {
        v23 = ne_log_obj();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

        *buf = 138412290;
        *&buf[4] = fragment;
        v24 = "%@ Discarding undecrypted fragment";
LABEL_77:
        v25 = v23;
        v26 = 12;
        goto LABEL_78;
      }

      v70 = v14;
      if (v21 <= v20)
      {
LABEL_42:
        v39 = v4;
        if (!v18)
        {
LABEL_94:

          v23 = ne_log_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 138412290;
          *&buf[4] = fragment;
          v24 = "%@ Failed to add fragment to map!";
          goto LABEL_77;
        }

        v40 = *(v4 + 10);
        if (*(v4 + 10))
        {
          if (v40 <= *(v18 + 10))
          {
            if (![(NEIKEv2FragmentMap *)v18 hasFragmentForNumber:?])
            {
              v42 = objc_getProperty(v39, v41, 48, 1);
              v44 = v42;
              if (v42)
              {
                v42 = objc_getProperty(v42, v43, 40, 1);
              }

              v45 = v42;

              if (v45)
              {
                [*(v18 + 24) setObject:v45 atIndexedSubscript:v40 - 1];
                *(v18 + 12) += [v45 length];
                if (v40 == 1)
                {
                  objc_storeStrong((v18 + 16), a2);
                }

                ++*(v18 + 8);

                if (*(v18 + 8) != *(v18 + 10))
                {
                  goto LABEL_74;
                }

                v46 = ne_log_obj();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  v47 = *(v18 + 10);
                  *buf = 138412802;
                  *&buf[4] = fragment;
                  *&buf[12] = 1024;
                  *&buf[14] = v47;
                  v76 = 1024;
                  v77 = v8;
                  _os_log_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_INFO, "%@ Received all %u fragments for message ID %d", buf, 0x18u);
                }

                v48 = [MEMORY[0x1E696AD98] numberWithInt:v8];
                [v14 setObject:0 forKeyedSubscript:v48];

                v50 = objc_getProperty(fragment, v49, 352, 1);
                v51 = v18;
                v52 = v50;
                objc_opt_self();
                if (*(v18 + 8) != *(v18 + 10))
                {
                  v53 = ne_log_obj();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "+[NEIKEv2Packet createPacketFromFragmentMap:ikeSA:]";
                    _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, "%s called with null fragmentMap.readyForReassembly", buf, 0xCu);
                  }

                  v23 = 0;
                  goto LABEL_69;
                }

                if (!v52)
                {
                  v53 = ne_log_obj();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "+[NEIKEv2Packet createPacketFromFragmentMap:ikeSA:]";
                    _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
                  }

                  v23 = 0;
                  v14 = v70;
                  goto LABEL_69;
                }

                v53 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:*(v18 + 12)];
                v73 = 0u;
                v74 = 0u;
                *v71 = 0u;
                v72 = 0u;
                v54 = *(v18 + 24);
                v55 = [v54 countByEnumeratingWithState:v71 objects:buf count:16];
                if (v55)
                {
                  v56 = v55;
                  v57 = *v72;
                  do
                  {
                    for (i = 0; i != v56; ++i)
                    {
                      if (*v72 != v57)
                      {
                        objc_enumerationMutation(v54);
                      }

                      [v53 appendData:*(*&v71[8] + 8 * i), v69];
                    }

                    v56 = [v54 countByEnumeratingWithState:v71 objects:buf count:16];
                  }

                  while (v56);
                }

                v59 = v51[2];
                v61 = v59;
                if (v59)
                {
                  v62 = objc_getProperty(v59, v60, 48, 1);
                  if (v62)
                  {
                    objc_setProperty_atomic(v62, v63, v53, 40);
                  }

                  v61[4] = *(v18 + 12);
                  if ([(NEIKEv2Packet *)v61 processDecryptedPacketForIKESA:v52])
                  {
                    goto LABEL_67;
                  }
                }

                else if (([(NEIKEv2Packet *)0 processDecryptedPacketForIKESA:v52]& 1) != 0)
                {
LABEL_67:
                  v23 = v61;
LABEL_68:
                  v14 = v70;

LABEL_69:
                  if (v23)
                  {
                    [fragment receivePacket:v23];
                  }

                  v18 = v51;
                  goto LABEL_73;
                }

                v23 = 0;
                goto LABEL_68;
              }

              v67 = ne_log_obj();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[NEIKEv2FragmentMap addFragment:]";
                _os_log_fault_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_FAULT, "%s called with null payloadData", buf, 0xCu);
              }

              v65 = 0;
              goto LABEL_93;
            }

            v65 = ne_log_obj();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              *&buf[4] = "[NEIKEv2FragmentMap addFragment:]";
              v66 = "%s called with null ![self hasFragmentForNumber:fragmentNumber]";
              goto LABEL_89;
            }

LABEL_93:

            goto LABEL_94;
          }

          v65 = ne_log_obj();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_93;
          }

          *buf = 136315138;
          *&buf[4] = "[NEIKEv2FragmentMap addFragment:]";
          v66 = "%s called with null (fragmentNumber <= self.expectedCount)";
        }

        else
        {
          v65 = ne_log_obj();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_93;
          }

          *buf = 136315138;
          *&buf[4] = "[NEIKEv2FragmentMap addFragment:]";
          v66 = "%s called with null (fragmentNumber >= 1)";
        }

LABEL_89:
        _os_log_fault_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_FAULT, v66, buf, 0xCu);
        goto LABEL_93;
      }

      if (v20)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = fragment;
          *&buf[12] = 1024;
          *&buf[14] = v21;
          v76 = 1024;
          v77 = v20;
          _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_INFO, "%@ Fragment count %u > last received count %u, discarding stored fragments", buf, 0x18u);
        }
      }

      v29 = [NEIKEv2FragmentMap alloc];
      v30 = v29;
      v69 = a2;
      if (v29)
      {
        if (v21)
        {
          *buf = v29;
          *&buf[8] = NEIKEv2FragmentMap;
          v31 = objc_msgSendSuper2(buf, sel_init);
          if (v31)
          {
            v30 = v31;
            v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21];
            v33 = *(v30 + 24);
            *(v30 + 24) = v32;

            v34 = 0;
            *(v30 + 10) = v21;
            do
            {
              v35 = MEMORY[0x1E695DFB0];
              v36 = *(v30 + 24);
              null = [v35 null];
              [v36 addObject:null];

              ++v34;
            }

            while (v34 < v21);
            goto LABEL_41;
          }

          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *v71 = 0;
            _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "[super init] failed", v71, 2u);
          }
        }

        else
        {
          v68 = ne_log_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            *&buf[4] = "[NEIKEv2FragmentMap initWithExpectedCount:]";
            _os_log_fault_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_FAULT, "%s called with null (expectedCount > 0)", buf, 0xCu);
          }
        }

        v30 = 0;
      }

LABEL_41:

      v38 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      v14 = v70;
      [v70 setObject:v30 forKeyedSubscript:v38];

      v18 = v30;
      goto LABEL_42;
    }

    v16 = 272;
  }

  else
  {
    if (fragment[5] < packetsToSave)
    {
      v16 = 264;
      goto LABEL_17;
    }

    v13 = fragment[4] - packetsToSave;
    v16 = 264;
  }

  if (v13 == -1 || v8 > v13)
  {
    goto LABEL_17;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = fragment;
    v15 = "%@ Discarding stale fragment";
    goto LABEL_15;
  }

LABEL_75:

  v64 = *MEMORY[0x1E69E9840];
}

- (id)copyChildWithSPI:(void *)i
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = objc_getProperty(i, v4, 304, 1);
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if (v10)
        {
          Property = objc_getProperty(*(*(&v26 + 1) + 8 * v9), v6, 56, 1);
          v13 = Property;
          if (Property)
          {
            Property = objc_getProperty(Property, v12, 80, 1);
          }
        }

        else
        {
          v13 = 0;
          Property = 0;
        }

        v14 = Property;
        if ([v14 isEqual:v3])
        {

LABEL_22:
          v22 = v10;
          goto LABEL_23;
        }

        if (v10)
        {
          v16 = objc_getProperty(v10, v15, 56, 1);
          v18 = v16;
          if (v16)
          {
            v16 = objc_getProperty(v16, v17, 88, 1);
          }
        }

        else
        {
          v18 = 0;
          v16 = 0;
        }

        v19 = v16;
        v20 = [v19 isEqual:v3];

        if (v20)
        {
          goto LABEL_22;
        }

        ++v9;
      }

      while (v7 != v9);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = v21;
      v22 = 0;
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

LABEL_23:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)updateReceivedRequestWindow
{
  if (self)
  {
    packetsToSave = [(NEIKEv2Session *)self packetsToSave];
    v5 = self[5];
    v6 = v5 - packetsToSave;
    if (v5 >= packetsToSave)
    {
      Property = objc_getProperty(self, v4, 248, 1);
      [NEIKEv2Session removeItemsFromSet:v6 lowerEdge:?];
      v9 = objc_getProperty(self, v8, 240, 1);
      [NEIKEv2Session removeItemsFromDictionary:v9 lowerEdge:v6];
      v11 = objc_getProperty(self, v10, 264, 1);

      [NEIKEv2Session removeItemsFromDictionary:v11 lowerEdge:v6];
    }
  }
}

- (uint64_t)packetsToSave
{
  Property = objc_getProperty(self, a2, 352, 1);
  result = 4;
  if (Property)
  {
    if (Property[17])
    {
      return 6;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

+ (void)removeItemsFromSet:(int)set lowerEdge:
{
  v4 = a2;
  objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__NEIKEv2Session_removeItemsFromSet_lowerEdge___block_invoke;
  v6[3] = &__block_descriptor_36_e22_B24__0__NSNumber_8_B16l;
  setCopy = set;
  v5 = [v4 objectsPassingTest:v6];
  [v4 minusSet:v5];
}

+ (void)removeItemsFromDictionary:(int)dictionary lowerEdge:
{
  v4 = a2;
  objc_opt_self();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NEIKEv2Session_removeItemsFromDictionary_lowerEdge___block_invoke;
  v7[3] = &__block_descriptor_36_e25_B32__0__NSNumber_8_16_B24l;
  dictionaryCopy = dictionary;
  v5 = [v4 keysOfEntriesPassingTest:v7];
  allObjects = [v5 allObjects];
  [v4 removeObjectsForKeys:allObjects];
}

- (BOOL)ppkAuthenticated
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 352, 1);
    if (Property)
    {
      v3 = Property[19];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)peerAuthenticated
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 352, 1);
    if (Property)
    {
      v3 = Property[18];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (unsigned)addChild:(id)child
{
  v26 = *MEMORY[0x1E69E9840];
  childCopy = child;
  if (childCopy)
  {
    objc_opt_self();
    add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
    if (!add_explicit)
    {
      add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
    }

    v7 = [NEIKEv2ChildSA alloc];
    if (self)
    {
      Property = objc_getProperty(self, v6, 352, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = [(NEIKEv2ChildSA *)&v7->super initWithConfiguration:childCopy childID:add_explicit ikeSA:Property];
    v10 = [NEIKEv2NewChildContext alloc];
    v11 = v9;
    if (v10)
    {
      v25.receiver = v10;
      v25.super_class = NEIKEv2NewChildContext;
      v12 = [(NEIKEv2Session *)&v25 init];
      if (v12)
      {
        v10 = v12;
        v13 = v11;
        p_super = &v10->_childSA->super;
        v10->_childSA = v13;
      }

      else
      {
        p_super = ne_log_obj();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
        }

        v10 = 0;
      }
    }

    if (self)
    {
      v16 = objc_getProperty(self, v15, 384, 1);
    }

    else
    {
      v16 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__NEIKEv2Session_addChild___block_invoke;
    block[3] = &unk_1E7F0A7B0;
    block[4] = self;
    v22 = v11;
    v23 = v10;
    v17 = v10;
    v18 = v11;
    dispatch_async(v16, block);
  }

  else
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v25.receiver) = 136315138;
      *(&v25.receiver + 4) = "[NEIKEv2Session addChild:]";
      _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "%s called with null configuration", &v25, 0xCu);
    }

    add_explicit = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return add_explicit;
}

void __27__NEIKEv2Session_addChild___block_invoke(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    if (Property[11])
    {
      return;
    }

    Property = objc_getProperty(Property, a2, 304, 1);
  }

  [Property addObject:a1[5]];
  v4 = a1[4];
  v5 = a1[6];

  [(NEIKEv2Session *)v4 enqueuePendingRequestContext:v5];
}

- (void)sendMOBIKEWithRetries:(unsigned int)retries retryInterval:(unint64_t)interval interfaceName:(id)name invalidateTransport:(BOOL)transport resetEndpoint:(id)endpoint callbackQueue:(id)queue callback:(id)callback
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  endpointCopy = endpoint;
  queueCopy = queue;
  callbackCopy = callback;
  if (nameCopy)
  {
    v20 = [[NEIKEv2MOBIKEContext alloc] initWithMOBIKEInterface:nameCopy mobikeEndpoint:endpointCopy invalidateTransport:transport maxRetries:retries retryIntervalMilliseconds:interval callbackQueue:queueCopy callback:callbackCopy];
    if (self)
    {
      Property = objc_getProperty(self, v19, 384, 1);
    }

    else
    {
      Property = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __125__NEIKEv2Session_sendMOBIKEWithRetries_retryInterval_interfaceName_invalidateTransport_resetEndpoint_callbackQueue_callback___block_invoke;
    v24[3] = &unk_1E7F0A0E8;
    v24[4] = self;
    v25 = v20;
    v22 = v20;
    dispatch_async(Property, v24);
  }

  else
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "[NEIKEv2Session sendMOBIKEWithRetries:retryInterval:interfaceName:invalidateTransport:resetEndpoint:callbackQueue:callback:]";
      _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "%s called with null interfaceName", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __125__NEIKEv2Session_sendMOBIKEWithRetries_retryInterval_interfaceName_invalidateTransport_resetEndpoint_callbackQueue_callback___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (void)sendPrivateNotifies:(id)notifies maxRetries:(unsigned int)retries retryIntervalInMilliseconds:(unint64_t)milliseconds callbackQueue:(id)queue callback:(id)callback
{
  v12 = MEMORY[0x1E695DEC8];
  callbackCopy = callback;
  queueCopy = queue;
  notifiesCopy = notifies;
  v16 = [[v12 alloc] initWithArray:notifiesCopy copyItems:1];

  v17 = [[NEIKEv2InformationalContext alloc] initWithPrivateNotifies:v16 maxRetries:retries retryIntervalMilliseconds:milliseconds callbackQueue:queueCopy callback:callbackCopy];
  if (self)
  {
    Property = objc_getProperty(self, v18, 384, 1);
  }

  else
  {
    Property = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __100__NEIKEv2Session_sendPrivateNotifies_maxRetries_retryIntervalInMilliseconds_callbackQueue_callback___block_invoke;
  v21[3] = &unk_1E7F0A0E8;
  v21[4] = self;
  v22 = v17;
  v20 = v17;
  dispatch_async(Property, v21);
}

void __100__NEIKEv2Session_sendPrivateNotifies_maxRetries_retryIntervalInMilliseconds_callbackQueue_callback___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (void)sendKeepaliveWithRetries:(unsigned int)retries retryIntervalInMilliseconds:(unint64_t)milliseconds callbackQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  v12 = [[NEIKEv2InformationalContext alloc] initWithPrivateNotifies:retries maxRetries:milliseconds retryIntervalMilliseconds:queueCopy callbackQueue:callbackCopy callback:?];

  if (v12)
  {
    *(v12 + 9) = 1;
  }

  if (self)
  {
    Property = objc_getProperty(self, v13, 384, 1);
  }

  else
  {
    Property = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__NEIKEv2Session_sendKeepaliveWithRetries_retryIntervalInMilliseconds_callbackQueue_callback___block_invoke;
  v16[3] = &unk_1E7F0A0E8;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  dispatch_async(Property, v16);
}

void __94__NEIKEv2Session_sendKeepaliveWithRetries_retryIntervalInMilliseconds_callbackQueue_callback___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (BOOL)updateConfiguration:(id)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 384, 1);
    }

    else
    {
      Property = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__NEIKEv2Session_updateConfiguration___block_invoke;
    v10[3] = &unk_1E7F0A0E8;
    v10[4] = self;
    v11 = configurationCopy;
    dispatch_async(Property, v10);
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[NEIKEv2Session updateConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null sessionConfig", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return configurationCopy != 0;
}

void __38__NEIKEv2Session_updateConfiguration___block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3[11])
  {
LABEL_13:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!objc_getProperty(v3, a2, 352, 1))
  {
LABEL_10:
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NEIKEv2Session updateConfiguration:]_block_invoke";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", &v11, 0xCu);
    }

    goto LABEL_13;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v4, 352, 1);
    if (Property)
    {
      objc_setProperty_atomic(Property, v4, *(a1 + 40), 88);
    }
  }

  v7 = *(a1 + 32);
  v8 = *MEMORY[0x1E69E9840];

  [(NEIKEv2Session *)v7 startDPDTimer];
}

- (void)startDPDTimer
{
  v54 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (objc_getProperty(self, a2, 352, 1))
    {
      Property = objc_getProperty(self, v3, 352, 1);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 88, 1);
      }

      v6 = Property;
      if ([v6 deadPeerDetectionEnabled]&& [v6 deadPeerDetectionInterval])
      {
        deadPeerDetectionInterval = [v6 deadPeerDetectionInterval];
        v8 = deadPeerDetectionInterval;
        v9 = 5.0;
        if (deadPeerDetectionInterval >= 0x12D)
        {
          v9 = 15.0;
          if (deadPeerDetectionInterval <= 0x383)
          {
            v9 = deadPeerDetectionInterval / 60.0;
          }
        }

        if (objc_opt_class())
        {
          if (objc_getProperty(self, v10, 288, 1))
          {
            [objc_getProperty(self v11];
          }

          else
          {
            v12 = objc_alloc(MEMORY[0x1E696AEC0]);
            v13 = [self description];
            v14 = [v12 initWithFormat:@"com.apple.networkextension[%@ Periodic Dead Peer Detection]", v13];

            v15 = [objc_alloc(MEMORY[0x1E69D54C0]) initWithIdentifier:v14];
            objc_setProperty_atomic(self, v16, v15, 288);
          }

          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NEGetSystemWakeTime();
            *buf = 138413058;
            selfCopy2 = self;
            v48 = 2048;
            v49 = v8;
            v50 = 2048;
            v51 = v9;
            v52 = 2112;
            v53 = v18;
            _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "%@: Setting DPD timer for %llu seconds, leeway %f seconds, last wake date %@", buf, 0x2Au);
          }

          objc_initWeak(buf, self);
          v20 = objc_getProperty(self, v19, 288, 1);
          v22 = objc_getProperty(self, v21, 384, 1);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __31__NEIKEv2Session_startDPDTimer__block_invoke;
          v44[3] = &unk_1E7F08A50;
          objc_copyWeak(&v45, buf);
          [v20 scheduleWithFireInterval:v22 leewayInterval:v44 queue:v8 handler:v9];

          objc_destroyWeak(&v45);
          objc_destroyWeak(buf);
        }

        else
        {
          if (objc_getProperty(self, v10, 296, 1))
          {
            v25 = objc_getProperty(self, v24, 296, 1);
            dispatch_source_cancel(v25);
            objc_setProperty_atomic(self, v26, 0, 296);
          }

          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            selfCopy2 = self;
            v48 = 2048;
            v49 = v8;
            v50 = 2048;
            v51 = v9;
            _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_INFO, "%@: Setting DPD timer for %llu seconds, leeway %f seconds", buf, 0x20u);
          }

          v29 = objc_getProperty(self, v28, 384, 1);
          v30 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v29);
          objc_setProperty_atomic(self, v31, v30, 296);

          if (objc_getProperty(self, v32, 296, 1))
          {
            v34 = objc_getProperty(self, v33, 296, 1);
            v35 = dispatch_time(0x8000000000000000, 1000000000 * v8);
            dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, (v9 * 1000000000.0));

            objc_initWeak(buf, self);
            v37 = objc_getProperty(self, v36, 296, 1);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __31__NEIKEv2Session_startDPDTimer__block_invoke_69;
            handler[3] = &unk_1E7F0AA58;
            v38 = v37;
            objc_copyWeak(&v43, buf);
            dispatch_source_set_event_handler(v38, handler);

            v40 = objc_getProperty(self, v39, 296, 1);
            dispatch_activate(v40);
            objc_destroyWeak(&v43);
            objc_destroyWeak(buf);
          }

          else
          {
            v41 = ne_log_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
            }
          }
        }
      }
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        selfCopy2 = "[NEIKEv2Session startDPDTimer]";
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __31__NEIKEv2Session_startDPDTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[11] & 1) == 0)
  {
    v3 = WeakRetained;
    [(NEIKEv2Session *)WeakRetained dpdTimerFired];
    WeakRetained = v3;
  }
}

void __31__NEIKEv2Session_startDPDTimer__block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[11] & 1) == 0)
  {
    v3 = WeakRetained;
    [(NEIKEv2Session *)WeakRetained dpdTimerFired];
    WeakRetained = v3;
  }
}

- (void)dpdTimerFired
{
  Property = objc_getProperty(self, a2, 352, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 88, 1);
  }

  v5 = Property;
  [self sendKeepaliveWithRetries:objc_msgSend(v5 retryIntervalInMilliseconds:"deadPeerDetectionMaxRetryCount") callbackQueue:objc_msgSend(v5 callback:{"deadPeerDetectionRetryIntervalMilliseconds"), 0, 0}];
  [(NEIKEv2Session *)self startDPDTimer];
}

- (void)removeChild:(void *)child withReason:
{
  if (self)
  {
    childCopy = child;
    v6 = [NEIKEv2DeleteChildContext alloc];
    v7 = childCopy;
    if (v6)
    {
      v17.receiver = v6;
      v17.super_class = NEIKEv2DeleteChildContext;
      v8 = objc_msgSendSuper2(&v17, sel_init);
      if (v8)
      {
        v6 = v8;
        v8->_childID = a2;
        v9 = v7;
        p_super = &v6->_reasonError->super;
        v6->_reasonError = v9;
      }

      else
      {
        p_super = ne_log_obj();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
        }

        v6 = 0;
      }
    }

    Property = objc_getProperty(self, v11, 384, 1);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__NEIKEv2Session_removeChild_withReason___block_invoke;
    v14[3] = &unk_1E7F0A0E8;
    v14[4] = self;
    v15 = v6;
    v13 = v6;
    dispatch_async(Property, v14);
  }
}

void __41__NEIKEv2Session_removeChild_withReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (void)forceRekeyChild:(unsigned int)child
{
  v5 = [NEIKEv2RekeyChildContext alloc];
  if (!v5)
  {
    goto LABEL_9;
  }

  v15.receiver = v5;
  v15.super_class = NEIKEv2RekeyChildContext;
  v7 = [(NEIKEv2Session *)&v15 init];
  if (!v7)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_9:
    v8 = 0;
    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    Property = 0;
    goto LABEL_5;
  }

  v8 = v7;
  v7->_previousMOBIKEMessageID = child;
  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  Property = objc_getProperty(self, v6, 384, 1);
LABEL_5:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__NEIKEv2Session_forceRekeyChild___block_invoke;
  v12[3] = &unk_1E7F0A0E8;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  dispatch_async(Property, v12);
}

void __34__NEIKEv2Session_forceRekeyChild___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (void)forceRekeyIKE
{
  v4 = objc_alloc_init(NEIKEv2RekeyIKEContext);
  if (self)
  {
    Property = objc_getProperty(self, v3, 384, 1);
  }

  else
  {
    Property = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__NEIKEv2Session_forceRekeyIKE__block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(Property, v7);
}

void __31__NEIKEv2Session_forceRekeyIKE__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 11) & 1) == 0)
    {
      [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:?];
    }
  }

  else
  {
    [(NEIKEv2Session *)0 enqueuePendingRequestContext:?];
  }
}

- (void)disconnect
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 384, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NEIKEv2Session_disconnect__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

void __28__NEIKEv2Session_disconnect__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Disconnect %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if (!v4 || (v4[11] & 1) == 0)
  {
    objc_initWeak(buf, v4);
    v6 = [NEIKEv2DeleteIKEContext alloc];
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 384, 1);
    }

    v8 = Property;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __28__NEIKEv2Session_disconnect__block_invoke_53;
    v12[3] = &unk_1E7F08A28;
    objc_copyWeak(&v13, buf);
    v9 = [(NEIKEv2DeleteIKEContext *)&v6->super.super.isa initDeleteIKEWithResponse:v8 callbackQueue:v12 callback:?];

    [(NEIKEv2Session *)*(a1 + 32) abort];
    [(NEIKEv2Session *)*(a1 + 32) enqueuePendingRequestContext:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __28__NEIKEv2Session_disconnect__block_invoke_53(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(NEIKEv2Session *)WeakRetained resetAll];
    Property = objc_getProperty(v3, v4, 352, 1);
    if (Property && Property[6] == 2)
    {
      v7 = objc_getProperty(v3, v6, 352, 1);
      [(NEIKEv2IKESA *)v7 setState:0 error:?];
      [(NEIKEv2Session *)v3 reportState];
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Disconnected %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)reportState
{
  v65 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_46;
  }

  Property = objc_getProperty(self, a2, 352, 1);
  if (Property)
  {
    v5 = Property[6];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_getProperty(self, v4, 352, 1);
  selfCopy = self;
  if (v6)
  {
    v6 = objc_getProperty(v6, v7, 56, 1);
  }

  v8 = v6;
  v9 = ne_log_obj();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  v41 = v8;
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    SessionStateString = NEIKEv2CreateSessionStateString(v5);
    *buf = 138412802;
    selfCopy3 = self;
    v61 = 2112;
    v62 = SessionStateString;
    v63 = 2112;
    v64 = v8;
    v12 = "%@ Reporting state %@ error %@";
    v13 = v9;
    v14 = 32;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    SessionStateString = NEIKEv2CreateSessionStateString(v5);
    *buf = 138412546;
    selfCopy3 = self;
    v61 = 2112;
    v62 = SessionStateString;
    v12 = "%@ Reporting state %@";
    v13 = v9;
    v14 = 22;
  }

  _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);

LABEL_12:
  selfCopy4 = self;
  self[5] = v5;
  [(NEIKEv2Session *)self updateEndpointState];
  stateUpdateBlock = [self stateUpdateBlock];
  queue = [self clientQueue];
  if (queue && stateUpdateBlock)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__NEIKEv2Session_reportState__block_invoke;
    block[3] = &unk_1E7F09280;
    block[4] = self;
    v56 = stateUpdateBlock;
    v57 = v5;
    v55 = v41;
    dispatch_async(queue, block);
    v20 = objc_getProperty(self, v19, 352, 1);
    if (v20)
    {
      v20[8] = 0;
    }
  }

  v39 = stateUpdateBlock;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = objc_getProperty(self, v18, 304, 1);
  v22 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v51;
    v40 = v45;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v50 + 1) + 8 * i);
        if (v26)
        {
          v27 = *(v26 + 16);
          if (v27)
          {
            v28 = *(v26 + 32);
            if (v5 == 3)
            {
              if (v28)
              {
                v29 = v28 == 3;
              }

              else
              {
                v29 = 1;
              }

              if (!v29)
              {
                v28 = 3;
                goto LABEL_33;
              }
            }

            else if (!v5 && v28)
            {
              v28 = 0;
LABEL_33:
              [(NEIKEv2ChildSA *)*(*(&v50 + 1) + 8 * i) setState:v28 error:v41];
            }

            if (*(v26 + 8))
            {
              childStateUpdateBlock = [selfCopy4 childStateUpdateBlock];
              v32 = childStateUpdateBlock;
              if (queue && childStateUpdateBlock)
              {
                v33 = objc_getProperty(v26, v31, 40, 1);
                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v45[0] = __29__NEIKEv2Session_reportState__block_invoke_2;
                v45[1] = &unk_1E7F08B58;
                v45[2] = selfCopy;
                v34 = v32;
                v49 = v27;
                v47 = v34;
                v48 = v28;
                v46 = v33;
                v35 = v33;
                dispatch_async(queue, v44);
                *(v26 + 8) = 0;

                selfCopy4 = selfCopy;
              }
            }

            continue;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v23);
  }

  WeakRetained = objc_loadWeakRetained(selfCopy4 + 45);
  v37 = WeakRetained;
  if (WeakRetained && v5 == 3 && (*(selfCopy4 + 14) & 1) == 0)
  {
    *(selfCopy4 + 14) = 1;
    [WeakRetained sessionFailedBeforeRequestingConfiguration:selfCopy4];
  }

LABEL_46:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)updateEndpointState
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 352, 1);
    if ([(NEIKEv2IKESA *)Property hasTransport])
    {
      v6 = objc_getProperty(self, v5, 352, 1);
      copyTransport = [(NEIKEv2IKESA *)v6 copyTransport];
      self = copyTransport;
      if (copyTransport)
      {
        v10 = objc_getProperty(copyTransport, v9, 16, 1);
        objc_setProperty_atomic(self, v11, v10, 56);

        v13 = objc_getProperty(self, v12, 24, 1);
      }

      else
      {
        objc_setProperty_atomic(self, v9, 0, 56);
        v13 = 0;
      }

      v14 = v13;
      objc_setProperty_atomic(self, v15, v14, 64);

      selfCopy = self;
      if (self)
      {
        selfCopy = objc_getProperty(self, v16, 32, 1);
      }

      v18 = selfCopy;
      interfaceName = [v18 interfaceName];
      objc_setProperty_atomic(self, v20, interfaceName, 72);
    }

    else
    {
      objc_setProperty_atomic(self, v5, 0, 56);
      objc_setProperty_atomic(self, v21, 0, 64);

      objc_setProperty_atomic(self, v22, 0, 72);
    }
  }
}

void *__29__NEIKEv2Session_reportState__block_invoke(void *result)
{
  v1 = result[4];
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(result[6] + 16))(result[6], result[7], result[5]);
  }

  return result;
}

uint64_t __29__NEIKEv2Session_reportState__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(*(result + 48) + 16))(*(result + 48), *(result + 64), *(result + 56), *(result + 40));
  }

  return result;
}

- (void)connect
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 384, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__NEIKEv2Session_connect__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

void __25__NEIKEv2Session_connect__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Connect %@", buf, 0xCu);
  }

  Property = *(a1 + 32);
  if (!Property)
  {
    goto LABEL_6;
  }

  if ((Property[11] & 1) == 0)
  {
    Property = objc_getProperty(Property, v4, 352, 1);
LABEL_6:
    v6 = [(NEIKEv2IKESA *)Property copyTransport];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__NEIKEv2Session_connect__block_invoke_51;
    v8[3] = &unk_1E7F0B0E8;
    v8[4] = *(a1 + 32);
    [(NEIKEv2Transport *)v6 waitForTransport:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __25__NEIKEv2Session_connect__block_invoke_51(uint64_t a1, const char *a2)
{
  v192 = *MEMORY[0x1E69E9840];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  [(NEIKEv2IKESA *)Property resyncAddress];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_getProperty(*(a1 + 32), v4, 384, 1);
    dispatch_assert_queue_V2(v6);

    v8 = objc_getProperty(v5, v7, 352, 1);
    v165 = 0;
    v166 = &v165;
    v167 = 0x3032000000;
    v168 = __Block_byref_object_copy__9420;
    v169 = __Block_byref_object_dispose__9421;
    v170 = [(NEIKEv2Session *)v5 firstChildSA];
    if (!v8)
    {
      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NEIKEv2Session(Exchange) initiateConnect]";
      v30 = "%s called with null ikeSA";
      goto LABEL_69;
    }

    v11 = objc_getProperty(v8, v10, 80, 1);
    v12 = [v11 requestChildlessSA];

    v14 = v166[5];
    if (v12)
    {
      if (!v14)
      {
LABEL_11:
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEFAULT, "%@ Initiating IKEv2 connection", &buf, 0xCu);
        }

        v22 = objc_getProperty(v8, v21, 80, 1);
        v23 = [v22 serverMode];

        if (v23)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v5;
            _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "%@ Cannot initiate connection while in server mode (connect)", &buf, 0xCu);
          }

          v27 = objc_getProperty(v5, v26, 352, 1);
          Error = NEIKEv2CreateError(9);
          [(NEIKEv2IKESA *)v27 setState:Error error:?];
LABEL_82:

          [(NEIKEv2Session *)v5 reportState];
          [(NEIKEv2Session *)v5 resetAll];
          goto LABEL_83;
        }

        if (v8[13])
        {
          v31 = 488;
        }

        else if (v8[12])
        {
          v31 = 480;
        }

        else
        {
          v31 = 472;
        }

        v32 = objc_getProperty(v8, v24, v31, 1);
        if (!v32 || (v32[8] & 1) == 0)
        {
          v56 = ne_log_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v5;
            _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "%@ Cannot initiate connection as transport is not connected (connect)", &buf, 0xCu);
          }

          v27 = objc_getProperty(v5, v57, 352, 1);
          Error = objc_getProperty(v8, v58, 56, 1);
          if (Error)
          {
            ErrorInternal = objc_getProperty(v8, v59, 56, 1);
          }

          else
          {
            ErrorInternal = NEIKEv2CreateErrorInternal(@"Transport is not connected (connect)", v59, v60, v61, v62, v63, v64, v65, v157);
          }

          v67 = ErrorInternal;
          [(NEIKEv2IKESA *)v27 setState:ErrorInternal error:?];

          goto LABEL_82;
        }

        [(NEIKEv2IKESA *)v8 setState:0 error:?];
        [(NEIKEv2Session *)v5 reportState];
        v35 = v166[5];
        if (v35)
        {
          v36 = [(NEIKEv2ChildSA *)v166[5] configProposalsWithoutKEM];
          v37 = [(NEIKEv2Session *)v5 generateSPIForChild:v35 proposals:v36];

          if ((v37 & 1) == 0)
          {
            v77 = ne_log_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v5;
              _os_log_error_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_ERROR, "%@ Failed to generate Child SA SPI (connect)", &buf, 0xCu);
            }

            v27 = objc_getProperty(v5, v78, 352, 1);
            Error = NEIKEv2CreateErrorCrypto(@"Failed to generate Child SA SPI (connect)", v79, v80, v81, v82, v83, v84, v85, v157);
            [(NEIKEv2IKESA *)v27 setState:Error error:?];
            goto LABEL_82;
          }
        }

        if (([(NEIKEv2IKESA *)v8 generateInitialValues]& 1) == 0)
        {
          v68 = ne_log_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v5;
            _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, "%@ Failed to generate local crypto values (connect)", &buf, 0xCu);
          }

          v27 = objc_getProperty(v5, v69, 352, 1);
          Error = NEIKEv2CreateErrorCrypto(@"Failed to generate local crypto values (connect)", v70, v71, v72, v73, v74, v75, v76, v157);
          [(NEIKEv2IKESA *)v27 setState:Error error:?];
          goto LABEL_82;
        }

        v39 = objc_getProperty(v8, v38, 88, 1);
        v40 = [v39 localCertificateReference];

        v42 = objc_getProperty(v8, v41, 88, 1);
        v164 = [v42 localCertificateKeyReference];

        v44 = objc_getProperty(v8, v43, 88, 1);
        v163 = [v44 localCertificateIsModernSystem];

        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v40;
          _os_log_debug_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEBUG, "fetchLocalCertificateIdentity: certIdentityPersistentData %@", &buf, 0xCu);
        }

        if (v40)
        {
LABEL_34:
          v47 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v40];
          v48 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v164];
          v49 = [NEIKEv2Crypto copySecIdentity:v47 keyData:v48 isModernSystem:v163];
          v50 = v49;
          if (v49)
          {
            certificateRef[0] = 0;
            v51 = SecIdentityCopyCertificate(v49, certificateRef);
            CFRelease(v50);
            if (!v51 && certificateRef[0])
            {
              IsValid = NECertificateDateIsValid(certificateRef[0]);
              if (certificateRef[0])
              {
                CFRelease(certificateRef[0]);
                certificateRef[0] = 0;
              }

              if (IsValid != 1)
              {
                if (IsValid == 3)
                {
                  v126 = ne_log_obj();
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf) = 0;
                    _os_log_error_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_ERROR, "local certificate is expired", &buf, 2u);
                  }

                  v127 = NEIKEv2CreateError(12);
                  [(NEIKEv2IKESA *)v8 setState:v127 error:?];
                }

                else if (IsValid == 2)
                {
                  v54 = ne_log_obj();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(buf) = 0;
                    _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "local certificate is not yet valid", &buf, 2u);
                  }

                  v55 = NEIKEv2CreateError(11);
                  [(NEIKEv2IKESA *)v8 setState:v55 error:?];
                }

                else
                {
                  v154 = ne_log_obj();
                  if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                  {
                    v156 = off_1E7F0ADC8[IsValid - 1];
                    LODWORD(buf) = 136315138;
                    *(&buf + 4) = v156;
                    _os_log_error_impl(&dword_1BA83C000, v154, OS_LOG_TYPE_ERROR, "local certificate status %s", &buf, 0xCu);
                  }

                  v155 = NEIKEv2CreateError(13);
                  [(NEIKEv2IKESA *)v8 setState:v155 error:?];
                }

LABEL_78:
                v171 = 0;

                v100 = v171;
                if ((v100 & 1) == 0)
                {
LABEL_79:
                  v101 = ne_log_obj();
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v5;
                    _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "%@ Failed to fetch local certificate identity (connect)", &buf, 0xCu);
                  }

                  v27 = objc_getProperty(v5, v102, 352, 1);
                  Error = NEIKEv2CreateErrorInternal(@"Failed to fetch local certificate identity (connect)", v103, v104, v105, v106, v107, v108, v109, v157);
                  [(NEIKEv2IKESA *)v27 setState:Error error:?];
                  goto LABEL_82;
                }

                goto LABEL_125;
              }

              objc_setProperty_atomic(v8, v52, v47, 264);
              objc_setProperty_atomic(v8, v128, v48, 272);
              v8[22] = v163;

LABEL_124:
LABEL_125:
              v29 = [NEIKEv2IKESAInitPacket createIKESAInitForInitiatorIKESA:v8];
              if (v29)
              {
                *&buf = MEMORY[0x1E69E9820];
                *(&buf + 1) = 3221225472;
                v179 = __43__NEIKEv2Session_Exchange__initiateConnect__block_invoke;
                v180 = &unk_1E7F082B0;
                v181 = v5;
                v182 = v8;
                v183 = &v165;
                if ([NEIKEv2Session sendRequest:v5 retry:v29 replyHandler:&buf]== -1)
                {
                  v130 = objc_getProperty(v5, v129, 352, 1);
                  ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"initiator SA INIT", v131, v132, v133, v134, v135, v136, v137, v157);
                  [(NEIKEv2IKESA *)v130 setState:ErrorFailedToSend error:?];

                  [(NEIKEv2Session *)v5 reportState];
                  [(NEIKEv2Session *)v5 resetAll];
                }
              }

              else
              {
                v141 = ne_log_obj();
                if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v5;
                  _os_log_error_impl(&dword_1BA83C000, v141, OS_LOG_TYPE_ERROR, "%@ Failed to create IKE SA Init packet (connect)", &buf, 0xCu);
                }

                v143 = objc_getProperty(v5, v142, 352, 1);
                v151 = NEIKEv2CreateErrorInternal(@"Failed to create IKE SA Init packet (connect)", v144, v145, v146, v147, v148, v149, v150, v157);
                [(NEIKEv2IKESA *)v143 setState:v151 error:?];

                [(NEIKEv2Session *)v5 reportState];
                [(NEIKEv2Session *)v5 resetAll];
                v29 = 0;
              }

              goto LABEL_22;
            }

            if (certificateRef[0])
            {
              CFRelease(certificateRef[0]);
              certificateRef[0] = 0;
            }

            v99 = ne_log_obj();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
            {
              LOWORD(buf) = 0;
              _os_log_fault_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_FAULT, "SecIdentityCopyCertificate failed", &buf, 2u);
            }
          }

          else
          {
            v99 = ne_log_obj();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_ERROR, "failed to get identity from persistent reference", &buf, 2u);
            }
          }

          goto LABEL_78;
        }

        v86 = objc_getProperty(v8, v46, 88, 1);
        v87 = [v86 localCertificateName];

        if (!v87)
        {
          goto LABEL_124;
        }

        value = v87;
        objc_opt_self();
        objc_opt_self();
        v88 = *MEMORY[0x1E697B010];
        v89 = *MEMORY[0x1E697B328];
        v185 = *MEMORY[0x1E697AFF8];
        v186 = v89;
        v90 = *MEMORY[0x1E695E4D0];
        *&v189 = v88;
        *(&v189 + 1) = v90;
        v91 = *MEMORY[0x1E697B268];
        v92 = *MEMORY[0x1E697B3A8];
        v187 = *MEMORY[0x1E697B260];
        v188 = v92;
        v160 = v92;
        v161 = v90;
        v190 = v91;
        v191 = v90;
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v185 count:4];
        result = 0;
        v94 = SecItemCopyMatching(v93, &result);
        v95 = result;
        if (v94 || ![result count])
        {
          v96 = ne_log_obj();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v184[0]) = 67109120;
            HIDWORD(v184[0]) = v94;
            _os_log_error_impl(&dword_1BA83C000, v96, OS_LOG_TYPE_ERROR, "failed to retrieve all certificate identities (%d)", v184, 8u);
          }
        }

        else
        {
          v113 = v95;

          if (v113)
          {
            v174 = 0u;
            v175 = 0u;
            *certificateRef = 0u;
            v173 = 0u;
            v114 = v113;
            v115 = [v114 countByEnumeratingWithState:certificateRef objects:&buf count:16];
            if (v115)
            {
              v116 = *v173;
              v158 = *MEMORY[0x1E697B3D0];
              v159 = *MEMORY[0x1E697B320];
              v157 = 136315138;
              do
              {
                v117 = 0;
                do
                {
                  if (*v173 != v116)
                  {
                    objc_enumerationMutation(v114);
                  }

                  v118 = *(certificateRef[1] + v117);
                  v184[0] = 0;
                  if (SecIdentityCopyCertificate(v118, v184))
                  {
                    if (v184[0])
                    {
                      CFRelease(v184[0]);
                    }
                  }

                  else
                  {
                    v119 = SecCertificateCopyCommonNames();
                    v120 = v119;
                    if (v119)
                    {
                      v193.length = CFArrayGetCount(v119);
                      v193.location = 0;
                      if (CFArrayContainsValue(v120, v193, value))
                      {
                        objc_opt_self();
                        if (v118)
                        {
                          v185 = v159;
                          v186 = v158;
                          *&v189 = v161;
                          *(&v189 + 1) = v118;
                          v187 = v160;
                          v190 = v161;
                          v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v185 count:3];
                          result = 0;
                          v122 = SecItemCopyMatching(v121, &result);
                          v123 = result;
                          if (v122)
                          {
                            v124 = ne_log_obj();
                            if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
                            {
                              *v176 = 0;
                              _os_log_fault_impl(&dword_1BA83C000, v124, OS_LOG_TYPE_FAULT, "SecItemCopyMatching failed", v176, 2u);
                            }

                            v40 = 0;
                          }

                          else
                          {
                            v40 = result;
                          }
                        }

                        else
                        {
                          v121 = ne_log_obj();
                          if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
                          {
                            LODWORD(v189) = 136315138;
                            *(&v189 + 4) = "+[NEIKEv2Crypto copyPersistentDataForIdentity:]";
                            _os_log_fault_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_FAULT, "%s called with null identity", &v189, 0xCu);
                          }

                          v40 = 0;
                        }
                      }

                      else
                      {
                        v40 = 0;
                      }

                      CFRelease(v120);
                    }

                    else
                    {
                      v40 = 0;
                    }

                    if (v184[0])
                    {
                      CFRelease(v184[0]);
                    }

                    if (v40)
                    {
                      goto LABEL_118;
                    }
                  }

                  ++v117;
                }

                while (v115 != v117);
                v125 = [v114 countByEnumeratingWithState:certificateRef objects:&buf count:16];
                v115 = v125;
              }

              while (v125);
            }

            v40 = 0;
LABEL_118:

            if (v40)
            {

              goto LABEL_34;
            }

LABEL_65:
            v98 = ne_log_obj();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = value;
              _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "failed to fetch persistent reference for Cert %@", &buf, 0xCu);
            }

            goto LABEL_79;
          }
        }

        v97 = ne_log_obj();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v189) = 0;
          _os_log_fault_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_FAULT, "ikev2_crypto_copy_all_cert_identities failed", &v189, 2u);
        }

        goto LABEL_65;
      }
    }

    else if (!v14)
    {
      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NEIKEv2Session(Exchange) initiateConnect]";
      v30 = "%s called with null childSA";
      goto LABEL_69;
    }

    v15 = objc_getProperty(v14, v13, 48, 1);
    v16 = v15 == 0;

    if (v16)
    {
      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_22;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NEIKEv2Session(Exchange) initiateConnect]";
      v30 = "%s called with null childSA.configuration";
    }

    else
    {
      v18 = [(NEIKEv2ChildSA *)v166[5] configProposalsWithoutKEM];
      v19 = v18 == 0;

      if (!v19)
      {
        goto LABEL_11;
      }

      v29 = ne_log_obj();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
LABEL_22:

LABEL_83:
        _Block_object_dispose(&v165, 8);

        goto LABEL_84;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NEIKEv2Session(Exchange) initiateConnect]";
      v30 = "%s called with null childSA.configProposalsWithoutKEM";
    }

LABEL_69:
    _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, v30, &buf, 0xCu);
    goto LABEL_22;
  }

LABEL_84:
  v112 = *MEMORY[0x1E69E9840];
}

- (NEIKEv2Session)initWithIKEConfig:(id)config firstChildConfig:(id)childConfig sessionConfig:(id)sessionConfig queue:(id)queue ipsecInterface:(NEVirtualInterface_s *)interface ikeSocketHandler:(id)handler kernelSASessionName:(id)name packetDelegate:(id)self0
{
  v31 = *MEMORY[0x1E69E9840];
  configCopy = config;
  childConfigCopy = childConfig;
  sessionConfigCopy = sessionConfig;
  queueCopy = queue;
  handlerCopy = handler;
  nameCopy = name;
  delegateCopy = delegate;
  if (!configCopy)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:kernelSASessionName:packetDelegate:]";
      v28 = "%s called with null ikeConfig";
      goto LABEL_13;
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_5;
  }

  if (!nameCopy)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:kernelSASessionName:packetDelegate:]";
      v28 = "%s called with null kernelSASessionName";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!queueCopy)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:kernelSASessionName:packetDelegate:]";
    v28 = "%s called with null queue";
LABEL_13:
    _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, v28, buf, 0xCu);
    goto LABEL_11;
  }

  v23 = [[NEIPSecSAKernelSession alloc] initWithName:nameCopy delegate:0];
  self = [(NEIKEv2Session *)&self->super initWithIKEConfig:configCopy firstChildConfig:childConfigCopy sessionConfig:sessionConfigCopy queue:queueCopy ipsecInterface:interface ikeSocketHandler:handlerCopy saSession:v23 shouldOwnSASession:1 packetDelegate:delegateCopy transport:0 configurationDelegate:0];

  selfCopy = self;
LABEL_5:

  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSObject)initWithIKEConfig:(void *)config firstChildConfig:(void *)childConfig sessionConfig:(void *)sessionConfig queue:(void *)queue ipsecInterface:(void *)interface ikeSocketHandler:(void *)handler saSession:(char)session shouldOwnSASession:(void *)self0 packetDelegate:(void *)self1 transport:(void *)self2 configurationDelegate:
{
  v200 = *MEMORY[0x1E69E9840];
  v165 = a2;
  configCopy = config;
  childConfigCopy = childConfig;
  sessionConfigCopy = sessionConfig;
  newValue = interface;
  handlerCopy = handler;
  aSessionCopy = aSession;
  delegateCopy = delegate;
  obj = transport;
  self = self;
  v164 = handlerCopy;
  if (!self)
  {
    v22 = v165;
    goto LABEL_148;
  }

  if (handlerCopy)
  {
    v187.receiver = self;
    v187.super_class = NEIKEv2Session;
    v20 = [&v187 init];
    v22 = v165;
    v23 = v20;
    if (v20)
    {
      v20[4] = -1;
      v20[5] = -1;
      v20[6] = -1;
      *(v20 + 41) = atomic_fetch_add_explicit(&sNEIKEv2SessionIndex, 1uLL, memory_order_relaxed);
      objc_setProperty_atomic_copy(v20, v21, newValue, 176);
      if (obj)
      {
        objc_storeWeak(v23 + 45, obj);
      }

      if (aSessionCopy)
      {
        objc_storeWeak(v23 + 46, aSessionCopy);
      }

      if (queue)
      {
        if (queue[32] == 2)
        {
          *(v23 + 43) = CFRetain(queue);
        }

        else
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v156 = queue[32];
            *v198 = 134217984;
            selfCopy = v156;
            _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "Passed in virtual interface of bad type %lld", v198, 0xCu);
          }
        }
      }

      objc_storeStrong(v23 + 50, a2);
      objc_setProperty_atomic(v23, v25, sessionConfigCopy, 384);
      objc_initWeak(&location, v23);
      v26 = [NEIKEv2IKESA alloc];
      v167 = objc_getProperty(v23, v27, 176, 1);
      if (v167)
      {
        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = __181__NEIKEv2Session_initWithIKEConfig_firstChildConfig_sessionConfig_queue_ipsecInterface_ikeSocketHandler_saSession_shouldOwnSASession_packetDelegate_transport_configurationDelegate___block_invoke;
        v184[3] = &unk_1E7F08A00;
        v162 = &v185;
        objc_copyWeak(&v185, &location);
        v28 = v184;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v23 + 41);
      v30 = v165;
      v172 = childConfigCopy;
      v173 = sessionConfigCopy;
      v31 = delegateCopy;
      self = v23;
      v174 = v28;
      v175 = aSessionCopy;
      v168 = obj;
      v180 = v30;
      if (!v26)
      {
        v32 = 0;
LABEL_99:

        objc_setProperty_atomic(self, v109, v32, 352);
        if (!objc_getProperty(self, v110, 352, 1))
        {
          v154 = ne_log_obj();
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            *v198 = 138412290;
            selfCopy = self;
            _os_log_error_impl(&dword_1BA83C000, v154, OS_LOG_TYPE_ERROR, "%@ failed to create IKE SA", v198, 0xCu);
          }

          self = 0;
          goto LABEL_144;
        }

        v112 = objc_getProperty(self, v111, 352, 1);
        copyTransport = [(NEIKEv2IKESA *)v112 copyTransport];
        v182[0] = MEMORY[0x1E69E9820];
        v182[1] = 3221225472;
        v182[2] = __181__NEIKEv2Session_initWithIKEConfig_firstChildConfig_sessionConfig_queue_ipsecInterface_ikeSocketHandler_saSession_shouldOwnSASession_packetDelegate_transport_configurationDelegate___block_invoke_45;
        v182[3] = &unk_1E7F0B0E8;
        selfCopy2 = self;
        v183 = selfCopy2;
        [(NEIKEv2Transport *)copyTransport waitForTransport:v182];

        serverMode = [v180 serverMode];
        LOBYTE(selfCopy2[1].isa) = serverMode;
        if (serverMode)
        {
          objc_setProperty_atomic(selfCopy2, v117, configCopy, 184);
        }

        v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(selfCopy2, v119, v118, 304);

        if (objc_getProperty(selfCopy2, v120, 304, 1))
        {
          if (configCopy && ([(NEIKEv2Session *)selfCopy2 addFirstChild:configCopy], [(NEIKEv2Session *)selfCopy2 firstChildSA], v122 = objc_claimAutoreleasedReturnValue(), v123 = v122 == 0, v122, v123))
          {
            v155 = ne_log_obj();
            if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
            {
              *v198 = 136315138;
              selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
              _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.firstChildSA", v198, 0xCu);
            }
          }

          else
          {
            v124 = objc_alloc_init(MEMORY[0x1E695DF90]);
            objc_setProperty_atomic(selfCopy2, v125, v124, 200);

            if (objc_getProperty(selfCopy2, v126, 200, 1))
            {
              v127 = objc_alloc_init(MEMORY[0x1E695DF90]);
              objc_setProperty_atomic(selfCopy2, v128, v127, 208);

              if (objc_getProperty(selfCopy2, v129, 208, 1))
              {
                v130 = objc_alloc_init(MEMORY[0x1E695DF90]);
                objc_setProperty_atomic(selfCopy2, v131, v130, 240);

                if (objc_getProperty(selfCopy2, v132, 240, 1))
                {
                  v133 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  objc_setProperty_atomic(selfCopy2, v134, v133, 248);

                  if (objc_getProperty(selfCopy2, v135, 248, 1))
                  {
                    v136 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    objc_setProperty_atomic(selfCopy2, v137, v136, 256);

                    if (objc_getProperty(selfCopy2, v138, 256, 1))
                    {
                      v139 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      objc_setProperty_atomic(selfCopy2, v140, v139, 264);

                      if (objc_getProperty(selfCopy2, v141, 264, 1))
                      {
                        v142 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        objc_setProperty_atomic(selfCopy2, v143, v142, 272);

                        if (objc_getProperty(selfCopy2, v144, 272, 1))
                        {
                          BYTE1(selfCopy2[1].isa) = session;
                          objc_setProperty_atomic(selfCopy2, v145, v164, 192);
                          v147 = objc_getProperty(selfCopy2, v146, 192, 1);
                          [v147 setDelegate:selfCopy2];

                          v149 = objc_getProperty(selfCopy2, v148, 384, 1);
                          v151 = objc_getProperty(selfCopy2, v150, 192, 1);
                          [v151 setDelegateQueue:v149];

                          v152 = objc_alloc_init(NEIKEv2RTT);
                          objc_setProperty_atomic(selfCopy2, v153, v152, 376);

                          self = selfCopy2;
LABEL_143:
                          v154 = v183;
LABEL_144:

                          if (v167)
                          {
                            objc_destroyWeak(v162);
                          }

                          objc_destroyWeak(&location);
                          goto LABEL_147;
                        }

                        v155 = ne_log_obj();
                        if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                        {
                          *v198 = 136315138;
                          selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                          _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.replyFragmentMaps", v198, 0xCu);
                        }
                      }

                      else
                      {
                        v155 = ne_log_obj();
                        if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                        {
                          *v198 = 136315138;
                          selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                          _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.requestFragmentMaps", v198, 0xCu);
                        }
                      }
                    }

                    else
                    {
                      v155 = ne_log_obj();
                      if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                      {
                        *v198 = 136315138;
                        selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                        _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.receivedReplyIDs", v198, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v155 = ne_log_obj();
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                    {
                      *v198 = 136315138;
                      selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                      _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.receivedRequestIDs", v198, 0xCu);
                    }
                  }
                }

                else
                {
                  v155 = ne_log_obj();
                  if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                  {
                    *v198 = 136315138;
                    selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                    _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.sentReplies", v198, 0xCu);
                  }
                }
              }

              else
              {
                v155 = ne_log_obj();
                if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
                {
                  *v198 = 136315138;
                  selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                  _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.databaseSAs", v198, 0xCu);
                }
              }
            }

            else
            {
              v155 = ne_log_obj();
              if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
              {
                *v198 = 136315138;
                selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
                _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.databaseLarvalSAs", v198, 0xCu);
              }
            }
          }
        }

        else
        {
          v155 = ne_log_obj();
          if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
          {
            *v198 = 136315138;
            selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
            _os_log_fault_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_FAULT, "%s called with null self.childSAs", v198, 0xCu);
          }
        }

        self = 0;
        goto LABEL_143;
      }

      v32 = -[NEIKEv2IKESA initIKESACommonWithConfiguration:sessionConfiguration:queue:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:isInitiator:](v26, v30, v172, v173, self, v174, v175, v168, v29, [v30 serverMode] ^ 1u);
      if (!v32)
      {
        goto LABEL_99;
      }

      if ([v30 randomizeLocalPort])
      {
        v163 = 0;
      }

      else
      {
        if ([v30 forceUDPEncapsulation])
        {
          v33 = 4500;
        }

        else
        {
          v33 = 500;
        }

        v163 = v33;
      }

      if (aSessionCopy)
      {
        remoteEndpoint = [v30 remoteEndpoint];
        v35 = remoteEndpoint == 0;

        if (v35)
        {
          goto LABEL_54;
        }
      }

      remoteEndpoint2 = [v30 remoteEndpoint];
      v38 = remoteEndpoint2 == 0;

      if (v38)
      {
        v57 = ne_log_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          *v198 = 136315138;
          selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
          _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "%s called with null configuration.remoteEndpoint", v198, 0xCu);
        }
      }

      else
      {
        remoteEndpoint3 = [v30 remoteEndpoint];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v58 = ne_log_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            *v198 = 136315138;
            selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
            _os_log_fault_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_FAULT, "%s called with null [configuration.remoteEndpoint isKindOfClass:[NWAddressEndpoint class]]", v198, 0xCu);
          }

          goto LABEL_46;
        }

        remoteEndpoint4 = [v30 remoteEndpoint];
        address = [remoteEndpoint4 address];

        if (address)
        {
          if (*address > 0xFu)
          {
            localEndpoint = [v30 localEndpoint];
            v44 = localEndpoint == 0;

            if (v44)
            {
LABEL_39:
              remoteEndpoint5 = [v30 remoteEndpoint];
              v55 = *([remoteEndpoint5 address] + 2);

              if (v55)
              {
                v56 = __rev16(v55);
              }

              else if ([v30 forceUDPEncapsulation])
              {
                v56 = 4500;
              }

              else
              {
                v56 = 500;
              }

              remoteEndpoint6 = [v30 remoteEndpoint];
              v60 = -[NEIKEv2IKESA copyAddressFrom:with:]([remoteEndpoint6 address], v56);
              objc_setProperty_atomic(v32, v61, v60, 72);

LABEL_54:
              if (BYTE1(v32[3].isa) & 1) != 0 && (BYTE1(v32[1].isa))
              {
                v62 = objc_getProperty(v32, v36, 72, 1);
                if (!v62 || (v63 = v62, v64 = objc_getProperty(v32, v36, 64, 1) == 0, v63, v64))
                {
                  if ([objc_getProperty(v32 v36])
                  {
                    v66 = 1;
                    v67 = 1;
                  }

                  else
                  {
                    v190 = 0u;
                    v191 = 0u;
                    v188 = 0u;
                    v189 = 0u;
                    configurationRequest = [v172 configurationRequest];
                    v70 = configurationRequest;
                    if (configurationRequest)
                    {
                      Property = objc_getProperty(configurationRequest, v69, 16, 1);
                    }

                    else
                    {
                      Property = 0;
                    }

                    v72 = Property;

                    v73 = [v72 countByEnumeratingWithState:&v188 objects:v198 count:16];
                    v66 = 0;
                    v67 = 0;
                    if (v73)
                    {
                      v74 = *v189;
                      do
                      {
                        for (i = 0; i != v73; ++i)
                        {
                          if (*v189 != v74)
                          {
                            objc_enumerationMutation(v72);
                          }

                          v76 = *(*(&v188 + 1) + 8 * i);
                          if ([v76 attributeType] == 25958)
                          {
                            v66 = 1;
                          }

                          else
                          {
                            v67 |= [v76 attributeType] == 25959;
                          }
                        }

                        v73 = [v72 countByEnumeratingWithState:&v188 objects:v198 count:16];
                      }

                      while (v73);
                    }

                    v22 = v165;
                  }

                  if (((objc_getProperty(v32, v65, 64, 1) == 0) & v66) == 1)
                  {
                    v78 = [MEMORY[0x1E6977E08] endpointWithHostname:@"::" port:@"500"];
                    objc_setProperty_atomic(v32, v79, v78, 64);
                  }

                  if (((objc_getProperty(v32, v77, 72, 1) == 0) & v67) == 1)
                  {
                    v80 = [MEMORY[0x1E6977E08] endpointWithHostname:@"::1" port:@"500"];
                    objc_setProperty_atomic(v32, v81, v80, 72);
                  }
                }
              }

              if (v31)
              {
                transportType = v31->_transportType;
                if (transportType - 2 < 2)
                {
                  v83 = 488;
                  v84 = 13;
                }

                else
                {
                  if (!transportType)
                  {
                    v83 = 472;
                    goto LABEL_93;
                  }

                  if (transportType != 1)
                  {
LABEL_94:
                    v95 = objc_getProperty(v32, v36, 32, 1);
                    [(NEIKEv2Transport *)v31 addClient:v95 delegate:self];
                    v97 = objc_getProperty(v31, v96, 24, 1);
                    objc_setProperty_atomic(v32, v98, v97, 72);

                    v100 = objc_getProperty(v31, v99, 16, 1);
                    objc_setProperty_atomic(v32, v101, v100, 64);

                    v102 = ne_log_large_obj();
                    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                    {
                      v104 = objc_getProperty(v32, v103, 72, 1);
                      v106 = objc_getProperty(v32, v105, 80, 1);
                      *buf = 138412802;
                      v193 = v32;
                      v194 = 2112;
                      v195 = v104;
                      v196 = 2112;
                      v197 = v106;
                      _os_log_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_INFO, "Created %@ to %@ with configuration %@", buf, 0x20u);
                    }

                    v94 = ne_log_large_obj();
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                    {
                      v108 = objc_getProperty(v32, v107, 88, 1);
                      *buf = 138412290;
                      v193 = v108;
                      _os_log_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_INFO, "Session configuration %@", buf, 0xCu);
                    }

                    goto LABEL_98;
                  }

                  v83 = 480;
                  v84 = 12;
                }

                *(&v32->isa + v84) = 1;
LABEL_93:
                objc_setProperty_atomic(v32, v36, v31, v83);
                goto LABEL_94;
              }

              forceUDPEncapsulation = [v180 forceUDPEncapsulation];
              v87 = objc_getProperty(v32, v86, 72, 1);
              v89 = objc_getProperty(v32, v88, 64, 1);
              v91 = objc_getProperty(v32, v90, 304, 1);
              v31 = [NEIKEv2Transport createTransport:forceUDPEncapsulation remote:v87 local:v89 localPort:v163 boundInterface:v91 queue:v173 socketGetBlock:v174 packetDelegate:v175];

              if (v31)
              {
                if ([v180 forceUDPEncapsulation])
                {
                  BYTE4(v32[1].isa) = 1;
                  v83 = 480;
                }

                else
                {
                  v83 = 472;
                }

                goto LABEL_93;
              }

              v92 = ne_log_obj();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                v159 = objc_getProperty(v32, v93, 72, 1);
                *buf = 138412546;
                v193 = v32;
                v194 = 2112;
                v195 = v159;
                _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "%@ failed to create transport for %@", buf, 0x16u);
              }

              v31 = 0;
LABEL_90:
              v94 = v32;
              v32 = 0;
LABEL_98:

              goto LABEL_99;
            }

            localEndpoint2 = [v30 localEndpoint];
            objc_opt_class();
            v46 = objc_opt_isKindOfClass();

            if (v46)
            {
              localEndpoint3 = [v30 localEndpoint];
              address2 = [localEndpoint3 address];

              if (address2)
              {
                if (*address2 > 0xFu)
                {
                  v49 = __rev16(*(address2 + 1));
                  if (*(address2 + 1))
                  {
                    v50 = v49;
                  }

                  else
                  {
                    v50 = v163;
                  }

                  v163 = v50;
                  localEndpoint4 = [v30 localEndpoint];
                  v52 = -[NEIKEv2IKESA copyAddressFrom:with:]([localEndpoint4 address], v163);
                  objc_setProperty_atomic(v32, v53, v52, 64);

                  goto LABEL_39;
                }

                v161 = ne_log_obj();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
                {
                  *v198 = 136315138;
                  selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
                  _os_log_fault_impl(&dword_1BA83C000, v161, OS_LOG_TYPE_FAULT, "%s called with null (localAddress->sa_len >= sizeof(struct sockaddr_in))", v198, 0xCu);
                }
              }

              else
              {
                v161 = ne_log_obj();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
                {
                  *v198 = 136315138;
                  selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
                  _os_log_fault_impl(&dword_1BA83C000, v161, OS_LOG_TYPE_FAULT, "%s called with null localAddress", v198, 0xCu);
                }
              }

              v22 = v165;
              goto LABEL_90;
            }

            v58 = ne_log_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
            {
              *v198 = 136315138;
              selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
              _os_log_fault_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_FAULT, "%s called with null [configuration.localEndpoint isKindOfClass:[NWAddressEndpoint class]]", v198, 0xCu);
            }

LABEL_46:

            goto LABEL_90;
          }

          v57 = ne_log_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *v198 = 136315138;
            selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
            _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "%s called with null (remoteAddress->sa_len >= sizeof(struct sockaddr_in))", v198, 0xCu);
          }
        }

        else
        {
          v57 = ne_log_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *v198 = 136315138;
            selfCopy = "[NEIKEv2IKESA initIKESAWithConfiguration:sessionConfiguration:queue:initialTransport:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:]";
            _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "%s called with null remoteAddress", v198, 0xCu);
          }
        }
      }

      goto LABEL_90;
    }

    self = ne_log_obj();
    if (os_log_type_enabled(self, OS_LOG_TYPE_FAULT))
    {
      *v198 = 0;
      _os_log_fault_impl(&dword_1BA83C000, self, OS_LOG_TYPE_FAULT, "[super init] failed", v198, 2u);
    }
  }

  else
  {
    ne_log_obj();
    v160 = v22 = v165;
    if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
    {
      *v198 = 136315138;
      selfCopy = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]";
      _os_log_fault_impl(&dword_1BA83C000, v160, OS_LOG_TYPE_FAULT, "%s called with null saSession", v198, 0xCu);
    }
  }

  self = 0;
LABEL_147:

LABEL_148:
  v157 = *MEMORY[0x1E69E9840];
  return self;
}

void __181__NEIKEv2Session_initWithIKEConfig_firstChildConfig_sessionConfig_queue_ipsecInterface_ikeSocketHandler_saSession_shouldOwnSASession_packetDelegate_transport_configurationDelegate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained && (WeakRetained[12] & 1) == 0 && objc_getProperty(WeakRetained, v10, 176, 1))
  {
    Property = objc_getProperty(v11, v12, 176, 1);
    v14 = Property;
    v15 = (*(Property + 2))(v14, [v11 clientCallbackInfo], a2, a3, a4);

    *a5 = v15;
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = *a5;
      v19 = 136315394;
      v20 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:shouldOwnSASession:packetDelegate:transport:configurationDelegate:]_block_invoke";
      v21 = 1024;
      v22 = v18;
      _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%s: Get socket %d\n", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addFirstChild:(void *)child
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (child)
  {
    firstChildSA = [(NEIKEv2Session *)child firstChildSA];

    if (firstChildSA)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        childCopy = child;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ Already have a first child SA, ignoring request", &v15, 0xCu);
      }
    }

    else
    {
      v7 = [NEIKEv2ChildSA alloc];
      objc_opt_self();
      add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
      if (!add_explicit)
      {
        add_explicit = atomic_fetch_add_explicit(getNewChildSAID_nextChildSAID, 1u, memory_order_relaxed);
      }

      Property = objc_getProperty(child, v8, 352, 1);
      v11 = [(NEIKEv2ChildSA *)&v7->super initWithConfiguration:v4 childID:add_explicit ikeSA:Property];
      if (v11)
      {
        v6 = v11;
        [objc_getProperty(child v12];
      }

      else
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v15 = 136315138;
          childCopy = "[NEIKEv2Session addFirstChild:]";
          _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null firstChildSA", &v15, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NEIKEv2Session)initWithIKEConfig:(id)config firstChildConfig:(id)childConfig sessionConfig:(id)sessionConfig queue:(id)queue ipsecInterface:(NEVirtualInterface_s *)interface ikeSocketHandler:(id)handler saSession:(id)session packetDelegate:(id)self0
{
  v31 = *MEMORY[0x1E69E9840];
  configCopy = config;
  childConfigCopy = childConfig;
  sessionConfigCopy = sessionConfig;
  queueCopy = queue;
  handlerCopy = handler;
  sessionCopy = session;
  delegateCopy = delegate;
  v23 = delegateCopy;
  if (!configCopy)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:packetDelegate:]";
      v28 = "%s called with null ikeConfig";
      goto LABEL_13;
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_5;
  }

  if (!sessionCopy)
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:packetDelegate:]";
      v28 = "%s called with null saSession";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!queueCopy)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v30 = "[NEIKEv2Session initWithIKEConfig:firstChildConfig:sessionConfig:queue:ipsecInterface:ikeSocketHandler:saSession:packetDelegate:]";
    v28 = "%s called with null queue";
LABEL_13:
    _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, v28, buf, 0xCu);
    goto LABEL_11;
  }

  self = [(NEIKEv2Session *)&self->super initWithIKEConfig:configCopy firstChildConfig:childConfigCopy sessionConfig:sessionConfigCopy queue:queueCopy ipsecInterface:interface ikeSocketHandler:handlerCopy saSession:sessionCopy shouldOwnSASession:0 packetDelegate:delegateCopy transport:0 configurationDelegate:0];
  selfCopy = self;
LABEL_5:

  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSString)description
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 352, 1);
  }

  initiatorSPI = [(NEIKEv2IKESA *)self initiatorSPI];
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 352, 1);
  }

  else
  {
    Property = 0;
  }

  responderSPI = [(NEIKEv2IKESA *)Property responderSPI];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (selfCopy)
  {
    uniqueIndex = selfCopy->_uniqueIndex;
  }

  else
  {
    uniqueIndex = 0;
  }

  v9 = @"0000000000000000";
  if (initiatorSPI)
  {
    v10 = initiatorSPI;
  }

  else
  {
    v10 = @"0000000000000000";
  }

  if (responderSPI)
  {
    v9 = responderSPI;
  }

  v11 = [v7 initWithFormat:@"IKEv2Session[%llu, %@-%@]", uniqueIndex, v10, v9];

  return v11;
}

- (void)blackholeDetectedSA:(id)a
{
  v20 = *MEMORY[0x1E69E9840];
  aCopy = a;
  if (self)
  {
    Property = objc_getProperty(self, v4, 208, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKeyedSubscript:aCopy];
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 192, 1);
    }

    else
    {
      v10 = 0;
    }

    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = aCopy;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ blackhole detected SA %@ childSA %@", &v12, 0x2Au);
  }

  if (v7)
  {
    [(NEIKEv2Session *)self sendKeepaliveWithRetries:4 retryIntervalInMilliseconds:0 callbackQueue:0 callback:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)idleTimeoutSA:(id)a
{
  v22 = *MEMORY[0x1E69E9840];
  aCopy = a;
  if (self)
  {
    Property = objc_getProperty(self, v4, 208, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKeyedSubscript:aCopy];
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 192, 1);
    }

    else
    {
      v10 = 0;
    }

    v14 = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = aCopy;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ idle timeout SA %@ childSA %@", &v14, 0x2Au);
  }

  if (v7)
  {
    v11 = v7[4];
    Error = NEIKEv2CreateError(15);
    [(NEIKEv2Session *)self removeChild:v11 withReason:Error];
  }

  [aCopy invalidate];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)deleteSA:(id)a
{
  v22 = *MEMORY[0x1E69E9840];
  aCopy = a;
  if (self)
  {
    Property = objc_getProperty(self, v4, 208, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKeyedSubscript:aCopy];
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 192, 1);
    }

    else
    {
      v10 = 0;
    }

    v14 = 138413058;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = aCopy;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ delete SA %@ childSA %@", &v14, 0x2Au);
  }

  if (v7)
  {
    [(NEIKEv2Session *)self removeChild:v7[4]];
  }

  if (self)
  {
    v12 = objc_getProperty(self, v11, 208, 1);
  }

  else
  {
    v12 = 0;
  }

  [v12 setObject:0 forKeyedSubscript:aCopy];
  [aCopy invalidate];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)expireSA:(id)a
{
  v20 = *MEMORY[0x1E69E9840];
  aCopy = a;
  if (self)
  {
    Property = objc_getProperty(self, v4, 208, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKeyedSubscript:aCopy];
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 192, 1);
    }

    else
    {
      v10 = 0;
    }

    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = aCopy;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@ expire SA %@ childSA %@", &v12, 0x2Au);
  }

  if (v7 && [aCopy direction] == 2)
  {
    [(NEIKEv2Session *)self forceRekeyChild:v7[4]];
  }

  [aCopy invalidate];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "Dealloc %@", buf, 0xCu);
  }

  [(NEIKEv2Session *)self uninstallAllChildSAs];
  if (self)
  {
    if (objc_getProperty(self, v4, 192, 1))
    {
      if (self->_ownsDatabaseSession)
      {
        [objc_getProperty(self v5];
      }

      objc_setProperty_atomic(self, v5, 0, 192);
    }

    ipsecInterface = self->_ipsecInterface;
    if (ipsecInterface)
    {
      CFRelease(ipsecInterface);
      self->_ipsecInterface = 0;
    }

    if (objc_getProperty(self, v5, 280, 1))
    {
      Property = objc_getProperty(self, v7, 280, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(self, v9, 0, 280);
    }

    if (objc_getProperty(self, v7, 288, 1))
    {
      [objc_getProperty(self v10];
      objc_setProperty_atomic(self, v11, 0, 288);
    }

    if (objc_getProperty(self, v10, 296, 1))
    {
      v13 = objc_getProperty(self, v12, 296, 1);
      dispatch_source_cancel(v13);
      objc_setProperty_atomic(self, v14, 0, 296);
    }

    if (objc_getProperty(self, v12, 312, 1))
    {
      v16 = objc_getProperty(self, v15, 312, 1);
      dispatch_source_cancel(v16);
      objc_setProperty_atomic(self, v17, 0, 312);
    }
  }

  v19.receiver = self;
  v19.super_class = NEIKEv2Session;
  [(NEIKEv2Session *)&v19 dealloc];
  v18 = *MEMORY[0x1E69E9840];
}

- (NSObject)initWithIKEConfig:(NSObject *)config configurationDelegate:(void *)delegate queue:(void *)queue saSession:(void *)session shouldCopySASession:(void *)aSession transport:(void *)transport packetDelegate:(void *)packetDelegate
{
  v27 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  sessionCopy = session;
  aSessionCopy = aSession;
  transportCopy = transport;
  packetDelegateCopy = packetDelegate;
  if (!config)
  {
    configCopy = 0;
    goto LABEL_7;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:saSession:shouldCopySASession:transport:packetDelegate:]";
      v24 = "%s called with null ikeConfig";
      goto LABEL_15;
    }

LABEL_13:

    configCopy = 0;
    goto LABEL_6;
  }

  if (!aSessionCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:saSession:shouldCopySASession:transport:packetDelegate:]";
      v24 = "%s called with null saSession";
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!sessionCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:saSession:shouldCopySASession:transport:packetDelegate:]";
    v24 = "%s called with null queue";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_13;
  }

  copyEmptySASession = [aSessionCopy copyEmptySASession];
  config = [(NEIKEv2Session *)config initWithIKEConfig:delegateCopy firstChildConfig:0 sessionConfig:0 queue:sessionCopy ipsecInterface:0 ikeSocketHandler:0 saSession:copyEmptySASession shouldOwnSASession:1 packetDelegate:packetDelegateCopy transport:transportCopy configurationDelegate:queueCopy];

  configCopy = config;
LABEL_6:

LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
  return configCopy;
}

- (NSObject)initWithIKEConfig:(void *)config configurationDelegate:(void *)delegate queue:(void *)queue kernelSASessionName:(void *)name transport:(void *)transport packetDelegate:
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a2;
  configCopy = config;
  delegateCopy = delegate;
  queueCopy = queue;
  nameCopy = name;
  transportCopy = transport;
  if (!self)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  if (!v13)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:kernelSASessionName:transport:packetDelegate:]";
      v24 = "%s called with null ikeConfig";
      goto LABEL_15;
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_6;
  }

  if (!queueCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:kernelSASessionName:transport:packetDelegate:]";
      v24 = "%s called with null kernelSASessionName";
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Session initWithIKEConfig:configurationDelegate:queue:kernelSASessionName:transport:packetDelegate:]";
    v24 = "%s called with null queue";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_13;
  }

  v19 = [[NEIPSecSAKernelSession alloc] initWithName:queueCopy delegate:0];
  self = [(NEIKEv2Session *)self initWithIKEConfig:v13 firstChildConfig:0 sessionConfig:0 queue:delegateCopy ipsecInterface:0 ikeSocketHandler:0 saSession:v19 shouldOwnSASession:1 packetDelegate:transportCopy transport:nameCopy configurationDelegate:configCopy];

  selfCopy = self;
LABEL_6:

LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)removeFirstChild
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    firstChildSA = [(NEIKEv2Session *)self firstChildSA];
    if (firstChildSA)
    {
      [(NEIKEv2Session *)self resetChild:firstChildSA];
      [objc_getProperty(self v4];
      if (*(self + 10))
      {
        v5 = *(self + 344);
        if (v5)
        {
          CFRelease(v5);
          *(self + 344) = 0;
        }

        *(self + 10) = 0;
      }
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        selfCopy = self;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ No first child SA, ignoring request", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetChild:(char *)child
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (child)
  {
    v4 = ne_log_obj();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v32 = 138412546;
        childCopy2 = child;
        v34 = 2112;
        v35 = v3;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@ reset child SA %@", &v32, 0x16u);
      }

      v6 = v3;
      v8 = objc_getProperty(v6, v7, 56, 1);
      protocol = [v8 protocol];

      if (protocol == 240)
      {
        [(NEIKEv2Session *)child uninstallTLSChildSA:v6 rekey:0];
      }

      else
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          Property = objc_getProperty(child, v11, 192, 1);
          v32 = 138412802;
          childCopy2 = child;
          v34 = 2112;
          v35 = Property;
          v36 = 2112;
          v37 = v6;
          _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "%@ %@ Uninstalling child SA %@", &v32, 0x20u);
        }

        v14 = objc_getProperty(child, v13, 208, 1);
        v15 = [NEIKEv2Session copySAFromDictionary:v14 forChild:v6];
        if (v15)
        {
          v17 = v15;
          do
          {
            [objc_getProperty(child v16];
            [objc_getProperty(child v18];
            v20 = objc_getProperty(child, v19, 208, 1);
            v21 = [NEIKEv2Session copySAFromDictionary:v20 forChild:v6];

            v17 = v21;
          }

          while (v21);
        }

        v22 = objc_getProperty(child, v16, 200, 1);
        v23 = [NEIKEv2Session copySAFromDictionary:v22 forChild:v6];
        if (v23)
        {
          v25 = v23;
          do
          {
            [objc_getProperty(child v24];
            [objc_getProperty(child v26];
            v28 = objc_getProperty(child, v27, 208, 1);
            v29 = [NEIKEv2Session copySAFromDictionary:v28 forChild:v6];

            v25 = v29;
          }

          while (v29);
        }
      }

      [(NEIKEv2ChildSA *)v6 reset];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v32 = 136315138;
        childCopy2 = "[NEIKEv2Session resetChild:]";
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null childSA", &v32, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)uninstallTLSChildSA:(char)a rekey:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@ Uninstalling TLS childSA %@", buf, 0x16u);
  }

  tlsChildSAUninstallBlock = [self tlsChildSAUninstallBlock];
  clientQueue = [self clientQueue];
  v10 = clientQueue;
  if (tlsChildSAUninstallBlock && clientQueue)
  {
    if (v5)
    {
      v11 = v5[4];
      if (a)
      {
        v12 = objc_getProperty(v5, v9, 192, 1);
        Property = objc_getProperty(v5, v13, 200, 1);
LABEL_8:
        v15 = Property;
LABEL_14:
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __44__NEIKEv2Session_uninstallTLSChildSA_rekey___block_invoke;
        v26[3] = &unk_1E7F08BA8;
        v28 = v15;
        v29 = tlsChildSAUninstallBlock;
        v30 = v11;
        v27 = v12;
        v23 = v15;
        v24 = v12;
        dispatch_async(v10, v26);

        goto LABEL_15;
      }

      v16 = objc_getProperty(v5, v9, 56, 1);
      v18 = v16;
      if (v16)
      {
        v16 = objc_getProperty(v16, v17, 80, 1);
      }

      v12 = v16;

      v20 = objc_getProperty(v5, v19, 56, 1);
      v22 = v20;
      if (v20)
      {
        v20 = objc_getProperty(v20, v21, 88, 1);
      }
    }

    else
    {
      if (a)
      {
        v12 = 0;
        v11 = 0;
        Property = 0;
        goto LABEL_8;
      }

      v12 = 0;

      v11 = 0;
      v22 = 0;
      v20 = 0;
    }

    v15 = v20;

    goto LABEL_14;
  }

LABEL_15:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)copySAFromDictionary:(void *)dictionary forChild:(void *)child
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  childCopy = child;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v13}];

        if (v10 == childCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)startIKELifetimeTimer
{
  v40 = *MEMORY[0x1E69E9840];
  if (objc_getProperty(self, a2, 352, 1))
  {
    if (objc_getProperty(self, v3, 280, 1))
    {
      Property = objc_getProperty(self, v4, 280, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(self, v6, 0, 280);
    }

    v7 = objc_getProperty(self, v4, 352, 1);
    if (v7)
    {
      v7 = objc_getProperty(v7, v8, 96, 1);
    }

    v9 = v7;
    v11 = objc_getProperty(self, v10, 352, 1);
    if (v9)
    {
      v12 = v11 ? v11[9] : 0;
      v13 = [(NEIKEv2IKESAProposal *)v9 softLifetimeSecondsForInitiator:?];
      lifetimeSeconds = [v9 lifetimeSeconds];
      v15 = [(NEIKEv2IKESAProposal *)v9 softLifetimeSecondsForInitiator:?];
      if (v13)
      {
        v17 = v15;
        v18 = objc_getProperty(self, v16, 384, 1);
        v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v18);
        objc_setProperty_atomic(self, v20, v19, 280);

        v22 = objc_getProperty(self, v21, 280, 1) == 0;
        v23 = ne_log_obj();
        v24 = v23;
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
          }
        }

        else
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = self;
            v38 = 2048;
            v39 = v13;
            _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_INFO, "%@ Setting IKE soft lifetime timer for %llu seconds", buf, 0x16u);
          }

          v26 = objc_getProperty(self, v25, 280, 1);
          v27 = dispatch_time(0x8000000000000000, 1000000000 * v13);
          dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);

          objc_initWeak(buf, self);
          v29 = objc_getProperty(self, v28, 280, 1);
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke;
          v34[3] = &unk_1E7F08A78;
          v30 = v29;
          objc_copyWeak(v35, buf);
          v35[1] = (lifetimeSeconds - v17);
          dispatch_source_set_event_handler(v30, v34);

          v32 = objc_getProperty(self, v31, 280, 1);
          dispatch_activate(v32);
          objc_destroyWeak(v35);
          objc_destroyWeak(buf);
        }
      }
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      selfCopy = "[NEIKEv2Session startIKELifetimeTimer]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[11] & 1) == 0)
  {
    [WeakRetained forceRekeyIKE];
    if (objc_getProperty(v3, v4, 280, 1))
    {
      Property = objc_getProperty(v3, v5, 280, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(v3, v7, 0, 280);
    }

    v8 = objc_getProperty(v3, v5, 384, 1);
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
    objc_setProperty_atomic(v3, v10, v9, 280);

    v12 = objc_getProperty(v3, v11, 280, 1) == 0;
    v13 = ne_log_obj();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v30 = v3;
        v31 = 2048;
        v32 = v15;
        _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@ Setting IKE hard lifetime timer for %llu seconds", buf, 0x16u);
      }

      v17 = objc_getProperty(v3, v16, 280, 1);
      v18 = 1000000000 * *(a1 + 40);
      v19 = v17;
      v20 = dispatch_time(0x8000000000000000, v18);
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);

      v22 = objc_getProperty(v3, v21, 280, 1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke_70;
      handler[3] = &unk_1E7F0AA58;
      v23 = v22;
      objc_copyWeak(&v28, (a1 + 32));
      dispatch_source_set_event_handler(v23, handler);

      v25 = objc_getProperty(v3, v24, 280, 1);
      dispatch_activate(v25);
      objc_destroyWeak(&v28);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[11] & 1) == 0)
  {
    v4 = [NEIKEv2DeleteIKEContext alloc];
    v6 = objc_getProperty(v3, v5, 384, 1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke_2;
    v9[3] = &unk_1E7F08A28;
    objc_copyWeak(&v10, (a1 + 32));
    v7 = [(NEIKEv2DeleteIKEContext *)&v4->super.super.isa initDeleteIKEWithResponse:v6 callbackQueue:v9 callback:?];

    [(NEIKEv2Session *)v3 abort];
    [(NEIKEv2Session *)v3 enqueuePendingRequestContext:v7];

    objc_destroyWeak(&v10);
  }
}

uint64_t __39__NEIKEv2Session_startIKELifetimeTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    self = WeakRetained;
    WeakRetained = objc_getProperty(WeakRetained, WeakRetained, 352, 1);
    v2 = self;
    if (WeakRetained)
    {
      if (*(WeakRetained + 6) == 2)
      {
        [(NEIKEv2Session *)self resetAll];
        Property = objc_getProperty(self, v3, 352, 1);
        [(NEIKEv2IKESA *)Property setState:0 error:?];
        [(NEIKEv2Session *)self reportState];
        v2 = self;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)setIKESA:(uint64_t)a
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a)
  {
    if (v3)
    {
      if ((*(a + 11) & 1) == 0)
      {
        [(NEIKEv2Session *)a resetMessages];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = objc_getProperty(a, v6, 304, 1);
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * i);
              if (v12)
              {
                objc_storeWeak((v12 + 24), v5);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v9);
        }

        objc_setProperty_atomic(a, v13, v5, 352);
        [(NEIKEv2Session *)a startIKELifetimeTimer];
        [(NEIKEv2Session *)a invalidateDPDTimer];
        [(NEIKEv2Session *)a startDPDTimer];
      }
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v25 = "[NEIKEv2Session setIKESA:]";
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "%s called with null newIKESA", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (_DWORD)copyChildWithID:(void *)d
{
  v2 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_getProperty(d, a2, 304, 1);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (v8)
        {
          v9 = v8[4];
        }

        else
        {
          v9 = 0;
        }

        if (v9 == v2)
        {
          v11 = v8;
          goto LABEL_15;
        }

        ++v7;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v10;
    }

    while (v10);
  }

  v11 = 0;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (_OWORD)addEmptyInterface
{
  v2 = *(self + 344);
  if (v2)
  {
    CFRelease(v2);
    *(self + 344) = 0;
  }

  result = NEVirtualInterfaceCreateNexusExtendedWithOptions(*MEMORY[0x1E695E480], 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  *(self + 344) = result;
  *(self + 10) = 1;
  return result;
}

- (__CFString)interfaceName
{
  v2 = *(self + 344);
  if (v2)
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v2 + 265), 0x600u);
    if (!v3)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "NEVirtualInterfaceCopyName failed", v6, 2u);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)interfaceIndex
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 344);
    if (!v2)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    result = *(v2 + 292);
    if (!result)
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        interfaceName = [(NEIKEv2Session *)v1 interfaceName];
        v6 = 138412290;
        v7 = interfaceName;
        _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "NEVirtualInterfaceGetIndex (interfaceName=%@) failed", &v6, 0xCu);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)copyIPsecInterfaceWithMissingAllowed:(uint64_t)allowed
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(allowed + 344);
  if (v3)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v3 + 265), 0x600u);
    Index = NEVirtualInterfaceGetIndex(*(allowed + 344));
    v6 = Index;
    if (v4)
    {
      v7 = Index == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (!Index)
      {
        if (v4)
        {
          v15 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceName:v4];
          v17 = ne_log_obj();
          v9 = v17;
          if (v15)
          {
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_36;
            }

            v23 = 138412546;
            *v24 = allowed;
            *&v24[8] = 2112;
            *&v24[10] = v4;
            v10 = "Created interface for %@ from name %@";
            v11 = v9;
            v12 = 22;
            goto LABEL_17;
          }

          if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v23 = 138412290;
          *v24 = v4;
          v18 = "[NWInterface initWithInterfaceName:%@] failed";
        }

        else
        {
          v9 = ne_log_obj();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v23 = 138412290;
          *v24 = allowed;
          v18 = "%@ has ipsecInterface without index or name";
        }

        v19 = v9;
        v20 = 12;
        goto LABEL_34;
      }

      v15 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:Index];
      v8 = ne_log_obj();
      v9 = v8;
      if (v15)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v23 = 138412546;
          *v24 = allowed;
          *&v24[8] = 1024;
          *&v24[10] = v6;
          v10 = "Created interface for %@ from index %u";
          v11 = v9;
          v12 = 18;
LABEL_17:
          _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, v10, &v23, v12);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v23 = 67109120;
        *v24 = v6;
        v18 = "[NWInterface initWithInterfaceIndex:%u] failed";
        v19 = v9;
        v20 = 8;
        goto LABEL_34;
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:Index interfaceName:v4];
      v16 = ne_log_obj();
      v9 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v23 = 138412802;
          *v24 = allowed;
          *&v24[8] = 1024;
          *&v24[10] = v6;
          *&v24[14] = 2112;
          *&v24[16] = v4;
          v10 = "Created interface for %@ from index %u and name %@";
          v11 = v9;
          v12 = 28;
          goto LABEL_17;
        }

        goto LABEL_36;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v23 = 67109378;
        *v24 = v6;
        *&v24[4] = 2112;
        *&v24[6] = v4;
        v18 = "[NWInterface initWithInterfaceIndex:%u interfaceName:%@] failed";
        v19 = v9;
        v20 = 18;
LABEL_34:
        _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, v18, &v23, v20);
      }
    }

LABEL_35:
    v15 = 0;
    goto LABEL_36;
  }

  v14 = ne_log_obj();
  v4 = v14;
  if (a2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      *v24 = allowed;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ missing ipsecInterface", &v23, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v23 = 138412290;
    *v24 = allowed;
    _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "%@ missing ipsecInterface", &v23, 0xCu);
  }

  v15 = 0;
LABEL_37:

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (uint64_t)generateSPIForChild:(void *)child proposals:
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = a2;
  childCopy = child;
  if (!childCopy)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 136315138;
    selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
    v52 = "%s called with null proposals";
    goto LABEL_52;
  }

  if (!objc_getProperty(self, v6, 352, 1))
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 136315138;
    selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
    v52 = "%s called with null self.ikeSA";
LABEL_52:
    _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, v52, buf, 0xCu);
    goto LABEL_53;
  }

  Property = objc_getProperty(self, v8, 352, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 64, 1);
  }

  v11 = Property;

  if (!v11)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 136315138;
    selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
    v52 = "%s called with null self.ikeSA.localAddress";
    goto LABEL_52;
  }

  v13 = objc_getProperty(self, v12, 352, 1);
  if (v13)
  {
    v13 = objc_getProperty(v13, v14, 72, 1);
  }

  v15 = v13;

  v16 = ne_log_obj();
  v17 = v16;
  if (!v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
      v52 = "%s called with null self.ikeSA.remoteAddress";
      goto LABEL_52;
    }

LABEL_53:

    v53 = 0;
    goto LABEL_83;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v89 = 2112;
    v90 = objc_getProperty(self, v18, 192, 1);
    _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "%@ %@ Generating SPI(s) for child", buf, 0x16u);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v75 = childCopy;
  v19 = childCopy;
  v20 = [v19 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (!v20)
  {
    v22 = 0;
    v23 = 0;
LABEL_57:
    v74 = v5;

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v56 = v19;
    v57 = [v56 countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (!v57)
    {
      goto LABEL_77;
    }

    v58 = v57;
    v59 = *v77;
LABEL_59:
    v60 = 0;
    while (1)
    {
      if (*v77 != v59)
      {
        objc_enumerationMutation(v56);
      }

      v61 = *(*(&v76 + 1) + 8 * v60);
      if ([v61 protocol] == 2)
      {
        break;
      }

      if ([v61 protocol] == 3)
      {
        if (!v23)
        {
          v71 = ne_log_obj();
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_87;
          }

          *buf = 136315138;
          selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
          v72 = "%s called with null espLarvalSA";
          goto LABEL_91;
        }

        v62 = [NEIKEv2ESPSPI alloc];
        v63 = v23;
        goto LABEL_68;
      }

      if ([v61 protocol] == 240)
      {
        v64 = objc_alloc_init(NEIKEv2TLSSPI);
        goto LABEL_69;
      }

LABEL_72:
      if (v58 == ++v60)
      {
        v67 = [v56 countByEnumeratingWithState:&v76 objects:v85 count:16];
        v58 = v67;
        if (!v67)
        {
LABEL_77:

          v84 = 1;
          v5 = v74;
          childCopy = v75;
          goto LABEL_82;
        }

        goto LABEL_59;
      }
    }

    if (!v22)
    {
      v71 = ne_log_obj();
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
LABEL_87:
        v5 = v74;
        childCopy = v75;

        v84 = 0;
        goto LABEL_82;
      }

      *buf = 136315138;
      selfCopy3 = "[NEIKEv2Session generateSPIForChild:proposals:]";
      v72 = "%s called with null ahLarvalSA";
LABEL_91:
      _os_log_fault_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_FAULT, v72, buf, 0xCu);
      goto LABEL_87;
    }

    v62 = [NEIKEv2ESPSPI alloc];
    v63 = v22;
LABEL_68:
    v64 = -[NEIKEv2ESPSPI initWithValue:](v62, "initWithValue:", [v63 spi]);
LABEL_69:
    v66 = v64;
    if (v61)
    {
      objc_setProperty_atomic(v61, v65, v64, 80);
    }

    goto LABEL_72;
  }

  v21 = v20;
  v22 = 0;
  v23 = 0;
  v24 = *v81;
LABEL_13:
  v25 = 0;
  while (1)
  {
    if (*v81 != v24)
    {
      objc_enumerationMutation(v19);
    }

    v26 = *(*(&v80 + 1) + 8 * v25);
    if ([v26 protocol] == 240)
    {
      goto LABEL_41;
    }

    if ([v26 protocol] == 2)
    {
      if (v22)
      {
        v27 = 0;
        goto LABEL_40;
      }

      initInboundSA = [[NEIPSecSA alloc] initInboundSA];
      [initInboundSA setProtocol:2];
      v27 = initInboundSA;
      v22 = v27;
    }

    else
    {
      v27 = 0;
    }

    if ([v26 protocol] != 3)
    {
      if ([v26 protocol] != 240)
      {
        v54 = ne_log_obj();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = NEIKEv2ProtocolIDCreateString([v26 protocol]);
          *buf = 138412546;
          selfCopy3 = self;
          v89 = 2112;
          v90 = v55;
          _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "%@ Unsupported SA protcol %@", buf, 0x16u);
        }

        goto LABEL_81;
      }

      goto LABEL_40;
    }

    if (!v23)
    {
      break;
    }

LABEL_40:

LABEL_41:
    if (v21 == ++v25)
    {
      v51 = [v19 countByEnumeratingWithState:&v80 objects:v86 count:16];
      v21 = v51;
      if (!v51)
      {
        goto LABEL_57;
      }

      goto LABEL_13;
    }
  }

  initInboundSA2 = [[NEIPSecSA alloc] initInboundSA];

  [initInboundSA2 setProtocol:1];
  v27 = initInboundSA2;
  if (v5)
  {
    v31 = objc_getProperty(v5, v30, 48, 1);
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  mode = [v32 mode];

  if (mode == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  [v27 setMode:v34];
  [v27 setLifetimeSeconds:120];
  v36 = objc_getProperty(self, v35, 352, 1);
  if (v36)
  {
    v36 = objc_getProperty(v36, v37, 64, 1);
  }

  v38 = v36;
  [v27 setLocalAddress:v38];

  v40 = objc_getProperty(self, v39, 352, 1);
  if (v40)
  {
    v40 = objc_getProperty(v40, v41, 72, 1);
  }

  v42 = v40;
  [v27 setRemoteAddress:v42];

  v44 = objc_getProperty(self, v43, 352, 1);
  if (v44)
  {
    v44 = objc_getProperty(v44, v45, 304, 1);
  }

  v46 = v44;
  [v27 setBoundInterfaceName:v46];

  if (!self[43])
  {
    [(NEIKEv2Session *)self addEmptyInterface];
  }

  v47 = [(NEIKEv2Session *)self copyIPsecInterfaceWithMissingAllowed:?];
  interfaceName = [v47 interfaceName];
  [v27 setTunnelInterfaceName:interfaceName];

  if ([objc_getProperty(self v49])
  {
    [objc_getProperty(self v50];
    v23 = v27;
    goto LABEL_40;
  }

  v54 = ne_log_obj();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v73 = objc_getProperty(self, v68, 192, 1);
    *buf = 138412546;
    selfCopy3 = self;
    v89 = 2112;
    v90 = v73;
    _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "%@ [%@ addLarvalSA:larvalSA] failed", buf, 0x16u);
  }

  v23 = v27;
LABEL_81:
  childCopy = v75;

  v84 = 0;
LABEL_82:

  v53 = v84;
LABEL_83:

  v69 = *MEMORY[0x1E69E9840];
  return v53;
}

- (id)copySAFromDictionary:(void *)dictionary forSPI:(void *)i
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  iCopy = i;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 spi];
        if (v10 == [iCopy value])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)installChildSA:(uint64_t)a
{
  v304[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!a)
  {
    goto LABEL_69;
  }

  if (!objc_getProperty(a, v3, 352, 1))
  {
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session installChildSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (!v4)
  {
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session installChildSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
    }

    goto LABEL_68;
  }

  v6 = objc_getProperty(v4, v5, 56, 1);

  if (!v6)
  {
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session installChildSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, "%s called with null childSA.chosenProposal", buf, 0xCu);
    }

LABEL_68:

LABEL_69:
    v17 = 0;
    goto LABEL_212;
  }

  v8 = objc_getProperty(v4, v7, 56, 1);
  protocol = [v8 protocol];

  if (protocol != 240)
  {
    Property = objc_getProperty(a, v10, 352, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v62, 64, 1);
    }

    v63 = Property;

    if (v63)
    {
      v65 = objc_getProperty(a, v64, 352, 1);
      if (v65)
      {
        v65 = objc_getProperty(v65, v66, 72, 1);
      }

      v67 = v65;

      if (v67)
      {
        v69 = objc_getProperty(a, v68, 200, 1);
        v71 = objc_getProperty(v4, v70, 56, 1);
        v73 = v71;
        if (v71)
        {
          v71 = objc_getProperty(v71, v72, 80, 1);
        }

        v74 = v71;
        v75 = [NEIKEv2Session copySAFromDictionary:v69 forSPI:v74];

        v76 = ne_log_obj();
        v77 = v76;
        if (!v75)
        {
          if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
          {
            v109 = objc_getProperty(v4, v108, 56, 1);
            v111 = v109;
            if (v109)
            {
              v109 = objc_getProperty(v109, v110, 80, 1);
            }

            v112 = v109;
            *buf = 138412802;
            *&buf[4] = v112;
            *&buf[12] = 2112;
            *&buf[14] = objc_getProperty(a, v113, 200, 1);
            *&buf[22] = 2112;
            v294 = objc_getProperty(a, v114, 208, 1);
            _os_log_fault_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_FAULT, "copySAFromDictionary incoming %@ databaseLarvalSAs %@ databaseSAs %@ failed", buf, 0x20u);
          }

          goto LABEL_210;
        }

        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = a;
          *&buf[12] = 2112;
          *&buf[14] = objc_getProperty(a, v78, 192, 1);
          *&buf[22] = 2112;
          v294 = v4;
          _os_log_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_INFO, "%@ %@ Installing IPsec childSA %@", buf, 0x20u);
        }

        v79 = [NEIPSecSA alloc];
        v81 = objc_getProperty(v4, v80, 56, 1);
        v83 = v81;
        if (v81)
        {
          v81 = objc_getProperty(v81, v82, 88, 1);
        }

        v84 = v81;
        v77 = -[NEIPSecSA initOutboundSAWithSPI:](v79, "initOutboundSAWithSPI:", [v84 value]);

        v86 = objc_getProperty(v4, v85, 48, 1);
        LODWORD(v84) = [v86 mode] == 1;

        if (v84)
        {
          v87 = 1;
        }

        else
        {
          v87 = 2;
        }

        [v77 setMode:v87];
        v89 = objc_getProperty(v4, v88, 56, 1);
        v90 = [v89 protocol] == 2;

        if (v90)
        {
          v91 = 2;
        }

        else
        {
          v91 = 1;
        }

        [v77 setProtocol:v91];
        v93 = objc_getProperty(a, v92, 352, 1);
        if (v93)
        {
          v93 = objc_getProperty(v93, v94, 64, 1);
        }

        v95 = v93;
        [v77 setLocalAddress:v95];

        v97 = objc_getProperty(a, v96, 352, 1);
        if (v97)
        {
          v97 = objc_getProperty(v97, v98, 72, 1);
        }

        v99 = v97;
        [v77 setRemoteAddress:v99];

        v101 = objc_getProperty(v4, v100, 56, 1);
        encryptionProtocol = [(NEIKEv2ChildSAProposal *)v101 encryptionProtocol];
        if (!encryptionProtocol)
        {

          goto LABEL_190;
        }

        v104 = encryptionProtocol[2];

        if (v104 > 19)
        {
          if (v104 > 29)
          {
            if (v104 == 30)
            {
              v123 = objc_getProperty(v4, v105, 56, 1);
              encryptionProtocol2 = [(NEIKEv2ChildSAProposal *)v123 encryptionProtocol];
              if (encryptionProtocol2)
              {
                v126 = encryptionProtocol2[4];

                if (v126 == 128)
                {
                  v106 = 10;
                  goto LABEL_102;
                }

                if (v126 == 256)
                {
                  v106 = 11;
                  goto LABEL_102;
                }
              }

              else
              {
              }

              v148 = ne_log_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
              {
                v256 = objc_getProperty(v4, v275, 56, 1);
                encryptionProtocol3 = [(NEIKEv2ChildSAProposal *)v256 encryptionProtocol];
                v259 = encryptionProtocol3;
                if (encryptionProtocol3)
                {
                  v280 = *(encryptionProtocol3 + 16);
                }

                else
                {
                  v280 = 0;
                }

                String = NEIKEv2EncryptionWireTypeCreateString(v280);
                v263 = objc_getProperty(v4, v281, 56, 1);
                encryptionProtocol4 = [(NEIKEv2ChildSAProposal *)v263 encryptionProtocol];
                v266 = encryptionProtocol4;
                if (encryptionProtocol4)
                {
                  v267 = *(encryptionProtocol4 + 8);
                }

                else
                {
                  v267 = 0;
                }

                goto LABEL_217;
              }

LABEL_209:

              goto LABEL_210;
            }

            if (v104 != 31)
            {
              goto LABEL_190;
            }

            v106 = 9;
          }

          else
          {
            if (v104 != 20)
            {
              if (v104 == 28)
              {
                v106 = 8;
                goto LABEL_102;
              }

LABEL_190:
              v148 = ne_log_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
              {
                v249 = objc_getProperty(v4, v248, 56, 1);
                encryptionProtocol5 = [(NEIKEv2ChildSAProposal *)v249 encryptionProtocol];
                v252 = encryptionProtocol5;
                if (encryptionProtocol5)
                {
                  v253 = *(encryptionProtocol5 + 16);
                }

                else
                {
                  v253 = 0;
                }

                v254 = NEIKEv2EncryptionWireTypeCreateString(v253);
                *buf = 138412546;
                *&buf[4] = a;
                *&buf[12] = 2112;
                *&buf[14] = v254;
                _os_log_fault_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_FAULT, "%@ Unsupported encryption wire type %@", buf, 0x16u);
              }

              goto LABEL_209;
            }

            v119 = objc_getProperty(v4, v105, 56, 1);
            encryptionProtocol6 = [(NEIKEv2ChildSAProposal *)v119 encryptionProtocol];
            if (!encryptionProtocol6)
            {

              goto LABEL_202;
            }

            v122 = encryptionProtocol6[4];

            if (v122 != 128)
            {
              if (v122 == 256)
              {
                v106 = 7;
                goto LABEL_102;
              }

LABEL_202:
              v148 = ne_log_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
              {
                v256 = objc_getProperty(v4, v268, 56, 1);
                encryptionProtocol7 = [(NEIKEv2ChildSAProposal *)v256 encryptionProtocol];
                v259 = encryptionProtocol7;
                if (encryptionProtocol7)
                {
                  v271 = *(encryptionProtocol7 + 16);
                }

                else
                {
                  v271 = 0;
                }

                String = NEIKEv2EncryptionWireTypeCreateString(v271);
                v263 = objc_getProperty(v4, v272, 56, 1);
                encryptionProtocol8 = [(NEIKEv2ChildSAProposal *)v263 encryptionProtocol];
                v266 = encryptionProtocol8;
                if (encryptionProtocol8)
                {
                  v267 = *(encryptionProtocol8 + 8);
                }

                else
                {
                  v267 = 0;
                }

LABEL_217:
                *buf = 138412802;
                *&buf[4] = a;
                *&buf[12] = 2112;
                *&buf[14] = String;
                *&buf[22] = 1024;
                LODWORD(v294) = v267;
                _os_log_fault_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_FAULT, "%@ Unsupported %@ key length %u", buf, 0x1Cu);

                goto LABEL_209;
              }

              goto LABEL_209;
            }

            v106 = 6;
          }

LABEL_102:
          v127 = objc_getProperty(v4, v105, 56, 1);
          [v75 setLifetimeSeconds:{objc_msgSend(v127, "lifetimeSeconds")}];

          v129 = objc_getProperty(v4, v128, 56, 1);
          -[NSObject setLifetimeSeconds:](v77, "setLifetimeSeconds:", [v129 lifetimeSeconds]);

          [v75 setEncryptionAlgorithm:v106];
          [v77 setEncryptionAlgorithm:v106];
          v131 = objc_getProperty(v4, v130, 144, 1);
          [v75 setEncryptionKey:v131];

          v133 = objc_getProperty(v4, v132, 160, 1);
          [v77 setEncryptionKey:v133];

          v135 = objc_getProperty(v4, v134, 48, 1);
          [v75 setReplayWindowSize:{objc_msgSend(v135, "replayWindowSize")}];

          v137 = objc_getProperty(v4, v136, 48, 1);
          -[NSObject setReplayWindowSize:](v77, "setReplayWindowSize:", [v137 replayWindowSize]);

          [v75 setSequencePerTrafficClass:v4[10] & 1];
          [v77 setSequencePerTrafficClass:v4[10] & 1];
          v139 = objc_getProperty(v4, v138, 56, 1);
          integrityProtocol = [(NEIKEv2ChildSAProposal *)v139 integrityProtocol];
          type = [integrityProtocol type];

          if (type > 11)
          {
            switch(type)
            {
              case 12:
                type = 3;
                break;
              case 13:
                type = 4;
                break;
              case 14:
                type = 5;
                break;
              default:
                goto LABEL_116;
            }
          }

          else
          {
            if (!type)
            {
              v144 = objc_getProperty(v4, v143, 56, 1);
              encryptionProtocol9 = [(NEIKEv2ChildSAProposal *)v144 encryptionProtocol];
              if (encryptionProtocol9 && (v147 = encryptionProtocol9[2], v147 < 0x20))
              {

                if ((0xD0100000 >> v147))
                {
                  type = 0;
                  goto LABEL_120;
                }
              }

              else
              {
              }

              v148 = ne_log_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
              {
                v245 = objc_getProperty(v4, v240, 56, 1);
                encryptionProtocol10 = [(NEIKEv2ChildSAProposal *)v245 encryptionProtocol];
                *buf = 138412546;
                *&buf[4] = a;
                *&buf[12] = 2112;
                *&buf[14] = encryptionProtocol10;
                _os_log_error_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_ERROR, "%@ No integrity type selected, but encryption %@ is not authenticated", buf, 0x16u);
              }

              goto LABEL_209;
            }

            if (type != 1 && type != 2)
            {
LABEL_116:
              v148 = ne_log_obj();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
              {
                v241 = objc_getProperty(v4, v149, 56, 1);
                integrityProtocol2 = [(NEIKEv2ChildSAProposal *)v241 integrityProtocol];
                type2 = [integrityProtocol2 type];
                *buf = 138412546;
                *&buf[4] = a;
                *&buf[12] = 1024;
                *&buf[14] = type2;
                _os_log_error_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_ERROR, "%@ Unsupported integrity type %u", buf, 0x12u);
              }

              goto LABEL_209;
            }
          }

LABEL_120:
          [v75 setAuthenticationAlgorithm:type];
          [v77 setAuthenticationAlgorithm:type];
          v151 = objc_getProperty(v4, v150, 152, 1);
          [v75 setAuthenticationKey:v151];

          v153 = objc_getProperty(v4, v152, 168, 1);
          [v77 setAuthenticationKey:v153];

          v155 = objc_getProperty(a, v154, 352, 1);
          if (v155)
          {
            v155 = objc_getProperty(v155, v156, 80, 1);
          }

          v157 = v155;
          if ([v157 forceUDPEncapsulation]& 1) != 0 || (v159 = objc_getProperty(a, v158, 352, 1)) != 0 && (v159[14])
          {
          }

          else
          {
            v238 = objc_getProperty(a, v160, 352, 1);
            if (!v238)
            {
              goto LABEL_144;
            }

            v239 = v238[15];

            if ((v239 & 1) == 0)
            {
              goto LABEL_145;
            }
          }

          v162 = objc_getProperty(a, v161, 352, 1);
          if (v162)
          {
            v162 = objc_getProperty(v162, v163, 80, 1);
          }

          v164 = v162;
          if ([v164 forceUDPEncapsulation])
          {
          }

          else
          {
            disableSwitchToNATTPorts = [*(a + 400) disableSwitchToNATTPorts];

            if (disableSwitchToNATTPorts)
            {
              v157 = ne_log_obj();
              if (!os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
              {
LABEL_144:

LABEL_145:
                v187 = objc_getProperty(a, v161, 352, 1);
                if (v187 && (v187[14] & 1) != 0)
                {
                  v189 = objc_getProperty(a, v188, 352, 1);
                  if (v189)
                  {
                    v189 = objc_getProperty(v189, v190, 88, 1);
                  }

                  v191 = v189;
                  natTraversalKeepaliveDisabled = [v191 natTraversalKeepaliveDisabled];

                  if ((natTraversalKeepaliveDisabled & 1) == 0)
                  {
                    [v77 setNatKeepaliveEnabled:1];
                    v194 = objc_getProperty(a, v193, 352, 1);
                    if (v194)
                    {
                      v194 = objc_getProperty(v194, v195, 88, 1);
                    }

                    v196 = v194;
                    natTraversalKeepaliveOffloadEnabled = [v196 natTraversalKeepaliveOffloadEnabled];

                    if (natTraversalKeepaliveOffloadEnabled)
                    {
                      [v77 setNatKeepaliveOffloadEnabled:1];
                      v200 = objc_getProperty(a, v199, 352, 1);
                      if (v200)
                      {
                        v200 = objc_getProperty(v200, v201, 88, 1);
                      }

                      v202 = v200;
                      -[NSObject setNatKeepaliveOffloadIntervalSeconds:](v77, "setNatKeepaliveOffloadIntervalSeconds:", [v202 natTraversalKeepaliveOffloadInterval]);
                    }

                    v203 = objc_getProperty(a, v198, 352, 1);
                    if (v203)
                    {
                      v203 = objc_getProperty(v203, v204, 88, 1);
                    }

                    v205 = v203;
                    -[NSObject setNatKeepaliveIntervalSeconds:](v77, "setNatKeepaliveIntervalSeconds:", [v205 natTraversalKeepaliveInterval]);
                  }
                }

                v206 = objc_getProperty(a, v188, 352, 1);
                if (v206 && (v206[15] & 1) != 0)
                {
                  [v75 setNatDetectedOnPeer:1];
                }

                v208 = objc_getProperty(a, v207, 352, 1);
                if (v208)
                {
                  v208 = objc_getProperty(v208, v209, 304, 1);
                }

                v210 = v208;
                [v77 setBoundInterfaceName:v210];

                if (!*(a + 344))
                {
                  [(NEIKEv2Session *)a addEmptyInterface];
                }

                v211 = [(NEIKEv2Session *)a copyIPsecInterfaceWithMissingAllowed:?];
                interfaceName = [v211 interfaceName];
                [v77 setTunnelInterfaceName:interfaceName];

                if ([objc_getProperty(a v213])
                {
                  objc_setProperty_atomic(v4, v214, 0, 160);
                  objc_setProperty_atomic(v4, v215, 0, 168);
                  [v77 setEncryptionKey:0];
                  [v77 setAuthenticationKey:0];
                  [objc_getProperty(a v216];
                  if ([objc_getProperty(a v217])
                  {
                    objc_setProperty_atomic(v4, v218, 0, 144);
                    objc_setProperty_atomic(v4, v219, 0, 152);
                    [v75 setEncryptionKey:0];
                    [v75 setAuthenticationKey:0];
                    [objc_getProperty(a v220];
                    [objc_getProperty(a v221];
                    v223 = objc_getProperty(a, v222, 352, 1);
                    if (v223)
                    {
                      v223 = objc_getProperty(v223, v224, 88, 1);
                    }

                    v225 = v223;
                    idleTimeoutEnabled = [v225 idleTimeoutEnabled];

                    if (idleTimeoutEnabled)
                    {
                      v228 = objc_getProperty(a, v227, 192, 1);
                      v230 = objc_getProperty(a, v229, 352, 1);
                      if (v230)
                      {
                        v230 = objc_getProperty(v230, v231, 88, 1);
                      }

                      v232 = v230;
                      [v228 startIdleTimeout:objc_msgSend(v232 incomingSA:"idleTimeoutSeconds") outgoingSA:{v75, v77}];
                    }

                    v233 = objc_getProperty(a, v227, 352, 1);
                    if (v233)
                    {
                      v233 = objc_getProperty(v233, v234, 88, 1);
                    }

                    v235 = v233;
                    blackholeDetectionEnabled = [v235 blackholeDetectionEnabled];

                    if (blackholeDetectionEnabled)
                    {
                      [objc_getProperty(a v237];
                    }

                    v17 = 1;
                    goto LABEL_211;
                  }
                }

LABEL_210:
                v17 = 0;
LABEL_211:

                goto LABEL_212;
              }

              *buf = 138412290;
              *&buf[4] = a;
              v166 = "%@ Not enabling NAT traversal (install) because disabled";
LABEL_143:
              _os_log_impl(&dword_1BA83C000, v157, OS_LOG_TYPE_INFO, v166, buf, 0xCu);
              goto LABEL_144;
            }
          }

          [v75 setNatTraversalEnabled:1];
          [v77 setNatTraversalEnabled:1];
          v168 = objc_getProperty(a, v167, 352, 1);
          if (v168)
          {
            v168 = objc_getProperty(v168, v169, 64, 1);
          }

          v170 = v168;
          port = [v170 port];
          [v75 setNatTraversalPort:{objc_msgSend(port, "intValue")}];

          v173 = objc_getProperty(a, v172, 352, 1);
          if (v173)
          {
            v173 = objc_getProperty(v173, v174, 72, 1);
          }

          v175 = v173;
          port2 = [v175 port];
          [v75 setNatTraversalSrcPort:{objc_msgSend(port2, "intValue")}];

          v178 = objc_getProperty(a, v177, 352, 1);
          if (v178)
          {
            v178 = objc_getProperty(v178, v179, 72, 1);
          }

          v180 = v178;
          port3 = [v180 port];
          -[NSObject setNatTraversalPort:](v77, "setNatTraversalPort:", [port3 intValue]);

          v183 = objc_getProperty(a, v182, 352, 1);
          if (v183)
          {
            v183 = objc_getProperty(v183, v184, 64, 1);
          }

          v185 = v183;
          port4 = [v185 port];
          -[NSObject setNatTraversalSrcPort:](v77, "setNatTraversalSrcPort:", [port4 intValue]);

          v157 = ne_log_obj();
          if (!os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
          {
            goto LABEL_144;
          }

          *buf = 138412290;
          *&buf[4] = a;
          v166 = "%@ Enabling NAT traversal (install)";
          goto LABEL_143;
        }

        if (v104 == 2)
        {
          v106 = 2;
          goto LABEL_102;
        }

        if (v104 == 3)
        {
          v106 = 3;
          goto LABEL_102;
        }

        if (v104 != 12)
        {
          goto LABEL_190;
        }

        v115 = objc_getProperty(v4, v105, 56, 1);
        encryptionProtocol11 = [(NEIKEv2ChildSAProposal *)v115 encryptionProtocol];
        if (encryptionProtocol11)
        {
          v118 = encryptionProtocol11[4];

          if (v118 == 128)
          {
            v106 = 4;
            goto LABEL_102;
          }

          if (v118 == 256)
          {
            v106 = 5;
            goto LABEL_102;
          }
        }

        else
        {
        }

        v148 = ne_log_obj();
        if (!os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_209;
        }

        v256 = objc_getProperty(v4, v255, 56, 1);
        encryptionProtocol12 = [(NEIKEv2ChildSAProposal *)v256 encryptionProtocol];
        v259 = encryptionProtocol12;
        if (encryptionProtocol12)
        {
          v260 = *(encryptionProtocol12 + 16);
        }

        else
        {
          v260 = 0;
        }

        String = NEIKEv2EncryptionWireTypeCreateString(v260);
        v263 = objc_getProperty(v4, v262, 56, 1);
        encryptionProtocol13 = [(NEIKEv2ChildSAProposal *)v263 encryptionProtocol];
        v266 = encryptionProtocol13;
        if (encryptionProtocol13)
        {
          v267 = *(encryptionProtocol13 + 8);
        }

        else
        {
          v267 = 0;
        }

        goto LABEL_217;
      }

      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NEIKEv2Session installChildSA:]";
        _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA.remoteAddress", buf, 0xCu);
      }
    }

    else
    {
      v60 = ne_log_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NEIKEv2Session installChildSA:]";
        _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA.localAddress", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  v11 = v4;
  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = a;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "%@ Installing TLS childSA %@", buf, 0x16u);
  }

  tlsChildSAInstallBlock = [a tlsChildSAInstallBlock];
  clientQueue = [a clientQueue];
  v15 = clientQueue;
  if (tlsChildSAInstallBlock)
  {
    v16 = clientQueue == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (v16)
  {
    objc_setProperty_atomic(v11, v14, 0, 144);
    objc_setProperty_atomic(v11, v107, 0, 160);
  }

  else
  {
    v18 = *(v11 + 4);
    v19 = objc_getProperty(v11, v14, 56, 1);
    v21 = v19;
    if (v19)
    {
      v19 = objc_getProperty(v19, v20, 80, 1);
    }

    v22 = v19;

    v24 = objc_getProperty(v11, v23, 56, 1);
    v26 = v24;
    if (v24)
    {
      v24 = objc_getProperty(v24, v25, 88, 1);
    }

    v27 = v24;

    v29 = objc_getProperty(v11, v28, 144, 1);
    v31 = objc_getProperty(v11, v30, 160, 1);
    objc_setProperty_atomic(v11, v32, 0, 144);
    objc_setProperty_atomic(v11, v33, 0, 160);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __36__NEIKEv2Session_installTLSChildSA___block_invoke;
    v294 = &unk_1E7F08AA0;
    v34 = tlsChildSAInstallBlock;
    v298 = v31;
    v299 = v34;
    v300 = v18;
    v295 = v22;
    v296 = v29;
    v297 = v27;
    v289 = v31;
    v288 = v27;
    v287 = v29;
    v286 = v22;
    dispatch_async(v15, buf);
    aCopy = a;
    if (objc_getProperty(v11, v36, 216, 1))
    {
      v38 = objc_getProperty(v11, v37, 216, 1);
      dispatch_source_cancel(v38);
      objc_setProperty_atomic(v11, v39, 0, 216);
    }

    v40 = objc_getProperty(v11, v37, 56, 1);
    v41 = v40;
    if (v40)
    {
      v42 = v11[9];
      v43 = [(NEIKEv2IKESAProposal *)v40 softLifetimeSecondsForInitiator:?];
      lifetimeSeconds = [v41 lifetimeSeconds];
      v284 = [(NEIKEv2IKESAProposal *)v41 softLifetimeSecondsForInitiator:?];
      if (v43)
      {
        v45 = objc_getProperty(aCopy, v44, 384, 1);
        v46 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v45);
        objc_setProperty_atomic(v11, v47, v46, 216);

        v49 = objc_getProperty(v11, v48, 216, 1) == 0;
        v50 = ne_log_obj();
        v51 = v50;
        if (v49)
        {
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *handler = 0;
            _os_log_fault_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", handler, 2u);
          }
        }

        else
        {
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *handler = 138412546;
            *&handler[4] = v11;
            *&handler[12] = 2048;
            *&handler[14] = v43;
            _os_log_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_INFO, "%@: Setting Child SA soft lifetime timer for %llu seconds", handler, 0x16u);
          }

          v53 = objc_getProperty(v11, v52, 216, 1);
          v54 = dispatch_time(0x8000000000000000, 1000000000 * v43);
          dispatch_source_set_timer(v53, v54, 0xFFFFFFFFFFFFFFFFLL, 0);

          objc_initWeak(&location, v11);
          objc_initWeak(&from, aCopy);
          v56 = objc_getProperty(v11, v55, 216, 1);
          *handler = MEMORY[0x1E69E9820];
          *&handler[8] = 3221225472;
          *&handler[16] = __50__NEIKEv2ChildSA_startSALifetimeTimerWithSession___block_invoke;
          v302 = &unk_1E7F07BA8;
          v57 = v56;
          objc_copyWeak(&v303, &location);
          objc_copyWeak(v304, &from);
          v304[1] = (lifetimeSeconds - v284);
          dispatch_source_set_event_handler(v57, handler);

          v59 = objc_getProperty(v11, v58, 216, 1);
          dispatch_activate(v59);
          objc_destroyWeak(v304);
          objc_destroyWeak(&v303);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }
      }
    }
  }

LABEL_212:
  v276 = *MEMORY[0x1E69E9840];
  return v17;
}

- (uint64_t)migrateAllChildSAs
{
  v161 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v3 = 0;
    goto LABEL_104;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v3 = 1;
  v4 = objc_getProperty(self, a2, 304, 1);
  v5 = [v4 countByEnumeratingWithState:&v148 objects:v152 count:16];
  if (!v5)
  {
    goto LABEL_103;
  }

  v7 = v5;
  v8 = *v149;
  *&v6 = 138413058;
  v146 = v6;
  v147 = v4;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v149 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v148 + 1) + 8 * i);
      if (!objc_getProperty(self, v11, 352, 1))
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          selfCopy6 = "[NEIKEv2Session migrateChildSA:]";
          v122 = "%s called with null self.ikeSA";
          goto LABEL_92;
        }

        goto LABEL_101;
      }

      if (!v10)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          selfCopy6 = "[NEIKEv2Session migrateChildSA:]";
          _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_101;
      }

      v13 = objc_getProperty(v10, v12, 56, 1);

      if (!v13)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          selfCopy6 = "[NEIKEv2Session migrateChildSA:]";
          v122 = "%s called with null childSA.chosenProposal";
          goto LABEL_92;
        }

        goto LABEL_101;
      }

      v15 = objc_getProperty(v10, v14, 56, 1);
      protocol = [v15 protocol];

      if (protocol == 240)
      {

        continue;
      }

      Property = objc_getProperty(self, v17, 352, 1);
      if (Property)
      {
        Property = objc_getProperty(Property, v19, 64, 1);
      }

      v20 = Property;

      if (!v20)
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          selfCopy6 = "[NEIKEv2Session migrateChildSA:]";
          v122 = "%s called with null self.ikeSA.localAddress";
          goto LABEL_92;
        }

LABEL_101:

LABEL_102:
        v3 = 0;
        goto LABEL_103;
      }

      v22 = objc_getProperty(self, v21, 352, 1);
      if (v22)
      {
        v22 = objc_getProperty(v22, v23, 72, 1);
      }

      v24 = v22;

      v25 = ne_log_obj();
      v26 = v25;
      if (!v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          selfCopy6 = "[NEIKEv2Session migrateChildSA:]";
          v122 = "%s called with null self.ikeSA.remoteAddress";
LABEL_92:
          _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, v122, buf, 0xCu);
        }

        goto LABEL_101;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = objc_getProperty(self, v27, 192, 1);
        *buf = 138412802;
        selfCopy6 = self;
        v155 = 2112;
        v156 = v28;
        v157 = 2112;
        v158 = v10;
        _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_INFO, "%@ %@ Migrating IPsec childSA %@", buf, 0x20u);
      }

      v30 = objc_getProperty(self, v29, 208, 1);
      v32 = objc_getProperty(v10, v31, 56, 1);
      v34 = v32;
      if (v32)
      {
        v32 = objc_getProperty(v32, v33, 80, 1);
      }

      v35 = v32;
      v26 = [NEIKEv2Session copySAFromDictionary:v30 forSPI:v35];

      if (!v26)
      {
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v129 = objc_getProperty(v10, v123, 56, 1);
          v131 = v129;
          v4 = v147;
          if (v129)
          {
            v129 = objc_getProperty(v129, v130, 80, 1);
          }

          v132 = v129;
          v134 = objc_getProperty(self, v133, 208, 1);
          v136 = objc_getProperty(self, v135, 200, 1);
          *buf = 138412802;
          selfCopy6 = v132;
          v155 = 2112;
          v156 = v134;
          v157 = 2112;
          v158 = v136;
          _os_log_fault_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_FAULT, "copySAFromDictionary incoming %@ databaseSAs %@ databaseLarvalSAs %@ failed", buf, 0x20u);

          v26 = 0;
        }

        else
        {
          v26 = 0;
          v4 = v147;
        }

        goto LABEL_100;
      }

      v37 = objc_getProperty(self, v36, 208, 1);
      v39 = objc_getProperty(v10, v38, 56, 1);
      v41 = v39;
      if (v39)
      {
        v39 = objc_getProperty(v39, v40, 88, 1);
      }

      v42 = v39;
      v43 = [NEIKEv2Session copySAFromDictionary:v37 forSPI:v42];

      if (!v43)
      {
        v124 = ne_log_obj();
        v4 = v147;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
        {
          v137 = objc_getProperty(v10, v125, 56, 1);
          v139 = v137;
          if (v137)
          {
            v137 = objc_getProperty(v137, v138, 88, 1);
          }

          v140 = v137;
          v142 = objc_getProperty(self, v141, 208, 1);
          v144 = objc_getProperty(self, v143, 200, 1);
          *buf = 138412802;
          selfCopy6 = v140;
          v155 = 2112;
          v156 = v142;
          v157 = 2112;
          v158 = v144;
          _os_log_fault_impl(&dword_1BA83C000, v124, OS_LOG_TYPE_FAULT, "copySAFromDictionary outgoing %@ databaseSAs %@ databaseLarvalSAs %@ failed", buf, 0x20u);

          v43 = 0;
          v4 = v147;
        }

        else
        {
          v43 = 0;
        }

        goto LABEL_99;
      }

      v45 = objc_getProperty(self, v44, 352, 1);
      if (v45)
      {
        v45 = objc_getProperty(v45, v46, 64, 1);
      }

      v47 = v45;
      [v26 setLocalAddress:v47];

      v49 = objc_getProperty(self, v48, 352, 1);
      if (v49)
      {
        v49 = objc_getProperty(v49, v50, 72, 1);
      }

      v51 = v49;
      [v26 setRemoteAddress:v51];

      v53 = objc_getProperty(self, v52, 352, 1);
      if (v53)
      {
        v53 = objc_getProperty(v53, v54, 64, 1);
      }

      v55 = v53;
      [v43 setLocalAddress:v55];

      v57 = objc_getProperty(self, v56, 352, 1);
      if (v57)
      {
        v57 = objc_getProperty(v57, v58, 72, 1);
      }

      v59 = v57;
      [v43 setRemoteAddress:v59];

      if (!*(self + 344))
      {
        [(NEIKEv2Session *)self addEmptyInterface];
      }

      v60 = [(NEIKEv2Session *)self copyIPsecInterfaceWithMissingAllowed:?];
      interfaceName = [v60 interfaceName];
      [v43 setTunnelInterfaceName:interfaceName];

      tunnelInterfaceName = [v43 tunnelInterfaceName];
      [v26 setTunnelInterfaceName:tunnelInterfaceName];

      v64 = objc_getProperty(self, v63, 352, 1);
      if (v64)
      {
        v64 = objc_getProperty(v64, v65, 304, 1);
      }

      v66 = v64;
      [v43 setBoundInterfaceName:v66];

      boundInterfaceName = [v43 boundInterfaceName];
      [v26 setBoundInterfaceName:boundInterfaceName];

      v69 = objc_getProperty(self, v68, 352, 1);
      if (v69 && (v69[14] & 1) != 0 || (v71 = objc_getProperty(self, v70, 352, 1)) != 0 && (v71[15] & 1) != 0)
      {
        if ([*(self + 400) disableSwitchToNATTPorts])
        {
          v72 = ne_log_obj();
          if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            goto LABEL_58;
          }

          *buf = 138412290;
          selfCopy6 = self;
          v73 = v72;
          v74 = "%@ Not enabling NAT traversal (migrate) because disabled";
        }

        else
        {
          [v26 setNatTraversalEnabled:1];
          [v43 setNatTraversalEnabled:1];
          v76 = objc_getProperty(self, v75, 352, 1);
          if (v76)
          {
            v76 = objc_getProperty(v76, v77, 64, 1);
          }

          v78 = v76;
          port = [v78 port];
          -[NSObject setNatTraversalPort:](v26, "setNatTraversalPort:", [port intValue]);

          v81 = objc_getProperty(self, v80, 352, 1);
          if (v81)
          {
            v81 = objc_getProperty(v81, v82, 72, 1);
          }

          v83 = v81;
          port2 = [v83 port];
          -[NSObject setNatTraversalSrcPort:](v26, "setNatTraversalSrcPort:", [port2 intValue]);

          v86 = objc_getProperty(self, v85, 352, 1);
          if (v86)
          {
            v86 = objc_getProperty(v86, v87, 72, 1);
          }

          v88 = v86;
          port3 = [v88 port];
          -[NSObject setNatTraversalPort:](v43, "setNatTraversalPort:", [port3 intValue]);

          v91 = objc_getProperty(self, v90, 352, 1);
          if (v91)
          {
            v91 = objc_getProperty(v91, v92, 64, 1);
          }

          v93 = v91;
          port4 = [v93 port];
          -[NSObject setNatTraversalSrcPort:](v43, "setNatTraversalSrcPort:", [port4 intValue]);

          v72 = ne_log_obj();
          if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            goto LABEL_58;
          }

          *buf = 138412290;
          selfCopy6 = self;
          v73 = v72;
          v74 = "%@ Enabling NAT traversal (migrate)";
        }
      }

      else
      {
        [v26 setNatTraversalEnabled:0, v146];
        [v43 setNatTraversalEnabled:0];
        [v26 setNatTraversalPort:0];
        [v26 setNatTraversalSrcPort:0];
        [v43 setNatTraversalPort:0];
        [v43 setNatTraversalSrcPort:0];
        v72 = ne_log_obj();
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          goto LABEL_58;
        }

        *buf = 138412290;
        selfCopy6 = self;
        v73 = v72;
        v74 = "%@ Disabling NAT traversal (migrate)";
      }

      _os_log_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_INFO, v74, buf, 0xCu);
LABEL_58:

      v96 = objc_getProperty(self, v95, 352, 1);
      if (v96 && (v96[14] & 1) != 0)
      {
        v98 = objc_getProperty(self, v97, 352, 1);
        if (v98)
        {
          v98 = objc_getProperty(v98, v99, 88, 1);
        }

        v100 = v98;
        natTraversalKeepaliveDisabled = [v100 natTraversalKeepaliveDisabled];

        if ((natTraversalKeepaliveDisabled & 1) == 0)
        {
          [v43 setNatKeepaliveEnabled:1];
          v103 = objc_getProperty(self, v102, 352, 1);
          if (v103)
          {
            v103 = objc_getProperty(v103, v104, 88, 1);
          }

          v105 = v103;
          natTraversalKeepaliveOffloadEnabled = [v105 natTraversalKeepaliveOffloadEnabled];

          if (natTraversalKeepaliveOffloadEnabled)
          {
            [v43 setNatKeepaliveOffloadEnabled:1];
            v109 = objc_getProperty(self, v108, 352, 1);
            if (v109)
            {
              v109 = objc_getProperty(v109, v110, 88, 1);
            }

            v111 = v109;
            -[NSObject setNatKeepaliveOffloadIntervalSeconds:](v43, "setNatKeepaliveOffloadIntervalSeconds:", [v111 natTraversalKeepaliveOffloadInterval]);
          }

          v112 = objc_getProperty(self, v107, 352, 1);
          if (v112)
          {
            v112 = objc_getProperty(v112, v113, 88, 1);
          }

          v114 = v112;
          -[NSObject setNatKeepaliveIntervalSeconds:](v43, "setNatKeepaliveIntervalSeconds:", [v114 natTraversalKeepaliveInterval]);
        }
      }

      v115 = objc_getProperty(self, v97, 352, 1);
      if (v115 && (v115[15] & 1) != 0)
      {
        [v26 setNatDetectedOnPeer:1];
      }

      v116 = [objc_getProperty(self v116];
      if ((v116 & 1) == 0)
      {
        v119 = ne_log_large_obj();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          v121 = objc_getProperty(self, v120, 192, 1);
          *buf = v146;
          selfCopy6 = self;
          v155 = 2112;
          v156 = v121;
          v157 = 2112;
          v158 = v26;
          v159 = 2112;
          v160 = v10;
          _os_log_error_impl(&dword_1BA83C000, v119, OS_LOG_TYPE_ERROR, "%@ %@ Failed to migrate incoming SA %@ for %@", buf, 0x2Au);
        }
      }

      v4 = v147;
      if (([objc_getProperty(self v117] & 1) == 0)
      {
        v124 = ne_log_large_obj();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          v145 = objc_getProperty(self, v126, 192, 1);
          *buf = v146;
          selfCopy6 = self;
          v155 = 2112;
          v156 = v145;
          v157 = 2112;
          v158 = v43;
          v159 = 2112;
          v160 = v10;
          _os_log_error_impl(&dword_1BA83C000, v124, OS_LOG_TYPE_ERROR, "%@ %@ Failed to migrate outgoing SA %@ for %@", buf, 0x2Au);
        }

LABEL_99:

LABEL_100:
        goto LABEL_101;
      }

      if (!v116)
      {
        goto LABEL_102;
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v148 objects:v152 count:16];
    v3 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_103:

LABEL_104:
  v127 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)updateSentRequestWindow
{
  if (self)
  {
    packetsToSave = [(NEIKEv2Session *)self packetsToSave];
    v5 = self[4];
    v6 = v5 - packetsToSave;
    if (v5 >= packetsToSave)
    {
      Property = objc_getProperty(self, v4, 256, 1);
      [NEIKEv2Session removeItemsFromSet:v6 lowerEdge:?];
      v9 = objc_getProperty(self, v8, 272, 1);

      [NEIKEv2Session removeItemsFromDictionary:v9 lowerEdge:v6];
    }
  }
}

- (void)setSentMOBIKERequest:(int)request messageID:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    if ((*(self + 11) & 1) == 0)
    {
      objc_setProperty_atomic(self, v5, v6, 392);
      *(self + 24) = request;
      if (objc_getProperty(self, v7, 392, 1))
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v11 = 138412802;
          selfCopy = self;
          v13 = 1024;
          requestCopy = request;
          v15 = 2112;
          Property = objc_getProperty(self, v9, 392, 1);
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@ Saving MOBIKE request (message %u) %@\n", &v11, 0x1Cu);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)sendCurrentRequest:(uint64_t)request
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!request)
  {
    goto LABEL_41;
  }

  Property = objc_getProperty(request, v3, 384, 1);
  dispatch_assert_queue_V2(Property);
  v7 = objc_getProperty(request, v6, 352, 1);
  if (([(NEIKEv2IKESA *)v7 hasTransport]& 1) != 0)
  {
    v10 = objc_getProperty(request, v9, 352, 1);
    copyTransport = [(NEIKEv2IKESA *)v10 copyTransport];
    v14 = objc_getProperty(request, v13, 232, 1);
    if ([v14 count] == 1)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        firstObject = [v14 firstObject];
        v41 = [firstObject length];
        v42 = *(request + 16);
        *buf = 138413058;
        requestCopy5 = request;
        v55 = 1024;
        v56 = v41;
        v57 = 1024;
        v58 = v42;
        v59 = 2112;
        *v60 = copyTransport;
        _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ Sending request of length %u with ID %u on %@\n", buf, 0x22u);
      }

      firstObject2 = [v14 firstObject];
      v17 = [(NEIKEv2Transport *)copyTransport sendData:firstObject2 sendCompletionHandler:v4];

      if ((v17 & 1) == 0)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          requestCopy5 = request;
          _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Sending request data failed", buf, 0xCu);
        }

        v20 = objc_getProperty(request, v19, 352, 1);
        [(NEIKEv2IKESA *)v20 detachTransportWithShouldInvalidate:?];
LABEL_38:
        request = 0;
        goto LABEL_39;
      }
    }

    else if ([v14 count])
    {
      v22 = [v14 count];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v43 = v14;
      obj = v14;
      v23 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (!v23)
      {
        goto LABEL_26;
      }

      v24 = v23;
      v25 = *v48;
      v26 = 1;
LABEL_15:
      v27 = 0;
      while (1)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v47 + 1) + 8 * v27);
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v28 length];
          v31 = *(request + 16);
          *buf = 138413570;
          requestCopy5 = request;
          v55 = 1024;
          v56 = v26;
          v57 = 1024;
          v58 = v22;
          v59 = 1024;
          *v60 = v30;
          *&v60[4] = 1024;
          *&v60[6] = v31;
          v61 = 2112;
          v62 = copyTransport;
          _os_log_debug_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEBUG, "%@ Sending request fragment %u/%u of length %u with ID %u on %@\n", buf, 0x2Eu);
        }

        if (v22 == v26)
        {
          if (([(NEIKEv2Transport *)copyTransport sendData:v28 sendCompletionHandler:v4]& 1) == 0)
          {
            v35 = ne_log_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              requestCopy5 = request;
              _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%@ Sending fragment request data failed", buf, 0xCu);
            }

            v14 = v43;
LABEL_36:

            goto LABEL_37;
          }
        }

        else if (([(NEIKEv2Transport *)copyTransport sendData:v28 sendCompletionHandler:0]& 1) == 0)
        {
          v32 = ne_log_obj();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            requestCopy5 = request;
            _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%@ Sending fragment request data failed", buf, 0xCu);
          }

          v14 = v43;
          if (v4)
          {
            v34 = objc_getProperty(request, v33, 384, 1);
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __37__NEIKEv2Session_sendCurrentRequest___block_invoke_79;
            v45[3] = &unk_1E7F0B600;
            v46 = v4;
            dispatch_async(v34, v45);
            v35 = v46;
            goto LABEL_36;
          }

LABEL_37:
          v37 = objc_getProperty(request, v33, 352, 1);
          [(NEIKEv2IKESA *)v37 detachTransportWithShouldInvalidate:?];

          goto LABEL_38;
        }

        ++v26;
        if (v24 == ++v27)
        {
          v24 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
          if (v24)
          {
            goto LABEL_15;
          }

LABEL_26:

          request = 1;
          v14 = v43;
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }
      }
    }

    request = 1;
    goto LABEL_39;
  }

  if (v4)
  {
    v21 = objc_getProperty(request, v9, 384, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__NEIKEv2Session_sendCurrentRequest___block_invoke;
    block[3] = &unk_1E7F0B600;
    v52 = v4;
    dispatch_async(v21, block);
    request = 0;
    copyTransport = v52;
    goto LABEL_40;
  }

  request = 0;
LABEL_41:

  v38 = *MEMORY[0x1E69E9840];
  return request;
}

- (uint64_t)sendRequest:(unint64_t)request retryIntervalInMilliseconds:(int)milliseconds maxRetries:(void *)retries timeoutError:(char)error resend:(uint64_t)resend sendMessageID:(void *)d sendCompletionHandler:(void *)handler replyHandler:
{
  v91 = *MEMORY[0x1E69E9840];
  v16 = a2;
  retriesCopy = retries;
  dCopy = d;
  newValue = handler;
  if (!self)
  {
    resend = 0;
    goto LABEL_55;
  }

  Property = objc_getProperty(self, v18, 384, 1);
  dispatch_assert_queue_V2(Property);
  if (!objc_getProperty(self, v20, 352, 1))
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session sendRequest:retryIntervalInMilliseconds:maxRetries:timeoutError:resend:sendMessageID:sendCompletionHandler:replyHandler:]";
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", buf, 0xCu);
    }

    resend = 0xFFFFFFFFLL;
    goto LABEL_54;
  }

  if (!objc_getProperty(self, v21, 216, 1))
  {
    *(self + 11) = 0;
    v26 = objc_getProperty(self, v22, 352, 1);
    if (error)
    {
      *(self + 16) = resend;
      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = resend;
        _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_INFO, "%@ Re-sending message ID %u", buf, 0x12u);
      }
    }

    else
    {
      resend = (*(self + 16) + 1);
      *(self + 16) = resend;
    }

    [(NEIKEv2Session *)self cancelSendTimer];
    objc_setProperty_atomic_copy(self, v29, newValue, 216);
    v16[7] = resend;
    v31 = objc_getProperty(self, v30, 352, 1);
    v68 = [(NEIKEv2Packet *)v16 copyPacketDatagramsForIKESA:v31];
    if (!v68)
    {
      v64 = ne_log_obj();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@ Failed to generate datagrams from packet", buf, 0xCu);
      }

      if (!dCopy)
      {
        resend = 0xFFFFFFFFLL;
        goto LABEL_53;
      }

      v66 = objc_getProperty(self, v65, 384, 1);
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_80;
      v84[3] = &unk_1E7F0B600;
      v85 = dCopy;
      dispatch_async(v66, v84);
      resend = 0xFFFFFFFFLL;
      copyTransport = v85;
LABEL_52:

LABEL_53:
      goto LABEL_54;
    }

    if ([v16 exchangeType] == 34)
    {
      firstObject = [v68 firstObject];
      if (v26)
      {
        objc_setProperty_atomic(v26, v32, firstObject, 312);
      }
    }

    v34 = ne_log_large_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v68 count];
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v35;
      *&buf[18] = 2112;
      *&buf[20] = v16;
      _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_DEFAULT, "%@ Sending %u datagrams for request %@", buf, 0x1Cu);
    }

    if (error)
    {
LABEL_36:
      requestCopy = request;
      if (request)
      {
        if (!milliseconds)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v42 = objc_getProperty(self, v36, 376, 1);
        requestCopy = [(NEIKEv2RTT *)v42 nextRetransmissionInterval];
        if (!milliseconds)
        {
          goto LABEL_44;
        }
      }

      v43 = objc_getProperty(self, v36, 352, 1);
      if (!v43 || (v43[13] & 1) == 0)
      {
        v44 = objc_getProperty(self, v36, 384, 1);
        v45 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v44);
        objc_setProperty_atomic(self, v46, v45, 312);

        if (!objc_getProperty(self, v47, 312, 1))
        {
          copyTransport = ne_log_obj();
          if (os_log_type_enabled(copyTransport, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, copyTransport, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
          }

          goto LABEL_51;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = milliseconds;
        v49 = 1000000 * requestCopy;
        v50 = objc_getProperty(self, v48, 312, 1);
        v51 = dispatch_time(0x8000000000000000, v49);
        dispatch_source_set_timer(v50, v51, 0xFFFFFFFFFFFFFFFFLL, 0);

        v53 = objc_getProperty(self, v52, 312, 1);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_81;
        handler[3] = &unk_1E7F08B30;
        v80 = buf;
        handler[4] = self;
        resendCopy = resend;
        millisecondsCopy = milliseconds;
        v78 = v26;
        requestCopy2 = request;
        v79 = retriesCopy;
        dispatch_source_set_event_handler(v53, handler);
        v55 = objc_getProperty(self, v54, 312, 1);
        dispatch_activate(v55);

        _Block_object_dispose(buf, 8);
      }

LABEL_44:
      v56 = objc_getProperty(self, v36, 352, 1);
      copyTransport = [(NEIKEv2IKESA *)v56 copyTransport];
      if (copyTransport)
      {
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_89;
        v73[3] = &unk_1E7F08BA8;
        v73[4] = self;
        v75 = dCopy;
        v74 = v26;
        resendCopy2 = resend;
        [(NEIKEv2Transport *)copyTransport waitForTransport:v73];

        goto LABEL_52;
      }

      if (dCopy)
      {
        v60 = objc_getProperty(self, v58, 384, 1);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_2;
        v71[3] = &unk_1E7F0B600;
        v72 = dCopy;
        dispatch_async(v60, v71);
      }

      copyTransport = 0;
LABEL_51:
      resend = 0xFFFFFFFFLL;
      goto LABEL_52;
    }

    objc_setProperty_atomic(self, v36, v68, 232);
    [(NEIKEv2Session *)self updateSentRequestWindow];
    v39 = objc_getProperty(self, v38, 376, 1);
    selfCopy = self;
    if (v39)
    {
      if (v39[3] != -1)
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v63 = v39[3];
          *buf = 138412802;
          *&buf[4] = selfCopy;
          *&buf[12] = 1024;
          *&buf[14] = v63;
          *&buf[18] = 1024;
          *&buf[20] = resend;
          _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%@, bad request message ID old %u new %u", buf, 0x18u);
        }

LABEL_34:

        goto LABEL_35;
      }

      v39[3] = resend;
      *buf = 0;
      *&buf[8] = 0;
      if (![NEIKEv2RTT getCurrentTime:buf])
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v89 = 138412290;
          v90 = selfCopy;
          _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%@, failed to start RTT measurement", v89, 0xCu);
        }

        goto LABEL_34;
      }

      *(v39 + 5) = 1000 * *buf + *&buf[8] / 1000;
    }

LABEL_35:

    goto LABEL_36;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "%@ last request still outstanding", buf, 0xCu);
  }

  if (dCopy)
  {
    v25 = objc_getProperty(self, v24, 384, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v87 = dCopy;
    dispatch_async(v25, block);
    resend = 0xFFFFFFFFLL;
    v26 = v87;
LABEL_54:

    goto LABEL_55;
  }

  resend = 0xFFFFFFFFLL;
LABEL_55:

  v61 = *MEMORY[0x1E69E9840];
  return resend;
}

void __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_81(uint64_t a1, const char *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 72);
      v6 = *(a1 + 76);
      v7 = v6 - *(*(*(a1 + 56) + 8) + 24);
      *buf = 138413058;
      *&buf[4] = v4;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      *&buf[18] = 1024;
      *&buf[20] = v7;
      LOWORD(v93) = 1024;
      *(&v93 + 2) = v6;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@ Retry sending request %u (%u/%u), closing", buf, 0x1Eu);
    }

    if (([(NEIKEv2Session *)*(a1 + 32) sendCurrentRequest:?]& 1) != 0)
    {
      v15 = *(a1 + 64);
      if (!v15)
      {
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v8, 376, 1);
        }

        v15 = [(NEIKEv2RTT *)Property nextRetransmissionInterval];
      }

      --*(*(*(a1 + 56) + 8) + 24);
      v17 = *(a1 + 32);
      if (v17)
      {
        v17 = objc_getProperty(v17, v8, 312, 1);
      }

      v18 = v17;
      v19 = dispatch_time(0x8000000000000000, 1000000 * v15);
      dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0);

      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v20, 312, 1);
      }

      dispatch_activate(v21);
      goto LABEL_28;
    }

    v34 = *(a1 + 40);
    v88 = (*(a1 + 76) - *(*(*(a1 + 56) + 8) + 24));
    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"request %u attempt %u/%u", v8, v9, v10, v11, v12, v13, v14, *(a1 + 72));
    [(NEIKEv2IKESA *)v34 setState:ErrorFailedToSend error:?];

LABEL_27:
    [(NEIKEv2Session *)*(a1 + 32) cancelSendTimer];
    goto LABEL_28;
  }

  if (*(a1 + 72))
  {
LABEL_23:
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 32);
      v32 = *(a1 + 72);
      v31 = *(a1 + 76);
      *buf = 138412802;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 1024;
      *&buf[20] = v32;
      _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "%@ Hit max send retries (%u) for request %u, closing", buf, 0x18u);
    }

    [(NEIKEv2IKESA *)*(a1 + 40) setState:*(a1 + 48) error:?];
    goto LABEL_27;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v22 = objc_getProperty(v22, a2, 352, 1);
    if (v22)
    {
      v22 = objc_getProperty(v22, v23, 80, 1);
    }
  }

  v24 = v22;
  if (![v24 allowTCPEncapsulation] || (v26 = *(a1 + 32)) == 0 || (v27 = objc_getProperty(v26, v25, 352, 1)) != 0 && (v27[13] & 1) != 0 || (v37 = *(a1 + 32)) == 0 || (v38 = objc_getProperty(v37, v28, 352, 1)) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v40 = v38;
  *(v38 + 13) = 1;
  *(v38 + 10) = 0;
  v41 = [objc_getProperty(v38 v39];
  if (!v41)
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *v95 = 136315138;
      v96 = "[NEIKEv2IKESA switchToTCPEncapsulation]";
      v87 = "%s called with null remoteAddress";
LABEL_61:
      _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, v87, v95, 0xCu);
    }

LABEL_42:

    goto LABEL_22;
  }

  v43 = v41;
  if (*v41 <= 0xFu)
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *v95 = 136315138;
      v96 = "[NEIKEv2IKESA switchToTCPEncapsulation]";
      v87 = "%s called with null (remoteAddress->sa_len >= sizeof(struct sockaddr_in))";
      goto LABEL_61;
    }

    goto LABEL_42;
  }

  v44 = [objc_getProperty(v40 v42];
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = 4500;
  }

  v46 = [NEIKEv2IKESA copyAddressFrom:v43 with:v45];
  if (!objc_getProperty(v40, v47, 488, 1))
  {
    WeakRetained = objc_loadWeakRetained(v40 + 71);
    v51 = objc_loadWeakRetained(v40 + 69);
    if ((*(v40 + 25) & 1) != 0 && !WeakRetained)
    {
      v52 = ne_log_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *v95 = 0;
        _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "Cannot create transport for packet delegate, delegate no longer valid", v95, 2u);
      }

      goto LABEL_42;
    }

    if ([objc_getProperty(v40 v50])
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v55 = objc_getProperty(v40, v53, 304, 1);
    v57 = objc_getProperty(v40, v56, 544, 1);
    v59 = objc_getProperty(v40, v58, 560, 1);
    v60 = [NEIKEv2Transport createTransport:v54 remote:v46 local:0 localPort:0 boundInterface:v55 queue:v57 socketGetBlock:v59 packetDelegate:WeakRetained];

    objc_setProperty_atomic(v40, v61, v60, 488);
    v63 = objc_getProperty(v40, v62, 488, 1);
    v65 = objc_getProperty(v40, v64, 32, 1);
    [(NEIKEv2Transport *)v63 addClient:v65 delegate:v51];

    v67 = objc_getProperty(v40, v66, 488, 1);
    if (v67)
    {
      v67 = objc_getProperty(v67, v68, 24, 1);
    }

    v69 = v67;
    objc_setProperty_atomic(v40, v70, v69, 72);

    v72 = objc_getProperty(v40, v71, 488, 1);
    if (v72)
    {
      v72 = objc_getProperty(v72, v73, 16, 1);
    }

    v74 = v72;
    objc_setProperty_atomic(v40, v75, v74, 64);

    v77 = objc_getProperty(v40, v76, 488, 1);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __40__NEIKEv2IKESA_switchToTCPEncapsulation__block_invoke;
    v93 = &unk_1E7F0B0E8;
    v94 = v40;
    [(NEIKEv2Transport *)v77 waitForTransport:buf];
  }

  v78 = objc_getProperty(v40, v48, 488, 1);

  if (!v78)
  {
    goto LABEL_23;
  }

  v79 = ne_log_obj();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    v80 = *(a1 + 32);
    v82 = *(a1 + 72);
    v81 = *(a1 + 76);
    *buf = 138412802;
    *&buf[4] = v80;
    *&buf[12] = 1024;
    *&buf[14] = v81;
    *&buf[18] = 1024;
    *&buf[20] = v82;
    _os_log_impl(&dword_1BA83C000, v79, OS_LOG_TYPE_INFO, "%@ Hit max send retries (%u) for request %u, trying TCP encapsulation", buf, 0x18u);
  }

  v84 = *(a1 + 32);
  if (v84)
  {
    v84 = objc_getProperty(v84, v83, 352, 1);
  }

  v85 = [(NEIKEv2IKESA *)v84 copyTransport];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_85;
  v89[3] = &unk_1E7F08B08;
  v86 = *(a1 + 40);
  v89[4] = *(a1 + 32);
  v90 = v86;
  v91 = *(a1 + 72);
  [(NEIKEv2Transport *)v85 waitForTransport:v89];

LABEL_28:
  v36 = *MEMORY[0x1E69E9840];
}

void __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_89(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  [(NEIKEv2IKESA *)Property resyncAddress];
  if (([(NEIKEv2Session *)*(a1 + 32) sendCurrentRequest:?]& 1) == 0)
  {
    [(NEIKEv2Session *)*(a1 + 32) cancelSendTimer];
    v5 = *(a1 + 40);
    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"request %u", v6, v7, v8, v9, v10, v11, v12, *(a1 + 56));
    [(NEIKEv2IKESA *)v5 setState:ErrorFailedToSend error:?];
  }
}

void __138__NEIKEv2Session_sendRequest_retryIntervalInMilliseconds_maxRetries_timeoutError_resend_sendMessageID_sendCompletionHandler_replyHandler___block_invoke_85(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 352, 1);
  }

  [(NEIKEv2IKESA *)Property resyncAddress];
  if (([(NEIKEv2Session *)*(a1 + 32) sendCurrentRequest:?]& 1) == 0)
  {
    v11 = *(a1 + 40);
    v15 = *(a1 + 52);
    ErrorFailedToSend = NEIKEv2CreateErrorFailedToSend(@"request %u attempts %u", v4, v5, v6, v7, v8, v9, v10, *(a1 + 48));
    [(NEIKEv2IKESA *)v11 setState:ErrorFailedToSend error:?];

    v14 = *(a1 + 32);

    [(NEIKEv2Session *)v14 cancelSendTimer];
  }
}

- (uint64_t)sendRequest:(uint64_t)request retry:(void *)retry replyHandler:(void *)handler
{
  v16 = *MEMORY[0x1E69E9840];
  retryCopy = retry;
  handlerCopy = handler;
  if (request)
  {
    if (retryCopy)
    {
      Property = objc_getProperty(request, v6, 352, 1);
      v9 = 4;
      if (Property)
      {
        if (Property[17])
        {
          v9 = 12;
        }

        else
        {
          v9 = 4;
        }
      }

      Error = NEIKEv2CreateError(3);
      request = [(NEIKEv2Session *)request sendRequest:retryCopy retryIntervalInMilliseconds:0 maxRetries:v9 timeoutError:Error resend:0 sendMessageID:0xFFFFFFFFLL sendCompletionHandler:0 replyHandler:handlerCopy];
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "[NEIKEv2Session sendRequest:retry:replyHandler:]";
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null packet", buf, 0xCu);
      }

      request = 0xFFFFFFFFLL;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return request;
}

- (uint64_t)sendReply:(void *)reply replyHandler:
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  replyCopy = reply;
  if (!self)
  {
    goto LABEL_12;
  }

  Property = objc_getProperty(self, v6, 384, 1);
  dispatch_assert_queue_V2(Property);
  if (objc_getProperty(self, v9, 352, 1))
  {
    if (v5)
    {
      if (*(v5 + 10))
      {
        v11 = objc_getProperty(self, v10, 240, 1);
        v12 = MEMORY[0x1E696AD98];
        v13 = v11;
        v14 = [v12 numberWithInt:v5[7]];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v47 = v5[7];
            *buf = 138412546;
            selfCopy3 = self;
            v52 = 1024;
            v53 = v47;
            _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%@ Already sent reply %u, skipping new reply", buf, 0x12u);
          }

          if (replyCopy)
          {
            replyCopy[2](replyCopy, 0);
          }

          goto LABEL_12;
        }

        *(self + 11) = 0;
        v20 = objc_getProperty(self, v16, 352, 1);
        v21 = [(NEIKEv2Packet *)v5 copyPacketDatagramsForIKESA:v20];
        if (!v21)
        {
          v43 = ne_log_obj();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy3 = self;
            _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "%@ Failed to generate datagrams from packet", buf, 0xCu);
          }

          if (replyCopy)
          {
            replyCopy[2](replyCopy, 0);
          }

          goto LABEL_33;
        }

        if ([v5 exchangeType] == 34)
        {
          firstObject = [v21 firstObject];
          v24 = objc_getProperty(self, v23, 352, 1);
          if (v24)
          {
            objc_setProperty_atomic(v24, v25, firstObject, 312);
          }
        }

        v26 = ne_log_large_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy3 = self;
          v52 = 1024;
          v53 = [v21 count];
          v54 = 2112;
          v55 = v5;
          _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEFAULT, "%@ Sending %u datagrams for reply: %@", buf, 0x1Cu);
        }

        [(NEIKEv2Session *)self fireWaitingRequestHandlerWithPacket:?];
        objc_setProperty_atomic_copy(self, v27, replyCopy, 224);
        if (objc_getProperty(self, v28, 224, 1))
        {
          v30 = objc_getProperty(self, v29, 384, 1);
          v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v30);
          objc_storeStrong((self + 320), v31);

          v32 = *(self + 320);
          if (!v32)
          {
            v44 = ne_log_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
            }

LABEL_32:
            [(NEIKEv2Session *)self fireWaitingRequestHandlerWithPacket:?];
LABEL_33:
            v19 = 0;
LABEL_34:

            goto LABEL_35;
          }

          v33 = v32;
          v34 = dispatch_time(0x8000000000000000, 30000000000);
          dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0);

          v35 = *(self + 320);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __41__NEIKEv2Session_sendReply_replyHandler___block_invoke;
          handler[3] = &unk_1E7F0B0E8;
          handler[4] = self;
          dispatch_source_set_event_handler(v35, handler);
          dispatch_activate(*(self + 320));
        }

        v36 = v5[7];
        v37 = v21;
        v19 = 1;
        v39 = objc_getProperty(self, v38, 240, 1);
        v40 = MEMORY[0x1E696AD98];
        v41 = v39;
        v42 = [v40 numberWithInt:v36];
        [v41 setObject:v37 forKeyedSubscript:v42];

        if (([(NEIKEv2Session *)self sendReplyForMessageID:?]& 1) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v18 = ne_log_obj();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      selfCopy3 = "[NEIKEv2Session sendReply:replyHandler:]";
      v48 = "%s called with null packet.isResponse";
    }

    else
    {
      v18 = ne_log_obj();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      *buf = 136315138;
      selfCopy3 = "[NEIKEv2Session sendReply:replyHandler:]";
      v48 = "%s called with null packet";
    }

    goto LABEL_37;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    selfCopy3 = "[NEIKEv2Session sendReply:replyHandler:]";
    v48 = "%s called with null self.ikeSA";
LABEL_37:
    _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, v48, buf, 0xCu);
  }

LABEL_11:

LABEL_12:
  v19 = 0;
LABEL_35:

  v45 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __41__NEIKEv2Session_sendReply_replyHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@ Timed out waiting for next request", &v6, 0xCu);
  }

  result = [(NEIKEv2Session *)*(a1 + 32) fireWaitingRequestHandlerWithPacket:?];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)finishConfigurationEstablishment
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_10;
  }

  if (!objc_getProperty(self, a2, 352, 1))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NEIKEv2Session finishConfigurationEstablishment]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null self.ikeSA", &v8, 0xCu);
    }

    goto LABEL_10;
  }

  if (self[11])
  {
LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  [(NEIKEv2Session *)self startIKELifetimeTimer];
  v5 = *MEMORY[0x1E69E9840];

  [(NEIKEv2Session *)self startDPDTimer];
}

id __48__NEIKEv2Session_sendAnalyticsOfChosenProtocols__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = @"<unknown>";
  v3 = vdupq_n_s64(@"<unknown>");
  v4 = vbslq_s8(vceqzq_s64(*(a1 + 32)), v3, *(a1 + 32));
  v5 = vbslq_s8(vceqzq_s64(*(a1 + 48)), v3, *(a1 + 48));
  v6 = vbslq_s8(vceqzq_s64(*(a1 + 80)), v3, *(a1 + 80));
  v7 = vbslq_s8(vceqzq_s64(*(a1 + 96)), v3, *(a1 + 96));
  v22[0] = @"ChosenIKESAEncryptionProtocol";
  v22[1] = @"ChosenIKESAIntegrityProtocol";
  v22[2] = @"ChosenIKESAPRFProtocol";
  v22[3] = @"ChosenIKESADHProtocol";
  v23[0] = v4;
  v23[1] = v5;
  v22[4] = @"RemoteHasPreferredIKESADHProtocol";
  v22[5] = @"IsIKESACookieIncluded";
  v8 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v8;
  v22[6] = @"ChosenIKEChildSAEncryptionProtocol";
  v22[7] = @"ChosenIKEChildSAIntegrityProtocol";
  v22[8] = @"LocalAuthProtocolUsed";
  v22[9] = @"RemoteAuthProtocolUsed";
  v26 = v6;
  v27 = v7;
  v22[10] = @"EAPProtocolUsed";
  v22[11] = @"LocalNonceSize";
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  if (!v9)
  {
    v9 = @"<unknown>";
  }

  v28 = v9;
  v29 = v10;
  v22[12] = @"RemoteNonceSize";
  v22[13] = @"ProcessName";
  if (*(a1 + 136))
  {
    v2 = *(a1 + 136);
  }

  v30 = *(a1 + 128);
  v31 = v2;
  v22[14] = @"AllowPostQuantumKeyExchangeFallback";
  v22[15] = @"ChosenIKESAAdditionalKEMProtocolCount";
  v11 = *(a1 + 152);
  v32 = *(a1 + 144);
  v33 = v11;
  v22[16] = @"ChosenIKESAAdditionalKEMProtocol1";
  v12 = [*(a1 + 160) objectAtIndexedSubscript:0];
  v34 = v12;
  v22[17] = @"ChosenIKESAAdditionalKEMProtocol2";
  v13 = [*(a1 + 160) objectAtIndexedSubscript:1];
  v35 = v13;
  v22[18] = @"ChosenIKESAAdditionalKEMProtocol3";
  v14 = [*(a1 + 160) objectAtIndexedSubscript:2];
  v36 = v14;
  v22[19] = @"ChosenIKESAAdditionalKEMProtocol4";
  v15 = [*(a1 + 160) objectAtIndexedSubscript:3];
  v37 = v15;
  v22[20] = @"ChosenIKESAAdditionalKEMProtocol5";
  v16 = [*(a1 + 160) objectAtIndexedSubscript:4];
  v38 = v16;
  v22[21] = @"ChosenIKESAAdditionalKEMProtocol6";
  v17 = [*(a1 + 160) objectAtIndexedSubscript:5];
  v39 = v17;
  v22[22] = @"ChosenIKESAAdditionalKEMProtocol7";
  v18 = [*(a1 + 160) objectAtIndexedSubscript:6];
  v40 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:23];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)reportConfiguration
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 352, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 496, 1);
    }

    v5 = Property;
    objc_setProperty_atomic(self, v6, v5, 48);

    configurationUpdateBlock = [self configurationUpdateBlock];
    clientQueue = [self clientQueue];
    v9 = clientQueue;
    if (configurationUpdateBlock)
    {
      if (clientQueue)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __37__NEIKEv2Session_reportConfiguration__block_invoke;
        v10[3] = &unk_1E7F0B588;
        v10[4] = self;
        v11 = configurationUpdateBlock;
        dispatch_async(v9, v10);
      }
    }
  }
}

void __37__NEIKEv2Session_reportConfiguration__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!v3 || (v3[12] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [v3 assignedConfiguration];
    (*(v4 + 16))(v4, v5);
  }
}

void *__50__NEIKEv2Session_reportServerAdditionalAddresses___block_invoke(void *result)
{
  v1 = result[4];
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(result[6] + 16))(result[6], result[5]);
  }

  return result;
}

- (void)reportServerRedirect:(void *)redirect
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (redirect)
  {
    if (v3)
    {
      if (objc_getProperty(redirect, v4, 352, 1))
      {
        v6 = [(NEIKEv2Packet *)v5 copyNotification:?];
        v8 = v6;
        if (!v6)
        {
          v16 = 0;
LABEL_20:
          redirectEventBlock = [redirect redirectEventBlock];
          clientQueue = [redirect clientQueue];
          if (clientQueue && redirectEventBlock)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __39__NEIKEv2Session_reportServerRedirect___block_invoke;
            block[3] = &unk_1E7F0AAA0;
            block[4] = redirect;
            v35 = redirectEventBlock;
            v34 = v16;
            dispatch_async(clientQueue, block);
          }

          goto LABEL_24;
        }

        if (v6[4].isa != 16407)
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Cannot copy server redirect nonce from notification %@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        v9 = objc_getProperty(v6, v7, 40, 1);
        if ([v9 length]<= 1)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = [v9 length];
            _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Server redirect has invalid length %llu", buf, 0xCu);
          }

          goto LABEL_18;
        }

        bytes = [v9 bytes];
        v13 = [v9 length];
        v14 = bytes[1];
        if (v13 - 2 < v14)
        {
          v15 = ne_log_obj();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
LABEL_17:

LABEL_18:
            v16 = 0;
LABEL_19:

            goto LABEL_20;
          }

          v31 = [v9 length];
          v32 = bytes[1];
          *buf = 67109376;
          *&buf[4] = v31;
          *&buf[8] = 1024;
          *&buf[10] = v32;
          v24 = "Server redirect has invalid length %u (gateway length %u)";
          v27 = buf;
          v29 = v15;
          v30 = 14;
LABEL_48:
          _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, v24, v27, v30);
          goto LABEL_17;
        }

        v21 = bytes + 2;
        v20 = *bytes;
        switch(v20)
        {
          case 3:
            if (bytes[1])
            {
              v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes + 2 length:bytes[1] encoding:4];
              v16 = [MEMORY[0x1E6977E28] endpointWithHostname:v22 port:@"0"];

              goto LABEL_19;
            }

            v15 = ne_log_obj();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v28 = bytes[1];
            *buf = 67109120;
            *&buf[4] = v28;
            v24 = "Invalid FQDN length %u";
            break;
          case 2:
            memset(buf, 0, sizeof(buf));
            v37 = 0;
            if (v14 == 16)
            {
              *buf = 7708;
              *&buf[8] = *v21;
              goto LABEL_33;
            }

            v15 = ne_log_obj();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v25 = bytes[1];
            v38 = 67109120;
            v39 = v25;
            v24 = "Invalid IPv6 address length %u";
            goto LABEL_42;
          case 1:
            *buf = 0;
            *&buf[8] = 0;
            if (v14 == 4)
            {
              *buf = 528;
              *&buf[4] = *v21;
LABEL_33:
              v16 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
              goto LABEL_19;
            }

            v15 = ne_log_obj();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v26 = bytes[1];
            v38 = 67109120;
            v39 = v26;
            v24 = "Invalid IPv4 address length %u";
LABEL_42:
            v27 = &v38;
LABEL_46:
            v29 = v15;
            v30 = 8;
            goto LABEL_48;
          default:
            v15 = ne_log_obj();
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v23 = *bytes;
            *buf = 67109120;
            *&buf[4] = v23;
            v24 = "Server redirect has invalid type %u";
            break;
        }

        v27 = buf;
        goto LABEL_46;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_24:

        goto LABEL_25;
      }

      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session reportServerRedirect:]";
      v11 = "%s called with null self.ikeSA";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Session reportServerRedirect:]";
      v11 = "%s called with null packet";
    }

    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_24;
  }

LABEL_25:

  v19 = *MEMORY[0x1E69E9840];
}

void *__39__NEIKEv2Session_reportServerRedirect___block_invoke(void *result)
{
  v1 = result[4];
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(result[6] + 16))(result[6], result[5]);
  }

  return result;
}

uint64_t __32__NEIKEv2Session_reportShortDPD__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)reportPrivateNotifies:(void *)notifies
{
  v3 = a2;
  if (notifies)
  {
    privateNotifyStatusEvent = [notifies privateNotifyStatusEvent];
    clientQueue = [notifies clientQueue];
    if (clientQueue && privateNotifyStatusEvent)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v3 copyItems:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__NEIKEv2Session_reportPrivateNotifies___block_invoke;
      block[3] = &unk_1E7F0AAA0;
      block[4] = notifies;
      v9 = v6;
      v10 = privateNotifyStatusEvent;
      v7 = v6;
      dispatch_async(clientQueue, block);
    }
  }
}

void *__40__NEIKEv2Session_reportPrivateNotifies___block_invoke(void *result)
{
  v1 = result[4];
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(result[6] + 16))(result[6], result[5]);
  }

  return result;
}

- (void)installRekeyedChildSA:(id *)a andReturnIPsecSAsToDelete:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (self)
  {
    if (v5)
    {
      v8 = objc_getProperty(v5, v6, 56, 1);
      protocol = [v8 protocol];

      if (protocol == 240)
      {
        v10 = 0;
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
        Property = objc_getProperty(self, v11, 208, 1);
        v13 = [NEIKEv2Session copySAFromDictionary:v7 forChild:?];
        if (v13)
        {
          v14 = v13;
          do
          {
            [v10 addObject:v14];
            [objc_getProperty(self v15];
            v17 = objc_getProperty(self, v16, 208, 1);
            v18 = [NEIKEv2Session copySAFromDictionary:v17 forChild:v7];

            v14 = v18;
          }

          while (v18);
        }
      }

      self = [(NEIKEv2Session *)self installChildSA:v7];
      if (self)
      {
        objc_storeStrong(a, v10);
      }
    }

    else
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = 136315138;
        v23 = "[NEIKEv2Session installRekeyedChildSA:andReturnIPsecSAsToDelete:]";
        _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "%s called with null childSA", &v22, 0xCu);
      }

      self = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)uninstallOldRekeyedChildSA:(void *)a andDeleteIPsecSAs:
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  aCopy = a;
  if (!self)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
LABEL_20:

      goto LABEL_16;
    }

    *buf = 136315138;
    selfCopy = "[NEIKEv2Session uninstallOldRekeyedChildSA:andDeleteIPsecSAs:]";
    v22 = "%s called with null childSA";
LABEL_22:
    _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, v22, buf, 0xCu);
    goto LABEL_20;
  }

  v8 = objc_getProperty(v5, v6, 56, 1);
  protocol = [v8 protocol];

  if (protocol == 240)
  {
    [(NEIKEv2Session *)self uninstallTLSChildSA:v5 rekey:1];
    goto LABEL_16;
  }

  if (!aCopy)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 136315138;
    selfCopy = "[NEIKEv2Session uninstallOldRekeyedChildSA:andDeleteIPsecSAs:]";
    v22 = "%s called with null sasToDelete";
    goto LABEL_22;
  }

  v23 = v5;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = aCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          Property = objc_getProperty(self, v17, 192, 1);
          *buf = 138412802;
          selfCopy = self;
          v30 = 2112;
          v31 = Property;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@ %@ Uninstalling old rekeyed child SA %@", buf, 0x20u);
        }

        [objc_getProperty(self v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v12);
  }

  v5 = v23;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)reportTrafficSelectorsForChildSA:(void *)a
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a)
  {
    if (v3)
    {
      v6 = v3[4];
      v7 = objc_getProperty(v3, v4, 64, 1);
      v9 = objc_getProperty(v5, v8, 72, 1);
      trafficSelectorUpdateBlock = [a trafficSelectorUpdateBlock];
      clientQueue = [a clientQueue];
      v12 = clientQueue;
      if (trafficSelectorUpdateBlock && clientQueue)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__NEIKEv2Session_reportTrafficSelectorsForChildSA___block_invoke;
        block[3] = &unk_1E7F08BD0;
        block[4] = a;
        v17 = trafficSelectorUpdateBlock;
        v18 = v6;
        v15 = v7;
        v16 = v9;
        dispatch_async(v12, block);
      }
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v20 = "[NEIKEv2Session reportTrafficSelectorsForChildSA:]";
        _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null childSA", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __51__NEIKEv2Session_reportTrafficSelectorsForChildSA___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (*(v1 + 12) & 1) == 0)
  {
    return (*(*(result + 56) + 16))(*(result + 56), *(result + 64), *(result + 40), *(result + 48));
  }

  return result;
}

- (void)setPendingPrivateNotifies:(uint64_t)notifies
{
  if (notifies)
  {
    objc_storeStrong((notifies + 408), a2);
  }
}

@end