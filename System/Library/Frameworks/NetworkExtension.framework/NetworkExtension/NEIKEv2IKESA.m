@interface NEIKEv2IKESA
+ (void)copyPPKFromConfig:(uint64_t)a1;
+ (void)copySharedSecretFromConfig:(uint64_t)a1;
- (BOOL)checkSharedKeyAuthData:(const char *)a3 usingPrimeKey:;
- (NEIKEv2AuthPayload)copyAuthenticationPayloadUsingPrimeKey:(id *)self;
- (NEIKEv2AuthenticationProtocol)selectSecurePasswordMethod:(void *)a1;
- (NSObject)copyLocalCertificateData;
- (NSObject)copyRemoteCertificateAuthorityHashData;
- (NSObject)createAuthenticationDataForSharedSecret:(void *)a3 octetVector:;
- (NSObject)createInitiatorEAPAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createInitiatorGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createInitiatorSignedOctetVectorUsingPrimeKey:(id *)a1;
- (NSObject)createResponderGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createResponderSignedOctetVectorUsingPrimeKey:(_BYTE *)a1;
- (SecKeyRef)checkValidityOfCertificates:(_BYTE *)a1;
- (_BYTE)copyForRekeyAsInitiator:(uint64_t)a1;
- (_BYTE)createRemoteSignedOctetVectorUsingPrimeKey:(_BYTE *)a1;
- (_BYTE)hasTransport;
- (_BYTE)headerOverhead;
- (_BYTE)initiatorSPI;
- (_BYTE)responderSPI;
- (__CFData)deriveKeyFromPrimeKey:(const void *)a3 hmacContext:;
- (id)authenticationProtocol;
- (id)copyRemoteCertificateAuthorityArray;
- (id)copyTransport;
- (id)description;
- (id)initIKESACommonWithConfiguration:(void *)a3 sessionConfiguration:(void *)a4 queue:(void *)a5 transportDelegate:(void *)a6 socketGetBlock:(void *)a7 packetDelegate:(void *)a8 configurationDelegate:(uint64_t)a9 ikeSessionUniqueIndex:(char)a10 isInitiator:;
- (id)initiatorFirstMessage;
- (id)initiatorNonce;
- (id)localIdentifier;
- (id)ppk;
- (id)preferredKEMProtocol;
- (id)remoteAuthentication;
- (id)remoteIdentifier;
- (id)responderFirstMessage;
- (id)responderNonce;
- (id)sharedSecret;
- (uint64_t)assignRemoteSPI:(void *)a1;
- (uint64_t)copyAddressFrom:(unsigned __int8 *)a1 with:(unsigned int)a2;
- (uint64_t)copyDeviceIdentityNotifyPayload;
- (uint64_t)copyLocalSecIdentity;
- (uint64_t)createIntAuthOctetVector;
- (uint64_t)generateAllValuesForSAInit;
- (uint64_t)generateAllValuesUsingSA:(_BYTE *)a1;
- (uint64_t)generateDerivativesFromPPK:(uint64_t)a1;
- (uint64_t)generateInitialValues;
- (uint64_t)generateLocalValuesForKEMProtocol:(void *)a1;
- (uint64_t)generateLocalValuesForKEMProtocol:(void *)a3 peerPayload:;
- (uint64_t)maximumPacketSize;
- (uint64_t)processCurrentKeyExchange;
- (uint64_t)processPrimaryKeyExchange;
- (uint64_t)updateIntAuthWithPacket:(void *)a1;
- (uint64_t)usesEAPOnlyAuthentication;
- (void)clearPostAuthenticationData;
- (void)createConcatedNoncesAndReturnError:(_BYTE *)a1;
- (void)createConcatenatedSPIsAndReturnError:(_BYTE *)a1;
- (void)dealloc;
- (void)detachTransportWithShouldInvalidate:(void *)a1;
- (void)restorePrimeKeys;
- (void)resyncAddress;
- (void)setAuthProtocolFromPacket:(uint64_t)a1;
- (void)setLocalAuthProtocolUsed:(uint64_t)a1;
- (void)setPpkIDFromPacket:(uint64_t)a1;
- (void)setPrimeAuthenticationDataFromPacket:(uint64_t)a1;
- (void)setRemoteAuthProtocolUsed:(uint64_t)a1;
- (void)setResponderIdentifierPayload:(uint64_t)a1;
- (void)setState:(void *)a3 error:;
- (void)switchToNATTraversalPorts;
@end

@implementation NEIKEv2IKESA

- (uint64_t)generateLocalValuesForKEMProtocol:(void *)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = objc_getProperty(a1, v3, 160, 1);

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v14 = 136315138;
        v15 = "[NEIKEv2IKESA(Crypto) generateLocalValuesForKEMProtocol:]";
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", &v14, 0xCu);
      }
    }

    else
    {
      v8 = +[NEIKEv2KeyExchangeHandler handlerForMethod:](NEIKEv2KeyExchangeHandler, [v4 method]);
      objc_setProperty_atomic(a1, v9, v8, 160);

      v7 = 1;
      v11 = objc_getProperty(a1, v10, 160, 1);

      if (v11)
      {
        goto LABEL_8;
      }

      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", &v14, 0xCu);
      }
    }
  }

  v7 = 0;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)generateLocalValuesForKEMProtocol:(void *)a3 peerPayload:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_getProperty(a1, v6, 160, 1);

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v17 = 136315138;
        v18 = "[NEIKEv2IKESA(Crypto) generateLocalValuesForKEMProtocol:peerPayload:]";
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", &v17, 0xCu);
      }
    }

    else
    {
      v11 = +[NEIKEv2KeyExchangeHandler handlerForMethod:peerPayload:](NEIKEv2KeyExchangeHandler, [v5 method], v7);
      objc_setProperty_atomic(a1, v12, v11, 160);

      v10 = 1;
      v14 = objc_getProperty(a1, v13, 160, 1);

      if (v14)
      {
        goto LABEL_8;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v5;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", &v17, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)generateInitialValues
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  v2 = a1;
  v3 = [(NEIKEv2IKESA *)a1 preferredKEMProtocol];
  v4 = v3;
  if (!v3 || [v3 method] == 36 || objc_msgSend(v4, "method") == 37)
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *v59 = v4;
      _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, "KE method %@ is not Diffie-Hellman", buf, 0xCu);
    }

    goto LABEL_30;
  }

  v5 = [(NEIKEv2IKESA *)v2 generateLocalValuesForKEMProtocol:v4];

  if (v5)
  {
    v7 = objc_getProperty(v2, v6, 80, 1);
    v8 = [v7 nonceSize];

    if (v8 - 257 <= 0xFFFFFF0E)
    {
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      *buf = 67109120;
      *v59 = v8;
      v43 = "Invalid nonce size %u";
      v44 = v32;
      v45 = 8;
      goto LABEL_36;
    }

    v10 = objc_getProperty(v2, v9, 80, 1);
    v11 = [v10 strictNonceSizeChecks];

    if (v11)
    {
      v13 = objc_getProperty(v2, v12, 96, 1);

      if (v13)
      {
        v15 = objc_getProperty(v2, v14, 96, 1);
        v17 = [(NEIKEv2IKESAProposal *)v15 prfProtocol];
        v18 = [v17 nonceSize];
      }

      else
      {
        v47 = v8;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v48 = v2;
        v19 = objc_getProperty(v2, v14, 80, 1);
        v20 = [v19 proposals];

        v18 = 16;
        v21 = [v20 countByEnumeratingWithState:&v53 objects:buf count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v54;
          v18 = 16;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v54 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v53 + 1) + 8 * i);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v26 = [v25 prfProtocols];
              v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v50;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v50 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v49 + 1) + 8 * j);
                    if ([v31 nonceSize] > v18)
                    {
                      v18 = [v31 nonceSize];
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
                }

                while (v28);
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v53 objects:buf count:16];
          }

          while (v22);
        }

        v2 = v48;
        v8 = v47;
      }

      if (v8 < v18)
      {
        v32 = ne_log_obj();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
LABEL_29:

LABEL_30:
          v5 = 0;
          goto LABEL_34;
        }

        *buf = 67109376;
        *v59 = v8;
        *&v59[4] = 1024;
        *&v59[6] = v18;
        v43 = "Nonce size %u < minimum %u";
        v44 = v32;
        v45 = 14;
LABEL_36:
        _os_log_fault_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_FAULT, v43, buf, v45);
        goto LABEL_29;
      }
    }

    v33 = objc_getProperty(v2, v12, 280, 1);
    if (!v33 || (v35 = v33, v5 = 1, v36 = objc_getProperty(v2, v34, 128, 1), v36, v35, !v36))
    {
      v37 = [NEIKEv2Crypto createRandomWithSize:v8];
      objc_setProperty_atomic(v2, v38, v37, 128);

      v40 = objc_getProperty(v2, v39, 128, 1);
      v5 = v40 != 0;
    }
  }

LABEL_34:
  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)processCurrentKeyExchange
{
  v2 = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 160, 1);
  }

  v3 = self;

  if (!v3)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
LABEL_11:

      v17 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2IKESA(Crypto) processCurrentKeyExchange]";
    v16 = "%s called with null self.currentKEHandler";
LABEL_14:
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, v16, &v18, 0xCu);
    goto LABEL_11;
  }

  v5 = objc_getProperty(v2, v4, 152, 1);

  if (!v5)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2IKESA(Crypto) processCurrentKeyExchange]";
    v16 = "%s called with null self.remoteKeyExchangeData";
    goto LABEL_14;
  }

  v8 = objc_getProperty(v2, v6, 152, 1);
  if (v2)
  {
    objc_setProperty_atomic(v2, v7, 0, 152);
    Property = objc_getProperty(v2, v9, 160, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 processPeerPayload:v8];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)processPrimaryKeyExchange
{
  if (result)
  {
    v2 = result;
    result = [(NEIKEv2IKESA *)result processCurrentKeyExchange];
    if (result)
    {
      v4 = objc_getProperty(v2, v3, 160, 1);
      v6 = v4;
      if (v4)
      {
        v7 = *(v4 + 3);
      }

      else
      {
        v7 = 0;
      }

      objc_setProperty_atomic(v2, v5, v7, 168);

      objc_setProperty_atomic(v2, v8, 0, 160);
      return 1;
    }
  }

  return result;
}

- (uint64_t)generateAllValuesForSAInit
{
  if (!a1)
  {
    return 0;
  }

  if (([(NEIKEv2IKESA *)a1 processPrimaryKeyExchange]& 1) == 0)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to process KE data", v5, 2u);
    }

    return 0;
  }

  return [(NEIKEv2IKESA *)a1 generateAllValuesUsingSA:?];
}

