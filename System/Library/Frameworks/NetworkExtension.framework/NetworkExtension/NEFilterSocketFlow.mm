@interface NEFilterSocketFlow
+ (void)writeMessageWithControlSocket:(int)a3 drop:(uint64_t)a4 socketID:(uint64_t)a5 inboundPassOffset:(uint64_t)a6 inboundPeekOffset:(uint64_t)a7 outboundPassOffset:(uint64_t)a8 outboundPeekOffset:(uint64_t)a9 statsReportFrequency:;
- (BOOL)createDataReply:(id)a3 controlSocket:(int)a4 direction:(int64_t)a5 verdict:(id)a6 context:(id)a7;
- (BOOL)createNewFlowReply:(id)a3 controlSocket:(int)a4 verdict:(id)a5 context:(id)a6;
- (NEFilterSocketFlow)initWithCoder:(id)a3;
- (NWEndpoint)localEndpoint;
- (NWEndpoint)remoteEndpoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (id)identifierString;
- (void)encodeWithCoder:(id)a3;
- (void)initWithSocketFamily:(int)a3 socketType:(int)a4 socketProtocol:(uint64_t)a5 pid:(uint64_t)a6 epid:(uint64_t)a7 uuid:(uint64_t)a8 euuid:(uint64_t)a9 socketID:;
- (void)setLocalAddress:(void *)result;
- (void)setRemoteAddress:(void *)result;
- (void)writeXPCMessage:(int)a3 drop:(uint64_t)a4 inboundPassOffset:(uint64_t)a5 inboundPeekOffset:(uint64_t)a6 outboundPassOffset:(uint64_t)a7 outboundPeekOffset:(uint64_t)a8 statsReportFrequency:;
@end

@implementation NEFilterSocketFlow

