@interface ATXScoreDict
+ (id)scoreDictFromDictionary:(id)dictionary;
- (ATXScoreDict)init;
- (ATXScoreDict)initWithDefaultValueForKeys:(id)keys;
- (ATXScoreDict)initWithDefaultValueForScoreTypeKeys;
- (NSString)description;
- (double)scoreForKey:(id)key found:(BOOL *)found;
- (id)toDictionary;
- (void)atx_writeToFile:(__sFILE *)file;
- (void)dealloc;
- (void)setScore:(double)score forKey:(id)key;
@end

@implementation ATXScoreDict

- (void)atx_writeToFile:(__sFILE *)file
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [(ATXScoreDict *)self count];
  v6 = (v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 8 * v5);
  [(ATXScoreDict *)self getKeys:v6 count:v5];
  CFQSortArray();
  fwrite("{\n", 2uLL, 1uLL, file);
  for (; v5; --v5)
  {
    printQuotedString(file, *v6);
    fwrite(": ", 2uLL, 1uLL, file);
    v7 = MEMORY[0x277CCABB0];
    [(ATXScoreDict *)self scoreForKey:*v6 found:0];
    v8 = [v7 numberWithDouble:?];
    [v8 atx_writeToFile:file];
    if (v5 != 1)
    {
      fputc(44, file);
    }

    fputc(10, file);

    ++v6;
  }

  fputc(125, file);
  v9 = *MEMORY[0x277D85DE8];
}

- (ATXScoreDict)init
{
  v4.receiver = self;
  v4.super_class = ATXScoreDict;
  v2 = [(ATXScoreDict *)&v4 init];
  if (v2)
  {
    v2->_dict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &kValueSlotDictionaryValueCallBacks);
  }

  return v2;
}

- (ATXScoreDict)initWithDefaultValueForKeys:(id)keys
{
  keysCopy = keys;
  v6 = [(ATXScoreDict *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultKeys, keys);
  }

  return v7;
}

- (ATXScoreDict)initWithDefaultValueForScoreTypeKeys
{
  if (initWithDefaultValueForScoreTypeKeys_onceToken != -1)
  {
    [ATXScoreDict initWithDefaultValueForScoreTypeKeys];
  }

  v3 = initWithDefaultValueForScoreTypeKeys_keyNames;

  return [(ATXScoreDict *)self initWithDefaultValueForKeys:v3];
}

void __52__ATXScoreDict_initWithDefaultValueForScoreTypeKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:828];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ATXScoreDict_initWithDefaultValueForScoreTypeKeys__block_invoke_2;
  v4[3] = &unk_2785A02A8;
  v5 = v0;
  v1 = v0;
  [_ATXScoreTypes iterScoreInputsWithBlock:v4];
  v2 = [v1 copy];
  v3 = initWithDefaultValueForScoreTypeKeys_keyNames;
  initWithDefaultValueForScoreTypeKeys_keyNames = v2;
}

void __52__ATXScoreDict_initWithDefaultValueForScoreTypeKeys__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_ATXScoreTypes stringForScoreInput:a2];
  [v2 addObject:v3];
}

- (void)dealloc
{
  dict = self->_dict;
  if (dict)
  {
    CFRelease(dict);
  }

  v4.receiver = self;
  v4.super_class = ATXScoreDict;
  [(ATXScoreDict *)&v4 dealloc];
}

- (void)setScore:(double)score forKey:(id)key
{
  keyCopy = key;
  key = keyCopy;
  if (score != -31337.0 || (v7 = [(NSSet *)self->_defaultKeys containsObject:keyCopy, -31337.0], keyCopy2 = key, !v7))
  {
    scoreCopy = -0.0;
    if (score != 0.0)
    {
      scoreCopy = score;
    }

    CFDictionarySetValue(self->_dict, key, *&scoreCopy);
    keyCopy2 = key;
  }
}

- (double)scoreForKey:(id)key found:(BOOL *)found
{
  keyCopy = key;
  v7 = COERCE_DOUBLE(CFDictionaryGetValue(self->_dict, keyCopy));
  if (v7 == 0.0)
  {
    if (found)
    {
      *found = [(NSSet *)self->_defaultKeys containsObject:keyCopy];
    }

    v9 = -31337.0;
  }

  else
  {
    if (found)
    {
      *found = 1;
    }

    if (v7 == 0.0 && v7 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7;
    }
  }

  return v9;
}

- (id)toDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:CFDictionaryGetCount(self->_dict)];
  CFDictionaryApplyFunction(self->_dict, toDictionaryApplier, v3);

  return v3;
}

- (NSString)description
{
  toDictionary = [(ATXScoreDict *)self toDictionary];
  v3 = [toDictionary description];

  return v3;
}

+ (id)scoreDictFromDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v14}];
        [v11 doubleValue];
        [v4 setScore:v10 forKey:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end