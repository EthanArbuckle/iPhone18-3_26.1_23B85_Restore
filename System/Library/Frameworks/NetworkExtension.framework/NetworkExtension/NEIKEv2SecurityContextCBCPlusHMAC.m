@interface NEIKEv2SecurityContextCBCPlusHMAC
+ (uint64_t)fixedOverheadForEncryptionProtocol:(void *)a3 integrityProtocol:;
+ (uint64_t)overheadForPlaintextLength:(void *)a3 encryptionProtocol:(void *)a4 integrityProtocol:;
+ (uint64_t)paddingLengthForPlaintextLength:(void *)a3 encryptionProtocol:;
- (BOOL)checkIncomingHMACForPayloadData:(void *)a3 authenticatedHeaders:;
- (id)constructEncryptedPacketFromConstructor:(id)a3 plaintextLength:(unsigned int)a4 authenticatedHeaders:(id)a5;
- (id)decryptPayloadData:(id)a3 authenticatedHeaders:(id)a4;
- (uint64_t)fixedOverheadLength;
- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)a3;
- (unsigned)overheadForPlaintextLength:(unsigned int)a3;
- (void)dealloc;
@end

@implementation NEIKEv2SecurityContextCBCPlusHMAC

- (id)decryptPayloadData:(id)a3 authenticatedHeaders:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *v36 = "[NEIKEv2SecurityContextCBCPlusHMAC decryptPayloadData:authenticatedHeaders:]";
    v29 = "%s called with null payloadData";
LABEL_29:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v29, buf, 0xCu);
    goto LABEL_11;
  }

  if (!v7)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *v36 = "[NEIKEv2SecurityContextCBCPlusHMAC decryptPayloadData:authenticatedHeaders:]";
    v29 = "%s called with null authenticatedHeaders";
    goto LABEL_29;
  }

  if (self)
  {
    v9 = [(NEIKEv2EncryptionProtocol *)self->_encryptionProtocol ivLength];
    integrityProtocol = self->_integrityProtocol;
  }

  else
  {
    v9 = [(NEIKEv2EncryptionProtocol *)0 ivLength];
    integrityProtocol = 0;
  }

  v11 = [(NEIKEv2IntegrityProtocol *)integrityProtocol macLength];
  v12 = [v6 length];
  v13 = v12;
  if (self)
  {
    if (self->super._minimumEncryptedPayloadSize > v12)
    {
      v16 = ne_log_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 67109120;
      *v36 = v13;
      v26 = "Cannot decrypt, encrypted data length %u too short";
      v27 = v16;
      v28 = 8;
      goto LABEL_24;
    }

    if ([(NEIKEv2SecurityContextCBCPlusHMAC *)self checkIncomingHMACForPayloadData:v6 authenticatedHeaders:v8])
    {
      encryptionProtocol = self->_encryptionProtocol;
      goto LABEL_9;
    }

LABEL_40:
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v26 = "Integrity check failure";
    v27 = v16;
    v28 = 2;
    goto LABEL_24;
  }

  v32 = [(NEIKEv2SecurityContextCBCPlusHMAC *)0 checkIncomingHMACForPayloadData:v6 authenticatedHeaders:v8];
  encryptionProtocol = 0;
  if (!v32)
  {
    goto LABEL_40;
  }

LABEL_9:
  v15 = v13 - (v11 + v9);
  if (v15 % [(NEIKEv2EncryptionProtocol *)encryptionProtocol blockLength])
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    if (self)
    {
      v25 = self->_encryptionProtocol;
    }

    else
    {
      v25 = 0;
    }

    *buf = 67109376;
    *v36 = v15;
    *&v36[4] = 1024;
    *&v36[6] = [(NEIKEv2EncryptionProtocol *)v25 blockLength];
    v26 = "Ciphertext length %u is not a multiple of the cipher block length %u";
    v27 = v16;
    v28 = 14;
LABEL_24:
    _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    goto LABEL_11;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v15];
  v18 = [v6 bytes];
  if (self)
  {
    incomingEncryptionContext = self->_incomingEncryptionContext;
  }

  else
  {
    incomingEncryptionContext = 0;
  }

  v20 = CCCryptorReset(incomingEncryptionContext, v18);
  if (v20)
  {
    v33 = v20;
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *v36 = v33;
      _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "CCCryptorReset failed: %d)", buf, 8u);
    }
  }

  v21 = &v18[v9];
  dataOutMoved = 0;
  if (self)
  {
    self = self->_incomingEncryptionContext;
  }

  v22 = CCCryptorUpdate(self, v21, v15, [v16 mutableBytes], v15, &dataOutMoved);
  if (!v22 && dataOutMoved == v15)
  {
    v17 = [NEIKEv2SecurityContext removePaddingFromDecryptedPayload:v16];
    goto LABEL_20;
  }

  v31 = ne_log_obj();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109632;
    *v36 = v22;
    *&v36[4] = 1024;
    *&v36[6] = v15;
    v37 = 2048;
    v38 = dataOutMoved;
    _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "CC decrypt failed: status %d, original %u, decrypted %zu)", buf, 0x18u);
  }

