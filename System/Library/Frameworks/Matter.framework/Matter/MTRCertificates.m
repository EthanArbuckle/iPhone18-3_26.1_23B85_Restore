@interface MTRCertificates
+ (BOOL)isCertificate:(MTRCertificateDERBytes)certificate1 equalTo:(MTRCertificateDERBytes)certificate2;
+ (BOOL)keypair:(id)keypair matchesCertificate:(NSData *)certificate;
+ (MTRCSRDERBytes)createCertificateSigningRequest:(id)keypair error:(NSError *)error;
+ (MTRCertificateDERBytes)convertMatterCertificate:(MTRCertificateTLVBytes)matterCertificate;
+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error;
+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags error:(NSError *)error;
+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error;
+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error;
+ (MTRCertificateTLVBytes)convertX509Certificate:(MTRCertificateDERBytes)x509Certificate;
+ (NSData)generateCertificateSigningRequest:(id)keypair error:(NSError *)error;
+ (NSData)generateIntermediateCertificate:(id)rootKeypair rootCertificate:(NSData *)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error;
+ (NSData)generateOperationalCertificate:(id)signingKeypair signingCertificate:(NSData *)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricId:(NSNumber *)fabricId nodeId:(NSNumber *)nodeId caseAuthenticatedTags:(NSArray *)caseAuthenticatedTags error:(NSError *)error;
+ (NSData)generateRootCertificate:(id)keypair issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error;
+ (NSData)publicKeyFromCSR:(MTRCSRDERBytes)csr error:(NSError *)error;
@end

@implementation MTRCertificates

+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = keypair;
  v12 = issuerID;
  v13 = fabricID;
  v14 = validityPeriod;
  v15 = sub_2393D9044(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Generating root certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v23 = 0;
  v16 = sub_2392D32A8(v11, v12, v13, v14, &v23);
  v18 = v17;
  v19 = v23;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v16, v18);
  }

  if (v16)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      v25 = v20;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Generating root certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (MTRCertificateDERBytes)createRootCertificate:(id)keypair issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error
{
  v10 = keypair;
  v11 = issuerID;
  v12 = fabricID;
  v13 = objc_alloc(MEMORY[0x277CCA970]);
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 initWithStartDate:v14 endDate:v15];

  v17 = [a1 createRootCertificate:v10 issuerID:v11 fabricID:v12 validityPeriod:v16 error:error];

  return v17;
}

+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = rootKeypair;
  v15 = rootCertificate;
  v16 = issuerID;
  v17 = fabricID;
  v18 = validityPeriod;
  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Generating intermediate certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v27 = 0;
  v20 = sub_2392D3768(v14, v15, intermediatePublicKey, v16, v17, v18, &v27);
  v22 = v21;
  v23 = v27;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v20, v22);
  }

  if (v20)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_2393C9138();
      *buf = 136315138;
      v29 = v24;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Generating intermediate certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (MTRCertificateDERBytes)createIntermediateCertificate:(id)rootKeypair rootCertificate:(MTRCertificateDERBytes)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerID:(NSNumber *)issuerID fabricID:(NSNumber *)fabricID error:(NSError *)error
{
  v14 = rootKeypair;
  v15 = rootCertificate;
  v16 = issuerID;
  v17 = fabricID;
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = [MEMORY[0x277CBEAA8] distantFuture];
  v21 = [v18 initWithStartDate:v19 endDate:v20];

  v22 = [a1 createIntermediateCertificate:v14 rootCertificate:v15 intermediatePublicKey:intermediatePublicKey issuerID:v16 fabricID:v17 validityPeriod:v21 error:error];

  return v22;
}

