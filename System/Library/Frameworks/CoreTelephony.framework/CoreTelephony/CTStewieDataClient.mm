@interface CTStewieDataClient
- (BOOL)sendMessage:(id)a3 completion:(id)a4;
- (BOOL)start;
- (CTStewieDataClient)initWithServices:(int64_t)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (id).cxx_construct;
- (id)dispatchOnDelegateQueue:(NSObject  *){objcproto17OS_dispatch_queue};
- (id)dispatchOnDelegateQueue:(id *)a1;
- (id)sendMessage:(NSObject  *){objcproto17OS_dispatch_queue} completion:(std::unique_ptr<-[CTStewieDataClient)sendMessage:completion:]::$_2>;
- (id)sendMessage:(id *)a1 completion:;
- (void)connectionPairStateChanged:(int64_t)a3;
- (void)createConnectionPairIfRequired;
- (void)discardConnectionPairIfRequired;
- (void)dispatchOnDelegateQueue:(id)a3;
- (void)failAllPendingMessages;
- (void)invokeSendCompletionForMsgId:(id)a3 ack:(id)a4 metadata:(id)a5;
- (void)reEvaluate;
- (void)receivedData:(id)a3 fromConnectionId:(int64_t)a4;
- (void)sendMessageInternal:(id)a3 usingConnection:(int64_t)a4 completion:(id)a5;
- (void)stateChanged:(id)a3;
- (void)updateConnectedServices:(int64_t)a3;
@end

@implementation CTStewieDataClient

- (CTStewieDataClient)initWithServices:(int64_t)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = CTStewieDataClient;
  v10 = [(CTStewieDataClient *)&v23 init];
  if (!v10)
  {
    goto LABEL_19;
  }

  if (([objc_opt_class() conformsToProtocol:&unk_1EF088160] & 1) == 0)
  {
    v11 = CTLogStewieDataClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (!v9)
  {
    v11 = CTLogStewieDataClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (!a3)
  {
    v11 = CTLogStewieDataClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  if (*(v10 + 3) >= 0x10000uLL)
  {
    v11 = CTLogStewieDataClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:? delegate:? delegateQueue:?];
    }

LABEL_18:

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  *(v10 + 8) = 0;
  qos_class = dispatch_queue_get_qos_class(v9, 0);
  v13 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v14 = dispatch_queue_create("CTStewieDataClient", v13);
  v15 = *(v10 + 2);
  *(v10 + 2) = v14;

  *(v10 + 3) = a3;
  *(v10 + 4) = 0;
  objc_storeWeak(v10 + 5, v8);
  objc_storeStrong(v10 + 6, a5);
  v16 = *(v10 + 7);
  *(v10 + 7) = 0;

  *(v10 + 8) = 0;
  v17 = objc_alloc_init(CTStewieState);
  v18 = *(v10 + 9);
  *(v10 + 9) = v17;

  v19 = [[CTStewieStateMonitor alloc] initWithDelegate:v10 queue:*(v10 + 2)];
  v20 = *(v10 + 10);
  *(v10 + 10) = v19;

  if (!*(v10 + 10))
  {
    v11 = CTLogStewieDataClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient initWithServices:delegate:delegateQueue:];
    }

    goto LABEL_18;
  }

  v21 = v10;
LABEL_20:

  return v21;
}

- (BOOL)start
{
  v6 = self;
  v5 = 0;
  v2 = *(self + 2);
  v4[0] = &v6;
  v4[1] = &v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIZ27__CTStewieDataClient_start_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_sync(v2, block);
  return v5;
}

- (void)dispatchOnDelegateQueue:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(*(self + 2));
  objc_initWeak(&location, self);
  v5 = *(self + 6);
  objc_copyWeak(to, &location);
  to[1] = _Block_copy(v4);
  v6 = v5;
  operator new();
}

