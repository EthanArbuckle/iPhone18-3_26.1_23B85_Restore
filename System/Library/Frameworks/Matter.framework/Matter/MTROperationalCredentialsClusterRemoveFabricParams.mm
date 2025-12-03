@interface MTROperationalCredentialsClusterRemoveFabricParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTROperationalCredentialsClusterRemoveFabricParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterRemoveFabricParams

- (MTROperationalCredentialsClusterRemoveFabricParams)init
{
  v8.receiver = self;
  v8.super_class = MTROperationalCredentialsClusterRemoveFabricParams;
  v2 = [(MTROperationalCredentialsClusterRemoveFabricParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterRemoveFabricParams);
  fabricIndex = [(MTROperationalCredentialsClusterRemoveFabricParams *)self fabricIndex];
  [(MTROperationalCredentialsClusterRemoveFabricParams *)v4 setFabricIndex:fabricIndex];

  timedInvokeTimeoutMs = [(MTROperationalCredentialsClusterRemoveFabricParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterRemoveFabricParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTROperationalCredentialsClusterRemoveFabricParams *)self serverSideProcessingTimeout];
  [(MTROperationalCredentialsClusterRemoveFabricParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: fabricIndex:%@ >", v5, self->_fabricIndex];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedCharValue = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  fabricIndex = [(MTROperationalCredentialsClusterRemoveFabricParams *)self fabricIndex];
  unsignedCharValue = [fabricIndex unsignedCharValue];

  sub_2393D9C18(0x62FuLL, 0, &v18);
  if (v18)
  {
    sub_2393C7B90(v13);
    v15 = 0;
    v16 = 0;
    v14 = &unk_284BB83A8;
    v17 = 0;
    sub_238EA16C4(&v14, &v18, 0);
    sub_2393C7BF0(v13, &v14, 0xFFFFFFFF);
    v5 = sub_238F01288(&unsignedCharValue, v13, 0x100uLL);
    v7 = v5;
    if (v5 || (v5 = sub_238DD2EFC(v13, &v18), v7 = v5, v5))
    {
      v8 = v6;
    }

    else
    {
      sub_238DD2F90(reader, &v18);
      v5 = sub_2393C7114(reader, 21, 256);
      v8 = v12;
      v7 = v5;
    }

    v9 = v5 & 0xFFFFFFFF00000000;
    v14 = &unk_284BB83A8;
    sub_238EA1758(&v16);
    sub_238EA1758(&v15);
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v9 = 0x254100000000;
    v7 = 11;
  }

  sub_238EA1758(&v18);
  sub_238EA1790(&v19);
  v10 = v9 | v7;
  v11 = v8;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROperationalCredentialsClusterRemoveFabricParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x255E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end