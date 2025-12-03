@interface NEIKEv2GSPM
- (id)initWithIKESA:(id *)a;
- (uint64_t)createLocalSignedOctetVector;
- (uint64_t)createRemoteSignedOctetVector;
@end

@implementation NEIKEv2GSPM

- (id)initWithIKESA:(id *)a
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a)
  {
    aCopy = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v5 = v3[13];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v58 = "[NEIKEv2GSPM initWithIKESA:]";
    v14 = "%s called with null ikeSA.remoteSecurePasswordMethod";
LABEL_49:
    _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_16;
  }

  sharedSecret = [(NEIKEv2IKESA *)v4 sharedSecret];

  if (!sharedSecret)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v58 = "[NEIKEv2GSPM initWithIKESA:]";
    v14 = "%s called with null ikeSA.sharedSecret";
    goto LABEL_49;
  }

  if (v4)
  {
    v9 = v4[13];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  securePasswordMethod = [v10 securePasswordMethod];

  if (securePasswordMethod == 11001)
  {
    location = 0;
    v52 = [(NEIKEv2IKESA *)v4 createConcatedNoncesAndReturnError:?];
    if (!v52)
    {
      log = ne_log_obj();
      v48 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      v44 = location;
      if (v48)
      {
        *buf = 138412546;
        v58 = location;
        v59 = 2112;
        v60 = v4;
        _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve concatenated nonces %@ for %@", buf, 0x16u);
      }

      aCopy = 0;
      goto LABEL_45;
    }

    log = [(NEIKEv2IKESA *)v4 createConcatenatedSPIsAndReturnError:?];
    if (!log)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = location;
        v59 = 2112;
        v60 = v4;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Failed to retrieve concatenated SPIs %@ for %@", buf, 0x16u);
      }

      aCopy = 0;
      goto LABEL_44;
    }

    if (*(v4 + 9))
    {
      [(NEIKEv2IKESA *)v4 localIdentifier];
    }

    else
    {
      [(NEIKEv2IKESA *)v4 remoteIdentifier];
    }
    v16 = ;
    if (!v16)
    {
      if (*(v4 + 9))
      {
        v16 = 0;
      }

      else
      {
        v16 = v4[44];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [NEIKEv2KeyIDIdentifier alloc];
      identifierData = [v16 identifierData];
      v19 = [(NEIKEv2KeyIDIdentifier *)v17 initWithKeyID:identifierData];

      v16 = v19;
    }

    v20 = objc_alloc_init(NEIKEv2InitiatorIdentifierPayload);
    p_isa = &v20->super.super.super.isa;
    if (v20)
    {
      objc_setProperty_atomic(v20, v21, v16, 32);
    }

    copyPayloadData = [(NEIKEv2IdentifierPayload *)p_isa copyPayloadData];
    if (!copyPayloadData)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v4;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Failed to get Initiator ID data for %@", buf, 0xCu);
      }

      aCopy = 0;
      goto LABEL_43;
    }

    if (*(v4 + 9))
    {
      [(NEIKEv2IKESA *)v4 remoteIdentifier];
    }

    else
    {
      [(NEIKEv2IKESA *)v4 localIdentifier];
    }
    v24 = ;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [NEIKEv2KeyIDIdentifier alloc];
      identifierData2 = [v24 identifierData];
      v27 = [(NEIKEv2KeyIDIdentifier *)v25 initWithKeyID:identifierData2];

      v24 = v27;
    }

    v28 = objc_alloc_init(NEIKEv2ResponderIdentifierPayload);
    v30 = &v28->super.super.super.isa;
    if (v28)
    {
      objc_setProperty_atomic(v28, v29, v24, 32);
    }

    copyPayloadData2 = [(NEIKEv2IdentifierPayload *)v30 copyPayloadData];
    if (copyPayloadData2)
    {
      v55.receiver = a;
      v55.super_class = NEIKEv2GSPM;
      v32 = objc_msgSendSuper2(&v55, sel_init);
      if (v32)
      {
        a = v32;
        v34 = *(v4 + 9);
        sharedSecret2 = [(NEIKEv2IKESA *)v4 sharedSecret];
        obj = location;
        v36 = [NEIKEv2CryptoKitSPAKE2Plus createForInitiator:v34 & 1 seed:sharedSecret2 initiatorID:copyPayloadData responderID:copyPayloadData2 salt:v52 context:log error:&obj];
        v37 = obj;
        objc_storeStrong(&location, obj);
        v38 = a[3];
        a[3] = v36;

        v39 = a[3];
        if (v39)
        {
          v40 = v39;
          keyShare = [v40 keyShare];

          objc_storeStrong(a + 4, keyShare);
          v42 = a[2];
          a[2] = keyShare;

          a = a;
          aCopy = a;
LABEL_42:

LABEL_43:
LABEL_44:

          v44 = location;
LABEL_45:

          goto LABEL_46;
        }

        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v58 = v37;
          _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "Failed to create SPAKE2 handler %@", buf, 0xCu);
        }
      }

      else
      {
        v50 = ne_log_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
        }

        a = 0;
      }
    }

    else
    {
      v49 = ne_log_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v4;
        _os_log_error_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_ERROR, "Failed to get Responder ID data for %@", buf, 0xCu);
      }
    }

    aCopy = 0;
    goto LABEL_42;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    String = NEIKEv2SecurePasswordMethodCreateString(securePasswordMethod);
    *buf = 138412290;
    v58 = String;
    _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "Support for secure password method %@ is not implemented", buf, 0xCu);
  }

LABEL_16:

  aCopy = 0;
LABEL_46:

LABEL_47:
  v45 = *MEMORY[0x1E69E9840];
  return aCopy;
}

- (uint64_t)createLocalSignedOctetVector
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v1 = *(self + 32);
  if (!v1)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }

    *buf = 136315138;
    v12 = "[NEIKEv2GSPM createLocalSignedOctetVector]";
    v7 = "%s called with null self.firstLocalMessage";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, v7, buf, 0xCu);
    goto LABEL_8;
  }

  v2 = *(self + 40);
  if (!v2)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v12 = "[NEIKEv2GSPM createLocalSignedOctetVector]";
    v7 = "%s called with null self.firstPeerMessage";
    goto LABEL_12;
  }

  v10[0] = *(self + 32);
  v10[1] = v2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = v2;
  v5 = v1;
  v6 = [v3 arrayWithObjects:v10 count:2];

LABEL_9:
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)createRemoteSignedOctetVector
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v1 = *(self + 40);
  if (!v1)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }

    *buf = 136315138;
    v12 = "[NEIKEv2GSPM createRemoteSignedOctetVector]";
    v7 = "%s called with null self.firstPeerMessage";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, v7, buf, 0xCu);
    goto LABEL_8;
  }

  v2 = *(self + 32);
  if (!v2)
  {
    v5 = ne_log_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v12 = "[NEIKEv2GSPM createRemoteSignedOctetVector]";
    v7 = "%s called with null self.firstLocalMessage";
    goto LABEL_12;
  }

  v10[0] = *(self + 40);
  v10[1] = v2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = v2;
  v5 = v1;
  v6 = [v3 arrayWithObjects:v10 count:2];

LABEL_9:
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

@end