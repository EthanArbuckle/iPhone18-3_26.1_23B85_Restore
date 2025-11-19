@interface MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams

- (MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams)init
{
  v12.receiver = self;
  v12.super_class = MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams;
  v2 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    providerNodeID = v2->_providerNodeID;
    v2->_providerNodeID = &unk_284C3E4C8;

    vendorID = v3->_vendorID;
    v3->_vendorID = &unk_284C3E4C8;

    announcementReason = v3->_announcementReason;
    v3->_announcementReason = &unk_284C3E4C8;

    metadataForNode = v3->_metadataForNode;
    v3->_metadataForNode = 0;

    endpoint = v3->_endpoint;
    v3->_endpoint = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams);
  v5 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self providerNodeID];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setProviderNodeID:v5];

  v6 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self vendorID];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setVendorID:v6];

  v7 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self announcementReason];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setAnnouncementReason:v7];

  v8 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setMetadataForNode:v8];

  v9 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self endpoint];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setEndpoint:v9];

  v10 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self timedInvokeTimeoutMs];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self serverSideProcessingTimeout];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  providerNodeID = self->_providerNodeID;
  vendorID = self->_vendorID;
  announcementReason = self->_announcementReason;
  v9 = [(NSData *)self->_metadataForNode base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: providerNodeID:%@ vendorID:%@; announcementReason:%@; metadataForNode:%@; endpoint:%@; >", v5, providerNodeID, vendorID, announcementReason, v9, self->_endpoint];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v32 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self providerNodeID];
  v27 = [v5 unsignedLongLongValue];

  v6 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self vendorID];
  v28 = [v6 unsignedShortValue];

  v7 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self announcementReason];
  v29 = [v7 unsignedCharValue];

  v8 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];

  if (v8)
  {
    v30 = 1;
    v31 = 0uLL;
    v9 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];
    sub_238DB6950(v19, [v9 bytes], objc_msgSend(v9, "length"));

    v31 = v19[0];
  }

  v10 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self endpoint];
  v32 = [v10 unsignedShortValue];

  sub_2393D9C18(0x62FuLL, 0, &v24);
  if (v24)
  {
    sub_2393C7B90(v19);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v24, 0);
    sub_2393C7BF0(v19, &v20, 0xFFFFFFFF);
    v11 = sub_238F236F0(&v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(a3, &v24);
      v11 = sub_2393C7114(a3, 21, 256);
      v14 = v18;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x121200000000;
    v13 = 11;
  }

  sub_238EA1758(&v24);
  sub_238EA1790(&v25);
  v16 = v15 | v13;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x122F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end