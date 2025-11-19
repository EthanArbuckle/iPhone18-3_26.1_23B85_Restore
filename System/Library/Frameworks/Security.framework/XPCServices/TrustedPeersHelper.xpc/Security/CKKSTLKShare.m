@interface CKKSTLKShare
+ (id)share:(id)a3 as:(id)a4 to:(id)a5 epoch:(int64_t)a6 poisoned:(int64_t)a7 error:(id *)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)signatureVerifiesWithPeerSet:(id)a3 ckrecord:(id)a4 error:(id *)a5;
- (BOOL)verifySignature:(id)a3 verifyingPeer:(id)a4 ckrecord:(id)a5 error:(id *)a6;
- (CKKSTLKShare)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataForSigning:(id)a3;
- (id)description;
- (id)init:(id)a3 sender:(id)a4 receiver:(id)a5 curve:(int64_t)a6 version:(unint64_t)a7 epoch:(int64_t)a8 poisoned:(int64_t)a9 zoneID:(id)a10;
- (id)initForKey:(id)a3 senderPeerID:(id)a4 recieverPeerID:(id)a5 receiverEncPublicKeySPKI:(id)a6 curve:(int64_t)a7 version:(unint64_t)a8 epoch:(int64_t)a9 poisoned:(int64_t)a10 wrappedKey:(id)a11 signature:(id)a12 zoneID:(id)a13;
- (id)recoverTLK:(id)a3 trustedPeers:(id)a4 ckrecord:(id)a5 error:(id *)a6;
- (id)signRecord:(id)a3 ckrecord:(id)a4 error:(id *)a5;
- (id)unwrapUsing:(id)a3 error:(id *)a4;
- (id)wrap:(id)a3 publicKey:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSTLKShare

- (id)recoverTLK:(id)a3 trustedPeers:(id)a4 ckrecord:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v35 = v11;
  v36 = v9;
  v14 = 0;
  v15 = *v39;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v38 + 1) + 8 * i);
      v18 = [v17 peerID];
      v19 = [(CKKSTLKShare *)self senderPeerID];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v21 = v17;

        v14 = v21;
      }
    }

    v13 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v13);
  v11 = v35;
  v9 = v36;
  if (!v14)
  {
LABEL_15:
    v30 = [NSString stringWithFormat:@"No trusted peer signed %@", self];
    v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:19 description:v30];

    if (a6)
    {
      v31 = v29;
      v14 = 0;
      v28 = 0;
      *a6 = v29;
      goto LABEL_25;
    }

    v14 = 0;
    goto LABEL_19;
  }

  v22 = [(CKKSTLKShare *)self signature];
  v23 = [(CKKSTLKShare *)self verifySignature:v22 verifyingPeer:v14 ckrecord:v35 error:a6];

  if (!v23)
  {
    v29 = 0;
LABEL_19:
    v28 = 0;
    goto LABEL_25;
  }

  v24 = [(CKKSTLKShare *)self unwrapUsing:v36 error:a6];
  if (!v24)
  {
    v29 = 0;
    goto LABEL_23;
  }

  v25 = [(CKKSTLKShare *)self tlkUUID];
  v26 = [v24 uuid];
  v27 = [v25 isEqualToString:v26];

  if ((v27 & 1) == 0)
  {
    v32 = [NSString stringWithFormat:@"Signed UUID doesn't match unsigned UUID for %@", self];
    v29 = [NSError errorWithDomain:@"CKKSErrorDomain" code:20 description:v32];

    if (a6)
    {
      v33 = v29;
      v28 = 0;
      *a6 = v29;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSTLKShare *)self tlkUUID];
    v7 = [v5 tlkUUID];
    if (![v6 isEqualToString:v7])
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v8 = [(CKKSTLKShare *)self zoneID];
    v9 = [v5 zoneID];
    if (![v8 isEqual:v9])
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v10 = [(CKKSTLKShare *)self senderPeerID];
    v11 = [v5 senderPeerID];
    v46 = v10;
    if (![v10 isEqualToString:v11])
    {
      v13 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v45 = [(CKKSTLKShare *)self receiverPeerID];
    if (v45 || ([v5 receiverPeerID], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(CKKSTLKShare *)self receiverPeerID];
      [v5 receiverPeerID];
      v43 = v44 = v12;
      if (![v12 isEqual:?])
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

    v14 = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
    if (v14 || ([v5 receiverPublicEncryptionKeySPKI], (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
      v40 = [v5 receiverPublicEncryptionKeySPKI];
      v41 = v15;
      if (![v15 isEqual:?])
      {
        v13 = 0;
        v17 = v14;
        goto LABEL_29;
      }

      v38 = v14;
      v16 = 1;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v16 = 0;
    }

    v18 = [(CKKSTLKShare *)self epoch];
    if (v18 != [v5 epoch] || (v19 = -[CKKSTLKShare curve](self, "curve"), v19 != objc_msgSend(v5, "curve")) || (v20 = -[CKKSTLKShare poisoned](self, "poisoned"), v20 != objc_msgSend(v5, "poisoned")))
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
      v21 = [(CKKSTLKShare *)self wrappedTLK];
      v32 = [v5 wrappedTLK];
      v33 = v21;
      if (![v21 isEqual:?])
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

    v35 = [(CKKSTLKShare *)self signature];
    if (v35 || ([v5 signature], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [(CKKSTLKShare *)self signature:v27];
      v24 = [v5 signature];
      v13 = [v30 isEqual:v24];

      if (v35)
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
            v22 = v45;

            if (v45)
            {
LABEL_34:

              goto LABEL_35;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

        v22 = v45;
        if (v45)
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

- (CKKSTLKShare)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CKKSTLKShare;
  v5 = [(CKKSTLKShare *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v5->_curve = [v4 decodeInt64ForKey:@"curve"];
    v5->_version = [v4 decodeInt64ForKey:@"version"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tlkUUID"];
    tlkUUID = v5->_tlkUUID;
    v5->_tlkUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderPeerID"];
    senderPeerID = v5->_senderPeerID;
    v5->_senderPeerID = v10;

    v5->_epoch = [v4 decodeInt64ForKey:@"epoch"];
    v5->_poisoned = [v4 decodeInt64ForKey:@"poisoned"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedTLK"];
    wrappedTLK = v5->_wrappedTLK;
    v5->_wrappedTLK = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverPeerID"];
    receiverPeerID = v5->_receiverPeerID;
    v5->_receiverPeerID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiverSPKI"];
    receiverPublicEncryptionKeySPKI = v5->_receiverPublicEncryptionKeySPKI;
    v5->_receiverPublicEncryptionKeySPKI = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSTLKShare *)self zoneID];
  [v4 encodeObject:v5 forKey:@"zoneID"];

  [v4 encodeInt64:-[CKKSTLKShare curve](self forKey:{"curve"), @"curve"}];
  [v4 encodeInt64:-[CKKSTLKShare version](self forKey:{"version"), @"version"}];
  v6 = [(CKKSTLKShare *)self tlkUUID];
  [v4 encodeObject:v6 forKey:@"tlkUUID"];

  v7 = [(CKKSTLKShare *)self senderPeerID];
  [v4 encodeObject:v7 forKey:@"senderPeerID"];

  [v4 encodeInt64:-[CKKSTLKShare epoch](self forKey:{"epoch"), @"epoch"}];
  [v4 encodeInt64:-[CKKSTLKShare poisoned](self forKey:{"poisoned"), @"poisoned"}];
  v8 = [(CKKSTLKShare *)self wrappedTLK];
  [v4 encodeObject:v8 forKey:@"wrappedTLK"];

  v9 = [(CKKSTLKShare *)self signature];
  [v4 encodeObject:v9 forKey:@"signature"];

  v10 = [(CKKSTLKShare *)self receiverPeerID];
  [v4 encodeObject:v10 forKey:@"receiverPeerID"];

  v11 = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
  [v4 encodeObject:v11 forKey:@"receiverSPKI"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCurve:{-[CKKSTLKShare curve](self, "curve")}];
  [v4 setVersion:{-[CKKSTLKShare version](self, "version")}];
  v5 = [(CKKSTLKShare *)self tlkUUID];
  v6 = [v5 copy];
  [v4 setTlkUUID:v6];

  v7 = [(CKKSTLKShare *)self senderPeerID];
  v8 = [v7 copy];
  [v4 setSenderPeerID:v8];

  [v4 setEpoch:{-[CKKSTLKShare epoch](self, "epoch")}];
  [v4 setPoisoned:{-[CKKSTLKShare poisoned](self, "poisoned")}];
  v9 = [(CKKSTLKShare *)self wrappedTLK];
  v10 = [v9 copy];
  [v4 setWrappedTLK:v10];

  v11 = [(CKKSTLKShare *)self signature];
  v12 = [v11 copy];
  [v4 setSignature:v12];

  v13 = [(CKKSTLKShare *)self receiverPeerID];
  v14 = [v13 copy];
  [v4 setReceiverPeerID:v14];

  v15 = [(CKKSTLKShare *)self receiverPublicEncryptionKeySPKI];
  v16 = [v15 copy];
  [v4 setReceiverPublicEncryptionKeySPKI:v16];

  return v4;
}

- (BOOL)signatureVerifiesWithPeerSet:(id)a3 ckrecord:(id)a4 error:(id *)a5
{
  v8 = a3;
  v35 = a4;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v32 = a5;
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
        v16 = [v15 peerID];
        v17 = [(CKKSTLKShare *)self senderPeerID];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = [(CKKSTLKShare *)self signature];
          v36 = 0;
          v20 = [(CKKSTLKShare *)self verifySignature:v19 verifyingPeer:v15 ckrecord:v35 error:&v36];
          v21 = v36;

          if (v21)
          {
            v22 = v12;
            v23 = v9;
            v24 = [(CKKSTLKShare *)self zoneID];
            v25 = [v24 zoneName];
            v26 = sub_10020F5C8(@"ckksshare", v25);

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v42 = self;
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

    a5 = v32;
    if (v32)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v27 = v12;
      v28 = 0;
      *v32 = v12;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {

    if (a5)
    {
LABEL_19:
      v29 = [(CKKSTLKShare *)self senderPeerID];
      v30 = [NSString stringWithFormat:@"No TLK share from %@", v29];
      *a5 = [NSError errorWithDomain:@"CKKSErrorDomain" code:35 description:v30];
    }

    v28 = 0;
    v12 = 0;
  }

LABEL_21:

  return v28;
}

- (BOOL)verifySignature:(id)a3 verifyingPeer:(id)a4 ckrecord:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 publicSigningKey];

  if (v13)
  {
    v14 = [_SFEC_X962SigningOperation alloc];
    v15 = [[_SFECKeySpecifier alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
    v16 = objc_alloc_init(_SFSHA256DigestOperation);
    v17 = [v14 initWithKeySpecifier:v15 digestOperation:v16];

    v18 = [_SFSignedData alloc];
    v19 = [(CKKSTLKShare *)self dataForSigning:v12];
    v20 = [v18 initWithData:v19 signature:v10];

    v21 = [v11 publicSigningKey];
    v22 = [v17 verify:v20 withKey:v21 error:a6];
    LOBYTE(a6) = v22 != 0;
  }

  else
  {
    v23 = [(CKKSTLKShare *)self zoneID];
    v24 = [v23 zoneName];
    v25 = sub_10020F5C8(@"ckksshare", v24);

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "no signing key for peer: %@", buf, 0xCu);
    }

    if (a6)
    {
      v26 = [NSString stringWithFormat:@"Peer(%@) has no signing key", v11];
      *a6 = [NSError errorWithDomain:@"CKKSErrorDomain" code:37 description:v26];

      LOBYTE(a6) = 0;
    }
  }

  return a6;
}

- (id)signRecord:(id)a3 ckrecord:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [_SFEC_X962SigningOperation alloc];
  v11 = [[_SFECKeySpecifier alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
  v12 = objc_alloc_init(_SFSHA256DigestOperation);
  v13 = [v10 initWithKeySpecifier:v11 digestOperation:v12];

  v14 = [(CKKSTLKShare *)self dataForSigning:v8];

  v15 = [v13 sign:v14 withKey:v9 error:a5];

  v16 = [v15 signature];

  return v16;
}

- (id)dataForSigning:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableData);
  v58 = [(CKKSTLKShare *)self version];
  [v6 appendBytes:&v58 length:8];
  v7 = [(CKKSTLKShare *)self receiverPeerID];
  v8 = [v7 dataUsingEncoding:4];
  [v6 appendData:v8];

  v9 = [(CKKSTLKShare *)self senderPeerID];
  v10 = [v9 dataUsingEncoding:4];
  [v6 appendData:v10];

  v11 = [(CKKSTLKShare *)self wrappedTLK];
  [v6 appendData:v11];

  v57 = [(CKKSTLKShare *)self curve];
  [v6 appendBytes:&v57 length:8];
  v56 = [(CKKSTLKShare *)self epoch];
  [v6 appendBytes:&v56 length:8];
  v55 = [(CKKSTLKShare *)self poisoned];
  [v6 appendBytes:&v55 length:8];
  if (v4)
  {
    v41 = v5;
    v45 = v6;
    v12 = +[NSMutableDictionary dictionary];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v4;
    v13 = [v4 allKeys];
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v51 + 1) + 8 * i);
          if (([v18 isEqualToString:@"sender"] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"receiver") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"receiverPublicEncryptionKey") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"curve") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"epoch") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"poisoned") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"signature") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"version") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"parentkeyref") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"wrappedkey") & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"server_") & 1) == 0)
          {
            v43 = [v42 objectForKeyedSubscript:v18];
            [v12 setObject:v43 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v15);
    }

    v19 = [v12 allKeys];
    v20 = [v19 sortedArrayUsingSelector:"compare:"];

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
              v46 = [v28 unsignedLongLongValue];
              [v6 appendBytes:&v46 length:8];
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
    v4 = v42;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)unwrapUsing:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSKeyedUnarchiver alloc];
  v8 = [(CKKSTLKShare *)self wrappedTLK];
  v9 = [v7 initForReadingFromData:v8 error:0];

  v10 = [[_SFIESCiphertext alloc] initWithCoder:v9];
  [v9 finishDecoding];
  v11 = [[_SFIESOperation alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
  v12 = [v6 encryptionKey];

  v18 = 0;
  v13 = [v11 decrypt:v10 withKey:v12 error:&v18];
  v14 = v18;

  if (!v13 || v14)
  {
    if (a4)
    {
      v16 = v14;
      v15 = 0;
      *a4 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [CKKSKeychainBackedKey loadFromProtobuf:v13 error:a4];
  }

  return v15;
}

- (id)wrap:(id)a3 publicKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v20 = 0;
  v11 = [v8 serializeAsProtobuf:&v20];
  v12 = v20;
  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    v13 = [[_SFIESOperation alloc] initWithCurve:{-[CKKSTLKShare curve](self, "curve")}];
    v14 = [v13 encrypt:v11 withKey:v9 error:a5];
    v15 = objc_autoreleasePoolPush();
    v16 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v14 encodeWithCoder:v16];
    v17 = [v16 encodedData];

    objc_autoreleasePoolPop(v15);
  }

  else if (a5)
  {
    v18 = v12;
    v17 = 0;
    *a5 = v12;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = [(CKKSTLKShare *)self tlkUUID];
  v4 = [(CKKSTLKShare *)self receiverPeerID];
  v5 = [(CKKSTLKShare *)self senderPeerID];
  v6 = [NSString stringWithFormat:@"<CKKSTLKShareCore(%@): recv:%@ send:%@>", v3, v4, v5];

  return v6;
}

