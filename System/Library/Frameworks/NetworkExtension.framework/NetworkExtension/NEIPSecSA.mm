@interface NEIPSecSA
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDictionary;
- (id)initInboundSA;
- (id)initInboundSAWithSPI:(unsigned int)i;
- (id)initOutboundSAWithSPI:(unsigned int)i;
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
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "Invalidate %@", &v5, 0xCu);
  }

  [(NEIPSecSA *)self setEncryptionKey:0];
  [(NEIPSecSA *)self setAuthenticationKey:0];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  direction = [(NEIPSecSA *)self direction];
  v6 = [NEIPSecSA allocWithZone:zone];
  v7 = [(NEIPSecSA *)self spi];
  if (direction == 1)
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
  localAddress = [(NEIPSecSA *)self localAddress];
  [v9 setLocalAddress:localAddress];

  remoteAddress = [(NEIPSecSA *)self remoteAddress];
  [v9 setRemoteAddress:remoteAddress];

  boundInterfaceName = [(NEIPSecSA *)self boundInterfaceName];
  v14 = [boundInterfaceName copyWithZone:zone];
  [v9 setBoundInterfaceName:v14];

  tunnelInterfaceName = [(NEIPSecSA *)self tunnelInterfaceName];
  v16 = [tunnelInterfaceName copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = objc_msgSend(equalCopy, "spi"), v5 == -[NEIPSecSA spi](self, "spi")) && (v6 = objc_msgSend(equalCopy, "direction"), v6 == -[NEIPSecSA direction](self, "direction")) && (v7 = objc_msgSend(equalCopy, "mode"), v7 == -[NEIPSecSA mode](self, "mode")))
  {
    protocol = [equalCopy protocol];
    v9 = protocol == [(NEIPSecSA *)self protocol];
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

- (id)initInboundSAWithSPI:(unsigned int)i
{
  v10.receiver = self;
  v10.super_class = NEIPSecSA;
  v4 = [(NEIPSecSA *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_spi = i;
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

- (id)initOutboundSAWithSPI:(unsigned int)i
{
  v10.receiver = self;
  v10.super_class = NEIPSecSA;
  v4 = [(NEIPSecSA *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_spi = i;
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
  if (!self)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([self spi])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{bswap32(objc_msgSend(self, "spi"))}];
    [v2 setObject:v3 forKeyedSubscript:@"SPIValue"];
  }

  localAddress = [self localAddress];

  if (localAddress)
  {
    localAddress2 = [self localAddress];
    hostname = [localAddress2 hostname];
    [v2 setObject:hostname forKeyedSubscript:@"LocalAddress"];

    v7 = MEMORY[0x1E696AD98];
    localAddress3 = [self localAddress];
    port = [localAddress3 port];
    v10 = [v7 numberWithInteger:{objc_msgSend(port, "integerValue")}];
    [v2 setObject:v10 forKeyedSubscript:@"LocalPort"];
  }

  remoteAddress = [self remoteAddress];

  if (remoteAddress)
  {
    remoteAddress2 = [self remoteAddress];
    hostname2 = [remoteAddress2 hostname];
    [v2 setObject:hostname2 forKeyedSubscript:@"RemoteAddress"];

    v14 = MEMORY[0x1E696AD98];
    remoteAddress3 = [self remoteAddress];
    port2 = [remoteAddress3 port];
    v17 = [v14 numberWithInteger:{objc_msgSend(port2, "integerValue")}];
    [v2 setObject:v17 forKeyedSubscript:@"RemotePort"];
  }

  boundInterfaceName = [self boundInterfaceName];

  if (boundInterfaceName)
  {
    boundInterfaceName2 = [self boundInterfaceName];
    [v2 setObject:boundInterfaceName2 forKeyedSubscript:@"OutgoingInterface"];
  }

  tunnelInterfaceName = [self tunnelInterfaceName];

  if (tunnelInterfaceName)
  {
    tunnelInterfaceName2 = [self tunnelInterfaceName];
    [v2 setObject:tunnelInterfaceName2 forKeyedSubscript:@"IPSecInterface"];
  }

  if ([self mode] == 1)
  {
    v22 = @"Transport";
  }

  else
  {
    if ([self mode] != 2)
    {
      goto LABEL_17;
    }

    v22 = @"Tunnel";
  }

  [v2 setObject:v22 forKeyedSubscript:@"Mode"];
LABEL_17:
  if ([self protocol] == 2)
  {
    v23 = @"AH";
  }

  else
  {
    if ([self protocol] != 1)
    {
      goto LABEL_22;
    }

    v23 = @"ESP";
  }

  [v2 setObject:v23 forKeyedSubscript:@"IPSecProtocol"];
LABEL_22:
  if ([self encryptionAlgorithm] == 1)
  {
    v24 = @"NULL";
  }

  else if ([self encryptionAlgorithm] == 2)
  {
    v24 = @"DES";
  }

  else if ([self encryptionAlgorithm] == 3)
  {
    v24 = @"3DES";
  }

  else if ([self encryptionAlgorithm] == 4)
  {
    v24 = @"AES-128";
  }

  else if ([self encryptionAlgorithm] == 5)
  {
    v24 = @"AES-256";
  }

  else if ([self encryptionAlgorithm] == 6)
  {
    v24 = @"AES-128-GCM";
  }

  else if ([self encryptionAlgorithm] == 7)
  {
    v24 = @"AES-256-GCM";
  }

  else if ([self encryptionAlgorithm] == 8)
  {
    v24 = @"ChaCha20-Poly1305";
  }

  else if ([self encryptionAlgorithm] == 9)
  {
    v24 = @"ChaCha20-Poly1305-IIV";
  }

  else if ([self encryptionAlgorithm] == 10)
  {
    v24 = @"AES-128-GCM-IIV";
  }

  else if ([self encryptionAlgorithm] == 11)
  {
    v24 = @"AES-256-GCM-IIV";
  }

  else if ([self encryptionAlgorithm] == 12)
  {
    v24 = @"NULL-With-AES-128-GMAC";
  }

  else
  {
    if ([self encryptionAlgorithm] != 13)
    {
      goto LABEL_49;
    }

    v24 = @"NULL-With-AES-256-GMAC";
  }

  [v2 setObject:v24 forKeyedSubscript:@"EncryptionAlgorithm"];
LABEL_49:
  encryptionKey = [self encryptionKey];
  [v2 setObject:encryptionKey forKeyedSubscript:@"EncryptionKey"];

  if ([self authenticationAlgorithm] == 1)
  {
    v26 = @"MD5-96";
LABEL_59:
    [v2 setObject:v26 forKeyedSubscript:@"AuthAlgorithm"];
    goto LABEL_60;
  }

  if ([self authenticationAlgorithm] == 2)
  {
    v26 = @"SHA1-96";
    goto LABEL_59;
  }

  if ([self authenticationAlgorithm] == 3)
  {
    v26 = @"SHA2-256";
    goto LABEL_59;
  }

  if ([self authenticationAlgorithm] == 4)
  {
    v26 = @"SHA2-384";
    goto LABEL_59;
  }

  if ([self authenticationAlgorithm] == 5)
  {
    v26 = @"SHA2-512";
    goto LABEL_59;
  }

LABEL_60:
  authenticationKey = [self authenticationKey];
  [v2 setObject:authenticationKey forKeyedSubscript:@"AuthKey"];

  if ([self replayWindowSize])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(self, "replayWindowSize")}];
    [v2 setObject:v28 forKeyedSubscript:@"ReplayWindowSize"];
  }

  if ([self lifetimeSeconds])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "lifetimeSeconds")}];
    [v2 setObject:v29 forKeyedSubscript:@"LifeTimeinSeconds"];
  }

  natTraversalEnabled = [self natTraversalEnabled];
  v31 = MEMORY[0x1E695E110];
  v32 = MEMORY[0x1E695E118];
  if (natTraversalEnabled)
  {
    v33 = MEMORY[0x1E695E118];
  }

  else
  {
    v33 = MEMORY[0x1E695E110];
  }

  [v2 setObject:v33 forKeyedSubscript:@"NATTraversal"];
  if ([self natDetectedOnPeer])
  {
    v34 = v32;
  }

  else
  {
    v34 = v31;
  }

  [v2 setObject:v34 forKeyedSubscript:@"NATTDetectedPeer"];
  if ([self natKeepaliveEnabled])
  {
    v35 = v32;
  }

  else
  {
    v35 = v31;
  }

  [v2 setObject:v35 forKeyedSubscript:@"NATTKeepAlive"];
  if ([self natKeepaliveOffloadEnabled])
  {
    v36 = v32;
  }

  else
  {
    v36 = v31;
  }

  [v2 setObject:v36 forKeyedSubscript:@"NATTKeepAliveOffload"];
  if ([self natTraversalPort])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(self, "natTraversalPort")}];
    [v2 setObject:v37 forKeyedSubscript:@"NATTPort"];
  }

  if ([self natTraversalSrcPort])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(self, "natTraversalSrcPort")}];
    [v2 setObject:v38 forKeyedSubscript:@"NATTSourcePort"];
  }

  if ([self natKeepaliveIntervalSeconds])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "natKeepaliveIntervalSeconds")}];
    [v2 setObject:v39 forKeyedSubscript:@"NATTKeepAliveInterval"];
  }

  if ([self natKeepaliveOffloadIntervalSeconds])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "natKeepaliveOffloadIntervalSeconds")}];
    [v2 setObject:v40 forKeyedSubscript:@"NATTKeepAliveOffloadInterval"];
  }

  if ([self sequencePerTrafficClass])
  {
    if ([self sequencePerTrafficClass])
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