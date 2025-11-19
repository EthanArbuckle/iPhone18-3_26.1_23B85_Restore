@interface LAInstanceIDGenerator
+ (LAInstanceIDGenerator)sharedInstance;
- (LAInstanceIDGenerator)init;
- (unint64_t)nextInstanceIDInDomain:(id)a3;
@end

@implementation LAInstanceIDGenerator

- (LAInstanceIDGenerator)init
{
  v6.receiver = self;
  v6.super_class = LAInstanceIDGenerator;
  v2 = [(LAInstanceIDGenerator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E0F8] mutableCopy];
    currentIDs = v2->_currentIDs;
    v2->_currentIDs = v3;
  }

  return v2;
}

+ (LAInstanceIDGenerator)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LAInstanceIDGenerator sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __39__LAInstanceIDGenerator_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(LAInstanceIDGenerator);

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)nextInstanceIDInDomain:(id)a3
{
  currentIDs = self->_currentIDs;
  v5 = a3;
  v6 = [(NSMutableDictionary *)currentIDs objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_1F5A79320;
  }

  v8 = [v6 unsignedIntegerValue];

  if (v8 == -1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)self->_currentIDs setObject:v10 forKeyedSubscript:v5];

  return v9;
}

@end