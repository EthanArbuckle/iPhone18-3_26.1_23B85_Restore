@interface MTROTASoftwareUpdateProviderClusterQueryImageResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)init;
- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROTASoftwareUpdateProviderClusterQueryImageResponseParams

- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)init
{
  v14.receiver = self;
  v14.super_class = MTROTASoftwareUpdateProviderClusterQueryImageResponseParams;
  v2 = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    delayedActionTime = v3->_delayedActionTime;
    v3->_delayedActionTime = 0;

    imageURI = v3->_imageURI;
    v3->_imageURI = 0;

    softwareVersion = v3->_softwareVersion;
    v3->_softwareVersion = 0;

    softwareVersionString = v3->_softwareVersionString;
    v3->_softwareVersionString = 0;

    updateToken = v3->_updateToken;
    v3->_updateToken = 0;

    userConsentNeeded = v3->_userConsentNeeded;
    v3->_userConsentNeeded = 0;

    metadataForRequestor = v3->_metadataForRequestor;
    v3->_metadataForRequestor = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams);
  status = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self status];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setStatus:status];

  delayedActionTime = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self delayedActionTime];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setDelayedActionTime:delayedActionTime];

  imageURI = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self imageURI];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setImageURI:imageURI];

  softwareVersion = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self softwareVersion];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setSoftwareVersion:softwareVersion];

  softwareVersionString = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self softwareVersionString];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setSoftwareVersionString:softwareVersionString];

  updateToken = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self updateToken];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setUpdateToken:updateToken];

  userConsentNeeded = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self userConsentNeeded];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setUserConsentNeeded:userConsentNeeded];

  metadataForRequestor = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self metadataForRequestor];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setMetadataForRequestor:metadataForRequestor];

  timedInvokeTimeoutMs = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self timedInvokeTimeoutMs];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  status = self->_status;
  delayedActionTime = self->_delayedActionTime;
  imageURI = self->_imageURI;
  softwareVersion = self->_softwareVersion;
  softwareVersionString = self->_softwareVersionString;
  v11 = [(NSData *)self->_updateToken base64EncodedStringWithOptions:0];
  userConsentNeeded = self->_userConsentNeeded;
  v13 = [(NSData *)self->_metadataForRequestor base64EncodedStringWithOptions:0];
  v14 = [v3 stringWithFormat:@"<%@: status:%@ delayedActionTime:%@; imageURI:%@; softwareVersion:%@; softwareVersionString:%@; updateToken:%@; userConsentNeeded:%@; metadataForRequestor:%@; >", v5, status, delayedActionTime, imageURI, softwareVersion, softwareVersionString, v11, userConsentNeeded, v13];;

  return v14;
}

- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTROTASoftwareUpdateProviderClusterQueryImageResponseParams;
  v7 = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:41 commandID:1 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[4] = 0;
      v12[16] = 0;
      v12[40] = 0;
      v12[48] = 0;
      v12[72] = 0;
      v12[96] = 0;
      v12[104] = 0;
      v8 = sub_238F231E8(v12, v13);
      if (!v8)
      {
        v8 = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTROTASoftwareUpdateProviderClusterQueryImageResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTROTASoftwareUpdateProviderClusterQueryImageResponseParams;
  v4 = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setStatus:v5];

  if (*(struct + 4) == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 4)];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setDelayedActionTime:v6];
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setDelayedActionTime:0];
  }

  if (*(struct + 16) == 1)
  {
    v7 = sub_238DE36B8(struct + 16);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v7 length:v7[1] encoding:4];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setImageURI:v8];

    imageURI = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self imageURI];

    if (!imageURI)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v11 = 0x106E00000000;
LABEL_14:
      v16 = 47;
      goto LABEL_26;
    }
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setImageURI:0];
  }

  if (*(struct + 40) == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 40)];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setSoftwareVersion:v12];
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setSoftwareVersion:0];
  }

  if (*(struct + 48) == 1)
  {
    v13 = sub_238DE36B8(struct + 48);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setSoftwareVersionString:v14];

    softwareVersionString = [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self softwareVersionString];

    if (!softwareVersionString)
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v11 = 0x108000000000;
      goto LABEL_14;
    }
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setSoftwareVersionString:0];
  }

  if (*(struct + 72) == 1)
  {
    v17 = sub_238DE36B8(struct + 72);
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:v17[1]];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setUpdateToken:v18];
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setUpdateToken:0];
  }

  if (*(struct + 96) == 1)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:*sub_238DE36D8(struct + 96)];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setUserConsentNeeded:v19];
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setUserConsentNeeded:0];
  }

  v21 = *(struct + 104);
  v20 = struct + 104;
  if (v21 == 1)
  {
    v22 = sub_238DE36B8(v20);
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:*v22 length:v22[1]];
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setMetadataForRequestor:v23];
  }

  else
  {
    [(MTROTASoftwareUpdateProviderClusterQueryImageResponseParams *)self setMetadataForRequestor:0];
  }

  v11 = 0;
  v16 = 0;
  v10 = 0;
LABEL_26:
  v24 = v16 | v11;
  result.mFile = v10;
  result.mError = v24;
  result.mLine = HIDWORD(v24);
  return result;
}

@end