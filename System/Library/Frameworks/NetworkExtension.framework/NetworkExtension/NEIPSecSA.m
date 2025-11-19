@interface NEIPSecSA
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createDictionary;
- (id)initInboundSA;
- (id)initInboundSAWithSPI:(unsigned int)a3;
- (id)initOutboundSAWithSPI:(unsigned int)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NEIPSecSA

- (void)dealloc
{
  [(NEIPSecSA *)self invalidate];
  v3.receiver = self;
  v3.super_class = NEIPSecSA;
  [(NEIPSecSA *)&v3 dealloc];
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "Invalidate %@", &v5, 0xCu);
  }

  [(NEIPSecSA *)self setEncryptionKey:0];
  [(NEIPSecSA *)self setAuthenticationKey:0];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(NEIPSecSA *)self direction];
  v6 = [NEIPSecSA allocWithZone:a3];
  v7 = [(NEIPSecSA *)self spi];
  if (v5 == 1)
  {
    v8 = [(NEIPSecSA *)v6 initOutboundSAWithSPI:v7];
  }

  else
  {
    v8 = [(NEIPSecSA *)v6 initInboundSAWithSPI:v7];
  }

  v9 = v8;
  if (!self)
  {
    internalSAID = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    [(NEIPSecSA *)self spi];
    goto LABEL_7;
  }

  internalSAID = self->_internalSAID;
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 48) = internalSAID;
  *(v8 + 20) = [(NEIPSecSA *)self spi];
