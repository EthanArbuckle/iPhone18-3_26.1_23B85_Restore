@interface MTRApplicationLauncherClusterHideAppParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRApplicationLauncherClusterHideAppParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRApplicationLauncherClusterHideAppParams

- (MTRApplicationLauncherClusterHideAppParams)init
{
  v8.receiver = self;
  v8.super_class = MTRApplicationLauncherClusterHideAppParams;
  v2 = [(MTRApplicationLauncherClusterHideAppParams *)&v8 init];
  v3 = v2;
  if (v2)
  {
    application = v2->_application;
    v2->_application = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRApplicationLauncherClusterHideAppParams);
  application = [(MTRApplicationLauncherClusterHideAppParams *)self application];
  [(MTRApplicationLauncherClusterHideAppParams *)v4 setApplication:application];

  timedInvokeTimeoutMs = [(MTRApplicationLauncherClusterHideAppParams *)self timedInvokeTimeoutMs];
  [(MTRApplicationLauncherClusterHideAppParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRApplicationLauncherClusterHideAppParams *)self serverSideProcessingTimeout];
  [(MTRApplicationLauncherClusterHideAppParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: application:%@ >", v5, self->_application];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v26[0] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  application = [(MTRApplicationLauncherClusterHideAppParams *)self application];

  if (application)
  {
    v26[0] = 1;
    v28 = 0uLL;
    v27 = 0;
    application2 = [(MTRApplicationLauncherClusterHideAppParams *)self application];
    catalogVendorID = [application2 catalogVendorID];
    LOWORD(v27) = [catalogVendorID unsignedShortValue];

    application3 = [(MTRApplicationLauncherClusterHideAppParams *)self application];
    applicationID = [application3 applicationID];
    sub_238DB9BD8(v18, [applicationID UTF8String], objc_msgSend(applicationID, "lengthOfBytesUsingEncoding:", 4));

    v28 = v18[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F00DE4(v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x7C0A00000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRApplicationLauncherClusterHideAppParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x7C2700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end