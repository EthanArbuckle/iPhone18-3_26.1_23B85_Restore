@interface ACRemoteDeviceProxy
- (ACRemoteDeviceProxy)init;
- (BOOL)_isValidCommandForOutgoingMessage:(id)a3;
- (int64_t)_priorityForMessageCarryingCommand:(id)a3;
- (void)_dequeueCompletionHandlersForMessageWithInternalID:(id)a3 success:(BOOL)a4 result:(id)a5 error:(id)a6;
- (void)_enqueueCompletionHandler:(id)a3 forMessageWithInternalID:(id)a4 transportID:(id)a5;
- (void)sendCommand:(id)a3 withAccount:(id)a4 options:(id)a5 completion:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation ACRemoteDeviceProxy

- (ACRemoteDeviceProxy)init
{
  v21.receiver = self;
  v21.super_class = ACRemoteDeviceProxy;
  v2 = [(ACRemoteDeviceProxy *)&v21 init];
  if (v2)
  {
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ACRemoteDeviceProxy *)v3 init];
    }

    v4 = objc_alloc_init(ACRemoteCommandHandler);
    remoteCommandHandler = v2->_remoteCommandHandler;
    v2->_remoteCommandHandler = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionHandlersByInternalMessageID = v2->_completionHandlersByInternalMessageID;
    v2->_completionHandlersByInternalMessageID = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalMessageIDsByTransportID = v2->_internalMessageIDsByTransportID;
    v2->_internalMessageIDsByTransportID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    completionHandlersLock = v2->_completionHandlersLock;
    v2->_completionHandlersLock = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.accounts.IDSQ", v12);
    messageSendingQueue = v2->_messageSendingQueue;
    v2->_messageSendingQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.accounts.IDS.commandProcessing", v15);
    commandProcessingQueue = v2->_commandProcessingQueue;
    v2->_commandProcessingQueue = v16;

    v18 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.accountssync"];
    messageSendingService = v2->_messageSendingService;
    v2->_messageSendingService = v18;

    [(IDSService *)v2->_messageSendingService addDelegate:v2 queue:v2->_messageSendingQueue];
  }

  return v2;
}

