@interface NetworkUtils
+ (BOOL)createAndStartListener:(id *)a3 withParameters:(id)a4;
+ (BOOL)createNWPathEvaluator:(id *)a3 withIPAddress:(id)a4 localPort:(int *)a5 remotePort:(int)a6 shouldRunInProcess:(BOOL)a7 useBackingSocket:(BOOL)a8;
+ (id)encryptionInfoForKey:(unint64_t)a3;
+ (id)networkAddressFromEndpoint:(id)a3;
+ (id)networkEmulationSettings:(id)a3;
+ (id)networkEmulationSettings:(id)a3 onUplink:(BOOL)a4;
+ (id)newEncryptionInfoWithMediaKeyIndex:(id)a3 participantID:(id)a4;
+ (id)newNWConnectionWithIPAddress:(id)a3 srcPort:(signed __int16)a4;
+ (id)newNetworkEndpointForLocalAddress:(id)a3 preferredPort:(unsigned __int16)a4;
+ (id)newNetworkEndpointForLocalLoopbackInterface:(unsigned __int16)a3;
+ (id)newRTPSocketDictionary:(BOOL)a3 rtpSourcePort:(signed __int16)a4;
+ (id)newRemoteEndpointArrayWithRemotePort:(int)a3 remoteSSRC:(unsigned int)a4;
+ (id)newRemoteEndpoints:(BOOL)a3;
+ (id)securityKeyMaterialWithMediaKeyIndex:(id)a3 participantID:(id)a4;
+ (id)securityKeyMaterialWithStaticMediaKeyIndex;
+ (int)socketWithIPAddress:(id)a3 srcPort:(signed __int16)a4 shouldConnect:(BOOL)a5 error:(id *)a6;
+ (void)setUniquePIDOnParameters:(id)a3 shouldRunInProcess:(BOOL)a4;
@end

@implementation NetworkUtils

+ (BOOL)createAndStartListener:(id *)a3 withParameters:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = nw_listener_create(a4);
  if (v5 && (global_queue = dispatch_get_global_queue(0, 0), nw_listener_set_queue(v5, global_queue), nw_listener_set_new_connection_handler(v5, &__block_literal_global_99), v7 = dispatch_semaphore_create(0), v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __54__NetworkUtils_createAndStartListener_withParameters___block_invoke_2, v11[3] = &unk_1E85F9530, v11[5] = v5, v11[6] = &v12, v11[4] = v7, MEMORY[0x1E128C4B0](v5, v11), nw_listener_start(v5), v8 = dispatch_time(0, 5000000000), !dispatch_semaphore_wait(v7, v8)) && *(v13 + 24) == 1)
  {
    *a3 = v5;
    v9 = 1;
    v5 = 0;
  }

  else
  {
    v9 = 0;
  }

  nw_release(v5);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void __54__NetworkUtils_createAndStartListener_withParameters___block_invoke(uint64_t a1, NSObject *a2)
{
  NSLog(&cfstr_UnexpectedConn.isa);

  nw_connection_cancel(a2);
}

void __54__NetworkUtils_createAndStartListener_withParameters___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3 || a3)
  {
LABEL_6:
    v4 = *(a1 + 32);

    dispatch_semaphore_signal(v4);
    return;
  }

  if (a2 != 4)
  {
    if (a2 != 2)
    {
      return;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  nw_release(*(a1 + 40));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

+ (id)newNetworkEndpointForLocalAddress:(id)a3 preferredPort:(unsigned __int16)a4
{
  v8 = *MEMORY[0x1E69E9840];
  *&address.sa_len = 528;
  *address.sa_data = __rev16(a4);
  *&address.sa_data[2] = inet_addr([a3 UTF8String]);
  *&address.sa_data[6] = 0;
  v4 = nw_endpoint_create_address(&address);
  v5 = nw_interface_create_with_name();
  nw_endpoint_set_interface();
  nw_release(v5);
  return v4;
}

+ (id)newNetworkEndpointForLocalLoopbackInterface:(unsigned __int16)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  *&address.sa_len = 528;
  *&address.sa_data[2] = inet_addr([@"127.0.0.1" UTF8String]);
  *&address.sa_data[6] = 0;
  if (v3)
  {
    *address.sa_data = __rev16(v3);
    [@"127.0.0.1" UTF8String];
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  }

  else
  {
    host_with_numeric_port = nw_endpoint_create_address(&address);
  }

  v5 = host_with_numeric_port;
  v6 = nw_interface_create_with_name();
  nw_endpoint_set_interface();
  nw_release(v6);
  return v5;
}

+ (int)socketWithIPAddress:(id)a3 srcPort:(signed __int16)a4 shouldConnect:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v7 = a4;
  v15 = *MEMORY[0x1E69E9840];
  *&v14.sa_len = 0;
  *&v14.sa_data[6] = 0;
  v9 = socket(2, 2, 0);
  if (v9 < 0)
  {
    perror("cannot create socket");
    return -1;
  }

  v10 = v9;
  v13 = 1;
  setsockopt(v9, 0xFFFF, 512, &v13, 4u);
  v14.sa_family = 2;
  *&v14.sa_data[2] = inet_addr([a3 UTF8String]);
  *v14.sa_data = bswap32(v7) >> 16;
  if (bind(v10, &v14, 0x10u) < 0)
  {
    v11 = "bind failed";
    goto LABEL_8;
  }

  if (v6 && connect(v10, &v14, 0x10u) < 0)
  {
    v11 = "connect failed";
LABEL_8:
    perror(v11);
    close(v10);
    return -1;
  }

  return v10;
}

