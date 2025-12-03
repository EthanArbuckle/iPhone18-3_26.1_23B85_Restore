@interface __NSErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(int64_t)index;
- (void)attemptRecoveryFromError:(id)error optionIndex:(int64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info;
@end

@implementation __NSErrorRecoveryAttempter

- (void)attemptRecoveryFromError:(id)error optionIndex:(int64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info
{
  errorCopy = error;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
  swift_dynamicCast();
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v14 = swift_allocObject();
  v14[2] = delegate;
  v14[3] = selector;
  v14[4] = info;
  v15 = *(v13 + 24);
  swift_unknownObjectRetain();
  v15(index, partial apply for closure #1 in __NSErrorRecoveryAttempter.attemptRecovery(fromError:optionIndex:delegate:didRecoverSelector:contextInfo:), v14, v12, v13);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v16);
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(int64_t)index
{
  errorCopy = error;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
  swift_dynamicCast();
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  LOBYTE(index) = (*(v7 + 32))(index, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v9);
  return index & 1;
}

@end