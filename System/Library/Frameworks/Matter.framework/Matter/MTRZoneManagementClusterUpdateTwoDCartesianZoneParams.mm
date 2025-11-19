@interface MTRZoneManagementClusterUpdateTwoDCartesianZoneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRZoneManagementClusterUpdateTwoDCartesianZoneParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterUpdateTwoDCartesianZoneParams

- (MTRZoneManagementClusterUpdateTwoDCartesianZoneParams)init
{
  v10.receiver = self;
  v10.super_class = MTRZoneManagementClusterUpdateTwoDCartesianZoneParams;
  v2 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    zoneID = v2->_zoneID;
    v2->_zoneID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    zone = v3->_zone;
    v3->_zone = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams);
  v5 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zoneID];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setZoneID:v5];

  v6 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setZone:v6];

  v7 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self timedInvokeTimeoutMs];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self serverSideProcessingTimeout];
  [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zoneID:%@ zone:%@; >", v5, self->_zoneID, self->_zone];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0uLL;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v4 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zoneID];
  v32 = [v4 unsignedShortValue];

  v5 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  v6 = [v5 name];
  v7 = v6;
  sub_238DB9BD8(buf, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v33 = *buf;
  v8 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  v9 = [v8 use];
  v34 = [v9 unsignedCharValue];

  v10 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  v11 = [v10 vertices];
  v12 = [v11 count] == 0;

  if (!v12)
  {
    operator new();
  }

  v35 = 0;
  v36 = 0;
  v13 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
  v14 = [v13 color];
  v15 = v14 == 0;

  if (!v15)
  {
    v37 = 1;
    v38 = 0uLL;
    v16 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self zone];
    v17 = [v16 color];
    v18 = v17;
    sub_238DB9BD8(buf, [v17 UTF8String], objc_msgSend(v17, "lengthOfBytesUsingEncoding:", 4));

    v38 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v29);
  if (v29)
  {
    sub_2393C7B90(buf);
    v41 = 0;
    v42 = 0;
    v40 = &unk_284BB83A8;
    v43 = 0;
    sub_238EA16C4(&v40, &v29, 0);
    sub_2393C7BF0(buf, &v40, 0xFFFFFFFF);
    v19 = sub_238F34688(&v32, buf, 0x100uLL);
    v21 = v19;
    if (v19 || (v19 = sub_238DD2EFC(buf, &v29), v21 = v19, v19))
    {
      v22 = v20;
    }

    else
    {
      sub_238DD2F90(a3, &v29);
      v19 = sub_2393C7114(a3, 21, 256);
      v22 = v27;
      v21 = v19;
    }

    v23 = v19 & 0xFFFFFFFF00000000;
    v40 = &unk_284BB83A8;
    sub_238EA1758(&v42);
    sub_238EA1758(&v41);
  }

  else
  {
    v22 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v23 = 0x833B00000000;
    v21 = 11;
  }

  sub_238EA1758(&v29);
  sub_238EA1790(&v30);
  v24 = *MEMORY[0x277D85DE8];
  v25 = v23 | v21;
  v26 = v22;
  result.mFile = v26;
  result.mError = v25;
  result.mLine = HIDWORD(v25);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRZoneManagementClusterUpdateTwoDCartesianZoneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x835800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end