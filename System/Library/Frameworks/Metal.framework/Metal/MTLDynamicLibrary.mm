@interface MTLDynamicLibrary
@end

@implementation MTLDynamicLibrary

uint64_t __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v8 = [[MTLArchitecture alloc] initWithCPUType:a2 cpuSubtype:HIDWORD(a2)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  v9 = *(*(a1 + 40) + 8);
  v12 = (a2 << 32) | (a2 >> 32);
  v10 = std::unordered_map<unsigned long long,+[_MTLDynamicLibrary dynamicLibraryTypeAtURL:device:error:]::archSliceId>::operator[]((v9 + 48), &v12);
  *v10 = a3;
  v10[1] = a4;

  if (v13 == *(a1 + 80))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *(*(*(a1 + 64) + 8) + 24) = a4;
  }

  else if (*(a1 + 88) == a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 + a2 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + a2;
  }

  else
  {
    return 0;
  }
}

uint64_t __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 96))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  result = [*(a3 + 56) length];
  if (result)
  {
    v9 = a5 + a4 + *(*(*(a1 + 48) + 8) + 24);
    return v9 <= [*(a1 + 32) length];
  }

  return result;
}

uint64_t __59___MTLDynamicLibrary_dynamicLibraryTypeAtURL_device_error___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 24) + a2;
  if (v4 + a3 <= [*(a1 + 32) length])
  {
    return [*(a1 + 32) bytes] + v4;
  }

  else
  {
    return 0;
  }
}

@end