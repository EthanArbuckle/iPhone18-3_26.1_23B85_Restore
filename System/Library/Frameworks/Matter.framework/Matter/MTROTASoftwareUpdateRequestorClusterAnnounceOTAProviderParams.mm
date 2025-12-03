@interface MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams);
  providerNodeID = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self providerNodeID];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setProviderNodeID:providerNodeID];

  vendorID = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self vendorID];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setVendorID:vendorID];

  announcementReason = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self announcementReason];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setAnnouncementReason:announcementReason];

  metadataForNode = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setMetadataForNode:metadataForNode];

  endpoint = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self endpoint];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setEndpoint:endpoint];

  timedInvokeTimeoutMs = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self timedInvokeTimeoutMs];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self serverSideProcessingTimeout];
  [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedLongLongValue = 0;
  unsignedShortValue = 0;
  unsignedCharValue = 0;
  v30 = 0;
  unsignedShortValue2 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  providerNodeID = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self providerNodeID];
  unsignedLongLongValue = [providerNodeID unsignedLongLongValue];

  vendorID = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self vendorID];
  unsignedShortValue = [vendorID unsignedShortValue];

  announcementReason = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self announcementReason];
  unsignedCharValue = [announcementReason unsignedCharValue];

  metadataForNode = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];

  if (metadataForNode)
  {
    v30 = 1;
    v31 = 0uLL;
    metadataForNode2 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self metadataForNode];
    sub_238DB6950(v19, [metadataForNode2 bytes], objc_msgSend(metadataForNode2, "length"));

    v31 = v19[0];
  }

  endpoint = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self endpoint];
  unsignedShortValue2 = [endpoint unsignedShortValue];

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
    v11 = sub_238F236F0(&unsignedLongLongValue, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v24);
      v11 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROTASoftwareUpdateRequestorClusterAnnounceOTAProviderParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x122F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end