@interface VSErrorRecoveryAttempterDelegate
+ (id)sharedDelegate;
- (void)didPresentErrorWithRecovery:(BOOL)a3 contextInfo:(void *)a4;
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

- (void)didPresentErrorWithRecovery:(BOOL)a3 contextInfo:(void *)a4
{
  if (a4)
  {
    v5 = a4;
    self = (*(a4 + 2))(a4, a3);
    a4 = v5;
    v4 = vars8;
  }

  MEMORY[0x2821F97C8](self, a2, a3, a4);
}

@end