@interface APGuard
+ (id)sharedGuard;
- (APGuard)init;
- (BOOL)authenticateSyncUnconditionallyWithReason:(id)a3 error:(id *)a4;
- (BOOL)extensionRequiresAuthentication:(id)a3;
- (BOOL)initiateSyncAuthenticationWithShieldingForSubject:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 error:(id *)a6;
- (BOOL)viewSubjectRequiresAuthentication:(id)a3;
- (void)authenticateForExtension:(id)a3 completion:(id)a4;
- (void)authenticateForExtension:(id)a3 reasonDescription:(id)a4 completion:(id)a5;
- (void)authenticateForSubject:(id)a3 completion:(id)a4;
- (void)authenticateForSubject:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5;
- (void)authenticateForSubject:(id)a3 relayingAuditToken:(BOOL)a4 completion:(id)a5;
- (void)authenticateForViewSubject:(id)a3 reasonDescription:(id)a4 completion:(id)a5;
- (void)getIsChallengeCurrentlyRequiredForSubject:(id)a3 completion:(id)a4;
- (void)initiateAuthenticationWithShieldingForSubject:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6;
@end

@implementation APGuard

+ (id)sharedGuard
{
  if (qword_1ED6F4650 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6F4658;

  return v3;
}

- (void)initiateAuthenticationWithShieldingForSubject:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6
{
  v9 = *a4->var0;
  v10 = *&a4->var0[2];
  v11 = *&a4->var0[4];
  v12 = *&a4->var0[6];
  v13 = _Block_copy(a6);
  _Block_copy(v13);
  v14 = a3;
  v15 = self;
  sub_185AC5630(v14, v9, v10, v11, v12, a5, v13);
  _Block_release(v13);
  _Block_release(v13);
}

- (void)authenticateForViewSubject:(id)a3 reasonDescription:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_185AE6144(v12, v8, v10, sub_185ACA0F4, v11);
}

- (BOOL)viewSubjectRequiresAuthentication:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_185AE7744(v4);

  return v6 & 1;
}

- (void)authenticateForExtension:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_185B09D04(v8, 0, 0, sub_185ACA0F0, v7);
}

- (void)authenticateForExtension:(id)a3 reasonDescription:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a3;
  v13 = self;
  sub_185B09D04(v12, v8, v10, sub_185ACA0F4, v11);
}

- (BOOL)extensionRequiresAuthentication:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_185B0AF7C(v4);

  return v6 & 1;
}

- (APGuard)init
{
  v3.receiver = self;
  v3.super_class = APGuard;
  return [(APGuard *)&v3 init];
}

- (void)authenticateForSubject:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_185B0C8D8(v8, sub_185ACA0F0, v7);
}

- (void)authenticateForSubject:(id)a3 relayingAuditToken:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v14 = self;
  v11 = 0uLL;
  v12 = 0uLL;
  if (v5)
  {
    v13 = APGetAuditTokenForSelf();
    if (!v13)
    {
      __break(1u);
      return;
    }

    v11 = *v13;
    v12 = v13[1];
  }

  v15[0] = v11;
  v15[1] = v12;
  v16 = !v5;
  sub_185B101A8(v10, v15, sub_185ACA0F0, v9);
}

- (void)getIsChallengeCurrentlyRequiredForSubject:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_185B1053C(v8, sub_185B06F6C, v7);
}

- (BOOL)initiateSyncAuthenticationWithShieldingForSubject:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 error:(id *)a6
{
  v8 = *a4->var0;
  v9 = *&a4->var0[2];
  v10 = *&a4->var0[4];
  v11 = *&a4->var0[6];
  v12 = a3;
  v13 = self;
  sub_185B11170(v12, v8, v9, v10, v11, a5);

  return 1;
}

- (BOOL)authenticateSyncUnconditionallyWithReason:(id)a3 error:(id *)a4
{
  sub_185B67E4C();
  v5 = self;
  sub_185B117F8();

  return 1;
}

- (void)authenticateForSubject:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5
{
  v10 = *&a4->var0[4];
  *v11 = *a4->var0;
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v13[1] = v10;
  v13[0] = *v11;
  v14 = 0;
  v9 = a3;
  v12 = self;
  sub_185B101A8(v9, v13, sub_185ACA0F0, v8);
}

@end