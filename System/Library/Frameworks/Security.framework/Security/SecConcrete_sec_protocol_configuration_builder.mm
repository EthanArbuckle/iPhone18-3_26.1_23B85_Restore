@interface SecConcrete_sec_protocol_configuration_builder
- (SecConcrete_sec_protocol_configuration_builder)init;
- (SecConcrete_sec_protocol_configuration_builder)initWithDictionary:(__CFDictionary *)dictionary andInternalFlag:(BOOL)flag;
@end

@implementation SecConcrete_sec_protocol_configuration_builder

- (SecConcrete_sec_protocol_configuration_builder)initWithDictionary:(__CFDictionary *)dictionary andInternalFlag:(BOOL)flag
{
  v9.receiver = self;
  v9.super_class = SecConcrete_sec_protocol_configuration_builder;
  v6 = [(SecConcrete_sec_protocol_configuration_builder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->dictionary = dictionary;
    if (dictionary)
    {
      CFRetain(dictionary);
    }

    v7->is_apple = flag;
  }

  return v7;
}

- (SecConcrete_sec_protocol_configuration_builder)init
{
  v10.receiver = self;
  v10.super_class = SecConcrete_sec_protocol_configuration_builder;
  v2 = [(SecConcrete_sec_protocol_configuration_builder *)&v10 init];
  if (v2)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
      if (InfoDictionary)
      {
        Value = CFDictionaryGetValue(InfoDictionary, @"NSAppTransportSecurity");
        v2->dictionary = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        v6 = CFPreferencesCopyValue(@"EnableAppTransportSecurityAppleBundleException", @"com.apple.security", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [v6 BOOLValue];

          if (bOOLValue)
          {
            if (_is_apple_bundle_onceToken != -1)
            {
              dispatch_once(&_is_apple_bundle_onceToken, &__block_literal_global_4883);
            }

            v8 = &_is_apple_bundle_result;
LABEL_15:
            v2->is_apple = *v8;
            return v2;
          }
        }

        else
        {
        }

        if (client_is_WebKit_onceToken != -1)
        {
          dispatch_once(&client_is_WebKit_onceToken, &__block_literal_global_5162);
        }

        v8 = &client_is_WebKit_is_WebKit;
        goto LABEL_15;
      }
    }
  }

  return v2;
}

@end