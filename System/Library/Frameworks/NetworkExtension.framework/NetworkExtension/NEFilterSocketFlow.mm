@interface NEFilterSocketFlow
+ (void)writeMessageWithControlSocket:(int)socket drop:(uint64_t)drop socketID:(uint64_t)d inboundPassOffset:(uint64_t)offset inboundPeekOffset:(uint64_t)peekOffset outboundPassOffset:(uint64_t)passOffset outboundPeekOffset:(uint64_t)outboundPeekOffset statsReportFrequency:;
- (BOOL)createDataReply:(id)reply controlSocket:(int)socket direction:(int64_t)direction verdict:(id)verdict context:(id)context;
- (BOOL)createNewFlowReply:(id)reply controlSocket:(int)socket verdict:(id)verdict context:(id)context;
- (NEFilterSocketFlow)initWithCoder:(id)coder;
- (NWEndpoint)localEndpoint;
- (NWEndpoint)remoteEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)identifierString;
- (void)encodeWithCoder:(id)coder;
- (void)initWithSocketFamily:(int)family socketType:(int)type socketProtocol:(uint64_t)protocol pid:(uint64_t)pid epid:(uint64_t)epid uuid:(uint64_t)uuid euuid:(uint64_t)euuid socketID:;
- (void)setLocalAddress:(void *)result;
- (void)setRemoteAddress:(void *)result;
- (void)writeXPCMessage:(int)message drop:(uint64_t)drop inboundPassOffset:(uint64_t)offset inboundPeekOffset:(uint64_t)peekOffset outboundPassOffset:(uint64_t)passOffset outboundPeekOffset:(uint64_t)outboundPeekOffset statsReportFrequency:;
@end

@implementation NEFilterSocketFlow

- (BOOL)createDataReply:(id)reply controlSocket:(int)socket direction:(int64_t)direction verdict:(id)verdict context:(id)context
{
  replyCopy = reply;
  v12 = [(NEFilterFlow *)self updateCurrentVerdictFromDataVerdict:verdict direction:direction];
  v14 = replyCopy;
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
      [NEFilterSocketFlow writeMessageWithControlSocket:socket drop:v15 socketID:socketID inboundPassOffset:v28 inboundPeekOffset:v21 outboundPassOffset:v23 outboundPeekOffset:v25 statsReportFrequency:v27];
    }
  }

  return v12;
}

