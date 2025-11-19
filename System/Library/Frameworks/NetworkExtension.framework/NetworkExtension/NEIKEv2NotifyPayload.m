@interface NEIKEv2NotifyPayload
+ (NEIKEv2NotifyPayload)createNotifyPayloadType:;
+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(void *)a3 data:;
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
- (__CFString)copyError;
- (__CFString)copyNotifyTypeDescription;
- (uint64_t)copyPPKID;
- (uint64_t)getPPKIDType;
@end

@implementation NEIKEv2NotifyPayload

- (BOOL)parsePayloadData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 length];
  if (v5 > 3)
  {
    v6 = v5;
    v26 = 0;
    [v4 getBytes:&v26 length:4];
    v7 = BYTE1(v26);
    v8 = BYTE1(v26) + 4;
    if (v6 < v8)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v6;
        v28 = 1024;
        v29 = v7;
        _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Invalid Notify payload length %zu too small for SPI length %u", buf, 0x12u);
      }
    }

    if (self)
    {
      self->_notifyType = bswap32(HIWORD(v26)) >> 16;
    }

    if (v26 == 240)
    {
      if (v7 == 8)
      {
        *buf = 0;
        [v4 getBytes:buf range:{4, 8}];
        v9 = NEIKEv2TLSSPI;
        goto LABEL_15;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          notifyType = self->_notifyType;
        }

        else
        {
          notifyType = 0;
        }

        *buf = 134218240;
        *&buf[4] = notifyType;
        v28 = 1024;
        v29 = v7;
        v23 = "Invalid Notify %zu TLS SPI length %u";
        goto LABEL_43;
      }
    }

    else if (v26 == 3)
    {
      if (v7 == 4)
      {
        *buf = 0;
        [v4 getBytes:buf range:{4, 4}];
        v10 = [NEIKEv2ESPSPI alloc];
        v11 = [(NEIKEv2ESPSPI *)v10 initWithValue:*buf];
        goto LABEL_16;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v22 = self->_notifyType;
        }

        else
        {
          v22 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v22;
        v28 = 1024;
        v29 = v7;
        v23 = "Invalid Notify %zu ESP SPI length %u";
        goto LABEL_43;
      }
    }

    else
    {
      if (v26 != 1 || !v7)
      {
        goto LABEL_19;
      }

      if (v7 == 8)
      {
        *buf = 0;
        [v4 getBytes:buf range:{4, 8}];
        v9 = NEIKEv2IKESPI;
LABEL_15:
        v13 = [v9 alloc];
        v11 = [v13 initWithValue:*buf];
LABEL_16:
        p_super = &v11->super.super;
        if (self)
        {
          objc_setProperty_atomic(self, v12, v11, 48);
        }

        goto LABEL_18;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v25 = self->_notifyType;
        }

        else
        {
          v25 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v25;
        v28 = 1024;
        v29 = v7;
        v23 = "Invalid Notify %zu IKE SPI length %u";
LABEL_43:
        _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, v23, buf, 0x12u);
      }
    }

LABEL_18:

LABEL_19:
    if (v6 > v8)
    {
      v16 = [v4 subdataWithRange:{v8, v6 - v8}];
      if (self)
      {
        objc_setProperty_atomic(self, v15, v16, 40);
      }
    }

    v17 = [(NEIKEv2NotifyPayload *)self hasRequiredFields];
    goto LABEL_24;
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2NotifyPayload parsePayloadData:]";
    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadDataLength >= sizeof(ikev2_payload_notify_hdr_t))", buf, 0xCu);
  }

  v17 = 0;
