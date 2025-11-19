@interface GKCustomClassUnarchiver
- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
- (GKCustomClassUnarchiver)init;
- (id)_currentAppModuleName;
- (id)_findValidClassName:(id)a3;
- (id)_mangledSwiftClassName:(id)a3 moduleName:(id)a4;
@end

@implementation GKCustomClassUnarchiver

- (GKCustomClassUnarchiver)init
{
  v6.receiver = self;
  v6.super_class = GKCustomClassUnarchiver;
  v2 = [(GKCustomClassUnarchiver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_linkedOnOrAfterSecureUnarchive = dyld_program_sdk_at_least();
  }

  return v2;
}

- (id)_currentAppModuleName
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleName"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  return v4;
}

- (id)_mangledSwiftClassName:(id)a3 moduleName:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"_TtC%lu%@%lu%@", objc_msgSend(v6, "length"), v6, objc_msgSend(v7, "length"), v7];

  return v8;
}

- (id)_findValidClassName:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  if ([v5 count] == 1)
  {
    v6 = [(GKCustomClassUnarchiver *)self _currentAppModuleName];
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, v4];
    if (NSClassFromString(v7))
    {
      goto LABEL_10;
    }

    v8 = [(GKCustomClassUnarchiver *)self _mangledSwiftClassName:v4 moduleName:v6];
    if (NSClassFromString(v8))
    {
LABEL_6:

      v7 = v8;
LABEL_10:

      v6 = v7;
      goto LABEL_12;
    }

LABEL_5:

    v8 = 0;
    goto LABEL_6;
  }

  if ([v5 count] == 2)
  {
    v6 = [v5 lastObject];
    if (NSClassFromString(v6))
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 firstObject];
    v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    v12 = [v5 lastObject];
    v7 = [v9 stringWithFormat:@"%@.%@", v11, v12];

    if (NSClassFromString(v7))
    {
      goto LABEL_10;
    }

    v14 = [v5 lastObject];
    v15 = [v5 firstObject];
    v8 = [(GKCustomClassUnarchiver *)self _mangledSwiftClassName:v14 moduleName:v15];

    if (NSClassFromString(v8))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_linkedOnOrAfterSecureUnarchive && _MergedGlobals_1 != -1)
  {
    [GKCustomClassUnarchiver unarchiver:cannotDecodeObjectOfClassName:originalClasses:];
    v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v9];
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v9];
    if (v11)
    {
LABEL_4:
      v12 = NSClassFromString(v11);
      goto LABEL_10;
    }
  }

  v13 = [(GKCustomClassUnarchiver *)self _findValidClassName:v9];
  if (v13)
  {
    [(NSMutableDictionary *)self->_cache setObject:v13 forKeyedSubscript:v9];
    v12 = NSClassFromString(v13);
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  v14 = [v8 allowedClasses];
  if (([v14 containsObject:v12] & 1) != 0 || objc_msgSend(qword_27DF48788, "containsObject:", v12))
  {
    v15 = v12;

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [GKCustomClassUnarchiver unarchiver:v12 cannotDecodeObjectOfClassName:? originalClasses:?];
  }

LABEL_18:
  v16 = v15;

  return v15;
}

void __84__GKCustomClassUnarchiver_unarchiver_cannotDecodeObjectOfClassName_originalClasses___block_invoke()
{
  _dyld_get_prog_image_header();
  dyld_image_path_containing_address();
  objc_copyClassesForImage();
}

- (void)unarchiver:(objc_class *)a1 cannotDecodeObjectOfClassName:originalClasses:.cold.2(objc_class *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(a1);
  v3 = 138412290;
  v4 = v1;
  _os_log_fault_impl(&dword_238992000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Class not decoded '%@'", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end