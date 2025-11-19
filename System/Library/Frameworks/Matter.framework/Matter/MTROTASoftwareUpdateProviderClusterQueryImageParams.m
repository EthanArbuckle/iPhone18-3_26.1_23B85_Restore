@interface MTROTASoftwareUpdateProviderClusterQueryImageParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTROTASoftwareUpdateProviderClusterQueryImageParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROTASoftwareUpdateProviderClusterQueryImageParams

- (MTROTASoftwareUpdateProviderClusterQueryImageParams)init
{
  v16.receiver = self;
  v16.super_class = MTROTASoftwareUpdateProviderClusterQueryImageParams;
  v2 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)&v16 init];
  v3 = v2;
  if (v2)
  {
    vendorID = v2->_vendorID;
    v2->_vendorID = &unk_284C3E4C8;

    productID = v3->_productID;
    v3->_productID = &unk_284C3E4C8;

    softwareVersion = v3->_softwareVersion;
    v3->_softwareVersion = &unk_284C3E4C8;

    v7 = [MEMORY[0x277CBEA60] array];
    protocolsSupported = v3->_protocolsSupported;
    v3->_protocolsSupported = v7;

    hardwareVersion = v3->_hardwareVersion;
    v3->_hardwareVersion = 0;

    location = v3->_location;
    v3->_location = 0;

    requestorCanConsent = v3->_requestorCanConsent;
    v3->_requestorCanConsent = 0;

    metadataForProvider = v3->_metadataForProvider;
    v3->_metadataForProvider = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterQueryImageParams);
  v5 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self vendorID];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setVendorID:v5];

  v6 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self productID];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setProductID:v6];

  v7 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self softwareVersion];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setSoftwareVersion:v7];

  v8 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self protocolsSupported];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setProtocolsSupported:v8];

  v9 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self hardwareVersion];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setHardwareVersion:v9];

  v10 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self location];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setLocation:v10];

  v11 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self requestorCanConsent];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setRequestorCanConsent:v11];

  v12 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self metadataForProvider];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setMetadataForProvider:v12];

  v13 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self timedInvokeTimeoutMs];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setTimedInvokeTimeoutMs:v13];

  v14 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self serverSideProcessingTimeout];
  [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)v4 setServerSideProcessingTimeout:v14];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  vendorID = self->_vendorID;
  productID = self->_productID;
  softwareVersion = self->_softwareVersion;
  protocolsSupported = self->_protocolsSupported;
  hardwareVersion = self->_hardwareVersion;
  location = self->_location;
  requestorCanConsent = self->_requestorCanConsent;
  v13 = [(NSData *)self->_metadataForProvider base64EncodedStringWithOptions:0];
  v14 = [v3 stringWithFormat:@"<%@: vendorID:%@ productID:%@; softwareVersion:%@; protocolsSupported:%@; hardwareVersion:%@; location:%@; requestorCanConsent:%@; metadataForProvider:%@; >", v5, vendorID, productID, softwareVersion, protocolsSupported, hardwareVersion, location, requestorCanConsent, v13];;

  return v14;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v40 = 0;
  LOBYTE(v42) = 0;
  v43 = 0;
  v37 = 0uLL;
  v35[1] = 0;
  v36 = 0;
  v38 = 0;
  v34 = v35;
  v35[0] = 0;
  v5 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self vendorID];
  LOWORD(v36) = [v5 unsignedShortValue];

  v6 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self productID];
  WORD1(v36) = [v6 unsignedShortValue];

  v7 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self softwareVersion];
  HIDWORD(v36) = [v7 unsignedIntValue];

  v8 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self protocolsSupported];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    operator new();
  }

  v37 = 0uLL;
  v10 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self hardwareVersion];
  v11 = v10 == 0;

  if (!v11)
  {
    v38 = 1;
    v39 = 0;
    v12 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self hardwareVersion];
    v39 = [v12 unsignedShortValue];
  }

  v13 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self location];
  v14 = v13 == 0;

  if (!v14)
  {
    v40 = 1;
    v41 = 0uLL;
    v15 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self location];
    v16 = v15;
    sub_238DB9BD8(buf, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

    v41 = *buf;
  }

  v17 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self requestorCanConsent];
  v18 = v17 == 0;

  if (!v18)
  {
    v42 = 1;
    v19 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self requestorCanConsent];
    HIBYTE(v42) = [v19 BOOLValue];
  }

  v20 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self metadataForProvider];
  v21 = v20 == 0;

  if (!v21)
  {
    v43 = 1;
    v44 = 0uLL;
    v22 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self metadataForProvider];
    v23 = v22;
    sub_238DB6950(buf, [v22 bytes], objc_msgSend(v22, "length"));

    v44 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v33);
  if (v33)
  {
    sub_2393C7B90(buf);
    v47 = 0;
    v48 = 0;
    v46 = &unk_284BB83A8;
    v49 = 0;
    sub_238EA16C4(&v46, &v33, 0);
    sub_2393C7BF0(buf, &v46, 0xFFFFFFFF);
    v24 = sub_238F22E64(&v36, buf, 0x100uLL);
    v26 = v24;
    if (v24 || (v24 = sub_238DD2EFC(buf, &v33), v26 = v24, v24))
    {
      v27 = v25;
    }

    else
    {
      sub_238DD2F90(a3, &v33);
      v24 = sub_2393C7114(a3, 21, 256);
      v27 = v32;
      v26 = v24;
    }

    v28 = v24 & 0xFFFFFFFF00000000;
    v46 = &unk_284BB83A8;
    sub_238EA1758(&v48);
    sub_238EA1758(&v47);
  }

  else
  {
    v27 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v28 = 0xFB200000000;
    v26 = 11;
  }

  sub_238EA1758(&v33);
  sub_238EA1790(&v34);
  v29 = *MEMORY[0x277D85DE8];
  v30 = v28 | v26;
  v31 = v27;
  result.mFile = v31;
  result.mError = v30;
  result.mLine = HIDWORD(v30);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROTASoftwareUpdateProviderClusterQueryImageParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xFCF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end