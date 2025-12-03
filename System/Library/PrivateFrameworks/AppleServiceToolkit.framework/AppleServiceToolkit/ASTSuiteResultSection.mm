@interface ASTSuiteResultSection
- (ASTSuiteResultSection)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResultSection)initWithTitle:(id)title tests:(id)tests;
@end

@implementation ASTSuiteResultSection

- (ASTSuiteResultSection)initWithTitle:(id)title tests:(id)tests
{
  titleCopy = title;
  testsCopy = tests;
  v12.receiver = self;
  v12.super_class = ASTSuiteResultSection;
  v9 = [(ASTSuiteResultSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_tests, tests);
  }

  return v10;
}

- (ASTSuiteResultSection)initWithDictionary:(id)dictionary error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = ASTSuiteResultSection;
  v7 = [(ASTSuiteResultSection *)&v30 init];
  if (!v7)
  {
LABEL_19:
    v11 = v7;
    goto LABEL_21;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"tests"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = dictionaryCopy;
    array = [MEMORY[0x277CBEB18] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[ASTSuiteResultTest alloc] initWithDictionary:*(*(&v26 + 1) + 8 * v17) error:error];
          if (!v18)
          {

            v11 = 0;
            dictionaryCopy = v25;
            goto LABEL_21;
          }

          v19 = v18;
          [(NSArray *)array addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    title = v7->_title;
    v7->_title = v8;
    v21 = v8;

    tests = v7->_tests;
    v7->_tests = array;

    dictionaryCopy = v25;
    goto LABEL_19;
  }

  v10 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v10];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

  v11 = 0;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

@end