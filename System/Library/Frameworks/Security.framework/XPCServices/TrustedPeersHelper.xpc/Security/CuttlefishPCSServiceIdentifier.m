@interface CuttlefishPCSServiceIdentifier
- (CuttlefishPCSServiceIdentifier)initWithCoder:(id)a3;
- (id)description;
- (id)init:(id)a3 PCSPublicKey:(id)a4 zoneID:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CuttlefishPCSServiceIdentifier

- (id)description
{
  v3 = [(CuttlefishPCSServiceIdentifier *)self zoneID];
  v4 = [(CuttlefishPCSServiceIdentifier *)self PCSServiceID];
  v5 = [NSString stringWithFormat:@"<CuttlefishPCSServiceIdentifier(%@): %@>", v3, v4];

  return v5;
}

- (CuttlefishPCSServiceIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CuttlefishPCSServiceIdentifier;
  v5 = [(CuttlefishPCSServiceIdentifier *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pcsServiceID"];
    PCSServiceID = v5->_PCSServiceID;
    v5->_PCSServiceID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pcsPublicKey"];
    PCSPublicKey = v5->_PCSPublicKey;
    v5->_PCSPublicKey = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CuttlefishPCSServiceIdentifier *)self PCSPublicKey];
  [v4 encodeObject:v5 forKey:@"pcsPublicKey"];

  v6 = [(CuttlefishPCSServiceIdentifier *)self PCSServiceID];
  [v4 encodeObject:v6 forKey:@"pcsServiceID"];

  v7 = [(CuttlefishPCSServiceIdentifier *)self zoneID];
  [v4 encodeObject:v7 forKey:@"zoneID"];
}

- (id)init:(id)a3 PCSPublicKey:(id)a4 zoneID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CuttlefishPCSServiceIdentifier;
  v12 = [(CuttlefishPCSServiceIdentifier *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_PCSServiceID, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

@end