+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags validityPeriod:(NSDateInterval *)validityPeriod error:(NSError *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricID;
  v17 = nodeID;
  v18 = caseAuthenticatedTags;
  v19 = validityPeriod;
  v20 = sub_2393D9044(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Generating operational certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2);
  }

  v29 = 0;
  v21 = sub_2392D3CD8(v28, v15, operationalPublicKey, v16, v17, v18, v19, &v29);
  v23 = v22;
  v24 = v29;
  if (error)
  {
    *error = sub_23921C1E4(MTRError, v21, v23);
  }

  if (v21)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_2393C9138();
      *buf = 136315138;
      v31 = v25;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Generating operational certificate failed: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (MTRCertificateDERBytes)createOperationalCertificate:(id)signingKeypair signingCertificate:(MTRCertificateDERBytes)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricID:(NSNumber *)fabricID nodeID:(NSNumber *)nodeID caseAuthenticatedTags:(NSSet *)caseAuthenticatedTags error:(NSError *)error
{
  v25 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricID;
  v17 = nodeID;
  v18 = caseAuthenticatedTags;
  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = [MEMORY[0x277CBEAA8] distantFuture];
  v22 = [v19 initWithStartDate:v20 endDate:v21];

  v23 = [a1 createOperationalCertificate:v25 signingCertificate:v15 operationalPublicKey:operationalPublicKey fabricID:v16 nodeID:v17 caseAuthenticatedTags:v18 validityPeriod:v22 error:error];

  return v23;
}

+ (BOOL)keypair:(id)keypair matchesCertificate:(NSData *)certificate
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = keypair;
  v6 = certificate;
  v17 = &unk_284BB9138;
  if (sub_238DC3C3C(v5, &v17))
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Can't extract public key from keypair: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    *buf = &unk_284BB9138;
    v8 = v6;
    v9 = v8;
    sub_238DB6950(v19, [(NSData *)v8 bytes], [(NSData *)v8 length]);

    v15 = *v19;
    if (!sub_2393FA970(&v15, buf))
    {
      v12 = memcmp(&buf[8], &v18, 0x41uLL) == 0;
      goto LABEL_12;
    }

    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_2393C9138();
      *v19 = 136315138;
      *&v19[4] = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Can't extract public key from certificate: %s", v19, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)isCertificate:(MTRCertificateDERBytes)certificate1 equalTo:(MTRCertificateDERBytes)certificate2
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = certificate1;
  v6 = certificate2;
  v33 = &unk_284BB9138;
  v7 = v5;
  v8 = v7;
  sub_238DB6950(buf, [(NSData *)v7 bytes], [(NSData *)v7 length]);

  *v29 = *buf;
  if (sub_2393FA970(v29, &v33))
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Can't extract public key from first certificate: %s", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v31 = &unk_284BB9138;
  v11 = v6;
  v12 = v11;
  sub_238DB6950(buf, [(NSData *)v11 bytes], [(NSData *)v11 length]);

  *v29 = *buf;
  if (sub_2393FA970(v29, &v31))
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Can't extract public key from second certificate: %s", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_12;
    }

