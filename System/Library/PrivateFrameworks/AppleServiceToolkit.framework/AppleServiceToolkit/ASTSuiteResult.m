@interface ASTSuiteResult
- (ASTSuiteResult)initWithDictionary:(id)a3 error:(id *)a4;
- (ASTSuiteResult)initWithName:(id)a3 components:(id)a4;
@end

@implementation ASTSuiteResult

- (ASTSuiteResult)initWithName:(id)a3 components:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASTSuiteResult;
  v9 = [(ASTSuiteResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suiteName, a3);
    objc_storeStrong(&v10->_components, a4);
  }

  return v10;
}

- (ASTSuiteResult)initWithDictionary:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = ASTSuiteResult;
  v7 = [(ASTSuiteResult *)&v30 init];
  if (!v7)
  {
LABEL_19:
    v11 = v7;
    goto LABEL_20;
  }

  v8 = [v6 objectForKeyedSubscript:@"suiteName"];
  v9 = [v6 objectForKeyedSubscript:@"components"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v8;
      v12 = [MEMORY[0x277CBEB18] array];
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

            v18 = [[ASTSuiteResultComponent alloc] initWithDictionary:*(*(&v26 + 1) + 8 * v17) error:a4];
            if (!v18)
            {

              goto LABEL_9;
            }

            v19 = v18;
            [(NSArray *)v12 addObject:v18];

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
      v7->_components = v12;

      goto LABEL_19;
    }
  }

  v10 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v10];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
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