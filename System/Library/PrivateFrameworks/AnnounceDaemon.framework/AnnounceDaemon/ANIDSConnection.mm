@interface ANIDSConnection
- (ANConnectionDelegate)delegate;
- (ANIDSConnection)init;
- (id)sendMessage:(id)message messageUUIDString:(id)string destination:(id)destination;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation ANIDSConnection

- (ANIDSConnection)init
{
  v12.receiver = self;
  v12.super_class = ANIDSConnection;
  v2 = [(ANIDSConnection *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    outgoingMessages = v2->_outgoingMessages;
    v2->_outgoingMessages = v3;

    v5 = objc_alloc(MEMORY[0x277D18778]);
    v6 = [v5 initWithService:*MEMORY[0x277CEA750]];
    service = v2->_service;
    v2->_service = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.announce.IDSMessageQueue", v8);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v9;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_idsQueue];
    +[ANIDSConnection purgeTemporaryFiles];
  }

  return v2;
}

- (id)sendMessage:(id)message messageUUIDString:(id)string destination:(id)destination
{
  v59 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stringCopy = string;
  destinationCopy = destination;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__8;
  v51 = __Block_byref_object_dispose__8;
  v52 = 0;
  obj = 0;
  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:messageCopy format:200 options:0 error:&obj];
  objc_storeStrong(&v52, obj);
  v12 = v48[5];
  if (v12)
  {
    v13 = v12;
LABEL_3:
    v14 = v13;
    goto LABEL_30;
  }

  if (!v11)
  {
    v13 = [MEMORY[0x277CCA9B8] an_errorWithCode:1026 component:*MEMORY[0x277CEA9B0]];
    goto LABEL_3;
  }

  v15 = [MEMORY[0x277D18778] checkMessageSize:objc_msgSend(v11 priority:{"length"), 300}];
  v16 = [MEMORY[0x277CEAB48] messageWithoutDataFromMessage:messageCopy];
  if (v15)
  {
    v17 = [MEMORY[0x277CEAB48] messageDataFromMessage:messageCopy];
    v18 = [MEMORY[0x277CEAB98] createTemporaryFileWithData:v17 extension:*MEMORY[0x277CEA9E0] directory:@"46203C20-99A0-4622-A2B2-82E7339B26CA"];
    v19 = ANLogHandleIDSConnection();
    v20 = v19;
    if (v18)
    {
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_20;
      }

      v20 = v20;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = [v11 length];
      *buf = 138412802;
      v54 = &stru_2851BDB18;
      v55 = 2048;
      v56 = v21;
      v57 = 2112;
      v58 = v18;
      v22 = "%@Data is too big to send as message over IDS: %lu. Sending as file %@ plus metadata.";
      v23 = v20;
      v24 = 32;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_ERROR, "%@Failed to create temporary file for large message.", buf, 0xCu);
      }

      v20 = ANLogHandleIDSConnection();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v20 = v20;
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v25 = [v11 length];
      *buf = 138412546;
      v54 = &stru_2851BDB18;
      v55 = 2048;
      v56 = v25;
      v22 = "%@Data is too big to send as message over IDS: %lu but could not get/create file so still trying to send as a message";
      v23 = v20;
      v24 = 22;
    }

    _os_log_impl(&dword_23F525000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    goto LABEL_18;
  }

  v18 = 0;
LABEL_20:
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v27 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8D8]];

  if (v27)
  {
    v28 = ANLogHandleIDSConnection();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_ERROR, "%@Forcing IDS Delivery Failure", buf, 0xCu);
    }

    v29 = [MEMORY[0x277CCA9B8] an_errorWithCode:1036 component:*MEMORY[0x277CEA9B0] description:@"Force Delivery Failure Enabled in User Defaults"];
    v30 = v48[5];
    v48[5] = v29;

    delegate = [(ANIDSConnection *)self delegate];
    [delegate connection:self failedDeliveryForMessage:v16 withError:v48[5]];
    v14 = 0;
  }

  else
  {
    idsQueue = [(ANIDSConnection *)self idsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ANIDSConnection_sendMessage_messageUUIDString_destination___block_invoke;
    block[3] = &unk_278C87740;
    v38 = stringCopy;
    v39 = destinationCopy;
    v33 = v18;
    v40 = v33;
    selfCopy = self;
    v42 = v16;
    v45 = &v47;
    v43 = v11;
    v44 = messageCopy;
    dispatch_sync(idsQueue, block);

    if (v33)
    {
      v34 = ANLogHandleIDSConnection();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v34, OS_LOG_TYPE_DEFAULT, "%@Removing temporary file for large message.", buf, 0xCu);
      }

      [MEMORY[0x277CEAB98] removeItem:v33];
    }

    v14 = v48[5];

    delegate = v38;
  }

