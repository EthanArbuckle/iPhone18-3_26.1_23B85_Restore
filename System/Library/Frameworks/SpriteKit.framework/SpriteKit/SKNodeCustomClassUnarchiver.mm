@interface SKNodeCustomClassUnarchiver
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (SKNodeCustomClassUnarchiver)init;
- (id)_currentAppModuleName;
- (id)_findValidClassName:(id)name;
- (id)_mangledSwiftClassName:(id)name moduleName:(id)moduleName;
@end

@implementation SKNodeCustomClassUnarchiver

- (SKNodeCustomClassUnarchiver)init
{
  v6.receiver = self;
  v6.super_class = SKNodeCustomClassUnarchiver;
  v2 = [(SKNodeCustomClassUnarchiver *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;
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
  nameCopy = name;
  moduleNameCopy = moduleName;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_TtC%lu%@%lu%@", objc_msgSend(moduleNameCopy, "length"), moduleNameCopy, objc_msgSend(nameCopy, "length"), nameCopy];

  return nameCopy;
}

- (id)_findValidClassName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy componentsSeparatedByString:@"."];
  if ([v5 count] == 1)
  {
    _currentAppModuleName = [(SKNodeCustomClassUnarchiver *)self _currentAppModuleName];
    if (!_currentAppModuleName)
    {
      goto LABEL_14;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", _currentAppModuleName, nameCopy];
    if (NSClassFromString(nameCopy))
    {
      goto LABEL_12;
    }

    v8 = [(SKNodeCustomClassUnarchiver *)self _mangledSwiftClassName:nameCopy moduleName:_currentAppModuleName];
    v9 = NSClassFromString(v8);
LABEL_9:
    if (!v9)
    {

      v8 = 0;
    }

    nameCopy = v8;
LABEL_12:

    _currentAppModuleName = nameCopy;
    goto LABEL_14;
  }

  if ([v5 count] == 2)
  {
    _currentAppModuleName = [v5 lastObject];
    if (NSClassFromString(_currentAppModuleName))
    {
      goto LABEL_14;
    }

    v10 = MEMORY[0x277CCACA8];
    firstObject = [v5 firstObject];
    v12 = [firstObject stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    lastObject = [v5 lastObject];
    nameCopy = [v10 stringWithFormat:@"%@.%@", v12, lastObject];

    if (NSClassFromString(nameCopy))
    {
      goto LABEL_12;
    }

    lastObject2 = [v5 lastObject];
    firstObject2 = [v5 firstObject];
    v8 = [(SKNodeCustomClassUnarchiver *)self _mangledSwiftClassName:lastObject2 moduleName:firstObject2];

    v9 = NSClassFromString(v8);
    goto LABEL_9;
  }

  _currentAppModuleName = 0;
LABEL_14:

  return _currentAppModuleName;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:nameCopy];
  v8 = v7;
  if (v7)
  {
    v9 = NSClassFromString(v7);
  }

  else
  {
    v10 = [(SKNodeCustomClassUnarchiver *)self _findValidClassName:nameCopy];
    if (v10)
    {
      [(NSMutableDictionary *)self->_cache setObject:v10 forKeyedSubscript:nameCopy];
      v9 = NSClassFromString(v10);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end