- (BOOL)createDataReply:(id)a3 controlSocket:(int)a4 direction:(int64_t)a5 verdict:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = [(NEFilterFlow *)self updateCurrentVerdictFromDataVerdict:a6 direction:a5];
  v14 = v11;
  if (self)
  {
    if (self->_socketID == -1)
    {
      v29 = [objc_getProperty(self v13];
      v31 = [objc_getProperty(self v30];
      v33 = [objc_getProperty(self v32];
      v35 = [objc_getProperty(self v34];
      v37 = [objc_getProperty(self v36];
      v39 = [objc_getProperty(self v38];
      [(NEFilterSocketFlow *)self writeXPCMessage:v14 drop:v29 inboundPassOffset:v31 inboundPeekOffset:v33 outboundPassOffset:v35 outboundPeekOffset:v37 statsReportFrequency:v39];
    }

    else
    {
      v15 = [objc_getProperty(self v13];
      socketID = self->_socketID;
      v18 = v12;
      v19 = [objc_getProperty(self v17];
      v21 = [objc_getProperty(self v20];
      v23 = [objc_getProperty(self v22];
      v25 = [objc_getProperty(self v24];
      v27 = [objc_getProperty(self v26];
      v28 = v19;
      v12 = v18;
      [NEFilterSocketFlow writeMessageWithControlSocket:a4 drop:v15 socketID:socketID inboundPassOffset:v28 inboundPeekOffset:v21 outboundPassOffset:v23 outboundPeekOffset:v25 statsReportFrequency:v27];
    }
  }

  return v12;
}

+ (void)writeMessageWithControlSocket:(int)a3 drop:(uint64_t)a4 socketID:(uint64_t)a5 inboundPassOffset:(uint64_t)a6 inboundPeekOffset:(uint64_t)a7 outboundPassOffset:(uint64_t)a8 outboundPeekOffset:(uint64_t)a9 statsReportFrequency:
{
  v39 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v26 = 0x100000040;
  if (a3)
  {
    v16 = 17;
  }

  else
  {
    v16 = 16;
  }

  v27 = 2;
  v28 = v16;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = 0;
  objc_opt_self();
  if ((a9 - 1) > 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1BAA4E7A8[a9 - 1];
  }

  v18 = 0;
  LODWORD(v34) = v17;
  while (1)
  {
    v19 = write(a2, &v26 + v18, 64 - v18);
    if (v19 < 1)
    {
      break;
    }

    v18 += v19;
LABEL_13:
    if (v18 > 0x3F)
    {
      goto LABEL_14;
    }
  }

  if ((v19 & 0x8000000000000000) == 0 || *__error() == 35)
  {
    goto LABEL_13;
  }

  v21 = *__error();
  v22 = ne_log_obj();
  v23 = v22;
  if (v21 == 22)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v36 = v28;
      _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "Sent a %d message for a non-existent socket", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v24 = v28;
    v25 = strerror(v21);
    *buf = 67109378;
    v36 = v24;
    v37 = 2080;
    v38 = v25;
    _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Write operation on the control socket failed while sending a %d message (%s)", buf, 0x12u);
  }

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)writeXPCMessage:(int)a3 drop:(uint64_t)a4 inboundPassOffset:(uint64_t)a5 inboundPeekOffset:(uint64_t)a6 outboundPassOffset:(uint64_t)a7 outboundPeekOffset:(uint64_t)a8 statsReportFrequency:
{
  v34 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    Property = objc_getProperty(a1, v17, 128, 1);
    v24 = "allow";
    *v25 = 138413570;
    *&v25[4] = Property;
    *&v25[12] = 2080;
    if (a3)
    {
      v24 = "drop";
    }

    *&v25[14] = v24;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a6;
    v32 = 2048;
    v33 = a7;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ send verdict: %s, in (%lld/%lld), out (%lld/%lld)", v25, 0x3Eu);
  }

  *v25 = 0;
  *&v25[8] = 0;
  uuid_clear(v25);
  [objc_getProperty(a1 v18];
  xpc_dictionary_set_uuid(v15, "flow-uuid", v25);
  v19 = 3;
  if ((a6 & a4) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v19 = 1;
  }

  if (a3)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19;
  }

  xpc_dictionary_set_int64(v15, "verdict-value", v20);
  xpc_dictionary_set_uint64(v15, "input-pass-offset", a4);
  xpc_dictionary_set_uint64(v15, "input-peek-offset", a5);
  xpc_dictionary_set_uint64(v15, "output-pass-offset", a6);
  xpc_dictionary_set_uint64(v15, "output-peek-offset", a7);
  objc_opt_self();
  v21 = 0;
  if ((a8 - 1) <= 2)
  {
    v21 = dword_1BAA4E7A8[a8 - 1];
  }

  xpc_dictionary_set_uint64(v15, "stats-report-frequency", v21);

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)createNewFlowReply:(id)a3 controlSocket:(int)a4 verdict:(id)a5 context:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = +[NEFilterNewFlowVerdict allowVerdict];
  }

  if (![v11 drop])
  {
    if (self)
    {
      socketID = self->_socketID;
      if (socketID == -1)
      {
        -[NEFilterSocketFlow writeXPCMessage:drop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:statsReportFrequency:](self, v10, 0, [v11 filterInbound] - 1, objc_msgSend(v11, "peekInboundBytes"), objc_msgSend(v11, "filterOutbound") - 1, objc_msgSend(v11, "peekOutboundBytes"), objc_msgSend(v11, "statisticsReportFrequency"));
        goto LABEL_17;
      }
    }

    else
    {
      socketID = 0;
    }

    +[NEFilterSocketFlow writeMessageWithControlSocket:drop:socketID:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:statsReportFrequency:](NEFilterSocketFlow, a4, 0, socketID, [v11 filterInbound] - 1, objc_msgSend(v11, "peekInboundBytes"), objc_msgSend(v11, "filterOutbound") - 1, objc_msgSend(v11, "peekOutboundBytes"), objc_msgSend(v11, "statisticsReportFrequency"));
LABEL_17:
    v23 = -[NEFilterAbsoluteVerdict initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:]([NEFilterAbsoluteVerdict alloc], "initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:", 0, [v11 filterInbound] - 1, objc_msgSend(v11, "peekInboundBytes"), objc_msgSend(v11, "filterOutbound") - 1, objc_msgSend(v11, "peekOutboundBytes"));
    v25 = v23;
    if (self)
    {
      objc_setProperty_atomic(self, v24, v23, 112);

      v26 = [v11 shouldReport];
      Property = objc_getProperty(self, v27, 112, 1);
    }

    else
    {

      v26 = [v11 shouldReport];
      Property = 0;
    }

    [Property setShouldReport:v26];
    v30 = [v11 statisticsReportFrequency];
    if (self)
    {
      v31 = objc_getProperty(self, v29, 112, 1);
    }

    else
    {
      v31 = 0;
    }

    [v31 setStatisticsReportFrequency:v30];
    v22 = [(NEFilterFlow *)self shouldCloseWithVerdict:v11];
    goto LABEL_22;
  }

  if (self)
  {
    v13 = self->_socketID;
    if (v13 == -1)
    {
      [(NEFilterSocketFlow *)self writeXPCMessage:v10 drop:1 inboundPassOffset:0 inboundPeekOffset:0 outboundPassOffset:0 outboundPeekOffset:0 statsReportFrequency:0];
      v15 = [v12 _principalObject];
      v16 = [v15 filterConfiguration];
      v17 = [v16 organization];

      if (v17)
      {
        v18 = [v15 filterConfiguration];
        v19 = [v18 organization];
        v20 = [v19 cStringUsingEncoding:4];

        xpc_dictionary_set_string(v10, "organization", v20);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  [NEFilterSocketFlow writeMessageWithControlSocket:a4 drop:1 socketID:v13 inboundPassOffset:0 inboundPeekOffset:0 outboundPassOffset:0 outboundPeekOffset:0 statsReportFrequency:0];
LABEL_13:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v34 = [(NEFilterSocketFlow *)self identifierString];
    *buf = 138412290;
    v36 = v34;
    _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "Dropping new flow %@", buf, 0xCu);
  }

  v22 = 1;
LABEL_22:

  v32 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)identifierString
{
  if (!self)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    socketID = 0;
    goto LABEL_4;
  }

  if (self->_socketID != -1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    socketID = self->_socketID;
LABEL_4:
    v5 = [v3 initWithFormat:@"%llx", socketID];
    goto LABEL_6;
  }

  v7.receiver = self;
  v7.super_class = NEFilterSocketFlow;
  v5 = [(NEFilterFlow *)&v7 identifierString];
LABEL_6:

  return v5;
}

- (id)identifier
{
  if (self)
  {
    socketID = self->_socketID;
    if (socketID == -1)
    {
      v6.receiver = self;
      v6.super_class = NEFilterSocketFlow;
      v4 = [(NEFilterFlow *)&v6 identifier];
      goto LABEL_7;
    }
  }

  else
  {
    socketID = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NEFilterSocketFlow_identifier__block_invoke;
  block[3] = &unk_1E7F08808;
  block[4] = self;
  block[5] = socketID;
  if (self->_generateIdentifierOnce != -1)
  {
    dispatch_once(&self->_generateIdentifierOnce, block);
  }

  v4 = objc_getProperty(self, a2, 208, 1);
LABEL_7:

  return v4;
}

void __32__NEFilterSocketFlow_identifier__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, "؛[]y<I@");
  *&dst[8] = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:dst];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;

  v5 = *MEMORY[0x1E69E9840];
}

- (NWEndpoint)localEndpoint
{
  v3 = [(NEFilterSocketFlow *)self localFlowEndpoint];
  if (v3)
  {
    v4 = MEMORY[0x1E6977E20];
    v5 = [(NEFilterSocketFlow *)self localFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NWEndpoint)remoteEndpoint
{
  v3 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
  if (v3)
  {
    v4 = MEMORY[0x1E6977E20];
    v5 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = NEFilterSocketFlow;
  v4 = [(NEFilterFlow *)&v12 copyWithZone:a3];
  [v4 setSocketFamily:{-[NEFilterSocketFlow socketFamily](self, "socketFamily")}];
  [v4 setSocketType:{-[NEFilterSocketFlow socketType](self, "socketType")}];
  [v4 setSocketProtocol:{-[NEFilterSocketFlow socketProtocol](self, "socketProtocol")}];
  v5 = [(NEFilterSocketFlow *)self uuid];
  [v4 setUuid:v5];

  v6 = [(NEFilterSocketFlow *)self euuid];
  [v4 setEuuid:v6];

  v7 = [(NEFilterSocketFlow *)self localFlowEndpoint];
  [v4 setLocalFlowEndpoint:v7];

  v8 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
  [v4 setRemoteFlowEndpoint:v8];

  v9 = [(NEFilterSocketFlow *)self remoteHostname];
  [v4 setRemoteHostname:v9];

  if (!self)
  {
    socketID = 0;
    if (!v4)
    {
      return v4;
    }

    goto LABEL_3;
  }

  socketID = self->_socketID;
  if (v4)
  {
LABEL_3:
    v4[25] = socketID;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NEFilterSocketFlow;
  [(NEFilterFlow *)&v17 encodeWithCoder:v4];
  [v4 encodeInt:-[NEFilterSocketFlow socketFamily](self forKey:{"socketFamily"), @"SocketFamily"}];
  [v4 encodeInt:-[NEFilterSocketFlow socketType](self forKey:{"socketType"), @"SocketType"}];
  [v4 encodeInt:-[NEFilterSocketFlow socketProtocol](self forKey:{"socketProtocol"), @"SocketProtocol"}];
  v5 = [(NEFilterSocketFlow *)self uuid];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [(NEFilterSocketFlow *)self euuid];
  [v4 encodeObject:v6 forKey:@"EUUID"];

  v7 = [(NEFilterSocketFlow *)self localFlowEndpoint];

  if (v7)
  {
    v8 = MEMORY[0x1E6977E20];
    v9 = [(NEFilterSocketFlow *)self localFlowEndpoint];
    v10 = [v8 endpointWithCEndpoint:v9];
    [v4 encodeObject:v10 forKey:@"LocalEndpoint"];
  }

  v11 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];

  if (v11)
  {
    v12 = MEMORY[0x1E6977E20];
    v13 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
    v14 = [v12 endpointWithCEndpoint:v13];
    [v4 encodeObject:v14 forKey:@"RemoteEndpoint"];
  }

  v15 = [(NEFilterSocketFlow *)self remoteHostname];
  [v4 encodeObject:v15 forKey:@"RemoteHostname"];

  if (self)
  {
    socketID = self->_socketID;
  }

  else
  {
    socketID = 0;
  }

  [v4 encodeInt64:socketID forKey:@"SocketID"];
}

- (NEFilterSocketFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NEFilterSocketFlow;
  v5 = [(NEFilterFlow *)&v14 initWithCoder:v4];
  if (v5)
  {
    -[NEFilterSocketFlow setSocketFamily:](v5, "setSocketFamily:", [v4 decodeIntForKey:@"SocketFamily"]);
    -[NEFilterSocketFlow setSocketType:](v5, "setSocketType:", [v4 decodeIntForKey:@"SocketType"]);
    -[NEFilterSocketFlow setSocketProtocol:](v5, "setSocketProtocol:", [v4 decodeIntForKey:@"SocketProtocol"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [(NEFilterSocketFlow *)v5 setUuid:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EUUID"];
    [(NEFilterSocketFlow *)v5 setEuuid:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalEndpoint"];
    v9 = [v8 copyCEndpoint];
    [(NEFilterSocketFlow *)v5 setLocalFlowEndpoint:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteEndpoint"];
    v11 = [v10 copyCEndpoint];
    [(NEFilterSocketFlow *)v5 setRemoteFlowEndpoint:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteHostname"];
    [(NEFilterSocketFlow *)v5 setRemoteHostname:v12];

    v5->_socketID = [v4 decodeInt64ForKey:@"SocketID"];
  }

  return v5;
}

- (void)initWithSocketFamily:(int)a3 socketType:(int)a4 socketProtocol:(uint64_t)a5 pid:(uint64_t)a6 epid:(uint64_t)a7 uuid:(uint64_t)a8 euuid:(uint64_t)a9 socketID:
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
  v21.super_class = NEFilterSocketFlow;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  v17 = v16;
  if (v16)
  {
    *(v16 + 40) = a2;
    *(v16 + 41) = a3;
    *(v16 + 42) = a4;
    *(v16 + 25) = a9;
    [v16 setPid:a5];
    [v17 setEpid:a6];
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a7];
    [v17 setUuid:v18];

    v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a8];
    [v17 setEuuid:v19];
  }

  return v17;
}

- (void)setRemoteAddress:(void *)result
{
  if (address)
  {
    sa_family = address->sa_family;
    if (sa_family == 30 || sa_family == 2)
    {
      v5 = result;
      v6 = nw_endpoint_create_address(address);
      if (v6)
      {
        [v5 setRemoteFlowEndpoint:v6];
      }

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

- (void)setLocalAddress:(void *)result
{
  if (address)
  {
    sa_family = address->sa_family;
    if (sa_family == 30 || sa_family == 2)
    {
      v5 = result;
      v6 = nw_endpoint_create_address(address);
      if (v6)
      {
        [v5 setLocalFlowEndpoint:v6];
      }

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

@end