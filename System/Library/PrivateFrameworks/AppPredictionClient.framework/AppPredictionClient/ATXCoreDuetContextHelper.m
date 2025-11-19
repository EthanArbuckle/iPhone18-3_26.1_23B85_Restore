@interface ATXCoreDuetContextHelper
- (ATXCoreDuetContextHelper)init;
- (id)fetchDataDictionaryForKeyPath:(id)a3;
@end

@implementation ATXCoreDuetContextHelper

- (ATXCoreDuetContextHelper)init
{
  v6.receiver = self;
  v6.super_class = ATXCoreDuetContextHelper;
  v2 = [(ATXCoreDuetContextHelper *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6997A60] userContext];
    context = v2->_context;
    v2->_context = v3;
  }

  return v2;
}

- (id)fetchDataDictionaryForKeyPath:(id)a3
{
  v3 = [self->_context objectForKeyedSubscript:a3];
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