LABEL_5:
    sub_2393C9138();
    sub_2393D5320(0, 1);
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (memcmp(&v34, &v32, 0x41uLL))
  {
    goto LABEL_12;
  }

  sub_23949ECF0(buf);
  v18 = v7;
  v19 = v18;
  sub_238DB6950(v29, [(NSData *)v18 bytes], [(NSData *)v18 length]);

  *v35 = *v29;
  if (sub_2394A09DC(v35, buf))
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_2393C9138();
      LODWORD(v29[0]) = 136315138;
      *(v29 + 4) = v21;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Can't extract subject DN from first certificate: %s", v29, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v15 = 0;
  }

  else
  {
    sub_23949ECF0(v29);
    v23 = v11;
    v24 = v23;
    sub_238DB6950(v35, [(NSData *)v23 bytes], [(NSData *)v23 length]);

    v28 = *v35;
    if (sub_2394A09DC(&v28, v29))
    {
      v25 = sub_2393D9044(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = sub_2393C9138();
        LODWORD(v35[0]) = 136315138;
        *(v35 + 4) = v26;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Can't extract subject DN from second certificate: %s", v35, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      v15 = 0;
    }

    else
    {
      v15 = sub_23949EB88(buf, v29);
    }

    nullsub_56(v29, v27);
  }

  nullsub_56(buf, v22);
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (MTRCSRDERBytes)createCertificateSigningRequest:(id)keypair error:(NSError *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = keypair;
  v15[1] = &unk_284BB9138;
  v16 = 0;
  v15[0] = &unk_284BA8C20;
  v17 = 0;
  v18 = &unk_284BB9138;
  v7 = sub_238DC3B28(v15, v5);
  if (v7 || (v12 = &v14, v13 = 255, v7 = sub_2393F3C24(v15, &v12), v7))
  {
    if (error)
    {
      sub_23921C1E4(MTRError, v7, v6);
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_238DB6950(v11, v12, v13);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v11[0] length:v11[1]];
  }

  sub_2393F96B4(v15);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MTRCertificateTLVBytes)convertX509Certificate:(MTRCertificateDERBytes)x509Certificate
{
  v14[50] = *MEMORY[0x277D85DE8];
  v3 = x509Certificate;
  sub_238DB6950(v14, [(NSData *)v3 bytes], [(NSData *)v3 length]);

  v11 = v14;
  v12 = 400;
  v4 = sub_2394A1510(v14[0], v14[1], &v11);
  v5 = sub_2393D9044(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "convertX509Certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "convertX509Certificate: Success", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3);
    }

    sub_238DB6950(buf, v11, v12);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:?];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (MTRCertificateDERBytes)convertMatterCertificate:(MTRCertificateTLVBytes)matterCertificate
{
  v12[75] = *MEMORY[0x277D85DE8];
  v3 = matterCertificate;
  sub_238DB6950(v12, [(NSData *)v3 bytes], [(NSData *)v3 length]);

  v9 = v12;
  v10 = 600;
  if (sub_2394A2688(v12[0], v12[1], &v9))
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "convertMatterCertificate: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v6 = 0;
  }

  else
  {
    sub_238DB6950(&buf, v9, v10);
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (NSData)publicKeyFromCSR:(MTRCSRDERBytes)csr error:(NSError *)error
{
  v17[9] = *MEMORY[0x277D85DE8];
  v5 = csr;
  sub_238DB6950(&v16, [(NSData *)v5 bytes], [(NSData *)v5 length]);

  v6 = v16;
  v16 = &unk_284BB9138;
  v8 = sub_2393F9A14(v6, v17[0], &v16);
  if (v8)
  {
    v9 = v7;
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "publicKeyFromCSR: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, v8, v9);
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:65];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (NSData)generateRootCertificate:(id)keypair issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error
{
  v6 = [MTRCertificates createRootCertificate:keypair issuerID:issuerId fabricID:fabricId error:error];

  return v6;
}

+ (NSData)generateIntermediateCertificate:(id)rootKeypair rootCertificate:(NSData *)rootCertificate intermediatePublicKey:(SecKeyRef)intermediatePublicKey issuerId:(NSNumber *)issuerId fabricId:(NSNumber *)fabricId error:(NSError *)error
{
  v8 = [MTRCertificates createIntermediateCertificate:rootKeypair rootCertificate:rootCertificate intermediatePublicKey:intermediatePublicKey issuerID:issuerId fabricID:fabricId error:error];

  return v8;
}

+ (NSData)generateOperationalCertificate:(id)signingKeypair signingCertificate:(NSData *)signingCertificate operationalPublicKey:(SecKeyRef)operationalPublicKey fabricId:(NSNumber *)fabricId nodeId:(NSNumber *)nodeId caseAuthenticatedTags:(NSArray *)caseAuthenticatedTags error:(NSError *)error
{
  v14 = signingKeypair;
  v15 = signingCertificate;
  v16 = fabricId;
  v17 = nodeId;
  v18 = caseAuthenticatedTags;
  if (v18)
  {
    v19 = [MEMORY[0x277CBEB98] setWithArray:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MTRCertificates createOperationalCertificate:v14 signingCertificate:v15 operationalPublicKey:operationalPublicKey fabricID:v16 nodeID:v17 caseAuthenticatedTags:v19 error:error];

  return v20;
}

+ (NSData)generateCertificateSigningRequest:(id)keypair error:(NSError *)error
{
  v4 = [MTRCertificates createCertificateSigningRequest:keypair error:error];

  return v4;
}

@end