LABEL_11:
  v17 = 0;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)checkIncomingHMACForPayloadData:(void *)a3 authenticatedHeaders:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(NEIKEv2IntegrityProtocol *)*(a1 + 792) macLength];
    v8 = [v5 length] - v7;
    memset(macOut, 0, sizeof(macOut));
    memcpy(&v13, (a1 + 396), sizeof(v13));
    CCHmacUpdate(&v13, [v6 bytes], objc_msgSend(v6, "length"));
    CCHmacUpdate(&v13, [v5 bytes], v8);
    CCHmacFinal(&v13, macOut);
    memset_s(&v13, 0x180uLL, 0, 0x180uLL);
    [v5 bytes];
    v9 = cc_cmp_safe();
    memset_s(macOut, 0x40uLL, 0, 0x40uLL);
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)constructEncryptedPacketFromConstructor:(id)a3 plaintextLength:(unsigned int)a4 authenticatedHeaders:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
LABEL_25:

      v24 = 0;
      goto LABEL_21;
    }

    __dst.ctx[0] = 136315138;
    *&__dst.ctx[1] = "[NEIKEv2SecurityContextCBCPlusHMAC constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
    v28 = "%s called with null packetConstructor";
LABEL_34:
    _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, v28, &__dst, 0xCu);
    goto LABEL_25;
  }

  if (!v9)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    __dst.ctx[0] = 136315138;
    *&__dst.ctx[1] = "[NEIKEv2SecurityContextCBCPlusHMAC constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
    v28 = "%s called with null authenticatedHeaders";
    goto LABEL_34;
  }

  v11 = [v9 length];
  if (self)
  {
    v12 = [NEIKEv2SecurityContextCBCPlusHMAC paddingLengthForPlaintextLength:a4 encryptionProtocol:self->_encryptionProtocol];
  }

  else
  {
    v12 = 0;
  }

  v33 = v12;
  v13 = a4 + v12 + 1;
  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:-[NEIKEv2SecurityContextCBCPlusHMAC fixedOverheadLength](self) + v11 + v13];
  [v14 appendData:v10];
  if (self)
  {
    encryptionProtocol = self->_encryptionProtocol;
  }

  else
  {
    encryptionProtocol = 0;
  }

  v16 = [(NEIKEv2EncryptionProtocol *)encryptionProtocol ivLength];
  [NEIKEv2Crypto appendRandomBytesToData:v14 withSize:v16];
  if ([(NEIKEv2PacketConstructor *)v8 appendPayloadsToPacket:v14 withLength:a4])
  {
    if (v12)
    {
      [NEIKEv2Crypto appendRandomBytesToData:v14 withSize:v12];
    }

    [v14 appendBytes:&v33 length:1];
    v17 = ([v14 mutableBytes] + v11);
    if (self)
    {
      outgoingEncryptionContext = self->_outgoingEncryptionContext;
    }

    else
    {
      outgoingEncryptionContext = 0;
    }

    v19 = &v17[v16];
    v20 = CCCryptorReset(outgoingEncryptionContext, v17);
    if (v20)
    {
      v29 = v20;
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        __dst.ctx[0] = 67109120;
        __dst.ctx[1] = v29;
        _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "CCCryptorReset failed: %d)", &__dst, 8u);
      }
    }

    v32 = 0;
    if (self)
    {
      v21 = self->_outgoingEncryptionContext;
    }

    else
    {
      v21 = 0;
    }

    v22 = CCCryptorUpdate(v21, v19, v13, v19, v13, &v32);
    if (!v22 && v32 == v13)
    {
      v23 = v14;
      if (self)
      {
        memset(macOut, 0, sizeof(macOut));
        memcpy(&__dst, &self->super._minimumEncryptedPayloadSize + 1, sizeof(__dst));
        CCHmacUpdate(&__dst, [v23 bytes], objc_msgSend(v23, "length"));
        CCHmacFinal(&__dst, macOut);
        memset_s(&__dst, 0x180uLL, 0, 0x180uLL);
        [v23 appendBytes:macOut length:-[NEIKEv2IntegrityProtocol macLength](self->_integrityProtocol)];
        memset_s(macOut, 0x40uLL, 0, 0x40uLL);
      }

      v24 = v23;
      goto LABEL_20;
    }

    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __dst.ctx[0] = 67109632;
      __dst.ctx[1] = v22;
      LOWORD(__dst.ctx[2]) = 1024;
      *(&__dst.ctx[2] + 2) = v13;
      HIWORD(__dst.ctx[3]) = 2048;
      *&__dst.ctx[4] = v32;
      _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "CCCryptorUpdate failed: status %d, original %u, decrypted %zu)", &__dst, 0x18u);
    }
  }

  v24 = 0;
