@interface PKContentVersionUtility
+ (id)sharedUtility;
- (uint64_t)contentVersionForCurrentSDK;
- (uint64_t)programLinkedOnOrAfterDawnburst;
- (uint64_t)programLinkedOnOrAfterDawnburstE;
@end

@implementation PKContentVersionUtility

+ (id)sharedUtility
{
  objc_opt_self();
  if (qword_1ED6A5108 != -1)
  {
    dispatch_once(&qword_1ED6A5108, &__block_literal_global_41);
  }

  v0 = qword_1ED6A5110;

  return v0;
}

- (uint64_t)programLinkedOnOrAfterDawnburstE
{
  if (self)
  {
    if (qword_1ED6A5120 != -1)
    {
      dispatch_once(&qword_1ED6A5120, &__block_literal_global_4);
    }

    v1 = byte_1ED6A5101;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)contentVersionForCurrentSDK
{
  if (result)
  {
    if (qword_1ED6A5120 != -1)
    {
      dispatch_once(&qword_1ED6A5120, &__block_literal_global_4);
    }

    if (byte_1ED6A5101 == 1 && (_os_feature_enabled_impl() & 1) != 0)
    {
      return 3;
    }

    else
    {
      if (qword_1ED6A5118 != -1)
      {
        dispatch_once(&qword_1ED6A5118, &__block_literal_global_2);
      }

      if (_MergedGlobals_139)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void __40__PKContentVersionUtility_sharedUtility__block_invoke()
{
  v0 = objc_alloc_init(PKContentVersionUtility);
  v1 = qword_1ED6A5110;
  qword_1ED6A5110 = v0;
}

uint64_t __59__PKContentVersionUtility_programLinkedOnOrAfterDawnburstE__block_invoke()
{
  result = dyld_program_sdk_at_least();
  byte_1ED6A5101 = result;
  return result;
}

- (uint64_t)programLinkedOnOrAfterDawnburst
{
  if (self)
  {
    if (qword_1ED6A5118 != -1)
    {
      dispatch_once(&qword_1ED6A5118, &__block_literal_global_2);
    }

    v1 = _MergedGlobals_139;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t __58__PKContentVersionUtility_programLinkedOnOrAfterDawnburst__block_invoke()
{
  result = dyld_program_sdk_at_least();
  _MergedGlobals_139 = result;
  return result;
}

@end