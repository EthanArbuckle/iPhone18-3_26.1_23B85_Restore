@interface NSDictionary(INIntentImpl)
- (double)intents_doubleForKey:()INIntentImpl;
- (id)_intents_widgetPlistRepresentableForKey:()INIntentImpl ofClass:error:;
- (id)intents_numberForKey:()INIntentImpl;
- (id)intents_stringForKey:()INIntentImpl;
- (id)intents_urlForKey:()INIntentImpl;
- (uint64_t)intents_BOOLForKey:()INIntentImpl;
- (uint64_t)intents_int64ForKey:()INIntentImpl;
- (uint64_t)intents_intForKey:()INIntentImpl;
- (void)intents_safeObjectForKey:()INIntentImpl ofType:;
@end

@implementation NSDictionary(INIntentImpl)

- (id)_intents_widgetPlistRepresentableForKey:()INIntentImpl ofClass:error:
{
  v8 = a3;
  v9 = [self intents_safeObjectForKey:v8 ofType:objc_opt_class()];

  if (v9)
  {
    v16 = 0;
    v10 = [a4 makeFromWidgetPlistableRepresentation:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v11)
    {
      if (a5)
      {
        v13 = v11;
        v14 = 0;
        *a5 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v10;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)intents_urlForKey:()INIntentImpl
{
  v4 = a3;
  v5 = [self intents_safeObjectForKey:v4 ofType:objc_opt_class()];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];

  return v6;
}

- (id)intents_numberForKey:()INIntentImpl
{
  v4 = a3;
  v5 = [self intents_safeObjectForKey:v4 ofType:objc_opt_class()];

  return v5;
}

- (double)intents_doubleForKey:()INIntentImpl
{
  v1 = [self intents_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (uint64_t)intents_int64ForKey:()INIntentImpl
{
  v1 = [self intents_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    longLongValue = [v1 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (uint64_t)intents_intForKey:()INIntentImpl
{
  v1 = [self intents_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)intents_stringForKey:()INIntentImpl
{
  v1 = [self objectForKey:?];
  v2 = [MEMORY[0x1E696AEC0] intents_makeFromWidgetPlistableRepresentation:v1];

  return v2;
}

- (uint64_t)intents_BOOLForKey:()INIntentImpl
{
  v4 = a3;
  v5 = [self intents_safeObjectForKey:v4 ofType:objc_opt_class()];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (void)intents_safeObjectForKey:()INIntentImpl ofType:
{
  v1 = [self objectForKey:?];
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end