LABEL_20:

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (uint64_t)fixedOverheadLength
{
  if (result)
  {
    v1 = *(result + 792);
    v2 = *(result + 784);
    v3 = [NEIKEv2SecurityContextCBCPlusHMAC fixedOverheadForEncryptionProtocol:v2 integrityProtocol:v1];

    return v3;
  }

  return result;
}

+ (uint64_t)fixedOverheadForEncryptionProtocol:(void *)a3 integrityProtocol:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [(NEIKEv2EncryptionProtocol *)v5 ivLength];

  LODWORD(v5) = [(NEIKEv2IntegrityProtocol *)v4 macLength];
  return (v5 + v6);
}

+ (uint64_t)paddingLengthForPlaintextLength:(void *)a3 encryptionProtocol:
{
  v4 = a3;
  objc_opt_self();
  v5 = [(NEIKEv2EncryptionProtocol *)v4 blockLength];

  v6 = (a2 + 1) % v5;
  if (v6)
  {
    return (v5 - v6);
  }

  else
  {
    return 0;
  }
}

- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)a3
{
  v5 = [(NEIKEv2SecurityContextCBCPlusHMAC *)self fixedOverheadLength];
  v6 = a3 >= v5;
  v7 = a3 - v5;
  if (v7 == 0 || !v6)
  {
    return 0;
  }

  if (self)
  {
    encryptionProtocol = self->_encryptionProtocol;
  }

  else
  {
    encryptionProtocol = 0;
  }

  v9 = [(NEIKEv2EncryptionProtocol *)encryptionProtocol blockLength];
  if (v7 - 1 >= v7 % v9)
  {
    return v7 - 1 - v7 % v9;
  }

  else
  {
    return 0;
  }
}

- (unsigned)overheadForPlaintextLength:(unsigned int)a3
{
  if (self)
  {
    v5 = self->_encryptionProtocol;
    integrityProtocol = self->_integrityProtocol;
  }

  else
  {
    v5 = 0;
    integrityProtocol = 0;
  }

  v7 = [NEIKEv2SecurityContextCBCPlusHMAC overheadForPlaintextLength:a3 encryptionProtocol:v5 integrityProtocol:integrityProtocol];

  return v7;
}

+ (uint64_t)overheadForPlaintextLength:(void *)a3 encryptionProtocol:(void *)a4 integrityProtocol:
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = [NEIKEv2SecurityContextCBCPlusHMAC fixedOverheadForEncryptionProtocol:v7 integrityProtocol:v6];

  v9 = [NEIKEv2SecurityContextCBCPlusHMAC paddingLengthForPlaintextLength:a2 encryptionProtocol:v7];
  return (v8 + v9 + 1);
}

- (void)dealloc
{
  if (self)
  {
    outgoingEncryptionContext = self->_outgoingEncryptionContext;
    if (outgoingEncryptionContext)
    {
      CCCryptorRelease(outgoingEncryptionContext);
      self->_outgoingEncryptionContext = 0;
    }

    incomingEncryptionContext = self->_incomingEncryptionContext;
    if (incomingEncryptionContext)
    {
      CCCryptorRelease(incomingEncryptionContext);
      self->_incomingEncryptionContext = 0;
    }
  }

  memset_s(&self->super._minimumEncryptedPayloadSize + 1, 0x180uLL, 0, 0x180uLL);
  memset_s(&self->outgoingHMACBaseContext.ctx[95], 0x180uLL, 0, 0x180uLL);
  v5.receiver = self;
  v5.super_class = NEIKEv2SecurityContextCBCPlusHMAC;
  [(NEIKEv2SecurityContextCBCPlusHMAC *)&v5 dealloc];
}

@end