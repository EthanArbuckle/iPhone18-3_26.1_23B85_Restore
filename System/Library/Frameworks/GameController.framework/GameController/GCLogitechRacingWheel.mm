@interface GCLogitechRacingWheel
@end

@implementation GCLogitechRacingWheel

void __47___GCLogitechRacingWheel_observeGamepadEvents___block_invoke(uint64_t a1, const char *a2)
{
  while (1)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 144, 1);
    }

    v5 = *(a1 + 40);
    v6 = Property;
    v7 = OUTLINED_FUNCTION_8_0();
    v8 = _Block_copy(v7);
    v9 = [v2 containsObject:v8];

    if (!v9)
    {
      break;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 144, 1);
    }

    v12 = [v11 mutableCopy];
    _Block_copy(*(a1 + 40));
    [OUTLINED_FUNCTION_8_0() removeObject:v2];

    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_atomic_copy(v14, v13, v12, 144);
    }
  }
}

@end