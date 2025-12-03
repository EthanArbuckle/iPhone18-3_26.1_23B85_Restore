@interface MTROperationalCredentialsClusterAttestationResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterAttestationResponseParams)init;
- (MTROperationalCredentialsClusterAttestationResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTROperationalCredentialsClusterAttestationResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterAttestationResponseParams

- (MTROperationalCredentialsClusterAttestationResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterAttestationResponseParams;
  v2 = [(MTROperationalCredentialsClusterAttestationResponseParams *)&v9 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    attestationElements = v2->_attestationElements;
    v2->_attestationElements = data;

    data2 = [MEMORY[0x277CBEA90] data];
    attestationSignature = v2->_attestationSignature;
    v2->_attestationSignature = data2;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterAttestationResponseParams);
  attestationElements = [(MTROperationalCredentialsClusterAttestationResponseParams *)self attestationElements];
  [(MTROperationalCredentialsClusterAttestationResponseParams *)v4 setAttestationElements:attestationElements];

  attestationSignature = [(MTROperationalCredentialsClusterAttestationResponseParams *)self attestationSignature];
  [(MTROperationalCredentialsClusterAttestationResponseParams *)v4 setAttestationSignature:attestationSignature];

  timedInvokeTimeoutMs = [(MTROperationalCredentialsClusterAttestationResponseParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterAttestationResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_attestationElements base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_attestationSignature base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: attestationElements:%@ attestationSignature:%@; >", v5, v6, v7];;

  return v8;
}

- (MTROperationalCredentialsClusterAttestationResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = responseValue;
  v52.receiver = self;
  v52.super_class = MTROperationalCredentialsClusterAttestationResponseParams;
  v7 = [(MTROperationalCredentialsClusterAttestationResponseParams *)&v52 init];
  if (v7)
  {
    [MTRBaseDevice _responseDataForCommand:v6 clusterID:62 commandID:1 error:error];
    if (!v51)
    {
LABEL_33:
      v13 = 0;
LABEL_34:
      sub_238EA1758(&v51);
      goto LABEL_35;
    }

    sub_2393C5AAC(v50);
    sub_2393C5ADC(v50, *(v51 + 1), *(v51 + 3));
    v8 = sub_2393C6FD0(v50, 256);
    v10 = v8;
    if (v8)
    {
      v11 = v9;
      v12 = HIDWORD(v8);
    }

    else
    {
      memset(v49, 0, sizeof(v49));
      v14 = sub_238F21A7C(v49, v50);
      if (v14)
      {
        v11 = v15;
        v10 = v14;
        v12 = HIDWORD(v14);
      }

      else
      {
        v16 = [(MTROperationalCredentialsClusterAttestationResponseParams *)v7 _setFieldsFromDecodableStruct:v49];
        v18 = v17;
        v12 = HIDWORD(v16);
        if (v16)
        {
          v10 = v16;
          v11 = v17;
        }

        else
        {
          v44 = [(NSDictionary *)v6 objectForKeyedSubscript:@"data"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v44;
            v20 = [v19 objectForKeyedSubscript:?];
            if (v20)
            {
              v43 = v19;
              v21 = [v19 objectForKeyedSubscript:@"type"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v19 objectForKeyedSubscript:@"type"];
                v23 = [v22 isEqualToString:@"Structure"];

                v19 = v43;
                if (v23)
                {
                  v24 = [v43 objectForKeyedSubscript:@"value"];
                  v40 = v24;
                  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v45 = 0u;
                    v46 = 0u;
                    v47 = 0u;
                    v48 = 0u;
                    obj = v24;
                    v25 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
                    if (v25)
                    {
                      v34 = v25;
                      v38 = *v46;
                      v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
                      v33 = 8660;
LABEL_18:
                      v26 = 0;
                      while (1)
                      {
                        if (*v46 != v38)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v27 = *(*(&v45 + 1) + 8 * v26);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v10 = 47;
                          v12 = 8653;
                          goto LABEL_54;
                        }

                        v41 = v27;
                        v28 = [v41 objectForKeyedSubscript:@"contextTag"];
                        if (!v28)
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          break;
                        }

                        v29 = v28;
                        if ([v29 isEqualToNumber:&unk_284C3E4E0])
                        {
                          v32 = [v41 objectForKeyedSubscript:@"data"];
                          if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v36 = v32;
                            v42 = [v36 objectForKeyedSubscript:@"type"];
                            v39 = [v36 objectForKeyedSubscript:@"value"];
                            v10 = 47;
                            v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
                            v33 = 8680;
                            if (v42 && v39)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                              {
                                v35 = v42;
                                if ([v35 isEqualToString:@"OctetString"])
                                {
                                  [(MTROperationalCredentialsClusterAttestationResponseParams *)v7 setAttestationChallenge:v39];
                                  v10 = 0;
                                  v11 = v18;
                                }

                                else
                                {
                                  v10 = 47;
                                  v12 = 8686;
                                }

                                v33 = v12;
                              }

                              else
                              {
                                v10 = 47;
                                v33 = 8680;
                              }
                            }
                          }

                          else
                          {
                            v10 = 47;
                            v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
                            v33 = 8672;
                          }

                          v28 = v29;
                          goto LABEL_53;
                        }

                        if (v34 == ++v26)
                        {
                          v34 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
                          if (v34)
                          {
                            goto LABEL_18;
                          }

                          goto LABEL_27;
                        }
                      }

                      v10 = 47;
LABEL_53:

                      v12 = v33;
                      goto LABEL_54;
                    }

LABEL_27:
                    v10 = 0;
                    v11 = v18;
LABEL_54:
                  }

                  else
                  {
                    v10 = 47;
                    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
                    v12 = 8646;
                  }

                  if (!v10)
                  {
                    v13 = v7;
                    goto LABEL_34;
                  }

                  goto LABEL_32;
                }
              }

              else
              {
              }
            }

            v12 = 8640;
          }

          else
          {
            v12 = 8634;
          }

          v10 = 47;
          v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        }
      }
    }

LABEL_32:
    sub_238DD3F98(v10 | (v12 << 32), v11, error);
    goto LABEL_33;
  }

  v13 = 0;
LABEL_35:

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

- (MTROperationalCredentialsClusterAttestationResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterAttestationResponseParams;
  v4 = [(MTROperationalCredentialsClusterAttestationResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterAttestationResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*struct length:*(struct + 1)];
  [(MTROperationalCredentialsClusterAttestationResponseParams *)self setAttestationElements:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 2) length:*(struct + 3)];
  [(MTROperationalCredentialsClusterAttestationResponseParams *)self setAttestationSignature:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end