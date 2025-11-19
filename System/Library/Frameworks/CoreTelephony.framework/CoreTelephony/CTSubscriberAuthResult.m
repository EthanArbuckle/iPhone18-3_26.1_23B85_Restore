@interface CTSubscriberAuthResult
- (CTSubscriberAuthResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSubscriberAuthResult

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(CTSubscriberAuthResult *)self auts];
  [v10 encodeObject:v4 forKey:@"auts"];

  v5 = [(CTSubscriberAuthResult *)self res];
  [v10 encodeObject:v5 forKey:@"res"];

  v6 = [(CTSubscriberAuthResult *)self sres];
  [v10 encodeObject:v6 forKey:@"sres"];

  v7 = [(CTSubscriberAuthResult *)self kc];
  [v10 encodeObject:v7 forKey:@"kc"];

  v8 = [(CTSubscriberAuthResult *)self ck];
  [v10 encodeObject:v8 forKey:@"ck"];

  v9 = [(CTSubscriberAuthResult *)self ik];
  [v10 encodeObject:v9 forKey:@"ik"];
}

- (CTSubscriberAuthResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTSubscriberAuthResult;
  v5 = [(CTSubscriberAuthResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auts"];
    auts = v5->_auts;
    v5->_auts = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"res"];
    res = v5->_res;
    v5->_res = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sres"];
    sres = v5->_sres;
    v5->_sres = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kc"];
    kc = v5->_kc;
    v5->_kc = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ck"];
    ck = v5->_ck;
    v5->_ck = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ik"];
    ik = v5->_ik;
    v5->_ik = v16;
  }

  return v5;
}

@end