- (uint64_t)generateAllValuesUsingSA:(_BYTE *)a1
{
  v224 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  if (!v6)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v219 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.chosenProposal";
LABEL_110:
    _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
    goto LABEL_111;
  }

  v8 = [(NEIKEv2IKESA *)a1 initiatorNonce];

  if (!v8)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v219 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.initiatorNonce";
    goto LABEL_110;
  }

  v10 = [(NEIKEv2IKESA *)a1 responderNonce];

  if (!v10)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v219 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.responderNonce";
    goto LABEL_110;
  }

  v12 = objc_getProperty(a1, v11, 168, 1);

  if (!v12)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v219 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.primarySharedSecret";
    goto LABEL_110;
  }

  v14 = v4 != a1;
  if (!v4)
  {
    v14 = 0;
  }

  v202 = v14;
  v15 = v4 == a1 || v4 != 0;
  v199 = v4;
  if (!v15)
  {
    v32 = objc_getProperty(a1, v13, 168, 1);
    if (a1)
    {
      objc_setProperty_atomic(a1, v31, 0, 168);
    }

    v33 = [(NEIKEv2IKESA *)a1 initiatorNonce];
    v34 = [v33 length];
    v36 = [(NEIKEv2IKESA *)a1 responderNonce];
    v37 = [v36 length] + v34;

    v38 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v37];
    if (!v38)
    {
      v180 = ne_log_obj();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v219 = v37;
        _os_log_fault_impl(&dword_1BA83C000, v180, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v40 = 0;
      v45 = 0;
      v216 = 0;
      goto LABEL_159;
    }

    v40 = v38;
    v41 = [(NEIKEv2IKESA *)a1 initiatorNonce];
    [(__CFData *)v40 appendData:v41];

    v43 = [(NEIKEv2IKESA *)a1 responderNonce];
    [(__CFData *)v40 appendData:v43];

    v32 = v32;
    v45 = v32;
    goto LABEL_38;
  }

  if (v4)
  {
    v16 = objc_getProperty(v4, v13, 216, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v20 = objc_getProperty(a1, v18, 168, 1);
    if (a1)
    {
      objc_setProperty_atomic(a1, v19, 0, 168);
      v215 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
      v22 = objc_getProperty(a1, v21, 184, 1);
    }

    else
    {
      v22 = 0;
      v215 = 0u;
      v213 = 0u;
      v214 = 0u;
      v212 = 0u;
    }

    v196 = v20;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v212 objects:v223 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v213;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v213 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v26 += [*(*(&v212 + 1) + 8 * i) length];
        }

        v25 = [v23 countByEnumeratingWithState:&v212 objects:v223 count:16];
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }

    v151 = [v196 length];
    v153 = [(NEIKEv2IKESA *)a1 initiatorNonce];
    v154 = [v153 length];
    v156 = [(NEIKEv2IKESA *)a1 responderNonce];
    v157 = v151 + v154 + [v156 length] + v26;

    v158 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v157];
    if (!v158)
    {
      v186 = ne_log_obj();
      if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v219 = v157;
        _os_log_fault_impl(&dword_1BA83C000, v186, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v40 = 0;
      v45 = 0;
      v216 = 0;
      v32 = v196;
      goto LABEL_159;
    }

    v45 = v158;
    [(__CFData *)v158 appendData:v196];
    v160 = [(NEIKEv2IKESA *)a1 initiatorNonce];
    [(__CFData *)v45 appendData:v160];

    v162 = [(NEIKEv2IKESA *)a1 responderNonce];
    [(__CFData *)v45 appendData:v162];

    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v32 = v196;
    if (a1)
    {
      v164 = objc_getProperty(a1, v163, 184, 1);
    }

    else
    {
      v164 = 0;
    }

    v165 = v164;
    v166 = [v165 countByEnumeratingWithState:&v208 objects:v222 count:16];
    if (v166)
    {
      v167 = v166;
      v168 = *v209;
      do
      {
        for (j = 0; j != v167; ++j)
        {
          if (*v209 != v168)
          {
            objc_enumerationMutation(v165);
          }

          [(__CFData *)v45 appendData:*(*(&v208 + 1) + 8 * j)];
        }

        v167 = [v165 countByEnumeratingWithState:&v208 objects:v222 count:16];
      }

      while (v167);
    }

    if (a1)
    {
      objc_setProperty_atomic(a1, v170, 0, 184);
    }

    if (v4)
    {
      v171 = objc_getProperty(v4, v170, 216, 1);
    }

    else
    {
      v171 = 0;
    }

    v40 = v171;
LABEL_38:
    v46 = [(NEIKEv2IKESA *)a1 initiatorNonce];
    v47 = [v46 length];
    v49 = [(NEIKEv2IKESA *)a1 responderNonce];
    v50 = v47 + [v49 length] + 16;

    v51 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v50];
    if (v51)
    {
      v53 = v51;
      v54 = [(NEIKEv2IKESA *)a1 initiatorSPI];
      v55 = [v54 value];

      v207 = v55;
      v57 = [(NEIKEv2IKESA *)a1 responderSPI];
      v58 = [v57 value];

      v206 = v58;
      v60 = [(NEIKEv2IKESA *)a1 initiatorNonce];
      [(__CFData *)v53 appendData:v60];

      v62 = [(NEIKEv2IKESA *)a1 responderNonce];
      [(__CFData *)v53 appendData:v62];

      [(__CFData *)v53 appendBytes:&v207 length:8];
      [(__CFData *)v53 appendBytes:&v206 length:8];
      [(__CFData *)v40 bytes];
      [(__CFData *)v40 length];
      [(__CFData *)v53 bytes];
      [(__CFData *)v53 length];
      Hkdf = CCKDFParametersCreateHkdf();
      if (!Hkdf)
      {
        v197 = v32;
        if (a1)
        {
          v65 = objc_getProperty(a1, v64, 96, 1);
        }

        else
        {
          v65 = 0;
        }

        v66 = v65;
        v68 = [(NEIKEv2IKESAProposal *)v66 prfProtocol];

        v204 = v40;
        if (a1)
        {
          v70 = objc_getProperty(a1, v69, 96, 1);
          v72 = v70;
          if (v70)
          {
            if (objc_getProperty(v70, v71, 104, 1))
            {
              v74 = objc_getProperty(v72, v73, 104, 1);
            }

            else
            {
              v75 = [v72 encryptionProtocols];
              v74 = [v75 firstObject];
            }
          }

          else
          {
            v74 = 0;
          }

          v77 = objc_getProperty(a1, v76, 96, 1);
          v79 = v77;
          if (v77)
          {
            if (objc_getProperty(v77, v78, 112, 1))
            {
              v81 = objc_getProperty(v79, v80, 112, 1);
            }

            else
            {
              v82 = [v79 integrityProtocols];
              v81 = [v82 firstObject];
            }

LABEL_51:

            v83 = [(NEIKEv2PRFProtocol *)v68 length];
            if (v74 && (v84 = v74[2], v84 <= 0x1F) && ((0xD0100000 >> v84) & 1) != 0)
            {
              v85 = 0;
            }

            else
            {
              v85 = [(NEIKEv2IntegrityProtocol *)v81 keyLength];
            }

            v201 = v81;
            v86 = [(NEIKEv2EncryptionProtocol *)v74 keyMaterialLength];
            if (v202)
            {
              v87 = 1;
            }

            else
            {
              v87 = 3;
            }

            v194 = v83;
            v191 = v86;
            v88 = v83 * v87 + 2 * (v85 + v86);
            v89 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v88];
            v192 = v89;
            v193 = v68;
            if (!v89)
            {
              v178 = ne_log_obj();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v219) = v88;
                _os_log_fault_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", buf, 8u);
              }

              v216 = 0;
              v32 = v197;
              v4 = v199;
              goto LABEL_157;
            }

            v90 = v89;
            obj = v74;
            [(NEIKEv2PRFProtocol *)v68 ccDigest];
            [(__CFData *)v45 bytes];
            [(__CFData *)v45 length];
            [(__CFData *)v90 mutableBytes];
            [(__CFData *)v90 length];
            v91 = CCDeriveKey();
            CCKDFParametersDestroy();
            if (v91)
            {
              v179 = ne_log_obj();
              if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v219) = v91;
                _os_log_fault_impl(&dword_1BA83C000, v179, OS_LOG_TYPE_FAULT, "CCDeriveKey failed %d", buf, 8u);
              }

              v216 = 0;
              v4 = v199;
              v32 = v197;
              goto LABEL_157;
            }

            v92 = [(__CFData *)v90 bytes];
            v93 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v92 length:v194];
            objc_setProperty_atomic(a1, v94, v93, 216);

            v4 = v199;
            if (a1)
            {
              v96 = objc_getProperty(a1, v95, 216, 1);
            }

            else
            {
              v96 = 0;
            }

            v97 = v96;

            if (!v97)
            {
              v101 = ne_log_obj();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v219) = v194;
                _os_log_fault_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
              }

              v53 = 0;
              v204 = 0;
              v45 = 0;
              v32 = 0;
              v216 = 0;
              goto LABEL_157;
            }

            v98 = &v92[v194];
            if (v85)
            {
              v99 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v98 length:v85 freeWhenDone:0];
              v198 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v98[v85] length:v85 freeWhenDone:0];
              v98 += v85 + v85;
              v100 = v99;
            }

            else
            {
              v198 = 0;
              v100 = 0;
            }

            v205 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v98 length:v191 freeWhenDone:0];
            v102 = &v98[v191];
            v103 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v102 length:v191 freeWhenDone:0];
            if (v202)
            {
LABEL_73:
              v113 = ne_log_obj();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
              {
                v172 = "SA Init";
                if (v199)
                {
                  v172 = "SA Rekey";
                }

                if (v199 == a1)
                {
                  v172 = "Intermediate";
                }

                *buf = 136315138;
                v219 = v172;
                _os_log_debug_impl(&dword_1BA83C000, v113, OS_LOG_TYPE_DEBUG, "Calculated sKeySeed derivatives for %s", buf, 0xCu);
              }

              if (a1)
              {
                v114 = a1[9];
                if (v114)
                {
                  v115 = v205;
                }

                else
                {
                  v115 = v103;
                }

                if (a1[9])
                {
                  v116 = v103;
                }

                else
                {
                  v116 = v205;
                }
              }

              else
              {
                v114 = 0;
                v115 = v103;
                v116 = v205;
              }

              v117 = v115;
              v118 = v116;
              if (v74)
              {
                v119 = v74[2];
                if (v119 <= 0x1F && ((0xD0100000 >> v119) & 1) != 0)
                {
                  if (v119 == 30 || v119 == 20)
                  {
                    v120 = [[NEIKEv2SecurityContextAESGCM alloc] initWithEncryptionProtocol:v74 outgoingEncryptionKey:v117 incomingEncryptionKey:v118];
                  }

                  else
                  {
                    v120 = [[NEIKEv2SecurityContextChaCha20Poly1305 alloc] initWithEncryptionProtocol:v74 outgoingEncryptionKey:v117 incomingEncryptionKey:v118];
                  }

                  v150 = v120;
                  if (!v120)
                  {
                    v187 = ne_log_obj();
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v219 = v74;
                      _os_log_error_impl(&dword_1BA83C000, v187, OS_LOG_TYPE_ERROR, "Failed to create security context for %@", buf, 0xCu);
                    }

                    v216 = 0;
                    v4 = v199;
                    goto LABEL_155;
                  }

LABEL_154:
                  objc_setProperty_atomic(a1, v121, v150, 208);
                  v216 = 1;

LABEL_155:
                  goto LABEL_156;
                }
              }

              v190 = v103;
              if (v114)
              {
                v122 = v100;
              }

              else
              {
                v122 = v198;
              }

              if (v114)
              {
                v123 = v198;
              }

              else
              {
                v123 = v100;
              }

              v124 = v122;
              v125 = v123;
              v126 = [NEIKEv2SecurityContextCBCPlusHMAC alloc];
              v195 = v74;
              v189 = v117;
              v127 = v117;
              v188 = v118;
              v128 = v118;
              v203 = v201;
              v129 = v124;
              v130 = v125;
              v131 = v130;
              if (!v126)
              {
                goto LABEL_207;
              }

              if (obj)
              {
                v132 = v195;
                v133 = v203;
                if (v127)
                {
                  if (v128)
                  {
                    if (v203)
                    {
                      if (v129)
                      {
                        if (v130)
                        {
                          v134 = v195[2];
                          if (v134 <= 0x1F && ((0xD0100000 >> v134) & 1) != 0 || (v135 = [NEIKEv2SecurityContextCBCPlusHMAC overheadForPlaintextLength:v195 encryptionProtocol:v203 integrityProtocol:?], v136 = [(NEIKEv2SecurityContext *)v126 initWithMinimumEncryptedPayloadSize:v135], (v126 = v136) == 0))
                          {
                            v150 = 0;
                            goto LABEL_132;
                          }

                          objc_storeStrong(&v136->_encryptionProtocol, obj);
                          encryptionProtocol = v126->_encryptionProtocol;
                          if (encryptionProtocol)
                          {
                            wireType = encryptionProtocol->_wireType;
                            if (wireType == 2)
                            {
                              v139 = 1;
                              goto LABEL_120;
                            }

                            if (wireType != 12)
                            {
                              if (wireType == 3)
                              {
                                v139 = 2;
                                goto LABEL_120;
                              }

                              v144 = ne_log_obj();
                              if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
                              {
                                String = NEIKEv2EncryptionWireTypeCreateString(encryptionProtocol->_wireType);
                                *buf = 138412290;
                                v219 = String;
                                _os_log_fault_impl(&dword_1BA83C000, v144, OS_LOG_TYPE_FAULT, "No CCAlgorithm for encryption wire type %@", buf, 0xCu);
                              }
                            }
                          }

                          v139 = 0;
LABEL_120:
                          cryptorRef = 0;
                          v145 = CCCryptorCreate(0, v139, 0, [v127 bytes], objc_msgSend(v127, "length"), 0, &cryptorRef);
                          if (!v145 && cryptorRef)
                          {
                            v126->_outgoingEncryptionContext = cryptorRef;
                            cryptorRef = 0;
                            v146 = CCCryptorCreate(1u, v139, 0, [v128 bytes], objc_msgSend(v128, "length"), 0, &cryptorRef);
                            if (!v146 && cryptorRef)
                            {
                              v126->_incomingEncryptionContext = cryptorRef;
                              objc_storeStrong(&v126->_integrityProtocol, v201);
                              v147 = [v203 type] - 1;
                              if (v147 < 0xE && ((0x3863u >> v147) & 1) != 0)
                              {
                                v148 = dword_1BAA4F608[v147];
                              }

                              else
                              {
                                v149 = ne_log_obj();
                                if (os_log_type_enabled(v149, OS_LOG_TYPE_FAULT))
                                {
                                  v173 = [v203 type];
                                  *buf = 67109120;
                                  LODWORD(v219) = v173;
                                  _os_log_fault_impl(&dword_1BA83C000, v149, OS_LOG_TYPE_FAULT, "Unknown PRF type %u", buf, 8u);
                                }

                                v148 = 0;
                              }

                              CCHmacInit((&v126->super._minimumEncryptedPayloadSize + 1), v148, [v129 bytes], objc_msgSend(v129, "length"));
                              CCHmacInit(&v126->outgoingHMACBaseContext.ctx[95], v148, [v131 bytes], objc_msgSend(v131, "length"));
                              v150 = v126;
                              goto LABEL_131;
                            }

                            v182 = ne_log_obj();
                            if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_206;
                            }

                            *buf = 67109120;
                            LODWORD(v219) = v146;
                            v183 = "CCCryptorCreate(kCCDecrypt) failed: %d";
                            goto LABEL_204;
                          }

                          v182 = ne_log_obj();
                          if (os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 67109120;
                            LODWORD(v219) = v145;
                            v183 = "CCCryptorCreate(kCCEncrypt) failed: %d";
LABEL_204:
                            v184 = v182;
                            v185 = 8;
                            goto LABEL_205;
                          }

LABEL_206:

LABEL_207:
                          v150 = 0;
LABEL_131:
                          v132 = v195;
                          v133 = v203;
LABEL_132:

                          if (!v150)
                          {
                            v181 = ne_log_obj();
                            if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412546;
                              v219 = v195;
                              v220 = 2112;
                              v221 = v203;
                              _os_log_error_impl(&dword_1BA83C000, v181, OS_LOG_TYPE_ERROR, "Failed to create security context for %@, %@", buf, 0x16u);
                            }

                            v216 = 0;
                            v4 = v199;
                            v74 = obj;
                            v103 = v190;
                            v118 = v188;
                            v117 = v189;
                            goto LABEL_155;
                          }

                          v4 = v199;
                          v74 = obj;
                          v117 = v189;
                          v103 = v190;
                          v118 = v188;
                          goto LABEL_154;
                        }

                        v182 = ne_log_obj();
                        if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_206;
                        }

                        *buf = 136315138;
                        v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                        v183 = "%s called with null incomingIntegrityKey";
                      }

                      else
                      {
                        v182 = ne_log_obj();
                        if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_206;
                        }

                        *buf = 136315138;
                        v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                        v183 = "%s called with null outgoingIntegrityKey";
                      }
                    }

                    else
                    {
                      v182 = ne_log_obj();
                      if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_206;
                      }

                      *buf = 136315138;
                      v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                      v183 = "%s called with null integrityProtocol";
                    }
                  }

                  else
                  {
                    v182 = ne_log_obj();
                    if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_206;
                    }

                    *buf = 136315138;
                    v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                    v183 = "%s called with null incomingEncryptionKey";
                  }
                }

                else
                {
                  v182 = ne_log_obj();
                  if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_206;
                  }

                  *buf = 136315138;
                  v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                  v183 = "%s called with null outgoingEncryptionKey";
                }
              }

              else
              {
                v182 = ne_log_obj();
                if (!os_log_type_enabled(v182, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_206;
                }

                *buf = 136315138;
                v219 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                v183 = "%s called with null encryptionProtocol";
              }

              v184 = v182;
              v185 = 12;
LABEL_205:
              _os_log_fault_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_FAULT, v183, buf, v185);
              goto LABEL_206;
            }

            v104 = &v102[v191];
            v105 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v104 length:v194];
            objc_setProperty_atomic(a1, v106, v105, 232);

            v108 = objc_getProperty(a1, v107, 232, 1);

            if (v108)
            {
              v109 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v194 length:?];
              objc_setProperty_atomic(a1, v110, v109, 248);

              v112 = objc_getProperty(a1, v111, 248, 1);

              if (v112)
              {
                goto LABEL_73;
              }

              v143 = ne_log_obj();
              if (!os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
              {
LABEL_135:

                v216 = 0;
LABEL_156:

                v53 = 0;
                v204 = 0;
                v45 = 0;
                v32 = 0;
LABEL_157:

                v40 = v204;
LABEL_158:

LABEL_159:
                v140 = v216;
                goto LABEL_112;
              }

              *buf = 67109120;
              LODWORD(v219) = v194;
            }

            else
            {
              v143 = ne_log_obj();
              if (!os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_135;
              }

              *buf = 67109120;
              LODWORD(v219) = v194;
            }

            _os_log_fault_impl(&dword_1BA83C000, v143, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
            goto LABEL_135;
          }
        }

        else
        {
          v79 = 0;
          v74 = 0;
        }

        v81 = 0;
        goto LABEL_51;
      }

      v176 = Hkdf;
      v177 = ne_log_obj();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v219) = v176;
        _os_log_fault_impl(&dword_1BA83C000, v177, OS_LOG_TYPE_FAULT, "CCKDFParametersCreateHkdf failed %d", buf, 8u);
      }
    }

    else
    {
      v175 = ne_log_obj();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v219 = v50;
        _os_log_fault_impl(&dword_1BA83C000, v175, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v53 = 0;
    }

    v216 = 0;
    goto LABEL_158;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v219 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null ikeSA.skD";
    goto LABEL_110;
  }

LABEL_111:

  v140 = 0;
LABEL_112:

  v141 = *MEMORY[0x1E69E9840];
  return v140;
}

- (__CFData)deriveKeyFromPrimeKey:(const void *)a3 hmacContext:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v5, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v10 = [(NEIKEv2IKESAProposal *)v8 prfProtocol];
  v11 = [(NEIKEv2PRFProtocol *)v10 length];

  v12 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v11];
  if (v12)
  {
    memcpy(&__dst, a3, sizeof(__dst));
    data = 1;
    CCHmacUpdate(&__dst, [v6 bytes], objc_msgSend(v6, "length"));
    CCHmacUpdate(&__dst, &data, 1uLL);
    CCHmacFinal(&__dst, [(__CFData *)v12 mutableBytes]);
    memset_s(&__dst, 0x180uLL, 0, 0x180uLL);
    v13 = v12;
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      __dst.ctx[0] = 67109120;
      __dst.ctx[1] = v11;
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", &__dst, 8u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)generateDerivativesFromPPK:(uint64_t)a1
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null ppk";
    goto LABEL_19;
  }

  v6 = objc_getProperty(a1, v4, 216, 1);

  if (!v6)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null self.skD";
