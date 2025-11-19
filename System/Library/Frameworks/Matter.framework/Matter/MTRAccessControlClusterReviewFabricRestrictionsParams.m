@interface MTRAccessControlClusterReviewFabricRestrictionsParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRAccessControlClusterReviewFabricRestrictionsParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterReviewFabricRestrictionsParams

- (MTRAccessControlClusterReviewFabricRestrictionsParams)init
{
  v8.receiver = self;
  v8.super_class = MTRAccessControlClusterReviewFabricRestrictionsParams;
  v2 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    arl = v2->_arl;
    v2->_arl = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterReviewFabricRestrictionsParams);
  v5 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)self arl];
  [(MTRAccessControlClusterReviewFabricRestrictionsParams *)v4 setArl:v5];

  v6 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)self timedInvokeTimeoutMs];
  [(MTRAccessControlClusterReviewFabricRestrictionsParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)self serverSideProcessingTimeout];
  [(MTRAccessControlClusterReviewFabricRestrictionsParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: arl:%@ >", v5, self->_arl];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0uLL;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  v3 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)self arl];
  v4 = [v3 count] == 0;

  if (!v4)
  {
    operator new();
  }

  v17 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v14);
  if (v14)
  {
    sub_2393C7B90(buf);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v14, 0);
    sub_2393C7BF0(buf, &v19, 0xFFFFFFFF);
    v6 = sub_238EFD0F0(&v17, buf, 0x100uLL);
    v7 = v6;
    if (v6 || (v6 = sub_238DD2EFC(buf, &v14), v7 = v6, v6))
    {
      v8 = v5;
    }

    else
    {
      sub_238DD2F90(a3, &v14);
      v6 = sub_2393C7114(a3, 21, 256);
      v8 = v12;
      v7 = v6;
    }

    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v6 = 0xA6500000000;
    v7 = 11;
  }

  sub_238EA1758(&v14);
  sub_238EA1790(&v15);
  v9 = *MEMORY[0x277D85DE8];
  v10 = v6 & 0xFFFFFFFF00000000 | v7;
  v11 = v8;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRAccessControlClusterReviewFabricRestrictionsParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0xA8200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end