LABEL_24:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)generatePayloadData
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
LABEL_13:
      result = 1;
      goto LABEL_14;
    }

    if ([(NEIKEv2NotifyPayload *)self hasRequiredFields])
    {
      notifyType = self->_notifyType;
      LOWORD(v18[0]) = 0;
      WORD1(v18[0]) = bswap32(notifyType) >> 16;
      v5 = objc_getProperty(self, v3, 48, 1);
      if (v5)
      {
        v6 = v5;
        v7 = [v5 copySPIData];
        v8 = [v7 length];
        BYTE1(v18[0]) = [v7 length];
        LOBYTE(v18[0]) = [v6 protocol];
        v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{v8 + 4, v18[0]}];
        [v9 appendBytes:v18 length:4];
        [v9 appendData:v7];

        objc_storeStrong(&self->super._payloadSubHeader, v9);
LABEL_9:
        if (objc_getProperty(self, v10, 40, 1))
        {
          v19[0] = objc_getProperty(self, v11, 40, 1);
          v12 = MEMORY[0x1E695DEC8];
          v13 = v19[0];
          v14 = [v12 arrayWithObjects:v19 count:1];

          [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v14];
LABEL_12:

          goto LABEL_13;
        }

LABEL_11:
        [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:?];
        goto LABEL_12;
      }

      if (notifyType == 16418)
      {
        LOBYTE(v18[0]) = 1;
      }

LABEL_8:
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:4];
      [(NEIKEv2Payload *)self setPayloadSubHeader:v9];
      v6 = 0;
      if (!self)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ([0 hasRequiredFields])
  {
    LODWORD(v18[0]) = 0;
    goto LABEL_8;
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18[0]) = 0;
    _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Notify payload missing required fields", v18, 2u);
  }

  result = 0;
LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    LOBYTE(self) = self->_notifyType != 0;
  }

  return self;
}