LABEL_30:
  _Block_object_dispose(&v47, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

void __61__ANIDSConnection_sendMessage_messageUUIDString_destination___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CEAB80] sharedInstance];
  v4 = [v3 numberForDefault:*MEMORY[0x277CEA8F8]];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D18650]];

  v5 = MEMORY[0x277CBEC38];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185A0]];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D18570]];
  v6 = *(a1 + 32);
  v7 = IDSGetUUIDData();
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D18668]];

  v8 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) service];
  if (v9)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v13 = [v2 copy];
    v14 = *(*(a1 + 88) + 8);
    obj = *(v14 + 40);
    v28 = 0;
    LOBYTE(v12) = [v10 sendResourceAtURL:v11 metadata:v12 toDestinations:v8 priority:300 options:v13 identifier:&v28 error:&obj];
    v15 = v28;
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
LABEL_3:
      v16 = ANLogHandleIDSConnection();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = &stru_2851BDB18;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@IDS Send Successful with identifier: %@", buf, 0x16u);
      }

      v17 = [*(a1 + 56) outgoingMessages];
      [v17 setObject:*(a1 + 64) forKey:v15];
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(a1 + 72);
    v19 = [v2 copy];
    v20 = *(*(a1 + 88) + 8);
    v25 = *(v20 + 40);
    v26 = 0;
    v21 = [v10 sendData:v18 toDestinations:v8 priority:300 options:v19 identifier:&v26 error:&v25];
    v15 = v26;
    objc_storeStrong((v20 + 40), v25);

    if (v21)
    {
      goto LABEL_3;
    }
  }

  v17 = ANLogHandleIDSConnection();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 80);
    v23 = *(*(*(a1 + 88) + 8) + 40);
    *buf = 138412802;
    v30 = &stru_2851BDB18;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v22;
    _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_ERROR, "%@IDS Send Failed: Error = %@, Message = %@", buf, 0x20u);
  }

LABEL_9:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  v21 = 0;
  v16 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v21];
  v17 = v21;
  if (v17)
  {
    v18 = ANLogHandleIDSConnection();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = &stru_2851BDB18;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_ERROR, "%@Failed to convert data into dictionary: %@", buf, 0x16u);
    }

    v19 = +[ANAnalytics shared];
    [v19 error:5020];
  }

  else if (v16)
  {
    [(ANIDSConnection *)self service:serviceCopy account:accountCopy incomingMessage:v16 fromID:dCopy context:contextCopy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  serviceCopy = service;
  v15 = ANLogHandleIDSConnection();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@Received IDS Message from ID = %@", buf, 0x16u);
  }

  v16 = objc_opt_new();
  senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];

  [v16 setSenderCorrelationIdentifier:senderCorrelationIdentifier];
  v18 = [serviceCopy deviceForFromID:dCopy];

  [v16 setIsValidDevice:v18 != 0];
  v19 = ANLogHandleIDSConnection();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    modelIdentifier = [v18 modelIdentifier];
    *buf = 138412802;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = modelIdentifier;
    _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Sender Context: (%@) - %@", buf, 0x20u);
  }

  v21 = [MEMORY[0x277CEABD0] senderWithID:dCopy type:1];
  objc_initWeak(buf, self);
  v22 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ANIDSConnection_service_account_incomingMessage_fromID_context___block_invoke;
  block[3] = &unk_278C87788;
  objc_copyWeak(&v31, buf);
  block[4] = self;
  v28 = messageCopy;
  v29 = v21;
  v30 = v16;
  v23 = v16;
  v24 = v21;
  v25 = messageCopy;
  dispatch_async(v22, block);

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v26 = *MEMORY[0x277D85DE8];
}

void __66__ANIDSConnection_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  [v2 connection:*(a1 + 32) didReceiveMessage:*(a1 + 40) fromSender:*(a1 + 48) senderContext:*(a1 + 56) handler:&__block_literal_global_31];
}

void __66__ANIDSConnection_service_account_incomingMessage_fromID_context___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = ANLogHandleIDSConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412546;
      v6 = &stru_2851BDB18;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_ERROR, "%@IDS Receive Failure: %@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  v20 = ANLogHandleIDSConnection();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = &stru_2851BDB18;
    v29 = 2112;
    v30 = lCopy;
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "%@Received IDS File %@ from ID = %@", buf, 0x20u);
  }

  v26 = 0;
  v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:0 error:&v26];
  v22 = v26;
  if (v21)
  {
    v23 = [MEMORY[0x277CEAB48] messageFromData:metadataCopy data:v21];
    [(ANIDSConnection *)self service:serviceCopy account:accountCopy incomingMessage:v23 fromID:dCopy context:contextCopy];
  }

  else
  {
    v24 = ANLogHandleIDSConnection();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v28 = &stru_2851BDB18;
      v29 = 2112;
      v30 = lCopy;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_ERROR, "%@Failed to convert file resource %@ sent from %@ to data: %@", buf, 0x2Au);
    }

    v23 = +[ANAnalytics shared];
    [v23 error:5021];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  outgoingMessages = [(ANIDSConnection *)self outgoingMessages];
  v14 = [outgoingMessages valueForKey:identifierCopy];

  outgoingMessages2 = [(ANIDSConnection *)self outgoingMessages];
  [outgoingMessages2 removeObjectForKey:identifierCopy];

  v16 = ANLogHandleIDSConnection();
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = &stru_2851BDB18;
      v27 = 2112;
      v28 = identifierCopy;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@IDS Delivery Successful for message with identifier (%@)", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = &stru_2851BDB18;
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_ERROR, "%@IDS Delivery Failed for message with identifier (%@). Error: %@", buf, 0x20u);
    }

    v18 = +[ANAnalytics shared];
    [v18 error:5022];

    objc_initWeak(buf, self);
    v19 = dispatch_get_global_queue(33, 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __79__ANIDSConnection_service_account_identifier_didSendWithSuccess_error_context___block_invoke;
    v21[3] = &unk_278C87320;
    objc_copyWeak(&v24, buf);
    v21[4] = self;
    v22 = v14;
    v23 = errorCopy;
    dispatch_async(v19, v21);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __79__ANIDSConnection_service_account_identifier_didSendWithSuccess_error_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  [v2 connection:*(a1 + 32) failedDeliveryForMessage:*(a1 + 40) withError:*(a1 + 48)];
}

- (ANConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end