+ (id)newRTPSocketDictionary:(BOOL)a3 rtpSourcePort:(signed __int16)a4
{
  v5 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v6 = [NetworkUtils socketWithIPAddress:@"127.0.0.1" srcPort:a4 error:v12];
  if (v6 < 0)
  {
    perror("rtp socket creation failed");
    return 0;
  }

  v7 = v6;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (!v5)
  {
    v10 = [NetworkUtils socketWithIPAddress:@"127.0.0.1" srcPort:(a4 + 1) error:v12];
    if ((v10 & 0x80000000) == 0)
    {
      xpc_dictionary_set_fd(v9, "avcKeyRTPSocket", v7);
      xpc_dictionary_set_fd(v9, "avcKeyRTCPSocket", v10);
      close(v10);
      goto LABEL_6;
    }

    perror("rtcp socket creation failed");
    xpc_release(v9);
    close(v10);
    close(v7);
    return 0;
  }

  xpc_dictionary_set_fd(v8, "avcKeySharedSocket", v7);
LABEL_6:
  close(v7);
  return v9;
}

+ (id)securityKeyMaterialWithStaticMediaKeyIndex
{
  v2 = -[VCMediaKeyIndex initWithNSUUID:]([VCMediaKeyIndex alloc], "initWithNSUUID:", [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0A0B0C0D-0E0F-0000-AAAA-0B0C0D0E0F01"]);

  return [NetworkUtils securityKeyMaterialWithMediaKeyIndex:v2];
}

+ (id)securityKeyMaterialWithMediaKeyIndex:(id)a3 participantID:(id)a4
{
  v9[5] = *MEMORY[0x1E69E9840];
  v4 = [NetworkUtils newEncryptionInfoWithMediaKeyIndex:a3 participantID:a4];
  v8[0] = @"SecurityKey";
  v9[0] = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5008]];
  v8[1] = @"SecuritySalt";
  v9[1] = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5010]];
  v8[2] = @"SecurityKeyIndex";
  v9[2] = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5000]];
  v8[3] = @"SecurityKeySetTime";
  v9[3] = [MEMORY[0x1E696AD98] numberWithDouble:micro()];
  v8[4] = @"SecurityLocallyGenerated";
  v9[4] = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A4FF8]];
  v5 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:{5), "mutableCopy"}];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5020]];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"SecurityIDSParticipantID"];
  }

  return v5;
}

+ (id)newEncryptionInfoWithMediaKeyIndex:(id)a3 participantID:(id)a4
{
  v12[4] = *MEMORY[0x1E69E9840];
  memset(v12, 170, 32);
  HexToByte(&v12[2], 16, "00110011", 32);
  HexToByte(v12, 16, "11100010", 32);
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v12[2] length:16];
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:16];
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v8 initWithObjectsAndKeys:{v6, *MEMORY[0x1E69A5008], v7, *MEMORY[0x1E69A5010], a3, *MEMORY[0x1E69A5000], MEMORY[0x1E695E118], *MEMORY[0x1E69A4FF8], 0}];
  v10 = v9;
  if (a4)
  {
    [v9 setObject:a4 forKeyedSubscript:*MEMORY[0x1E69A5020]];
  }

  return v10;
}

+ (id)encryptionInfoForKey:(unint64_t)a3
{
  if (encryptionInfoForKey__once != -1)
  {
    +[NetworkUtils encryptionInfoForKey:];
  }

  v4 = encryptionInfoForKey__testKeys;

  return [v4 objectAtIndexedSubscript:a3 == 1];
}