- (void)sendMessageInternal:(id)a3 usingConnection:(int64_t)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 4) && *(self + 7) && *(self + 8) == 1)
  {
    v10 = objc_alloc_init(CTStewieTransportMessage);
    [(CTStewieTransportMessage *)v10 setData:v8];
    v28 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v28];
    v12 = v28;
    if (v12 || !v11)
    {
      v19 = CTLogStewieDataClient();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient sendMessageInternal:usingConnection:completion:];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_62;
      v26[3] = &unk_1E6A48050;
      v27 = v9;
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v26];
      v14 = v27;
    }

    else if ([v11 length] <= 0x1000)
    {
      v14 = [(CTStewieTransportMessage *)v10 msgId];
      v20 = _Block_copy(v9);
      v21 = v14;
      std::string::basic_string[abi:nn200100]<0>(buf, [v14 UTF8String]);
      v31 = buf;
      v22 = std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(self + 88, buf);
      v23 = *(v22 + 56);
      *(v22 + 56) = v20;
      if (v33 < 0)
      {
        operator delete(*buf);
      }

      [*(self + 7) sendData:v11 usingConnection:a4 completion:*MEMORY[0x1E6977E80]];
    }

    else
    {
      v13 = CTLogStewieDataClient();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        -[CTStewieDataClient sendMessageInternal:usingConnection:completion:].cold.2(buf, [v11 length], v13);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_63;
      v24[3] = &unk_1E6A48050;
      v25 = v9;
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v24];
      v14 = v25;
    }
  }

  else
  {
    v15 = CTLogStewieDataClient();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(self + 4);
      v17 = CTConnectionPairStateAsString(*(self + 8));
      [CTStewieDataClient sendMessageInternal:v17 usingConnection:buf completion:v16];
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke;
    v29[3] = &unk_1E6A48050;
    v30 = v9;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v29];
    v10 = v30;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

void __69__CTStewieDataClient_sendMessageInternal_usingConnection_completion___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(v1 + 16))(v1);
}

- (BOOL)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([objc_opt_class() conformsToProtocol:&unk_1EF072C68] & 1) == 0)
  {
    v9 = CTLogStewieDataClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient sendMessage:completion:];
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    v9 = CTLogStewieDataClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CTStewieDataClient sendMessage:completion:];
    }

LABEL_19:
    v11 = 0;
    goto LABEL_23;
  }

  v19 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = ([v6 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v6, "isMemberOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(v6, "isMemberOfClass:", objc_opt_class());
    objc_initWeak(&location, self);
    v13 = *(self + 2);
    objc_copyWeak(v17, &location);
    v17[1] = v8;
    v17[2] = v12;
    v17[3] = _Block_copy(v7);
    v14 = v13;
    operator new();
  }

  v15 = CTLogStewieDataClient();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CTStewieDataClient sendMessage:completion:];
  }

LABEL_23:
  return v11;
}

- (void)invokeSendCompletionForMsgId:(id)a3 ack:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(*(self + 2));
  if (v8)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [v8 UTF8String]);
    v11 = std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::find<std::string>(self + 88, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if ((self + 96) == v11)
    {
      v12 = CTLogStewieDataClient();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient invokeSendCompletionForMsgId:ack:metadata:];
      }
    }

    else
    {
      v12 = _Block_copy(*(v11 + 56));
      std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::erase(self + 11, v11);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3321888768;
      v14[2] = __64__CTStewieDataClient_invokeSendCompletionForMsgId_ack_metadata___block_invoke;
      v14[3] = &unk_1EF013728;
      v17 = _Block_copy(v12);
      v15 = v9;
      v16 = v10;
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v14];

      v13 = v17;
      v17 = 0;
    }
  }
}

- (void)failAllPendingMessages
{
  dispatch_assert_queue_V2(*(self + 2));
  v3 = *(self + 11);
  v4 = self + 96;
  if (v3 != (self + 96))
  {
    do
    {
      *__p = 0u;
      *aBlock = 0u;
      std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>::pair[abi:nn200100](__p, v3 + 2);
      v5 = _Block_copy(aBlock[1]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3321888768;
      v11[2] = __44__CTStewieDataClient_failAllPendingMessages__block_invoke;
      v11[3] = &__block_descriptor_40_ea8_32c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE_e38_v16__0___CTStewieDataClientDelegate__8l;
      v12 = _Block_copy(v5);
      [(CTStewieDataClient *)self dispatchOnDelegateQueue:v11];
      v6 = v12;
      v12 = 0;

      v7 = aBlock[1];
      aBlock[1] = 0;

      if (SHIBYTE(aBlock[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::destroy(self + 88, *(self + 12));
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = v4;
}

void __44__CTStewieDataClient_failAllPendingMessages__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(CTStewieMessageAck);
  (*(*(a1 + 32) + 16))();
}

- (void)updateConnectedServices:(int64_t)a3
{
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 4) != a3)
  {
    *(self + 4) = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__CTStewieDataClient_updateConnectedServices___block_invoke;
    v5[3] = &__block_descriptor_40_e38_v16__0___CTStewieDataClientDelegate__8l;
    v5[4] = a3;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v5];
    if (!*(self + 4))
    {
      [(CTStewieDataClient *)self failAllPendingMessages];
    }
  }
}

void __46__CTStewieDataClient_updateConnectedServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 connectedServicesChanged:*(a1 + 32)];
}

