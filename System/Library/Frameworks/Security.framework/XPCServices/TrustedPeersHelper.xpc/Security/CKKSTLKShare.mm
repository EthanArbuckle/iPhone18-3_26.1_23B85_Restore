@interface CKKSTLKShare
+ (id)share:(id)share as:(id)as to:(id)to epoch:(int64_t)epoch poisoned:(int64_t)poisoned error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)signatureVerifiesWithPeerSet:(id)set ckrecord:(id)ckrecord error:(id *)error;
- (BOOL)verifySignature:(id)signature verifyingPeer:(id)peer ckrecord:(id)ckrecord error:(id *)error;
- (CKKSTLKShare)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataForSigning:(id)signing;
- (id)description;
- (id)init:(id)init sender:(id)sender receiver:(id)receiver curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)poisoned zoneID:(id)self0;
- (id)initForKey:(id)key senderPeerID:(id)d recieverPeerID:(id)iD receiverEncPublicKeySPKI:(id)i curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)self0 wrappedKey:(id)self1 signature:(id)self2 zoneID:(id)self3;
- (id)recoverTLK:(id)k trustedPeers:(id)peers ckrecord:(id)ckrecord error:(id *)error;
- (id)signRecord:(id)record ckrecord:(id)ckrecord error:(id *)error;
- (id)unwrapUsing:(id)using error:(id *)error;
- (id)wrap:(id)wrap publicKey:(id)key error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSTLKShare

- (id)recoverTLK:(id)k trustedPeers:(id)peers ckrecord:(id)ckrecord error:(id *)error
{
  kCopy = k;
  peersCopy = peers;
  ckrecordCopy = ckrecord;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [peersCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v35 = ckrecordCopy;
  v36 = kCopy;
  v14 = 0;
  v15 = *v39;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(peersCopy);
      }

      v17 = *(*(&v38 + 1) + 8 * i);
      peerID = [v17 peerID];
      senderPeerID = [(CKKSTLKShare *)self senderPeerID];
      v20 = [peerID isEqualToString:senderPeerID];

      if (v20)
      {
        v21 = v17;

        v14 = v21;
      }
    }

    v13 = [peersCopy countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v13);
  ckrecordCopy = v35;
  kCopy = v36;
  if (!v14)
  {
LABEL_15:
    v30 = [NSString stringWithFormat:@"No trusted peer signed %@", self];
    v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:19 description:v30];

    if (error)
    {
      v31 = v29;
      v14 = 0;
      v28 = 0;
      *error = v29;
      goto LABEL_25;
    }

    v14 = 0;
    goto LABEL_19;
  }

  signature = [(CKKSTLKShare *)self signature];
  v23 = [(CKKSTLKShare *)self verifySignature:signature verifyingPeer:v14 ckrecord:v35 error:error];

  if (!v23)
  {
    v29 = 0;
LABEL_19:
    v28 = 0;
    goto LABEL_25;
  }

  v24 = [(CKKSTLKShare *)self unwrapUsing:v36 error:error];
  if (!v24)
  {
    v29 = 0;
    goto LABEL_23;
  }

  tlkUUID = [(CKKSTLKShare *)self tlkUUID];
  uuid = [v24 uuid];
  v27 = [tlkUUID isEqualToString:uuid];

  if ((v27 & 1) == 0)
  {
    v32 = [NSString stringWithFormat:@"Signed UUID doesn't match unsigned UUID for %@", self];
    v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:20 description:v32];

    if (error)
    {
      v33 = v29;
      v28 = 0;
      *error = v29;
      goto LABEL_24;
    }

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  v28 = v24;
  v29 = 0;
LABEL_24:

