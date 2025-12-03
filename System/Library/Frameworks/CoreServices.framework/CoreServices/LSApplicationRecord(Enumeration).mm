@interface LSApplicationRecord(Enumeration)
+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:;
+ (void)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:;
@end

@implementation LSApplicationRecord(Enumeration)

+ (void)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:()Enumeration options:
{
  v5 = self + 2;
  v4 = self[2];
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = self + 2;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v5 && *(v6 + 8) <= a2)
  {
    v15 = v6[5];
  }

  else
  {
LABEL_9:
    v10 = [LSApplicationRecord alloc];
    v11 = *self;
    v19 = 0;
    v12 = [(LSApplicationRecord *)v10 _initWithContext:v11 bundleID:a2 bundleData:0 error:&v19];
    v13 = v19;
    if (!v12)
    {
      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName();
      }
    }

    [v12 localizedName];
    v15 = v17 = a2;
    v18 = v15;
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>((v5 - 1), &v17);
  }

  return v15;
}

@end