LABEL_19:
    _os_log_fault_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_FAULT, v45, &ctx, 0xCu);
    goto LABEL_20;
  }

  v8 = objc_getProperty(a1, v7, 232, 1);

  if (!v8)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null self.skPi";
    goto LABEL_19;
  }

  v10 = objc_getProperty(a1, v9, 248, 1);

  if (!v10)
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      ctx.ctx[0] = 136315138;
      *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
      v45 = "%s called with null self.skPr";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  memset(&ctx, 0, sizeof(ctx));
  v12 = objc_getProperty(a1, v11, 96, 1);
  v14 = [(NEIKEv2IKESAProposal *)v12 prfProtocol];
  v15 = [(NEIKEv2PRFProtocol *)v14 ccHMAC];
  CCHmacInit(&ctx, v15, [v5 bytes], objc_msgSend(v5, "length"));

  v17 = objc_getProperty(a1, v16, 216, 1);
  objc_setProperty_atomic(a1, v18, v17, 224);

  v20 = objc_getProperty(a1, v19, 224, 1);
  v21 = [(NEIKEv2IKESA *)a1 deriveKeyFromPrimeKey:v20 hmacContext:&ctx];
  objc_setProperty_atomic(a1, v22, v21, 216);

  v24 = objc_getProperty(a1, v23, 216, 1);
  if (!v24)
  {
    goto LABEL_16;
  }

  v26 = objc_getProperty(a1, v25, 232, 1);
  objc_setProperty_atomic(a1, v27, v26, 240);

  v29 = objc_getProperty(a1, v28, 240, 1);
  v30 = [(NEIKEv2IKESA *)a1 deriveKeyFromPrimeKey:v29 hmacContext:&ctx];
  objc_setProperty_atomic(a1, v31, v30, 232);

  v33 = objc_getProperty(a1, v32, 232, 1);

  if (!v33)
  {
    goto LABEL_16;
  }

  v35 = objc_getProperty(a1, v34, 248, 1);
  objc_setProperty_atomic(a1, v36, v35, 256);

  v38 = objc_getProperty(a1, v37, 256, 1);
  v39 = [(NEIKEv2IKESA *)a1 deriveKeyFromPrimeKey:v38 hmacContext:&ctx];
  objc_setProperty_atomic(a1, v40, v39, 248);

  v42 = objc_getProperty(a1, v41, 248, 1);

  if (!v42)
  {
LABEL_16:
    memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
    [(NEIKEv2IKESA *)a1 restorePrimeKeys];
LABEL_21:
    a1 = 0;
    goto LABEL_22;
  }

  v43 = ne_log_obj();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *v49 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_DEBUG, "Calculated PPK derivatives", v49, 2u);
  }

  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  a1 = 1;
LABEL_22:

  v47 = *MEMORY[0x1E69E9840];
  return a1;
}

- (void)restorePrimeKeys
{
  if (a1)
  {
    v3 = objc_getProperty(a1, a2, 224, 1);

    if (v3)
    {
      v5 = objc_getProperty(a1, v4, 224, 1);
      objc_setProperty_atomic(a1, v6, v5, 216);

      objc_setProperty_atomic(a1, v7, 0, 224);
    }

    v8 = objc_getProperty(a1, v4, 240, 1);

    if (v8)
    {
      v10 = objc_getProperty(a1, v9, 240, 1);
      objc_setProperty_atomic(a1, v11, v10, 232);

      objc_setProperty_atomic(a1, v12, 0, 240);
    }

    v13 = objc_getProperty(a1, v9, 256, 1);

    if (v13)
    {
      v15 = objc_getProperty(a1, v14, 256, 1);
      objc_setProperty_atomic(a1, v16, v15, 248);

      objc_setProperty_atomic(a1, v17, 0, 256);
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "Restored prime keys", v19, 2u);
    }
  }
}

- (id)copyRemoteCertificateAuthorityArray
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", &buf, 2u);
    }

    goto LABEL_55;
  }

  if (a1)
  {
    Property = objc_getProperty(a1, v2, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 remoteCertificateAuthorityReferences];

  if (v6)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v77;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v77 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [NEIKEv2Crypto copyCertificateFromPersistentData:0 isModernSystem:?];
          if (v13)
          {
            v14 = v13;
            [v3 addObject:v13];
            CFRelease(v14);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v10);
    }

    if (![v3 count] && -[NSObject count](v8, "count"))
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "failed to retrieve remote CA cert data by references", &buf, 2u);
      }

      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if (a1)
  {
    v16 = objc_getProperty(a1, v7, 88, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 remoteCertificateAuthorityName];

  if (a1)
  {
    v20 = objc_getProperty(a1, v19, 88, 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [v21 remoteCertificateAuthorityHash];

  v23 = v18;
  v24 = v22;
  v25 = v23;
  v26 = v24;
  objc_opt_self();
  v75 = v23;
  if (!v23)
  {
    v38 = 0;
    goto LABEL_38;
  }

  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v67)
  {
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", &buf, 2u);
    }

    goto LABEL_36;
  }

  objc_opt_self();
  v27 = *MEMORY[0x1E697B000];
  v28 = *MEMORY[0x1E697B328];
  v73 = *MEMORY[0x1E697AFF8];
  *&v90 = *MEMORY[0x1E697AFF8];
  *(&v90 + 1) = v28;
  v29 = *MEMORY[0x1E695E4D0];
  v72 = v27;
  *&buf = v27;
  *(&buf + 1) = v29;
  v30 = *MEMORY[0x1E697B268];
  v31 = *MEMORY[0x1E697B3A8];
  *&v91 = *MEMORY[0x1E697B260];
  *(&v91 + 1) = v31;
  v70 = v31;
  v71 = v29;
  v88 = v30;
  v89 = v29;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v90 count:4];
  *&result = 0;
  v33 = SecItemCopyMatching(v32, &result);
  v34 = result;
  v74 = v26;
  if (v33 || ![result count])
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v94 = 67109120;
      *&v94[4] = v33;
      _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "failed to retrieve all certificate (%d)", v94, 8u);
    }

    v26 = v74;
    goto LABEL_30;
  }

  v50 = v34;

  if (!v50)
  {
LABEL_30:
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "[NEIKEv2Crypto copyAllCertificates]", &buf, 2u);
    }

    v37 = 0;
LABEL_36:
    v38 = 0;
    goto LABEL_37;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v37 = v50;
  v51 = [v37 countByEnumeratingWithState:&v90 objects:&buf count:16];
  if (!v51)
  {
    goto LABEL_84;
  }

  v52 = v51;
  v53 = *v91;
  v69 = *MEMORY[0x1E697B320];
  v68 = *MEMORY[0x1E697B3D0];
  do
  {
    v54 = 0;
    do
    {
      if (*v91 != v53)
      {
        objc_enumerationMutation(v37);
      }

      v55 = *(*(&v90 + 1) + 8 * v54);
      v56 = SecCertificateCopyCommonNames();
      v57 = v56;
      if (v56 && [v56 containsObject:v25])
      {
        if (v74 && (v58 = SecCertificateCopySHA256Digest(), v59 = [v58 isEqualToData:v74], v58, !v59))
        {
          v64 = ne_log_obj();
          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_76;
          }

          LODWORD(result) = 138412290;
          v25 = v75;
          *(&result + 4) = v75;
          _os_log_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_DEFAULT, "certificate hash did not match for CN (%@)", &result, 0xCu);
        }

        else
        {
          objc_opt_self();
          if (v55)
          {
            *v94 = v69;
            v95 = v68;
            *&result = v71;
            *(&result + 1) = v55;
            v96 = v73;
            v97 = v70;
            v99 = v72;
            v100 = v71;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&result forKeys:v94 count:4];
            *v101 = 0;
            v61 = SecItemCopyMatching(v60, v101);
            v62 = *v101;
            if (v61)
            {
              v63 = ne_log_obj();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
              {
                *v84 = 0;
                _os_log_fault_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_FAULT, "SecItemCopyMatching failed", v84, 2u);
              }

              v64 = 0;
            }

            else
            {
              v64 = *v101;

              if (v64)
              {
                [v67 addObject:v64];
              }
            }

LABEL_76:
            v25 = v75;
          }

          else
          {
            v65 = ne_log_obj();
            v25 = v75;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              *v101 = 136315138;
              *&v101[4] = "+[NEIKEv2Crypto copyPersistentDataForCertificate:]";
              _os_log_fault_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_FAULT, "%s called with null certificate", v101, 0xCu);
            }

            v64 = 0;
          }
        }
      }

      ++v54;
    }

    while (v52 != v54);
    v66 = [v37 countByEnumeratingWithState:&v90 objects:&buf count:16];
    v52 = v66;
  }

  while (v66);
LABEL_84:

  v38 = v67;
  v6 = 0;
  v26 = v74;
LABEL_37:

LABEL_38:
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v81;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v81 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [NEIKEv2Crypto copyCertificateFromPersistentData:0 isModernSystem:?];
        if (v44)
        {
          v45 = v44;
          [v3 addObject:v44];
          CFRelease(v45);
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v41);
  }

  if (![v3 count] && v75)
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v75;
      _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, "failed to retrieve remote CA cert data by CN (%@)", &buf, 0xCu);
    }
  }

  v15 = v75;
LABEL_53:

LABEL_54:
  v47 = v3;
LABEL_55:

  v48 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSObject)copyRemoteCertificateAuthorityHashData
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = [(NEIKEv2IKESA *)a1 copyRemoteCertificateAuthorityArray];
  if (!v1)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "[self copyRemoteCertificateAuthorityArray] failed", buf, 2u);
    }

    goto LABEL_26;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{20 * objc_msgSend(v1, "count")}];
  if (!v2)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[[NSMutableData alloc] init] failed", buf, 2u);
    }

    v3 = 0;
    goto LABEL_26;
  }

  v3 = v2;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = *v19;
  do
  {
    v8 = 0;
    do
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      objc_opt_self();
      if (v9)
      {
        v10 = SecCertificateCopySubjectPublicKeyInfoSHA1Digest();
        if (v10)
        {
          v11 = v10;
          [v3 appendData:v10];
          goto LABEL_17;
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v24 = "+[NEIKEv2Crypto createCertificateAuthorityPublicKeyHash:]";
          _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null certificate", buf, 0xCu);
        }
      }

      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createCertificateAuthorityPublicKeyHash:] failed", buf, 2u);
      }

      v11 = 0;
LABEL_17:

      ++v8;
    }

    while (v6 != v8);
    v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);
LABEL_19:

  if (![v3 length])
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v3 = v3;
  v14 = v3;
LABEL_27:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)copyLocalSecIdentity
{
  v3 = objc_getProperty(a1, a2, 264, 1);
  v5 = objc_getProperty(a1, v4, 272, 1);
  if (v3)
  {
    v6 = [NEIKEv2Crypto copySecIdentity:v3 keyData:v5 isModernSystem:a1[22] & 1];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "No configured local certificate identity", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSObject)copyLocalCertificateData
{
  v2 = [(NEIKEv2IKESA *)a1 copyLocalSecIdentity];
  if (v2)
  {
    v3 = v2;
    certificateRef = 0;
    v4 = SecIdentityCopyCertificate(v2, &certificateRef);
    CFRelease(v3);
    if (!certificateRef || v4)
    {
      if (certificateRef)
      {
        CFRelease(certificateRef);
        certificateRef = 0;
      }

      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "SecIdentityCopyCertificate failed", buf, 2u);
      }
    }

    else
    {
      v5 = SecCertificateCopyData(certificateRef);
      if (certificateRef)
      {
        CFRelease(certificateRef);
        certificateRef = 0;
      }

      if (v5)
      {
        v6 = v5;
        v7 = v6;
LABEL_19:

        return v7;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "SecCertificateCopyData failed", v11, 2u);
      }

      v6 = 0;
    }

    v7 = 0;
    goto LABEL_19;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "[self copyLocalSecIdentity]", v14, 2u);
  }

  return 0;
}

- (uint64_t)updateIntAuthWithPacket:(void *)a1
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = objc_getProperty(a1, v3, 96, 1);
    v7 = [(NEIKEv2IKESAProposal *)v5 prfProtocol];

    if (v7)
    {
      if (v4)
      {
        Property = objc_getProperty(v4, v8, 88, 1);
      }

      else
      {
        Property = 0;
      }

      v10 = Property;

      if (v10)
      {
        if (v4)
        {
          v12 = objc_getProperty(v4, v11, 88, 1);
          v13 = *(v4 + 11);
          *(v4 + 11) = 0;

          if (*(v4 + 11))
          {
            v14 = objc_getProperty(a1, v11, 232, 1);

            if (v14)
            {
              v12 = v12;
              v16 = objc_getProperty(a1, v15, 192, 1);

              v18 = v12;
              if (v16)
              {
                v19 = objc_getProperty(a1, v17, 192, 1);
                v52 = v19;
                v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                v18 = [v20 arrayByAddingObjectsFromArray:v12];
              }

              v21 = 1;
              v22 = objc_getProperty(a1, v17, 232, 1);
              v24 = objc_getProperty(a1, v23, 96, 1);
              v26 = [(NEIKEv2IKESAProposal *)v24 prfProtocol];
              v27 = [NEIKEv2Crypto createHMACFromDataVector:v18 key:v22 prfProtocol:v26];
              objc_setProperty_atomic(a1, v28, v27, 192);

              v30 = objc_getProperty(a1, v29, 192, 1);

              if (v30)
              {
                goto LABEL_33;
              }

              v31 = ne_log_obj();
              if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_30;
              }

              *buf = 0;
              goto LABEL_39;
            }

            v18 = ne_log_obj();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
LABEL_32:
              v21 = 0;
LABEL_33:

              goto LABEL_34;
            }

            *buf = 136315138;
            v54 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
            v33 = "%s called with null self.skPi";
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0;
        }

        v34 = objc_getProperty(a1, v11, 248, 1);

        if (v34)
        {
          v12 = v12;
          v36 = objc_getProperty(a1, v35, 200, 1);

          v18 = v12;
          if (v36)
          {
            v38 = objc_getProperty(a1, v37, 200, 1);
            v51 = v38;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
            v18 = [v39 arrayByAddingObjectsFromArray:v12];
          }

          v21 = 1;
          v40 = objc_getProperty(a1, v37, 248, 1);
          v42 = objc_getProperty(a1, v41, 96, 1);
          v44 = [(NEIKEv2IKESAProposal *)v42 prfProtocol];
          v45 = [NEIKEv2Crypto createHMACFromDataVector:v18 key:v40 prfProtocol:v44];
          objc_setProperty_atomic(a1, v46, v45, 200);

          v48 = objc_getProperty(a1, v47, 200, 1);

          if (v48)
          {
            goto LABEL_33;
          }

          v31 = ne_log_obj();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
LABEL_39:
          _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromDataVector:key:prfProtocol:] failed", buf, 2u);
LABEL_30:

          goto LABEL_32;
        }

        v18 = ne_log_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }

        *buf = 136315138;
        v54 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
        v33 = "%s called with null self.skPr";
LABEL_37:
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, v33, buf, 0xCu);
        goto LABEL_32;
      }

      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_17:
        v21 = 0;
LABEL_34:

        goto LABEL_35;
      }

      *buf = 136315138;
      v54 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
      v32 = "%s called with null packet.authenticatedDataVector";
    }

    else
    {
      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315138;
      v54 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
      v32 = "%s called with null self.chosenProposal.prfProtocol";
    }

    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_17;
  }

  v21 = 0;
LABEL_35:

  v49 = *MEMORY[0x1E69E9840];
  return v21;
}

- (uint64_t)createIntAuthOctetVector
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    Property = objc_getProperty(self, a2, 96, 1);
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 136, 1);
    }
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6 = Property;

  if (!v6)
  {
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_13;
  }

  v8 = objc_getProperty(self, v7, 192, 1);

  if (!v8)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_12:

      v16 = 0;
      goto LABEL_13;
    }

    *buf = 136315138;
    v23 = "[NEIKEv2IKESA(Crypto) createIntAuthOctetVector]";
    v18 = "%s called with null self.intAuthI";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_12;
  }

  v10 = objc_getProperty(self, v9, 200, 1);

  if (!v10)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v23 = "[NEIKEv2IKESA(Crypto) createIntAuthOctetVector]";
    v18 = "%s called with null self.intAuthR";
    goto LABEL_15;
  }

  *buf = bswap32(self[7]);
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
  v13 = objc_getProperty(self, v12, 192, 1);
  v21[0] = v13;
  v15 = objc_getProperty(self, v14, 200, 1);
  v21[1] = v15;
  v21[2] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

