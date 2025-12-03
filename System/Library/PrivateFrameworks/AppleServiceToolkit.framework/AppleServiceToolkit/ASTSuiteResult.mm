@interface ASTSuiteResult
- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResult)initWithName:(id)name components:(id)components;
@end

@implementation ASTSuiteResult

- (ASTSuiteResult)initWithName:(id)name components:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = ASTSuiteResult;
  v9 = [(ASTSuiteResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suiteName, name);
    objc_storeStrong(&v10->_components, components);
  }

  return v10;
}

- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = ASTSuiteResult;
  v7 = [(ASTSuiteResult *)&v30 init];
  if (!v7)
  {
LABEL_19:
    v11 = v7;
    goto LABEL_20;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"suiteName"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"components"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v8;
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

            v18 = [[ASTSuiteResultComponent alloc] initWithDictionary:*(*(&v26 + 1) + 8 * v17) error:error];
            if (!v18)
            {

              goto LABEL_9;
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

      suiteName = v7->_suiteName;
      v7->_suiteName = v25;
      v21 = v25;

      components = v7->_components;
      v7->_components = array;

      goto LABEL_19;
    }
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

LABEL_9:
  v11 = 0;
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initWithDictionary:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "[%@] Bad dictionary format", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end