- (void)createConnectionPairIfRequired
{
  dispatch_assert_queue_V2(*(self + 2));
  if (!*(self + 7))
  {
    v3 = xpc_array_create(0, 0);
    xpc_array_set_string(v3, 0xFFFFFFFFFFFFFFFFLL, "CoreTelephony");
    v4 = xpc_array_create(0, 0);
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Stewie");
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    nw_parameters_set_allow_ultra_constrained();
    nw_parameters_set_no_proxy();
    if (!secure_udp)
    {
      options = CTLogStewieDataClient();
      if (os_log_type_enabled(options, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      goto LABEL_29;
    }

    nw_parameters_set_required_netagent_classes();
    definition = nw_framer_create_definition("StewieClient", 0, &__block_literal_global_7);
    options = nw_framer_create_options(definition);

    v8 = nw_parameters_copy_default_protocol_stack(secure_udp);
    nw_protocol_stack_prepend_application_protocol(v8, options);
    memset(&v19, 0, sizeof(v19));
    std::to_string(&v19, *(self + 3));
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19.__r_.__value_.__r.__words[0];
    }

    host = nw_endpoint_create_host("dataclientOne", v9);
    if (!host)
    {
      v12 = CTLogStewieDataClient();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      goto LABEL_26;
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    v12 = nw_endpoint_create_host("dataclientTwo", v11);
    if (v12)
    {
      v13 = [[CTConnectionPair alloc] initWithQueue:*(self + 2) delegate:self endpoint1:host parameters1:secure_udp endpoint2:v12 parameter2:secure_udp];
      v14 = *(self + 7);
      *(self + 7) = v13;

      v15 = *(self + 7);
      if (!v15)
      {
        v16 = CTLogStewieDataClient();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CTStewieDataClient createConnectionPairIfRequired];
        }

        v15 = *(self + 7);
      }

      if ([v15 start])
      {
        goto LABEL_26;
      }

      v17 = CTLogStewieDataClient();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }

      v18 = *(self + 7);
      *(self + 7) = 0;
    }

    else
    {
      v18 = CTLogStewieDataClient();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CTStewieDataClient createConnectionPairIfRequired];
      }
    }

LABEL_26:
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

LABEL_29:
  }
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_2;
  input_handler[3] = &unk_1E6A480E0;
  v3 = v2;
  v6 = v3;
  nw_framer_set_input_handler(v3, input_handler);
  nw_framer_set_output_handler(v3, &__block_literal_global_91);

  return 2;
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_2(uint64_t a1, NSObject *a2)
{
  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3;
  parse[3] = &unk_1E6A480B8;
  v6 = *(a1 + 32);
  if (nw_framer_parse_input(a2, 3uLL, 3uLL, 0, parse))
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

uint64_t __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3(uint64_t a1, const void *a2, size_t a3)
{
  result = 0;
  if (a2 && a3 >= 3)
  {
    v5 = memcmp(&kCTStewieMagicPacket, a2, a3);
    v6 = CTLogConnectionPair();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3_cold_1();
      }

      nw_framer_mark_failed_with_error(*(a1 + 32), 50);
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __52__CTStewieDataClient_createConnectionPairIfRequired__block_invoke_3_cold_2();
      }

      nw_framer_pass_through_input(*(a1 + 32));
      nw_framer_pass_through_output(*(a1 + 32));
      nw_framer_mark_ready(*(a1 + 32));
    }

    return 3;
  }

  return result;
}