LABEL_13:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (NSObject)createAuthenticationDataForSharedSecret:(void *)a3 octetVector:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v5)
  {
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v27 = 136315138;
    v28 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null sharedSecretData";
    goto LABEL_19;
  }

  if (a1)
  {
    Property = objc_getProperty(a1, v6, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;

  if (!v9)
  {
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_17;
    }

    v27 = 136315138;
    v28 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null self.chosenProposal";
LABEL_19:
    _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, v23, &v27, 0xCu);
    goto LABEL_16;
  }

  if (a1)
  {
    v11 = objc_getProperty(a1, v10, 96, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v14 = [(NEIKEv2IKESAProposal *)v12 prfProtocol];

  if (!v14)
  {
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v27 = 136315138;
    v28 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null self.chosenProposal.prfProtocol";
    goto LABEL_19;
  }

  if (a1)
  {
    v16 = objc_getProperty(a1, v15, 96, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v19 = [(NEIKEv2IKESAProposal *)v17 prfProtocol];

  v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"Key Pad for IKEv2" length:17 freeWhenDone:0];
  v21 = [NEIKEv2Crypto createHMACFromData:v20 key:v5 prfProtocol:v19];
  if (v21)
  {
    v22 = [NEIKEv2Crypto createHMACFromDataVector:v7 key:v21 prfProtocol:v19];
  }

  else
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v27) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", &v27, 2u);
    }

    v22 = 0;
  }

LABEL_17:
  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (NSObject)createInitiatorSignedOctetVectorUsingPrimeKey:(id *)a1
{
  v2 = a2;
  v37 = *MEMORY[0x1E69E9840];
  v4 = [(NEIKEv2IKESA *)a1 initiatorFirstMessage];

  if (!v4)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v36 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.initiatorFirstMessage";
      goto LABEL_30;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  v6 = [(NEIKEv2IKESA *)a1 responderNonce];

  if (!v6)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v36 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.responderNonce";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v2)
  {
    v8 = objc_getProperty(a1, v7, 240, 1);

    if (!v8)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v36 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPiPrime";
LABEL_30:
        _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v12 = objc_getProperty(a1, v7, 232, 1);

    if (!v12)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v36 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPi";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  if (a1)
  {
    Property = objc_getProperty(a1, v9, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;

  if (!v14)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v36 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.chosenProposal";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v15 = a1[41];
  v10 = [(NEIKEv2IdentifierPayload *)v15 copyPayloadData];

  if (!v10)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "[idPayload copyPayloadData] failed", buf, 2u);
    }

    v30 = 0;
    goto LABEL_25;
  }

  if (v2)
  {
    v17 = 240;
  }

  else
  {
    v17 = 232;
  }

  v18 = objc_getProperty(a1, v16, v17, 1);
  v20 = objc_getProperty(a1, v19, 96, 1);
  v22 = [(NEIKEv2IKESAProposal *)v20 prfProtocol];
  v23 = [NEIKEv2Crypto createHMACFromData:v10 key:v18 prfProtocol:v22];

  if (!v23)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", buf, 2u);
    }

    v30 = 0;
    goto LABEL_24;
  }

  v26 = [(NEIKEv2IKESA *)a1 createIntAuthOctetVector];
  if (!v26)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createIntAuthOctetVector] failed", buf, 2u);
    }

    v31 = 0;
    goto LABEL_23;
  }

  v27 = [(NEIKEv2IKESA *)a1 initiatorFirstMessage];
  v34[0] = v27;
  v29 = [(NEIKEv2IKESA *)a1 responderNonce];
  v34[1] = v29;
  v34[2] = v23;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];

  if ([v26 count])
  {
    v31 = [v30 arrayByAddingObjectsFromArray:v26];
LABEL_23:

    v30 = v31;
  }

LABEL_24:

LABEL_25:
LABEL_32:

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (NSObject)createResponderSignedOctetVectorUsingPrimeKey:(_BYTE *)a1
{
  v2 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v4 = [(NEIKEv2IKESA *)a1 responderFirstMessage];

  if (!v4)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.responderFirstMessage";
      goto LABEL_34;
    }

LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  v6 = [(NEIKEv2IKESA *)a1 initiatorNonce];

  if (!v6)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.initiatorNonce";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v2)
  {
    v8 = objc_getProperty(a1, v7, 256, 1);

    if (!v8)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v38 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPrPrime";
LABEL_34:
        _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v12 = objc_getProperty(a1, v7, 248, 1);

    if (!v12)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v38 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPr";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (a1)
  {
    Property = objc_getProperty(a1, v9, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;

  if (!v14)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.chosenProposal";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (a1)
  {
    v15 = *(a1 + 42);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v10 = [(NEIKEv2IdentifierPayload *)v16 copyPayloadData];

  if (!v10)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "[idPayload copyPayloadData] failed", buf, 2u);
    }

    v32 = 0;
    goto LABEL_29;
  }

  if (v2)
  {
    v18 = 256;
  }

  else
  {
    v18 = 248;
  }

  v20 = objc_getProperty(a1, v17, v18, 1);
  if (a1)
  {
    v21 = objc_getProperty(a1, v19, 96, 1);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v24 = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
  v25 = [NEIKEv2Crypto createHMACFromData:v10 key:v20 prfProtocol:v24];

  if (!v25)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", buf, 2u);
    }

    v32 = 0;
    goto LABEL_28;
  }

  v28 = [(NEIKEv2IKESA *)a1 createIntAuthOctetVector];
  if (!v28)
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createIntAuthOctetVector] failed", buf, 2u);
    }

    v33 = 0;
    goto LABEL_27;
  }

  v29 = [(NEIKEv2IKESA *)a1 responderFirstMessage];
  v36[0] = v29;
  v31 = [(NEIKEv2IKESA *)a1 initiatorNonce];
  v36[1] = v31;
  v36[2] = v25;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];

  if ([v28 count])
  {
    v33 = [v32 arrayByAddingObjectsFromArray:v28];
LABEL_27:

    v32 = v33;
  }

LABEL_28:

LABEL_29:
LABEL_36:

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (_BYTE)createRemoteSignedOctetVectorUsingPrimeKey:(_BYTE *)a1
{
  if (a1)
  {
    if (a1[9])
    {
      return [(NEIKEv2IKESA *)a1 createResponderSignedOctetVectorUsingPrimeKey:a2];
    }

    else
    {
      return [(NEIKEv2IKESA *)a1 createInitiatorSignedOctetVectorUsingPrimeKey:a2];
    }
  }

  return a1;
}

- (SecKeyRef)checkValidityOfCertificates:(_BYTE *)a1
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v49 = 0;
    goto LABEL_51;
  }

  if (![(__CFArray *)v3 count])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v114 = "[NEIKEv2IKESA(Crypto) checkValidityOfCertificates:]";
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null certificateDataArray.count", buf, 0xCu);
    }

    v49 = 0;
    goto LABEL_50;
  }

  v6 = objc_getProperty(a1, v5, 88, 1);
  v7 = [v6 remoteCertificateHostname];

  if (![v7 length])
  {
    v9 = objc_getProperty(a1, v8, 88, 1);
    v10 = [v9 remoteIdentifier];
    v11 = [v10 stringValue];

    if ([v11 length])
    {
      v7 = v11;
    }

    else
    {
      v12 = 328;
      if (a1[9])
      {
        v12 = 336;
      }

      Property = *&a1[v12];
      v15 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v14, 32, 1);
      }

      v16 = Property;
      v7 = [v16 stringValue];
    }
  }

  if (![v7 length])
  {

    v7 = 0;
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v53 = @"<not set>";
    if (v7)
    {
      v53 = v7;
    }

    *buf = 138412290;
    v114 = v53;
    _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "Matching remote hostname %@ with remote certificate", buf, 0xCu);
  }

  v18 = a1[9];
  IPSec = SecPolicyCreateIPSec();
  if (IPSec)
  {
    v20 = IPSec;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v21)
    {
      v22 = v21;
      cf = v20;
      v103 = v7;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      theArray = v4;
      v23 = v4;
      v24 = [(__CFArray *)v23 countByEnumeratingWithState:&v106 objects:v112 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v107;
        v27 = *MEMORY[0x1E695E480];
        while (2)
        {
          v28 = 0;
          do
          {
            if (*v107 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = SecCertificateCreateWithData(v27, *(*(&v106 + 1) + 8 * v28));
            if (!v29)
            {
              v48 = ne_log_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_FAULT, "SecCertificateCreateWithData failed", buf, 2u);
              }

              CFRelease(cf);
              v49 = 0;
              v7 = v103;
              v4 = theArray;
              goto LABEL_49;
            }

            v30 = v29;
            if (nelog_is_debug_logging_enabled())
            {
              CFAbsoluteTimeGetCurrent();
              v31 = SecCertificateCopySummaryProperties();
              v32 = ne_log_large_obj();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v114 = v31;
                _os_log_debug_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_DEBUG, "Certificate Properties:\n%@", buf, 0xCu);
              }

              if (v31)
              {
                CFRelease(v31);
              }
            }

            NECertificateDateIsValid(v30);
            [v22 addObject:v30];
            CFRelease(v30);
            ++v28;
          }

          while (v25 != v28);
          v25 = [(__CFArray *)v23 countByEnumeratingWithState:&v106 objects:v112 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      if (![v22 count])
      {
        v54 = ne_log_obj();
        v7 = v103;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "No valid remote certificate", buf, 2u);
        }

        CFRelease(cf);
        v49 = 0;
        v4 = theArray;
        goto LABEL_49;
      }

      v33 = [(NEIKEv2IKESA *)a1 copyRemoteCertificateAuthorityArray];
      if ([v33 count])
      {
LABEL_31:
        v35 = objc_getProperty(a1, v34, 88, 1);
        v36 = [v35 enableCertificateRevocationCheck];
        v38 = objc_getProperty(a1, v37, 88, 1);
        v39 = [v38 strictCertificateRevocationCheck];
        v40 = v22;
        v100 = v33;
        objc_opt_self();
        trust = 0;
        certificates = v40;
        if (v36)
        {
          v41 = ne_log_obj();
          v4 = theArray;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEBUG, "Request certificate revocation check", buf, 2u);
          }

          if (v39)
          {
            v42 = 11;
          }

          else
          {
            v42 = 3;
          }

          Revocation = SecPolicyCreateRevocation(v42);
          if (!Revocation)
          {
            v62 = ne_log_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              v63 = "SecPolicyCreateRevocation failed";
              goto LABEL_88;
            }

LABEL_89:

            v49 = 0;
            v58 = v100;
            goto LABEL_90;
          }

          v44 = Revocation;
          v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v45)
          {
            CFRelease(v44);
            v62 = ne_log_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              v63 = "[[NSMutableArray alloc] init] failed";
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          v46 = v45;
          [v45 addObject:cf];
          [v46 addObject:v44];
          CFRelease(v44);
          v47 = SecTrustCreateWithCertificates(certificates, v46, &trust);
        }

        else
        {
          v47 = SecTrustCreateWithCertificates(v40, cf, &trust);
          v4 = theArray;
        }

        if (!v47 && trust)
        {
          v58 = v100;
          if ([(__CFArray *)v100 count])
          {
            v59 = SecTrustSetAnchorCertificates(trust, v100);
            if (v59)
            {
              v60 = v59;
              if (trust)
              {
                CFRelease(trust);
                trust = 0;
              }

              v61 = ne_log_obj();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v114) = v60;
                _os_log_fault_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_FAULT, "Failed to set anchor CA certificates for remote certificate validation (%d)", buf, 8u);
              }

LABEL_78:

LABEL_79:
              v49 = 0;
              goto LABEL_90;
            }
          }

          v110 = 0;
          v64 = MEMORY[0x1BFAFA1B0](trust, &v110);
          if (v64)
          {
            v65 = v64;
            if (trust)
            {
              CFRelease(trust);
              trust = 0;
            }

            v61 = ne_log_obj();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v114) = v65;
              _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "Remote certificate evaluation error (%d)", buf, 8u);
            }

            goto LABEL_78;
          }

          if (v110 <= 3)
          {
            switch(v110)
            {
              case 0:
                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v72 = "Certificate evaluation error = kSecTrustResultInvalid";
                goto LABEL_124;
              case 1:
                goto LABEL_112;
              case 3:
                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v72 = "Certificate evaluation error = kSecTrustResultDeny";
                goto LABEL_124;
            }
          }

          else
          {
            if (v110 <= 5)
            {
              if (v110 != 4)
              {
                v71 = ne_log_obj();
                if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v72 = "Certificate evaluation error = kSecTrustResultRecoverableTrustFailure";
LABEL_124:
                v74 = v71;
                v75 = 2;
LABEL_125:
                _os_log_error_impl(&dword_1BA83C000, v74, OS_LOG_TYPE_ERROR, v72, buf, v75);
LABEL_126:

                if (nelog_is_debug_logging_enabled())
                {
                  theArraya = SecTrustCopyProperties(trust);
                  if (theArraya)
                  {
                    v76 = ne_log_obj();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_DEBUG, "---------------Returned error strings: ---------------", buf, 2u);
                    }

                    Count = CFArrayGetCount(theArraya);
                    if (Count >= 1)
                    {
                      v78 = Count;
                      v79 = 0;
                      key = *MEMORY[0x1E697B2E0];
                      v97 = *MEMORY[0x1E697B2E8];
                      v99 = Count;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v79);
                        if (ValueAtIndex)
                        {
                          v81 = ValueAtIndex;
                          v82 = CFGetTypeID(ValueAtIndex);
                          if (v82 == CFDictionaryGetTypeID())
                          {
                            Value = CFDictionaryGetValue(v81, key);
                            if (Value)
                            {
                              v84 = Value;
                              v85 = CFGetTypeID(Value);
                              v86 = v85 == CFStringGetTypeID();
                              v78 = v99;
                              if (v86)
                              {
                                CStringPtr = CFStringGetCStringPtr(v84, 0);
                                if (CStringPtr)
                                {
                                  v88 = CStringPtr;
                                  v89 = ne_log_obj();
                                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 136315138;
                                    v114 = v88;
                                    _os_log_debug_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_DEBUG, "type = %s", buf, 0xCu);
                                  }

                                  v78 = v99;
                                }
                              }
                            }

                            v90 = CFDictionaryGetValue(v81, v97);
                            if (v90)
                            {
                              v91 = v90;
                              v92 = CFGetTypeID(v90);
                              v86 = v92 == CFStringGetTypeID();
                              v78 = v99;
                              if (v86)
                              {
                                v93 = CFStringGetCStringPtr(v91, 0);
                                if (v93)
                                {
                                  v94 = v93;
                                  v95 = ne_log_obj();
                                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 136315138;
                                    v114 = v94;
                                    _os_log_debug_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_DEBUG, "value = %s", buf, 0xCu);
                                  }

                                  v78 = v99;
                                }
                              }
                            }
                          }
                        }

                        ++v79;
                      }

                      while (v78 != v79);
                    }

                    v96 = ne_log_obj();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1BA83C000, v96, OS_LOG_TYPE_DEBUG, "-----------------------------------------------------", buf, 2u);
                    }

                    CFRelease(theArraya);
                    v58 = v100;
                  }
                }

                if (!trust)
                {
                  goto LABEL_79;
                }

                CFRelease(trust);
                v49 = 0;
                goto LABEL_154;
              }

LABEL_112:
              if ((v36 & v39) == 1)
              {
                v73 = ne_log_obj();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_INFO, "Strict Certificate Revocation Check is not supported", buf, 2u);
                }
              }

              v49 = SecTrustCopyKey(trust);
              if (!trust)
              {
                goto LABEL_90;
              }

              CFRelease(trust);
LABEL_154:
              trust = 0;
LABEL_90:

              CFRelease(cf);
              v69 = ne_log_obj();
              v70 = v69;
              if (v49)
              {
                v7 = v103;
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v114 = v49;
                  _os_log_debug_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_DEBUG, "Certificate public key: %@", buf, 0xCu);
                }
              }

              else
              {
                v7 = v103;
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, "Certificate is not trusted", buf, 2u);
                }

                v49 = 0;
              }

LABEL_97:

              goto LABEL_49;
            }

            if (v110 == 6)
            {
              v71 = ne_log_obj();
              if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_126;
              }

              *buf = 0;
              v72 = "Certificate evaluation error = kSecTrustResultFatalTrustFailure";
              goto LABEL_124;
            }

            if (v110 == 7)
            {
              v71 = ne_log_obj();
              if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_126;
              }

              *buf = 0;
              v72 = "Certificate evaluation error = kSecTrustResultOtherError";
              goto LABEL_124;
            }
          }

          v71 = ne_log_obj();
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_126;
          }

          *buf = 67109120;
          LODWORD(v114) = v110;
          v72 = "Certificate evaluation error = Unknown (%d)";
          v74 = v71;
          v75 = 8;
          goto LABEL_125;
        }

        if (trust)
        {
          CFRelease(trust);
          trust = 0;
        }

        v62 = ne_log_obj();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v63 = "SecTrustCreateWithCertificates failed";
