@interface NEPvDConfiguration
- (id)initWithDictionary:(NSObject *)dictionary;
@end

@implementation NEPvDConfiguration

- (id)initWithDictionary:(NSObject *)dictionary
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!dictionary)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[NEPvDConfiguration initWithDictionary:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null dictionary", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v11.receiver = dictionary;
  v11.super_class = NEPvDConfiguration;
  v5 = [&v11 init];
  if (!v5)
  {
    dictionary = ne_log_obj();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, dictionary, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_12:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = v4;
  dictionary = *(v6 + 1);
  *(v6 + 1) = v7;
LABEL_5:

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

@end