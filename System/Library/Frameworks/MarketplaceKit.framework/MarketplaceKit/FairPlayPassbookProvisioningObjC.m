@interface FairPlayPassbookProvisioningObjC
+ (void)getProvisioningInfoWithAuditToken:(id *)a3 nonce:(NSData *)a4 completionHandler:(id)a5;
- (FairPlayPassbookProvisioningObjC)init;
@end

@implementation FairPlayPassbookProvisioningObjC

+ (void)getProvisioningInfoWithAuditToken:(id *)a3 nonce:(NSData *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v21 = *a3->var0;
  v13 = *&a3->var0[4];
  v14 = *&a3->var0[6];
  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = a4;
  *(v16 + 56) = v15;
  *(v16 + 64) = a1;
  v17 = sub_1D966EAE8();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D967A9E0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1D967A9F0;
  v19[5] = v18;
  v20 = a4;
  sub_1D963F1A4(0, 0, v12, &unk_1D967AA00, v19);
}

- (FairPlayPassbookProvisioningObjC)init
{
  v3.receiver = self;
  v3.super_class = FairPlayPassbookProvisioningObjC;
  return [(FairPlayPassbookProvisioningObjC *)&v3 init];
}

@end