LABEL_88:
          _os_log_fault_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_FAULT, v63, buf, 2u);
          goto LABEL_89;
        }

        goto LABEL_89;
      }

      v55 = objc_getProperty(a1, v34, 88, 1);
      v56 = [v55 remoteCertificateAuthorityReferences];
      if (v56)
      {
      }

      else
      {
        v66 = objc_getProperty(a1, v57, 88, 1);
        v67 = [v66 remoteCertificateAuthorityName];

        if (!v67)
        {
          goto LABEL_31;
        }
      }

      v68 = ne_log_obj();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, "remoteCertAuthorityArray missing from config", buf, 2u);
      }

      CFRelease(cf);
      v49 = 0;
      v7 = v103;
      v4 = theArray;
      goto LABEL_97;
    }

    CFRelease(v20);
    v50 = ne_log_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", buf, 2u);
    }

    v22 = 0;
  }

  else
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v114 = v7;
      _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "Could not create secure policy with hostname %@", buf, 0xCu);
    }
  }

  v49 = 0;
LABEL_49:

LABEL_50:
LABEL_51:

  v51 = *MEMORY[0x1E69E9840];
  return v49;
}

- (NEIKEv2AuthPayload)copyAuthenticationPayloadUsingPrimeKey:(id *)self
{
  v3 = self;
  v109 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
  }

  v4 = self;

  if (v4)
  {
    if (v3 && (*(v3 + 9) & 1) != 0)
    {
      v5 = [(NEIKEv2IKESA *)v3 createInitiatorSignedOctetVectorUsingPrimeKey:a2];
    }

    else
    {
      v5 = [(NEIKEv2IKESA *)v3 createResponderSignedOctetVectorUsingPrimeKey:a2];
    }

    v7 = v5;
    if (!v5)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "[self createLocalSignedOctetVectorUsingPrimeKey:] failed", buf, 2u);
      }

      goto LABEL_68;
    }

    v9 = [(NEIKEv2IKESA *)v3 authenticationProtocol];
    if (![v9 isSignature])
    {
      if ([v9 method]== 2)
      {
        v15 = [(NEIKEv2IKESA *)v3 sharedSecret];
        v16 = [(NEIKEv2IKESA *)v3 createAuthenticationDataForSharedSecret:v15 octetVector:v7];

        if (!v16)
        {
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_67;
          }

          *buf = 0;
          v18 = "createAuthenticationDataForSharedSecret: failed";
LABEL_88:
          v23 = v17;
          v24 = 2;
          goto LABEL_89;
        }
      }

      else
      {
        if ([v9 method]!= 13)
        {
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *&buf[4] = v9;
          v18 = "Unknown auth protocol %@";
          v23 = v17;
          v24 = 12;
LABEL_89:
          _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v18, buf, v24);
          goto LABEL_67;
        }

        if (v3 && (*(v3 + 9) & 1) != 0)
        {
          v20 = a2 == 0;
          v21 = 232;
          v22 = 240;
        }

        else
        {
          v20 = a2 == 0;
          v21 = 248;
          v22 = 256;
        }

        if (v20)
        {
          v25 = v21;
        }

        else
        {
          v25 = v22;
        }

        v17 = objc_getProperty(v3, v19, v25, 1);
        v26 = [(NEIKEv2IKESA *)v3 createAuthenticationDataForSharedSecret:v17 octetVector:v7];
        if (!v26)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret: failed", buf, 2u);
          }

          goto LABEL_67;
        }

        v16 = v26;
      }

LABEL_74:
      v8 = objc_alloc_init(NEIKEv2AuthPayload);
      [(NEIKEv2AuthPayload *)v8 setAuthProtocol:v9];
      [(NEIKEv2AuthPayload *)v8 setAuthenticationData:v16];

      goto LABEL_75;
    }

    if (v3)
    {
      v11 = objc_getProperty(v3, v10, 88, 1);
      v12 = v11;
      if (v11 && [v11 localPrivateKeyRef])
      {
        v8 = [v12 localPrivateKeyRef];
        CFRetain(v8);

        if (v8)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_41:
    v28 = [(NEIKEv2IKESA *)v3 copyLocalSecIdentity];
    if (v28)
    {
      v29 = v28;
      *buf = 0;
      v30 = SecIdentityCopyPrivateKey(v28, buf);
      CFRelease(v29);
      v8 = *buf;
      if (*buf && !v30)
      {
LABEL_44:
        v31 = [(NEIKEv2IKESA *)v3 authenticationProtocol];
        v32 = 0x1E7F04000uLL;
        if ([v31 method] == 1 || (objc_msgSend(v31, "isSignature") & 1) == 0)
        {
          v36 = v31;
          goto LABEL_50;
        }

        if ([v31 isDigitalSignature])
        {
          v33 = [NEIKEv2Crypto copySignHashProtocolForAuth:v31];
          v34 = v3[14];
          v35 = [v34 containsObject:v33];

          if (v35)
          {
            v36 = v31;
          }

          else
          {
            v57 = ne_log_obj();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v87 = v3[14];
              *buf = 138412546;
              *&buf[4] = v33;
              v103 = 2112;
              v104 = v87;
              _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "Digital signature hash protocol %@ is not supported by peer, supports %@", buf, 0x16u);
            }

            v36 = 0;
          }

LABEL_50:
          if (!v36)
          {
            v88 = ne_log_obj();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_FAULT, "Failed to select auth protocol for signature generation", buf, 2u);
            }

            if (!v8)
            {
              v9 = 0;
              goto LABEL_75;
            }

            CFRelease(v8);
            v9 = 0;
            goto LABEL_68;
          }

          v37 = *(v32 + 2392);
          v38 = v7;
          v9 = v36;
          objc_opt_self();
          v39 = [(NEIKEv2AuthenticationProtocol *)v9 signatureAlgorithm];
          if (v39)
          {
            v40 = v39;
            v41 = [(NEIKEv2AuthenticationProtocol *)v9 copyHashForDataVector:v38];
            if (v41)
            {
              v42 = v41;
              error[0] = 0;
              Signature = SecKeyCreateSignature(v8, v40, v41, error);
              v44 = Signature;
              if (!Signature || error[0])
              {
                v45 = ne_log_obj();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v9;
                  v103 = 2112;
                  v104 = error[0];
                  _os_log_fault_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_FAULT, "Failed to sign for %@ with private key: %@", buf, 0x16u);
                }

                if (error[0])
                {
                  CFRelease(error[0]);
                  v16 = 0;
                  error[0] = 0;
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = Signature;
              }

LABEL_71:
              if (v8)
              {
                CFRelease(v8);
              }

              if (v16)
              {
                goto LABEL_74;
              }

LABEL_68:
              v8 = 0;
LABEL_75:

              goto LABEL_76;
            }

            v89 = ne_log_obj();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = v9;
              _os_log_fault_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_FAULT, "Failed to copy hashed data for %@", buf, 0xCu);
            }

            v42 = 0;
          }

          else
          {
            v42 = ne_log_obj();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = v9;
              _os_log_fault_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_FAULT, "Invalid signature protcol %@", buf, 0xCu);
            }
          }

          v16 = 0;
          goto LABEL_71;
        }

        v49 = objc_alloc(MEMORY[0x1E695DFA8]);
        v50 = v3[14];
        v51 = [v49 initWithSet:v50];

        v94 = v31;
        v52 = v31;
        objc_opt_self();
        v53 = [NEIKEv2Crypto copySignHashSetForAuthMethod:v52];
        if (v52 && ((v54 = [v52 method], v54 == 245) || v54 == 14 && (objc_msgSend(v52, "digitalSignatureAlgorithm") - 9) <= 2) && (BlockSize = SecKeyGetBlockSize(v8), BlockSize <= 0x81))
        {
          v58 = BlockSize;
          v91 = v52;
          v92 = v51;
          v90 = v53;
          v59 = [v53 mutableCopy];
          *error = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v95 = v59;
          obj = [v59 copy];
          v60 = [obj countByEnumeratingWithState:error objects:buf count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v106;
            v93 = 8 * v58;
            while (2)
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v106 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v64 = *(error[1] + i);
                v65 = [v64 hashType] - 2;
                if (v65 >= 3)
                {
                  v69 = ne_log_obj();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                  {
                    *v98 = 138412290;
                    v99 = v64;
                    _os_log_fault_impl(&dword_1BA83C000, v69, OS_LOG_TYPE_FAULT, "Unexpected hash protocol %@ in RSA-PSS set", v98, 0xCu);
                  }

                  v56 = 0;
                  v53 = v90;
                  v68 = v95;
                  goto LABEL_106;
                }

                if (v58 < 32 * v65 + 66)
                {
                  v66 = v58;
                  v67 = ne_log_obj();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    *v98 = 138412546;
                    v99 = v64;
                    v100 = 2048;
                    v101 = v93;
                    _os_log_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_INFO, "Removing too large hash protocol %@ from set for RSA key size %zu", v98, 0x16u);
                  }

                  [v95 removeObject:v64];
                  v58 = v66;
                }
              }

              v61 = [obj countByEnumeratingWithState:error objects:buf count:16];
              if (v61)
              {
                continue;
              }

              break;
            }
          }

          v68 = v95;
          v56 = v95;
          v53 = v90;
LABEL_106:

          v52 = v91;
          v51 = v92;
        }

        else
        {
          v56 = v53;
        }

        v70 = v52;
        v71 = ne_log_obj();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v85 = v51;
          v86 = v3[14];
          *buf = 138412290;
          *&buf[4] = v86;
          _os_log_debug_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_DEBUG, "Peer hashes: %@", buf, 0xCu);

          v51 = v85;
        }

        v72 = ne_log_obj();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v56;
          _os_log_debug_impl(&dword_1BA83C000, v72, OS_LOG_TYPE_DEBUG, "Protocol hashes: %@", buf, 0xCu);
        }

        obja = v56;
        [v51 intersectSet:v56];
        v73 = [v51 allObjects];
        v74 = [v73 sortedArrayUsingSelector:sel_compare_];

        v75 = [v74 lastObject];
        if ([v70 method] == 245)
        {
          if (!v75)
          {
            v80 = ne_log_obj();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "Unable to find acceptable hash algorithm for generating RSA-PSS signature", buf, 2u);
            }

            goto LABEL_139;
          }

          v76 = [v75 hashType];
          switch(v76)
          {
            case 4:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 11;
              goto LABEL_136;
            case 3:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 10;
              goto LABEL_136;
            case 2:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 9;
LABEL_136:
              v83 = [(NEIKEv2AuthenticationProtocol *)v77 initWithDigitalSignature:v78];
LABEL_137:
              v36 = v83;
LABEL_140:

              v32 = 0x1E7F04000;
              v31 = v94;
              goto LABEL_50;
          }

          v80 = ne_log_obj();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v75;
            v84 = "Unexpected hash protocol %@ when selecting RSA-PSS protocol";
LABEL_152:
            _os_log_fault_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_FAULT, v84, buf, 0xCu);
          }
        }

        else
        {
          if (![(NEIKEv2AuthenticationProtocol *)v70 isECDSA])
          {
            v80 = ne_log_obj();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
            {
              v81 = v3[14];
              *buf = 138412546;
              *&buf[4] = v70;
              v103 = 2112;
              v104 = v81;
              _os_log_fault_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_FAULT, "Unable to determine authentication protocol to use, configured %@ hashes %@", buf, 0x16u);
            }

            goto LABEL_139;
          }

          if (!v75)
          {
            v82 = ne_log_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_INFO, "Unable to find acceptable hash algorithm for generating ECDSA signature", buf, 2u);
            }

            v83 = v70;
            goto LABEL_137;
          }

          v79 = [v75 hashType];
          switch(v79)
          {
            case 4:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 8;
              goto LABEL_136;
            case 3:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 7;
              goto LABEL_136;
            case 2:
              v77 = [NEIKEv2AuthenticationProtocol alloc];
              v78 = 2;
              goto LABEL_136;
          }

          v80 = ne_log_obj();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v75;
            v84 = "Unexpected hash protocol %@ when selecting ECDSA protocol";
            goto LABEL_152;
          }
        }

LABEL_139:

        v36 = 0;
        goto LABEL_140;
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }

      v46 = ne_log_obj();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        LODWORD(error[0]) = 67109120;
        HIDWORD(error[0]) = v30;
        _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, "SecIdentityCopyPrivateKey (%d) failed", error, 8u);
      }
    }

    else
    {
      v46 = ne_log_obj();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "[self copyLocalSecIdentity]", buf, 2u);
      }
    }

    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_67:

      goto LABEL_68;
    }

    *buf = 0;
    v18 = "[self copyCertSigningKey] failed";
    goto LABEL_88;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2IKESA(Crypto) copyAuthenticationPayloadUsingPrimeKey:]";
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null self.chosenProposal", buf, 0xCu);
  }

  v8 = 0;
LABEL_76:

  v47 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)checkSharedKeyAuthData:(const char *)a3 usingPrimeKey:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (a1)
  {
    if (v5)
    {
      v8 = objc_getProperty(a1, v6, 96, 1);

      if (v8)
      {
        v10 = [(NEIKEv2IKESA *)a1 remoteAuthentication];
        v11 = v10;
        if (v10)
        {
          if (([v10 isSignature]& 1) == 0 && ![v11 isSecurePassword])
          {
            v16 = [(NEIKEv2IKESA *)a1 createRemoteSignedOctetVectorUsingPrimeKey:a3];
            if (!v16)
            {
              v19 = ne_log_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                LOWORD(v30) = 0;
                _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "[self createRemoteSignedOctetVectorUsingPrimeKey:] failed", &v30, 2u);
              }

              v12 = 0;
              goto LABEL_39;
            }

            v12 = v16;
            if ([v11 method]== 2)
            {
              v18 = [(NEIKEv2IKESA *)a1 sharedSecret];
            }

            else
            {
              if ([v11 method]!= 13)
              {
LABEL_36:
                v27 = ne_log_obj();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  v30 = 136315138;
                  v31 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
                  _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, "%s called with null sharedSecret", &v30, 0xCu);
                }

                goto LABEL_39;
              }

              if (*(a1 + 9))
              {
                v21 = a1;
                if (a3)
                {
                  v22 = 256;
                }

                else
                {
                  v22 = 248;
                }
              }

              else
              {
                v21 = a1;
                if (a3)
                {
                  v22 = 240;
                }

                else
                {
                  v22 = 232;
                }
              }

              v18 = objc_getProperty(v21, v20, v22, 1);
            }

            v24 = v18;
            if (v18)
            {
              v25 = [(NEIKEv2IKESA *)a1 createAuthenticationDataForSharedSecret:v18 octetVector:v12];
              if (v25)
              {
                a1 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v25 remoteAuthData:v7];
              }

              else
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
                {
                  LOWORD(v30) = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret: failed", &v30, 2u);
                }

                a1 = 0;
              }

              goto LABEL_40;
            }

            goto LABEL_36;
          }

          v12 = ne_log_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
LABEL_39:
            a1 = 0;
LABEL_40:

            goto LABEL_41;
          }

          LOWORD(v30) = 0;
          v13 = "Do not call checkSharedKeyAuthData with signature/GSPM auth";
          v14 = v12;
          v15 = 2;
        }

        else
        {
          v12 = ne_log_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_39;
          }

          v30 = 136315138;
          v31 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
          v13 = "%s called with null authentication";
          v14 = v12;
          v15 = 12;
        }

        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v13, &v30, v15);
        goto LABEL_39;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_10:
        a1 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v30 = 136315138;
      v31 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
      v23 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      v30 = 136315138;
      v31 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
      v23 = "%s called with null authenticationData";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v23, &v30, 0xCu);
    goto LABEL_10;
  }