uint64_t __37__NetworkUtils_encryptionInfoForKey___block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  memset(v14, 170, 32);
  encryptionInfoForKey__testKeys = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v0 = *MEMORY[0x1E69A5008];
  v1 = *MEMORY[0x1E69A5010];
  v2 = *MEMORY[0x1E69A5000];
  v3 = 1;
  do
  {
    v4 = v3 & 1;
    if (v3)
    {
      v5 = "00110011";
    }

    else
    {
      v5 = "00110010";
    }

    if (v3)
    {
      v6 = "11100010";
    }

    else
    {
      v6 = "11100011";
    }

    HexToByte(&v14[2], 16, v5, 32);
    HexToByte(v14, 16, v6, 32);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14[2] length:16];
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:16];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v12[0] = v0;
    v12[1] = v1;
    v13[0] = v7;
    v13[1] = v8;
    v12[2] = v2;
    v13[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    result = [encryptionInfoForKey__testKeys addObject:v10];
    v3 = 0;
  }

  while (v4);
  return result;
}

+ (id)networkEmulationSettings:(id)a3 onUplink:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v7 = [NetworkUtils networkEmulationSettings:?];
  if (!v7)
  {
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(NetworkUtils *)v12 networkEmulationSettings:a3 onUplink:v13];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v22 = 136316418;
    v23 = v15;
    v24 = 2080;
    v25 = "+[NetworkUtils networkEmulationSettings:onUplink:]";
    v26 = 1024;
    v27 = 400;
    v28 = 2112;
    v29 = v10;
    v30 = 2048;
    v31 = a1;
    v32 = 2112;
    v33 = a3;
    v17 = " [%s] %s:%d %@(%p) Empty network emulation settings path=%@";
    v18 = v16;
    v19 = 58;
    goto LABEL_28;
  }

  if (v4)
  {
    v8 = @"output";
  }

  else
  {
    v8 = @"input";
  }

  result = [v7 objectForKeyedSubscript:v8];
  if (!result)
  {
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [NetworkUtils networkEmulationSettings:v14 onUplink:?];
        }
      }

      return 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v22 = 136316418;
    v23 = v20;
    v24 = 2080;
    v25 = "+[NetworkUtils networkEmulationSettings:onUplink:]";
    v26 = 1024;
    v27 = 404;
    v28 = 2112;
    v29 = v11;
    v30 = 2048;
    v31 = a1;
    v32 = 1024;
    LODWORD(v33) = v4;
    v17 = " [%s] %s:%d %@(%p) Empty network emulation settings for isUplink=%d";
    v18 = v21;
    v19 = 54;
LABEL_28:
    _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v17, &v22, v19);
    return 0;
  }

  return result;
}

+ (id)networkEmulationSettings:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [(NetworkUtils *)a1 networkEmulationSettings:buf];
    return *buf;
  }

  result = [a3 length];
  if (result)
  {
    v18 = 0;
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:a3 options:0 error:&v18];
    if (v6)
    {
      result = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v18];
      if (result)
      {
        return result;
      }

      if (objc_opt_class() != a1)
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v17 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136316674;
        *&buf[4] = v17;
        v20 = 2080;
        v21 = "+[NetworkUtils networkEmulationSettings:]";
        v22 = 1024;
        v23 = 420;
        v24 = 2112;
        v25 = v8;
        v26 = 2048;
        v27 = a1;
        v28 = 2112;
        v29 = a3;
        v30 = 2112;
        v31 = v18;
        v11 = " [%s] %s:%d %@(%p) Error serializing network emulation settings path=%@ error=%@";
        goto LABEL_29;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      *&buf[4] = v12;
      v20 = 2080;
      v21 = "+[NetworkUtils networkEmulationSettings:]";
      v22 = 1024;
      v23 = 420;
      v24 = 2112;
      v25 = a3;
      v26 = 2112;
      v27 = v18;
      v11 = " [%s] %s:%d Error serializing network emulation settings path=%@ error=%@";
    }

    else
    {
      if (objc_opt_class() != a1)
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136316674;
        *&buf[4] = v15;
        v20 = 2080;
        v21 = "+[NetworkUtils networkEmulationSettings:]";
        v22 = 1024;
        v23 = 417;
        v24 = 2112;
        v25 = v7;
        v26 = 2048;
        v27 = a1;
        v28 = 2112;
        v29 = a3;
        v30 = 2112;
        v31 = v18;
        v11 = " [%s] %s:%d %@(%p) Error loading network emulation data path=%@ error=%@";
LABEL_29:
        v13 = v16;
        v14 = 68;
        goto LABEL_30;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      *&buf[4] = v9;
      v20 = 2080;
      v21 = "+[NetworkUtils networkEmulationSettings:]";
      v22 = 1024;
      v23 = 417;
      v24 = 2112;
      v25 = a3;
      v26 = 2112;
      v27 = v18;
      v11 = " [%s] %s:%d Error loading network emulation data path=%@ error=%@";
    }

    v13 = v10;
    v14 = 48;