- (id)initForKey:(id)a3 senderPeerID:(id)a4 recieverPeerID:(id)a5 receiverEncPublicKeySPKI:(id)a6 curve:(int64_t)a7 version:(unint64_t)a8 epoch:(int64_t)a9 poisoned:(int64_t)a10 wrappedKey:(id)a11 signature:(id)a12 zoneID:(id)a13
{
  v18 = a3;
  v19 = a4;
  obj = a5;
  v20 = a5;
  v27 = a6;
  v31 = a6;
  v21 = a11;
  v22 = a12;
  v30 = a13;
  v32.receiver = self;
  v32.super_class = CKKSTLKShare;
  v23 = [(CKKSTLKShare *)&v32 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_zoneID, a13);
    objc_storeStrong(&v24->_tlkUUID, a3);
    objc_storeStrong(&v24->_senderPeerID, a4);
    objc_storeStrong(&v24->_receiverPeerID, obj);
    objc_storeStrong(&v24->_receiverPublicEncryptionKeySPKI, v27);
    v24->_curve = a7;
    v24->_version = a8;
    v24->_epoch = a9;
    v24->_poisoned = a10;
    objc_storeStrong(&v24->_wrappedTLK, a11);
    objc_storeStrong(&v24->_signature, a12);
  }

  return v24;
}