LABEL_42:

  v28 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t __45__NEIKEv2IKESA_Crypto__copyValidateAuthBlock__block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  v6 = v5;
  if (!WeakRetained)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v7 = [v5 remoteAuthentication];

  if (!v7)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v57 = 136315138;
      v58 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null authCheckConfig.remoteAuthentication", &v57, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = WeakRetained[47];
  if (!v8)
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      v57 = 136315138;
      v58 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_FAULT, "%s called with null packetAuthentication", &v57, 0xCu);
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v6 remoteAuthentication];
  v11 = [NEIKEv2Crypto isRemoteAuthenticationPacketProtocol:v9 compatibleWithConfiguredProtocol:v10];

  if ((v11 & 1) == 0)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    v19 = [v6 remoteAuthentication];
    v57 = 138412546;
    v58 = v19;
    v59 = 2112;
    v60 = v9;
    v25 = "Auth protocols are not compatible between config %@ and packet %@";
    v26 = v13;
    v27 = 22;
    goto LABEL_52;
  }

  if (([v9 isSecurePassword]& 1) == 0)
  {
    v16 = WeakRetained[48];
    if (!v16)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v57 = 136315138;
        v58 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null authenticationData", &v57, 0xCu);
      }

      goto LABEL_10;
    }

    v13 = v16;
    if ((WeakRetained[3] & 1) == 0)
    {
      goto LABEL_28;
    }

    if (WeakRetained[53])
    {
      if ([v6 ppkIDType] == 2)
      {
        v17 = [v6 ppkID];

        if (!v17)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v57 = 136315138;
            v58 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
            _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "%s called with null authCheckConfig.ppkID", &v57, 0xCu);
          }

          goto LABEL_70;
        }
      }

      v18 = [v6 ppkIDType];
      v19 = [v6 ppkID];
      if (WeakRetained[53] == v18)
      {
        v20 = WeakRetained[54];
        if ([v20 length] || -[NSObject length](v19, "length"))
        {
          v21 = WeakRetained[54];
          v22 = [v21 isEqualToData:v19];

          if ((v22 & 1) == 0)
          {
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = WeakRetained[54];
              v57 = 138412546;
              v58 = v24;
              v59 = 2112;
              v60 = v19;
              _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "PPK ID %@ != Expected %@", &v57, 0x16u);
            }

LABEL_48:

            if ([v6 ppkMandatory])
            {
              v42 = ne_log_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v57) = 0;
                v43 = "Wrong PPK ID received with mandatory PPK auth";
LABEL_77:
                _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, v43, &v57, 2u);
                goto LABEL_69;
              }

              goto LABEL_69;
            }

            v44 = WeakRetained[49];

            v45 = ne_log_obj();
            v42 = v45;
            if (!v44)
            {
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v57) = 0;
                v43 = "Wrong PPK ID received and no non-PPK AUTH data received";
                goto LABEL_77;
              }

LABEL_69:

              goto LABEL_70;
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v57) = 0;
              _os_log_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_DEFAULT, "Wrong PPK ID received, falling back to non-PPK AUTH data", &v57, 2u);
            }

            v46 = WeakRetained[49];
            v28 = 0;
            v13 = v46;
            goto LABEL_75;
          }
        }

        else
        {
        }

        v42 = [NEIKEv2IKESA copyPPKFromConfig:v6];
        if (v42)
        {
          if (([(NEIKEv2IKESA *)WeakRetained generateDerivativesFromPPK:v42]& 1) != 0)
          {

            v28 = 1;
LABEL_75:

LABEL_29:
            v29 = [(NEIKEv2IKESA *)WeakRetained createRemoteSignedOctetVectorUsingPrimeKey:?];
            if (!v29)
            {
              v53 = ne_log_obj();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
              {
                v57 = 136315138;
                v58 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
                _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, "%s called with null remoteSignedOctetVector", &v57, 0xCu);
              }

              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
              LOBYTE(v57) = 0;
              goto LABEL_65;
            }

            v30 = v9;
            v31 = [v6 remoteAuthentication];
            v32 = [v31 isNonStandard];

            if (v32)
            {
              v33 = [v6 remoteAuthentication];

              v30 = v33;
            }

            if ([v30 isSignature])
            {
              v34 = [(NEIKEv2SessionConfiguration *)v6 copyRemoteAuthKey];
              if (v34)
              {
                v35 = v34;
                v36 = [NEIKEv2Crypto validateSignature:v13 signedDataVector:v29 authProtocol:v30 publicKey:v34];
                CFRelease(v35);
                if (v36)
                {
                  v38 = 1;
                  *(WeakRetained + 18) = 1;
                  if (v28)
                  {
                    *(WeakRetained + 19) = 1;
                  }

                  goto LABEL_45;
                }

                if (!v28)
                {
LABEL_44:
                  v38 = 0;
LABEL_45:
                  LOBYTE(v57) = v38;
LABEL_64:

LABEL_65:
                  v12 = v57;
                  goto LABEL_12;
                }
              }

              else
              {
                v55 = ne_log_obj();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
                {
                  LOWORD(v57) = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_FAULT, "Responder configuration is missing remote public key", &v57, 2u);
                }
              }

              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
              goto LABEL_44;
            }

            if ([v30 method]== 2)
            {
              v39 = [NEIKEv2IKESA copySharedSecretFromConfig:v6];
            }

            else
            {
              if ([v30 method]!= 13)
              {
                v41 = 0;
                goto LABEL_58;
              }

              v39 = objc_getProperty(WeakRetained, v40, 232, 1);
            }

            v41 = v39;
LABEL_58:
            v47 = [(NEIKEv2IKESA *)WeakRetained createAuthenticationDataForSharedSecret:v41 octetVector:v29];
            v48 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v47 remoteAuthData:v13];
            v50 = v48;
            if (v48)
            {
              *(WeakRetained + 18) = 1;
              if (v28)
              {
                *(WeakRetained + 19) = 1;
              }
            }

            else if (v28)
            {
              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
            }

            LOBYTE(v57) = v50;

            goto LABEL_64;
          }

          v56 = ne_log_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = 138412290;
            v58 = WeakRetained;
            _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "%@ Failed to generate PPK-derived keys", &v57, 0xCu);
          }
        }

        else
        {
          v56 = ne_log_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v57) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_FAULT, "PPK use negotiated but PPK not present in configuration", &v57, 2u);
          }
        }

        goto LABEL_69;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v51 = WeakRetained[53];
        v57 = 134218240;
        v58 = v51;
        v59 = 2048;
        v60 = v18;
        _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "PPK Type %zu != Expected Type %zu", &v57, 0x16u);
      }

      goto LABEL_48;
    }

    if (![v6 ppkMandatory])
    {
LABEL_28:
      v28 = 0;
      goto LABEL_29;
    }

    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_70:

      goto LABEL_10;
    }

    LOWORD(v57) = 0;
    v25 = "No PPK ID received with mandatory PPK auth";
    v26 = v19;
    v27 = 2;
LABEL_52:
    _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v25, &v57, v27);
    goto LABEL_70;
  }

  v12 = 1;
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (NSObject)createInitiatorEAPAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  v2 = self;
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 456, 1);

    if (v4)
    {
      v6 = objc_getProperty(v2, v5, 96, 1);

      if (v6)
      {
        v8 = [(NEIKEv2IKESA *)&v2->isa createInitiatorSignedOctetVectorUsingPrimeKey:a2];
        if (v8)
        {
          v9 = objc_getProperty(v2, v7, 456, 1);
          v10 = [(NEIKEv2EAP *)v9 sessionKey];

          if (v10)
          {
LABEL_11:
            v14 = [(NEIKEv2IKESA *)v2 createAuthenticationDataForSharedSecret:v10 octetVector:v8];
            if (v14)
            {
              v2 = v14;
LABEL_25:

              goto LABEL_26;
            }

            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              LOWORD(v20) = 0;
              _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret failed", &v20, 2u);
            }

LABEL_24:
            v2 = 0;
            goto LABEL_25;
          }

          if (a2)
          {
            v12 = 240;
          }

          else
          {
            v12 = 232;
          }

          v13 = objc_getProperty(v2, v11, v12, 1);
          if (v13)
          {
            v10 = v13;
            goto LABEL_11;
          }

          v10 = ne_log_obj();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_24;
          }

          LOWORD(v20) = 0;
          v16 = "skPi failed";
        }

        else
        {
          v10 = ne_log_obj();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_24;
          }

          LOWORD(v20) = 0;
          v16 = "createInitiatorSignedOctetVectorUsingPrimeKey: failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v16, &v20, 2u);
        goto LABEL_24;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_16:
        v2 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v20 = 136315138;
      v21 = "[NEIKEv2IKESA(Crypto) createInitiatorEAPAuthenticationDataUsingPrimeKey:]";
      v15 = "%s called with null self.chosenProposal";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      v20 = 136315138;
      v21 = "[NEIKEv2IKESA(Crypto) createInitiatorEAPAuthenticationDataUsingPrimeKey:]";
      v15 = "%s called with null self.eapClient";
    }

    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v15, &v20, 0xCu);
    goto LABEL_16;
  }

LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSObject)createInitiatorGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  v2 = self;
  v42 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 464, 1);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v9 = objc_getProperty(v2, v8, 96, 1);

      if (v9)
      {
        v11 = [(NEIKEv2IKESA *)&v2->isa createInitiatorSignedOctetVectorUsingPrimeKey:a2];
        if (!v11)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v40) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createInitiatorSignedOctetVectorUsingPrimeKey failed", &v40, 2u);
          }

          v2 = 0;
          goto LABEL_23;
        }

        v12 = BYTE1(v2[1].isa);
        v13 = objc_getProperty(v2, v10, 464, 1);
        v14 = v13;
        if (v12)
        {
          v15 = [(NEIKEv2GSPM *)v13 createLocalSignedOctetVector];
        }

        else
        {
          v15 = [(NEIKEv2GSPM *)v13 createRemoteSignedOctetVector];
        }

        v17 = v15;

        if (!v17)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v40) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "createInitiatorSignedOctetVector(GSPM) failed", &v40, 2u);
          }

          goto LABEL_37;
        }

        if (a2)
        {
          v19 = 240;
        }

        else
        {
          v19 = 232;
        }

        v20 = objc_getProperty(v2, v18, v19, 1);
        v22 = objc_getProperty(v2, v21, 96, 1);
        v24 = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
        v25 = [NEIKEv2Crypto createHMACFromDataVector:v17 key:v20 prfProtocol:v24];

        if (v25)
        {
          v26 = [v11 arrayByAddingObject:v25];
          v28 = objc_getProperty(v2, v27, 464, 1);
          v29 = v28;
          if (v28)
          {
            v30 = *(v28 + 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v33 = objc_getProperty(v2, v32, 96, 1);
          v35 = [(NEIKEv2IKESAProposal *)v33 prfProtocol];
          v2 = [NEIKEv2Crypto createHMACFromDataVector:v26 key:v31 prfProtocol:v35];

          if (v2)
          {
            goto LABEL_22;
          }

          v38 = ne_log_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_36;
          }

          LOWORD(v40) = 0;
          v39 = "createAuthenticationDataForSharedSecret failed";
        }

        else
        {
          v38 = ne_log_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
LABEL_36:

LABEL_37:
            v2 = 0;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          LOWORD(v40) = 0;
          v39 = "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_FAULT, v39, &v40, 2u);
        goto LABEL_36;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_12:
        v2 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v40 = 136315138;
      v41 = "[NEIKEv2IKESA(Crypto) createInitiatorGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v40 = 136315138;
      v41 = "[NEIKEv2IKESA(Crypto) createInitiatorGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.gspmHandler.sessionKey";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v16, &v40, 0xCu);
    goto LABEL_12;
  }

LABEL_25:
  v36 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSObject)createResponderGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  v2 = self;
  v42 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 464, 1);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v9 = objc_getProperty(v2, v8, 96, 1);

      if (v9)
      {
        v11 = [(NEIKEv2IKESA *)v2 createResponderSignedOctetVectorUsingPrimeKey:a2];
        if (!v11)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v40) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createResponderSignedOctetVectorUsingPrimeKey failed", &v40, 2u);
          }

          v2 = 0;
          goto LABEL_23;
        }

        v12 = BYTE1(v2[1].isa);
        v13 = objc_getProperty(v2, v10, 464, 1);
        v14 = v13;
        if (v12)
        {
          v15 = [(NEIKEv2GSPM *)v13 createRemoteSignedOctetVector];
        }

        else
        {
          v15 = [(NEIKEv2GSPM *)v13 createLocalSignedOctetVector];
        }

        v17 = v15;

        if (!v17)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v40) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "createResponderSignedOctetVector(GSPM) failed", &v40, 2u);
          }

          goto LABEL_37;
        }

        if (a2)
        {
          v19 = 256;
        }

        else
        {
          v19 = 248;
        }

        v20 = objc_getProperty(v2, v18, v19, 1);
        v22 = objc_getProperty(v2, v21, 96, 1);
        v24 = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
        v25 = [NEIKEv2Crypto createHMACFromDataVector:v17 key:v20 prfProtocol:v24];

        if (v25)
        {
          v26 = [v11 arrayByAddingObject:v25];
          v28 = objc_getProperty(v2, v27, 464, 1);
          v29 = v28;
          if (v28)
          {
            v30 = *(v28 + 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v33 = objc_getProperty(v2, v32, 96, 1);
          v35 = [(NEIKEv2IKESAProposal *)v33 prfProtocol];
          v2 = [NEIKEv2Crypto createHMACFromDataVector:v26 key:v31 prfProtocol:v35];

          if (v2)
          {
            goto LABEL_22;
          }

          v38 = ne_log_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_36;
          }

          LOWORD(v40) = 0;
          v39 = "createAuthenticationDataForSharedSecret failed";
        }

        else
        {
          v38 = ne_log_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
LABEL_36:

LABEL_37:
            v2 = 0;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          LOWORD(v40) = 0;
          v39 = "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_FAULT, v39, &v40, 2u);
        goto LABEL_36;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_12:
        v2 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v40 = 136315138;
      v41 = "[NEIKEv2IKESA(Crypto) createResponderGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v40 = 136315138;
      v41 = "[NEIKEv2IKESA(Crypto) createResponderGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.gspmHandler.sessionKey";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v16, &v40, 0xCu);
    goto LABEL_12;
  }

LABEL_25:
  v36 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)createConcatenatedSPIsAndReturnError:(_BYTE *)a1
{
  v4 = [(NEIKEv2IKESA *)a1 initiatorSPI];
  v5 = [v4 value];

  v22 = v5;
  v7 = [(NEIKEv2IKESA *)a1 responderSPI];
  v8 = [v7 value];

  v21 = v8;
  if (!v5)
  {
    v18 = @"Missing initiator SPI";
LABEL_7:
    ErrorInternal = NEIKEv2CreateErrorInternal(v18, v9, v10, v11, v12, v13, v14, v15, v21);
    v20 = *a2;
    *a2 = ErrorInternal;

    return 0;
  }

  if (!v8)
  {
    v18 = @"Missing responder SPI";
    goto LABEL_7;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{16, v21, v22}];
  [v16 appendBytes:&v22 length:8];
  [v16 appendBytes:&v21 length:8];
  return v16;
}

- (void)createConcatedNoncesAndReturnError:(_BYTE *)a1
{
  v4 = [(NEIKEv2IKESA *)a1 initiatorNonce];
  v6 = [(NEIKEv2IKESA *)a1 responderNonce];
  if (![v4 length])
  {
    v16 = @"Missing initiator nonce";
LABEL_7:
    ErrorInternal = NEIKEv2CreateErrorInternal(v16, v7, v8, v9, v10, v11, v12, v13, v19);
    v18 = *a2;
    *a2 = ErrorInternal;

    v14 = 0;
    goto LABEL_4;
  }

  if (![v6 length])
  {
    v16 = @"Missing responder nonce";
    goto LABEL_7;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v4, "length")}];
  [v14 appendData:v4];
  [v14 appendData:v6];
LABEL_4:

  return v14;
}