- (void)sendCommand:(id)a3 withAccount:(id)a4 options:(id)a5 completion:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ACLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy sendCommand:withAccount:options:completion:];
  }

  v15 = _ACDNotificationSignpostSystem();
  v16 = _ACSignpostCreate();
  v18 = v17;

  v19 = _ACDNotificationSignpostSystem();
  v20 = v19;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138412546;
    v47 = v11;
    v48 = 2112;
    v49 = v12;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SendRemoteCommand", "%@: %@", buf, 0x16u);
  }

  v21 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v47 = v16;
    v48 = 2112;
    v49 = v11;
    v50 = 2112;
    v51 = v12;
    _os_log_debug_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SendRemoteCommand %@: %@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke;
  aBlock[3] = &unk_27848CAA8;
  v44 = v16;
  v45 = v18;
  v22 = v13;
  v43 = v22;
  v23 = _Block_copy(aBlock);
  if ([(ACRemoteDeviceProxy *)self _isValidCommandForOutgoingMessage:v10])
  {
    v24 = [ACRemoteDeviceMessage actionMessageWithCommand:v10 account:v11 options:v12];
    v25 = [v12 objectForKeyedSubscript:*MEMORY[0x277CB8EE8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 BOOLValue];

      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (([v10 isEqual:*MEMORY[0x277CB8EA0]] & 1) == 0 && (objc_msgSend(v10, "isEqual:", *MEMORY[0x277CB8EC8]) & 1) == 0 && (objc_msgSend(v10, "isEqual:", *MEMORY[0x277CB8ED0]) & 1) == 0 && (objc_msgSend(v10, "isEqual:", *MEMORY[0x277CB8ED8]) & 1) == 0 && !objc_msgSend(v10, "isEqual:", *MEMORY[0x277CB8EB8]))
    {
      v28 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v28 = 1;
    [v24 setNeedsReply:1];
LABEL_22:
    v29 = [v24 data];
    if (v29)
    {
      messageSendingQueue = self->_messageSendingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18;
      block[3] = &unk_27848CAD0;
      v34 = v12;
      v35 = self;
      v39 = v23;
      v36 = v10;
      v37 = v24;
      v38 = v29;
      v41 = v28;
      v40 = v22;
      dispatch_async(messageSendingQueue, block);

      v31 = v34;
    }

    else
    {
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:19 userInfo:0];
      (*(v23 + 2))(v23, 0, 0, v31);
    }

    goto LABEL_26;
  }

  v27 = _ACLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v10;
    _os_log_impl(&dword_221D2F000, v27, OS_LOG_TYPE_DEFAULT, "Command %@ cannot be sent from this platform.", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
  (*(v23 + 2))(v23, 0, 0, v24);
LABEL_26:

  v32 = *MEMORY[0x277D85DE8];
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a1[5];
  v10 = a1[6];
  Nanoseconds = _ACSignpostGetNanoseconds();
  v12 = _ACDNotificationSignpostSystem();
  v13 = v12;
  v14 = a1[5];
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = @"NO";
    if (a2)
    {
      v15 = @"YES";
    }

    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = *&v8;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SendRemoteCommand", "%{public}@ (%@)", &v20, 0x16u);
  }

  v16 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218754;
    v21 = a1[5];
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    if (a2)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v24 = 2114;
    v25 = v19;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SendRemoteCommand %{public}@ (%@)", &v20, 0x2Au);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v7, v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CB8EF8]];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
    v4 = [*(*(a1 + 40) + 8) devicesForBTUUID:v3];
    if ([v4 count] != 1)
    {
      v14 = _ACLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        *buf = 138412802;
        v58 = v4;
        v59 = 2112;
        v60 = v3;
        v61 = 2112;
        v62 = v41;
        _os_log_error_impl(&dword_221D2F000, v14, OS_LOG_TYPE_ERROR, "BTUUID matched 0 or multiple devices, which shouldn't be the case, matches: %@, BTUUID: %@, options: %@", buf, 0x20u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
      (*(*(a1 + 72) + 16))();

      v6 = v3;
      goto LABEL_52;
    }

    v5 = [v4 anyObject];
    v6 = IDSCopyIDForDevice();
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18_cold_1();
    }

    if (v6)
    {
      goto LABEL_20;
    }
  }

  [*(*(a1 + 40) + 8) linkedDevicesWithRelationship:1];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v54 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v52 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v51 + 1) + 8 * v12);
      if ([v13 isActive])
      {
        if ([v13 isLocallyPaired])
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    v6 = IDSCopyIDForDevice();

    if (!v6)
    {
      goto LABEL_44;
    }

LABEL_20:
    v16 = [*(a1 + 40) _priorityForMessageCarryingCommand:*(a1 + 48)];
    v17 = _ACLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v19 = *(a1 + 56);
      *buf = 138412802;
      v58 = v6;
      v59 = 2112;
      v60 = v18;
      v61 = 2112;
      v62 = v19;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Message is about to be sent to %@ with priority %@: %@", buf, 0x20u);
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 64);
    v49 = 0;
    v50 = 0;
    v22 = [v20 _sendMessageData:v21 toDestination:v6 withPriority:v16 bypassDuet:1 transportID:&v50 error:&v49];
    v23 = v50;
    v24 = v49;
    if (v22)
    {
      if (!v23)
      {
        v39 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:21 userInfo:0];
        (*(*(a1 + 72) + 16))();

        goto LABEL_51;
      }

      if ([*(a1 + 48) isEqualToString:*MEMORY[0x277CB8EA8]])
      {
        v42 = v24;
        v43 = v23;
        v44 = v2;
        v25 = _ACLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEFAULT, "Command message is deletion. Will also send to non-active paired devices.", buf, 2u);
        }

        v26 = [*(*(a1 + 40) + 8) devices];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v27 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v46;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v45 + 1) + 8 * i);
              if (([v31 isActive] & 1) == 0)
              {
                v32 = IDSCopyIDForDevice();
                if (v32)
                {
                  [*(a1 + 40) _sendMessageData:*(a1 + 64) toDestination:v32 withPriority:v16 bypassDuet:0 transportID:0 error:0];
                }

                else
                {
                  v33 = _ACLogSystem();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v58 = v31;
                    _os_log_error_impl(&dword_221D2F000, v33, OS_LOG_TYPE_ERROR, "IDSCopyIDForDevice failed for inactive paired device: %@", buf, 0xCu);
                  }
                }
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v28);
        }

        v23 = v43;
        v2 = v44;
        v24 = v42;
      }

      if (*(a1 + 88) == 1)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 80);
        v36 = [*(a1 + 56) identifier];
        [v34 _enqueueCompletionHandler:v35 forMessageWithInternalID:v36 transportID:v23];

LABEL_51:
        goto LABEL_52;
      }

      v38 = *(*(a1 + 72) + 16);
    }

    else
    {
      v38 = *(*(a1 + 72) + 16);
    }

    v38();
    goto LABEL_51;
  }

LABEL_15:

LABEL_44:
  v37 = _ACLogSystem();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v37, OS_LOG_TYPE_DEFAULT, "Attempted to send remote proxy message with no paired device to target", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
  (*(*(a1 + 72) + 16))();
LABEL_52:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = _ACLogSystem();
  v17 = v16;
  if (!v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy service:v17 account:? identifier:? didSendWithSuccess:? error:?];
    }

    goto LABEL_7;
  }

  if (a6)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Success for message with Transport ID %@!", &v19, 0xCu);
    }

