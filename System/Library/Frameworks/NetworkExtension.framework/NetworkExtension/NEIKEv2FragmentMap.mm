@interface NEIKEv2FragmentMap
- (BOOL)hasFragmentForNumber:(uint64_t)a1;
@end

@implementation NEIKEv2FragmentMap

- (BOOL)hasFragmentForNumber:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_10:
      v4 = 0;
      goto LABEL_5;
    }

    v9 = 136315138;
    v10 = "[NEIKEv2FragmentMap hasFragmentForNumber:]";
    v8 = "%s called with null (fragmentNumber >= 1)";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v8, &v9, 0xCu);
    goto LABEL_9;
  }

  if (*(a1 + 10) < a2)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v9 = 136315138;
    v10 = "[NEIKEv2FragmentMap hasFragmentForNumber:]";
    v8 = "%s called with null (fragmentNumber <= self.expectedCount)";
    goto LABEL_12;
  }

  v2 = [*(a1 + 24) objectAtIndexedSubscript:a2 - 1];
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = v2 != v3;

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end