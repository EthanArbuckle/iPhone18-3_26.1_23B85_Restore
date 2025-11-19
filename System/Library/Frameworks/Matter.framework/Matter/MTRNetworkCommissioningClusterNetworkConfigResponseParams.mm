@interface MTRNetworkCommissioningClusterNetworkConfigResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)init;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterNetworkConfigResponseParams

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v2 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    networkingStatus = v2->_networkingStatus;
    v2->_networkingStatus = &unk_284C3E4C8;

    debugText = v3->_debugText;
    v3->_debugText = 0;

    networkIndex = v3->_networkIndex;
    v3->_networkIndex = 0;

    clientIdentity = v3->_clientIdentity;
    v3->_clientIdentity = 0;

    possessionSignature = v3->_possessionSignature;
    v3->_possessionSignature = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterNetworkConfigResponseParams);
  v5 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self networkingStatus];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setNetworkingStatus:v5];

  v6 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self debugText];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setDebugText:v6];

  v7 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self networkIndex];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setNetworkIndex:v7];

  v8 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self clientIdentity];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setClientIdentity:v8];

  v9 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self possessionSignature];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setPossessionSignature:v9];

  v10 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 setTimedInvokeTimeoutMs:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  networkingStatus = self->_networkingStatus;
  debugText = self->_debugText;
  networkIndex = self->_networkIndex;
  v9 = [(NSData *)self->_clientIdentity base64EncodedStringWithOptions:0];
  v10 = [(NSData *)self->_possessionSignature base64EncodedStringWithOptions:0];
  v11 = [v3 stringWithFormat:@"<%@: networkingStatus:%@ debugText:%@; networkIndex:%@; clientIdentity:%@; possessionSignature:%@; >", v5, networkingStatus, debugText, networkIndex, v9, v10];;

  return v11;
}

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v7 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:49 commandID:5 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12[0] = 0;
      v12[8] = 0;
      v12[32] = 0;
      v12[40] = 0;
      v12[64] = 0;
      v8 = sub_238F205B4(v12, v13);
      if (!v8)
      {
        v8 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRNetworkCommissioningClusterNetworkConfigResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterNetworkConfigResponseParams;
  v4 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
  [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkingStatus:v5];

  if (*(a3 + 8) == 1)
  {
    v6 = sub_238DE36B8(a3 + 8);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v6 length:v6[1] encoding:4];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setDebugText:v7];

    v8 = [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self debugText];

    if (!v8)
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v10 = 0x17C500000000;
      v11 = 47;
      goto LABEL_15;
    }
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setDebugText:0];
  }

  if (*(a3 + 32) == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(a3 + 32)];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkIndex:v12];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setNetworkIndex:0];
  }

  if (*(a3 + 40) == 1)
  {
    v13 = sub_238DE36B8(a3 + 40);
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:*v13 length:v13[1]];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setClientIdentity:v14];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setClientIdentity:0];
  }

  v16 = *(a3 + 64);
  v15 = a3 + 64;
  if (v16 == 1)
  {
    v17 = sub_238DE36B8(v15);
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:*v17 length:v17[1]];
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setPossessionSignature:v18];
  }

  else
  {
    [(MTRNetworkCommissioningClusterNetworkConfigResponseParams *)self setPossessionSignature:0];
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
LABEL_15:
  v19 = v11 | v10;
  result.mFile = v9;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

@end