- (NEIKEv2AuthenticationProtocol)selectSecurePasswordMethod:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v3, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 supportedSecurePasswordMethods];

  if ([v7 count])
  {
    if (v4)
    {
      v9 = objc_getProperty(v4, v8, 40, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v10 length];
    v12 = v11;
    if (v11)
    {
      if (v11)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = 134217984;
          v20 = v12;
          _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Secure password methods data length %zu is not divisible by sizeof(uint16_t)", &v19, 0xCu);
        }

        v12 = 0;
      }

      else
      {
        v13 = v11 >> 1;
        v14 = [v10 bytes];
        while (1)
        {
          v15 = *v14++;
          v12 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:bswap32(v15) >> 16];
          if ([v7 containsObject:v12])
          {
            break;
          }

          if (!--v13)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v12;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Found supported %@ in notify", &v19, 0xCu);
        }
      }
    }

LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_large_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        Property = objc_getProperty(self, v5, 32, 1);
      }

      else
      {
        Property = 0;
      }

      *buf = 138412290;
      v21 = Property;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Deallocating ikeSA %@", buf, 0xCu);
    }
  }

  if (self)
  {
    v6 = objc_getProperty(self, v3, 472, 1);
    v8 = objc_getProperty(self, v7, 32, 1);
    [(NEIKEv2Transport *)v6 cancelClient:v8 shouldInvalidate:0];

    v10 = objc_getProperty(self, v9, 480, 1);
    v12 = objc_getProperty(self, v11, 32, 1);
  }

  else
  {
    [(NEIKEv2Transport *)0 cancelClient:0 shouldInvalidate:?];
    v10 = 0;
    v12 = 0;
  }

  [(NEIKEv2Transport *)v10 cancelClient:v12 shouldInvalidate:0];

  if (self)
  {
    v14 = objc_getProperty(self, v13, 488, 1);
    v16 = objc_getProperty(self, v15, 32, 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  [(NEIKEv2Transport *)v14 cancelClient:v16 shouldInvalidate:0];

  v19.receiver = self;
  v19.super_class = NEIKEv2IKESA;
  [(NEIKEv2IKESA *)&v19 dealloc];
  v17 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = [(NEIKEv2IKESA *)self initiatorSPI];
  v5 = [(NEIKEv2IKESA *)self responderSPI];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    ikeSAUniqueIndex = self->_ikeSAUniqueIndex;
    ikeSessionUniqueIndex = self->_ikeSessionUniqueIndex;
  }

  else
  {
    ikeSAUniqueIndex = 0;
    ikeSessionUniqueIndex = 0;
  }

  v9 = @"0000000000000000";
  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = @"0000000000000000";
  }

  if (v5)
  {
    v9 = v5;
  }

  v11 = [v6 initWithFormat:@"IKEv2IKESA[%llu.%llu, %@-%@]", ikeSAUniqueIndex, ikeSessionUniqueIndex, v10, v9];

  return v11;
}

- (_BYTE)initiatorSPI
{
  if (a1)
  {
    if (a1[9])
    {
      v3 = 32;
    }

    else
    {
      v3 = 40;
    }

    a1 = objc_getProperty(a1, a2, v3, 1);
    v2 = vars8;
  }

  return a1;
}

- (_BYTE)responderSPI
{
  if (a1)
  {
    if (a1[9])
    {
      v3 = 40;
    }

    else
    {
      v3 = 32;
    }

    a1 = objc_getProperty(a1, a2, v3, 1);
    v2 = vars8;
  }

  return a1;
}

- (id)initIKESACommonWithConfiguration:(void *)a3 sessionConfiguration:(void *)a4 queue:(void *)a5 transportDelegate:(void *)a6 socketGetBlock:(void *)a7 packetDelegate:(void *)a8 configurationDelegate:(uint64_t)a9 ikeSessionUniqueIndex:(char)a10 isInitiator:
{
  v40 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  newValue = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (!a1)
  {
    v25 = 0;
    goto LABEL_8;
  }

  if (v17)
  {
    v37.receiver = a1;
    v37.super_class = NEIKEv2IKESA;
    v23 = [(NEIKEv2SPI *)&v37 init];
    if (v23)
    {
      v25 = v23;
      objc_setProperty_atomic(v23, v24, newValue, 544);
      *(v25 + 74) = atomic_fetch_add_explicit(&sNEIKEv2IKESAIndex, 1uLL, memory_order_relaxed);
      *(v25 + 73) = a9;
      objc_setProperty_atomic(v25, v26, v17, 80);
      objc_setProperty_atomic(v25, v27, v18, 88);
      objc_storeWeak(v25 + 69, v19);
      objc_setProperty_atomic_copy(v25, v28, v20, 560);
      objc_storeWeak(v25 + 71, v21);
      if (v21)
      {
        *(v25 + 25) = 1;
      }

      objc_storeWeak(v25 + 72, v22);
      v29 = [v17 outgoingInterfaceName];
      objc_setProperty_atomic(v25, v30, v29, 304);

      *(v25 + 6) = 3;
      objc_setProperty_atomic(v25, v31, 0, 56);
      *(v25 + 9) = a10;
      a1 = objc_alloc_init(NEIKEv2IKESPI);
      objc_setProperty_atomic(v25, v32, a1, 32);
      goto LABEL_7;
    }

    a1 = ne_log_obj();
    if (os_log_type_enabled(&a1->super.super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, &a1->super.super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v39 = "[NEIKEv2IKESA initIKESACommonWithConfiguration:sessionConfiguration:queue:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:isInitiator:]";
      _os_log_fault_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_FAULT, "%s called with null configuration", buf, 0xCu);
    }
  }

  v25 = 0;
LABEL_7:

LABEL_8:
  v33 = *MEMORY[0x1E69E9840];
  return v25;
}

- (uint64_t)copyAddressFrom:(unsigned __int8 *)a1 with:(unsigned int)a2
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
      v9 = "%s called with null address";
      goto LABEL_15;
    }

LABEL_13:

    v4 = 0;
    goto LABEL_7;
  }

  v3 = *a1;
  if (v3 <= 0xF)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
      v9 = "%s called with null (address->sa_len >= sizeof(struct sockaddr_in))";
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v3 >= 0x81)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
    v9 = "%s called with null (address->sa_len <= sizeof(struct sockaddr_storage))";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v9, buf, 0xCu);
    goto LABEL_13;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *buf = 0u;
  v13 = 0u;
  __memcpy_chk();
  *&buf[2] = __rev16(a2);
  v4 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "copyAddressFrom created %@", &v10, 0xCu);
  }

LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)preferredKEMProtocol
{
  if (objc_getProperty(a1, a2, 144, 1))
  {
    v4 = objc_getProperty(a1, v3, 144, 1);
LABEL_3:
    v5 = v4;
    goto LABEL_8;
  }

  v6 = objc_getProperty(a1, v3, 96, 1);
  if (v6)
  {
    v8 = v6;
    Property = objc_getProperty(a1, v7, 96, 1);
    v11 = [(NEIKEv2IKESAProposal *)Property kemProtocol];

    if (v11)
    {
      v12 = objc_getProperty(a1, v7, 96, 1);
      v4 = [(NEIKEv2IKESAProposal *)v12 kemProtocol];
      goto LABEL_3;
    }
  }

  v14 = [objc_getProperty(a1 v7];
  v15 = [v14 firstObject];
  v5 = [(NEIKEv2IKESAProposal *)v15 kemProtocol];

LABEL_8:

  return v5;
}

- (_BYTE)copyForRekeyAsInitiator:(uint64_t)a1
{
  v68 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 568));
  v5 = objc_loadWeakRetained((a1 + 552));
  v6 = [NEIKEv2IKESA alloc];
  v8 = objc_getProperty(a1, v7, 80, 1);
  v10 = objc_getProperty(a1, v9, 88, 1);
  v12 = objc_getProperty(a1, v11, 544, 1);
  v14 = objc_getProperty(a1, v13, 560, 1);
  v15 = objc_loadWeakRetained((a1 + 576));
  v16 = [(NEIKEv2IKESA *)v6 initIKESACommonWithConfiguration:v8 sessionConfiguration:v10 queue:v12 transportDelegate:v5 socketGetBlock:v14 packetDelegate:WeakRetained configurationDelegate:v15 ikeSessionUniqueIndex:*(a1 + 584) isInitiator:a2];

  if (v16)
  {
    Property = objc_getProperty(a1, v17, 472, 1);
    objc_setProperty_atomic(v16, v19, Property, 472);
    v21 = objc_getProperty(a1, v20, 480, 1);
    objc_setProperty_atomic(v16, v22, v21, 480);
    v24 = objc_getProperty(a1, v23, 488, 1);
    objc_setProperty_atomic(v16, v25, v24, 488);
    v27 = objc_getProperty(v16, v26, 472, 1);
    v29 = objc_getProperty(v16, v28, 32, 1);
    [(NEIKEv2Transport *)v27 addClient:v29 delegate:v5];

    v31 = objc_getProperty(v16, v30, 480, 1);
    v33 = objc_getProperty(v16, v32, 32, 1);
    [(NEIKEv2Transport *)v31 addClient:v33 delegate:v5];

    v35 = objc_getProperty(v16, v34, 488, 1);
    v37 = objc_getProperty(v16, v36, 32, 1);
    [(NEIKEv2Transport *)v35 addClient:v37 delegate:v5];

    v39 = objc_getProperty(a1, v38, 304, 1);
    objc_setProperty_atomic(v16, v40, v39, 304);
    v42 = objc_getProperty(a1, v41, 64, 1);
    objc_setProperty_atomic(v16, v43, v42, 64);
    v45 = objc_getProperty(a1, v44, 72, 1);
    objc_setProperty_atomic(v16, v46, v45, 72);
    v16[10] = *(a1 + 10) & 1;
    v16[11] = *(a1 + 11) & 1;
    v16[12] = *(a1 + 12) & 1;
    v16[13] = *(a1 + 13) & 1;
    v16[15] = *(a1 + 15) & 1;
    v16[14] = *(a1 + 14) & 1;
    v48 = objc_getProperty(a1, v47, 496, 1);
    objc_setProperty_atomic(v16, v49, v48, 496);
    v16[18] = *(a1 + 18) & 1;
    v16[19] = *(a1 + 19) & 1;
    v16[20] = *(a1 + 20) & 1;
    v51 = objc_getProperty(a1, v50, 96, 1);
    objc_setProperty_atomic(v16, v52, v51, 96);
    v54 = objc_getProperty(a1, v53, 144, 1);
    objc_setProperty_atomic(v16, v55, v54, 144);
    v57 = objc_getProperty(a1, v56, 504, 1);
    objc_setProperty_atomic(v16, v58, v57, 504);
    v59 = ne_log_large_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v65 = v16;
      v66 = 2112;
      v67 = a1;
      _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_INFO, "Created %@ for rekey from %@", buf, 0x16u);
    }

    v60 = v16;
  }

  else
  {
    v63 = ne_log_obj();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_ERROR, "[[NEIKEv2IKESA alloc] initIKESAWithConfiguration]", buf, 2u);
    }
  }

  v61 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)detachTransportWithShouldInvalidate:(void *)a1
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = a1;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating transports for %@", &v22, 0xCu);
    }

    v6 = objc_getProperty(a1, v5, 472, 1);
    Property = objc_getProperty(a1, v7, 32, 1);
    [(NEIKEv2Transport *)v6 cancelClient:a2 shouldInvalidate:?];

    v10 = objc_getProperty(a1, v9, 480, 1);
    v12 = objc_getProperty(a1, v11, 32, 1);
    [(NEIKEv2Transport *)v10 cancelClient:v12 shouldInvalidate:a2];

    v14 = objc_getProperty(a1, v13, 488, 1);
    v16 = objc_getProperty(a1, v15, 32, 1);
    [(NEIKEv2Transport *)v14 cancelClient:v16 shouldInvalidate:a2];

    objc_setProperty_atomic(a1, v17, 0, 472);
    objc_setProperty_atomic(a1, v18, 0, 480);
    objc_setProperty_atomic(a1, v19, 0, 488);
    objc_setProperty_atomic(a1, v20, 0, 64);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)clearPostAuthenticationData
{
  if (a1)
  {
    objc_setProperty_atomic(a1, a2, 0, 312);
    objc_setProperty_atomic(a1, v3, 0, 320);
    objc_storeStrong(a1 + 41, 0);
    objc_storeStrong(a1 + 42, 0);
    objc_setProperty_atomic(a1, v4, 0, 512);
    objc_setProperty_atomic(a1, v5, 0, 192);
    objc_setProperty_atomic(a1, v6, 0, 200);
    objc_setProperty_atomic(a1, v7, 0, 232);
    objc_setProperty_atomic(a1, v8, 0, 248);
    objc_setProperty_atomic(a1, v9, 0, 224);
    objc_setProperty_atomic(a1, v10, 0, 240);
    objc_setProperty_atomic(a1, v11, 0, 256);
    objc_setProperty_atomic(a1, v12, 0, 264);
    objc_setProperty_atomic(a1, v13, 0, 520);
    objc_setProperty_atomic(a1, v14, 0, 528);
    objc_setProperty_atomic(a1, v15, 0, 536);
    objc_setProperty_atomic(a1, v16, 0, 456);
    objc_setProperty_atomic(a1, v17, 0, 464);
    objc_storeStrong(a1 + 43, 0);
    objc_storeStrong(a1 + 44, 0);
    objc_storeStrong(a1 + 46, 0);
    objc_storeStrong(a1 + 47, 0);
    objc_storeStrong(a1 + 48, 0);
    objc_storeStrong(a1 + 49, 0);
    objc_storeStrong(a1 + 50, 0);
    objc_storeStrong(a1 + 51, 0);
    objc_storeStrong(a1 + 52, 0);

    objc_storeStrong(a1 + 54, 0);
  }
}

- (void)setResponderIdentifierPayload:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 336), a2);
  }
}

- (void)setAuthProtocolFromPacket:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 376), a2);
  }
}

- (void)setPrimeAuthenticationDataFromPacket:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 392), a2);
  }
}

- (void)setPpkIDFromPacket:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 432), a2);
  }
}

- (void)setState:(void *)a3 error:
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a1)
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 48);
  Property = objc_getProperty(a1, v5, 56, 1);
  v9 = ne_log_obj();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 != a2)
  {
    if (v6 | Property)
    {
      if (v10)
      {
        SessionStateString = NEIKEv2CreateSessionStateString(*(a1 + 48));
        v14 = NEIKEv2CreateSessionStateString(a2);
        v23 = 138413314;
        v24 = a1;
        v25 = 2112;
        v26 = SessionStateString;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = objc_getProperty(a1, v15, 56, 1);
        v31 = 2112;
        v32 = v6;
        v16 = "%@ state %@ -> %@ error %@ -> %@";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, v16, &v23, v18);
      }
    }

    else if (v10)
    {
      SessionStateString = NEIKEv2CreateSessionStateString(*(a1 + 48));
      v14 = NEIKEv2CreateSessionStateString(a2);
      v23 = 138412802;
      v24 = a1;
      v25 = 2112;
      v26 = SessionStateString;
      v27 = 2112;
      v28 = v14;
      v16 = "%@ state %@ -> %@";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }

    *(a1 + 48) = a2;
    objc_setProperty_atomic(a1, v21, v6, 56);
    *(a1 + 8) = 1;
    goto LABEL_18;
  }

  if (!v6 || Property)
  {
    if (v10)
    {
      v19 = NEIKEv2CreateSessionStateString(a2);
      v23 = 138413058;
      v24 = a1;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = objc_getProperty(a1, v20, 56, 1);
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ not changing state %@ nor error %@ -> %@", &v23, 0x2Au);
    }
  }

  else
  {
    if (v10)
    {
      v11 = NEIKEv2CreateSessionStateString(a2);
      v23 = 138412802;
      v24 = a1;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ not changing state %@ but new error %@", &v23, 0x20u);
    }

    objc_setProperty_atomic(a1, v12, v6, 56);
  }

LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)assignRemoteSPI:(void *)a1
{
  _cmd = a2;
  objc_setProperty_atomic(a1, v3, _cmd, 40);
  if (objc_getProperty(a1, v4, 472, 1))
  {
    v6 = objc_getProperty(a1, v5, 472, 1);
    Property = objc_getProperty(a1, v7, 32, 1);
    [(NEIKEv2Transport *)v6 setRemoteSPI:Property forClient:?];
  }

  if (objc_getProperty(a1, v5, 480, 1))
  {
    v10 = objc_getProperty(a1, v9, 480, 1);
    v12 = objc_getProperty(a1, v11, 32, 1);
    [(NEIKEv2Transport *)v10 setRemoteSPI:v12 forClient:?];
  }

  v13 = objc_getProperty(a1, v9, 488, 1);
  v14 = _cmd;
  if (v13)
  {
    v15 = objc_getProperty(a1, _cmd, 488, 1);
    v17 = objc_getProperty(a1, v16, 32, 1);
    [(NEIKEv2Transport *)v15 setRemoteSPI:v17 forClient:?];

    v14 = _cmd;
  }

  return MEMORY[0x1EEE66BB8](v13, v14);
}

