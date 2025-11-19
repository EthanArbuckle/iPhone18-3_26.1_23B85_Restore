@interface AVResourceReclamationController(AVResourceReclamation)
- (void)permitReclamationWhileSuspended;
@end

@implementation AVResourceReclamationController(AVResourceReclamation)

- (void)permitReclamationWhileSuspended
{
  v4 = *a1;
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __89__AVResourceReclamationController_AVResourceReclamation__permitReclamationWhileSuspended__block_invoke_3;
  a2[3] = &unk_1E7460DF0;
  a2[4] = a3;
  a2[5] = a4;
  dispatch_sync(v4, a2);
}

@end