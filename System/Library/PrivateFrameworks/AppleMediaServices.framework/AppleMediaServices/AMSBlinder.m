@interface AMSBlinder
+ (id)finalizeBlindedDataWithPrivateInput:(id)a3 timeStamp:(id)a4 adamId:(id)a5 publicInput:(id)a6 signatureType:(id)a7 serverData:(id)a8 error:(id *)a9;
+ (id)generateRandomPrivateInput;
+ (id)generateTimestamp;
+ (id)makeBlindedDataWithPrivateInputData:(id)a3;
+ (id)publicInputWithComponents:(id)a3 adamID:(id)a4 isRedownload:(BOOL)a5 priceType:(id)a6 timestamp:(id)a7;
+ (id)unblindedInputWithPrivateInput:(id)a3;
+ (void)removeCachedClientForPrivateInput:(id)a3;
@end

@implementation AMSBlinder

+ (void)removeCachedClientForPrivateInput:(id)a3
{
  v3 = a3;
  v4 = sub_192F95B7C();
  v6 = v5;

  swift_getObjCClassMetadata();
  static Blinder.removeCachedClient(for:)();

  sub_19290CA6C(v4, v6);
}

+ (id)generateRandomPrivateInput
{
  v2 = static Blinder.generateRandomPrivateInput()();
  v4 = v3;
  v5 = sub_192F95B5C();
  sub_19290CA6C(v2, v4);

  return v5;
}

+ (id)makeBlindedDataWithPrivateInputData:(id)a3
{
  v3 = a3;
  v4 = sub_192F95B7C();
  v6 = v5;

  swift_getObjCClassMetadata();
  static Blinder.makeBlindedData(privateInputData:)();
  v8 = v7;
  sub_19290CA6C(v4, v6);

  return v8;
}

+ (id)finalizeBlindedDataWithPrivateInput:(id)a3 timeStamp:(id)a4 adamId:(id)a5 publicInput:(id)a6 signatureType:(id)a7 serverData:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = sub_192F95B7C();
  v36 = v21;

  v35 = sub_192F967CC();
  v23 = v22;

  v34 = sub_192F967CC();
  v25 = v24;

  v26 = sub_192F95B7C();
  v28 = v27;

  sub_192F967CC();
  v29 = sub_192F9669C();

  swift_getObjCClassMetadata();
  v30 = static Blinder.finalizeBlindedData(privateInput:timeStamp:adamId:publicInput:signatureType:serverData:)(v20, v36, v35, v23, v34, v25, v26, v28, v32, v33, v29);

  sub_19290CA6C(v26, v28);

  sub_19290CA6C(v20, v36);

  return v30;
}

+ (id)publicInputWithComponents:(id)a3 adamID:(id)a4 isRedownload:(BOOL)a5 priceType:(id)a6 timestamp:(id)a7
{
  v7 = a5;
  type metadata accessor for PublicInputComponent(0);
  v8 = sub_192F96B0C();
  v9 = sub_192F967CC();
  v11 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  v15 = sub_192F967CC();
  v17 = v16;
  swift_getObjCClassMetadata();
  v18 = static Blinder.publicInput(_:adamID:isRedownload:priceType:timestamp:)(v8, v9, v11, v7, v12, v14, v15, v17);
  v20 = v19;

  v21 = sub_192F95B5C();
  sub_19290CA6C(v18, v20);

  return v21;
}

+ (id)generateTimestamp
{
  swift_getObjCClassMetadata();
  static Blinder.generateTimestamp()();
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

+ (id)unblindedInputWithPrivateInput:(id)a3
{
  v3 = a3;
  v4 = sub_192F95B7C();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = static Blinder.unblindedInput(privateInput:)(v4, v6);
  v9 = v8;
  sub_19290CA6C(v4, v6);
  v10 = sub_192F95B5C();
  sub_19290CA6C(v7, v9);

  return v10;
}

@end