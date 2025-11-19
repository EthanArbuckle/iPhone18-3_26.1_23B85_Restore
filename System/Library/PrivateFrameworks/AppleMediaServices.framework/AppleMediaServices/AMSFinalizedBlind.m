@interface AMSFinalizedBlind
- (AMSFinalizedBlind)initWithFinalizedData:(id)a3 privateInput:(id)a4 timestamp:(id)a5 adamId:(id)a6 publicKey:(id)a7 certificate:(id)a8;
- (NSString)certificate;
- (void)setCertificate:(id)a3;
@end

@implementation AMSFinalizedBlind

- (NSString)certificate
{
  AMSFinalizedBlind.certificate.getter();
  if (v2)
  {
    v3 = sub_192F9679C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCertificate:(id)a3
{
  if (a3)
  {
    v4 = sub_192F967CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  AMSFinalizedBlind.certificate.setter(v4, v6);
}

- (AMSFinalizedBlind)initWithFinalizedData:(id)a3 privateInput:(id)a4 timestamp:(id)a5 adamId:(id)a6 publicKey:(id)a7 certificate:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = sub_192F95B7C();
  v37 = v20;
  v38 = v19;

  v36 = sub_192F95B7C();
  v22 = v21;

  v23 = sub_192F967CC();
  v25 = v24;

  v26 = sub_192F967CC();
  v28 = v27;

  v29 = sub_192F95B7C();
  v31 = v30;

  if (v18)
  {
    v32 = sub_192F967CC();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  return AMSFinalizedBlind.init(finalizedData:privateInput:timestamp:adamId:publicKey:certificate:)(v38, v37, v36, v22, v23, v25, v26, v28, v29, v31, v32, v34);
}

@end