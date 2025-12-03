@interface MTRZoneManagementClusterCreateTwoDCartesianZoneParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRZoneManagementClusterCreateTwoDCartesianZoneParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRZoneManagementClusterCreateTwoDCartesianZoneParams

- (MTRZoneManagementClusterCreateTwoDCartesianZoneParams)init
{
  v8.receiver = self;
  v8.super_class = MTRZoneManagementClusterCreateTwoDCartesianZoneParams;
  v2 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    zone = v2->_zone;
    v2->_zone = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRZoneManagementClusterCreateTwoDCartesianZoneParams);
  v5 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
  [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)v4 setZone:v5];

  timedInvokeTimeoutMs = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self timedInvokeTimeoutMs];
  [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self serverSideProcessingTimeout];
  [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zone:%@ >", v5, self->_zone];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = 0uLL;
  unsignedCharValue = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v4 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
  name = [v4 name];
  v6 = name;
  sub_238DB9BD8(buf, [name UTF8String], objc_msgSend(name, "lengthOfBytesUsingEncoding:", 4));

  v31 = *buf;
  v7 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
  v8 = [v7 use];
  unsignedCharValue = [v8 unsignedCharValue];

  v9 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
  vertices = [v9 vertices];
  v11 = [vertices count] == 0;

  if (!v11)
  {
    operator new();
  }

  v33 = 0;
  v34 = 0;
  v12 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
  color = [v12 color];
  v14 = color == 0;

  if (!v14)
  {
    v35 = 1;
    v36 = 0uLL;
    v15 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self zone];
    color2 = [v15 color];
    v17 = color2;
    sub_238DB9BD8(buf, [color2 UTF8String], objc_msgSend(color2, "lengthOfBytesUsingEncoding:", 4));

    v36 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v28);
  if (v28)
  {
    sub_2393C7B90(buf);
    v39 = 0;
    v40 = 0;
    v38 = &unk_284BB83A8;
    v41 = 0;
    sub_238EA16C4(&v38, &v28, 0);
    sub_2393C7BF0(buf, &v38, 0xFFFFFFFF);
    v18 = sub_238F345A0(&v31, buf, 0x100uLL);
    v20 = v18;
    if (v18 || (v18 = sub_238DD2EFC(buf, &v28), v20 = v18, v18))
    {
      v21 = v19;
    }

    else
    {
      sub_238DD2F90(reader, &v28);
      v18 = sub_2393C7114(reader, 21, 256);
      v21 = v26;
      v20 = v18;
    }

    v22 = v18 & 0xFFFFFFFF00000000;
    v38 = &unk_284BB83A8;
    sub_238EA1758(&v40);
    sub_238EA1758(&v39);
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v22 = 0x827000000000;
    v20 = 11;
  }

  sub_238EA1758(&v28);
  sub_238EA1790(&v29);
  v23 = *MEMORY[0x277D85DE8];
  v24 = v22 | v20;
  v25 = v21;
  result.mFile = v25;
  result.mError = v24;
  result.mLine = HIDWORD(v24);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRZoneManagementClusterCreateTwoDCartesianZoneParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x828D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end