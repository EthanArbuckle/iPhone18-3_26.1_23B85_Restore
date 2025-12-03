@interface APGuard
+ (id)sharedGuard;
- (APGuard)init;
- (BOOL)authenticateSyncUnconditionallyWithReason:(id)reason error:(id *)error;
- (BOOL)extensionRequiresAuthentication:(id)authentication;
- (BOOL)initiateSyncAuthenticationWithShieldingForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason error:(id *)error;
- (BOOL)viewSubjectRequiresAuthentication:(id)authentication;
- (void)authenticateForExtension:(id)extension completion:(id)completion;
- (void)authenticateForExtension:(id)extension reasonDescription:(id)description completion:(id)completion;
- (void)authenticateForSubject:(id)subject completion:(id)completion;
- (void)authenticateForSubject:(id)subject interfacePresentationTarget:(id *)target completion:(id)completion;
- (void)authenticateForSubject:(id)subject relayingAuditToken:(BOOL)token completion:(id)completion;
- (void)authenticateForViewSubject:(id)subject reasonDescription:(id)description completion:(id)completion;
- (void)getIsChallengeCurrentlyRequiredForSubject:(id)subject completion:(id)completion;
- (void)initiateAuthenticationWithShieldingForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion;
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

- (void)initiateAuthenticationWithShieldingForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion
{
  v9 = *token->var0;
  v10 = *&token->var0[2];
  v11 = *&token->var0[4];
  v12 = *&token->var0[6];
  v13 = _Block_copy(completion);
  _Block_copy(v13);
  subjectCopy = subject;
  selfCopy = self;
  sub_185AC5630(subjectCopy, v9, v10, v11, v12, reason, v13);
  _Block_release(v13);
  _Block_release(v13);
}

- (void)authenticateForViewSubject:(id)subject reasonDescription:(id)description completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  subjectCopy = subject;
  selfCopy = self;
  sub_185AE6144(subjectCopy, v8, v10, sub_185ACA0F4, v11);
}

- (BOOL)viewSubjectRequiresAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  selfCopy = self;
  v6 = sub_185AE7744(authenticationCopy);

  return v6 & 1;
}

- (void)authenticateForExtension:(id)extension completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  extensionCopy = extension;
  selfCopy = self;
  sub_185B09D04(extensionCopy, 0, 0, sub_185ACA0F0, v7);
}

- (void)authenticateForExtension:(id)extension reasonDescription:(id)description completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  extensionCopy = extension;
  selfCopy = self;
  sub_185B09D04(extensionCopy, v8, v10, sub_185ACA0F4, v11);
}

- (BOOL)extensionRequiresAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  selfCopy = self;
  v6 = sub_185B0AF7C(authenticationCopy);

  return v6 & 1;
}

- (APGuard)init
{
  v3.receiver = self;
  v3.super_class = APGuard;
  return [(APGuard *)&v3 init];
}

- (void)authenticateForSubject:(id)subject completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  subjectCopy = subject;
  selfCopy = self;
  sub_185B0C8D8(subjectCopy, sub_185ACA0F0, v7);
}

- (void)authenticateForSubject:(id)subject relayingAuditToken:(BOOL)token completion:(id)completion
{
  tokenCopy = token;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  subjectCopy = subject;
  selfCopy = self;
  v11 = 0uLL;
  v12 = 0uLL;
  if (tokenCopy)
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
  v16 = !tokenCopy;
  sub_185B101A8(subjectCopy, v15, sub_185ACA0F0, v9);
}

- (void)getIsChallengeCurrentlyRequiredForSubject:(id)subject completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  subjectCopy = subject;
  selfCopy = self;
  sub_185B1053C(subjectCopy, sub_185B06F6C, v7);
}

- (BOOL)initiateSyncAuthenticationWithShieldingForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason error:(id *)error
{
  v8 = *token->var0;
  v9 = *&token->var0[2];
  v10 = *&token->var0[4];
  v11 = *&token->var0[6];
  subjectCopy = subject;
  selfCopy = self;
  sub_185B11170(subjectCopy, v8, v9, v10, v11, reason);

  return 1;
}

- (BOOL)authenticateSyncUnconditionallyWithReason:(id)reason error:(id *)error
{
  sub_185B67E4C();
  selfCopy = self;
  sub_185B117F8();

  return 1;
}

- (void)authenticateForSubject:(id)subject interfacePresentationTarget:(id *)target completion:(id)completion
{
  v10 = *&target->var0[4];
  *v11 = *target->var0;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v13[1] = v10;
  v13[0] = *v11;
  v14 = 0;
  subjectCopy = subject;
  selfCopy = self;
  sub_185B101A8(subjectCopy, v13, sub_185ACA0F0, v8);
}

@end