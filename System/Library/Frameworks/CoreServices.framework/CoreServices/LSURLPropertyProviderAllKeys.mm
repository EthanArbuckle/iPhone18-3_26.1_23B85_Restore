@interface LSURLPropertyProviderAllKeys
@end

@implementation LSURLPropertyProviderAllKeys

void ___LSURLPropertyProviderAllKeys_block_invoke()
{
  if (getPropertyTable(void)::onceToken != -1)
  {
    _LSRegisterFilePropertyProvider_cold_1();
  }

  v0 = LaunchServices::URLPropertyProvider::propertyTable;
  v1 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0x6DB6DB6DB6DB6DB7 * ((v0[1] - *v0) >> 3)];
  v2 = *v0;
  v3 = v0[1];
  for (i = v1; v2 != v3; v1 = i)
  {
    [v1 addObject:*v2];
    v2 += 7;
  }

  v4 = [v1 copy];
  v5 = _LSURLPropertyProviderAllKeys::result;
  _LSURLPropertyProviderAllKeys::result = v4;
}

@end