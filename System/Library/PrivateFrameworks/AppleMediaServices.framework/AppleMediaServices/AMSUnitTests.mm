@interface AMSUnitTests
+ (BOOL)isRunningPerformanceTests;
+ (BOOL)isRunningUnitTests;
+ (id)_encryptionKeys;
+ (id)encryptionKeyForDataProtectionClass:(unint64_t)class;
+ (void)_sync:(id)_sync;
+ (void)setEncryptionKey:(id)key forDataProtectionClass:(unint64_t)class;
@end

@implementation AMSUnitTests

+ (BOOL)isRunningUnitTests
{
  v2 = NSClassFromString(&cfstr_Xctestprobe.isa);
  if (v2)
  {
    v3 = NSSelectorFromString(&cfstr_Istesting.isa);
    v4 = [(objc_class *)v2 methodSignatureForSelector:v3];
    v5 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v4];
    [v5 setSelector:v3];
    [v5 invokeWithTarget:v2];
    v7 = 0;
    [v5 getReturnValue:&v7];
    LOBYTE(v2) = 0;
    if (v7 == 1)
    {
      v2 = NSClassFromString(&cfstr_Amstestutils.isa);
      LOBYTE(v2) = (v2 | NSClassFromString(&cfstr_Amsuitestutils.isa)) != 0;
    }
  }

  return v2;
}

+ (BOOL)isRunningPerformanceTests
{
  v2 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v2 bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.AppleMediaServicesPerformanceTests.xctrunner"];

  return v4;
}

+ (id)encryptionKeyForDataProtectionClass:(unint64_t)class
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__69;
  v10 = __Block_byref_object_dispose__69;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AMSUnitTests_encryptionKeyForDataProtectionClass___block_invoke;
  v5[3] = &unk_1E73BCD40;
  v5[4] = &v6;
  v5[5] = self;
  v5[6] = class;
  [self _sync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__AMSUnitTests_encryptionKeyForDataProtectionClass___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 40) _encryptionKeys];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)setEncryptionKey:(id)key forDataProtectionClass:(unint64_t)class
{
  keyCopy = key;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AMSUnitTests_setEncryptionKey_forDataProtectionClass___block_invoke;
  v8[3] = &unk_1E73BCD68;
  selfCopy = self;
  classCopy = class;
  v9 = keyCopy;
  v7 = keyCopy;
  [self _sync:v8];
}

void __56__AMSUnitTests_setEncryptionKey_forDataProtectionClass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) _encryptionKeys];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

+ (id)_encryptionKeys
{
  if (_MergedGlobals_154 != -1)
  {
    dispatch_once(&_MergedGlobals_154, &__block_literal_global_142);
  }

  v3 = qword_1ED6E3188;

  return v3;
}

uint64_t __31__AMSUnitTests__encryptionKeys__block_invoke()
{
  qword_1ED6E3188 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_sync:(id)_sync
{
  v3 = qword_1ED6E3190;
  _syncCopy = _sync;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6E3190, &__block_literal_global_18_2);
  }

  v5 = qword_1ED6E3198;
  [v5 lock];
  _syncCopy[2](_syncCopy);

  [v5 unlock];
}

uint64_t __22__AMSUnitTests__sync___block_invoke()
{
  qword_1ED6E3198 = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end