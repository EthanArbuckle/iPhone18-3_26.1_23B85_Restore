@interface MTRDeviceControllerStartupParamsInternal
- (BOOL)keypairsMatchCertificates;
- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)a3;
- (Optional<unsigned)fabricIndex;
- (id)initForExistingFabric:(void *)a3 fabricIndex:(unsigned __int8)a4 keystore:(OperationalKeystore *)a5 advertiseOperational:(BOOL)a6 params:(id)a7;
- (id)initForNewController:(id)a3 fabricTable:(void *)a4 keystore:(OperationalKeystore *)a5 advertiseOperational:(BOOL)a6 params:(id)a7 error:(ChipError *)a8;
- (id)initForNewFabric:(void *)a3 keystore:(OperationalKeystore *)a4 advertiseOperational:(BOOL)a5 params:(id)a6;
@end

@implementation MTRDeviceControllerStartupParamsInternal

- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MTRDeviceControllerStartupParamsInternal;
  v5 = [(MTRDeviceControllerStartupParams *)&v28 initWithParams:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  storageDelegate = v5->_storageDelegate;
  v5->_storageDelegate = 0;

  storageDelegateQueue = v6->_storageDelegateQueue;
  v6->_storageDelegateQueue = 0;

  v9 = [(MTRDeviceControllerStartupParams *)v6 nocSigner];
  if (v9)
  {
  }

  else
  {
    v10 = [(MTRDeviceControllerStartupParams *)v6 rootCertificate];

    if (!v10)
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "nocSigner and rootCertificate are both nil; no public key available to identify the fabric", v27, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v11 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
  if (v11)
  {
    v12 = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (v12)
    {
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "nodeID must be nil if operationalCertificate is not nil", v27, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v14 = [(MTRDeviceControllerStartupParams *)v6 caseAuthenticatedTags];
  if (v14)
  {
    v15 = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (!v15)
    {
      v23 = sub_2393D9044(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "caseAuthenticatedTags must be nil if nodeID is nil", v27, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v16 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];

  if (v16)
  {
    v17 = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];

    if (v17)
    {
      v18 = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];
      v19 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
      v20 = [MTRCertificates keypair:v18 matchesCertificate:v19];

      if (v20)
      {
        goto LABEL_16;
      }

      v25 = sub_2393D9044(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "operationalKeypair public key does not match operationalCertificate", v27, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Must have an operational keypair if an operational certificate is provided", v27, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    sub_2393D5320(0, 1);
LABEL_33:
    v21 = 0;
    goto LABEL_34;
  }

LABEL_16:
  v21 = v6;
LABEL_34:

  return v21;
}

- (id)initForNewFabric:(void *)a3 keystore:(OperationalKeystore *)a4 advertiseOperational:(BOOL)a5 params:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:v10];
  v12 = v11;
  if (!v11)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v13 = [(MTRDeviceControllerStartupParams *)v11 nocSigner];
  if (v13)
  {
  }

  else
  {
    v14 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];

    if (!v14)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "No way to get an operational certificate: nocSigner and operationalCertificate are both nil", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      goto LABEL_20;
    }
  }

  v15 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (!v15)
  {
    v16 = [(MTRDeviceControllerStartupParams *)v12 nodeID];

    if (v16)
    {
      goto LABEL_8;
    }

    v27 = arc4random();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(arc4random() >> 1) | (v27 << 31)];
    [(MTRDeviceControllerStartupParams *)v12 setNodeID:v15];
  }

LABEL_8:
  v17 = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];

  if (!v17)
  {
    v19 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
    v20 = [(MTRDeviceControllerStartupParams *)v12 fabricID];
    v30 = 0;
    v21 = [MTRCertificates createRootCertificate:v19 issuerID:0 fabricID:v20 error:&v30];
    v22 = v30;
    [(MTRDeviceControllerStartupParams *)v12 setRootCertificate:v21];

    if (v22 || ([(MTRDeviceControllerStartupParams *)v12 rootCertificate], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == 0, v28, v29))
    {
      v23 = sub_2393D9044(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v22;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Failed to generate root certificate: %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      goto LABEL_20;
    }
  }

  v12->_fabricTable = a3;
  v12->_keystore = a4;
  v12->_advertiseOperational = a5;
  v12->_allowMultipleControllersPerFabric = 0;
  v18 = v12;
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)initForExistingFabric:(void *)a3 fabricIndex:(unsigned __int8)a4 keystore:(OperationalKeystore *)a5 advertiseOperational:(BOOL)a6 params:(id)a7
{
  v8 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:v11];
  if (!v12)
  {
    goto LABEL_79;
  }

  v13 = sub_2394A7FC0(a3, v8);
  v14 = [(MTRDeviceControllerStartupParams *)v12 vendorID];

  if (!v14)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v13 + 138)];
    [(MTRDeviceControllerStartupParams *)v12 setVendorID:v15];
  }

  v16 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (v16)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = [(MTRDeviceControllerStartupParams *)v12 nodeID];

  if (v17)
  {
    goto LABEL_7;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v13];
  [(MTRDeviceControllerStartupParams *)v12 setNodeID:v22];

  v63 = v67;
  v64 = 400;
  if (sub_2394A847C(a3, *(v13 + 137), &v63))
  {
    v23 = sub_2393D9044(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_2393C9138();
      *buf = 136315138;
      v66 = v24;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Failed to get existing NOC: %s", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_79;
    }

    goto LABEL_20;
  }

  v35 = [(MTRDeviceControllerStartupParams *)v12 operationalKeypair];
  v36 = v35 == 0;

  if (v36)
  {
    sub_238DB6950(buf, v63, v64);
    v48 = sub_23921FFF0(buf);
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:v48];

    v49 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
    v50 = v49 == 0;

    if (v50)
    {
      v55 = sub_2393D9044(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = sub_2393C9138();
        *buf = 136315138;
        v66 = v56;
        _os_log_impl(&dword_238DAE000, v55, OS_LOG_TYPE_ERROR, "Failed to convert TLV NOC to DER X.509: %s", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_79;
      }

LABEL_20:
      sub_2393C9138();
LABEL_21:
      sub_2393D5320(0, 1);
      goto LABEL_79;
    }

    if (((*(a5->var0 + 3))(a5, *(v13 + 137)) & 1) == 0)
    {
      v51 = sub_2393D9044(0);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v51, OS_LOG_TYPE_ERROR, "No existing operational key for fabric", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_79;
      }

      goto LABEL_21;
    }
  }

  v61 = 0;
  v62 = 0;
  sub_238DB6950(buf, v63, v64);
  if (sub_2394A052C(buf, &v61))
  {
    v37 = sub_2393D9044(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = sub_2393C9138();
      *buf = 136315138;
      v66 = v38;
      _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Failed to extract existing CATs: %s", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_79;
    }

LABEL_12:
    sub_2393C9138();
    sub_2393D5320(0, 1);
LABEL_79:
    v42 = 0;
    goto LABEL_80;
  }

  v52 = 0;
  for (i = 0; i != 12; i += 4)
  {
    if (*(&v61 + i))
    {
      ++v52;
    }
  }

  if (v52)
  {
    v54 = sub_2392213E0(&v61);
    [(MTRDeviceControllerStartupParams *)v12 setCaseAuthenticatedTags:v54];
  }

  else
  {
    [(MTRDeviceControllerStartupParams *)v12 setCaseAuthenticatedTags:0];
  }

  v18 = 1;
