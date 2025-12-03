@interface GKCustomClassUnarchiver
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (GKCustomClassUnarchiver)init;
- (id)_currentAppModuleName;
- (id)_findValidClassName:(id)name;
- (id)_mangledSwiftClassName:(id)name moduleName:(id)moduleName;
@end

@implementation GKCustomClassUnarchiver

- (GKCustomClassUnarchiver)init
{
  v6.receiver = self;
  v6.super_class = GKCustomClassUnarchiver;
  v2 = [(GKCustomClassUnarchiver *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;

    v2->_linkedOnOrAfterSecureUnarchive = dyld_program_sdk_at_least();
  }

  return v2;
}

- (id)_currentAppModuleName
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle objectForInfoDictionaryKey:@"CFBundleName"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  return v4;
}

- (id)_mangledSwiftClassName:(id)name moduleName:(id)moduleName
{
  v5 = MEMORY[0x277CCACA8];
  moduleNameCopy = moduleName;
  nameCopy = name;
  nameCopy = [v5 stringWithFormat:@"_TtC%lu%@%lu%@", objc_msgSend(moduleNameCopy, "length"), moduleNameCopy, objc_msgSend(nameCopy, "length"), nameCopy];

  return nameCopy;
}

- (id)_findValidClassName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy componentsSeparatedByString:@"."];
  if ([v5 count] == 1)
  {
    _currentAppModuleName = [(GKCustomClassUnarchiver *)self _currentAppModuleName];
    if (!_currentAppModuleName)
    {
      goto LABEL_12;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", _currentAppModuleName, nameCopy];
    if (NSClassFromString(nameCopy))
    {
      goto LABEL_10;
    }

    v8 = [(GKCustomClassUnarchiver *)self _mangledSwiftClassName:nameCopy moduleName:_currentAppModuleName];
    if (NSClassFromString(v8))
    {
LABEL_6:

      nameCopy = v8;
LABEL_10:

      _currentAppModuleName = nameCopy;
      goto LABEL_12;
    }

LABEL_5:

    v8 = 0;
    goto LABEL_6;
  }

  if ([v5 count] == 2)
  {
    _currentAppModuleName = [v5 lastObject];
    if (NSClassFromString(_currentAppModuleName))
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x277CCACA8];
    firstObject = [v5 firstObject];
    v11 = [firstObject stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    lastObject = [v5 lastObject];
    nameCopy = [v9 stringWithFormat:@"%@.%@", v11, lastObject];

    if (NSClassFromString(nameCopy))
    {
      goto LABEL_10;
    }

    lastObject2 = [v5 lastObject];
    firstObject2 = [v5 firstObject];
    v8 = [(GKCustomClassUnarchiver *)self _mangledSwiftClassName:lastObject2 moduleName:firstObject2];

    if (NSClassFromString(v8))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _currentAppModuleName = 0;
LABEL_12:

  return _currentAppModuleName;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  unarchiverCopy = unarchiver;
  nameCopy = name;
  classesCopy = classes;
  if (self->_linkedOnOrAfterSecureUnarchive && _MergedGlobals_1 != -1)
  {
    [GKCustomClassUnarchiver unarchiver:cannotDecodeObjectOfClassName:originalClasses:];
    v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:nameCopy];
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:nameCopy];
    if (v11)
    {
LABEL_4:
      v12 = NSClassFromString(v11);
      goto LABEL_10;
    }
  }

  v13 = [(GKCustomClassUnarchiver *)self _findValidClassName:nameCopy];
  if (v13)
  {
    [(NSMutableDictionary *)self->_cache setObject:v13 forKeyedSubscript:nameCopy];
    v12 = NSClassFromString(v13);
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  allowedClasses = [unarchiverCopy allowedClasses];
  if (([allowedClasses containsObject:v12] & 1) != 0 || objc_msgSend(qword_27DF48788, "containsObject:", v12))
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