LABEL_7:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ACRemoteDeviceProxy service:account:identifier:didSendWithSuccess:error:];
  }

  [(ACRemoteDeviceProxy *)self _dequeueCompletionHandlersForMessageWithTransportID:v14 success:0 result:0 error:v15];
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy service:account:incomingData:fromID:context:];
  }

  if (v9)
  {
    v12 = [[ACRemoteDeviceMessage alloc] initWithData:v9];
    if ([(ACRemoteDeviceMessage *)v12 isReply])
    {
      v13 = [(ACRemoteDeviceMessage *)v12 sentMessageIdentifier];
      v14 = _ACLogSystem();
      p_super = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v12;
          _os_log_impl(&dword_221D2F000, p_super, OS_LOG_TYPE_DEFAULT, "Reply message succesfully received. %@", buf, 0xCu);
        }

        v16 = [(ACRemoteDeviceMessage *)v12 success];
        p_super = [(ACRemoteDeviceMessage *)v12 result];
        v17 = [(ACRemoteDeviceMessage *)v12 error];
        [(ACRemoteDeviceProxy *)self _dequeueCompletionHandlersForMessageWithInternalID:v13 success:v16 result:p_super error:v17];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACRemoteDeviceProxy service:account:incomingData:fromID:context:];
      }
    }

    else
    {
      v18 = _ACLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, "Action message received. Dispatching to handler. %@", buf, 0xCu);
      }

      v19 = os_transaction_create();
      commandProcessingQueue = self->_commandProcessingQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke;
      v22[3] = &unk_27848CB20;
      v23 = v12;
      v24 = self;
      v25 = v10;
      v26 = v19;
      v13 = v19;
      dispatch_async(commandProcessingQueue, v22);

      p_super = &v23->super;
    }
  }

  else
  {
    v12 = _ACLogSystem();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy service:? account:? incomingData:? fromID:? context:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Processing: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 40) + 32);
  v6 = [*(a1 + 32) command];
  v7 = [*(a1 + 32) account];
  v8 = [*(a1 + 32) options];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke_25;
  v16[3] = &unk_27848CAF8;
  *&v9 = *(a1 + 32);
  *(&v9 + 1) = *(a1 + 40);
  v15 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v17 = v15;
  v18 = v12;
  v19 = v2;
  v13 = v2;
  [v5 handleCommand:v6 forAccount:v7 options:v8 completion:v16];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *MEMORY[0x277D85DE8];
}

void __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) needsReply];
  v10 = _ACLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Processed message that requires a reply. %@", &v16, 0xCu);
    }

    [*(a1 + 40) _sendReplyForMessage:*(a1 + 32) toDestination:*(a1 + 48) withSuccess:a2 result:v7 error:v8];
  }

  else
  {
    if (v11)
    {
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Processed message that does not need a reply. %@. Success: %@. Error: %@", &v16, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueCompletionHandler:(id)a3 forMessageWithInternalID:(id)a4 transportID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy _enqueueCompletionHandler:forMessageWithInternalID:transportID:];
  }

  [(NSLock *)self->_completionHandlersLock lock];
  [(NSMutableDictionary *)self->_internalMessageIDsByTransportID setObject:v9 forKeyedSubscript:v10];

  v12 = [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID objectForKey:v9];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v13 = _Block_copy(v8);
  [v12 addObject:v13];

  [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID setObject:v12 forKey:v9];
  [(NSLock *)self->_completionHandlersLock unlock];
}

- (void)_dequeueCompletionHandlersForMessageWithInternalID:(id)a3 success:(BOOL)a4 result:(id)a5 error:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  [(NSLock *)self->_completionHandlersLock lock];
  v12 = [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID objectForKey:v9];
  [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID removeObjectForKey:v9];
  [(NSLock *)self->_completionHandlersLock unlock];
  v13 = _ACLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    *buf = 138412546;
    v27 = v14;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Calling out to %@ pending completions about message with ID %@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v21 + 1) + 8 * v19) + 16))(*(*(&v21 + 1) + 8 * v19));
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidCommandForOutgoingMessage:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = *MEMORY[0x277CB8EC8];
  v5 = *MEMORY[0x277CB8EB8];
  v6 = *MEMORY[0x277CB8EA0];
  v7 = *MEMORY[0x277CB8ED0];
  v8 = *MEMORY[0x277CB8EA8];
  v9 = *MEMORY[0x277CB8ED8];
  v10 = *MEMORY[0x277CB8EB0];
  v11 = *MEMORY[0x277CB8EC0];
  v12 = a3;
  v13 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, 0}];
  LOBYTE(v4) = [v13 containsObject:v12];

  return v4;
}

- (int64_t)_priorityForMessageCarryingCommand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CB8EC8]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CB8EA0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CB8EB0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CB8EA8]))
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CB8EB8]])
  {
    v4 = 200;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (void)sendCommand:withAccount:options:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136381443;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@, %@)", v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_221D2F000, v1, OS_LOG_TYPE_DEBUG, "Resolved target remote device to: %@ from btUUID: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageData:toDestination:withPriority:bypassDuet:transportID:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "IDSService send request failed. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendReplyForMessage:toDestination:withSuccess:result:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "No data for reply to message %@!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:didSendWithSuccess:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Message with Transport ID %@ could not be sent!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingData:fromID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136380931;
  OUTLINED_FUNCTION_0_1();
  *(&v2[3] + 2) = 265;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingData:fromID:context:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Reply received without a sentMessageIdentifier! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueCompletionHandler:forMessageWithInternalID:transportID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136381187;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@)", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_dequeueCompletionHandlersForMessageWithTransportID:success:result:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "No internal identifier was found for message with transport ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end