+ (void)writeMessageWithControlSocket:(int)socket drop:(uint64_t)drop socketID:(uint64_t)d inboundPassOffset:(uint64_t)offset inboundPeekOffset:(uint64_t)peekOffset outboundPassOffset:(uint64_t)passOffset outboundPeekOffset:(uint64_t)outboundPeekOffset statsReportFrequency:
{
  v39 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v26 = 0x100000040;
  if (socket)
  {
    v16 = 17;
  }

  else
  {
    v16 = 16;
  }

  v27 = 2;
  v28 = v16;
  dropCopy = drop;
  dCopy = d;
  offsetCopy = offset;
  peekOffsetCopy = peekOffset;
  passOffsetCopy = passOffset;
  v34 = 0;
  objc_opt_self();
  if ((outboundPeekOffset - 1) > 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_1BAA4E7A8[outboundPeekOffset - 1];
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

- (void)writeXPCMessage:(int)message drop:(uint64_t)drop inboundPassOffset:(uint64_t)offset inboundPeekOffset:(uint64_t)peekOffset outboundPassOffset:(uint64_t)passOffset outboundPeekOffset:(uint64_t)outboundPeekOffset statsReportFrequency:
{
  v34 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    Property = objc_getProperty(self, v17, 128, 1);
    v24 = "allow";
    *v25 = 138413570;
    *&v25[4] = Property;
    *&v25[12] = 2080;
    if (message)
    {
      v24 = "drop";
    }

    *&v25[14] = v24;
    v26 = 2048;
    dropCopy = drop;
    v28 = 2048;
    offsetCopy = offset;
    v30 = 2048;
    peekOffsetCopy = peekOffset;
    v32 = 2048;
    passOffsetCopy = passOffset;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ send verdict: %s, in (%lld/%lld), out (%lld/%lld)", v25, 0x3Eu);
  }

  *v25 = 0;
  *&v25[8] = 0;
  uuid_clear(v25);
  [objc_getProperty(self v18];
  xpc_dictionary_set_uuid(v15, "flow-uuid", v25);
  v19 = 3;
  if ((peekOffset & drop) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v19 = 1;
  }

  if (message)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19;
  }

  xpc_dictionary_set_int64(v15, "verdict-value", v20);
  xpc_dictionary_set_uint64(v15, "input-pass-offset", drop);
  xpc_dictionary_set_uint64(v15, "input-peek-offset", offset);
  xpc_dictionary_set_uint64(v15, "output-pass-offset", peekOffset);
  xpc_dictionary_set_uint64(v15, "output-peek-offset", passOffset);
  objc_opt_self();
  v21 = 0;
  if ((outboundPeekOffset - 1) <= 2)
  {
    v21 = dword_1BAA4E7A8[outboundPeekOffset - 1];
  }

  xpc_dictionary_set_uint64(v15, "stats-report-frequency", v21);

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)createNewFlowReply:(id)reply controlSocket:(int)socket verdict:(id)verdict context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  verdictCopy = verdict;
  contextCopy = context;
  if (!verdictCopy)
  {
    verdictCopy = +[NEFilterNewFlowVerdict allowVerdict];
  }

  if (![verdictCopy drop])
  {
    if (self)
    {
      socketID = self->_socketID;
      if (socketID == -1)
      {
        -[NEFilterSocketFlow writeXPCMessage:drop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:statsReportFrequency:](self, replyCopy, 0, [verdictCopy filterInbound] - 1, objc_msgSend(verdictCopy, "peekInboundBytes"), objc_msgSend(verdictCopy, "filterOutbound") - 1, objc_msgSend(verdictCopy, "peekOutboundBytes"), objc_msgSend(verdictCopy, "statisticsReportFrequency"));
        goto LABEL_17;
      }
    }

    else
    {
      socketID = 0;
    }

    +[NEFilterSocketFlow writeMessageWithControlSocket:drop:socketID:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:statsReportFrequency:](NEFilterSocketFlow, socket, 0, socketID, [verdictCopy filterInbound] - 1, objc_msgSend(verdictCopy, "peekInboundBytes"), objc_msgSend(verdictCopy, "filterOutbound") - 1, objc_msgSend(verdictCopy, "peekOutboundBytes"), objc_msgSend(verdictCopy, "statisticsReportFrequency"));
LABEL_17:
    v23 = -[NEFilterAbsoluteVerdict initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:]([NEFilterAbsoluteVerdict alloc], "initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:", 0, [verdictCopy filterInbound] - 1, objc_msgSend(verdictCopy, "peekInboundBytes"), objc_msgSend(verdictCopy, "filterOutbound") - 1, objc_msgSend(verdictCopy, "peekOutboundBytes"));
    v25 = v23;
    if (self)
    {
      objc_setProperty_atomic(self, v24, v23, 112);

      shouldReport = [verdictCopy shouldReport];
      Property = objc_getProperty(self, v27, 112, 1);
    }

    else
    {

      shouldReport = [verdictCopy shouldReport];
      Property = 0;
    }

    [Property setShouldReport:shouldReport];
    statisticsReportFrequency = [verdictCopy statisticsReportFrequency];
    if (self)
    {
      v31 = objc_getProperty(self, v29, 112, 1);
    }

    else
    {
      v31 = 0;
    }

    [v31 setStatisticsReportFrequency:statisticsReportFrequency];
    v22 = [(NEFilterFlow *)self shouldCloseWithVerdict:verdictCopy];
    goto LABEL_22;
  }

  if (self)
  {
    v13 = self->_socketID;
    if (v13 == -1)
    {
      [(NEFilterSocketFlow *)self writeXPCMessage:replyCopy drop:1 inboundPassOffset:0 inboundPeekOffset:0 outboundPassOffset:0 outboundPeekOffset:0 statsReportFrequency:0];
      _principalObject = [contextCopy _principalObject];
      filterConfiguration = [_principalObject filterConfiguration];
      organization = [filterConfiguration organization];

      if (organization)
      {
        filterConfiguration2 = [_principalObject filterConfiguration];
        organization2 = [filterConfiguration2 organization];
        v20 = [organization2 cStringUsingEncoding:4];

        xpc_dictionary_set_string(replyCopy, "organization", v20);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  [NEFilterSocketFlow writeMessageWithControlSocket:socket drop:1 socketID:v13 inboundPassOffset:0 inboundPeekOffset:0 outboundPassOffset:0 outboundPeekOffset:0 statsReportFrequency:0];
LABEL_13:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    identifierString = [(NEFilterSocketFlow *)self identifierString];
    *buf = 138412290;
    v36 = identifierString;
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
    socketID = [v3 initWithFormat:@"%llx", socketID];
    goto LABEL_6;
  }

  v7.receiver = self;
  v7.super_class = NEFilterSocketFlow;
  socketID = [(NEFilterFlow *)&v7 identifierString];
LABEL_6:

  return socketID;
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
      identifier = [(NEFilterFlow *)&v6 identifier];
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

  identifier = objc_getProperty(self, a2, 208, 1);
LABEL_7:

  return identifier;
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
  localFlowEndpoint = [(NEFilterSocketFlow *)self localFlowEndpoint];
  if (localFlowEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    localFlowEndpoint2 = [(NEFilterSocketFlow *)self localFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:localFlowEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NWEndpoint)remoteEndpoint
{
  remoteFlowEndpoint = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
  if (remoteFlowEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    remoteFlowEndpoint2 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:remoteFlowEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NEFilterSocketFlow;
  v4 = [(NEFilterFlow *)&v12 copyWithZone:zone];
  [v4 setSocketFamily:{-[NEFilterSocketFlow socketFamily](self, "socketFamily")}];
  [v4 setSocketType:{-[NEFilterSocketFlow socketType](self, "socketType")}];
  [v4 setSocketProtocol:{-[NEFilterSocketFlow socketProtocol](self, "socketProtocol")}];
  uuid = [(NEFilterSocketFlow *)self uuid];
  [v4 setUuid:uuid];

  euuid = [(NEFilterSocketFlow *)self euuid];
  [v4 setEuuid:euuid];

  localFlowEndpoint = [(NEFilterSocketFlow *)self localFlowEndpoint];
  [v4 setLocalFlowEndpoint:localFlowEndpoint];

  remoteFlowEndpoint = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
  [v4 setRemoteFlowEndpoint:remoteFlowEndpoint];

  remoteHostname = [(NEFilterSocketFlow *)self remoteHostname];
  [v4 setRemoteHostname:remoteHostname];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NEFilterSocketFlow;
  [(NEFilterFlow *)&v17 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[NEFilterSocketFlow socketFamily](self forKey:{"socketFamily"), @"SocketFamily"}];
  [coderCopy encodeInt:-[NEFilterSocketFlow socketType](self forKey:{"socketType"), @"SocketType"}];
  [coderCopy encodeInt:-[NEFilterSocketFlow socketProtocol](self forKey:{"socketProtocol"), @"SocketProtocol"}];
  uuid = [(NEFilterSocketFlow *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"UUID"];

  euuid = [(NEFilterSocketFlow *)self euuid];
  [coderCopy encodeObject:euuid forKey:@"EUUID"];

  localFlowEndpoint = [(NEFilterSocketFlow *)self localFlowEndpoint];

  if (localFlowEndpoint)
  {
    v8 = MEMORY[0x1E6977E20];
    localFlowEndpoint2 = [(NEFilterSocketFlow *)self localFlowEndpoint];
    v10 = [v8 endpointWithCEndpoint:localFlowEndpoint2];
    [coderCopy encodeObject:v10 forKey:@"LocalEndpoint"];
  }

  remoteFlowEndpoint = [(NEFilterSocketFlow *)self remoteFlowEndpoint];

  if (remoteFlowEndpoint)
  {
    v12 = MEMORY[0x1E6977E20];
    remoteFlowEndpoint2 = [(NEFilterSocketFlow *)self remoteFlowEndpoint];
    v14 = [v12 endpointWithCEndpoint:remoteFlowEndpoint2];
    [coderCopy encodeObject:v14 forKey:@"RemoteEndpoint"];
  }

  remoteHostname = [(NEFilterSocketFlow *)self remoteHostname];
  [coderCopy encodeObject:remoteHostname forKey:@"RemoteHostname"];

  if (self)
  {
    socketID = self->_socketID;
  }

  else
  {
    socketID = 0;
  }

  [coderCopy encodeInt64:socketID forKey:@"SocketID"];
}

- (NEFilterSocketFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NEFilterSocketFlow;
  v5 = [(NEFilterFlow *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    -[NEFilterSocketFlow setSocketFamily:](v5, "setSocketFamily:", [coderCopy decodeIntForKey:@"SocketFamily"]);
    -[NEFilterSocketFlow setSocketType:](v5, "setSocketType:", [coderCopy decodeIntForKey:@"SocketType"]);
    -[NEFilterSocketFlow setSocketProtocol:](v5, "setSocketProtocol:", [coderCopy decodeIntForKey:@"SocketProtocol"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [(NEFilterSocketFlow *)v5 setUuid:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EUUID"];
    [(NEFilterSocketFlow *)v5 setEuuid:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalEndpoint"];
    copyCEndpoint = [v8 copyCEndpoint];
    [(NEFilterSocketFlow *)v5 setLocalFlowEndpoint:copyCEndpoint];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteEndpoint"];
    copyCEndpoint2 = [v10 copyCEndpoint];
    [(NEFilterSocketFlow *)v5 setRemoteFlowEndpoint:copyCEndpoint2];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteHostname"];
    [(NEFilterSocketFlow *)v5 setRemoteHostname:v12];

    v5->_socketID = [coderCopy decodeInt64ForKey:@"SocketID"];
  }

  return v5;
}

- (void)initWithSocketFamily:(int)family socketType:(int)type socketProtocol:(uint64_t)protocol pid:(uint64_t)pid epid:(uint64_t)epid uuid:(uint64_t)uuid euuid:(uint64_t)euuid socketID:
{
  if (!self)
  {
    return 0;
  }

  v21.receiver = self;
  v21.super_class = NEFilterSocketFlow;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  v17 = v16;
  if (v16)
  {
    *(v16 + 40) = a2;
    *(v16 + 41) = family;
    *(v16 + 42) = type;
    *(v16 + 25) = euuid;
    [v16 setPid:protocol];
    [v17 setEpid:pid];
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:epid];
    [v17 setUuid:v18];

    v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
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