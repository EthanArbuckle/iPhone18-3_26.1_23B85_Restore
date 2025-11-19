@interface __NSErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(int64_t)a4;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(int64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7;
@end

@implementation __NSErrorRecoveryAttempter

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(int64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7
{
  v11 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
  swift_dynamicCast();
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v15 = *(v13 + 24);
  swift_unknownObjectRetain();
  v15(a4, partial apply for closure #1 in __NSErrorRecoveryAttempter.attemptRecovery(fromError:optionIndex:delegate:didRecoverSelector:contextInfo:), v14, v12, v13);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v16);
}

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(int64_t)a4
{
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
  swift_dynamicCast();
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  LOBYTE(a4) = (*(v7 + 32))(a4, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return a4 & 1;
}

@end