- (__CFString)copyNotifyTypeDescription
{
  if (result)
  {
    v1 = result;
    isa = result[1].isa;
    if (isa <= 41040)
    {
      v3 = isa - 0x4000;
      switch(v3)
      {
        case 0:
          result = @"InitialContact";
          break;
        case 1:
          result = @"SetWindowSize";
          break;
        case 2:
          result = @"AdditionalTSPossible";
          break;
        case 3:
          result = @"IPCOMPSupported";
          break;
        case 4:
          result = @"NATDetectionSourceIP";
          break;
        case 5:
          result = @"NATDetectionDestinationIP";
          break;
        case 6:
          result = @"Cookie";
          break;
        case 7:
          result = @"UseTransportMode";
          break;
        case 8:
          result = @"HTTPCertLookupSupported";
          break;
        case 9:
          result = @"RekeySA";
          break;
        case 10:
          result = @"ESPTFCPaddingNotSupported";
          break;
        case 11:
          result = @"NonFirstFragmentsAlso";
          break;
        case 12:
          result = @"MOBIKESupported";
          break;
        case 13:
          result = @"AdditionalIP4Address";
          break;
        case 14:
          result = @"AdditionalIP6Address";
          break;
        case 15:
          result = @"NoAdditionalAddresses";
          break;
        case 16:
          result = @"UpdateSAAddresses";
          break;
        case 17:
          result = @"Cookie2";
          break;
        case 18:
          result = @"NoNATSAllowed";
          break;
        case 19:
          result = @"AuthLifetime";
          break;
        case 20:
          result = @"MultipleAuthSupported";
          break;
        case 21:
          result = @"AnotherAuthFollows";
          break;
        case 22:
          result = @"RedirectSupported";
          break;
        case 23:
          result = @"ServerRedirect";
          break;
        case 24:
          result = @"RedirectedFrom";
          break;
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 48:
        case 49:
        case 50:
        case 55:
        case 56:
          return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
        case 33:
          result = @"EAPOnlyAuthentication";
          break;
        case 34:
          result = @"ChildlessIKEv2Supported";
          break;
        case 40:
          result = @"SecurePasswordMethods";
          break;
        case 46:
          result = @"IKEv2FragmentationSupported";
          break;
        case 47:
          result = @"SignatureHashAlgorithms";
          break;
        case 51:
          result = @"UsePPK";
          break;
        case 52:
          result = @"PPKIdentity";
          break;
        case 53:
          result = @"NoPPKAuth";
          break;
        case 54:
          result = @"IntermediateExchangeSupported";
          break;
        case 57:
          result = @"AdditionalKeyExchange";
          break;
        default:
          result = @"None";
          switch(v3)
          {
            case 0:
              return result;
            case 1:
              result = @"UnsupportedCriticalPayload";
              break;
            case 2:
            case 3:
            case 6:
            case 8:
            case 10:
            case 12:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 42:
            case 45:
            case 46:
              return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
            case 4:
              result = @"InvalidIKESPI";
              break;
            case 5:
              result = @"InvalidMajorVersion";
              break;
            case 7:
              result = @"InvalidSyntax";
              break;
            case 9:
              result = @"InvalidMessageID";
              break;
            case 11:
              result = @"InvalidSPI";
              break;
            case 14:
              result = @"NoProposalChosen";
              break;
            case 17:
              result = @"InvalidKEPayload";
              break;
            case 24:
              result = @"AuthenticationFailed";
              break;
            case 34:
              result = @"SinglePairRequired";
              break;
            case 35:
              result = @"NoAdditionalSAs";
              break;
            case 36:
              result = @"InternalAddressFailure";
              break;
            case 37:
              result = @"FailedCPRequired";
              break;
            case 38:
              result = @"TSUnacceptable";
              break;
            case 39:
              result = @"InvalidSelectors";
              break;
            case 40:
              result = @"UnacceptableAddresses";
              break;
            case 41:
              result = @"UnexpectedNATDetected";
              break;
            case 43:
              result = @"TemporaryFailure";
              break;
            case 44:
              result = @"ChildSANotFound";
              break;
            case 47:
              result = @"StateNotFound";
              break;
            default:
              if (v3 != 10500)
              {
                return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
              }

              result = @"NetworkFailure";
              break;
          }

          break;
      }
    }

    else
    {
      if (isa <= 49999)
      {
        if (isa == 41041)
        {
          return @"BackoffTimer";
        }

        if (isa == 41101)
        {
          return @"DeviceIdentity";
        }
      }

      else
      {
        switch(isa)
        {
          case 50000:
            return @"SequencePerTrafficClass";
          case 51015:
            return @"N1ModeCapability";
          case 51115:
            return @"N1ModeInformation";
        }
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
    }
  }

  return result;
}

+ (NEIKEv2NotifyPayload)createNotifyPayloadType:
{
  objc_opt_self();
  result = objc_alloc_init(NEIKEv2NotifyPayload);
  if (result)
  {
    result->_notifyType = 50000;
  }

  return result;
}

+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(void *)a3 data:
{
  v4 = a3;
  objc_opt_self();
  v5 = objc_alloc_init(NEIKEv2NotifyPayload);
  v7 = v5;
  if (v5)
  {
    v5->_notifyType = a2;
    objc_setProperty_atomic(v5, v6, v4, 40);
  }

  return v7;
}

- (__CFString)copyError
{
  v1 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[1].isa - 1 > 0x3FFE)
    {
      v1 = 0;
    }

    else
    {
      v2 = objc_alloc(MEMORY[0x1E696ABC0]);
      isa = v1[1].isa;
      v8 = *MEMORY[0x1E696A278];
      v4 = [(NEIKEv2NotifyPayload *)v1 copyNotifyTypeDescription];
      v9[0] = v4;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      v1 = [v2 initWithDomain:@"NEIKEv2ProtocolErrorDomain" code:isa userInfo:v5];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

- (uint64_t)getPPKIDType
{
  v9 = *MEMORY[0x1E69E9840];
  if (self[4] != 16436)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Cannot get PPK ID type from notification %@", &v7, 0xCu);
    }

    goto LABEL_8;
  }

  if (![objc_getProperty(self a2])
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Cannot get PPK ID type from too short notification %@", &v7, 0xCu);
    }

LABEL_8:

    result = 0;
    goto LABEL_9;
  }

  LOBYTE(v7) = 0;
  [objc_getProperty(self v3];
  result = v7;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)copyPPKID
{
  v12 = *MEMORY[0x1E69E9840];
  if (self[4] != 16436)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Cannot copy PPK ID from notification %@", &v10, 0xCu);
    }

    goto LABEL_8;
  }

  if (![objc_getProperty(self a2])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Cannot copy PPK ID from too short notification %@", &v10, 0xCu);
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v4 = objc_getProperty(self, v3, 40, 1);
  v6 = [v4 subdataWithRange:{1, objc_msgSend(objc_getProperty(self, v5, 40, 1), "length") - 1}];

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

@end