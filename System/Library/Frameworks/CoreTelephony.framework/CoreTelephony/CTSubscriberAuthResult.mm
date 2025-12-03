@interface CTSubscriberAuthResult
- (CTSubscriberAuthResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSubscriberAuthResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  auts = [(CTSubscriberAuthResult *)self auts];
  [coderCopy encodeObject:auts forKey:@"auts"];

  v5 = [(CTSubscriberAuthResult *)self res];
  [coderCopy encodeObject:v5 forKey:@"res"];

  sres = [(CTSubscriberAuthResult *)self sres];
  [coderCopy encodeObject:sres forKey:@"sres"];

  v7 = [(CTSubscriberAuthResult *)self kc];
  [coderCopy encodeObject:v7 forKey:@"kc"];

  v8 = [(CTSubscriberAuthResult *)self ck];
  [coderCopy encodeObject:v8 forKey:@"ck"];

  v9 = [(CTSubscriberAuthResult *)self ik];
  [coderCopy encodeObject:v9 forKey:@"ik"];
}

- (CTSubscriberAuthResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTSubscriberAuthResult;
  v5 = [(CTSubscriberAuthResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auts"];
    auts = v5->_auts;
    v5->_auts = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"res"];
    res = v5->_res;
    v5->_res = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sres"];
    sres = v5->_sres;
    v5->_sres = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kc"];
    kc = v5->_kc;
    v5->_kc = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ck"];
    ck = v5->_ck;
    v5->_ck = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ik"];
    ik = v5->_ik;
    v5->_ik = v16;
  }

  return v5;
}

@end