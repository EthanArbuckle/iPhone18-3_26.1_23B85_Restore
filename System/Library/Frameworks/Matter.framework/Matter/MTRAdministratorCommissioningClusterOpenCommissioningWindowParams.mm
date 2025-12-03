@interface MTRAdministratorCommissioningClusterOpenCommissioningWindowParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRAdministratorCommissioningClusterOpenCommissioningWindowParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAdministratorCommissioningClusterOpenCommissioningWindowParams

- (MTRAdministratorCommissioningClusterOpenCommissioningWindowParams)init
{
  v14.receiver = self;
  v14.super_class = MTRAdministratorCommissioningClusterOpenCommissioningWindowParams;
  v2 = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    commissioningTimeout = v2->_commissioningTimeout;
    v2->_commissioningTimeout = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    pakePasscodeVerifier = v3->_pakePasscodeVerifier;
    v3->_pakePasscodeVerifier = data;

    discriminator = v3->_discriminator;
    v3->_discriminator = &unk_284C3E4C8;

    iterations = v3->_iterations;
    v3->_iterations = &unk_284C3E4C8;

    data2 = [MEMORY[0x277CBEA90] data];
    salt = v3->_salt;
    v3->_salt = data2;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams);
  commissioningTimeout = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self commissioningTimeout];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setCommissioningTimeout:commissioningTimeout];

  pakePasscodeVerifier = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self pakePasscodeVerifier];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setPakePasscodeVerifier:pakePasscodeVerifier];

  discriminator = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self discriminator];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setDiscriminator:discriminator];

  iterations = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self iterations];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setIterations:iterations];

  salt = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self salt];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setSalt:salt];

  timedInvokeTimeoutMs = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self timedInvokeTimeoutMs];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self serverSideProcessingTimeout];
  [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  commissioningTimeout = self->_commissioningTimeout;
  v7 = [(NSData *)self->_pakePasscodeVerifier base64EncodedStringWithOptions:0];
  discriminator = self->_discriminator;
  iterations = self->_iterations;
  v10 = [(NSData *)self->_salt base64EncodedStringWithOptions:0];
  v11 = [v3 stringWithFormat:@"<%@: commissioningTimeout:%@ pakePasscodeVerifier:%@; discriminator:%@; iterations:%@; salt:%@; >", v5, commissioningTimeout, v7, discriminator, iterations, v10];;

  return v11;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  v27 = 0uLL;
  unsignedShortValue2 = 0;
  memset(v29, 0, sizeof(v29));
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  commissioningTimeout = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self commissioningTimeout];
  unsignedShortValue = [commissioningTimeout unsignedShortValue];

  pakePasscodeVerifier = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self pakePasscodeVerifier];
  sub_238DB6950(v18, [pakePasscodeVerifier bytes], objc_msgSend(pakePasscodeVerifier, "length"));

  v27 = v18[0];
  discriminator = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self discriminator];
  unsignedShortValue2 = [discriminator unsignedShortValue];

  iterations = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self iterations];
  v29[0] = [iterations unsignedIntValue];

  salt = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self salt];
  sub_238DB6950(v18, [salt bytes], objc_msgSend(salt, "length"));

  *&v29[1] = v18[0];
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
    v10 = sub_238F003A8(&unsignedShortValue, v18, 0x100uLL);
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
    v14 = 0x206200000000;
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
  v7 = [(MTRAdministratorCommissioningClusterOpenCommissioningWindowParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x207F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end