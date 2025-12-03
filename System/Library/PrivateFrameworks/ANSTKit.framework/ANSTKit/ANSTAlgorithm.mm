@interface ANSTAlgorithm
+ (id)new;
+ (unint64_t)_version;
- (ANSTAlgorithm)init;
- (ANSTAlgorithm)initWithConfiguration:(id)configuration;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (unint64_t)version;
@end

@implementation ANSTAlgorithm

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTAlgorithm)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (unint64_t)version
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel__version, v3);
}

+ (unint64_t)_version
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTAlgorithm)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = ANSTAlgorithm;
  v5 = [(ANSTAlgorithm *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_version(configurationCopy, v7, v8);
    v11 = objc_msgSend__concreteClassOfVersion_(v6, v10, v9);
    if (v11)
    {
      v12 = v11;
      v13 = objc_opt_class();
      if ((objc_msgSend_isSubclassOfClass_(v13, v14, v12) & 1) == 0)
      {
        v15 = [v12 alloc];
        v17 = objc_msgSend_initWithConfiguration_(v15, v16, configurationCopy);

        v5 = v17;
      }
    }
  }

  return v5;
}

- (BOOL)prepareWithError:(id *)error
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_methodForSelector_(v4, v5, sel__version);
  v8 = objc_msgSend_methodForSelector_(ANSTAlgorithm, v7, sel__version);
  v10 = v8;
  if (error && v6 == v8)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"ANSTErrorDomain", 1, 0);
  }

  return v6 != v10;
}

- (BOOL)resetWithError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA068];
    v10[0] = @"This specific algorithm has not implemented a reset yet. If you need a reset, please file a radar to 'ANST | Implementation'. ";
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v10, &v9, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"ANSTErrorDomain", 0, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end