LABEL_8:
  v63 = v67;
  v64 = 400;
  if (sub_2394A8274(a3, *(v13 + 137), &v63))
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      v66 = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to get existing intermediate certificate: %s", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_79;
    }

    goto LABEL_12;
  }

  if (v64)
  {
    sub_238DB6950(buf, v63, v64);
    v21 = sub_23921FFF0(buf);
    if (!v21)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v21 = 0;
  }

  v59 = v21;
  v25 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
  if (v25)
  {
    v26 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
    v27 = v26 || v59 == 0;
    v28 = !v27;

    if (v28)
    {
      v29 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
      v30 = [MTRCertificates keypair:v29 matchesCertificate:v59];

      if (v30)
      {
        [(MTRDeviceControllerStartupParams *)v12 setIntermediateCertificate:v59];
      }
    }
  }

  if (!v18)
  {
    goto LABEL_47;
  }

  v31 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v32 = v31;
  if ((v59 == 0) == (v31 != 0))
  {

    goto LABEL_39;
  }

  if (!v59)
  {

    goto LABEL_47;
  }

  v33 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v34 = [MTRCertificates isCertificate:v59 equalTo:v33];

  if (!v34)
  {
LABEL_39:
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:0];
  }

LABEL_47:
  v63 = v67;
  v64 = 400;
  if (sub_2394A7BFC(a3, *(v13 + 137), &v63))
  {
    v39 = sub_2393D9044(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_2393C9138();
      *buf = 136315138;
      v66 = v40;
      _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Failed to get existing root certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v41 = 0;
  }

  else
  {
    sub_238DB6950(buf, v63, v64);
    v41 = sub_23921FFF0(buf);
    if (v41)
    {
      v43 = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
      v44 = v43 == 0;

      if (v44)
      {
        [(MTRDeviceControllerStartupParams *)v12 setRootCertificate:v41];
      }

      else
      {
        v45 = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
        v46 = [MTRCertificates isCertificate:v41 equalTo:v45];

        if (!v46)
        {
          v47 = sub_2393D9044(0);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *v67 = 0;
            _os_log_impl(&dword_238DAE000, v47, OS_LOG_TYPE_ERROR, "Root certificate identity does not match existing root certificate", v67, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          goto LABEL_53;
        }
      }

      v12->_fabricTable = a3;
      v12->_fabricIndex.mValueHolder.mHasValue = 1;
      v12->_fabricIndex.mValueHolder.mValue.mData = v8;
      v12->_keystore = a5;
      v12->_advertiseOperational = a6;
      v12->_allowMultipleControllersPerFabric = 0;
      v42 = v12;
      goto LABEL_54;
    }
  }

LABEL_53:
  v42 = 0;
LABEL_54:

LABEL_80:
  v57 = *MEMORY[0x277D85DE8];
  return v42;
}

- (id)initForNewController:(id)a3 fabricTable:(void *)a4 keystore:(OperationalKeystore *)a5 advertiseOperational:(BOOL)a6 params:(id)a7 error:(ChipError *)a8
{
  v75 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  v70.receiver = self;
  v70.super_class = MTRDeviceControllerStartupParamsInternal;
  v16 = [(MTRDeviceControllerStartupParams *)&v70 initWithParameters:v15 error:a8];
  v17 = v16;
  if (v16)
  {
    v73[0] = &unk_284BB9138;
    v18 = [(MTRDeviceControllerStartupParams *)v16 rootCertificate];
    v19 = v18;
    sub_238DB6950(buf, [v18 bytes], objc_msgSend(v18, "length"));

    v69 = *buf;
    *&a8->mError = sub_2393FA970(&v69, v73);
    a8->mFile = v20;

    if (a8->mError)
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *&a8->mError;
        mFile = a8->mFile;
        v24 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Can't extract public key from root certificate: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v25 = *&a8->mError;
        v26 = a8->mFile;
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      goto LABEL_7;
    }

    v28 = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
    v68 = 0;
    v29 = sub_239220D54(v28, &v68, buf);
    v31 = v30;
    v61 = v68;
    *&a8->mError = v29;
    a8->mFile = v31;

    if (a8->mError)
    {
      v27 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v32 = [(MTRDeviceControllerStartupParams *)v17 fabricID];
    v33 = sub_2394A7F44(a4, v73, [v32 unsignedLongLongValue], objc_msgSend(v61, "unsignedLongLongValue")) == 0;

    if (!v33)
    {
      v34 = sub_2393D9044(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Trying to start a controller identity that is already running", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v27 = 0;
      *&a8->mError = 0x27A0000002FLL;
      a8->mFile = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerStartupParams.mm";
      goto LABEL_45;
    }

    v35 = [v14 controllerDataStore];
    v36 = [v35 fetchLastLocallyUsedNOC];

    if (v36)
    {
      v37 = v36;
      v38 = v37;
      sub_238DB6950(buf, [v37 bytes], objc_msgSend(v37, "length"));

      v69 = *buf;
      v66 = 0;
      v67 = 0;
      if (sub_2394A03F4(&v69, &v66, &v67))
      {
        v39 = sub_2393D9044(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v40;
          _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Unable to extract node ID and fabric ID from old operational certificate: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        goto LABEL_34;
      }

      v64 = 0;
      v65 = 0;
      if (sub_2394A052C(&v69, &v64))
      {
        v41 = sub_2393D9044(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v42;
          _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Failed to extract CATs from old operational certificate: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        goto LABEL_34;
      }

      v43 = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
      v44 = [MTRCertificates convertX509Certificate:v43];

      if (!v44)
      {
LABEL_34:
        v27 = 0;
LABEL_44:

        goto LABEL_45;
      }

      *buf = sub_238EF479C(v44);
      *&buf[8] = v45;
      v62 = 0;
      v63 = 0;
      if (sub_2394A052C(buf, &v62))
      {
        v46 = sub_2393D9044(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = sub_2393C9138();
          *v71 = 136315138;
          v72 = v47;
          _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_ERROR, "Failed to extract CATs from new operational certificate: %s", v71, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        goto LABEL_34;
      }

      v48 = [v61 unsignedLongLongValue];
      if (v48 != v66 || !sub_239220F58(&v64, &v62))
      {
        v49 = sub_2393D9044(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *v71 = 0;
          _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_DEFAULT, "Node ID or CATs changed.  Clearing CASE resumption storage.", v71, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2);
        }

        v50 = [v14 controllerDataStore];
        [v50 clearAllResumptionInfo];
      }
    }

    v17->_fabricTable = a4;
    v17->_keystore = a5;
    v17->_advertiseOperational = a6;
    v17->_allowMultipleControllersPerFabric = 1;
    v51 = [v15 storageDelegate];
    storageDelegate = v17->_storageDelegate;
    v17->_storageDelegate = v51;

    v53 = [v15 storageDelegateQueue];
    storageDelegateQueue = v17->_storageDelegateQueue;
    v17->_storageDelegateQueue = v53;

    v55 = [v15 productAttestationAuthorityCertificates];
    productAttestationAuthorityCertificates = v17->_productAttestationAuthorityCertificates;
    v17->_productAttestationAuthorityCertificates = v55;

    v57 = [v15 certificationDeclarationCertificates];
    certificationDeclarationCertificates = v17->_certificationDeclarationCertificates;
    v17->_certificationDeclarationCertificates = v57;

    v27 = v17;
    goto LABEL_44;
  }

LABEL_7:
  v27 = 0;
LABEL_46:

  v59 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)keypairsMatchCertificates
{
  v3 = [(MTRDeviceControllerStartupParams *)self nocSigner];

  if (v3)
  {
    v4 = [(MTRDeviceControllerStartupParams *)self intermediateCertificate];
    if (v4 || ([(MTRDeviceControllerStartupParams *)self rootCertificate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = [(MTRDeviceControllerStartupParams *)self nocSigner];
      v6 = [MTRCertificates keypair:v5 matchesCertificate:v4];

      if (v6)
      {

        goto LABEL_6;
      }

      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Provided nocSigner does not match certificates", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    else
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "No certificate to match nocSigner", v20, 2u);
      }

      v4 = 0;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  v7 = [(MTRDeviceControllerStartupParams *)self operationalCertificate];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(MTRDeviceControllerStartupParams *)self operationalKeypair];

  if (!v9 || ([(MTRDeviceControllerStartupParams *)self operationalKeypair], v10 = objc_claimAutoreleasedReturnValue(), [(MTRDeviceControllerStartupParams *)self operationalCertificate], v11 = objc_claimAutoreleasedReturnValue(), v12 = [MTRCertificates keypair:v10 matchesCertificate:v11], v11, v10, v12))
  {
LABEL_9:
    LOBYTE(v13) = 1;
    return v13;
  }

  v15 = sub_2393D9044(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Provided operationalKeypair does not match operationalCertificate", v18, 2u);
  }

  v13 = sub_2393D5398(1u);
  if (v13)
  {
    sub_2393D5320(0, 1);
LABEL_23:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (Optional<unsigned)fabricIndex
{
  mHasValue = self->_fabricIndex.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    v2[1] = self->_fabricIndex.mValueHolder.mValue.mData;
  }

  return self;
}

@end