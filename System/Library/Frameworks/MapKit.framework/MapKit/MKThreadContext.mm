@interface MKThreadContext
+ (id)currentContext;
- (void)_CA_setDisableActions:(BOOL)a3;
@end

@implementation MKThreadContext

+ (id)currentContext
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKey:@"MKThreadContext"];
  if (!v4)
  {
    v4 = objc_alloc_init(MKThreadContext);
    [v3 setObject:v4 forKey:@"MKThreadContext"];
  }

  return v4;
}

- (void)_CA_setDisableActions:(BOOL)a3
{
  CA_disableActionsCounter = self->_CA_disableActionsCounter;
  if (a3)
  {
    self->_CA_disableActionsCounter = CA_disableActionsCounter + 1;
    if (CA_disableActionsCounter)
    {
      return;
    }

LABEL_5:
    [MEMORY[0x1E6979518] setDisableActions:?];
    return;
  }

  v4 = CA_disableActionsCounter - 1;
  self->_CA_disableActionsCounter = v4;
  if (!v4)
  {
    goto LABEL_5;
  }
}

@end