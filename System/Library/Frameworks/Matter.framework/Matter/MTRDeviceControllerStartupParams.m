@interface MTRDeviceControllerStartupParams
- (MTRDeviceControllerStartupParams)initWithIPK:(NSData *)ipk fabricID:(NSNumber *)fabricID nocSigner:(id)nocSigner;
- (MTRDeviceControllerStartupParams)initWithIPK:(NSData *)ipk operationalKeypair:(id)operationalKeypair operationalCertificate:(MTRCertificateDERBytes)operationalCertificate intermediateCertificate:(MTRCertificateDERBytes)intermediateCertificate rootCertificate:(MTRCertificateDERBytes)rootCertificate;
- (MTRDeviceControllerStartupParams)initWithParameters:(id)a3 error:(ChipError *)a4;
- (MTRDeviceControllerStartupParams)initWithParams:(id)a3;
- (MTRDeviceControllerStartupParams)initWithSigningKeypair:(id)nocSigner fabricId:(uint64_t)fabricId ipk:(NSData *)ipk;
- (uint64_t)fabricId;
@end

@implementation MTRDeviceControllerStartupParams

- (MTRDeviceControllerStartupParams)initWithIPK:(NSData *)ipk fabricID:(NSNumber *)fabricID nocSigner:(id)nocSigner
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = ipk;
  v9 = fabricID;
  v10 = nocSigner;
  v23.receiver = self;
  v23.super_class = MTRDeviceControllerStartupParams;
  v11 = [(MTRDeviceControllerStartupParams *)&v23 init];
  if (!v11)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  if (![(NSNumber *)v9 unsignedLongLongValue])
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(NSNumber *)v9 unsignedLongLongValue];
      *buf = 134217984;
      v25 = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%llu is not a valid fabric id to initialize a device controller with", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      [(NSNumber *)v9 unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }

    goto LABEL_8;
  }

  objc_storeStrong(&v11->_nocSigner, nocSigner);
  v12 = [(NSNumber *)v9 copy];
  v13 = v11->_fabricID;
  v11->_fabricID = v12;

  v14 = [(NSData *)v8 copy];
  v15 = v11->_ipk;
  v11->_ipk = v14;

  v16 = [MEMORY[0x277CCAD78] UUID];
  uniqueIdentifier = v11->_uniqueIdentifier;
  v11->_uniqueIdentifier = v16;

  v18 = v11;
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (MTRDeviceControllerStartupParams)initWithIPK:(NSData *)ipk operationalKeypair:(id)operationalKeypair operationalCertificate:(MTRCertificateDERBytes)operationalCertificate intermediateCertificate:(MTRCertificateDERBytes)intermediateCertificate rootCertificate:(MTRCertificateDERBytes)rootCertificate
{
  v12 = ipk;
  v13 = operationalKeypair;
  v14 = operationalCertificate;
  v15 = intermediateCertificate;
  v16 = rootCertificate;
  v34.receiver = self;
  v34.super_class = MTRDeviceControllerStartupParams;
  v17 = [(MTRDeviceControllerStartupParams *)&v34 init];
  if (v17)
  {
    v33 = 0;
    v35 = 0;
    v18 = sub_239220D54(v14, &v35, &v33);
    v19 = v33;
    if (!v18)
    {
      fabricID = v17->_fabricID;
      v17->_fabricID = v19;

      objc_storeStrong(&v17->_operationalKeypair, operationalKeypair);
      v22 = [(NSData *)v14 copy];
      v23 = v17->_operationalCertificate;
      v17->_operationalCertificate = v22;

      v24 = [(NSData *)v15 copy];
      v25 = v17->_intermediateCertificate;
      v17->_intermediateCertificate = v24;

      v26 = [(NSData *)v16 copy];
      v27 = v17->_rootCertificate;
      v17->_rootCertificate = v26;

      v28 = [(NSData *)v12 copy];
      v29 = v17->_ipk;
      v17->_ipk = v28;

      v30 = [MEMORY[0x277CCAD78] UUID];
      uniqueIdentifier = v17->_uniqueIdentifier;
      v17->_uniqueIdentifier = v30;

      v20 = v17;
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_6:

  return v20;
}

- (MTRDeviceControllerStartupParams)initWithParams:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = MTRDeviceControllerStartupParams;
  v5 = [(MTRDeviceControllerStartupParams *)&v34 init];
  if (v5)
  {
    v6 = [v4 nocSigner];
    nocSigner = v5->_nocSigner;
    v5->_nocSigner = v6;

    v8 = [v4 fabricID];
    fabricID = v5->_fabricID;
    v5->_fabricID = v8;

    v10 = [v4 ipk];
    ipk = v5->_ipk;
    v5->_ipk = v10;

    v12 = [v4 vendorID];
    vendorID = v5->_vendorID;
    v5->_vendorID = v12;

    v14 = [v4 nodeID];
    nodeID = v5->_nodeID;
    v5->_nodeID = v14;

    v16 = [v4 caseAuthenticatedTags];
    caseAuthenticatedTags = v5->_caseAuthenticatedTags;
    v5->_caseAuthenticatedTags = v16;

    v18 = [v4 rootCertificate];
    rootCertificate = v5->_rootCertificate;
    v5->_rootCertificate = v18;

    v20 = [v4 intermediateCertificate];
    intermediateCertificate = v5->_intermediateCertificate;
    v5->_intermediateCertificate = v20;

    v22 = [v4 operationalCertificate];
    operationalCertificate = v5->_operationalCertificate;
    v5->_operationalCertificate = v22;

    v24 = [v4 operationalKeypair];
    operationalKeypair = v5->_operationalKeypair;
    v5->_operationalKeypair = v24;

    v26 = [v4 operationalCertificateIssuer];
    operationalCertificateIssuer = v5->_operationalCertificateIssuer;
    v5->_operationalCertificateIssuer = v26;

    v28 = [v4 operationalCertificateIssuerQueue];
    operationalCertificateIssuerQueue = v5->_operationalCertificateIssuerQueue;
    v5->_operationalCertificateIssuerQueue = v28;

    v30 = [v4 uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v30;

    v32 = v5;
  }

  return v5;
}

- (MTRDeviceControllerStartupParams)initWithParameters:(id)a3 error:(ChipError *)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = MTRDeviceControllerStartupParams;
  v7 = [(MTRDeviceControllerStartupParams *)&v40 init];
  v8 = v7;
  if (!v7)
  {
    v16 = 0x9300000003;
LABEL_11:
    *&a4->mError = v16;
    a4->mFile = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerStartupParams.mm";
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unexpected subclass of MTRDeviceControllerParameters", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    v7 = 0;
    v16 = 0x990000002FLL;
    goto LABEL_11;
  }

  nocSigner = v7->_nocSigner;
  v7->_nocSigner = 0;

  v10 = [v6 operationalCertificate];
  v39 = 0;
  *buf = 0;
  v11 = sub_239220D54(v10, buf, &v39);
  v13 = v12;
  v14 = v39;
  v15 = v39;
  *&a4->mError = v11;
  a4->mFile = v13;

  if (a4->mError)
  {
    v7 = 0;
  }

  else
  {
    objc_storeStrong(&v7->_fabricID, v14);
    v18 = [v6 ipk];
    ipk = v7->_ipk;
    v7->_ipk = v18;

    v20 = [v6 vendorID];
    vendorID = v7->_vendorID;
    v7->_vendorID = v20;

    nodeID = v7->_nodeID;
    v7->_nodeID = 0;

    caseAuthenticatedTags = v7->_caseAuthenticatedTags;
    v7->_caseAuthenticatedTags = 0;

    v24 = [v6 rootCertificate];
    rootCertificate = v7->_rootCertificate;
    v7->_rootCertificate = v24;

    v26 = [v6 intermediateCertificate];
    intermediateCertificate = v7->_intermediateCertificate;
    v7->_intermediateCertificate = v26;

    v28 = [v6 operationalCertificate];
    operationalCertificate = v7->_operationalCertificate;
    v7->_operationalCertificate = v28;

    v30 = [v6 operationalKeypair];
    operationalKeypair = v7->_operationalKeypair;
    v7->_operationalKeypair = v30;

    v32 = [v6 operationalCertificateIssuer];
    operationalCertificateIssuer = v7->_operationalCertificateIssuer;
    v7->_operationalCertificateIssuer = v32;

    v34 = [v6 operationalCertificateIssuerQueue];
    operationalCertificateIssuerQueue = v7->_operationalCertificateIssuerQueue;
    v7->_operationalCertificateIssuerQueue = v34;

    v36 = [v6 uniqueIdentifier];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v36;

    v7 = v7;
  }

LABEL_14:
  return v7;
}

- (uint64_t)fabricId
{
  v2 = [(MTRDeviceControllerStartupParams *)self fabricID];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (MTRDeviceControllerStartupParams)initWithSigningKeypair:(id)nocSigner fabricId:(uint64_t)fabricId ipk:(NSData *)ipk
{
  v8 = nocSigner;
  v9 = ipk;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:fabricId];
  v11 = [(MTRDeviceControllerStartupParams *)self initWithIPK:v9 fabricID:v10 nocSigner:v8];

  return v11;
}

@end