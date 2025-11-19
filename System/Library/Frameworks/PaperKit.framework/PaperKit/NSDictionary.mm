@interface NSDictionary
@end

@implementation NSDictionary

void __56__NSDictionary_Foundation_Extensions__muDeepMutableCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v7 = [v6 muDeepMutableCopy];
  }

  else if ([v6 conformsToProtocol:&unk_1F4FA2F90])
  {
    v7 = [v6 mutableCopy];
  }

  else if ([v6 conformsToProtocol:&unk_1F4FA2EC8])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  if (v7)
  {
    [*(a1 + 32) setValue:v7 forKey:v5];
    goto LABEL_14;
  }

LABEL_12:
  v8 = +[PPKImageWriter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1D38C4000, v8, OS_LOG_TYPE_DEFAULT, "Unable to copy object for [NSDictionary muDeepMutableCopy]: %@", &v9, 0xCu);
  }

LABEL_14:
}

@end