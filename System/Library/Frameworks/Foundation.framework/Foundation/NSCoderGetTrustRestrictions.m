@interface NSCoderGetTrustRestrictions
@end

@implementation NSCoderGetTrustRestrictions

void ___NSCoderGetTrustRestrictions_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/System/Library/Frameworks/Security.framework/Security", 256);
  if (v0 && (v1 = v0, v2 = dlsym(v0, "SecTaskCreateFromSelf"), v3 = dlsym(v1, "SecTaskGetCodeSignStatus"), v4 = dlsym(v1, "SecTaskCopySigningIdentifier"), v2) && v3 && (v5 = v4) != 0)
  {
    v6 = v2(*MEMORY[0x1E695E480]);
    if ((~v3() & 0x4000001) != 0)
    {
      v8 = v5(v6, 0);
      if (v8)
      {
        v9 = v8;
        if (_NSCoderIsAppleSigningIdentifier(v8))
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        dword_1ED43F57C = v10;
        CFRelease(v9);
      }
    }

    else
    {
      dword_1ED43F57C = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "NSCoder couldn't load a Security symbol.", v11, 2u);
    }
  }
}

@end