- (id)init:(id)a3 sender:(id)a4 receiver:(id)a5 curve:(int64_t)a6 version:(unint64_t)a7 epoch:(int64_t)a8 poisoned:(int64_t)a9 zoneID:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a10;
  v32.receiver = self;
  v32.super_class = CKKSTLKShare;
  v20 = [(CKKSTLKShare *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_zoneID, a10);
    v21->_curve = a6;
    v21->_version = a7;
    v22 = [v16 uuid];
    tlkUUID = v21->_tlkUUID;
    v21->_tlkUUID = v22;

    v24 = [v18 peerID];
    receiverPeerID = v21->_receiverPeerID;
    v21->_receiverPeerID = v24;

    v26 = [v18 publicEncryptionKey];
    v27 = [v26 keyData];
    receiverPublicEncryptionKeySPKI = v21->_receiverPublicEncryptionKeySPKI;
    v21->_receiverPublicEncryptionKeySPKI = v27;

    v29 = [v17 peerID];
    senderPeerID = v21->_senderPeerID;
    v21->_senderPeerID = v29;

    v21->_epoch = a8;
    v21->_poisoned = a9;
  }

  return v21;
}

+ (id)share:(id)a3 as:(id)a4 to:(id)a5 epoch:(int64_t)a6 poisoned:(int64_t)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [CKKSTLKShare alloc];
  v17 = [v13 zoneID];
  v18 = [(CKKSTLKShare *)v16 init:v13 sender:v14 receiver:v15 curve:4 version:0 epoch:a6 poisoned:a7 zoneID:v17];

  v19 = [v15 publicEncryptionKey];

  v34 = 0;
  v20 = [v18 wrap:v13 publicKey:v19 error:&v34];
  v21 = v34;
  [v18 setWrappedTLK:v20];

  if (v21)
  {
    v22 = [v13 zoneID];
    v23 = [v22 zoneName];
    v24 = sub_10020F5C8(@"ckksshare", v23);

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412546;
    v36 = v13;
    v37 = 2112;
    v38 = v21;
    v25 = "couldn't share %@ (wrap failed): %@";
    goto LABEL_7;
  }

  v26 = [v14 signingKey];
  v33 = 0;
  v27 = [v18 signRecord:v26 ckrecord:0 error:&v33];
  v21 = v33;
  [v18 setSignature:v27];

  if (!v21)
  {
    v31 = v18;
    goto LABEL_12;
  }

  v28 = [v13 zoneID];
  v29 = [v28 zoneName];
  v24 = sub_10020F5C8(@"ckksshare", v29);

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v36 = v13;
    v37 = 2112;
    v38 = v21;
    v25 = "couldn't share %@ (signing failed): %@";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
  }

LABEL_8:

  if (a8)
  {
    v30 = v21;
    v31 = 0;
    *a8 = v21;
  }

  else
  {
    v31 = 0;
  }

LABEL_12:

  return v31;
}

@end