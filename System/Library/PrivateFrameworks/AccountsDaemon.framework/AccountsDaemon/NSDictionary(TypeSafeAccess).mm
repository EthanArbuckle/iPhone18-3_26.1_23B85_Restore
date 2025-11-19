@interface NSDictionary(TypeSafeAccess)
- (id)dataValueForKey:()TypeSafeAccess;
- (id)stringValueForKey:()TypeSafeAccess;
- (uint64_t)BOOLValueForKey:()TypeSafeAccess;
@end

@implementation NSDictionary(TypeSafeAccess)

- (id)stringValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_8;
    }

    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(TypeSafeAccess) stringValueForKey:];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)dataValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      goto LABEL_8;
    }

    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(TypeSafeAccess) dataValueForKey:];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (uint64_t)BOOLValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];
  if (!v5)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(TypeSafeAccess) dataValueForKey:];
    }

    goto LABEL_7;
  }

  v6 = [v5 BOOLValue];
LABEL_8:

  return v6;
}

- (void)stringValueForKey:()TypeSafeAccess .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_4(v0);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dataValueForKey:()TypeSafeAccess .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_4(v0);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end