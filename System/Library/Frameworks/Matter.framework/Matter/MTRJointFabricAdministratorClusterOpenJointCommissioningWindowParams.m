@interface MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams

- (MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams)init
{
  v14.receiver = self;
  v14.super_class = MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams;
  v2 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    commissioningTimeout = v2->_commissioningTimeout;
    v2->_commissioningTimeout = &unk_284C3E4C8;

    v5 = [MEMORY[0x277CBEA90] data];
    pakePasscodeVerifier = v3->_pakePasscodeVerifier;
    v3->_pakePasscodeVerifier = v5;

    discriminator = v3->_discriminator;
    v3->_discriminator = &unk_284C3E4C8;

    iterations = v3->_iterations;
    v3->_iterations = &unk_284C3E4C8;

    v9 = [MEMORY[0x277CBEA90] data];
    salt = v3->_salt;
    v3->_salt = v9;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams);
  v5 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self commissioningTimeout];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setCommissioningTimeout:v5];

  v6 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self pakePasscodeVerifier];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setPakePasscodeVerifier:v6];

  v7 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self discriminator];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setDiscriminator:v7];

  v8 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self iterations];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setIterations:v8];

  v9 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self salt];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setSalt:v9];

  v10 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self timedInvokeTimeoutMs];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self serverSideProcessingTimeout];
  [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)v4 setServerSideProcessingTimeout:v11];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v5 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self commissioningTimeout];
  v26 = [v5 unsignedShortValue];

  v6 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self pakePasscodeVerifier];
  sub_238DB6950(v18, [v6 bytes], objc_msgSend(v6, "length"));

  v27 = v18[0];
  v7 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self discriminator];
  v28 = [v7 unsignedShortValue];

  v8 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self iterations];
  v29[0] = [v8 unsignedIntValue];

  v9 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self salt];
  sub_238DB6950(v18, [v9 bytes], objc_msgSend(v9, "length"));

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
    v10 = sub_238F003A8(&v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(a3, &v23);
      v10 = sub_2393C7114(a3, 21, 256);
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
    v14 = 0xA2D800000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRJointFabricAdministratorClusterOpenJointCommissioningWindowParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xA2F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end