LABEL_30:
    _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v11, buf, v14);
    return 0;
  }

  return result;
}

+ (id)newRemoteEndpoints:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [NetworkUtils newNetworkEndpointForLocalLoopbackInterface:(v5 + 19650)];
      if (!v6)
      {
        +[NetworkUtils newRemoteEndpoints:];
        goto LABEL_11;
      }

      v7 = v6;
      v8 = [[AVCEndpoint alloc] initWithNWEndpoint:v6];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      nw_release(v7);
      if (v3)
      {
        [(AVCEndpoint *)v9 setRtpSSRC:RTPGenerateSSRC()];
      }

      [v4 addObject:v9];

      if (++v5 == 7)
      {
        return v4;
      }
    }

    [NetworkUtils newRemoteEndpoints:v7];
  }

  else
  {
    +[NetworkUtils newRemoteEndpoints:];
  }

LABEL_11:

  return 0;
}

+ (id)newRemoteEndpointArrayWithRemotePort:(int)a3 remoteSSRC:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_opt_new();
  if (!v6)
  {
    +[NetworkUtils newRemoteEndpointArrayWithRemotePort:remoteSSRC:];
LABEL_9:

    return 0;
  }

  v7 = [NetworkUtils newNetworkEndpointForLocalLoopbackInterface:v5];
  if (!v7)
  {
    +[NetworkUtils newRemoteEndpointArrayWithRemotePort:remoteSSRC:];
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [[AVCEndpoint alloc] initWithNWEndpoint:v7];
  if (!v9)
  {
    [NetworkUtils newRemoteEndpointArrayWithRemotePort:v8 remoteSSRC:?];
    goto LABEL_9;
  }

  v10 = v9;
  nw_release(v8);
  [(AVCEndpoint *)v10 setRtpSSRC:v4];
  [v6 addObject:v10];

  return v6;
}

+ (id)networkAddressFromEndpoint:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [NetworkUtils networkAddressFromEndpoint:v11];
LABEL_12:
    v4 = v11[0];
LABEL_14:

    return 0;
  }

  v4 = objc_alloc_init(VCNetworkAddress);
  v5 = nw_endpoint_copy_address_string(a3);
  if (!v5)
  {
    [(NetworkUtils *)v4 networkAddressFromEndpoint:v11];
    goto LABEL_12;
  }

  v6 = v5;
  address = nw_endpoint_get_address(a3);
  if (!address)
  {
    [NetworkUtils networkAddressFromEndpoint:v6];
    goto LABEL_14;
  }

  v8 = address;
  -[VCNetworkAddress setIp:](v4, "setIp:", [MEMORY[0x1E696AEC0] stringWithUTF8String:v6]);
  [(VCNetworkAddress *)v4 setPort:nw_endpoint_get_port(a3)];
  if (v8->sa_family == 30)
  {
    v9 = 6;
  }

  else
  {
    v9 = 4;
  }

  [(VCNetworkAddress *)v4 setIpVersion:v9];
  free(v6);

  return v4;
}

+ (void)setUniquePIDOnParameters:(id)a3 shouldRunInProcess:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = +[AVCDaemonProcessInfo getDaemonProcessInfo];
    if (!v4)
    {
      return;
    }

    [objc_msgSend(v4 objectForKeyedSubscript:{@"avcKeyDaemonProcessInfoUniquePID", "longLongValue"}];
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v5 = getpid();
    proc_pidinfo(v5, 17, 1uLL, v6, 56);
  }

  nw_parameters_set_delegated_unique_pid();
}

