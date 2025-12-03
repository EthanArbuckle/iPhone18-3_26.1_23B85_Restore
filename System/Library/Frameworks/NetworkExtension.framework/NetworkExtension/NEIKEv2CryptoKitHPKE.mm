@interface NEIKEv2CryptoKitHPKE
- (NEIKEv2CryptoKitHPKE)init;
- (NEIKEv2CryptoKitHPKE)initWithPayload:(id)payload aad:(id)aad psk:(id)psk pskID:(id)d keyData:(id)data;
- (NEIKEv2CryptoKitHPKE)initWithPayload:(id)payload aad:(id)aad psk:(id)psk pskID:(id)d keyRef:(__SecKey *)ref;
@end

@implementation NEIKEv2CryptoKitHPKE

- (NEIKEv2CryptoKitHPKE)initWithPayload:(id)payload aad:(id)aad psk:(id)psk pskID:(id)d keyRef:(__SecKey *)ref
{
  payloadCopy = payload;
  pskCopy = psk;
  dCopy = d;
  refCopy = ref;
  aadCopy = aad;
  v16 = sub_1BAA3969C();
  v18 = v17;

  if (aadCopy)
  {
    v19 = sub_1BAA3969C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = sub_1BAA3969C();
  v24 = v23;

  v25 = sub_1BAA3969C();
  v27 = v26;

  v28 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  *v28 = v16;
  v28[1] = v18;
  v29 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
  *v29 = v19;
  v29[1] = v21;
  v30 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
  *v30 = v22;
  v30[1] = v24;
  v31 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID);
  *v31 = v25;
  v31[1] = v27;
  v32 = (&self->super.isa + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  *v32 = refCopy;
  v32[1] = 0;
  v35.receiver = self;
  v35.super_class = NEIKEv2CryptoKitHPKE;
  return [(NEIKEv2CryptoKitHPKE *)&v35 init];
}

- (NEIKEv2CryptoKitHPKE)initWithPayload:(id)payload aad:(id)aad psk:(id)psk pskID:(id)d keyData:(id)data
{
  payloadCopy = payload;
  pskCopy = psk;
  dCopy = d;
  dataCopy = data;
  aadCopy = aad;
  v17 = sub_1BAA3969C();
  v37 = v18;
  v38 = v17;

  if (aadCopy)
  {
    v19 = sub_1BAA3969C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = sub_1BAA3969C();
  v24 = v23;

  v25 = sub_1BAA3969C();
  v27 = v26;

  v28 = sub_1BAA3969C();
  v30 = v29;

  v31 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  *v31 = v38;
  v31[1] = v37;
  v32 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
  *v32 = v19;
  v32[1] = v21;
  v33 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
  *v33 = v22;
  v33[1] = v24;
  v34 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID);
  *v34 = v25;
  v34[1] = v27;
  v35 = (self + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  *v35 = v28;
  v35[1] = v30 | 0x2000000000000000;
  v39.receiver = self;
  v39.super_class = NEIKEv2CryptoKitHPKE;
  return [(NEIKEv2CryptoKitHPKE *)&v39 init];
}

- (NEIKEv2CryptoKitHPKE)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end