LABEL_7:
  [v9 setMode:{-[NEIPSecSA mode](self, "mode")}];
  [v9 setProtocol:{-[NEIPSecSA protocol](self, "protocol")}];
  v11 = [(NEIPSecSA *)self localAddress];
  [v9 setLocalAddress:v11];

  v12 = [(NEIPSecSA *)self remoteAddress];
  [v9 setRemoteAddress:v12];

  v13 = [(NEIPSecSA *)self boundInterfaceName];
  v14 = [v13 copyWithZone:a3];
  [v9 setBoundInterfaceName:v14];

  v15 = [(NEIPSecSA *)self tunnelInterfaceName];
  v16 = [v15 copyWithZone:a3];
  [v9 setTunnelInterfaceName:v16];

  [v9 setReplayWindowSize:{-[NEIPSecSA replayWindowSize](self, "replayWindowSize")}];
  [v9 setLifetimeSeconds:{-[NEIPSecSA lifetimeSeconds](self, "lifetimeSeconds")}];
  [v9 setEncryptionAlgorithm:{-[NEIPSecSA encryptionAlgorithm](self, "encryptionAlgorithm")}];
  [v9 setAuthenticationAlgorithm:{-[NEIPSecSA authenticationAlgorithm](self, "authenticationAlgorithm")}];
  [v9 setNatTraversalEnabled:{-[NEIPSecSA natTraversalEnabled](self, "natTraversalEnabled")}];
  [v9 setNatDetectedOnPeer:{-[NEIPSecSA natDetectedOnPeer](self, "natDetectedOnPeer")}];
  [v9 setNatKeepaliveEnabled:{-[NEIPSecSA natKeepaliveEnabled](self, "natKeepaliveEnabled")}];
  [v9 setNatKeepaliveOffloadEnabled:{-[NEIPSecSA natKeepaliveOffloadEnabled](self, "natKeepaliveOffloadEnabled")}];
  [v9 setNatKeepaliveIntervalSeconds:{-[NEIPSecSA natKeepaliveIntervalSeconds](self, "natKeepaliveIntervalSeconds")}];
  [v9 setNatKeepaliveOffloadIntervalSeconds:{-[NEIPSecSA natKeepaliveOffloadIntervalSeconds](self, "natKeepaliveOffloadIntervalSeconds")}];
  [v9 setNatTraversalPort:{-[NEIPSecSA natTraversalPort](self, "natTraversalPort")}];
  [v9 setNatTraversalSrcPort:{-[NEIPSecSA natTraversalSrcPort](self, "natTraversalSrcPort")}];
  [v9 setSequencePerTrafficClass:{-[NEIPSecSA sequencePerTrafficClass](self, "sequencePerTrafficClass")}];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = objc_msgSend(v4, "spi"), v5 == -[NEIPSecSA spi](self, "spi")) && (v6 = objc_msgSend(v4, "direction"), v6 == -[NEIPSecSA direction](self, "direction")) && (v7 = objc_msgSend(v4, "mode"), v7 == -[NEIPSecSA mode](self, "mode")))
  {
    v8 = [v4 protocol];
    v9 = v8 == [(NEIPSecSA *)self protocol];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)initInboundSA
{
  v8.receiver = self;
  v8.super_class = NEIPSecSA;
  v2 = [(NEIPSecSA *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_direction = 2;
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (id)initInboundSAWithSPI:(unsigned int)a3
{
  v10.receiver = self;
  v10.super_class = NEIPSecSA;
  v4 = [(NEIPSecSA *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_spi = a3;
    v4->_direction = 2;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

- (id)initOutboundSAWithSPI:(unsigned int)a3
{
  v10.receiver = self;
  v10.super_class = NEIPSecSA;
  v4 = [(NEIPSecSA *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_spi = a3;
    v4->_direction = 1;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

- (id)createDictionary
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1 spi])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{bswap32(objc_msgSend(a1, "spi"))}];
    [v2 setObject:v3 forKeyedSubscript:@"SPIValue"];
  }

  v4 = [a1 localAddress];

  if (v4)
  {
    v5 = [a1 localAddress];
    v6 = [v5 hostname];
    [v2 setObject:v6 forKeyedSubscript:@"LocalAddress"];

    v7 = MEMORY[0x1E696AD98];
    v8 = [a1 localAddress];
    v9 = [v8 port];
    v10 = [v7 numberWithInteger:{objc_msgSend(v9, "integerValue")}];
    [v2 setObject:v10 forKeyedSubscript:@"LocalPort"];
  }

  v11 = [a1 remoteAddress];

  if (v11)
  {
    v12 = [a1 remoteAddress];
    v13 = [v12 hostname];
    [v2 setObject:v13 forKeyedSubscript:@"RemoteAddress"];

    v14 = MEMORY[0x1E696AD98];
    v15 = [a1 remoteAddress];
    v16 = [v15 port];
    v17 = [v14 numberWithInteger:{objc_msgSend(v16, "integerValue")}];
    [v2 setObject:v17 forKeyedSubscript:@"RemotePort"];
  }

  v18 = [a1 boundInterfaceName];

  if (v18)
  {
    v19 = [a1 boundInterfaceName];
    [v2 setObject:v19 forKeyedSubscript:@"OutgoingInterface"];
  }

  v20 = [a1 tunnelInterfaceName];

  if (v20)
  {
    v21 = [a1 tunnelInterfaceName];
    [v2 setObject:v21 forKeyedSubscript:@"IPSecInterface"];
  }

  if ([a1 mode] == 1)
  {
    v22 = @"Transport";
  }

  else
  {
    if ([a1 mode] != 2)
    {
      goto LABEL_17;
    }

    v22 = @"Tunnel";
  }

  [v2 setObject:v22 forKeyedSubscript:@"Mode"];
LABEL_17:
  if ([a1 protocol] == 2)
  {
    v23 = @"AH";
  }

  else
  {
    if ([a1 protocol] != 1)
    {
      goto LABEL_22;
    }

    v23 = @"ESP";
  }

  [v2 setObject:v23 forKeyedSubscript:@"IPSecProtocol"];
LABEL_22:
  if ([a1 encryptionAlgorithm] == 1)
  {
    v24 = @"NULL";
  }

  else if ([a1 encryptionAlgorithm] == 2)
  {
    v24 = @"DES";
  }

  else if ([a1 encryptionAlgorithm] == 3)
  {
    v24 = @"3DES";
  }

  else if ([a1 encryptionAlgorithm] == 4)
  {
    v24 = @"AES-128";
  }

  else if ([a1 encryptionAlgorithm] == 5)
  {
    v24 = @"AES-256";
  }

  else if ([a1 encryptionAlgorithm] == 6)
  {
    v24 = @"AES-128-GCM";
  }

  else if ([a1 encryptionAlgorithm] == 7)
  {
    v24 = @"AES-256-GCM";
  }

  else if ([a1 encryptionAlgorithm] == 8)
  {
    v24 = @"ChaCha20-Poly1305";
  }

  else if ([a1 encryptionAlgorithm] == 9)
  {
    v24 = @"ChaCha20-Poly1305-IIV";
  }

  else if ([a1 encryptionAlgorithm] == 10)
  {
    v24 = @"AES-128-GCM-IIV";
  }

  else if ([a1 encryptionAlgorithm] == 11)
  {
    v24 = @"AES-256-GCM-IIV";
  }

  else if ([a1 encryptionAlgorithm] == 12)
  {
    v24 = @"NULL-With-AES-128-GMAC";
  }

  else
  {
    if ([a1 encryptionAlgorithm] != 13)
    {
      goto LABEL_49;
    }

    v24 = @"NULL-With-AES-256-GMAC";
  }

  [v2 setObject:v24 forKeyedSubscript:@"EncryptionAlgorithm"];
LABEL_49:
  v25 = [a1 encryptionKey];
  [v2 setObject:v25 forKeyedSubscript:@"EncryptionKey"];

  if ([a1 authenticationAlgorithm] == 1)
  {
    v26 = @"MD5-96";
LABEL_59:
    [v2 setObject:v26 forKeyedSubscript:@"AuthAlgorithm"];
    goto LABEL_60;
  }

  if ([a1 authenticationAlgorithm] == 2)
  {
    v26 = @"SHA1-96";
    goto LABEL_59;
  }

  if ([a1 authenticationAlgorithm] == 3)
  {
    v26 = @"SHA2-256";
    goto LABEL_59;
  }

  if ([a1 authenticationAlgorithm] == 4)
  {
    v26 = @"SHA2-384";
    goto LABEL_59;
  }

  if ([a1 authenticationAlgorithm] == 5)
  {
    v26 = @"SHA2-512";
    goto LABEL_59;
  }

LABEL_60:
  v27 = [a1 authenticationKey];
  [v2 setObject:v27 forKeyedSubscript:@"AuthKey"];

  if ([a1 replayWindowSize])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a1, "replayWindowSize")}];
    [v2 setObject:v28 forKeyedSubscript:@"ReplayWindowSize"];
  }

  if ([a1 lifetimeSeconds])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "lifetimeSeconds")}];
    [v2 setObject:v29 forKeyedSubscript:@"LifeTimeinSeconds"];
  }

  v30 = [a1 natTraversalEnabled];
  v31 = MEMORY[0x1E695E110];
  v32 = MEMORY[0x1E695E118];
  if (v30)
  {
    v33 = MEMORY[0x1E695E118];
  }

  else
  {
    v33 = MEMORY[0x1E695E110];
  }

  [v2 setObject:v33 forKeyedSubscript:@"NATTraversal"];
  if ([a1 natDetectedOnPeer])
  {
    v34 = v32;
  }

  else
  {
    v34 = v31;
  }

  [v2 setObject:v34 forKeyedSubscript:@"NATTDetectedPeer"];
  if ([a1 natKeepaliveEnabled])
  {
    v35 = v32;
  }

  else
  {
    v35 = v31;
  }

  [v2 setObject:v35 forKeyedSubscript:@"NATTKeepAlive"];
  if ([a1 natKeepaliveOffloadEnabled])
  {
    v36 = v32;
  }

  else
  {
    v36 = v31;
  }

  [v2 setObject:v36 forKeyedSubscript:@"NATTKeepAliveOffload"];
  if ([a1 natTraversalPort])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(a1, "natTraversalPort")}];
    [v2 setObject:v37 forKeyedSubscript:@"NATTPort"];
  }

  if ([a1 natTraversalSrcPort])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(a1, "natTraversalSrcPort")}];
    [v2 setObject:v38 forKeyedSubscript:@"NATTSourcePort"];
  }

  if ([a1 natKeepaliveIntervalSeconds])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "natKeepaliveIntervalSeconds")}];
    [v2 setObject:v39 forKeyedSubscript:@"NATTKeepAliveInterval"];
  }

  if ([a1 natKeepaliveOffloadIntervalSeconds])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "natKeepaliveOffloadIntervalSeconds")}];
    [v2 setObject:v40 forKeyedSubscript:@"NATTKeepAliveOffloadInterval"];
  }

  if ([a1 sequencePerTrafficClass])
  {
    if ([a1 sequencePerTrafficClass])
    {
      v41 = v32;
    }

    else
    {
      v41 = v31;
    }

    [v2 setObject:v41 forKeyedSubscript:@"sequencePerTrafficClass"];
  }

  return v2;
}

@end