- (void)discardConnectionPairIfRequired
{
  dispatch_assert_queue_V2(*(self + 2));
  v5 = *(self + 7);
  v4 = (self + 56);
  v3 = v5;
  if (v5)
  {
    *v4 = 0;
    v4[1] = 0;
  }
}

- (void)reEvaluate
{
  dispatch_assert_queue_V2(*(self + 2));
  v3 = *(self + 3);
  v4 = [*(self + 9) dataPathAssertedServices] & v3;
  if (!v4 || *(self + 8) == 2)
  {
    [(CTStewieDataClient *)self discardConnectionPairIfRequired];
    v5 = self;
    v6 = 0;
LABEL_4:

    [(CTStewieDataClient *)v5 updateConnectedServices:v6];
    return;
  }

  v7 = [*(self + 9) activeServices];
  if (*(self + 7) && *(self + 8) == 1)
  {
    v6 = v7 & v4;
    v5 = self;
    goto LABEL_4;
  }

  [(CTStewieDataClient *)self createConnectionPairIfRequired];
}

- (void)stateChanged:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(*(self + 2));
  if (([*(self + 9) isEqual:v5] & 1) == 0)
  {
    objc_storeStrong(self + 9, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__CTStewieDataClient_stateChanged___block_invoke;
    v6[3] = &unk_1E6A48128;
    v7 = v5;
    [(CTStewieDataClient *)self dispatchOnDelegateQueue:v6];
    [(CTStewieDataClient *)self reEvaluate];
  }
}

void __35__CTStewieDataClient_stateChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 stateChanged:*(a1 + 32)];
}

- (void)connectionPairStateChanged:(int64_t)a3
{
  dispatch_assert_queue_V2(*(self + 2));
  if (*(self + 7) && *(self + 8) != a3)
  {
    *(self + 8) = a3;

    [(CTStewieDataClient *)self reEvaluate];
  }
}