LABEL_25:

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tlkUUID = [(CKKSTLKShare *)self tlkUUID];
    tlkUUID2 = [v5 tlkUUID];
    if (![tlkUUID isEqualToString:tlkUUID2])
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    zoneID = [(CKKSTLKShare *)self zoneID];
    zoneID2 = [v5 zoneID];
    if (![zoneID isEqual:zoneID2])
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    senderPeerID = [(CKKSTLKShare *)self senderPeerID];
    senderPeerID2 = [v5 senderPeerID];
    v46 = senderPeerID;
    if (![senderPeerID isEqualToString:senderPeerID2])
    {
      v13 = 0;
LABEL_35:

      goto LABEL_36;
    }

    receiverPeerID = [(CKKSTLKShare *)self receiverPeerID];
    if (receiverPeerID || ([v5 receiverPeerID], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      receiverPeerID2 = [(CKKSTLKShare *)self receiverPeerID];
      [v5 receiverPeerID];
      v43 = v44 = receiverPeerID2;
      if (![receiverPeerID2 isEqual:?])
      {
        v13 = 0;
        goto LABEL_32;
      }

      v42 = 1;
    }

    else
    {
      v39 = 0;
      v42 = 0;
    }

    receiverPublicEncryptionKeySPKI = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
    if (receiverPublicEncryptionKeySPKI || ([v5 receiverPublicEncryptionKeySPKI], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      receiverPublicEncryptionKeySPKI2 = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
      receiverPublicEncryptionKeySPKI3 = [v5 receiverPublicEncryptionKeySPKI];
      v41 = receiverPublicEncryptionKeySPKI2;
      if (![receiverPublicEncryptionKeySPKI2 isEqual:?])
      {
        v13 = 0;
        v17 = receiverPublicEncryptionKeySPKI;
        goto LABEL_29;
      }

      v38 = receiverPublicEncryptionKeySPKI;
      v16 = 1;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v16 = 0;
    }

    epoch = [(CKKSTLKShare *)self epoch];
    if (epoch != [v5 epoch] || (v19 = -[CKKSTLKShare curve](self, "curve"), v19 != objc_msgSend(v5, "curve")) || (v20 = -[CKKSTLKShare poisoned](self, "poisoned"), v20 != objc_msgSend(v5, "poisoned")))
    {
      v13 = 0;
      v17 = v38;
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    [(CKKSTLKShare *)self wrappedTLK];
    v36 = v17 = v38;
    if (v36 || ([v5 wrappedTLK], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = v16;
      wrappedTLK = [(CKKSTLKShare *)self wrappedTLK];
      wrappedTLK2 = [v5 wrappedTLK];
      v33 = wrappedTLK;
      if (![wrappedTLK isEqual:?])
      {
        v13 = 0;
        LOBYTE(v16) = v34;
        goto LABEL_48;
      }

      v31 = 1;
      LOBYTE(v16) = v34;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    signature = [(CKKSTLKShare *)self signature];
    if (signature || ([v5 signature], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [(CKKSTLKShare *)self signature:v27];
      signature2 = [v5 signature];
      v13 = [v30 isEqual:signature2];

      if (signature)
      {

        v17 = v38;
        if (!v31)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v17 = v38;
      v26 = v28;
    }

    else
    {
      v26 = 0;
      v13 = 1;
    }

    if ((v31 & 1) == 0)
    {
LABEL_49:
      v25 = v36;
      if (!v36)
      {

        v25 = 0;
      }

      if ((v16 & 1) == 0)
      {
LABEL_30:
        if (v17)
        {

          if (v42)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v42)
          {
LABEL_32:
            v22 = receiverPeerID;

            if (receiverPeerID)
            {
LABEL_34:

              goto LABEL_35;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

        v22 = receiverPeerID;
        if (receiverPeerID)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_29:

      goto LABEL_30;
    }

LABEL_48:

    goto LABEL_49;
  }

  v13 = 0;
LABEL_38:

  return v13;
}

- (CKKSTLKShare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CKKSTLKShare;
  v5 = [(CKKSTLKShare *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v5->_curve = [coderCopy decodeInt64ForKey:@"curve"];
    v5->_version = [coderCopy decodeInt64ForKey:@"version"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tlkUUID"];
    tlkUUID = v5->_tlkUUID;
    v5->_tlkUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderPeerID"];
    senderPeerID = v5->_senderPeerID;
    v5->_senderPeerID = v10;

    v5->_epoch = [coderCopy decodeInt64ForKey:@"epoch"];
    v5->_poisoned = [coderCopy decodeInt64ForKey:@"poisoned"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedTLK"];
    wrappedTLK = v5->_wrappedTLK;
    v5->_wrappedTLK = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverPeerID"];
    receiverPeerID = v5->_receiverPeerID;
    v5->_receiverPeerID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiverSPKI"];
    receiverPublicEncryptionKeySPKI = v5->_receiverPublicEncryptionKeySPKI;
    v5->_receiverPublicEncryptionKeySPKI = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  zoneID = [(CKKSTLKShare *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];

  [coderCopy encodeInt64:-[CKKSTLKShare curve](self forKey:{"curve"), @"curve"}];
  [coderCopy encodeInt64:-[CKKSTLKShare version](self forKey:{"version"), @"version"}];
  tlkUUID = [(CKKSTLKShare *)self tlkUUID];
  [coderCopy encodeObject:tlkUUID forKey:@"tlkUUID"];

  senderPeerID = [(CKKSTLKShare *)self senderPeerID];
  [coderCopy encodeObject:senderPeerID forKey:@"senderPeerID"];

  [coderCopy encodeInt64:-[CKKSTLKShare epoch](self forKey:{"epoch"), @"epoch"}];
  [coderCopy encodeInt64:-[CKKSTLKShare poisoned](self forKey:{"poisoned"), @"poisoned"}];
  wrappedTLK = [(CKKSTLKShare *)self wrappedTLK];
  [coderCopy encodeObject:wrappedTLK forKey:@"wrappedTLK"];

  signature = [(CKKSTLKShare *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  receiverPeerID = [(CKKSTLKShare *)self receiverPeerID];
  [coderCopy encodeObject:receiverPeerID forKey:@"receiverPeerID"];

  receiverPublicEncryptionKeySPKI = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
  [coderCopy encodeObject:receiverPublicEncryptionKeySPKI forKey:@"receiverSPKI"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCurve:{-[CKKSTLKShare curve](self, "curve")}];
  [v4 setVersion:{-[CKKSTLKShare version](self, "version")}];
  tlkUUID = [(CKKSTLKShare *)self tlkUUID];
  v6 = [tlkUUID copy];
  [v4 setTlkUUID:v6];

  senderPeerID = [(CKKSTLKShare *)self senderPeerID];
  v8 = [senderPeerID copy];
  [v4 setSenderPeerID:v8];

  [v4 setEpoch:{-[CKKSTLKShare epoch](self, "epoch")}];
  [v4 setPoisoned:{-[CKKSTLKShare poisoned](self, "poisoned")}];
  wrappedTLK = [(CKKSTLKShare *)self wrappedTLK];
  v10 = [wrappedTLK copy];
  [v4 setWrappedTLK:v10];

  signature = [(CKKSTLKShare *)self signature];
  v12 = [signature copy];
  [v4 setSignature:v12];

  receiverPeerID = [(CKKSTLKShare *)self receiverPeerID];
  v14 = [receiverPeerID copy];
  [v4 setReceiverPeerID:v14];

  receiverPublicEncryptionKeySPKI = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
  v16 = [receiverPublicEncryptionKeySPKI copy];
  [v4 setReceiverPublicEncryptionKeySPKI:v16];

  return v4;
}

- (BOOL)signatureVerifiesWithPeerSet:(id)set ckrecord:(id)ckrecord error:(id *)error
{
  setCopy = set;
  ckrecordCopy = ckrecord;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = setCopy;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
    v12 = 0;
    v13 = *v38;
    v33 = *v38;
    while (2)
    {
      v14 = 0;
      v34 = v11;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v37 + 1) + 8 * v14);
        peerID = [v15 peerID];
        senderPeerID = [(CKKSTLKShare *)self senderPeerID];
        v18 = [peerID isEqualToString:senderPeerID];

        if (v18)
        {
          signature = [(CKKSTLKShare *)self signature];
          v36 = 0;
          v20 = [(CKKSTLKShare *)self verifySignature:signature verifyingPeer:v15 ckrecord:ckrecordCopy error:&v36];
          v21 = v36;

          if (v21)
          {
            v22 = v12;
            v23 = v9;
            zoneID = [(CKKSTLKShare *)self zoneID];
            zoneName = [zoneID zoneName];
            v26 = sub_10020F5C8(@"ckksshare", zoneName);

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              selfCopy = self;
              v43 = 2112;
              v44 = v15;
              v45 = 2112;
              v46 = v21;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "signature didn't verify for %@ %@: %@", buf, 0x20u);
            }

            v12 = v21;
            v9 = v23;
            v13 = v33;
            v11 = v34;
          }

          if (v20)
          {

            v28 = 1;
            goto LABEL_21;
          }
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    error = errorCopy;
    if (errorCopy)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v27 = v12;
      v28 = 0;
      *errorCopy = v12;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {

    if (error)
    {
LABEL_19:
      senderPeerID2 = [(CKKSTLKShare *)self senderPeerID];
      v30 = [NSString stringWithFormat:@"No TLK share from %@", senderPeerID2];
      *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:35 description:v30];
    }

    v28 = 0;
    v12 = 0;
  }

LABEL_21:

  return v28;
}

- (BOOL)verifySignature:(id)signature verifyingPeer:(id)peer ckrecord:(id)ckrecord error:(id *)error
{
  signatureCopy = signature;
  peerCopy = peer;
  ckrecordCopy = ckrecord;
  publicSigningKey = [peerCopy publicSigningKey];

  if (publicSigningKey)
  {
    v14 = [_SFEC_X962SigningOperation alloc];
    v15 = [[_SFECKeySpecifier alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
    v16 = objc_alloc_init(_SFSHA256DigestOperation);
    v17 = [v14 initWithKeySpecifier:v15 digestOperation:v16];

    v18 = [_SFSignedData alloc];
    v19 = [(CKKSTLKShare *)self dataForSigning:ckrecordCopy];
    v20 = [v18 initWithData:v19 signature:signatureCopy];

    publicSigningKey2 = [peerCopy publicSigningKey];
    v22 = [v17 verify:v20 withKey:publicSigningKey2 error:error];
    LOBYTE(error) = v22 != 0;
  }

  else
  {
    zoneID = [(CKKSTLKShare *)self zoneID];
    zoneName = [zoneID zoneName];
    v25 = sub_10020F5C8(@"ckksshare", zoneName);

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = peerCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "no signing key for peer: %@", buf, 0xCu);
    }

    if (error)
    {
      peerCopy = [NSString stringWithFormat:@"Peer(%@) has no signing key", peerCopy];
      *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:37 description:peerCopy];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (id)signRecord:(id)record ckrecord:(id)ckrecord error:(id *)error
{
  ckrecordCopy = ckrecord;
  recordCopy = record;
  v10 = [_SFEC_X962SigningOperation alloc];
  v11 = [[_SFECKeySpecifier alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
  v12 = objc_alloc_init(_SFSHA256DigestOperation);
  v13 = [v10 initWithKeySpecifier:v11 digestOperation:v12];

  v14 = [(CKKSTLKShare *)self dataForSigning:ckrecordCopy];

  v15 = [v13 sign:v14 withKey:recordCopy error:error];

  signature = [v15 signature];

  return signature;
}

- (id)dataForSigning:(id)signing
{
  signingCopy = signing;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableData);
  version = [(CKKSTLKShare *)self version];
  [v6 appendBytes:&version length:8];
  receiverPeerID = [(CKKSTLKShare *)self receiverPeerID];
  v8 = [receiverPeerID dataUsingEncoding:4];
  [v6 appendData:v8];

  senderPeerID = [(CKKSTLKShare *)self senderPeerID];
  v10 = [senderPeerID dataUsingEncoding:4];
  [v6 appendData:v10];

  wrappedTLK = [(CKKSTLKShare *)self wrappedTLK];
  [v6 appendData:wrappedTLK];

  curve = [(CKKSTLKShare *)self curve];
  [v6 appendBytes:&curve length:8];
  epoch = [(CKKSTLKShare *)self epoch];
  [v6 appendBytes:&epoch length:8];
  poisoned = [(CKKSTLKShare *)self poisoned];
  [v6 appendBytes:&poisoned length:8];
  if (signingCopy)
  {
    v41 = v5;
    v45 = v6;
    v12 = +[NSMutableDictionary dictionary];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = signingCopy;
    allKeys = [signingCopy allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          if (([v18 isEqualToString:@"sender"] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"receiver") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"receiverPublicEncryptionKey") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"curve") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"epoch") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"poisoned") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"version") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"parentkeyref") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"wrappedkey") & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"server_") & 1) == 0)
          {
            v43 = [v42 objectForKeyedSubscript:v18];
            [v12 setObject:v43 forKeyedSubscript:v18];
          }
        }

        v15 = [allKeys countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v15);
    }

    allKeys2 = [v12 allKeys];
    v20 = [allKeys2 sortedArrayUsingSelector:"compare:"];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v59 count:16];
    v6 = v45;
    if (v22)
    {
      v23 = v22;
      v24 = &_sSo13os_log_type_ta0A0E7defaultABvgZ_ptr;
      v25 = *v48;
      v26 = &_sSo13os_log_type_ta0A0E7defaultABvgZ_ptr;
      do
      {
        v27 = 0;
        v44 = v23;
        do
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v28 = [v12 objectForKeyedSubscript:*(*(&v47 + 1) + 8 * v27)];
          v29 = v24[130];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v28 dataUsingEncoding:4];
            [v6 appendData:v30];
LABEL_28:

            goto LABEL_31;
          }

          v31 = v26[187];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 appendData:v28];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = objc_alloc_init(NSISO8601DateFormatter);
              v32 = [v30 stringForObjectValue:v28];
              [v32 dataUsingEncoding:4];
              v33 = v25;
              v34 = v24;
              v35 = v21;
              v36 = v12;
              v38 = v37 = v26;
              [v45 appendData:v38];

              v26 = v37;
              v12 = v36;
              v21 = v35;
              v24 = v34;
              v25 = v33;
              v23 = v44;

              v6 = v45;
              goto LABEL_28;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedLongLongValue = [v28 unsignedLongLongValue];
              [v6 appendBytes:&unsignedLongLongValue length:8];
            }
          }

LABEL_31:

          v27 = v27 + 1;
        }

        while (v23 != v27);
        v39 = [v21 countByEnumeratingWithState:&v47 objects:v59 count:16];
        v23 = v39;
      }

      while (v39);
    }

    v5 = v41;
    signingCopy = v42;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)unwrapUsing:(id)using error:(id *)error
{
  usingCopy = using;
  v7 = [NSKeyedUnarchiver alloc];
  wrappedTLK = [(CKKSTLKShare *)self wrappedTLK];
  v9 = [v7 initForReadingFromData:wrappedTLK error:0];

  v10 = [[_SFIESCiphertext alloc] initWithCoder:v9];
  [v9 finishDecoding];
  v11 = [[_SFIESOperation alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
  encryptionKey = [usingCopy encryptionKey];

  v18 = 0;
  v13 = [v11 decrypt:v10 withKey:encryptionKey error:&v18];
  v14 = v18;

  if (!v13 || v14)
  {
    if (error)
    {
      v16 = v14;
      v15 = 0;
      *error = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [CKKSKeychainBackedKey loadFromProtobuf:v13 error:error];
  }

  return v15;
}

- (id)wrap:(id)wrap publicKey:(id)key error:(id *)error
{
  wrapCopy = wrap;
  keyCopy = key;
  v10 = objc_autoreleasePoolPush();
  v20 = 0;
  v11 = [wrapCopy serializeAsProtobuf:&v20];
  v12 = v20;
  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    v13 = [[_SFIESOperation alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
    v14 = [v13 encrypt:v11 withKey:keyCopy error:error];
    v15 = objc_autoreleasePoolPush();
    v16 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v14 encodeWithCoder:v16];
    encodedData = [v16 encodedData];

    objc_autoreleasePoolPop(v15);
  }

  else if (error)
  {
    v18 = v12;
    encodedData = 0;
    *error = v12;
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)description
{
  tlkUUID = [(CKKSTLKShare *)self tlkUUID];
  receiverPeerID = [(CKKSTLKShare *)self receiverPeerID];
  senderPeerID = [(CKKSTLKShare *)self senderPeerID];
  v6 = [NSString stringWithFormat:@"<CKKSTLKShareCore(%@): recv:%@ send:%@>", tlkUUID, receiverPeerID, senderPeerID];

  return v6;
}

- (id)initForKey:(id)key senderPeerID:(id)d recieverPeerID:(id)iD receiverEncPublicKeySPKI:(id)i curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)self0 wrappedKey:(id)self1 signature:(id)self2 zoneID:(id)self3
{
  keyCopy = key;
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  iCopy = i;
  iCopy2 = i;
  wrappedKeyCopy = wrappedKey;
  signatureCopy = signature;
  zoneIDCopy = zoneID;
  v32.receiver = self;
  v32.super_class = CKKSTLKShare;
  v23 = [(CKKSTLKShare *)&v32 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_zoneID, zoneID);
    objc_storeStrong(&v24->_tlkUUID, key);
    objc_storeStrong(&v24->_senderPeerID, d);
    objc_storeStrong(&v24->_receiverPeerID, obj);
    objc_storeStrong(&v24->_receiverPublicEncryptionKeySPKI, iCopy);
    v24->_curve = curve;
    v24->_version = version;
    v24->_epoch = epoch;
    v24->_poisoned = poisoned;
    objc_storeStrong(&v24->_wrappedTLK, wrappedKey);
    objc_storeStrong(&v24->_signature, signature);
  }

  return v24;
}

- (id)init:(id)init sender:(id)sender receiver:(id)receiver curve:(int64_t)curve version:(unint64_t)version epoch:(int64_t)epoch poisoned:(int64_t)poisoned zoneID:(id)self0
{
  initCopy = init;
  senderCopy = sender;
  receiverCopy = receiver;
  dCopy = d;
  v32.receiver = self;
  v32.super_class = CKKSTLKShare;
  v20 = [(CKKSTLKShare *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_zoneID, d);
    v21->_curve = curve;
    v21->_version = version;
    uuid = [initCopy uuid];
    tlkUUID = v21->_tlkUUID;
    v21->_tlkUUID = uuid;

    peerID = [receiverCopy peerID];
    receiverPeerID = v21->_receiverPeerID;
    v21->_receiverPeerID = peerID;

    publicEncryptionKey = [receiverCopy publicEncryptionKey];
    keyData = [publicEncryptionKey keyData];
    receiverPublicEncryptionKeySPKI = v21->_receiverPublicEncryptionKeySPKI;
    v21->_receiverPublicEncryptionKeySPKI = keyData;

    peerID2 = [senderCopy peerID];
    senderPeerID = v21->_senderPeerID;
    v21->_senderPeerID = peerID2;

    v21->_epoch = epoch;
    v21->_poisoned = poisoned;
  }

  return v21;
}

+ (id)share:(id)share as:(id)as to:(id)to epoch:(int64_t)epoch poisoned:(int64_t)poisoned error:(id *)error
{
  shareCopy = share;
  asCopy = as;
  toCopy = to;
  v16 = [CKKSTLKShare alloc];
  zoneID = [shareCopy zoneID];
  v18 = [(CKKSTLKShare *)v16 init:shareCopy sender:asCopy receiver:toCopy curve:4 version:0 epoch:epoch poisoned:poisoned zoneID:zoneID];

  publicEncryptionKey = [toCopy publicEncryptionKey];

  v34 = 0;
  v20 = [v18 wrap:shareCopy publicKey:publicEncryptionKey error:&v34];
  v21 = v34;
  [v18 setWrappedTLK:v20];

  if (v21)
  {
    zoneID2 = [shareCopy zoneID];
    zoneName = [zoneID2 zoneName];
    v24 = sub_10020F5C8(@"ckksshare", zoneName);

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412546;
    v36 = shareCopy;
    v37 = 2112;
    v38 = v21;
    v25 = "couldn't share %@ (wrap failed): %@";
    goto LABEL_7;
  }

  signingKey = [asCopy signingKey];
  v33 = 0;
  v27 = [v18 signRecord:signingKey ckrecord:0 error:&v33];
  v21 = v33;
  [v18 setSignature:v27];

  if (!v21)
  {
    v31 = v18;
    goto LABEL_12;
  }

  zoneID3 = [shareCopy zoneID];
  zoneName2 = [zoneID3 zoneName];
  v24 = sub_10020F5C8(@"ckksshare", zoneName2);

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v36 = shareCopy;
    v37 = 2112;
    v38 = v21;
    v25 = "couldn't share %@ (signing failed): %@";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
  }

LABEL_8:

  if (error)
  {
    v30 = v21;
    v31 = 0;
    *error = v21;
  }

  else
  {
    v31 = 0;
  }

LABEL_12:

  return v31;
}

@end