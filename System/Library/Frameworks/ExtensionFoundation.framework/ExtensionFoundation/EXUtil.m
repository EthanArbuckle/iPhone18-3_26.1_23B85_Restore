@interface EXUtil
@end

@implementation EXUtil

void __33___EXUtil__getEntryPointFunction__block_invoke()
{
  size = 0;
  prog_image_header = _dyld_get_prog_image_header();
  if (!prog_image_header)
  {
    v3 = _EXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __33___EXUtil__getEntryPointFunction__block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  v1 = getsectiondata(prog_image_header, "__TEXT", "__swift5_entry", &size);
  if (!v1 || size <= 3)
  {
LABEL_9:
    v4 = _EXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __33___EXUtil__getEntryPointFunction__block_invoke_cold_2();
    }

    goto LABEL_12;
  }

  v2 = *v1;
  if (v2)
  {
    _getEntryPointFunction_mainFunction = &v1[v2];
    return;
  }

LABEL_12:
  v5 = _EXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __33___EXUtil__getEntryPointFunction__block_invoke_cold_3();
  }
}

@end