@interface TrustedPeersHelperPeer
- (TrustedPeersHelperPeer)initWithCoder:(id)a3;
- (TrustedPeersHelperPeer)initWithPeerID:(id)a3 signingSPKI:(id)a4 encryptionSPKI:(id)a5 secureElementIdentity:(id)a6 viewList:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperPeer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TrustedPeersHelperPeer *)self peerID];
  [v4 encodeObject:v5 forKey:@"peerID"];

  v6 = [(TrustedPeersHelperPeer *)self signingSPKI];
  [v4 encodeObject:v6 forKey:@"signingSPKI"];

  v7 = [(TrustedPeersHelperPeer *)self encryptionSPKI];
  [v4 encodeObject:v7 forKey:@"encryptionSPKI"];

  v8 = [(TrustedPeersHelperPeer *)self secureElementIdentity];
  [v4 encodeObject:v8 forKey:@"seIdentity"];

  v9 = [(TrustedPeersHelperPeer *)self viewList];
  [v4 encodeObject:v9 forKey:@"viewList"];
}

- (TrustedPeersHelperPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TrustedPeersHelperPeer;
  v5 = [(TrustedPeersHelperPeer *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signingSPKI"];
    signingSPKI = v5->_signingSPKI;
    v5->_signingSPKI = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionSPKI"];
    encryptionSPKI = v5->_encryptionSPKI;
    v5->_encryptionSPKI = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seIdentity"];
    secureElementIdentity = v5->_secureElementIdentity;
    v5->_secureElementIdentity = v12;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [NSArray arrayWithObjects:v20 count:2];
    v15 = [NSSet setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"viewList"];
    viewList = v5->_viewList;
    v5->_viewList = v16;
  }

  return v5;
}

- (id)description
{
  v3 = [(TrustedPeersHelperPeer *)self peerID];
  v4 = [(TrustedPeersHelperPeer *)self signingSPKI];
  v5 = [(TrustedPeersHelperPeer *)self encryptionSPKI];
  v6 = [(TrustedPeersHelperPeer *)self secureElementIdentity];
  v7 = [v6 peerIdentifier];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [(TrustedPeersHelperPeer *)self viewList];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<TPHPeer: %@ %@ %@ se:%@ (%lu views)>", v3, v4, v5, v8, [v9 count]);

  return v10;
}

- (TrustedPeersHelperPeer)initWithPeerID:(id)a3 signingSPKI:(id)a4 encryptionSPKI:(id)a5 secureElementIdentity:(id)a6 viewList:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TrustedPeersHelperPeer;
  v17 = [(TrustedPeersHelperPeer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerID, a3);
    objc_storeStrong(&v18->_signingSPKI, a4);
    objc_storeStrong(&v18->_encryptionSPKI, a5);
    objc_storeStrong(&v18->_secureElementIdentity, a6);
    objc_storeStrong(&v18->_viewList, a7);
  }

  return v18;
}

@end