@interface CuttlefishPCSIdentity
- (CuttlefishPCSIdentity)initWithCoder:(id)a3;
- (id)description;
- (id)init:(id)a3 item:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CuttlefishPCSIdentity

- (CuttlefishPCSIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CuttlefishPCSIdentity;
  v5 = [(CuttlefishPCSIdentity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    item = v5->_item;
    v5->_item = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CuttlefishPCSIdentity *)self service];
  [v4 encodeObject:v5 forKey:@"service"];

  v6 = [(CuttlefishPCSIdentity *)self item];
  [v4 encodeObject:v6 forKey:@"item"];
}

- (id)description
{
  v2 = [(CuttlefishPCSIdentity *)self service];
  v3 = [NSString stringWithFormat:@"<CuttlefishPCSIdentity(%@)>", v2];

  return v3;
}

- (id)init:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CuttlefishPCSIdentity;
  v9 = [(CuttlefishPCSIdentity *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

@end