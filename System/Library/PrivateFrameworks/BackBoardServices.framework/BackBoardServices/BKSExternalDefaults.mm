@interface BKSExternalDefaults
- (BKSIAPDefaults)iapDefaults;
- (BKSKeyboardDefaults)keyboardDefaults;
- (BKSLockdownDefaults)lockdownDefaults;
- (BKSPersistentConnectionDefaults)persistentConnectionDefaults;
- (BKSSpringBoardDefaults)springBoardDefaults;
@end

@implementation BKSExternalDefaults

- (BKSKeyboardDefaults)keyboardDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BKSExternalDefaults_keyboardDefaults__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  if (keyboardDefaults___once != -1)
  {
    dispatch_once(&keyboardDefaults___once, block);
  }

  return self->_lazy_keyboardDefaults;
}

uint64_t __39__BKSExternalDefaults_keyboardDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BKSKeyboardDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BKSSpringBoardDefaults)springBoardDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BKSExternalDefaults_springBoardDefaults__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  if (springBoardDefaults___once != -1)
  {
    dispatch_once(&springBoardDefaults___once, block);
  }

  return self->_lazy_springBoardDefaults;
}

uint64_t __42__BKSExternalDefaults_springBoardDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BKSSpringBoardDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BKSPersistentConnectionDefaults)persistentConnectionDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__BKSExternalDefaults_persistentConnectionDefaults__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  if (persistentConnectionDefaults___once != -1)
  {
    dispatch_once(&persistentConnectionDefaults___once, block);
  }

  return self->_lazy_persistentConnectionDefaults;
}

uint64_t __51__BKSExternalDefaults_persistentConnectionDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BKSPersistentConnectionDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BKSIAPDefaults)iapDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BKSExternalDefaults_iapDefaults__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  if (iapDefaults___once != -1)
  {
    dispatch_once(&iapDefaults___once, block);
  }

  return self->_lazy_iapDefaults;
}

uint64_t __34__BKSExternalDefaults_iapDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BKSIAPDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BKSLockdownDefaults)lockdownDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BKSExternalDefaults_lockdownDefaults__block_invoke;
  block[3] = &unk_1E6F477B8;
  block[4] = self;
  if (lockdownDefaults___once != -1)
  {
    dispatch_once(&lockdownDefaults___once, block);
  }

  return self->_lazy_lockdownDefaults;
}

uint64_t __39__BKSExternalDefaults_lockdownDefaults__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(BKSLockdownDefaults);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

@end