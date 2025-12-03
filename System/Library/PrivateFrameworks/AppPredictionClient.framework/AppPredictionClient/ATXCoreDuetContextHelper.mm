@interface ATXCoreDuetContextHelper
- (ATXCoreDuetContextHelper)init;
- (id)fetchDataDictionaryForKeyPath:(id)path;
@end

@implementation ATXCoreDuetContextHelper

- (ATXCoreDuetContextHelper)init
{
  v6.receiver = self;
  v6.super_class = ATXCoreDuetContextHelper;
  v2 = [(ATXCoreDuetContextHelper *)&v6 init];
  if (v2)
  {
    userContext = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = userContext;
  }

  return v2;
}

- (id)fetchDataDictionaryForKeyPath:(id)path
{
  v3 = [self->_context objectForKeyedSubscript:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end