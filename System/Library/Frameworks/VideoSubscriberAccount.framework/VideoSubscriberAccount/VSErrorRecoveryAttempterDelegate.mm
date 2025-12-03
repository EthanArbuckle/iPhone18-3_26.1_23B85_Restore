@interface VSErrorRecoveryAttempterDelegate
+ (id)sharedDelegate;
- (void)didPresentErrorWithRecovery:(BOOL)recovery contextInfo:(void *)info;
@end

@implementation VSErrorRecoveryAttempterDelegate

+ (id)sharedDelegate
{
  if (sharedDelegate___vs_lazy_init_predicate != -1)
  {
    +[VSErrorRecoveryAttempterDelegate sharedDelegate];
  }

  v3 = sharedDelegate___vs_lazy_init_variable;

  return v3;
}

uint64_t __50__VSErrorRecoveryAttempterDelegate_sharedDelegate__block_invoke()
{
  v0 = objc_alloc_init(VSErrorRecoveryAttempterDelegate);
  v1 = sharedDelegate___vs_lazy_init_variable;
  sharedDelegate___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)didPresentErrorWithRecovery:(BOOL)recovery contextInfo:(void *)info
{
  if (info)
  {
    infoCopy = info;
    self = (*(info + 2))(info, recovery);
    info = infoCopy;
    v4 = vars8;
  }

  MEMORY[0x2821F97C8](self, a2, recovery, info);
}

@end