@interface AMSFinalizedBlind
- (AMSFinalizedBlind)initWithFinalizedData:(id)data privateInput:(id)input timestamp:(id)timestamp adamId:(id)id publicKey:(id)key certificate:(id)certificate;
- (NSString)certificate;
- (void)setCertificate:(id)certificate;
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

- (void)setCertificate:(id)certificate
{
  if (certificate)
  {
    v4 = sub_192F967CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  AMSFinalizedBlind.certificate.setter(v4, v6);
}

- (AMSFinalizedBlind)initWithFinalizedData:(id)data privateInput:(id)input timestamp:(id)timestamp adamId:(id)id publicKey:(id)key certificate:(id)certificate
{
  dataCopy = data;
  inputCopy = input;
  timestampCopy = timestamp;
  idCopy = id;
  keyCopy = key;
  certificateCopy = certificate;
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

  if (certificateCopy)
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