+ (BOOL)createNWPathEvaluator:(id *)a3 withIPAddress:(id)a4 localPort:(int *)a5 remotePort:(int)a6 shouldRunInProcess:(BOOL)a7 useBackingSocket:(BOOL)a8
{
  v8 = a7;
  v25 = *MEMORY[0x1E69E9840];
  listener = 0;
  if (a8)
  {
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  }

  else
  {
    legacy_tcp_socket = MEMORY[0x1E128C540](a1, a2, a3, a4, a5, *&a6);
  }

  v14 = legacy_tcp_socket;
  if (legacy_tcp_socket)
  {
    v15 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
    if (v15)
    {
      v16 = MEMORY[0x1E128C6A0]();
      v17 = v16;
      if (v16)
      {
        MEMORY[0x1E128C6B0](v16, 1);
        nw_protocol_stack_set_transport_protocol(v15, v17);
        nw_parameters_set_reuse_local_address(v14, 1);
        nw_parameters_set_disable_listener_datapath();
        +[VCVTPWrapper connectionContext];
        nw_parameters_set_context();
        if (a5 && *a5 != -1)
        {
          goto LABEL_14;
        }

        if ([a1 createAndStartListener:&listener withParameters:v14])
        {
          port = nw_listener_get_port(listener);
          if (a5 && port)
          {
            *a5 = port;
LABEL_14:
            [a4 UTF8String];
            host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
            if (host_with_numeric_port)
            {
              nw_parameters_set_local_endpoint(v14, host_with_numeric_port);
              [a1 setUniquePIDOnParameters:v14 shouldRunInProcess:v8];
              if (a5)
              {
                [a4 UTF8String];
                v20 = nw_endpoint_create_host_with_numeric_port();
                if (!v20)
                {
LABEL_26:
                  v22 = 0;
                  goto LABEL_21;
                }
              }

              else
              {
                v20 = 0;
              }

              evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
              if (evaluator_for_endpoint)
              {
                *a3 = evaluator_for_endpoint;
                nw_listener_cancel(listener);
                listener = 0;
                v22 = 1;
                goto LABEL_21;
              }

              goto LABEL_26;
            }

            v22 = 0;
LABEL_25:
            v20 = 0;
            goto LABEL_21;
          }

          if (port)
          {
            goto LABEL_14;
          }
        }
      }

      v22 = 0;
      host_with_numeric_port = 0;
      goto LABEL_25;
    }

    v22 = 0;
    host_with_numeric_port = 0;
    v20 = 0;
  }

  else
  {
    v22 = 0;
    host_with_numeric_port = 0;
    v20 = 0;
    v15 = 0;
  }

  v17 = 0;
LABEL_21:
  nw_release(v15);
  nw_release(v17);
  nw_release(host_with_numeric_port);
  nw_release(v20);
  nw_release(v14);
  nw_release(0);
  if (listener)
  {
    nw_release(listener);
  }

  return v22;
}

+ (id)newNWConnectionWithIPAddress:(id)a3 srcPort:(signed __int16)a4
{
  v4 = [a1 connectedSocketWithIPAddress:a3 srcPort:a4 error:0];
  if (v4 == -1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  v6 = secure_udp;
  if (!secure_udp)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  nw_parameters_set_reuse_local_address(secure_udp, 1);
  v7 = nw_connection_create_with_connected_socket_and_parameters();
LABEL_4:
  VCCloseSocketIfValid(v4);
  nw_release(v6);
  return v7;
}

+ (void)networkEmulationSettings:(uint64_t)a1 onUplink:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_7();
  v7 = 404;
  v8 = v1;
  v9 = v2;
  _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty network emulation settings for isUplink=%d", &v4, 0x22u);
}

+ (void)networkEmulationSettings:(os_log_t)log onUplink:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[NetworkUtils networkEmulationSettings:onUplink:]";
  v7 = 1024;
  v8 = 400;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty network emulation settings path=%@", &v3, 0x26u);
}

+ (void)networkEmulationSettings:(void *)a1 .cold.1(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    v15 = 411;
    OUTLINED_FUNCTION_2();
    v10 = 28;
LABEL_12:
    _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v11;
      OUTLINED_FUNCTION_0();
      v15 = 411;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = a1;
      v5 = &dword_1DB56E000;
      v8 = " [%s] %s:%d %@(%p) Network emulation profile path should not be nil";
      v9 = &v13;
      v6 = v12;
      v7 = OS_LOG_TYPE_ERROR;
      v10 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

+ (void)newRemoteEndpoints:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      nw_endpoint_get_description();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  nw_release(a1);
}

+ (void)newRemoteEndpoints:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

+ (void)newRemoteEndpoints:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)newRemoteEndpointArrayWithRemotePort:(void *)a1 remoteSSRC:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      nw_endpoint_get_description();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  nw_release(a1);
}

+ (void)newRemoteEndpointArrayWithRemotePort:remoteSSRC:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

+ (void)newRemoteEndpointArrayWithRemotePort:remoteSSRC:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)networkAddressFromEndpoint:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  free(a1);
}

+ (void)networkAddressFromEndpoint:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 491;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to copy endpoint address", &v6, 0x1Cu);
    }
  }

  *a2 = a1;
}

+ (void)networkAddressFromEndpoint:(void *)a1 .cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

@end