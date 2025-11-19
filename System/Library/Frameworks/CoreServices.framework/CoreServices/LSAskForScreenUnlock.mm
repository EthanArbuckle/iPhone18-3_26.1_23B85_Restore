@interface LSAskForScreenUnlock
@end

@implementation LSAskForScreenUnlock

void ___LSAskForScreenUnlock_block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSAskForScreenUnlock_block_invoke_2;
  block[3] = &unk_1E6A1E040;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

@end