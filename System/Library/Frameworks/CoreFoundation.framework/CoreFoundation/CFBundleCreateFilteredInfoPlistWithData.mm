@interface CFBundleCreateFilteredInfoPlistWithData
@end

@implementation CFBundleCreateFilteredInfoPlistWithData

CFTypeID ___CFBundleCreateFilteredInfoPlistWithData_block_invoke(int a1, CFTypeRef cf)
{
  result = CFGetTypeID(cf);
  if (result != 7)
  {
    ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_cold_1();
  }

  return result;
}

void ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_2(uint64_t a1, CFStringRef theString)
{
  v18 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v19.length = CFStringGetLength(theString);
  v19.location = 0;
  if (CFStringFindWithOptions(theString, @":", v19, 0, &result))
  {
    v20.length = result.location;
    v20.location = 0;
    v4 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, theString, v20);
    location = result.location;
    Length = CFStringGetLength(theString);
    v21.location = location + 1;
    v21.length = Length + ~result.location;
    v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, theString, v21);
  }

  else
  {
    v4 = CFRetain(theString);
    v7 = 0;
  }

  if (_CFGetProductName_onceToken != -1)
  {
    ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_2_cold_1();
  }

  v8 = _CFGetProductName__cfBundlePlatform;
  if (v7)
  {
    v9 = @":";
  }

  else
  {
    v9 = &stru_1EF068AA8;
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1EF068AA8;
  }

  v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@%@%@", v4, @"iphoneos", v9, v10);
  v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@~%@%@%@", v4, v8, v9, v10);
  v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@~%@%@%@", v4, @"iphoneos", v8, v9, v10);
  CFSetAddValue(*(a1 + 32), theString);
  CFSetAddValue(*(a1 + 32), v11);
  CFSetAddValue(*(a1 + 32), v12);
  CFSetAddValue(*(a1 + 32), v13);
  CFRelease(v11);
  CFRelease(v12);
  CFRelease(v13);
  v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@#CH%@%@", v4, v9, v10);
  CFSetAddValue(*(a1 + 32), v14);
  CFRelease(v14);
  v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@#override%@%@", v4, v9, v10);
  CFSetAddValue(*(a1 + 32), v15);
  CFRelease(v15);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@:%@", *(a1 + 32), a2);
  CFSetAddValue(*(a1 + 40), v3);

  CFRelease(v3);
}

@end