- (void)switchToNATTraversalPorts
{
  v43 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 13) & 1) == 0)
  {
    *(a1 + 12) = 1;
    v3 = [objc_getProperty(a1 a2];
    if (v3)
    {
      v5 = v3;
      if (*v3 <= 0xFu)
      {
        v13 = ne_log_obj();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_27;
        }

        *buf = 136315138;
        v42 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
        v39 = "%s called with null (remoteAddress->sa_len >= sizeof(struct sockaddr_in))";
      }

      else
      {
        if ([objc_getProperty(a1 v4])
        {
          v7 = 0;
        }

        else
        {
          v7 = 4500;
        }

        v8 = [objc_getProperty(a1 v6];
        if (v8)
        {
          v9 = v8;
          if (*v8 > 0xFu)
          {
            v10 = *(v5 + 1);
            v11 = __rev16(v10);
            if (v10 == 62465)
            {
              v12 = 4500;
            }

            else
            {
              v12 = v11;
            }

            v13 = [NEIKEv2IKESA copyAddressFrom:v5 with:v12];
            v14 = *(v9 + 1);
            v15 = __rev16(v14);
            if (v14 == 62465)
            {
              v16 = 4500;
            }

            else
            {
              v16 = v15;
            }

            if (v14 == 62465)
            {
              v17 = v7;
            }

            else
            {
              v17 = v15;
            }

            v18 = [NEIKEv2IKESA copyAddressFrom:v9 with:v16];
            if (!objc_getProperty(a1, v19, 480, 1))
            {
              WeakRetained = objc_loadWeakRetained((a1 + 568));
              v23 = objc_loadWeakRetained((a1 + 552));
              if ((*(a1 + 25) & 1) != 0 && !WeakRetained)
              {
                v24 = ne_log_obj();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Cannot create transport for packet delegate, delegate no longer valid", buf, 2u);
                }

                goto LABEL_26;
              }

              v25 = objc_getProperty(a1, v22, 304, 1);
              v27 = objc_getProperty(a1, v26, 544, 1);
              Property = objc_getProperty(a1, v28, 560, 1);
              v30 = [NEIKEv2Transport createTransport:v13 remote:v18 local:v17 localPort:v25 boundInterface:v27 queue:Property socketGetBlock:WeakRetained packetDelegate:?];

              objc_setProperty_atomic(a1, v31, v30, 480);
              v33 = objc_getProperty(a1, v32, 480, 1);
              v35 = objc_getProperty(a1, v34, 32, 1);
              [(NEIKEv2Transport *)v33 addClient:v35 delegate:v23];

              v37 = objc_getProperty(a1, v36, 480, 1);
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __41__NEIKEv2IKESA_switchToNATTraversalPorts__block_invoke;
              v40[3] = &unk_1E7F0B0E8;
              v40[4] = a1;
              [(NEIKEv2Transport *)v37 waitForTransport:v40];
            }

            objc_getProperty(a1, v20, 480, 1);
LABEL_26:

LABEL_27:
            goto LABEL_28;
          }

          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_27;
          }

          *buf = 136315138;
          v42 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
          v39 = "%s called with null (localAddress->sa_len >= sizeof(struct sockaddr_in))";
        }

        else
        {
          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_27;
          }

          *buf = 136315138;
          v42 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
          v39 = "%s called with null localAddress";
        }
      }
    }

    else
    {
      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 136315138;
      v42 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
      v39 = "%s called with null remoteAddress";
    }

    _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, v39, buf, 0xCu);
    goto LABEL_27;
  }

LABEL_28:
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __41__NEIKEv2IKESA_switchToNATTraversalPorts__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 480, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 24, 1);
    }
  }

  v6 = Property;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, v6, 72);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v8, 480, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 16, 1);
    }
  }

  v11 = v9;
  v12 = *(a1 + 32);
  if (v12)
  {
    v14 = v11;
    objc_setProperty_atomic(v12, v11, v11, 64);
    v11 = v14;
  }

  return MEMORY[0x1EEE66BB8](v12, v11);
}

uint64_t __40__NEIKEv2IKESA_switchToTCPEncapsulation__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 488, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 24, 1);
    }
  }

  v6 = Property;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, v6, 72);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v8, 488, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 16, 1);
    }
  }

  v11 = v9;
  v12 = *(a1 + 32);
  if (v12)
  {
    v14 = v11;
    objc_setProperty_atomic(v12, v11, v11, 64);
    v11 = v14;
  }

  return MEMORY[0x1EEE66BB8](v12, v11);
}

- (_BYTE)hasTransport
{
  if (result)
  {
    if (result[13])
    {
      v2 = 488;
    }

    else if (result[12])
    {
      v2 = 480;
    }

    else
    {
      v2 = 472;
    }

    return (objc_getProperty(result, a2, v2, 1) != 0);
  }

  return result;
}

- (void)resyncAddress
{
  if (a1)
  {
    self = [(NEIKEv2IKESA *)a1 copyTransport];
    WeakRetained = objc_loadWeakRetained(a1 + 71);

    v5 = self;
    if (!WeakRetained)
    {
      if (self)
      {
        v6 = objc_getProperty(self, v4, 16, 1);
        objc_setProperty_atomic(a1, v7, v6, 64);

        Property = objc_getProperty(self, v8, 24, 1);
      }

      else
      {
        objc_setProperty_atomic(a1, v4, 0, 64);
        Property = 0;
      }

      v10 = Property;
      objc_setProperty_atomic(a1, v11, v10, 72);

      v5 = self;
    }
  }
}

- (id)copyTransport
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 13) & 1) == 0)
  {
    if (*(self + 12))
    {
      if (!objc_getProperty(self, a2, 480, 1))
      {
        WeakRetained = objc_loadWeakRetained(self + 71);
        v7 = objc_loadWeakRetained(self + 69);
        if ((*(self + 25) & 1) != 0 && !WeakRetained)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v51 = 0;
            v9 = &v51;
LABEL_30:
            _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Cannot create transport for packet delegate, delegate no longer valid", v9, 2u);
            goto LABEL_14;
          }

          goto LABEL_14;
        }

        v14 = [objc_getProperty(self v6];
        v16 = objc_getProperty(self, v15, 72, 1);
        v18 = objc_getProperty(self, v17, 64, 1);
        v20 = objc_getProperty(self, v19, 304, 1);
        v22 = objc_getProperty(self, v21, 544, 1);
        Property = objc_getProperty(self, v23, 560, 1);
        if (v14)
        {
          v25 = 0;
        }

        else
        {
          v25 = 4500;
        }

        v26 = [NEIKEv2Transport createTransport:v16 remote:v18 local:v25 localPort:v20 boundInterface:v22 queue:Property socketGetBlock:WeakRetained packetDelegate:?];

        objc_setProperty_atomic(self, v27, v26, 480);
        v29 = objc_getProperty(self, v28, 480, 1);
        v31 = objc_getProperty(self, v30, 32, 1);
        [(NEIKEv2Transport *)v29 addClient:v31 delegate:v7];
      }

      v3 = objc_getProperty(self, v4, 480, 1);
      goto LABEL_26;
    }

    if (!objc_getProperty(self, a2, 472, 1))
    {
      v11 = objc_loadWeakRetained(self + 71);
      v7 = objc_loadWeakRetained(self + 69);
      if ((*(self + 25) & 1) != 0 && !v11)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v9 = buf;
          goto LABEL_30;
        }

LABEL_14:

        return 0;
      }

      v32 = [objc_getProperty(self v12];
      v34 = objc_getProperty(self, v33, 72, 1);
      v36 = objc_getProperty(self, v35, 64, 1);
      v38 = objc_getProperty(self, v37, 304, 1);
      v40 = objc_getProperty(self, v39, 544, 1);
      v42 = objc_getProperty(self, v41, 560, 1);
      if (v32)
      {
        v43 = 0;
      }

      else
      {
        v43 = 500;
      }

      v44 = [NEIKEv2Transport createTransport:v34 remote:v36 local:v43 localPort:v38 boundInterface:v40 queue:v42 socketGetBlock:v11 packetDelegate:?];

      objc_setProperty_atomic(self, v45, v44, 472);
      v47 = objc_getProperty(self, v46, 472, 1);
      v49 = objc_getProperty(self, v48, 32, 1);
      [(NEIKEv2Transport *)v47 addClient:v49 delegate:v7];
    }

    v3 = objc_getProperty(self, v10, 472, 1);
    goto LABEL_26;
  }

  v3 = objc_getProperty(self, a2, 488, 1);
LABEL_26:

  return v3;
}

- (id)initiatorFirstMessage
{
  if (a1[9])
  {
    v2 = 312;
  }

  else
  {
    v2 = 320;
  }

  v3 = objc_getProperty(a1, a2, v2, 1);

  return v3;
}

- (id)responderFirstMessage
{
  if (a1[9])
  {
    v2 = 320;
  }

  else
  {
    v2 = 312;
  }

  v3 = objc_getProperty(a1, a2, v2, 1);

  return v3;
}

- (id)sharedSecret
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_getProperty(a1, a2, 88, 1))
  {
    if (!objc_getProperty(a1, v3, 528, 1))
    {
      Property = objc_getProperty(a1, v4, 88, 1);
      v6 = [NEIKEv2IKESA copySharedSecretFromConfig:?];
      objc_setProperty_atomic(a1, v7, v6, 528);
    }

    v8 = objc_getProperty(a1, v4, 528, 1);
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315138;
      v13 = "[NEIKEv2IKESA sharedSecret]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)copySharedSecretFromConfig:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "+[NEIKEv2IKESA copySharedSecretFromConfig:]";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null sessionConfiguration", &v14, 0xCu);
    }

    v7 = 0;
LABEL_9:

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 sharedSecretReference];

  if (!v5)
  {
LABEL_7:
    v9 = [v2 sharedSecret];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695DEF0];
    v11 = [v2 sharedSecret];
    v7 = [(NSData *)v10 sensitiveDataWithData:v11];
    goto LABEL_9;
  }

  v6 = [v2 sharedSecretReference];
  v7 = [NEIKEv2Crypto copyDataFromPersistentReference:v6];

  if (!v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve shared secret by reference", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)ppk
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    if (objc_getProperty(a1, a2, 88, 1))
    {
      if (!objc_getProperty(v2, v3, 536, 1))
      {
        Property = objc_getProperty(v2, v4, 88, 1);
        v6 = [NEIKEv2IKESA copyPPKFromConfig:?];
        objc_setProperty_atomic(v2, v7, v6, 536);
      }

      a1 = objc_getProperty(v2, v4, 536, 1);
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v11 = 136315138;
        v12 = "[NEIKEv2IKESA ppk]";
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", &v11, 0xCu);
      }

      a1 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return a1;
}

+ (void)copyPPKFromConfig:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "+[NEIKEv2IKESA copyPPKFromConfig:]";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null sessionConfiguration", &v14, 0xCu);
    }

    v7 = 0;
LABEL_9:

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 ppkReference];

  if (!v5)
  {
LABEL_7:
    v9 = [v2 ppk];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695DEF0];
    v11 = [v2 ppk];
    v7 = [(NSData *)v10 sensitiveDataWithData:v11];
    goto LABEL_9;
  }

  v6 = [v2 ppkReference];
  v7 = [NEIKEv2Crypto copyDataFromPersistentReference:v6];

  if (!v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve PPK by reference", &v14, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)localIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = [objc_getProperty(a1 a2];

    if (v3)
    {
      a1 = [objc_getProperty(v2 v4];
    }

    else
    {
      if (!objc_getProperty(v2, v4, 512, 1))
      {
        v6 = [NEIKEv2AddressIdentifier alloc];
        v8 = [(NEIKEv2AddressIdentifier *)v6 initWithAddress:objc_getProperty(v2, v7, 64, 1)];
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(NEIKEv2Identifier *)v8 copyShortDescription];
          v14 = 138412546;
          v15 = v2;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ Using fallback local identifier %@", &v14, 0x16u);
        }

        objc_setProperty_atomic(v2, v11, v8, 512);
      }

      a1 = objc_getProperty(v2, v5, 512, 1);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)remoteIdentifier
{
  if (a1)
  {
    a1 = [objc_getProperty(a1 a2];
    v2 = vars8;
  }

  return a1;
}

- (id)initiatorNonce
{
  if (a1[9])
  {
    v2 = 128;
  }

  else
  {
    v2 = 136;
  }

  v3 = objc_getProperty(a1, a2, v2, 1);

  return v3;
}

- (id)responderNonce
{
  if (a1[9])
  {
    v2 = 136;
  }

  else
  {
    v2 = 128;
  }

  v3 = objc_getProperty(a1, a2, v2, 1);

  return v3;
}

- (uint64_t)copyDeviceIdentityNotifyPayload
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v18 = 0;
  v3 = [objc_getProperty(a1 a2];
  v5 = [objc_getProperty(a1 v4];
  if ([v3 length] != 16)
  {
    if ([v5 length] != 15)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    v6 = [v5 dataUsingEncoding:1];
    if ([v6 length] == 15)
    {
      [v6 getBytes:&v17 length:15];
      HIBYTE(v18) = -1;
      v7 = 1;
      goto LABEL_8;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v11 = "Invalid IMEI string!";
      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  v6 = [v3 dataUsingEncoding:1];
  if ([v6 length] != 16)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v11 = "Invalid IMEISV string!";
LABEL_17:
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  [v6 getBytes:&v17 length:16];
  v7 = 2;
LABEL_8:

  v8 = &v17;
  v20 = vld2_s8(v8);
  v14 = 2304;
  v15 = v7;
  v16 = vsli_n_s8(v20.val[0], v20.val[1], 4uLL);
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v14 length:11];
LABEL_14:

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)maximumPacketSize
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (!result)
    {
      if ([objc_getProperty(v2 v3] == 30)
      {
        return 1280;
      }

      else
      {
        return 576;
      }
    }
  }

  return result;
}

- (_BYTE)headerOverhead
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result == -1)
    {
      if (v2[12])
      {
        v4 = 12;
      }

      else
      {
        v4 = 8;
      }

      if ([objc_getProperty(v2 v3] == 30)
      {
        v5 = 40;
      }

      else
      {
        v5 = 20;
      }

      return (v5 + v4);
    }
  }

  return result;
}

- (id)authenticationProtocol
{
  if (a1)
  {
    v3 = a1;
    v4 = [objc_getProperty(a1 a2];

    if (v4)
    {
      a1 = [objc_getProperty(v3 v5];
    }

    else
    {
      Property = objc_getProperty(v3, v5, 96, 1);
      if (Property)
      {
        v7 = Property[18];
      }

      else
      {
        v7 = 0;
      }

      a1 = v7;
    }

    v2 = vars8;
  }

  return a1;
}

- (id)remoteAuthentication
{
  if (a1)
  {
    v3 = a1;
    v4 = [objc_getProperty(a1 a2];

    if (v4)
    {
      a1 = [objc_getProperty(v3 v5];
    }

    else
    {
      Property = objc_getProperty(v3, v5, 96, 1);
      if (Property)
      {
        v7 = Property[18];
      }

      else
      {
        v7 = 0;
      }

      a1 = v7;
    }

    v2 = vars8;
  }

  return a1;
}

- (uint64_t)usesEAPOnlyAuthentication
{
  v3 = [(NEIKEv2IKESA *)a1 remoteAuthentication];
  if ([v3 method])
  {

    return 0;
  }

  v5 = 1;
  Property = objc_getProperty(a1, v4, 96, 1);
  v7 = [(NEIKEv2IKESAProposal *)Property hasEAPMethods];

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  return v5;
}

- (void)setLocalAuthProtocolUsed:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 440), a2);
  }
}

- (void)setRemoteAuthProtocolUsed:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 448), a2);
  }
}

@end