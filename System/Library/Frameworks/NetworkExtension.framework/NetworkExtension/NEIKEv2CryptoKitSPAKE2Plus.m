@interface NEIKEv2CryptoKitSPAKE2Plus
+ (id)createForInitiator:(BOOL)a3 seed:(id)a4 initiatorID:(id)a5 responderID:(id)a6 salt:(id)a7 context:(id)a8 error:(id *)a9;
- (NEIKEv2CryptoKitSPAKE2Plus)init;
- (NEIKEv2CryptoKitSPAKE2Plus)initWithKeyShare:(id)a3;
- (NSData)keyShare;
@end

@implementation NEIKEv2CryptoKitSPAKE2Plus

- (NSData)keyShare
{
  v2 = *(self + OBJC_IVAR___NEIKEv2CryptoKitSPAKE2Plus_keyShare);
  v3 = *(self + OBJC_IVAR___NEIKEv2CryptoKitSPAKE2Plus_keyShare + 8);
  sub_1BA8498C4(v2, v3);
  v4 = sub_1BAA3968C();
  sub_1BA84724C(v2, v3);

  return v4;
}

+ (id)createForInitiator:(BOOL)a3 seed:(id)a4 initiatorID:(id)a5 responderID:(id)a6 salt:(id)a7 context:(id)a8 error:(id *)a9
{
  v35 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v34 = sub_1BAA3969C();
  v19 = v18;

  v20 = sub_1BAA3969C();
  v22 = v21;

  v23 = sub_1BAA3969C();
  v25 = v24;

  v26 = sub_1BAA3969C();
  v28 = v27;
  v33 = v27;

  v29 = sub_1BAA3969C();
  v31 = v30;

  v36 = sub_1BA849CCC(v35, v34, v19, v20, v22, v23, v25, v26, v28, v29, v31);
  sub_1BA84724C(v29, v31);
  sub_1BA84724C(v26, v33);
  sub_1BA84724C(v23, v25);
  sub_1BA84724C(v20, v22);
  sub_1BA84724C(v34, v19);

  return v36;
}

- (NEIKEv2CryptoKitSPAKE2Plus)initWithKeyShare:(id)a3
{
  v4 = a3;
  v5 = sub_1BAA3969C();
  v7 = v6;

  v8 = (self + OBJC_IVAR___NEIKEv2CryptoKitSPAKE2Plus_keyShare);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = NEIKEv2CryptoKitSPAKE2Plus;
  return [(NEIKEv2CryptoKitSPAKE2Plus *)&v10 init];
}

- (NEIKEv2CryptoKitSPAKE2Plus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end