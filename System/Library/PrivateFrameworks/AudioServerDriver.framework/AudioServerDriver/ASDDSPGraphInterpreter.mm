@interface ASDDSPGraphInterpreter
+ (id)compileFile:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5;
+ (id)compileText:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5;
+ (unordered_map<std::string,)stringMapFromStringDictionary:()std:()std:(std:(std:(id)a2 :(SEL)a3 string>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>;
+ (vector<std::string,)stringVectorFromStringArray:(id)a2;
- (ASDDSPGraphInterpreter)init;
- (id)compileFile:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5;
- (id)compileText:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5;
@end

@implementation ASDDSPGraphInterpreter

- (ASDDSPGraphInterpreter)init
{
  v13 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ASDDSPGraphInterpreter;
  v2 = [(ASDDSPGraphInterpreter *)&v9 init];
  if (v2)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__ASDDSPGraphInterpreter_init__block_invoke;
    v7[3] = &unk_278CE3AD0;
    v3 = v2;
    v8 = v3;
    v10 = &unk_2853444C8;
    v11 = 0;
    v12 = &v10;
    v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
    if ((v4 & 1) == 0)
    {

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)compileFile:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v10 compileFile:v7 withSubstitutions:v8 includingPaths:v9];

  return v11;
}

+ (id)compileText:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v10 compileText:v7 withSubstitutions:v8 includingPaths:v9];

  return v11;
}

- (id)compileFile:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke;
  v17[3] = &unk_278CE41B8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21[0] = &unk_285344510;
  v21[1] = 0;
  v21[3] = v21;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v17);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v21);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = *(a1[4] + 8);
  [a1[5] UTF8String];
  v4 = *(v2 - 1);
  v5 = objc_opt_class();
  if (v5)
  {
    [v5 stringMapFromStringDictionary:a1[6]];
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  v6 = a1[4];
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 stringVectorFromStringArray:a1[7]];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  DSPGraph::Interpreter::compileFile();
  if (v12)
  {
    operator new();
  }

  v12 = 0;
  v13 = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v10);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke_cold_2(v2);
  }

  return 0;
}

- (id)compileText:(id)a3 withSubstitutions:(id)a4 includingPaths:(id)a5
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke;
  v17[3] = &unk_278CE41B8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21[0] = &unk_285344510;
  v21[1] = 0;
  v21[3] = v21;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v17);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v21);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  [*(a1 + 40) UTF8String];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  if (v4)
  {
    [v4 stringMapFromStringDictionary:*(a1 + 48)];
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  if (v6)
  {
    [v6 stringVectorFromStringArray:*(a1 + 56)];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  DSPGraph::Interpreter::compileText();
  if (v11)
  {
    operator new();
  }

  v11 = 0;
  v12 = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke_cold_2();
  }

  return 0;
}

+ (unordered_map<std::string,)stringMapFromStringDictionary:()std:()std:(std:(std:(id)a2 :(SEL)a3 string>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          [v10 UTF8String];
          v13 = v11;
          [v11 UTF8String];
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const*,char const*>();
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (vector<std::string,)stringVectorFromStringArray:(id)a2
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v10 UTF8String];
          v21 = v12;
          var1 = retstr->var1;
          if (var1 >= retstr->var2)
          {
            v14 = std::vector<std::string>::__emplace_back_slow_path<char const*>(retstr, &v21);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(retstr->var1, v12);
            v14 = var1 + 24;
          }

          retstr->var1 = v14;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end