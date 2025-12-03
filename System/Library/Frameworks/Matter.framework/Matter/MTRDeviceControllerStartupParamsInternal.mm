@interface MTRDeviceControllerStartupParamsInternal
- (BOOL)keypairsMatchCertificates;
- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)params;
- (Optional<unsigned)fabricIndex;
- (id)initForExistingFabric:(void *)fabric fabricIndex:(unsigned __int8)index keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params;
- (id)initForNewController:(id)controller fabricTable:(void *)table keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params error:(ChipError *)error;
- (id)initForNewFabric:(void *)fabric keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params;
@end

@implementation MTRDeviceControllerStartupParamsInternal

- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)params
{
  paramsCopy = params;
  v28.receiver = self;
  v28.super_class = MTRDeviceControllerStartupParamsInternal;
  v5 = [(MTRDeviceControllerStartupParams *)&v28 initWithParams:paramsCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  storageDelegate = v5->_storageDelegate;
  v5->_storageDelegate = 0;

  storageDelegateQueue = v6->_storageDelegateQueue;
  v6->_storageDelegateQueue = 0;

  nocSigner = [(MTRDeviceControllerStartupParams *)v6 nocSigner];
  if (nocSigner)
  {
  }

  else
  {
    rootCertificate = [(MTRDeviceControllerStartupParams *)v6 rootCertificate];

    if (!rootCertificate)
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

  operationalCertificate = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
  if (operationalCertificate)
  {
    nodeID = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (nodeID)
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

  caseAuthenticatedTags = [(MTRDeviceControllerStartupParams *)v6 caseAuthenticatedTags];
  if (caseAuthenticatedTags)
  {
    nodeID2 = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (!nodeID2)
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

  operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];

  if (operationalCertificate2)
  {
    operationalKeypair = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];

    if (operationalKeypair)
    {
      operationalKeypair2 = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];
      operationalCertificate3 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
      v20 = [MTRCertificates keypair:operationalKeypair2 matchesCertificate:operationalCertificate3];

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

- (id)initForNewFabric:(void *)fabric keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params
{
  v33 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v11 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:paramsCopy];
  v12 = v11;
  if (!v11)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  nocSigner = [(MTRDeviceControllerStartupParams *)v11 nocSigner];
  if (nocSigner)
  {
  }

  else
  {
    operationalCertificate = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];

    if (!operationalCertificate)
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

  operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (!operationalCertificate2)
  {
    nodeID = [(MTRDeviceControllerStartupParams *)v12 nodeID];

    if (nodeID)
    {
      goto LABEL_8;
    }

    v27 = arc4random();
    operationalCertificate2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(arc4random() >> 1) | (v27 << 31)];
    [(MTRDeviceControllerStartupParams *)v12 setNodeID:operationalCertificate2];
  }

LABEL_8:
  rootCertificate = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];

  if (!rootCertificate)
  {
    nocSigner2 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
    fabricID = [(MTRDeviceControllerStartupParams *)v12 fabricID];
    v30 = 0;
    v21 = [MTRCertificates createRootCertificate:nocSigner2 issuerID:0 fabricID:fabricID error:&v30];
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

  v12->_fabricTable = fabric;
  v12->_keystore = keystore;
  v12->_advertiseOperational = operational;
  v12->_allowMultipleControllersPerFabric = 0;
  v18 = v12;
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)initForExistingFabric:(void *)fabric fabricIndex:(unsigned __int8)index keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params
{
  indexCopy = index;
  v68 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v12 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:paramsCopy];
  if (!v12)
  {
    goto LABEL_79;
  }

  v13 = sub_2394A7FC0(fabric, indexCopy);
  vendorID = [(MTRDeviceControllerStartupParams *)v12 vendorID];

  if (!vendorID)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v13 + 138)];
    [(MTRDeviceControllerStartupParams *)v12 setVendorID:v15];
  }

  operationalCertificate = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (operationalCertificate)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  nodeID = [(MTRDeviceControllerStartupParams *)v12 nodeID];

  if (nodeID)
  {
    goto LABEL_7;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v13];
  [(MTRDeviceControllerStartupParams *)v12 setNodeID:v22];

  v63 = v67;
  v64 = 400;
  if (sub_2394A847C(fabric, *(v13 + 137), &v63))
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

  operationalKeypair = [(MTRDeviceControllerStartupParams *)v12 operationalKeypair];
  v36 = operationalKeypair == 0;

  if (v36)
  {
    sub_238DB6950(buf, v63, v64);
    v48 = sub_23921FFF0(buf);
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:v48];

    operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
    v50 = operationalCertificate2 == 0;

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

    if (((*(keystore->var0 + 3))(keystore, *(v13 + 137)) & 1) == 0)
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
  if (sub_2394A8274(fabric, *(v13 + 137), &v63))
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
  nocSigner = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
  if (nocSigner)
  {
    intermediateCertificate = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
    v27 = intermediateCertificate || v59 == 0;
    v28 = !v27;

    if (v28)
    {
      nocSigner2 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
      v30 = [MTRCertificates keypair:nocSigner2 matchesCertificate:v59];

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

  intermediateCertificate2 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v32 = intermediateCertificate2;
  if ((v59 == 0) == (intermediateCertificate2 != 0))
  {

    goto LABEL_39;
  }

  if (!v59)
  {

    goto LABEL_47;
  }

  intermediateCertificate3 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v34 = [MTRCertificates isCertificate:v59 equalTo:intermediateCertificate3];

  if (!v34)
  {
LABEL_39:
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:0];
  }

LABEL_47:
  v63 = v67;
  v64 = 400;
  if (sub_2394A7BFC(fabric, *(v13 + 137), &v63))
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
      rootCertificate = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
      v44 = rootCertificate == 0;

      if (v44)
      {
        [(MTRDeviceControllerStartupParams *)v12 setRootCertificate:v41];
      }

      else
      {
        rootCertificate2 = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
        v46 = [MTRCertificates isCertificate:v41 equalTo:rootCertificate2];

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

      v12->_fabricTable = fabric;
      v12->_fabricIndex.mValueHolder.mHasValue = 1;
      v12->_fabricIndex.mValueHolder.mValue.mData = indexCopy;
      v12->_keystore = keystore;
      v12->_advertiseOperational = operational;
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

- (id)initForNewController:(id)controller fabricTable:(void *)table keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params error:(ChipError *)error
{
  v75 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  paramsCopy = params;
  v70.receiver = self;
  v70.super_class = MTRDeviceControllerStartupParamsInternal;
  v16 = [(MTRDeviceControllerStartupParams *)&v70 initWithParameters:paramsCopy error:error];
  v17 = v16;
  if (v16)
  {
    v73[0] = &unk_284BB9138;
    rootCertificate = [(MTRDeviceControllerStartupParams *)v16 rootCertificate];
    v19 = rootCertificate;
    sub_238DB6950(buf, [rootCertificate bytes], objc_msgSend(rootCertificate, "length"));

    v69 = *buf;
    *&error->mError = sub_2393FA970(&v69, v73);
    error->mFile = v20;

    if (error->mError)
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *&error->mError;
        mFile = error->mFile;
        v24 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Can't extract public key from root certificate: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v25 = *&error->mError;
        v26 = error->mFile;
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      goto LABEL_7;
    }

    operationalCertificate = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
    v68 = 0;
    v29 = sub_239220D54(operationalCertificate, &v68, buf);
    v31 = v30;
    v61 = v68;
    *&error->mError = v29;
    error->mFile = v31;

    if (error->mError)
    {
      v27 = 0;
LABEL_45:

      goto LABEL_46;
    }

    fabricID = [(MTRDeviceControllerStartupParams *)v17 fabricID];
    v33 = sub_2394A7F44(table, v73, [fabricID unsignedLongLongValue], objc_msgSend(v61, "unsignedLongLongValue")) == 0;

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
      *&error->mError = 0x27A0000002FLL;
      error->mFile = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerStartupParams.mm";
      goto LABEL_45;
    }

    controllerDataStore = [controllerCopy controllerDataStore];
    fetchLastLocallyUsedNOC = [controllerDataStore fetchLastLocallyUsedNOC];

    if (fetchLastLocallyUsedNOC)
    {
      v37 = fetchLastLocallyUsedNOC;
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

      operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
      v44 = [MTRCertificates convertX509Certificate:operationalCertificate2];

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

      unsignedLongLongValue = [v61 unsignedLongLongValue];
      if (unsignedLongLongValue != v66 || !sub_239220F58(&v64, &v62))
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

        controllerDataStore2 = [controllerCopy controllerDataStore];
        [controllerDataStore2 clearAllResumptionInfo];
      }
    }

    v17->_fabricTable = table;
    v17->_keystore = keystore;
    v17->_advertiseOperational = operational;
    v17->_allowMultipleControllersPerFabric = 1;
    storageDelegate = [paramsCopy storageDelegate];
    storageDelegate = v17->_storageDelegate;
    v17->_storageDelegate = storageDelegate;

    storageDelegateQueue = [paramsCopy storageDelegateQueue];
    storageDelegateQueue = v17->_storageDelegateQueue;
    v17->_storageDelegateQueue = storageDelegateQueue;

    productAttestationAuthorityCertificates = [paramsCopy productAttestationAuthorityCertificates];
    productAttestationAuthorityCertificates = v17->_productAttestationAuthorityCertificates;
    v17->_productAttestationAuthorityCertificates = productAttestationAuthorityCertificates;

    certificationDeclarationCertificates = [paramsCopy certificationDeclarationCertificates];
    certificationDeclarationCertificates = v17->_certificationDeclarationCertificates;
    v17->_certificationDeclarationCertificates = certificationDeclarationCertificates;

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
  nocSigner = [(MTRDeviceControllerStartupParams *)self nocSigner];

  if (nocSigner)
  {
    intermediateCertificate = [(MTRDeviceControllerStartupParams *)self intermediateCertificate];
    if (intermediateCertificate || ([(MTRDeviceControllerStartupParams *)self rootCertificate], (intermediateCertificate = objc_claimAutoreleasedReturnValue()) != 0))
    {
      nocSigner2 = [(MTRDeviceControllerStartupParams *)self nocSigner];
      v6 = [MTRCertificates keypair:nocSigner2 matchesCertificate:intermediateCertificate];

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

      intermediateCertificate = 0;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  operationalCertificate = [(MTRDeviceControllerStartupParams *)self operationalCertificate];
  if (!operationalCertificate)
  {
    goto LABEL_9;
  }

  v8 = operationalCertificate;
  operationalKeypair = [(MTRDeviceControllerStartupParams *)self operationalKeypair];

  if (!operationalKeypair || ([(MTRDeviceControllerStartupParams *)self operationalKeypair], v10 = objc_claimAutoreleasedReturnValue(), [(MTRDeviceControllerStartupParams *)self operationalCertificate], v11 = objc_claimAutoreleasedReturnValue(), v12 = [MTRCertificates keypair:v10 matchesCertificate:v11], v11, v10, v12))
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