- (void)receivedData:(id)a3 fromConnectionId:(int64_t)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(*(self + 2));
  if (v6 && *(self + 7))
  {
    v72 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v72];
    v8 = v72;
    v9 = v8;
    if (!v7 || v8)
    {
      v16 = CTLogStewieDataClient();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = [v6 length];
        v22 = CTConnectionPairConnectionIDAsString(a4);
        [(CTStewieDataClient *)v22 receivedData:v21 fromConnectionId:?];
      }
    }

    else
    {
      v10 = [v7 data];
      if (!v10 || ([v7 data], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length") == 0, v11, v10, v12))
      {
        v23 = CTLogStewieDataClient();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [v7 msgId];
          v25 = CTConnectionPairConnectionIDAsString(a4);
          [(CTStewieDataClient *)v24 receivedData:v25 fromConnectionId:location, v23];
        }

        v16 = [v7 msgId];
        v26 = [CTStewieMessageAck alloc];
        v27 = MEMORY[0x1E696ABC0];
        v82 = *MEMORY[0x1E696A578];
        v83[0] = @"Transport error: raise a bug";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
        v29 = [v27 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v28];
        v30 = [(CTStewieMessageAck *)v26 initWithError:v29];
        [(CTStewieDataClient *)self invokeSendCompletionForMsgId:v16 ack:v30 metadata:0];

        v9 = 0;
      }

      else
      {
        v13 = MEMORY[0x1E696ACD0];
        v14 = +[CTStewieTransportMessage allowedSetOfClasses];
        v15 = [v7 data];
        v71 = 0;
        v16 = [v13 unarchivedObjectOfClasses:v14 fromData:v15 error:&v71];
        v9 = v71;

        if (!v16 || v9)
        {
          v32 = CTLogStewieDataClient();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v56 = [v7 msgId];
            v57 = [v7 data];
            v58 = [v57 length];
            v59 = CTConnectionPairConnectionIDAsString(a4);
            *location = 138412802;
            *&location[4] = v56;
            v78 = 2048;
            v79 = v58;
            v80 = 2080;
            v81 = v59;
            _os_log_error_impl(&dword_182E9B000, v32, OS_LOG_TYPE_ERROR, "Message: %@ has garbage data of length: %lu, connection: %s", location, 0x20u);
          }

          v33 = [v7 msgId];
          v34 = [CTStewieMessageAck alloc];
          v35 = MEMORY[0x1E696ABC0];
          v75 = *MEMORY[0x1E696A578];
          v76 = @"Transport error: raise a bug";
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v37 = [v35 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v36];
          v38 = [(CTStewieMessageAck *)v34 initWithError:v37];
          [(CTStewieDataClient *)self invokeSendCompletionForMsgId:v33 ack:v38 metadata:0];
        }

        else if ([v16 isMemberOfClass:objc_opt_class()])
        {
          v17 = [v7 msgId];
          v18 = [v7 metadata];
          v19 = [v18 valueForKey:@"clientMetadata"];
          [(CTStewieDataClient *)self invokeSendCompletionForMsgId:v17 ack:v16 metadata:v19];
        }

        else if ([v16 conformsToProtocol:&unk_1EF072E90])
        {
          objc_initWeak(location, self);
          v63 = [v7 msgId];
          v40 = [v7 metadata];
          v62 = [v40 valueForKey:@"clientMetadata"];

          v41 = [v7 metadata];
          v61 = [v41 mutableCopy];

          [v61 removeObjectForKey:@"clientMetadata"];
          v42 = *(self + 2);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke;
          v64[3] = &unk_1E6A48178;
          v43 = v16;
          v65 = v43;
          v44 = v62;
          v66 = v44;
          v60 = v42;
          v67 = v60;
          v45 = v61;
          v68 = v45;
          objc_copyWeak(&v70, location);
          v46 = v63;
          v69 = v46;
          [(CTStewieDataClient *)self dispatchOnDelegateQueue:v64];

          objc_destroyWeak(&v70);
          objc_destroyWeak(location);
          v16 = v43;
        }

        else
        {
          v47 = CTLogStewieDataClient();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = [v7 msgId];
            v49 = objc_opt_class();
            [(CTStewieDataClient *)v48 receivedData:v49 fromConnectionId:location, v47];
          }

          v50 = [v7 msgId];
          v51 = [CTStewieMessageAck alloc];
          v52 = MEMORY[0x1E696ABC0];
          v73 = *MEMORY[0x1E696A578];
          v74 = @"Transport error: raise a bug";
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v54 = [v52 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v53];
          v55 = [(CTStewieMessageAck *)v51 initWithError:v54];
          [(CTStewieDataClient *)self invokeSendCompletionForMsgId:v50 ack:v55 metadata:0];
        }
      }
    }
  }

  else
  {
    v9 = CTLogStewieDataClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v20 = [v6 length];
      }

      else
      {
        v20 = 0;
      }

      v31 = CTConnectionPairConnectionIDAsString(a4);
      [(CTStewieDataClient *)v31 receivedData:v20 fromConnectionId:?];
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke_2;
  v7[3] = &unk_1E6A48150;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v6 = a2;
  objc_copyWeak(&v11, (a1 + 72));
  v10 = *(a1 + 64);
  [v6 messageReceived:v4 withMetadata:v5 completionBlock:v7];

  objc_destroyWeak(&v11);
}

void __52__CTStewieDataClient_receivedData_fromConnectionId___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_copyWeak(to, (a1 + 56));
  to[1] = *(a1 + 48);
  to[2] = *(a1 + 40);
  v3 = v2;
  operator new();
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

- (id)dispatchOnDelegateQueue:(id *)a1
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return a1;
}

- (id)dispatchOnDelegateQueue:(NSObject  *){objcproto17OS_dispatch_queue}
{
  v7 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 8);
    v5 = objc_loadWeakRetained(WeakRetained + 5);
    (*(v4 + 16))(v4, v5);
  }

  return std::unique_ptr<-[CTStewieDataClient dispatchOnDelegateQueue:]::$_1>::~unique_ptr[abi:nn200100](&v7);
}

- (id)sendMessage:(id *)a1 completion:
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0x10C0C4019CFF88ELL);
  }

  return a1;
}

- (id)sendMessage:(NSObject  *){objcproto17OS_dispatch_queue} completion:(std::unique_ptr<-[CTStewieDataClient)sendMessage:completion:]::$_2>
{
  v5 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendMessageInternal:*(a1 + 8) usingConnection:*(a1 + 16) completion:*(a1 + 24)];
  }

  return std::unique_ptr<-[CTStewieDataClient sendMessage:completion:]::$_2>::~unique_ptr[abi:nn200100](&v5);
}

@end