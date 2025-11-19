uint64_t filterRegistryIsolationQueue(void)
{
  if ((atomic_load_explicit(&qword_1ED7C44B0, memory_order_acquire) & 1) == 0)
  {
    filterRegistryIsolationQueue();
  }

  return _MergedGlobals_1;
}

void filterRegistryIsolationQueue()
{
  if (__cxa_guard_acquire(&qword_1ED7C44B0))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    _MergedGlobals_1 = dispatch_queue_create("com.apple.coreimage.CIFilterRegistryIsolation", v0);

    __cxa_guard_release(&qword_1ED7C44B0);
  }
}

double CI::Image::Image(CI::Image *this)
{
  *(this + 2) = 1;
  v1 = MEMORY[0x1E695F050];
  *this = &unk_1F1037D80;
  v2 = v1[1];
  *(this + 1) = *v1;
  *(this + 2) = v2;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0;
  *(this + 29) = atomic_fetch_add(&CI::gImageCounter, 1u) + 1;
  return result;
}

CI::FillImage *CI::FillImage::FillImage(CI::FillImage *this)
{
  CI::Image::Image(this);
  v2[15] = &unk_1F10359E8;
  atomic_fetch_add(&dword_1ED7C47BC[7], 1u);
  *v2 = &unk_1F1035848;
  v2[15] = &unk_1F10359C0;
  v2[16] = 0;
  XXH64_reset(v5, 0);
  __src = (*(*this + 16))(this);
  XXH64_update(v5, &__src, 4uLL);
  v3 = XXH64_digest(v5);
  *(this + 12) = v3;
  *(this + 13) = v3;
  *(this + 56) = 1;
  return this;
}

uint64_t XXH64_reset(int64x2_t *a1, unint64_t a2)
{
  a1[1] = vaddq_s64(vdupq_n_s64(a2), xmmword_19CF2E0D0);
  a1[2].i64[0] = a2;
  a1[2].i64[1] = a2 + 0x61C8864E7A143579;
  a1->i64[0] = 0;
  a1->i64[1] = a2;
  a1[5].i32[0] = 0;
  return 0;
}

uint64_t XXH64_update(uint64_t a1, char *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  *a1 += __n;
  v6 = *(a1 + 80);
  if (v6 + __n <= 0x1F)
  {
    memcpy((a1 + v6 + 48), __src, __n);
    LODWORD(v7) = *(a1 + 80) + v3;
LABEL_11:
    *(a1 + 80) = v7;
    return 0;
  }

  v8 = &__src[__n];
  if (v6)
  {
    memcpy((a1 + 48 + v6), __src, (32 - v6));
    v9 = __ROR8__(*(a1 + 24) - 0x3D4D51C2D82B14B1 * *(a1 + 56), 33);
    *(a1 + 16) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 16) - 0x3D4D51C2D82B14B1 * *(a1 + 48), 33);
    *(a1 + 24) = 0x9E3779B185EBCA87 * v9;
    v10 = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 40) - 0x3D4D51C2D82B14B1 * *(a1 + 72), 33);
    *(a1 + 32) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 32) - 0x3D4D51C2D82B14B1 * *(a1 + 64), 33);
    *(a1 + 40) = v10;
    v4 += (32 - *(a1 + 80));
    *(a1 + 80) = 0;
  }

  if (v4 + 32 <= v8)
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    do
    {
      v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
      v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
      v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
      v4 += 32;
    }

    while (v4 <= v8 - 32);
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
    *(a1 + 40) = v13;
  }

  if (v4 < v8)
  {
    v7 = v8 - v4;
    memcpy((a1 + 48), v4, v7);
    goto LABEL_11;
  }

  return 0;
}

unint64_t XXH64_digest(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = *(a1 + 80);
  if (*a1 < 0x20uLL)
  {
    v3 = *(a1 + 8) + 0x27D4EB2F165667C5;
  }

  else
  {
    v3 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(*(a1 + 24), 57) + __ROR8__(*(a1 + 16), 63) + __ROR8__(*(a1 + 32), 52) + __ROR8__(*(a1 + 40), 46)) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 16)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 16)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 24)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 24)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 32)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 32)) >> 33))))) ^ (0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *(a1 + 40)) | ((0xC2B2AE3D27D4EB4FLL * *(a1 + 40)) >> 33))));
  }

  v4 = v1 + v2;
  v5 = v3 + *a1;
  if (v2 >= 8)
  {
    do
    {
      v6 = (v1 + 1);
      v5 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * ((0x93EA75A780000000 * *v1) | ((0xC2B2AE3D27D4EB4FLL * *v1) >> 33))) ^ v5, 37);
      v7 = (v1 + 2) > v4;
      ++v1;
    }

    while (!v7);
  }

  else
  {
    v6 = (a1 + 48);
  }

  if ((v6 + 1) <= v4)
  {
    v5 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * *v6++) ^ v5, 41);
  }

  if (v6 < v4)
  {
    v8 = a1 + v2 - v6 + 48;
    do
    {
      v9 = *v6;
      v6 = (v6 + 1);
      v5 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v9) ^ v5, 53);
      --v8;
    }

    while (v8);
  }

  v10 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v5 ^ (v5 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v5 ^ (v5 >> 33))) >> 29));
  return v10 ^ HIDWORD(v10);
}

void CI::Object::unref(CI::Object *this)
{
  atomic_load(this + 2);
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v3[5] = v1;
    v3[6] = v2;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK2CI6Object5unrefEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_4_2;
    v3[4] = this;
    CI::Object::performDeferred(v3);
  }
}

NSUInteger getCustomAttributes(objc_class *a1)
{
  if (![(objc_class *)a1 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v2 = filterRegistryIsolationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL19getCustomAttributesP10objc_class_block_invoke;
  block[3] = &unk_1E75C2AF0;
  block[4] = a1;
  block[5] = &v13;
  dispatch_sync(v2, block);
  v3 = NSSelectorFromString(&cfstr_Customattribut.isa);
  v4 = [(objc_class *)a1 methodForSelector:v3];
  v5 = [CIFilter methodForSelector:v3];
  v6 = [(objc_class *)a1 instanceMethodForSelector:v3];
  v7 = [CIFilter instanceMethodForSelector:v3];
  if (v4 == v5)
  {
    if (v6 != v7)
    {
      v10 = NSStringFromClass(a1);
      NSLog(&cfstr_Customattribut_0.isa, v10);
    }

    v8 = 0;
  }

  else
  {
    v8 = [(objc_class *)a1 customAttributes];
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  mergeDictionaries(v9, v8);
  mergeDictionaries(v9, v14[5]);

  _Block_object_dispose(&v13, 8);
  return v9;
}

void sub_19CC386DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL19getCustomAttributesP10objc_class_block_invoke(uint64_t a1)
{
  result = [registeredFilterConstructors valueForKey:NSStringFromClass(*(a1 + 32))];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [result mutableCopy];
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = kCIConstructorKey;

    return [v3 removeObjectForKey:v4];
  }

  return result;
}

NSUInteger mergeDictionaries(NSUInteger result, NSDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      result = [(NSDictionary *)a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v14;
        do
        {
          v6 = 0;
          do
          {
            if (*v14 != v5)
            {
              objc_enumerationMutation(a2);
            }

            v7 = *(*(&v13 + 1) + 8 * v6);
            if (([v7 isEqualToString:kCIConstructorKey] & 1) == 0)
            {
              v8 = [v3 objectForKey:v7];
              v9 = [(NSDictionary *)a2 objectForKey:v7];
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
                [v10 addEntriesFromDictionary:v9];
                v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
                v12 = v3;
              }

              else
              {
                if (!v9)
                {
                  goto LABEL_15;
                }

                v12 = v3;
                v11 = v9;
              }

              [v12 setObject:v11 forKey:v7];
            }

LABEL_15:
            ++v6;
          }

          while (v4 != v6);
          result = [(NSDictionary *)a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

__CFString *classNameFromTypeEncoding(__CFString *result)
{
  if (result)
  {
    v1 = result;
    result = [(__CFString *)result length];
    if (result)
    {
      v2 = result;
      v3 = [(__CFString *)v1 characterAtIndex:0];
      if (v2 >= 4 && v3 == 64)
      {

        return [(__CFString *)v1 substringWithRange:2, &v2[-1].length + 5];
      }

      else if (v2 == 1 && ([@"iIsSlLqQBfdcC" containsString:v1] & 1) != 0)
      {
        return @"__WrappedNSNumber";
      }

      else if ([(__CFString *)v1 isEqualToString:@"@"])
      {
        return @"NSObject";
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getStdAttrsForKey(NSString *a1)
{
  v22[6] = *MEMORY[0x1E69E9840];
  if ([(NSString *)a1 isEqualToString:@"inputIntensity"])
  {
    v21[0] = @"CIAttributeMin";
    v21[1] = @"CIAttributeSliderMin";
    v22[0] = &unk_1F1083A38;
    v22[1] = &unk_1F1083A38;
    v21[2] = @"CIAttributeSliderMax";
    v21[3] = @"CIAttributeDefault";
    v22[2] = &unk_1F1083A48;
    v22[3] = &unk_1F1083A48;
    v21[4] = @"CIAttributeIdentity";
    v21[5] = @"CIAttributeType";
    v22[4] = &unk_1F1083A38;
    v22[5] = @"CIAttributeTypeScalar";
    v2 = MEMORY[0x1E695DF20];
    v3 = v22;
    v4 = v21;
    v5 = 6;
    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:v5];
  }

  if ([(NSString *)a1 isEqualToString:@"inputTime"])
  {
    v19[0] = @"CIAttributeMin";
    v19[1] = @"CIAttributeMax";
    v20[0] = &unk_1F1083A38;
    v20[1] = &unk_1F1083A48;
    v19[2] = @"CIAttributeSliderMin";
    v19[3] = @"CIAttributeSliderMax";
    v20[2] = &unk_1F1083A38;
    v20[3] = &unk_1F1083A48;
    v19[4] = @"CIAttributeDefault";
    v19[5] = @"CIAttributeIdentity";
    v20[4] = &unk_1F1083A38;
    v20[5] = &unk_1F1083A38;
    v19[6] = @"CIAttributeType";
    v20[6] = @"CIAttributeTypeTime";
    v2 = MEMORY[0x1E695DF20];
    v3 = v20;
    v4 = v19;
    v5 = 7;
    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:v5];
  }

  if ([(NSString *)a1 isEqualToString:@"inputAngle"])
  {
    v17[0] = @"CIAttributeSliderMin";
    v17[1] = @"CIAttributeSliderMax";
    v18[0] = &unk_1F1083A58;
    v18[1] = &unk_1F1083A68;
    v17[2] = @"CIAttributeDefault";
    v17[3] = @"CIAttributeIdentity";
    v18[2] = &unk_1F1083A38;
    v18[3] = &unk_1F1083A38;
    v17[4] = @"CIAttributeType";
    v18[4] = @"CIAttributeTypeAngle";
    v2 = MEMORY[0x1E695DF20];
    v3 = v18;
    v4 = v17;
    v5 = 5;
    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:v5];
  }

  if ([(NSString *)a1 isEqualToString:@"inputImage"]|| [(NSString *)a1 isEqualToString:@"inputMaskImage"]|| [(NSString *)a1 isEqualToString:@"inputBackgroundImage"]|| [(NSString *)a1 isEqualToString:@"inputShadingImage"]|| [(NSString *)a1 isEqualToString:@"inputTargetImage"])
  {
    v15 = @"CIAttributeType";
    v16 = @"CIAttributeTypeImage";
    v2 = MEMORY[0x1E695DF20];
    v3 = &v16;
    v4 = &v15;
LABEL_13:
    v5 = 1;
    return [v2 dictionaryWithObjects:v3 forKeys:v4 count:v5];
  }

  if ([(NSString *)a1 isEqualToString:@"inputGradientImage"])
  {
    v13 = @"CIAttributeType";
    v14 = @"CIAttributeTypeGradient";
    v2 = MEMORY[0x1E695DF20];
    v3 = &v14;
    v4 = &v13;
    goto LABEL_13;
  }

  if ([(NSString *)a1 isEqualToString:@"inputCenter"])
  {
    v11[0] = @"CIAttributeDefault";
    v11[1] = @"CIAttributeType";
    v12[0] = [CIVector vectorWithX:150.0 Y:150.0];
    v12[1] = @"CIAttributeTypePosition";
    v2 = MEMORY[0x1E695DF20];
    v3 = v12;
    v4 = v11;
  }

  else
  {
    if (![(NSString *)a1 isEqualToString:@"inputExtent"])
    {
      return 0;
    }

    if (dyld_program_sdk_at_least())
    {
      v9[0] = @"CIAttributeDefault";
      v9[1] = @"CIAttributeType";
      v10[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v10[1] = @"CIAttributeTypeRectangle";
      v2 = MEMORY[0x1E695DF20];
      v3 = v10;
      v4 = v9;
    }

    else
    {
      v7[0] = @"CIAttributeDefault";
      v7[1] = @"CIAttributeType";
      v8[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:640.0 W:80.0];
      v8[1] = @"CIAttributeTypeRectangle";
      v2 = MEMORY[0x1E695DF20];
      v3 = v8;
      v4 = v7;
    }
  }

  v5 = 2;
  return [v2 dictionaryWithObjects:v3 forKeys:v4 count:v5];
}

double CI::sw_remap01FromMinus1ToPlus1(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(v4 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (v5 == 5)
  {
    v8 = v7;
  }

  *&a4 = ((*v8 + 1.0) * -0.5) + 1.0;
  *&result = vdupq_lane_s32(*&a4, 0).u64[0];
  return result;
}

void CI::ColorKernel::~ColorKernel(CI::ColorKernel *this)
{
  CI::Kernel::~Kernel(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Kernel::add_to_digest(CI::Kernel *this, CI::XXHashHelper *a2)
{
  v3 = *(this + 4);
  if (!v3)
  {
    v3 = *(this + 5);
    if (!v3)
    {
      v3 = *(this + 3);
    }
  }

  return CI::XXHashHelper::addstr(a2, v3);
}

uint64_t CI::ColorKernel::set_extentType(uint64_t result, int a2)
{
  if (*(result + 12) == 1)
  {
    *(result + 164) = a2;
  }

  return result;
}

void CI::Kernel::~Kernel(CI::Kernel *this)
{
  *this = &unk_1F10300E8;
  if (*(this + 12) == 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      free(v2);
    }

    v3 = *(this + 4);
    if (v3 && (*(this + 96) & 1) == 0)
    {
      free(v3);
    }

    v4 = *(this + 5);
    if (v4)
    {
      free(v4);
    }

    *(this + 4) = 0;
    *(this + 5) = 0;
    v5 = *(this + 13);
    if (v5)
    {
      CFRelease(v5);
      *(this + 13) = 0;
    }
  }

  CI::KernelArguments::~KernelArguments((this + 136));
}

{
  CI::Kernel::~Kernel(this);

  JUMPOUT(0x19EAF5590);
}

void CI::KernelArguments::~KernelArguments(CI::KernelArguments *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      free(v3);
    }

    MEMORY[0x19EAF5590](v2, 0x1010C40C0D7B093);
  }

  *this = 0;
  v4 = *(this + 1);
  if (v4)
  {
    CI::SerialStringArray::~SerialStringArray(v4);
    MEMORY[0x19EAF5590]();
  }

  *(this + 1) = 0;
}

void CI::SerialStringArray::~SerialStringArray(CI::SerialStringArray *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }
}

uint64_t CI::XXHashHelper::addstr(uint64_t this, char *__s)
{
  if (__s)
  {
    v3 = this;
    this = strlen(__s);
    if (this)
    {

      return XXH64_update(v3, __s, this);
    }
  }

  return this;
}

double CI::sw_narrowBlur15(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v11 = *v9;
  v52[0] = xmmword_19CF22670;
  v52[1] = xmmword_19CF22680;
  v19 = *CI::getDC(a1);
  v20 = 0uLL;
  v21 = 7;
  do
  {
    v49 = v20;
    v22 = vmul_n_f32(v11, v21);
    v23 = vadd_f32(v19, v22);
    LODWORD(v13) = *(v10 + 24);
    v16.i32[0] = *(v10 + 36);
    *v15.i32 = vmuls_lane_f32(*(v10 + 32), v23, 1);
    *&v14 = *v15.i32 + (v23.f32[0] * *(v10 + 28));
    v23.f32[0] = *&v13 + (vmuls_lane_f32(*(v10 + 20), v23, 1) + (v23.f32[0] * *(v10 + 16)));
    *v12.f64 = *v16.i32 + *&v14;
    v23.f32[1] = *v16.i32 + *&v14;
    *v24.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v23, v12, v13, v14, v15, v16, v17, v18);
    *&v25.f64[0] = vsub_f32(v19, v22);
    *&v26 = vmuls_lane_f32(*(v10 + 20), *&v25.f64[0], 1) + (*v25.f64 * *(v10 + 16));
    LODWORD(v27) = *(v10 + 24);
    v28.i32[0] = *(v10 + 36);
    *v29.i32 = vmuls_lane_f32(*(v10 + 32), *&v25.f64[0], 1);
    LODWORD(v30) = *(v52 + v21);
    v48 = v30;
    v31 = vmulq_n_f32(v24, *&v30);
    v32 = v49;
    v50 = vaddq_f32(v49, v31);
    v31.f32[0] = *&v27 + *&v26;
    *v25.f64 = *v28.i32 + (*v29.i32 + (*v25.f64 * *(v10 + 28)));
    v31.i32[1] = LODWORD(v25.f64[0]);
    *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), *v31.i64, v25, v26, v27, v32, v29, v28, v33);
    HIDWORD(v13) = HIDWORD(v48);
    v12 = v50;
    v20 = vaddq_f32(v50, vmulq_n_f32(v35, *&v48));
  }

  while (v21-- > 1);
  v51 = v20;
  DC = CI::getDC(v34);
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *DC, 1);
  *&v41 = *v40.i32 + (COERCE_FLOAT(*DC) * *(v10 + 28));
  *&v42 = *&v38 + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  *v43.f64 = *v39.i32 + *&v41;
  *(&v42 + 1) = *v39.i32 + *&v41;
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), v42, v43, v38, v41, v40, v39, v44, v45);
  *&result = vaddq_f32(v51, vmulq_f32(v46, vdupq_n_s32(0x3DF10A9Au))).u64[0];
  return result;
}

void CI::GeneralKernel::~GeneralKernel(CI::GeneralKernel *this)
{
  CI::Kernel::~Kernel(this);

  JUMPOUT(0x19EAF5590);
}

double CI::BitmapSampler::read(uint64x2_t *a1, double a2, float64x2_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9)
{
  if (a1[8].i8[11] == 1)
  {
    a3 = vcvtq_f64_u64(a1[5]);
    *&a3.f64[0] = vcvt_f32_f64(a3);
    a2 = COERCE_DOUBLE(vmul_f32(*&a2, *&a3.f64[0]));
  }

  if (a1[8].i8[10] == 1)
  {
    v10 = a1[5].i64[0];
    v11 = 0.0;
    if (v10)
    {
      v12 = a1[5].i64[1];
      if (v12)
      {
        v13 = a1[4].i64[1];
        if (v13)
        {
          if (a1[7].i64[0] && a1[7].i64[1])
          {
            v14 = *&a2;
            LODWORD(a2) = HIDWORD(a2);
            v15 = v14 & ~(v14 >> 31);
            v16 = v10 - 1;
            if (v15 >= v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = v15;
            }

            v18 = v12 - 1;
            if ((*(&a2 + 1) & ~(*(&a2 + 1) >> 31)) < v12 - 1)
            {
              v18 = *(&a2 + 1) & ~(*(&a2 + 1) >> 31);
            }

            return CI::BitmapSampler::read(a1, (v13 + a1[6].i64[0] * v18), v17, a2, a3);
          }
        }
      }
    }

    return v11;
  }

  HIDWORD(a3.f64[0]) = -1090519040;
  *v19.f32 = vadd_f32(*&a2, 0xBF000000BF000000);
  v20 = vcvtms_s32_f32(v19.f32[0]);
  v21 = vcvtms_s32_f32(v19.f32[1]);
  *a3.f64 = v19.f32[1] - floorf(v19.f32[1]);
  v22 = a1[5].i64[0];
  v23 = a1[5].i64[1];
  v24 = v22 - 1;
  if ((v20 & ~(v20 >> 31)) >= v22 - 1)
  {
    v25 = v22 - 1;
  }

  else
  {
    v25 = v20 & ~(v20 >> 31);
  }

  v26 = v23 - 1;
  if ((v21 & ~(v21 >> 31)) >= v23 - 1)
  {
    v27 = v23 - 1;
  }

  else
  {
    v27 = v21 & ~(v21 >> 31);
  }

  if (v20 < 0)
  {
    v28 = -1;
  }

  else
  {
    v28 = v20;
  }

  if (v21 < 0)
  {
    v21 = -1;
  }

  if (v28 + 1 < v24)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = v22 - 1;
  }

  if (v21 + 1 < v26)
  {
    v30 = v21 + 1;
  }

  else
  {
    v30 = v23 - 1;
  }

  if (v25 + 1 != v29)
  {
    v35 = 0uLL;
    if (v22 && v23)
    {
      v36 = a1[4].i64[1];
      v37 = 0uLL;
      if (!v36 || !a1[7].i64[0] || !a1[7].i64[1])
      {
        goto LABEL_50;
      }

      v38 = v27 & ~(v27 >> 31);
      if ((v25 & ~(v25 >> 31)) >= v24)
      {
        v39 = v22 - 1;
      }

      else
      {
        v39 = v25 & ~(v25 >> 31);
      }

      if (v38 >= v26)
      {
        v40 = v23 - 1;
      }

      else
      {
        v40 = v38;
      }

      v48 = a3;
      *v19.i64 = CI::BitmapSampler::read(a1, (v36 + a1[6].i64[0] * v40), v39, *v19.i64, a3);
      v35 = 0uLL;
      a3 = v48;
      v37 = v19;
      v22 = a1[5].i64[0];
    }

    else
    {
      v37 = 0uLL;
    }

    if (!v22)
    {
LABEL_60:
      *&v11 = vmlaq_n_f32(vmulq_n_f32(v37, 1.0 - *a3.f64), v35, *a3.f64).u64[0];
      return v11;
    }

LABEL_50:
    v41 = a1[5].i64[1];
    if (v41)
    {
      v42 = a1[4].i64[1];
      if (v42)
      {
        if (a1[7].i64[0] && a1[7].i64[1])
        {
          v43 = v22 - 1;
          if ((v25 & ~(v25 >> 31)) >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v25 & ~(v25 >> 31);
          }

          v45 = v41 - 1;
          if ((v30 & ~(v30 >> 31)) < v41 - 1)
          {
            v45 = v30 & ~(v30 >> 31);
          }

          v47 = v37;
          v49 = LODWORD(a3.f64[0]);
          *v46.i64 = CI::BitmapSampler::read(a1, (v42 + a1[6].i64[0] * v45), v44, *v19.i64, a3);
          v37 = v47;
          LODWORD(a3.f64[0]) = v49;
          v35 = v46;
        }
      }
    }

    goto LABEL_60;
  }

  v19.f32[0] = v19.f32[0] - v20;
  v31 = a1[4].i64[1];
  v32 = v27;
  v33 = a1[6].i64[0];

  *&a4 = v20;
  return CI::BitmapSampler::bilinear_read(a1, (v31 + v33 * v32), (v31 + v33 * v30), v25, v25, *v19.i64, a3.f64[0], a4, a5, a6, a7, a8, a9);
}

double CI::BitmapSampler::bilinear_read(float32x4_t *this, int32x2_t *a2, unsigned __int8 *a3, int a4, int a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13)
{
  v16 = a3;
  v17 = this[6].i32[2];
  if ((v17 - 1285) >= 2)
  {
    v18 = this[7].i64[1];
    a2 = (a2 + v18 * a4);
    v16 = &a3[v18 * a5];
  }

  v202 = v13;
  v203 = v14;
  v19 = xmmword_19CF22690;
  if (v17 <= 1797)
  {
    if (v17 <= 770)
    {
      switch(v17)
      {
        case 257:
          CI::bilinear_single_component(a2, v16, *&a6, a7, this[10]);
          v19.i64[0] = 0;
          return *v19.i64;
        case 258:
        case 259:
        case 261:
          v26.f32[0] = 1.0 - *&a6;
          v26.i32[1] = LODWORD(a6);
          v26.f32[2] = 1.0 - *&a6;
          v26.i32[3] = LODWORD(a6);
          v27.f32[0] = 1.0 - *&a7;
          v27.i32[1] = LODWORD(a7);
          LOWORD(a7) = a2->i16[0];
          WORD1(a7) = *v16;
          v28.i64[0] = 0xFF000000FFLL;
          v28.i64[1] = 0xFF000000FFLL;
          v29 = vmulq_f32(v26, vmulq_f32(this[10], vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(vzip1_s8(*&a7, v27)), v28), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000))));
          goto LABEL_72;
        case 260:
        case 262:
          *&a9 = 1.0 - *&a6;
          *v131.f32 = vdup_lane_s32(*&a9, 0);
          *&v131.u32[2] = vdup_lane_s32(*&a6, 0);
          v132.i32[0] = a2->i32[0];
          v132.i32[1] = *v16;
          v133 = vmovl_u8(v132);
          v134 = vmovl_high_u16(v133);
          v135 = vdupq_n_s32(0x4B400000u);
          v136 = vorrq_s8(vmovl_u16(*v133.i8), v135);
          v137 = vorrq_s8(v134, v135);
          v138 = vdupq_n_s32(0xCB400000);
          v93 = 1.0 - *&a7;
          v94 = vmulq_f32(v131, vmulq_f32(this[12], vaddq_f32(v137, v138)));
          v95 = vmulq_f32(v131, vmulq_f32(this[11], vaddq_f32(v136, v138)));
          goto LABEL_76;
        case 263:
          v194 = this[13];
          v195 = this[14];
          v196 = this[16];
          v200 = this[15];
          v201 = v196;
          v198 = v194;
          v199 = v195;
          v114 = CI::bilinear_three_components(a2, v16, &v198, *&a6, *&a7);
          goto LABEL_90;
        case 264:
        case 268:
          v31 = this[15];
          v30 = this[16];
          v33 = this[13];
          v32 = this[14];
          v34 = 1.0;
          v35 = 1.0 - *&a6;
          v150 = vmovl_u8(*v16);
          v37 = vmovl_high_u16(v150);
          v38 = vmovl_u16(*v150.i8);
          v36 = vmovl_u8(*a2);
          goto LABEL_81;
        case 265:
        case 269:
          goto LABEL_85;
        case 266:
        case 270:
          v159 = vmovl_u8(*v16);
          v160 = vmovl_high_u16(v159);
          v161 = vmovl_u8(*a2);
          v162 = vmovl_high_u16(v161);
          v163 = vdupq_n_s32(0x4B400000u);
          v164 = vorrq_s8(vmovl_u16(*v161.i8), v163);
          v165 = vorrq_s8(v162, v163);
          v166 = vorrq_s8(vmovl_u16(*v159.i8), v163);
          v167 = vorrq_s8(v160, v163);
          v168 = vdupq_n_s32(0xCB400000);
          v169 = vrev64q_s32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[13], vaddq_f32(v164, v168)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[14], vaddq_f32(v165, v168)), *&a6)), 1.0 - *&a7), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[15], vaddq_f32(v166, v168)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[16], vaddq_f32(v167, v168)), *&a6)), *&a7)));
          v19.i64[0] = vextq_s8(v169, v169, 0xCuLL).u64[0];
          return *v19.i64;
        case 267:
        case 271:
          v139 = vmovl_u8(*v16);
          v140 = vmovl_high_u16(v139);
          v141 = vmovl_u8(*a2);
          v142 = vmovl_high_u16(v141);
          v143 = vdupq_n_s32(0x4B400000u);
          v144 = vorrq_s8(vmovl_u16(*v141.i8), v143);
          v145 = vorrq_s8(v142, v143);
          v146 = vorrq_s8(vmovl_u16(*v139.i8), v143);
          v147 = vorrq_s8(v140, v143);
          v148 = vdupq_n_s32(0xCB400000);
          v149 = vrev64q_s32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[13], vaddq_f32(v144, v148)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[14], vaddq_f32(v145, v148)), *&a6)), 1.0 - *&a7), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[15], vaddq_f32(v146, v148)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[16], vaddq_f32(v147, v148)), *&a6)), *&a7)));
          v19.i64[0] = vextq_s8(v149, v149, 8uLL).u64[0];
          return *v19.i64;
        default:
          if (v17 == 535)
          {
LABEL_85:
            v170 = vmovl_u8(*v16);
            v171 = vmovl_high_u16(v170);
            v172 = vmovl_u8(*a2);
            v173 = vmovl_high_u16(v172);
            v174 = vdupq_n_s32(0x4B400000u);
            v175 = vorrq_s8(vmovl_u16(*v172.i8), v174);
            v176 = vorrq_s8(v173, v174);
            v177 = vorrq_s8(vmovl_u16(*v170.i8), v174);
            v178 = vorrq_s8(v171, v174);
            v179 = vdupq_n_s32(0xCB400000);
            v180 = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[13], vaddq_f32(v175, v179)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[14], vaddq_f32(v176, v179)), *&a6)), 1.0 - *&a7), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(this[15], vaddq_f32(v177, v179)), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(this[16], vaddq_f32(v178, v179)), *&a6)), *&a7));
            v19.i64[0] = vextq_s8(v180, v180, 4uLL).u64[0];
          }

          break;
      }

      return *v19.i64;
    }

    if (v17 > 1284)
    {
      if (v17 <= 1792)
      {
        if (v17 != 1285)
        {
          if (v17 != 1286)
          {
            return *v19.i64;
          }

          *&a9 = 1.0 - *&a6;
          v89 = vdup_lane_s32(*&a6, 0);
          *v90.f32 = vdup_lane_s32(*&a9, 0);
          *&v90.u32[2] = v89;
          v91.f32[0] = ((a2->i32[2 * a4 / 3] >> (10 * (2 * a4 % 3))) & 0x3FF);
          v92.f32[0] = ((*&v16[4 * (2 * a5 / 3)] >> (10 * (2 * a5 % 3))) & 0x3FF);
          v92.f32[1] = ((*&v16[4 * (((2 * a5) | 1) / 3)] >> (10 * (((2 * a5) | 1) % 3))) & 0x3FF);
          v92.f32[2] = ((*&v16[4 * ((2 * a5 + 2) / 3)] >> (10 * ((2 * a5 + 2) % 3))) & 0x3FF);
          v92.f32[3] = ((*&v16[4 * ((2 * a5 + 3) / 3)] >> (10 * ((2 * a5 + 3) % 3))) & 0x3FF);
          v91.f32[1] = ((a2->i32[((2 * a4) | 1) / 3] >> (10 * (((2 * a4) | 1) % 3))) & 0x3FF);
          v91.f32[2] = ((a2->i32[(2 * a4 + 2) / 3] >> (10 * ((2 * a4 + 2) % 3))) & 0x3FF);
          v91.f32[3] = ((a2->i32[(2 * a4 + 3) / 3] >> (10 * ((2 * a4 + 3) % 3))) & 0x3FF);
          v93 = 1.0 - *&a7;
          v94 = vmulq_f32(v90, vmulq_f32(this[28], v92));
          v95 = vmulq_f32(v90, vmulq_f32(this[27], v91));
LABEL_76:
          v130 = vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
          v123 = vmul_n_f32(vadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL)), v93);
          goto LABEL_77;
        }

        v181.f32[0] = 1.0 - *&a6;
        v181.i32[1] = LODWORD(a6);
        v181.f32[2] = 1.0 - *&a6;
        v181.i32[3] = LODWORD(a6);
        v27.f32[0] = 1.0 - *&a7;
        v27.i32[1] = LODWORD(a7);
        v182.f32[0] = ((a2->i32[a4 / 3] >> (10 * (a4 % 3))) & 0x3FF);
        v182.f32[1] = ((a2->i32[(a4 + 1) / 3] >> (10 * ((a4 + 1) % 3))) & 0x3FF);
        v182.f32[2] = ((*&v16[4 * (a5 / 3)] >> (10 * (a5 % 3))) & 0x3FF);
        v182.f32[3] = ((*&v16[4 * ((a5 + 1) / 3)] >> (10 * ((a5 + 1) % 3))) & 0x3FF);
        v29 = vmulq_f32(v181, vmulq_f32(this[26], v182));
LABEL_72:
        v126 = vextq_s8(v29, v29, 4uLL).u64[0];
        v29.i32[1] = vextq_s8(v29, v29, 8uLL).i32[1];
        v127 = vmul_f32(v27, vadd_f32(v126, *v29.i8));
        v19.i64[0] = vadd_f32(v127, vdup_lane_s32(v127, 1)).u32[0];
        return *v19.i64;
      }

      if ((v17 - 1793) < 3)
      {
        goto LABEL_70;
      }

      if (v17 != 1796)
      {
        if (v17 != 1797)
        {
          return *v19.i64;
        }

        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if (v17 <= 774)
    {
      if (v17 != 771 && v17 != 773)
      {
        if (v17 == 774)
        {
          *&a9 = 1.0 - *&a6;
          *v39.f32 = vdup_lane_s32(*&a9, 0);
          *&v39.u32[2] = vdup_lane_s32(*&a6, 0);
          v40 = vdup_lane_s32(*&a7, 0);
          *&a7 = 1.0 - *&a7;
          *v41.f32 = vdup_lane_s32(*&a7, 0);
          *&v41.u32[2] = v40;
          *v42.i8 = *a2;
          v42.i64[1] = *v16;
          v43 = vshrq_n_u16(v42, 6uLL);
          v44 = vmovl_high_u16(v43);
          v45 = vdupq_n_s32(0x4B400000u);
          v46 = vorrq_s8(vmovl_u16(*v43.i8), v45);
          v47 = vorrq_s8(v44, v45);
          v48 = vdupq_n_s32(0xCB400000);
          v19 = vmulq_f32(v39, vmulq_f32(this[28], vaddq_f32(v47, v48)));
          v49 = vmulq_f32(v39, vmulq_f32(this[27], vaddq_f32(v46, v48)));
          v39.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
          v49.i64[1] = v19.i64[0];
          v39.i64[1] = vextq_s8(v19, v19, 8uLL).u64[0];
          v50 = vmulq_f32(v41, vaddq_f32(v49, v39));
          *v19.i8 = vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
        }

        return *v19.i64;
      }

      v55.f32[0] = 1.0 - *&a6;
      v55.i32[1] = LODWORD(a6);
      v55.f32[2] = 1.0 - *&a6;
      v55.i32[3] = LODWORD(a6);
      v27.f32[0] = 1.0 - *&a7;
      v27.i32[1] = LODWORD(a7);
      v96.i32[0] = a2->i32[0];
      v96.i32[1] = *v16;
      v56 = vmulq_f32(this[26], vaddq_f32(vorrq_s8(vmovl_u16(vshr_n_u16(v96, 6uLL)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      goto LABEL_71;
    }

    if (v17 != 775 && v17 != 784)
    {
      if (v17 == 785)
      {
        v21 = 1.0 - *&a7;
        *a10.i8 = vshl_u32(vdup_n_s32(a2->u32[1]), 0xFFFFFFECFFFFFFF6);
        v58 = *v16;
        v57 = *(v16 + 1);
        *a13.i8 = vdup_n_s32(v57);
        *a12.i8 = vshl_u32(vdup_n_s32(v58), 0xFFFFFFECFFFFFFF6);
        v15.i32[0] = a2->i32[0];
        v15.i32[1] = a2->i32[0] >> 10;
        *a11.i8 = vshl_u32(*a13.i8, 0xFFFFFFECFFFFFFF6);
        v15.i32[2] = a2->i32[0] >> 20;
        a13.i32[0] = a2->i32[1];
        v59 = vextq_s8(a13, a13, 4uLL);
        v60 = vextq_s8(v59, a10, 0xCuLL);
        v59.i32[0] = v58;
        v61 = vextq_s8(v59, v59, 4uLL);
        v62 = vextq_s8(v61, a12, 0xCuLL);
        v61.i32[0] = v57;
        v63 = vextq_s8(vextq_s8(v61, v61, 4uLL), a11, 0xCuLL);
        v64 = vdupq_lane_s32(*v60.i8, 0);
        v65 = vdupq_lane_s32(*v62.i8, 0);
        v66 = vdupq_lane_s32(*v63.i8, 0);
        v67.i64[0] = 0x300000003;
        v67.i64[1] = 0x300000003;
        v68 = vandq_s8(v63, v67);
        v69 = vandq_s8(v62, v67);
        v70 = vandq_s8(v60, v67);
        v71 = vandq_s8(v15, v67);
        v70.i32[3] = vshrq_n_u32(v64, 0x1EuLL).i32[3];
        v69.i32[3] = vshrq_n_u32(v65, 0x1EuLL).i32[3];
        v68.i32[3] = vshrq_n_u32(v66, 0x1EuLL).i32[3];
        v71.i32[3] = vshrq_n_u32(vdupq_n_s32(*a2), 0x1EuLL).i32[3];
        v72 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v68), xmmword_19CF226A0), *&a6);
        v73 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v69), xmmword_19CF226A0), 1.0 - *&a6);
        v24 = vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v71), xmmword_19CF226A0), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v70), xmmword_19CF226A0), *&a6));
        v25 = vaddq_f32(v73, v72);
        goto LABEL_58;
      }

      return *v19.i64;
    }

    v97 = 1.0 - *&a6;
    v21 = 1.0 - *&a7;
    *a10.i8 = vshl_u32(vdup_n_s32(a2->i32[0]), 0xFFFFFFF6FFFFFFECLL);
    *a12.i8 = vshl_u32(vdup_n_s32(a2->u32[1]), 0xFFFFFFF6FFFFFFECLL);
    v99 = *v16;
    v98 = *(v16 + 1);
    *a13.i8 = vshl_u32(vdup_n_s32(v99), 0xFFFFFFF6FFFFFFECLL);
    *a11.i8 = vshl_u32(vdup_n_s32(v98), 0xFFFFFFF6FFFFFFECLL);
    a10.i32[2] = a2->i32[0];
    a12.i32[2] = a2->i32[1];
    a13.i32[2] = v99;
    a11.i32[2] = v98;
    v100 = vdupq_laneq_s32(a10, 2);
    v101 = vdupq_laneq_s32(a12, 2);
    v102 = vdupq_laneq_s32(a13, 2);
    v103 = vdupq_laneq_s32(a11, 2);
    v104.i64[0] = 0x300000003;
    v104.i64[1] = 0x300000003;
    v105 = vandq_s8(a11, v104);
    v106 = vandq_s8(a13, v104);
    v107 = vandq_s8(a12, v104);
    v108 = vandq_s8(a10, v104);
    v108.i32[3] = vshrq_n_u32(v100, 0x1EuLL).i32[3];
    v107.i32[3] = vshrq_n_u32(v101, 0x1EuLL).i32[3];
    v106.i32[3] = vshrq_n_u32(v102, 0x1EuLL).i32[3];
    v105.i32[3] = vshrq_n_u32(v103, 0x1EuLL).i32[3];
    v75 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v105), xmmword_19CF226A0), *&a6);
    v76 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v106), xmmword_19CF226A0), 1.0 - *&a6);
    v77 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v107), xmmword_19CF226A0), *&a6);
    v78 = vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v108), xmmword_19CF226A0), v97);
    goto LABEL_57;
  }

  if (v17 <= 2304)
  {
    if (v17 <= 2051)
    {
      if ((v17 - 1798) <= 7)
      {
        if (((1 << (v17 - 6)) & 0xCC) != 0)
        {
          goto LABEL_16;
        }

        if (v17 == 1798)
        {
          goto LABEL_69;
        }

        if (v17 == 1799)
        {
          v111 = this[21];
          v112 = this[22];
          v113 = this[24];
          v200 = this[23];
          v201 = v113;
          v198 = v111;
          v199 = v112;
          v114 = CI::bilinear_three_components(a2, v16, &v198, *&a6, *&a7);
LABEL_90:
          *v19.i64 = v114;
          return *v19.i64;
        }
      }

      if ((v17 - 2049) >= 3)
      {
        return *v19.i64;
      }

LABEL_63:
      v55.f32[0] = 1.0 - *&a6;
      v55.i32[1] = LODWORD(a6);
      v55.f32[2] = 1.0 - *&a6;
      v55.i32[3] = LODWORD(a6);
      v27.f32[0] = 1.0 - *&a7;
      v27.i32[1] = LODWORD(a7);
      v115.i32[0] = a2->i32[0];
      v115.i32[1] = *v16;
      v56 = vcvtq_f32_f16(v115);
LABEL_71:
      v29 = vmulq_f32(v55, v56);
      goto LABEL_72;
    }

    if (v17 <= 2054)
    {
      if (v17 != 2053)
      {
        *&a9 = 1.0 - *&a6;
        *v51.f32 = vdup_lane_s32(*&a9, 0);
        *&v51.u32[2] = vdup_lane_s32(*&a6, 0);
        v52 = 1.0 - *&a7;
        v53 = vcvtq_f32_f16(*a2);
        v54 = vcvtq_f32_f16(*v16);
LABEL_74:
        v128 = vmulq_f32(v51, v54);
        v129 = vmulq_f32(v51, v53);
        v130 = vadd_f32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
        v123 = vmul_n_f32(vadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)), v52);
LABEL_77:
        v124 = vmul_n_f32(v130, *&a7);
        goto LABEL_78;
      }

      goto LABEL_63;
    }

    if (v17 == 2055)
    {
      v114 = CI::bilinear_three_components(a2, v16, *&a6, *&a7);
      goto LABEL_90;
    }

    if (v17 != 2056 && v17 != 2060)
    {
      return *v19.i64;
    }

    v74 = 1.0 - *&a6;
    v21 = 1.0 - *&a7;
    v75 = vmulq_n_f32(vcvt_hight_f32_f16(*v16), *&a6);
    v76 = vmulq_n_f32(vcvtq_f32_f16(*v16), 1.0 - *&a6);
    v77 = vmulq_n_f32(vcvt_hight_f32_f16(*a2->i8), *&a6);
    v78 = vmulq_n_f32(vcvtq_f32_f16(*a2), v74);
LABEL_57:
    v24 = vaddq_f32(v78, v77);
    v25 = vaddq_f32(v76, v75);
    goto LABEL_58;
  }

  if (v17 > 2566)
  {
    if (v17 <= 3080)
    {
      if (v17 == 2567)
      {
        *a10.i8 = vshl_u32(vdup_n_s32(a2->i32[0]), 0xFFFFFFF6FFFFFFECLL);
        *a12.i8 = vshl_u32(vdup_n_s32(a2->u32[1]), 0xFFFFFFF6FFFFFFECLL);
        v184 = *v16;
        v183 = *(v16 + 1);
        *a13.i8 = vshl_u32(vdup_n_s32(v184), 0xFFFFFFF6FFFFFFECLL);
        *a11.i8 = vshl_u32(vdup_n_s32(v183), 0xFFFFFFF6FFFFFFECLL);
        a10.i32[2] = a2->i32[0];
        a12.i32[2] = a2->i32[1];
        a13.i32[2] = v184;
        a11.i32[2] = v183;
        v185 = vdupq_laneq_s32(a10, 2);
        v186 = vdupq_laneq_s32(a12, 2);
        v187 = vdupq_laneq_s32(a13, 2);
        v188 = vdupq_laneq_s32(a11, 2);
        v189.i64[0] = 0x300000003;
        v189.i64[1] = 0x300000003;
        v190 = vandq_s8(a11, v189);
        v191 = vandq_s8(a13, v189);
        v192 = vandq_s8(a12, v189);
        v193 = vandq_s8(a10, v189);
        v193.i32[3] = vshrq_n_u32(v185, 0x1EuLL).i32[3];
        v192.i32[3] = vshrq_n_u32(v186, 0x1EuLL).i32[3];
        v191.i32[3] = vshrq_n_u32(v187, 0x1EuLL).i32[3];
        v190.i32[3] = vshrq_n_u32(v188, 0x1EuLL).i32[3];
        v114 = srgb_to_linear(vmulq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v193), xmmword_19CF226A0), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v192), xmmword_19CF226A0), *&a6)), 1.0 - *&a7), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v191), xmmword_19CF226A0), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v190), xmmword_19CF226A0), *&a6)), *&a7)), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)));
        goto LABEL_90;
      }

      if (v17 != 2569)
      {
        if (v17 == 3079)
        {
          *v19.i8 = vshl_u32(vdup_n_s32(a2->i32[0]), 0xFFFFFFF6FFFFFFECLL);
          *a11.i8 = vshl_u32(vdup_n_s32(a2->u32[1]), 0xFFFFFFF6FFFFFFECLL);
          v80 = *v16;
          v79 = *(v16 + 1);
          *a12.i8 = vshl_u32(vdup_n_s32(v80), 0xFFFFFFF6FFFFFFECLL);
          *a10.i8 = vshl_u32(vdup_n_s32(v79), 0xFFFFFFF6FFFFFFECLL);
          v19.i32[2] = a2->i32[0];
          a11.i32[2] = a2->i32[1];
          a12.i32[2] = v80;
          a10.i32[2] = v79;
          v81 = vdupq_laneq_s32(v19, 2);
          v82 = vdupq_laneq_s32(a11, 2);
          v83 = vdupq_laneq_s32(a12, 2);
          v84 = vdupq_laneq_s32(a10, 2);
          v85.i64[0] = 0x300000003;
          v85.i64[1] = 0x300000003;
          v86 = vandq_s8(a10, v85);
          v87 = vandq_s8(a12, v85);
          v88 = vandq_s8(a11, v85);
          v19 = vandq_s8(v19, v85);
          v19.i32[3] = vshrq_n_u32(v81, 0x1EuLL).i32[3];
          v88.i32[3] = vshrq_n_u32(v82, 0x1EuLL).i32[3];
          v87.i32[3] = vshrq_n_u32(v83, 0x1EuLL).i32[3];
          v86.i32[3] = vshrq_n_u32(v84, 0x1EuLL).i32[3];
          v19.i64[0] = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v19), xmmword_19CF226A0), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v88), xmmword_19CF226A0), *&a6)), 1.0 - *&a7), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v87), xmmword_19CF226A0), 1.0 - *&a6), vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(v86), xmmword_19CF226A0), *&a6)), *&a7)), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)).u64[0];
        }

        return *v19.i64;
      }

      goto LABEL_16;
    }

    if (v17 <= 3332)
    {
      if (v17 != 3081)
      {
        if (v17 != 3331)
        {
          return *v19.i64;
        }

        goto LABEL_70;
      }

LABEL_16:
      v31 = this[23];
      v30 = this[24];
      v33 = this[21];
      v32 = this[22];
      v34 = 1.0;
      v35 = 1.0 - *&a6;
      v36 = *a2->i8;
      v37 = vmovl_high_u16(*v16);
      v38 = vmovl_u16(*v16);
LABEL_81:
      v151 = vmovl_high_u16(v36);
      v152 = vdupq_n_s32(0x4B400000u);
      v153 = vorrq_s8(vmovl_u16(*v36.i8), v152);
      v154 = vorrq_s8(v151, v152);
      v155 = vorrq_s8(v38, v152);
      v156 = vorrq_s8(v37, v152);
      v157 = vdupq_n_s32(0xCB400000);
      v158 = v34 - *&a7;
      v109 = vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(v31, vaddq_f32(v155, v157)), v35), vmulq_n_f32(vmulq_f32(v30, vaddq_f32(v156, v157)), *&a6)), *&a7);
      v110 = vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(v33, vaddq_f32(v153, v157)), v35), vmulq_n_f32(vmulq_f32(v32, vaddq_f32(v154, v157)), *&a6)), v158);
      goto LABEL_82;
    }

    if (v17 == 3333)
    {
LABEL_70:
      v55.f32[0] = 1.0 - *&a6;
      v55.i32[1] = LODWORD(a6);
      v55.f32[2] = 1.0 - *&a6;
      v55.i32[3] = LODWORD(a6);
      v27.f32[0] = 1.0 - *&a7;
      v27.i32[1] = LODWORD(a7);
      v125.i32[0] = a2->i32[0];
      v125.i32[1] = *v16;
      v56 = vmulq_f32(this[18], vaddq_f32(vorrq_s8(vmovl_u16(v125), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      goto LABEL_71;
    }

    if (v17 != 3334)
    {
      return *v19.i64;
    }

LABEL_69:
    *a11.i32 = 1.0 - *&a6;
    *v116.f32 = vdup_lane_s32(*a11.i8, 0);
    *&v116.u32[2] = vdup_lane_s32(*&a6, 0);
    v117 = vdupq_n_s32(0x4B400000u);
    v118 = vorrq_s8(vmovl_u16(*a2), v117);
    v119 = vorrq_s8(vmovl_u16(*v16), v117);
    v120 = vdupq_n_s32(0xCB400000);
    v121 = vmulq_f32(v116, vmulq_f32(this[20], vaddq_f32(v119, v120)));
    v122 = vmulq_f32(v116, vmulq_f32(this[19], vaddq_f32(v118, v120)));
    v123 = vmul_n_f32(vadd_f32(*v122.i8, *&vextq_s8(v122, v122, 8uLL)), 1.0 - *&a7);
    v124 = vmul_n_f32(vadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL)), *&a7);
LABEL_78:
    *v19.i8 = vadd_f32(v123, v124);
    return *v19.i64;
  }

  if (v17 <= 2309)
  {
    if ((v17 - 2305) >= 3)
    {
      if (v17 == 2308)
      {
LABEL_73:
        *&a9 = 1.0 - *&a6;
        *v51.f32 = vdup_lane_s32(*&a9, 0);
        *&v51.u32[2] = vdup_lane_s32(*&a6, 0);
        v52 = 1.0 - *&a7;
        v53 = *a2->i8;
        v54 = *v16;
        goto LABEL_74;
      }

      if (v17 != 2309)
      {
        return *v19.i64;
      }
    }

    v55.f32[0] = 1.0 - *&a6;
    v55.i32[1] = LODWORD(a6);
    v55.f32[2] = 1.0 - *&a6;
    v55.i32[3] = LODWORD(a6);
    v27.f32[0] = 1.0 - *&a7;
    v27.i32[1] = LODWORD(a7);
    *v56.f32 = *a2;
    v56.i64[1] = *v16;
    goto LABEL_71;
  }

  v20 = v17 - 2310;
  if (v20 > 7)
  {
    return *v19.i64;
  }

  if (((1 << v20) & 0xCC) != 0)
  {
    v21 = 1.0 - *&a7;
    v22 = vmulq_n_f32(*(v16 + 1), *&a6);
    v23 = vmulq_n_f32(*v16, 1.0 - *&a6);
    v24 = vaddq_f32(vmulq_n_f32(*a2->i8, 1.0 - *&a6), vmulq_n_f32(*a2[2].i8, *&a6));
    v25 = vaddq_f32(v23, v22);
LABEL_58:
    v109 = vmulq_n_f32(v25, *&a7);
    v110 = vmulq_n_f32(v24, v21);
LABEL_82:
    v19.i64[0] = vaddq_f32(v110, v109).u64[0];
    return *v19.i64;
  }

  if (!v20)
  {
    goto LABEL_73;
  }

  if (v20 == 1)
  {
    v114 = CI::bilinear_three_components(a2, v16, *&a6, *&a7);
    goto LABEL_90;
  }

  return *v19.i64;
}

double CI::BitmapSampler::read(CI::BitmapSampler *this, unsigned __int8 *a2, int a3, double a4, float32x4_t a5)
{
  v5 = *(this + 26);
  if ((v5 - 1285) >= 2)
  {
    a2 += *(this + 15) * a3;
  }

  _Q0 = xmmword_19CF22690;
  if (v5 > 1797)
  {
    if (v5 > 2304)
    {
      if (v5 <= 2566)
      {
        if (v5 > 2309)
        {
          v7 = v5 - 2310;
          if (v7 > 7)
          {
            return *_Q0.i64;
          }

          if (((1 << v7) & 0xCC) != 0)
          {
            _Q0 = *a2;
            return *_Q0.i64;
          }

          if (v7)
          {
            if (v7 == 1)
            {
              __asm { FMOV            V0.4S, #1.0 }

              _Q0.i64[0] = *a2;
            }

            return *_Q0.i64;
          }

LABEL_74:
          _Q0.i64[0] = *a2;
          return *_Q0.i64;
        }

        if ((v5 - 2305) >= 3)
        {
          if (v5 == 2308)
          {
            goto LABEL_74;
          }

          if (v5 != 2309)
          {
            return *_Q0.i64;
          }
        }

        _Q0.i32[0] = *a2;
LABEL_72:
        _Q0.i32[1] = 0;
        return *_Q0.i64;
      }

      if (v5 <= 3080)
      {
        if (v5 == 2567)
        {
          *a5.f32 = vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF6FFFFFFECLL), 0x300000003));
          a5.f32[2] = (*a2 & 0x3FF);
          *_Q0.i64 = srgb_to_linear(vmulq_f32(vaddq_f32(vdivq_f32(a5, vdupq_n_s32(0x447FC000u)), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)));
          return *_Q0.i64;
        }

        if (v5 != 2569)
        {
          if (v5 == 3079)
          {
            *a5.f32 = vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF6FFFFFFECLL), 0x300000003));
            a5.f32[2] = (*a2 & 0x3FF);
            _Q0.i64[0] = vmulq_f32(vaddq_f32(vdivq_f32(a5, vdupq_n_s32(0x447FC000u)), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)).u64[0];
          }

          return *_Q0.i64;
        }

        goto LABEL_16;
      }

      if (v5 <= 3332)
      {
        if (v5 != 3081)
        {
          if (v5 != 3331)
          {
            return *_Q0.i64;
          }

          goto LABEL_70;
        }

        goto LABEL_16;
      }

      if (v5 != 3333)
      {
        if (v5 != 3334)
        {
          return *_Q0.i64;
        }

LABEL_69:
        v26.i32[0] = *a2;
        v26.i32[1] = *(a2 + 1);
        v11 = vadd_f32(vorr_s8(v26, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000));
        v12 = *(this + 272);
        goto LABEL_76;
      }

      goto LABEL_70;
    }

    if (v5 > 2051)
    {
      if (v5 > 2054)
      {
        if (v5 != 2055)
        {
          if (v5 == 2056 || v5 == 2060)
          {
            _Q0.i64[0] = vcvtq_f32_f16(*a2).u64[0];
          }

          return *_Q0.i64;
        }

        _Q0.i32[0] = *a2;
        v20 = vcvtq_f32_f16(*_Q0.f32).u64[0];
        _H0 = *(a2 + 2);
        __asm { FCVT            S2, H0 }

LABEL_87:
        __asm { FMOV            V0.4S, #1.0 }

        *_Q0.f32 = v20;
        return *_Q0.i64;
      }

      if (v5 != 2053)
      {
        _Q0.i32[0] = *a2;
        _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
        return *_Q0.i64;
      }
    }

    else
    {
      if ((v5 - 1798) <= 7)
      {
        if (((1 << (v5 - 6)) & 0xCC) != 0)
        {
LABEL_16:
          _Q0 = vaddq_f32(vorrq_s8(vmovl_u16(*a2), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000));
          v9 = *(this + 18);
LABEL_79:
          _Q0.i64[0] = vmulq_f32(v9, _Q0).u64[0];
          return *_Q0.i64;
        }

        if (v5 == 1798)
        {
          goto LABEL_69;
        }

        if (v5 == 1799)
        {
          v19.i32[0] = *a2;
          v19.i32[1] = *(a2 + 1);
          v20 = vmul_f32(*(this + 272), vadd_f32(vorr_s8(v19, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)));
          goto LABEL_87;
        }
      }

      if ((v5 - 2049) >= 3)
      {
        return *_Q0.i64;
      }
    }

    _H0 = *a2;
    __asm { FCVT            S0, H0 }

    goto LABEL_72;
  }

  if (v5 > 770)
  {
    if (v5 <= 1284)
    {
      if (v5 <= 774)
      {
        if (v5 == 771 || v5 == 773)
        {
          _Q0.f32[0] = (*a2 >> 6);
          v8 = 1023.0;
LABEL_71:
          _Q0.f32[0] = _Q0.f32[0] / v8;
          goto LABEL_72;
        }

        if (v5 != 774)
        {
          return *_Q0.i64;
        }

        v10.i32[0] = *a2;
        v10.i32[1] = *(a2 + 1);
        v11 = vadd_f32(vsra_n_u32(vdup_n_s32(0x4B400000u), v10, 6uLL), vdup_n_s32(0xCB400000));
        v12 = *(this + 400);
LABEL_76:
        *_Q0.f32 = vmul_f32(v12, v11);
        return *_Q0.i64;
      }

      if (v5 == 775 || v5 == 784)
      {
        *_Q0.f32 = vshl_u32(vdup_n_s32(*a2), 0xFFFFFFF6FFFFFFECLL);
        _Q0.i32[2] = *a2;
        v16 = vdupq_laneq_s32(_Q0, 2);
        v17.i64[0] = 0x300000003;
        v17.i64[1] = 0x300000003;
        v18 = vandq_s8(_Q0, v17);
        v18.i32[3] = vshrq_n_u32(v16, 0x1EuLL).i32[3];
        _Q0 = vcvtq_f32_u32(v18);
      }

      else
      {
        if (v5 != 785)
        {
          return *_Q0.i64;
        }

        a5.i32[0] = *a2;
        a5.i32[1] = *a2 >> 10;
        a5.i32[2] = *a2 >> 20;
        v13.i64[0] = 0x300000003;
        v13.i64[1] = 0x300000003;
        v14 = vandq_s8(a5, v13);
        v14.i32[3] = vshrq_n_u32(vdupq_n_s32(*a2), 0x1EuLL).i32[3];
        _Q0 = vcvtq_f32_u32(v14);
      }

      v15 = xmmword_19CF226C0;
    }

    else
    {
      if (v5 > 1792)
      {
        if ((v5 - 1793) >= 3)
        {
          if (v5 != 1796)
          {
            if (v5 != 1797)
            {
              return *_Q0.i64;
            }

            goto LABEL_70;
          }

          goto LABEL_69;
        }

LABEL_70:
        _Q0.i16[0] = *a2;
        _Q0.f32[0] = _Q0.u32[0];
        v8 = 65535.0;
        goto LABEL_71;
      }

      if (v5 == 1285)
      {
        _Q0.f32[0] = ((*&a2[4 * (a3 / 3)] >> (10 * (a3 % 3))) & 0x3FF) / 1023.0;
        _Q0.i32[1] = 0;
        return *_Q0.i64;
      }

      if (v5 != 1286)
      {
        return *_Q0.i64;
      }

      _Q0.f32[0] = ((*&a2[4 * (2 * a3 / 3)] >> (10 * (2 * a3 % 3))) & 0x3FF);
      _Q0.f32[1] = ((*&a2[4 * (((2 * a3) | 1) / 3)] >> (10 * (((2 * a3) | 1) % 3))) & 0x3FF);
      _Q0.i32[2] = 0;
      _Q0.i32[3] = 1.0;
      v15 = xmmword_19CF226B0;
    }

    _Q0.i64[0] = vdivq_f32(_Q0, v15).u64[0];
    return *_Q0.i64;
  }

  switch(v5)
  {
    case 257:
      _Q0.i64[0] = 0;
      return *_Q0.i64;
    case 258:
    case 259:
    case 261:
      _Q0.i8[0] = *a2;
      _Q0.f32[0] = _Q0.u32[0];
      v8 = 255.0;
      goto LABEL_71;
    case 260:
    case 262:
      v27.i32[0] = *a2;
      v27.i32[1] = a2[1];
      v11 = vadd_f32(vorr_s8(v27, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000));
      v12 = *(this + 144);
      goto LABEL_76;
    case 263:
      v30.i32[0] = *a2;
      v30.i32[1] = a2[1];
      v20 = vmul_f32(*(this + 144), vadd_f32(vorr_s8(v30, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)));
      goto LABEL_87;
    case 264:
    case 268:
      _Q0.i32[0] = *a2;
      _Q0 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*_Q0.f32)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000));
      v9 = *(this + 10);
      goto LABEL_79;
    case 265:
    case 269:
      goto LABEL_82;
    case 266:
    case 270:
      _Q0.i32[0] = *a2;
      _Q0 = vrev64q_s32(vmulq_f32(*(this + 10), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*_Q0.f32)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000))));
      _Q0.i64[0] = vextq_s8(_Q0, _Q0, 0xCuLL).u64[0];
      return *_Q0.i64;
    case 267:
    case 271:
      _Q0.i32[0] = *a2;
      _Q0 = vrev64q_s32(vmulq_f32(*(this + 10), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*_Q0.f32)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000))));
      _Q0.i64[0] = vextq_s8(_Q0, _Q0, 8uLL).u64[0];
      return *_Q0.i64;
    default:
      if (v5 == 535)
      {
LABEL_82:
        _Q0.i32[0] = *a2;
        _Q0 = vmulq_f32(*(this + 10), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*_Q0.f32)), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
        _Q0.i64[0] = vextq_s8(_Q0, _Q0, 4uLL).u64[0];
      }

      break;
  }

  return *_Q0.i64;
}

double srgb_to_linear(float32x4_t a1)
{
  v1 = vabsq_f32(a1);
  v2.i64[0] = 0x8000000080000000;
  v2.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v10 = vbslq_s8(vorrq_s8(vcltzq_f32(a1), vcgtzq_f32(a1)), vorrq_s8(vandq_s8(a1, v2), _Q3), 0);
  v11 = vmulq_f32(a1, vdupq_n_s32(0x3D9E8391u));
  v8 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v1);
  v8.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v1), v11, vmulq_f32(v10, _simd_pow_f4(v8, xmmword_19CF226D0))).u64[0];
  return result;
}

float CI::bilinear_single_component(_WORD *a1, _WORD *a2, float32_t a3, double a4, float32x4_t a5)
{
  v5.f32[0] = 1.0 - a3;
  v5.f32[1] = a3;
  v5.f32[2] = 1.0 - a3;
  v5.f32[3] = a3;
  *v6.i32 = 1.0 - *&a4;
  v6.i32[1] = LODWORD(a4);
  LOWORD(a4) = *a1;
  WORD1(a4) = *a2;
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vmulq_f32(v5, vmulq_f32(vaddq_f32(vorrq_s8(vandq_s8(vmovl_u16(vzip1_s8(*&a4, v6)), v7), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)), a5));
  v9 = vextq_s8(v8, v8, 4uLL).u64[0];
  v8.i32[1] = vextq_s8(v8, v8, 8uLL).i32[1];
  return vaddv_f32(vmul_f32(v6, vadd_f32(v9, *v8.i8)));
}

double CI::bilinear_three_components(uint64_t a1, uint64_t a2, float32x4_t *a3, float a4, float a5)
{
  v5.i32[0] = *a1;
  v7 = vmovl_u8(v5);
  v8.i8[0] = v7.i8[0];
  v8.i8[1] = v7.i8[2];
  v8.i8[2] = v7.i8[4];
  v8.i8[3] = v7.i8[6];
  v8.i32[1] = *(a1 + 4);
  v6.i32[0] = *a2;
  v9 = vmovl_u8(v6);
  v7.i8[0] = v9.i8[0];
  v7.i8[1] = v9.i8[2];
  v7.i8[2] = v9.i8[4];
  v7.i8[3] = v9.i8[6];
  v7.i32[1] = *(a2 + 4);
  v10 = vmovl_u8(*v7.i8);
  v11 = vmovl_high_u16(v10);
  v12 = vmovl_u8(v8);
  v13 = vmovl_high_u16(v12);
  v14 = vdupq_n_s32(0x4B400000u);
  v15 = vorrq_s8(vmovl_u16(*v12.i8), v14);
  v16 = vorrq_s8(v13, v14);
  v17 = vorrq_s8(vmovl_u16(*v10.i8), v14);
  v18 = vorrq_s8(v11, v14);
  v19 = vdupq_n_s32(0xCB400000);
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(*a3, vaddq_f32(v15, v19)), 1.0 - a4), vmulq_n_f32(vmulq_f32(a3[1], vaddq_f32(v16, v19)), a4)), 1.0 - a5), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(a3[2], vaddq_f32(v17, v19)), 1.0 - a4), vmulq_n_f32(vmulq_f32(a3[3], vaddq_f32(v18, v19)), a4)), a5)).u64[0];
  return result;
}

double CI::bilinear_three_components(int32x2_t *a1, int32x2_t *a2, float32x4_t *a3, float a4, float a5)
{
  v5 = vdupq_n_s32(0x4B400000u);
  v6 = vorrq_s8(vmovl_u16(vzip2_s32(*a1, 0)), v5);
  v7 = vorrq_s8(vmovl_u16(*a1), v5);
  v8 = vorrq_s8(vmovl_u16(vzip2_s32(*a2, 0)), v5);
  v9 = vorrq_s8(vmovl_u16(*a2), v5);
  v10 = vdupq_n_s32(0xCB400000);
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(*a3, vaddq_f32(v7, v10)), 1.0 - a4), vmulq_n_f32(vmulq_f32(a3[1], vaddq_f32(v6, v10)), a4)), 1.0 - a5), vmulq_n_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(a3[2], vaddq_f32(v9, v10)), 1.0 - a4), vmulq_n_f32(vmulq_f32(a3[3], vaddq_f32(v8, v10)), a4)), a5)).u64[0];
  return result;
}

double CI::bilinear_three_components(float32x4_t *a1, float32x4_t *a2, float a3, float a4)
{
  v4 = *a1;
  v4.i64[0] = *a1 >> 32;
  v5 = *a2;
  v5.i64[0] = *a2 >> 32;
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(vmulq_n_f32(*a1, 1.0 - a3), vmulq_n_f32(v4, a3)), 1.0 - a4), vmulq_n_f32(vaddq_f32(vmulq_n_f32(*a2, 1.0 - a3), vmulq_n_f32(v5, a3)), a4)).u64[0];
  return result;
}

double CI::sw_fwidth(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  v6 = vadd_f32(v5, 1065353216);
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v11.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  *v14.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v6, v11, v7, v10, v9, v8, v12, v13);
  v43 = v14;
  *v14.f32 = vadd_f32(v5, 0x80000000BF800000);
  LODWORD(v15) = *(v4 + 24);
  v16.i32[0] = *(v4 + 36);
  *v17.i32 = vmuls_lane_f32(*(v4 + 32), *v14.f32, 1);
  *&v18 = *v17.i32 + (v14.f32[0] * *(v4 + 28));
  v14.f32[0] = *&v15 + (vmuls_lane_f32(*(v4 + 20), *v14.f32, 1) + (v14.f32[0] * *(v4 + 16)));
  *v19.f64 = *v16.i32 + *&v18;
  v14.f32[1] = *v16.i32 + *&v18;
  *v22.i64 = CI::BitmapSampler::read(*(v4 + 8), *v14.i64, v19, v15, v18, v17, v16, v20, v21);
  v42 = v22;
  *v22.f32 = vadd_f32(v5, 0x3F80000000000000);
  LODWORD(v23) = *(v4 + 24);
  v24.i32[0] = *(v4 + 36);
  *v25.i32 = vmuls_lane_f32(*(v4 + 32), *v22.f32, 1);
  *&v26 = *v25.i32 + (v22.f32[0] * *(v4 + 28));
  v22.f32[0] = *&v23 + (vmuls_lane_f32(*(v4 + 20), *v22.f32, 1) + (v22.f32[0] * *(v4 + 16)));
  *v27.f64 = *v24.i32 + *&v26;
  v22.f32[1] = *v24.i32 + *&v26;
  *v30.i64 = CI::BitmapSampler::read(*(v4 + 8), *v22.i64, v27, v23, v26, v25, v24, v28, v29);
  v41 = v30;
  *v30.f32 = vadd_f32(v5, 0xBF80000080000000);
  LODWORD(v31) = *(v4 + 24);
  v32.i32[0] = *(v4 + 36);
  *v33.i32 = vmuls_lane_f32(*(v4 + 32), *v30.f32, 1);
  *&v34 = *v33.i32 + (v30.f32[0] * *(v4 + 28));
  v30.f32[0] = *&v31 + (vmuls_lane_f32(*(v4 + 20), *v30.f32, 1) + (v30.f32[0] * *(v4 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.f32[1] = *v32.i32 + *&v34;
  *v38.i64 = CI::BitmapSampler::read(*(v4 + 8), *v30.i64, v35, v31, v34, v33, v32, v36, v37);
  v39.i64[0] = 0x3F0000003F000000;
  v39.i64[1] = 0x3F0000003F000000;
  *&result = vaddq_f32(vabsq_f32(vmulq_f32(vsubq_f32(v43, v42), v39)), vabsq_f32(vmulq_f32(vsubq_f32(v41, v38), v39))).u64[0];
  return result;
}

uint64_t CI::sw_dfdxdfdyChannel(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7 = *CI::getDC(a1);
  v8 = vadd_f32(v7, 1065353216);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), v8, 1);
  *&v12 = *v11.i32 + (v8.f32[0] * *(v5 + 28));
  v8.f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), v8, 1) + (v8.f32[0] * *(v5 + 16)));
  *v13.f64 = *v10.i32 + *&v12;
  v8.f32[1] = *v10.i32 + *&v12;
  *&v16 = CI::BitmapSampler::read(*(v5 + 8), *&v8, v13, v9, v12, v11, v10, v14, v15);
  v48 = v16;
  *&v16 = vadd_f32(v7, 0x80000000BF800000);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), *&v16, 1);
  *&v20 = *v19.i32 + (*&v16 * *(v5 + 28));
  *&v16 = *&v17 + (vmuls_lane_f32(*(v5 + 20), *&v16, 1) + (*&v16 * *(v5 + 16)));
  *v21.f64 = *v18.i32 + *&v20;
  *(&v16 + 1) = *v18.i32 + *&v20;
  *&v24 = CI::BitmapSampler::read(*(v5 + 8), *&v16, v21, v17, v20, v19, v18, v22, v23);
  v47 = v24;
  *&v24 = vadd_f32(v7, 0x3F80000000000000);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), *&v24, 1);
  *&v28 = *v27.i32 + (*&v24 * *(v5 + 28));
  *&v24 = *&v25 + (vmuls_lane_f32(*(v5 + 20), *&v24, 1) + (*&v24 * *(v5 + 16)));
  *v29.f64 = *v26.i32 + *&v28;
  *(&v24 + 1) = *v26.i32 + *&v28;
  *&v32 = CI::BitmapSampler::read(*(v5 + 8), *&v24, v29, v25, v28, v27, v26, v30, v31);
  v46 = v32;
  *&v32 = vadd_f32(v7, 0xBF80000080000000);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), *&v32, 1);
  *&v36 = *v35.i32 + (*&v32 * *(v5 + 28));
  *&v32 = *&v33 + (vmuls_lane_f32(*(v5 + 20), *&v32, 1) + (*&v32 * *(v5 + 16)));
  *v37.f64 = *v34.i32 + *&v36;
  *(&v32 + 1) = *v34.i32 + *&v36;
  *&v40 = CI::BitmapSampler::read(*(v5 + 8), *&v32, v37, v33, v36, v35, v34, v38, v39);
  if (v6 >= 4)
  {
    CI::sw_dfdxdfdyChannel();
  }

  v52 = v48;
  v41 = *(&v52 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
  v51 = v47;
  v42 = v41 - *(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
  v50 = v46;
  v43 = *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
  v49 = v40;
  *&v44 = v42 * 0.5;
  *(&v44 + 1) = (v43 - *(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)))) * 0.5;
  return v44;
}

double CI::sw_glassHighlight(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 112);
  v16 = *(v4 + 104);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (v15 == 5)
  {
    v18 = v17;
  }

  v19 = a4 + 80 * v5;
  v86 = *v9;
  v87 = *v13;
  v20 = *(a2 + (v14 << 6));
  v85 = *v18;
  DC = CI::getDC(a1);
  *&v22 = *DC;
  v82 = v22;
  v23 = CI::getDC(DC);
  LODWORD(v24) = *(v19 + 24);
  v25.i32[0] = *(v19 + 36);
  *v26.i32 = vmuls_lane_f32(*(v19 + 32), *v23, 1);
  *&v27 = *v26.i32 + (COERCE_FLOAT(*v23) * *(v19 + 28));
  *&v28 = *&v24 + (vmuls_lane_f32(*(v19 + 20), *v23, 1) + (COERCE_FLOAT(*v23) * *(v19 + 16)));
  *v29.f64 = *v25.i32 + *&v27;
  *(&v28 + 1) = *v25.i32 + *&v27;
  *v32.i64 = CI::BitmapSampler::read(*(v19 + 8), v28, v29, v24, v27, v26, v25, v30, v31);
  _Q4 = v87;
  HIDWORD(v34) = DWORD1(v86);
  _D2 = COERCE_DOUBLE(vext_s8(*v87.i8, *&vextq_s8(_Q4, _Q4, 8uLL), 4uLL));
  v84 = *&_D2;
  *&_D2 = *v32.i32 - v20;
  __asm { FMLS            S12, S2, V4.S[3] }

  _Q1 = vextq_s8(v32, v32, 8uLL);
  *v32.i8 = vext_s8(*v32.i8, *&_Q1.f64[0], 4uLL);
  __asm { FMOV            V1.2S, #-1.0 }

  v42 = vneg_f32(vadd_f32(vadd_f32(*v32.i8, *v32.i8), *&_Q1.f64[0]));
  v83 = (1.0 - *v87.i32) + ((1.0 - fmaxf(fminf(_S12 / *&v86, 1.0), 0.0)) * *v87.i32);
  v32.i32[0] = *(v19 + 16);
  LODWORD(_Q1.f64[0]) = *(v19 + 20);
  v43.i64[1] = *(&v82 + 1);
  LODWORD(v34) = *(v19 + 24);
  _Q4.i32[0] = *(v19 + 28);
  v44.f32[0] = *&v34 + (vmuls_lane_f32(*_Q1.f64, *&v82, 1) + (*&v82 * *v32.i32));
  LODWORD(_D2) = *(v19 + 32);
  v45.i32[0] = *(v19 + 36);
  v44.f32[1] = *v45.i32 + (vmuls_lane_f32(*&_D2, *&v82, 1) + (*&v82 * *_Q4.i32));
  v46 = vadd_f32(*&v82, 1065353216);
  *v43.i32 = *&v34 + (vmuls_lane_f32(*_Q1.f64, v46, 1) + (v46.f32[0] * *v32.i32));
  *&v43.i32[1] = *v45.i32 + (vmuls_lane_f32(*&_D2, v46, 1) + (v46.f32[0] * *_Q4.i32));
  v47 = vsub_f32(*v43.i8, v44);
  *v48.i8 = vadd_f32(*&v82, 0x3F80000000000000);
  *v32.i32 = *&v34 + (vmuls_lane_f32(*_Q1.f64, *v48.i8, 1) + (*v48.i32 * *v32.i32));
  *_Q1.f64 = *v45.i32 + (vmuls_lane_f32(*&_D2, *v48.i8, 1) + (*v48.i32 * *_Q4.i32));
  v32.i32[1] = LODWORD(_Q1.f64[0]);
  *v87.i8 = v44;
  v49 = vsub_f32(*v32.i8, v44);
  *&v82 = CI::BitmapSampler::read(*(v19 + 8), COERCE_DOUBLE(vsub_f32(v44, v47)), _Q1, _D2, v34, _Q4, v45, v48, v43);
  v81 = CI::BitmapSampler::read(*(v19 + 8), COERCE_DOUBLE(vadd_f32(*v87.i8, v47)), v50, v51, v52, v53, v54, v55, v56);
  v80 = CI::BitmapSampler::read(*(v19 + 8), COERCE_DOUBLE(vsub_f32(*v87.i8, v49)), v57, v58, v59, v60, v61, v62, v63);
  v71 = vaddv_f32(vabs_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(vzip1_s32(*&v81, COERCE_INT32X2_T(CI::BitmapSampler::read(*(v19 + 8), COERCE_DOUBLE(vadd_f32(*v87.i8, v49)), v64, v65, v66, v67, v68, v69, v70))), vzip1_s32(*&v82, *&v80))), *&v87.i32[3] * 0.5))));
  v72 = 2.0;
  if (v71 <= 2.0)
  {
    v72 = v71;
  }

  if (v71 >= 0.0001)
  {
    v73 = v72;
  }

  else
  {
    v73 = 0.0001;
  }

  v74 = v73 * 0.8333333;
  _V4.S[3] = HIDWORD(v86);
  v76 = fmaxf(fminf((vaddv_f32(vmul_f32(v84, v42)) - *(&v86 + 2)) / fmaxf(1.0 - *(&v86 + 2), 0.0001), 1.0), 0.0);
  _S3 = 1.0 - v76;
  __asm { FMLA            S10, S3, V4.S[3] }

  *&result = vmulq_n_f32(v85, v83 * ((v76 / fmaxf(_S10, 0.0001)) * (fmaxf(fminf(((*&v86 - _S12) / v74) + 0.5, 1.0), 0.0) * fmaxf(fminf((_S12 / v74) + 0.5, 1.0), 0.0)))).u64[0];
  return result;
}

double CI::sw_glassHighlightFromAlpha(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 104);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v4 + 112) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v4 + 136);
  v20 = *(v4 + 128);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (v19 == 5)
  {
    v22 = v21;
  }

  v23 = a4 + 80 * v5;
  v99 = *v13;
  v100 = *v9;
  v24 = *(a2 + (v14 << 6));
  v97 = *v18;
  v25 = *v22;
  DC = CI::getDC(a1);
  *&v27 = *DC;
  v98 = v27;
  v28 = CI::getDC(DC);
  LODWORD(v29) = *(v23 + 24);
  v30.i32[0] = *(v23 + 36);
  *v31.i32 = vmuls_lane_f32(*(v23 + 32), *v28, 1);
  *&v32 = *v31.i32 + (COERCE_FLOAT(*v28) * *(v23 + 28));
  *&v33 = *&v29 + (vmuls_lane_f32(*(v23 + 20), *v28, 1) + (COERCE_FLOAT(*v28) * *(v23 + 16)));
  *v34.f64 = *v30.i32 + *&v32;
  *(&v33 + 1) = *v30.i32 + *&v32;
  CI::BitmapSampler::read(*(v23 + 8), v33, v34, v29, v32, v31, v30, v35, v36);
  v37 = v99;
  HIDWORD(v38) = DWORD1(v100);
  _S11 = v99.i32[3];
  _S0 = v40 - v24;
  __asm { FMLA            S9, S0, V1.S[3] }

  v47 = *(v23 + 16);
  LODWORD(v37.f64[0]) = *(v23 + 20);
  v48.i64[1] = *(&v98 + 1);
  LODWORD(v49) = *(v23 + 24);
  v50.i32[0] = *(v23 + 28);
  v51.f32[0] = *&v49 + (vmuls_lane_f32(*v37.f64, *&v98, 1) + (*&v98 * v47));
  LODWORD(v38) = *(v23 + 32);
  v52.i32[0] = *(v23 + 36);
  v51.f32[1] = *v52.i32 + (vmuls_lane_f32(*&v38, *&v98, 1) + (*&v98 * *v50.i32));
  v53 = vadd_f32(*&v98, 1065353216);
  *v48.i32 = *&v49 + (vmuls_lane_f32(*v37.f64, v53, 1) + (v53.f32[0] * v47));
  *&v48.i32[1] = *v52.i32 + (vmuls_lane_f32(*&v38, v53, 1) + (v53.f32[0] * *v50.i32));
  v54 = vsub_f32(*v48.i8, v51);
  *v55.i8 = vadd_f32(*&v98, 0x3F80000000000000);
  v56.f32[0] = *&v49 + (vmuls_lane_f32(*v37.f64, *v55.i8, 1) + (*v55.i32 * v47));
  *v37.f64 = *v52.i32 + (vmuls_lane_f32(*&v38, *v55.i8, 1) + (*v55.i32 * *v50.i32));
  v56.i32[1] = LODWORD(v37.f64[0]);
  v101 = v51;
  v57 = vsub_f32(v56, v51);
  *v58.i64 = CI::BitmapSampler::read(*(v23 + 8), COERCE_DOUBLE(vsub_f32(v51, v54)), v37, v38, v49, v50, v52, v55, v48);
  v96 = v58;
  *v66.i64 = CI::BitmapSampler::read(*(v23 + 8), COERCE_DOUBLE(vadd_f32(v101, v54)), v59, v60, v61, v62, v63, v64, v65);
  v95 = v66;
  *v74.i64 = CI::BitmapSampler::read(*(v23 + 8), COERCE_DOUBLE(vsub_f32(v101, v57)), v67, v68, v69, v70, v71, v72, v73);
  v94 = v74;
  *v82.i64 = CI::BitmapSampler::read(*(v23 + 8), COERCE_DOUBLE(vadd_f32(v101, v57)), v75, v76, v77, v78, v79, v80, v81);
  v83 = vaddv_f32(vabs_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(vzip2_s32(*&vextq_s8(v95, v95, 8uLL), *&vextq_s8(v82, v82, 8uLL)), vzip2_s32(*&vextq_s8(v96, v96, 8uLL), *&vextq_s8(v94, v94, 8uLL)))), *&v99.i32[3] * 0.5))));
  if (v83 <= 2.0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 2.0;
  }

  if (v83 >= 0.0001)
  {
    v85 = v84;
  }

  else
  {
    v85 = 0.0001;
  }

  v86 = v85 * 0.8333333;
  v87 = fmaxf(fminf(((*&v100 - _S9) / v86) + 0.5, 1.0), 0.0);
  v88 = v87 * fmaxf(fminf((_S9 / v86) + 0.5, 1.0), 0.0);
  if (*(&v100 + 1) == 0.0)
  {
    v88 = v87;
  }

  v89 = vsub_f32(*&v98, v25);
  v90 = vmul_f32(v89, v89);
  v90.i32[0] = vadd_f32(v90, vdup_lane_s32(v90, 1)).u32[0];
  v91 = vrsqrte_f32(v90.u32[0]);
  v89.f32[0] = fmaxf(fminf((vaddv_f32(vmul_f32(*&vextq_s8(v99, v99, 4uLL), vmul_n_f32(v89, vmul_f32(v91, vrsqrts_f32(v90.u32[0], vmul_f32(v91, v91))).f32[0]))) - *(&v100 + 2)) / fmaxf(1.0 - *(&v100 + 2), 0.0001), 1.0), 0.0);
  v92 = *(&v100 + 3) * (1.0 - v89.f32[0]) + 1.0;
  *&result = vmulq_n_f32(v97, ((1.0 - *v99.i32) + ((1.0 - fmaxf(fminf(_S9 / *&v100, 1.0), 0.0)) * *v99.i32)) * (v88 * (v89.f32[0] / fmaxf(v92, 0.0001)))).u64[0];
  return result;
}

double CI::sw_glow(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 80);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 88) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = *(a2 + (*(v4 + 32) << 6));
  v11 = *(a2 + (*(v4 + 56) << 6));
  v72 = *v8;
  v12 = *(a2 + (*(v4 + 104) << 6));
  v13 = *(a2 + (*(v4 + 128) << 6));
  DC = CI::getDC(a1);
  *&v15 = *DC;
  v71 = v15;
  v16 = CI::getDC(DC);
  LODWORD(v17) = *(v9 + 24);
  v18.i32[0] = *(v9 + 36);
  *v19.i32 = vmuls_lane_f32(*(v9 + 32), *v16, 1);
  *&v20 = *v19.i32 + (COERCE_FLOAT(*v16) * *(v9 + 28));
  *&v21 = *&v17 + (vmuls_lane_f32(*(v9 + 20), *v16, 1) + (COERCE_FLOAT(*v16) * *(v9 + 16)));
  *v22.f64 = *v18.i32 + *&v20;
  *(&v21 + 1) = *v18.i32 + *&v20;
  v25 = CI::BitmapSampler::read(*(v9 + 8), v21, v22, v17, v20, v19, v18, v23, v24);
  v26 = (v12 * (*&v25 - v13)) / v10;
  v27 = expf(v26 * (v26 * -0.5));
  v28 = 1.0;
  v29 = 1.0 - v27;
  v30.f64[0] = v11 * v29 + 1.0;
  *v30.f64 = v30.f64[0];
  v31 = v27 / fmaxf(*v30.f64, 0.0001);
  v32 = v12 / v10;
  v33 = *(v9 + 16);
  LODWORD(v30.f64[0]) = *(v9 + 20);
  v34.i64[1] = *(&v71 + 1);
  LODWORD(v28) = *(v9 + 24);
  v35.i32[0] = *(v9 + 28);
  v36.f32[0] = *&v28 + (vmuls_lane_f32(*v30.f64, *&v71, 1) + (*&v71 * v33));
  LODWORD(v29) = *(v9 + 32);
  v37.i32[0] = *(v9 + 36);
  v36.f32[1] = *v37.i32 + (vmuls_lane_f32(*&v29, *&v71, 1) + (*&v71 * *v35.i32));
  v38 = vadd_f32(*&v71, 1065353216);
  *v34.i32 = *&v28 + (vmuls_lane_f32(*v30.f64, v38, 1) + (v38.f32[0] * v33));
  *&v34.i32[1] = *v37.i32 + (vmuls_lane_f32(*&v29, v38, 1) + (v38.f32[0] * *v35.i32));
  v39 = vsub_f32(*v34.i8, v36);
  *v40.i8 = vadd_f32(*&v71, 0x3F80000000000000);
  v41.f32[0] = *&v28 + (vmuls_lane_f32(*v30.f64, *v40.i8, 1) + (*v40.i32 * v33));
  *v30.f64 = *v37.i32 + (vmuls_lane_f32(*&v29, *v40.i8, 1) + (*v40.i32 * *v35.i32));
  v41.i32[1] = LODWORD(v30.f64[0]);
  v73 = v36;
  v42 = vsub_f32(v41, v36);
  *&v71 = CI::BitmapSampler::read(*(v9 + 8), COERCE_DOUBLE(vsub_f32(v36, v39)), v30, v29, v28, v35, v37, v40, v34);
  v70 = CI::BitmapSampler::read(*(v9 + 8), COERCE_DOUBLE(vadd_f32(v73, v39)), v43, v44, v45, v46, v47, v48, v49);
  v69 = CI::BitmapSampler::read(*(v9 + 8), COERCE_DOUBLE(vsub_f32(v73, v42)), v50, v51, v52, v53, v54, v55, v56);
  v64 = vaddv_f32(vabs_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(vzip1_s32(*&v70, COERCE_INT32X2_T(CI::BitmapSampler::read(*(v9 + 8), COERCE_DOUBLE(vadd_f32(v73, v42)), v57, v58, v59, v60, v61, v62, v63))), vzip1_s32(*&v71, *&v69))), v32 * 0.5))));
  v65 = 2.0;
  if (v64 <= 2.0)
  {
    v65 = v64;
  }

  if (v64 >= 0.0001)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0.0001;
  }

  v67 = v66 * 0.8333333;
  *&result = vmulq_n_f32(v72, v31 * fmaxf(fminf((v26 / v67) + 0.5, 1.0), 0.0)).u64[0];
  return result;
}

uint64_t CI::sw_glowMaskNotOpposite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 104);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 112) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = (*v7 - *(a2 + (*(v3 + 32) << 6))) * *(a2 + (*(v3 + 56) << 6));
  if (v13 > 0.0)
  {
    v14 = v13 / *(a2 + (*(v3 + 80) << 6));
    v12.i64[0] = vmulq_n_f32(v12, expf(v14 * (v14 * -0.5))).u64[0];
  }

  return v12.i64[0];
}

double CI::sw_fallbackComputeNormals(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v13.f32[0] = -COERCE_FLOAT(*v11);
  v13.i32[1] = HIDWORD(*v11);
  v14 = vmul_f32(v13, v13);
  v14.f32[0] = sqrtf(vaddv_f32(v14));
  v15 = 0.0;
  if (v14.f32[0] <= 0.0001)
  {
    v15 = 1.0;
  }

  v16 = vadd_f32(vmul_f32(vdiv_f32(vmul_n_f32(v13, v15), vdup_lane_s32(v14, 0)), 0x3F0000003F000000), 0x3F0000003F000000);
  __asm { FMOV            V2.2S, #1.0 }

  *&v12.i32[1] = vmaxnm_f32(vminnm_f32(v16, _D2), 0);
  v12.i32[3] = 1.0;
  *&result = _simd_pow_f4(v12, vdupq_n_s64(0x400CCCCD400CCCCDuLL)).u64[0];
  return result;
}

double CI::sw_gatherSDF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (a2 + (*(v3 + 32) << 6));
  v9 = (a2 + (*(v3 + 56) << 6));
  if (*v7 < 0.5)
  {
    v9 = v8;
  }

  *&result = vld1q_dup_f32(v9).u64[0];
  return result;
}

unint64_t CI::sw_clampHDR(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int32x2_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 16) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  a5.i32[0] = *(a2 + (*(v5 + 32) << 6));
  return vminnmq_f32(*v9, vdupq_lane_s32(a5, 0)).u64[0];
}

double CI::sw_clampToFrame(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v21 = *v9;
  DC = CI::getDC(a1);
  v12 = v21;
  v13 = vextq_s8(v12, v12, 8uLL);
  *&v13.f64[0] = vadd_f32(*&v13.f64[0], *v21.i8);
  v14 = vminnm_f32(vmaxnm_f32(*DC, *v21.i8), *&v13.f64[0]);
  v12.i32[0] = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v14, 1);
  *&v17 = *v16.i32 + (v14.f32[0] * *(v10 + 28));
  v14.f32[0] = *v12.i32 + (vmuls_lane_f32(*(v10 + 20), v14, 1) + (v14.f32[0] * *(v10 + 16)));
  *v13.f64 = *v15.i32 + *&v17;
  v14.f32[1] = *v15.i32 + *&v17;
  return CI::BitmapSampler::read(*(v10 + 8), *&v14, v13, *v12.i64, v17, v16, v15, v18, v19);
}

float CI::sw_sdfFill(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = *(a2 + (v4[4] << 6));
  v7 = *(a2 + (v4[7] << 6));
  DC = CI::getDC(a1);
  *&v9 = *DC;
  v65 = v9;
  v10 = CI::getDC(DC);
  LODWORD(v11) = *(v5 + 24);
  v12.i32[0] = *(v5 + 36);
  *v13.i32 = vmuls_lane_f32(*(v5 + 32), *v10, 1);
  *&v14 = *v13.i32 + (COERCE_FLOAT(*v10) * *(v5 + 28));
  *&v15 = *&v11 + (vmuls_lane_f32(*(v5 + 20), *v10, 1) + (COERCE_FLOAT(*v10) * *(v5 + 16)));
  *v16.f64 = *v12.i32 + *&v14;
  *(&v15 + 1) = *v12.i32 + *&v14;
  v19 = CI::BitmapSampler::read(*(v5 + 8), v15, v16, v11, v14, v13, v12, v17, v18);
  v20 = v7 + (*&v19 * v6);
  LODWORD(v19) = *(v5 + 16);
  v21 = *(v5 + 20);
  v22.i64[1] = *(&v65 + 1);
  LODWORD(v23) = *(v5 + 24);
  v24.i32[0] = *(v5 + 28);
  v25.f32[0] = *&v23 + (vmuls_lane_f32(v21, *&v65, 1) + (*&v65 * *&v19));
  LODWORD(v26) = *(v5 + 32);
  v27.i32[0] = *(v5 + 36);
  v25.f32[1] = *v27.i32 + (vmuls_lane_f32(*&v26, *&v65, 1) + (*&v65 * *v24.i32));
  v28 = vadd_f32(*&v65, 1065353216);
  *v22.i32 = *&v23 + (vmuls_lane_f32(v21, v28, 1) + (v28.f32[0] * *&v19));
  *&v22.i32[1] = *v27.i32 + (vmuls_lane_f32(*&v26, v28, 1) + (v28.f32[0] * *v24.i32));
  v29 = vsub_f32(*v22.i8, v25);
  *v30.i8 = vadd_f32(*&v65, 0x3F80000000000000);
  *&v19 = *&v23 + (vmuls_lane_f32(v21, *v30.i8, 1) + (*v30.i32 * *&v19));
  *v31.f64 = *v27.i32 + (vmuls_lane_f32(*&v26, *v30.i8, 1) + (*v30.i32 * *v24.i32));
  HIDWORD(v19) = LODWORD(v31.f64[0]);
  v66 = v25;
  v32 = vsub_f32(*&v19, v25);
  *&v65 = CI::BitmapSampler::read(*(v5 + 8), COERCE_DOUBLE(vsub_f32(v25, v29)), v31, v26, v23, v24, v27, v30, v22);
  v64 = CI::BitmapSampler::read(*(v5 + 8), COERCE_DOUBLE(vadd_f32(v66, v29)), v33, v34, v35, v36, v37, v38, v39);
  v63 = CI::BitmapSampler::read(*(v5 + 8), COERCE_DOUBLE(vsub_f32(v66, v32)), v40, v41, v42, v43, v44, v45, v46);
  v54 = vaddv_f32(vabs_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(vzip1_s32(*&v64, COERCE_INT32X2_T(CI::BitmapSampler::read(*(v5 + 8), COERCE_DOUBLE(vadd_f32(v66, v32)), v47, v48, v49, v50, v51, v52, v53))), vzip1_s32(*&v65, *&v63))), v6 * 0.5))));
  v55 = 2.0;
  if (v54 <= 2.0)
  {
    v55 = v54;
  }

  if (v54 >= 0.0001)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0.0001;
  }

  v57 = v56 * 0.8333333;
  v58 = (v20 + (v57 * 0.5)) / ((v57 * 0.5) + (v57 * 0.5));
  if (v58 <= 1.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = 1.0;
  }

  v60 = v58 < 0.0;
  v61 = 0.0;
  if (!v60)
  {
    v61 = v59;
  }

  return (v61 * v61) * ((v61 * -2.0) + 3.0);
}

double CI::sw_shapeAwareGradientMask(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 88) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = *(a2 + (*(v3 + 104) << 6));
  v14 = fmaxf(fminf(-((*v7 - *(a2 + (*(v3 + 176) << 6))) * *(a2 + (*(v3 + 152) << 6))) / *(a2 + (*(v3 + 32) << 6)), 1.0), 0.0);
  v15 = vmul_f32(*(a2 + (*(v3 + 128) << 6)), vsub_f32(*v11, *CI::getDC(a1)));
  v15.f32[0] = fmaxf(fminf(vaddv_f32(v15) / v13, 1.0), 0.0);
  v15.f32[0] = (v14 * v15.f32[0]) + ((1.0 - v15.f32[0]) * (1.0 - v14));
  v15.f32[0] = (1.0 - v15.f32[0]) + (v12 * v15.f32[0]);
  if (v15.f32[0] <= 1.0)
  {
    v16 = v15.f32[0];
  }

  else
  {
    v16 = 1.0;
  }

  if (v15.f32[0] >= 0.0)
  {
    v15.f32[0] = v16;
  }

  else
  {
    v15.f32[0] = 0.0;
  }

  v15.f32[0] = (v15.f32[0] * v15.f32[0]) * ((v15.f32[0] * -2.0) + 3.0);
  *&result = vdupq_lane_s32(v15, 0).u64[0];
  return result;
}

double CI::sw_simplifiedShapeAwareGradientMask(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v5 + 64) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 80);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v5 + 88) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 104);
  v17 = *(v5 + 128);
  v18 = *(v5 + 160);
  v19 = *(v5 + 152);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (v18 == 5)
  {
    v21 = v20;
  }

  v22 = a4 + 80 * v6;
  v23 = *(a2 + (v7 << 6));
  a5.n128_u64[0] = *v11;
  v90 = a5;
  v93 = HIDWORD(*v15);
  v24 = *(a2 + (v16 << 6));
  v25 = *(a2 + (v17 << 6));
  v88 = *v21;
  DC = CI::getDC(a1);
  v27.i64[0] = *DC;
  v86 = v27;
  v28 = CI::getDC(DC);
  LODWORD(v29) = *(v22 + 24);
  v30.i32[0] = *(v22 + 36);
  *v31.i32 = vmuls_lane_f32(*(v22 + 32), *v28, 1);
  *&v32 = *v31.i32 + (COERCE_FLOAT(*v28) * *(v22 + 28));
  *&v33 = *&v29 + (vmuls_lane_f32(*(v22 + 20), *v28, 1) + (COERCE_FLOAT(*v28) * *(v22 + 16)));
  *v34.f64 = *v30.i32 + *&v32;
  *(&v33 + 1) = *v30.i32 + *&v32;
  _D0 = CI::BitmapSampler::read(*(v22 + 8), v33, v34, v29, v32, v31, v30, v35, v36);
  v40 = fmaxf(fminf(-((*&_D0 - v25) * v24) / v23, 1.0), 0.0);
  v41 = v86;
  HIDWORD(_D2) = DWORD1(v88);
  *_Q1.f64 = 1.0 - fmaxf(fminf((*&v86.i32[1] - *(&v88 + 1)) / *(&v88 + 3), 1.0), 0.0);
  _Q5 = v90;
  _V3.S[1] = v93;
  __asm
  {
    FMLA            S2, S1, V5.S[1]
    FMLA            S0, S1, V3.S[1]
  }

  v50 = (*&_D2 * v40) + (*&_D0 * (1.0 - v40));
  if (v50 <= 1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 1.0;
  }

  if (v50 >= 0.0)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = (v52 * v52) * ((v52 * -2.0) + 3.0);
  v54 = *(v22 + 16);
  LODWORD(_Q1.f64[0]) = *(v22 + 20);
  HIDWORD(v55) = v86.i32[1];
  LODWORD(v55) = *(v22 + 24);
  v41.i32[0] = *(v22 + 28);
  v56.f32[0] = *&v55 + (vmuls_lane_f32(*_Q1.f64, *v86.i8, 1) + (*v86.i32 * v54));
  LODWORD(_D2) = *(v22 + 32);
  _Q5.i32[0] = *(v22 + 36);
  v56.f32[1] = *_Q5.i32 + (vmuls_lane_f32(*&_D2, *v86.i8, 1) + (*v86.i32 * *v41.i32));
  *v38.i8 = vadd_f32(*v86.i8, 1065353216);
  *v39.i32 = *&v55 + (vmuls_lane_f32(*_Q1.f64, *v38.i8, 1) + (*v38.i32 * v54));
  *&v39.i32[1] = *_Q5.i32 + (vmuls_lane_f32(*&_D2, *v38.i8, 1) + (*v38.i32 * *v41.i32));
  v57 = vsub_f32(*v39.i8, v56);
  *v38.i8 = vadd_f32(*v86.i8, 0x3F80000000000000);
  v58.f32[0] = *&v55 + (vmuls_lane_f32(*_Q1.f64, *v38.i8, 1) + (*v38.i32 * v54));
  *_Q1.f64 = *_Q5.i32 + (vmuls_lane_f32(*&_D2, *v38.i8, 1) + (*v38.i32 * *v41.i32));
  v58.i32[1] = LODWORD(_Q1.f64[0]);
  v92 = v56;
  v59 = vsub_f32(v58, v56);
  v91 = CI::BitmapSampler::read(*(v22 + 8), COERCE_DOUBLE(vsub_f32(v56, v57)), _Q1, _D2, v55, v41, _Q5, v38, v39);
  v89 = CI::BitmapSampler::read(*(v22 + 8), COERCE_DOUBLE(vadd_f32(v92, v57)), v60, v61, v62, v63, v64, v65, v66);
  v87 = CI::BitmapSampler::read(*(v22 + 8), COERCE_DOUBLE(vsub_f32(v92, v59)), v67, v68, v69, v70, v71, v72, v73);
  v81 = vaddv_f32(vabs_f32(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vsub_f32(vzip1_s32(*&v89, COERCE_INT32X2_T(CI::BitmapSampler::read(*(v22 + 8), COERCE_DOUBLE(vadd_f32(v92, v59)), v74, v75, v76, v77, v78, v79, v80))), vzip1_s32(*&v91, *&v87))), v24 * 0.5))));
  v82 = 2.0;
  if (v81 <= 2.0)
  {
    v82 = v81;
  }

  if (v81 >= 0.0001)
  {
    v83 = v82;
  }

  else
  {
    v83 = 0.0001;
  }

  v84 = v83 * 0.8333333;
  *&v84 = v84;
  *&v84 = fmaxf(fminf((v40 / *&v84) + 0.5, 1.0), 0.0);
  *&v84 = (1.0 - *&v84) + (v53 * *&v84);
  *&result = vdupq_lane_s32(*&v84, 0).u64[0];
  return result;
}

void calcUniforms(float a1@<S0>, float a2@<S1>, float a3@<S2>, float a4@<S3>, float a5@<S4>, float a6@<S5>, float a7@<S6>, float a8@<S7>, NSString *a9@<X0>, uint64_t a10@<X8>)
{
  v13 = (LODWORD(a2) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v14 = ((LODWORD(a2) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (a2 >= 0.0)
  {
    v14 = 0;
    v13 = 0;
  }

  if ((LODWORD(a2) & 0x7FFFFFFF) == 0)
  {
    v13 = 1;
  }

  v15 = (LODWORD(a2) & 0x7FFFFFFF) == 0x7F800000 || v13;
  v16 = v15 | v14;
  v17 = fabsf(a1) == INFINITY;
  if ((v16 & 1) != 0 || v17)
  {
    *(a10 + 44) = 0u;
    *(a10 + 16) = 0u;
    *(a10 + 32) = 0u;
    *a10 = 0u;
  }

  else
  {
    if (a1 > 0.0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a2;
    }

    v20 = [(NSString *)a9 isEqual:@"kCIDynamicRangeStandard"];
    v21 = 0.0;
    v22 = 0.0;
    if ((v20 & 1) == 0)
    {
      v23 = [(NSString *)a9 isEqual:@"kCIDynamicRangeConstrainedHigh", 0.0, 0.0];
      v22 = 0.0;
      v21 = v23 ? 1.0 : 0.0;
      if (!v23)
      {
        v22 = 1.0;
      }
    }

    v24 = 1.0;
    v25 = fminf(fmaxf(v22, 0.0), 1.0);
    v26 = fminf(fminf(fmaxf(v21, 0.0), 1.0), 1.0 - v25);
    v27 = fminf(fmaxf(a3, 0.0), fminf(v19, 2.0));
    v28 = 1.0;
    if (v27 > 0.0769)
    {
      v29 = fmaxf(0.5987 / powf(v27, 0.2), 0.5212);
      v28 = fminf(fmaxf(v29 + ((1.0 - v29) * (1.0 - fminf(fmaxf((v19 + -1.0) / 1.6667, 0.0), 1.0))), 2.0 / v19), 1.0);
    }

    v30 = fminf(a2, 2.0);
    v31 = (v25 + v26) / 1.4142;
    if (fabsf(v31) > 0.0000001)
    {
      v24 = (v31 + ((v26 - v25) / 1.4142)) / (v31 + v31);
    }

    v32 = v19 * v28;
    v33 = fminf(fminf(v19 * v28, v30), a2);
    v34 = v19;
    v35 = v33 + -1.0;
    v87 = v34;
    v88 = v31 * 1.4142;
    v85 = logf(v34);
    v36 = (fminf(logf(v32) / 2.0794, 1.0) * -0.65) + 1.0;
    v37 = fminf(v36 + (v35 * 0.39), 1.0);
    v38 = 1.0;
    if (v37 >= 1.0)
    {
      v38 = ((((1.0 - v36) / 0.39) + 1.0) + -1.0) / v35;
    }

    v39 = (v35 * v88) + 1.0;
    v40 = v28 * v37;
    if (v88 <= v38)
    {
      v41 = (fminf(v85 / 2.0794, 1.0) * -0.65) + 1.0;
      v42 = v41 + ((v88 / v38) * (v40 - v41));
      v43 = (fminf(logf(v87 * v42) / 2.0794, 1.0) * -0.65) + 1.0;
      v44 = v39 + -1.0;
      if (fminf(v43 + ((v39 + -1.0) * 0.39), 1.0) >= 1.0)
      {
        v40 = v42;
      }

      else
      {
        v40 = fminf(v42 / ((v44 * 0.39) + 0.35), 1.0);
        if ((v87 * v40) < 8.0)
        {
          v45 = (expf((((v85 * -0.31258) + 1.0) + (v44 * 0.39)) / -0.31258) * v42) / -0.31258;
          v46 = -0.34559;
          if (v45 <= -0.34559)
          {
            v47 = &rwtm_constrain_headrooms(float,float,float,float,float)::y_lut_lambert_low;
            v48 = 39.0;
            v49 = -0.36788;
          }

          else
          {
            v47 = &rwtm_constrain_headrooms(float,float,float,float,float)::y_lut_lambert_high;
            v48 = 99.0;
            v46 = -0.0000078;
            v49 = -0.34559;
          }

          if (v45 <= v46)
          {
            v73 = v45;
          }

          else
          {
            v73 = v46;
          }

          if (v45 >= v49)
          {
            v74 = v73;
          }

          else
          {
            v74 = v49;
          }

          v75 = v48 * ((v74 - v49) / (v46 - v49));
          v76 = v48 + -0.0000001;
          if (v75 <= v76)
          {
            v76 = v75;
          }

          _NF = v75 < 0.0;
          v77 = 0.0;
          if (!_NF)
          {
            v77 = v76;
          }

          v78 = vcvtms_u32_f32(v77);
          v79 = v77 - floorf(v77);
          v40 = v42 / (((v47[v78 + 1] * v79) + (v47[v78] * (1.0 - v79))) * -0.31258);
        }
      }
    }

    v50 = log2f(fminf(v87, a2));
    v51 = exp2f(v50 * v88);
    v52 = ((fminf(v40, 1.0) + -1.0) * v24) + 1.0;
    v53 = fminf(v51 + ((v39 - v51) * v24), a2);
    if (a1 > 0.0)
    {
      v54 = v52 * a1;
    }

    else
    {
      v54 = v53;
    }

    if (v54 <= v53)
    {
      *a10 = 2;
      *(a10 + 4) = v54;
      *(a10 + 8) = v54;
      __asm { FMOV            V0.2S, #1.0 }

      *(a10 + 12) = _D0;
      *(a10 + 20) = v54;
      *(a10 + 24) = v54;
      *(a10 + 28) = 0;
      *(a10 + 32) = 0;
      *(a10 + 36) = v54;
      *(a10 + 40) = v54;
      *(a10 + 44) = 0;
      *(a10 + 48) = v54;
      *(a10 + 52) = 1065353216;
    }

    else
    {
      v55 = logf(v54);
      v56 = fminf((1.0 - ((1.0 - a4) * fminf(v55 / logf(a8), 1.0))) + (((1.0 - a4) / (a5 + -1.0)) * (v53 + -1.0)), 1.0);
      v57 = fmaxf(fminf((v56 - a4) / (1.0 - a4), 1.0), 0.0);
      if (v57 <= 0.0)
      {
        v58 = a7;
      }

      else
      {
        v58 = 1.0;
        if (v57 < 1.0)
        {
          v58 = a7 + ((1.0 - a7) * v57);
        }
      }

      v64 = v53 * powf(v56 / v53, 1.0 / v58);
      v65 = v53 - (a6 * (v53 - v64));
      v66 = v65 / v64;
      v67 = (v53 * 0.001) / 3.0;
      v68 = (v54 + 1.0) + ((v65 / v64) * -2.0);
      v69 = fabsf(v68);
      v70 = v54 + (v67 - v68);
      v71 = v69 > v67;
      if (v69 <= v67)
      {
        v72 = v54 + (v67 - v68);
      }

      else
      {
        v72 = v54;
      }

      if (!v71)
      {
        v68 = (v70 + 1.0) + ((v65 / v64) * -2.0);
      }

      *a10 = 2;
      *(a10 + 4) = v54;
      *(a10 + 8) = v53;
      *(a10 + 12) = v64;
      *(a10 + 16) = v68;
      *(a10 + 20) = -(v72 - (v66 * v66));
      *(a10 + 24) = 1.0 - v66;
      *(a10 + 28) = v64;
      *(a10 + 32) = v65;
      *(a10 + 36) = v53;
      *(a10 + 40) = 1065353216;
      *(a10 + 48) = v53;
      *(a10 + 52) = v58;
    }

    *(a10 + 56) = v52;
  }
}

double CI::sw_headroomToneMap(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x2_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 104);
  v17 = a3 + 16 * v16;
  v18 = a2 + (v16 << 6);
  if (*(v11 + 112) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a11.i32[0] = *(a2 + (*(v11 + 56) << 6));
  v34 = vmulq_n_f32(*v15, *(a2 + (*(v11 + 176) << 6)));
  v20 = fmaxf(fmaxf(fmaxf(v34.f32[0], v34.f32[1]), v34.f32[2]), 0.001);
  if (v20 <= COERCE_FLOAT(HIDWORD(*v19)))
  {
    v29 = *(a2 + (*(v11 + 80) << 6)) * v20;
  }

  else
  {
    _Q2 = *(a2 + (*(v11 + 128) << 6));
    v22 = (COERCE_FLOAT(*(v19 + 8)) + sqrtf(fmaxf(COERCE_FLOAT(HIDWORD(*v19)) + (COERCE_FLOAT(*v19) * v20), 0.0))) / COERCE_FLOAT(*v19);
    _S1 = v22 * v22;
    __asm { FMLA            S4, S1, V2.S[2] }

    if (v20 >= *(a2 + (*(v11 + 32) << 6)))
    {
      LODWORD(v29) = HIDWORD(*(a2 + (*(v11 + 152) << 6)));
    }

    else
    {
      v29 = _S4;
    }
  }

  v33 = a11;
  v30 = vmulq_n_f32(v34, fminf((*a11.i32 * powf(v29 / *a11.i32, COERCE_FLOAT(*(a2 + (*(v11 + 152) << 6) + 8)))) / v20, 1.0));
  v30.i32[3] = 0;
  v31 = vdupq_lane_s32(v33, 0);
  v31.i32[3] = 0;
  *&result = vminnmq_f32(v30, v31).u64[0];
  return result;
}

double CI::sw_headroomClamp(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *v10;
  v12 = *(a2 + (*(v6 + 32) << 6));
  *&a6 = fmaxf(fmaxf(fmaxf(COERCE_FLOAT(*v10), COERCE_FLOAT(HIDWORD(v10->i64[0]))), COERCE_FLOAT(v10->i64[1])), 0.001);
  if (*&a6 > v12)
  {
    v11.i64[0] = vdivq_f32(vmulq_n_f32(v11, v12), vdupq_lane_s32(*&a6, 0)).u64[0];
  }

  return *v11.i64;
}

int8x8_t CI::sw_distanceMaskPrep(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v16 = *v11;
  v17 = *v7;
  DC = CI::getDC(a1);
  v13 = vextq_s8(v16, v16, 8uLL).u64[0];
  v14 = vdiv_f32(vsub_f32(*DC, *v16.i8), v13);
  v13.i32[0] = 0.5;
  return vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v13, *&v17)), 0), v14, vneg_f32(0x7F0000007FLL));
}

uint64_t CI::sw_distanceMask(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = (a2 + (*(v4 + 56) << 6));
  v31 = *v8;
  v11 = vld1_dup_f32(v10);
  v17 = *CI::getDC(a1);
  v18 = v31;
  v30 = vextq_s8(v18, v18, 8uLL).u64[0];
  v19 = vadd_f32(*v31.i8, vmul_f32(v30, vdiv_f32(vsub_f32(v17, *v31.i8), v30)));
  v20 = xmmword_19CF22C10;
  v29 = 0x7F8000007F800000;
  v21 = -1;
  v22 = 1000000000.0;
  do
  {
    *&v20 = v21;
    v32 = v20;
    for (i = -1; i != 2; ++i)
    {
      v24 = v32;
      *(v24.f64 + 1) = i;
      v25 = vadd_f32(v17, vmul_f32(v11, *&v24.f64[0]));
      v18.i32[0] = *(v9 + 24);
      v14.i32[0] = *(v9 + 36);
      *v13.i32 = vmuls_lane_f32(*(v9 + 32), v25, 1);
      *&v12 = *v13.i32 + (v25.f32[0] * *(v9 + 28));
      v25.f32[0] = *v18.i32 + (vmuls_lane_f32(*(v9 + 20), v25, 1) + (v25.f32[0] * *(v9 + 16)));
      *v24.f64 = *v14.i32 + *&v12;
      v25.f32[1] = *v14.i32 + *&v12;
      *&v20 = CI::BitmapSampler::read(*(v9 + 8), *&v25, v24, *v18.i64, v12, v13, v14, v15, v16);
      if (*&v20 != INFINITY)
      {
        v18.i32[1] = v31.i32[1];
        v26 = vsub_f32(v19, vadd_f32(*v31.i8, vmul_f32(v30, *&v20)));
        v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
        if (v27 < v22)
        {
          v29 = v20;
          v22 = v27;
        }
      }
    }

    ++v21;
  }

  while (v21 != 2);
  return v29;
}

float CI::sw_distanceMaskPost(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  LODWORD(result) = HIDWORD(*v7);
  if (COERCE_FLOAT(*v7) != INFINITY && result != INFINITY)
  {
    v11 = *(v3 + 56);
    v12 = (a3 + 16 * v11);
    v13 = (a2 + (v11 << 6));
    if (*(v3 + 64) == 5)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(v3 + 32);
    v16 = (a3 + 16 * v15);
    v17 = (a2 + (v15 << 6));
    if (*(v3 + 40) == 5)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    v19 = *(a2 + (*(v3 + 80) << 6));
    v20 = *v18;
    v21 = vsub_f32(*CI::getDC(a1), vadd_f32(*v14, vmul_f32(*&v8, *&vextq_s8(*v14->f32, *v14->f32, 8uLL))));
    v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21))) / v19;
    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    v24 = v22 >= 0.0 && v20 <= 0.5;
    result = 0.0;
    if (v24)
    {
      return v23;
    }
  }

  return result;
}

double CI::sw_signedDistanceMaskPrep(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v20 = *v11;
  v21 = *v7;
  DC = CI::getDC(a1);
  v13 = vextq_s8(v20, v20, 8uLL).u64[0];
  v14 = vdiv_f32(vsub_f32(*DC, *v20.i8), v13);
  v13.i32[0] = 0.5;
  *v15.i8 = vdup_lane_s32(vmvn_s8(vcge_f32(v13, *&v21)), 0);
  *v16.i8 = vmvn_s8(*v15.i8);
  *v17.i8 = vneg_f32(0x7F0000007FLL);
  *v18.i8 = v14;
  v18.i64[1] = v17.i64[0];
  v15.i64[1] = v15.i64[0];
  v17.u64[1] = v14;
  v16.i64[1] = v16.i64[0];
  *&result = vorrq_s8(vandq_s8(v18, v15), vandq_s8(v17, v16)).u64[0];
  return result;
}

uint64_t CI::sw_signedDistanceMask(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = (a2 + (*(v4 + 56) << 6));
  v37 = *v8;
  v11 = vld1_dup_f32(v10);
  v17 = *CI::getDC(a1);
  v18 = v37;
  v19 = vextq_s8(v18, v18, 8uLL).u64[0];
  v20 = vadd_f32(*v37.i8, vmul_f32(v19, vdiv_f32(vsub_f32(v17, *v37.i8), v19)));
  v21.i64[0] = 0x7F0000007FLL;
  v21.i64[1] = 0x7F0000007FLL;
  v22 = vnegq_f32(v21);
  v35 = v19;
  v36 = v22;
  v23 = -1;
  v24 = 1000000000.0;
  v25 = 1000000000.0;
  do
  {
    *v22.i32 = v23;
    v34 = v22;
    for (i = -1; i != 2; ++i)
    {
      v27 = v34;
      *(v27.f64 + 1) = i;
      v28 = vadd_f32(v17, vmul_f32(v11, *&v27.f64[0]));
      v18.i32[0] = *(v9 + 24);
      v14.i32[0] = *(v9 + 36);
      *v13.i32 = vmuls_lane_f32(*(v9 + 32), v28, 1);
      *&v12 = *v13.i32 + (v28.f32[0] * *(v9 + 28));
      v28.f32[0] = *v18.i32 + (vmuls_lane_f32(*(v9 + 20), v28, 1) + (v28.f32[0] * *(v9 + 16)));
      *v27.f64 = *v14.i32 + *&v12;
      v28.f32[1] = *v14.i32 + *&v12;
      *v22.i64 = CI::BitmapSampler::read(*(v9 + 8), *&v28, v27, *v18.i64, v12, v13, v14, v15, v16);
      if (*v22.i32 != INFINITY)
      {
        v18.i32[1] = v37.i32[1];
        v29 = vsub_f32(v20, vadd_f32(*v37.i8, vmul_f32(v35, *v22.i8)));
        v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
        if (v30 < v24)
        {
          v18.i64[0] = v22.i64[0];
          HIDWORD(v12) = v36.i32[1];
          v18.i64[1] = v36.i64[1];
          v36 = v18;
          v24 = v30;
        }
      }

      if (*&v22.i32[2] != INFINITY)
      {
        v22 = vextq_s8(v22, v22, 8uLL);
        v18.i32[1] = v37.i32[1];
        v31 = vsub_f32(v20, vadd_f32(*v37.i8, vmul_f32(v35, *v22.i8)));
        v32 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
        if (v32 < v25)
        {
          v18.i64[0] = v36.i64[0];
          v18.i64[1] = v22.i64[0];
          v36 = v18;
          v25 = v32;
        }
      }
    }

    ++v23;
  }

  while (v23 != 2);
  return v36.i64[0];
}

float32_t CI::sw_signedDistanceMaskPost(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) != 5)
  {
    v5 = v6;
  }

  v7 = *(v3 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v3 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v3 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15.i32[0] = HIDWORD(v5->i64[0]);
  if (COERCE_FLOAT(*v5) != INFINITY && v15.f32[0] != INFINITY)
  {
    v17 = vextq_s8(*v5, *v5, 8uLL).u64[0];
    v15 = vceq_f32(v17, vneg_f32(0x7F0000007FLL));
    if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
    {
      v34 = *v10;
      v30 = *v14;
      v18 = *v14;
      v18.i32[0] = *(a2 + (*(v3 + 80) << 6));
      v33 = *v18.i8;
      v31 = *v5;
      v32 = v17;
      DC = CI::getDC(a1);
      v20 = vextq_s8(v30, v30, 8uLL).u64[0];
      v21 = vsub_f32(*DC, vadd_f32(*v30.i8, vmul_f32(*v31.i8, v20)));
      v22 = vmul_f32(v21, v21);
      v23 = vsub_f32(*DC, vadd_f32(*v30.i8, vmul_f32(v32, v20)));
      v24 = vmul_f32(v23, v23);
      v15 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v24, v22), vzip2_s32(v24, v22))), vdup_lane_s32(v33, 0));
      v25 = v15.f32[1];
      if (v15.f32[1] > 1.0)
      {
        v25 = 1.0;
      }

      v26 = vcltz_f32(v15);
      if (v26.i8[4])
      {
        v25 = 0.0;
      }

      v27 = -v15.f32[0];
      v28 = v15.f32[0] <= 1.0;
      v15.i32[0] = -1.0;
      if (v28)
      {
        v15.f32[0] = v27;
      }

      if (v26.i8[0])
      {
        v15.f32[0] = -0.0;
      }

      if (*&v34 <= 0.5)
      {
        v15.f32[0] = v25;
      }
    }
  }

  return v15.f32[0];
}

double CI::sw_holeFillRefine(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  *v8.i8 = *DC;
  LODWORD(v9) = *(v5 + 28);
  *&v10 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v11) = *(v5 + 36);
  v42 = *DC;
  *v12.f64 = *&v11 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v9));
  HIDWORD(v10) = LODWORD(v12.f64[0]);
  result = CI::BitmapSampler::read(*(v5 + 8), v10, v12, v9, v11, v8, v13, v14, v15);
  if (*&result > 0.001)
  {
    if (*&result <= 0.95)
    {
      v40 = result;
      *&result = v6 * *&result;
      v41 = result;
      *&result = 1.0 / (*&result + 0.22);
      v17 = 0.75;
      if (*&result <= 0.75)
      {
        v17 = *&result;
      }

      if (*&result >= 0.1)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.1;
      }

      v19 = 0.0;
      while (1)
      {
        v21 = __sincosf_stret(v19);
        *&v20.f64[0] = __PAIR64__(LODWORD(v21.__sinval), LODWORD(v21.__cosval));
        HIDWORD(v22) = HIDWORD(v41);
        v23 = vmul_n_f32(__PAIR64__(LODWORD(v21.__sinval), LODWORD(v21.__cosval)), *&v41);
        v24 = vadd_f32(v42, v23);
        LODWORD(v22) = *(v5 + 24);
        v25.i32[0] = *(v5 + 36);
        *v26.i32 = vmuls_lane_f32(*(v5 + 32), v24, 1);
        *&v27 = *v26.i32 + (v24.f32[0] * *(v5 + 28));
        v24.f32[0] = *&v22 + (vmuls_lane_f32(*(v5 + 20), v24, 1) + (v24.f32[0] * *(v5 + 16)));
        *v20.f64 = *v25.i32 + *&v27;
        v24.f32[1] = *v25.i32 + *&v27;
        v30 = CI::BitmapSampler::read(*(v5 + 8), *&v24, v20, v22, v27, v26, v25, v28, v29);
        if (*(&v30 + 1) > 0.5)
        {
          break;
        }

        v38 = vsub_f32(v42, v23);
        LODWORD(v32) = *(v5 + 24);
        v35.i32[0] = *(v5 + 36);
        *v34.i32 = vmuls_lane_f32(*(v5 + 32), v38, 1);
        *&v33 = *v34.i32 + (v38.f32[0] * *(v5 + 28));
        v38.f32[0] = *&v32 + (vmuls_lane_f32(*(v5 + 20), v38, 1) + (v38.f32[0] * *(v5 + 16)));
        *v31.f64 = *v35.i32 + *&v33;
        v38.f32[1] = *v35.i32 + *&v33;
        v39 = CI::BitmapSampler::read(*(v5 + 8), *&v38, v31, v32, v33, v34, v35, v36, v37);
        if (*(&v39 + 1) > 0.5)
        {
          break;
        }

        v19 = v18 + v19;
        if (v19 >= 3.1415926)
        {
          return v40;
        }
      }

      *&result = LODWORD(v40) | 0x3F80000000000000;
    }

    else
    {
      *&result = LODWORD(result) | 0x3F80000000000000;
    }
  }

  return result;
}

uint64_t CI::sw_holeFillPost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = 0.0;
  if (*(v7 + 4) <= 0.5)
  {
    v8 = 1.0;
  }

  return LODWORD(v8);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t CI::SoftwareDAGDescriptor::print(CI::SoftwareDAGDescriptor *this, __sFILE *__stream)
{
  fwrite("// Software DAG Functions\n", 0x1AuLL, 1uLL, __stream);
  v39 = this;
  v4 = *(this + 2);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(&v44, *v4, *(v4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - *v4) >> 3));
  *v47 = *(v4 + 24);
  v5 = *(v4 + 48);
  v48 = v44;
  v49 = v5;
  v50 = *(v4 + 56);
  fprintf(__stream, "#%zu = ", 0);
  fprintf(__stream, "%s(", v47[1]);
  (**v48)(__p);
  if (v43 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  fputs(v6, __stream);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  fwrite(")\n", 2uLL, 1uLL, __stream);
  __p[0] = &v44;
  std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](__p);
  v7 = this;
  if (*(this + 9) == *(this + 8))
  {
    v20 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v39;
    do
    {
      v10 = v8 + 1;
      fprintf(__stream, "#%zu = ", v8 + 1);
      v11 = *(v9 + 8) + (v8 << 6);
      v45 = 0;
      v46 = 0;
      v44 = 0;
      std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(&v44, *v11, *(v11 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 8) - *v11) >> 3));
      *v47 = *(v11 + 24);
      v48 = v44;
      v49 = *(v11 + 48);
      v50 = *(v11 + 56);
      fputs(v47[1], __stream);
      if (v49)
      {
        v12 = 0;
        for (i = 0; i < v49; ++i)
        {
          if (i)
          {
            v14 = 44;
          }

          else
          {
            v14 = 40;
          }

          fprintf(__stream, "%c ", v14);
          v15 = v48[v12 + 2];
          if ((v15 - 3) < 2 || v15 == 0)
          {
            (*v48[v12])(__p);
            if (v43 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            fputs(v17, __stream);
            if (v43 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else if (v15 == 5)
          {
            fprintf(__stream, "#%zu", v48[v12 + 1]);
          }

          else
          {
            v41 = v48[v12 + 2];
            v18 = "<Unknown>";
            if (v41 <= 5)
            {
              v18 = off_1E75C1678[v41];
            }

            fputs(v18, __stream);
          }

          v12 += 3;
        }
      }

      fwrite(")\n", 2uLL, 1uLL, __stream);
      __p[0] = &v44;
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](__p);
      v9 = v39;
      v19 = *(v39 + 9) - *(v39 + 8);
      v8 = v10;
    }

    while (v10 < v19 >> 6);
    v20 = v19 >> 6;
    v7 = v39;
  }

  if (*(v7 + 3) - *(v7 + 2) >= 0x41uLL)
  {
    v21 = 1;
    while (1)
    {
      fprintf(__stream, "#%zu = ", v21 + v20);
      v22 = *(v7 + 2) + (v21 << 6);
      v45 = 0;
      v46 = 0;
      v44 = 0;
      std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(&v44, *v22, *(v22 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v22 + 8) - *v22) >> 3));
      *v47 = *(v22 + 24);
      v48 = v44;
      v23 = *(v22 + 48);
      v49 = v23;
      v50 = *(v22 + 56);
      if (v23)
      {
        v24 = (v44 + 16);
        v25 = 1;
        do
        {
          v26 = *v24;
          v24 += 6;
          v25 &= v26 == 5;
          --v23;
        }

        while (v23);
      }

      else
      {
        v25 = 1;
      }

      fputs(v47[1], __stream);
      if (v49)
      {
        break;
      }

      fwrite("()\n", 3uLL, 1uLL, __stream);
LABEL_71:
      __p[0] = &v44;
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](__p);
      if (++v21 >= ((*(v7 + 3) - *(v7 + 2)) >> 6))
      {
        return fputc(10, __stream);
      }
    }

    if (v25)
    {
      v27 = 0;
      v28 = 1;
      do
      {
        if (v27)
        {
          v29 = 44;
        }

        else
        {
          v29 = 40;
        }

        fprintf(__stream, "%c #%zu", v29, v48[v28] + v20);
        ++v27;
        v28 += 3;
      }

      while (v27 < v49);
LABEL_70:
      fwrite(")\n", 2uLL, 1uLL, __stream);
      v7 = v39;
      goto LABEL_71;
    }

    v30 = 0;
    v31 = 0;
    while (1)
    {
      v32 = v31 ? 44 : 40;
      fprintf(__stream, "%c ", v32);
      v33 = v48[v30 + 2];
      if (v33 > 7)
      {
        break;
      }

      if (((1 << v33) & 0x99) != 0)
      {
        (*v48[v30])(__p);
        if (v43 >= 0)
        {
          v34 = __p;
        }

        else
        {
          v34 = __p[0];
        }

        fputs(v34, __stream);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (v33 == 5)
        {
          v37 = v48[v30 + 1];
          if (v37)
          {
            v35 = v37 + v20;
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          if (v33 != 6)
          {
            break;
          }

          v35 = v48[v30 + 1] + 1;
        }

        fprintf(__stream, "#%zu", v35);
      }

LABEL_69:
      ++v31;
      v30 += 3;
      if (v31 >= v49)
      {
        goto LABEL_70;
      }
    }

    v40 = v48[v30 + 2];
    v36 = "<Unknown>";
    if (v40 <= 5)
    {
      v36 = off_1E75C1678[v40];
    }

    fputs(v36, __stream);
    goto LABEL_69;
  }

  return fputc(10, __stream);
}

void sub_19CC43D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void CI::SoftwareDAG::~SoftwareDAG(CI::SoftwareDAG *this)
{
  *this = &unk_1F10301A8;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  CI::MainProgram::~MainProgram(this);
}

{
  CI::SoftwareDAG::~SoftwareDAG(this);

  JUMPOUT(0x19EAF5590);
}

void CI::SoftwareDAG::execute(CI::SoftwareDAG *this, const CI::SerialObjectPtrArray *a2, dispatch_queue_t *a3, CGRect a4, const CI::BitmapSampler *a5, int a6)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a5)
  {
    CI::Object::ref(a5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK2CI11SoftwareDAG7executeERKNS_20SerialObjectPtrArrayEP5Queue6CGRectPKNS_13BitmapSamplerEb_block_invoke;
  block[3] = &__block_descriptor_88_e5_v8__0l;
  block[4] = this;
  block[5] = a2;
  *&block[6] = x;
  *&block[7] = y;
  *&block[8] = width;
  *&block[9] = height;
  block[10] = a5;
  if (a6)
  {
    dispatch_sync(*a3, block);
  }

  else
  {
    Queue::execute_async(a3, block);
  }
}

void ___ZNK2CI11SoftwareDAG7executeERKNS_20SerialObjectPtrArrayEP5Queue6CGRectPKNS_13BitmapSamplerEb_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = CI::MainProgram::num_arguments(v2);
  v4 = v3;
  if (MEMORY[0x1EEE9AC00](v3, v5, v6, v7, v8, v9))
  {
    v13 = &v27[-64 * v4];
    do
    {
      *v13 = 0uLL;
      *(v13 + 1) = 0uLL;
      *(v13 + 4) = 0x100000000;
      *(v13 + 6) = 0;
      *(v13 + 7) = 0;
      v13 += 64;
    }

    while (v13 != v27);
    if (v4 >= 1)
    {
      v14 = 0;
      v15 = -80;
      v16 = &v27[-64 * v4];
      do
      {
        v17 = (*(*v2 + 40))(v2, v14);
        v18 = *(a1 + 40);
        if (v14 > 9)
        {
          v19 = (*(v18 + 16) + v15);
        }

        else
        {
          v19 = (v18 + 8 * v14 + 24);
        }

        v20 = *v19;
        switch(v17)
        {
          case 1:
          case 2:
          case 3:
          case 4:
            *v16 = v20;
            break;
          case 5:
          case 12:
          case 19:
          case 23:
            if ((*(*v20 + 16))(v20) != 66)
            {
              return;
            }

            *v16 = *(v20 + 28);
            break;
          case 6:
          case 13:
          case 20:
          case 24:
            if ((*(*v20 + 16))(v20) != 66)
            {
              return;
            }

            *v16 = *(v20 + 96);
            break;
          case 7:
          case 14:
          case 21:
          case 25:
            if ((*(*v20 + 16))(v20) != 66)
            {
              return;
            }

            v22 = *(v20 + 96);
            *(v16 + 2) = DWORD2(v22);
            *v16 = v22;
            break;
          case 8:
          case 15:
          case 22:
          case 26:
          case 27:
            if ((*(*v20 + 16))(v20) != 66)
            {
              return;
            }

            v21 = *(v20 + 96);
LABEL_20:
            *v16 = v21;
            break;
          case 40:
          case 44:
          case 45:
            v21 = *(v20 + 96);
            v23 = *(v20 + 112);
            *(v16 + 4) = *(v20 + 128);
            *(v16 + 1) = v23;
            goto LABEL_20;
          case 41:
            v24 = *(v20 + 64);
            *&v28 = *(v20 + 128);
            v25 = *(v20 + 112);
            *v16 = *(v20 + 96);
            *(v16 + 1) = v25;
            *(v16 + 2) = v28;
            *(v16 + 3) = v24;
            break;
          default:
            break;
        }

        ++v14;
        v16 += 64;
        v15 += 8;
      }

      while (v4 != v14);
    }
  }

  CI::SoftwareDAGDescriptor::execute(*(v2 + 13), &v27[-64 * v4], *(a1 + 80), v10, v11, v12, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v26 = *(a1 + 80);
  if (v26)
  {
    CI::Object::unref(v26);
  }
}

void CI::SoftwareDAGDescriptor::execute(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v49 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6);
  v24 = (&v46 - v23);
  v27 = v25 - v26;
  if (v27)
  {
    bzero(&v46 - v23, (v27 >> 2) & 0xFFFFFFFFFFFFFFF0);
  }

  v28 = a1[9] - a1[8];
  if (v28)
  {
    v29 = v28 >> 6;
    MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22);
    v31 = &v46 - 2 * v30;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22);
    v31 = &v46 - 10;
    v29 = 1;
  }

  v32 = v31;
  v33 = v31;
  do
  {
    *v33 = &unk_1F10302B8;
    v33[8] = 0;
    v33[9] = 0;
    *(v33 + 1) = 0uLL;
    *(v33 + 3) = 0uLL;
    *(v33 + 5) = 0uLL;
    v33 += 10;
    v32 += 10;
  }

  while (v33 != &v31[10 * v29]);
  v34 = a1[1];
  v47 = v29;
  CI::SWRendererPipeline::initSamplers(v34, a2, v31);
  v50.origin.x = a7;
  v50.origin.y = a8;
  v50.size.width = a9;
  v50.size.height = a10;
  if (CGRectIsNull(v50))
  {
    width = 0;
    height = 0;
    x = 0x7FFFFFFFLL;
    y = 0x7FFFFFFFLL;
  }

  else
  {
    v51.origin.x = a7;
    v51.origin.y = a8;
    v51.size.width = a9;
    v51.size.height = a10;
    if (CGRectIsInfinite(v51))
    {
      x = -2147483647;
      width = 0xFFFFFFFFLL;
      y = -2147483647;
      height = 0xFFFFFFFFLL;
    }

    else
    {
      v52.origin.x = a7;
      v52.origin.y = a8;
      v52.size.width = a9;
      v52.size.height = a10;
      v53 = CGRectInset(v52, 0.000001, 0.000001);
      v54 = CGRectIntegral(v53);
      width = v54.size.width;
      height = v54.size.height;
      y = v54.origin.y;
      x = v54.origin.x;
    }
  }

  v39 = height + y;
  if (height + y > y)
  {
    v40 = width + x;
    do
    {
      if (v40 > x)
      {
        v41 = x;
        do
        {
          v48[0] = v41;
          v48[1] = y;
          CI::SWRendererPipeline::execute(a1[1], a2, v24, v31, a3, v48);
          ++v41;
        }

        while (v40 > v41);
      }

      ++y;
    }

    while (v39 > y);
  }

  v42 = &v31[10 * v47 - 10];
  v43 = -80 * v47;
  v44 = v42;
  do
  {
    *v44 = &unk_1F10302B8;
    v45 = v44[1];
    if (v45)
    {
      CI::Object::unref(v45);
    }

    v44 -= 10;
    v42 -= 80;
    v43 += 80;
  }

  while (v43);
}

void sub_19CC444C4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 136);
  v5 = v1 + 80 * v4 - 80;
  v6 = -80 * v4;
  v7 = v5;
  while (1)
  {
    *v7 = &unk_1F10302B8;
    v8 = v7[1];
    if (v8)
    {
      CI::Object::unref(v8);
    }

    v7 -= 10;
    v5 -= 80;
    v6 += 80;
    if (!v6)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void Queue::execute_async(dispatch_queue_t *a1, void *a2)
{
  v4 = qos_class_self();
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, a2);
  dispatch_async(*a1, v5);

  _Block_release(v5);
}

uint64_t CI::DAGHelper::add_function_with_name(uint64_t this, char *a2)
{
  if (*(this + 40))
  {
    v2 = this;
    std::string::basic_string[abi:nn200100]<0>(__p, a2);
    v3 = std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::find<std::string>(v2 + 160, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    return (***(v2 + 8))(*(v2 + 8), *(v3 + 56), *(v3 + 64));
  }

  return this;
}

void sub_19CC44610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void **CI::SerialValArray<int>::append(void **result, int a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 1);
  if (*result >= v5)
  {
    v6 = *(result + 2) + v5;
    *(result + 1) = v6;
    result = malloc_type_realloc(result[2], 4 * v6 - 40, 0x100004052888210uLL);
    v3[2] = result;
    v4 = *v3;
  }

  if (v4 > 9)
  {
    v7 = v3[2] + 4 * v4 - 40;
  }

  else
  {
    v7 = v3 + v4 + 6;
  }

  *v7 = a2;
  ++*v3;
  return result;
}

uint64_t CI::SerialObjectPtrArray::append(uint64_t this, CI::Object *a2)
{
  v3 = this;
  v4 = *this;
  v5 = *(this + 4);
  if (*this >= v5)
  {
    v6 = *(this + 8) + v5;
    *(this + 4) = v6;
    this = malloc_type_realloc(*(this + 16), 8 * v6 - 80, 0x2004093837F09uLL);
    *(v3 + 16) = this;
    v4 = *v3;
  }

  if (v4 > 9)
  {
    v7 = (*(v3 + 16) + 8 * v4 - 80);
  }

  else
  {
    v7 = (v3 + 8 * v4 + 24);
  }

  *v7 = a2;
  if (a2)
  {
    this = CI::Object::ref(a2);
    v4 = *v3;
  }

  *v3 = v4 + 1;
  return this;
}

uint64_t *CI::DAGHelper::add_init_destcoord_function_info(uint64_t *this)
{
  if (this[5])
  {
    v1 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 1);
    v3 = argument_info;
    v4 = *(*(v1 + 8) + 88);
    v6 = 0;
    v5 = 4;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v4 + 32 * argument_info + 8, &v5, &v6);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v1 + 8), v3);
  }

  return this;
}

uint64_t CI::SoftwareDAGDescriptor::create_argument_info(CI::SoftwareDAGDescriptor *this, uint64_t a2)
{
  v6 = a2;
  v3 = *(this + 12);
  if (v3 >= *(this + 13))
  {
    v4 = std::vector<CI::SoftwareDAGDescriptor::ArgumentInfo>::__emplace_back_slow_path<unsigned long &>(this + 88, &v6);
  }

  else
  {
    *v3 = a2;
    v3[1] = 0;
    v4 = (v3 + 4);
    v3[2] = 0;
    v3[3] = 0;
  }

  *(this + 12) = v4;
  return ((v4 - *(this + 11)) >> 5) - 1;
}

uint64_t CI::SoftwareDAGDescriptor::ArgumentInfo::add(uint64_t result, int a2, uint64_t a3)
{
  v3 = result;
  v14 = a3;
  if (a2 <= 2)
  {
    if (a2 < 3)
    {
      LODWORD(v15[0]) = 0;
      return std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(result + 8, v15, &v14);
    }

    goto LABEL_25;
  }

  if (a2 <= 4)
  {
    if (a2 == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    goto LABEL_11;
  }

  if (a2 != 7)
  {
    if (a2 == 5)
    {
      v4 = 5;
LABEL_11:
      LODWORD(v15[0]) = v4;
      return std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(result + 8, v15, &v14);
    }

LABEL_25:
    abort();
  }

  v5 = *(result + 16);
  v6 = *(result + 24);
  if (v5 >= v6)
  {
    v8 = *(result + 8);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v15[4] = result + 8;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(result + 8, v12);
    }

    v13 = 24 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    *v13 = &unk_1F1030290;
    *(v13 + 8) = 0;
    *(v13 + 16) = 7;
    v15[2] = 24 * v9 + 24;
    std::vector<CI::SWRendererFunctionInputNode>::__swap_out_circular_buffer((result + 8), v15);
    v7 = *(v3 + 16);
    result = std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(v15);
  }

  else
  {
    *v5 = &unk_1F1030290;
    *(v5 + 8) = 0;
    *(v5 + 16) = 7;
    v7 = v5 + 24;
  }

  *(v3 + 16) = v7;
  return result;
}

void sub_19CC44E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *CI::SoftwareDAGDescriptor::create_function_info(uint64_t *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = this;
    v3 = (this[11] + 32 * a2 + 8);
    v5 = v3;
    v4 = this[3];
    if (v4 >= this[4])
    {
      this = std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction &,std::vector<CI::SWRendererFunctionInputNode> *&>((this + 2), this + 14, &v5);
    }

    else
    {
      CI::SWRendererFunctionNode::SWRendererFunctionNode(this[3], this[14], this[15], v3);
      this = (v4 + 64);
      v2[3] = v4 + 64;
    }

    v2[3] = this;
  }

  return this;
}

uint64_t *CI::DAGHelper::add_read_pixel_function_info(uint64_t *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (this[5])
  {
    v8 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 3);
    v10 = *(*(v8 + 8) + 88);
    v14 = a2;
    v13 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v10 + 32 * argument_info + 8, &v13, &v14);
    v11 = *(*(v8 + 8) + 88);
    v14 = a5;
    v13 = 4;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v11 + 32 * argument_info + 8, &v13, &v14);
    v12 = *(*(v8 + 8) + 88);
    v14 = a4;
    v13 = 5;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v12 + 32 * argument_info + 8, &v13, &v14);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v8 + 8), argument_info);
  }

  return this;
}

uint64_t *CI::DAGHelper::add_read_pixel_420_function_info(uint64_t *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (this[5])
  {
    v13 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 5);
    v15 = *(*(v13 + 8) + 88);
    v21 = a2;
    v20 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v15 + 32 * argument_info + 8, &v20, &v21);
    v16 = *(*(v13 + 8) + 88);
    v21 = a5;
    v20 = 4;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v16 + 32 * argument_info + 8, &v20, &v21);
    v17 = *(*(v13 + 8) + 88);
    v21 = a6;
    v20 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v17 + 32 * argument_info + 8, &v20, &v21);
    v18 = *(*(v13 + 8) + 88);
    v21 = a8;
    v20 = 4;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v18 + 32 * argument_info + 8, &v20, &v21);
    v19 = *(*(v13 + 8) + 88);
    v21 = a4;
    v20 = 5;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v19 + 32 * argument_info + 8, &v20, &v21);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v13 + 8), argument_info);
  }

  return this;
}

uint64_t *CI::DAGHelper::add_read_pixel_rgb_a_function_info(uint64_t *this, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (this[5])
  {
    v10 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 4);
    v12 = *(*(v10 + 8) + 88);
    v17 = a2;
    v16 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v12 + 32 * argument_info + 8, &v16, &v17);
    v13 = *(*(v10 + 8) + 88);
    v17 = a5;
    v16 = 4;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v13 + 32 * argument_info + 8, &v16, &v17);
    v14 = *(*(v10 + 8) + 88);
    v17 = a6;
    v16 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v14 + 32 * argument_info + 8, &v16, &v17);
    v15 = *(*(v10 + 8) + 88);
    v17 = a4;
    v16 = 5;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v15 + 32 * argument_info + 8, &v16, &v17);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v10 + 8), argument_info);
  }

  return this;
}

uint64_t *CI::DAGHelper::add_colour_inout_function_info(uint64_t *this, uint64_t a2)
{
  if (this[5])
  {
    v3 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 1);
    v5 = argument_info;
    v6 = *(*(v3 + 8) + 88);
    v8 = a2;
    v7 = 5;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v6 + 32 * argument_info + 8, &v7, &v8);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v3 + 8), v5);
  }

  return this;
}

uint64_t *CI::DAGHelper::add_write_pixel_function_info(uint64_t *this, uint64_t a2)
{
  if (this[5])
  {
    v3 = this;
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], 3);
    v5 = *(*(v3 + 8) + 88);
    v8 = 0;
    v7 = 0;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v5 + 32 * argument_info + 8, &v7, &v8);
    v6 = *(*(v3 + 8) + 88);
    v8 = a2;
    v7 = 5;
    std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v6 + 32 * argument_info + 8, &v7, &v8);
    CI::SoftwareDAGDescriptor::ArgumentInfo::add(*(*(v3 + 8) + 88) + 32 * argument_info, 7, 0);
    return CI::SoftwareDAGDescriptor::create_function_info(*(v3 + 8), argument_info);
  }

  return this;
}

uint64_t *CI::DAGHelper::add_function_info(uint64_t a1, uint64_t a2, CI::ColorKernelNode *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 6);
  if ((*(*v9 + 16))(v9) != 70)
  {
    (*(*v9 + 16))(v9);
  }

  if (*(v9 + 12) == 1)
  {
    v10 = CI::KernelArguments::count((v9 + 136));
  }

  else
  {
    v10 = *(v9 + 20);
  }

  if (*(a1 + 40))
  {
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(*(a1 + 8), v10);
  }

  else
  {
    argument_info = -1;
  }

  v12 = 0;
  v13 = argument_info;
  while (1)
  {
    v14 = *(v9 + 12) == 1 ? CI::KernelArguments::count((v9 + 136)) : *(v9 + 20);
    if (v12 >= v14)
    {
      return CI::SoftwareDAGDescriptor::create_function_info(*(a1 + 8), v13);
    }

    v15 = CI::ColorKernelNode::kernel_argument_type(a3, v12);
    v16 = v15;
    if (v15 <= 35)
    {
      if ((v15 - 1) < 2 || v15 == 4)
      {
        goto LABEL_43;
      }

      if (v15 == 30)
      {
        if (!*(a1 + 40))
        {
          goto LABEL_43;
        }

        v17 = *(*(a1 + 8) + 88);
        v31 = a5;
        v18 = v17 + 32 * v13;
        v30 = 5;
        goto LABEL_42;
      }

LABEL_34:
      CI::KernelArguments::is_uniform(v15);
      argument = CI::ColorKernelNode::get_argument(a3, v12);
      CI::SerialObjectPtrArray::append(a4, argument);
      v26 = *(a1 + 40);
      if (v26)
      {
        v27 = *v26;
        CI::SerialValArray<int>::append(v26, v16);
        if (*(a1 + 40))
        {
          v23 = *(*(a1 + 8) + 88);
          v31 = v27;
LABEL_37:
          v18 = v23 + 32 * v13;
          v30 = 4;
          goto LABEL_42;
        }
      }

      goto LABEL_43;
    }

    if (v15 > 37)
    {
      if (v15 == 38)
      {
        v24 = *(*(a1 + 8) + 88);
        v31 = 0;
        v18 = v24 + 32 * v13;
        goto LABEL_41;
      }

      if (v15 == 39)
      {
        if (*(v9 + 159) == 1)
        {
          v22 = *(a1 + 48);
          *(a1 + 48) = v22 + 1;
        }

        else
        {
          v22 = 0;
        }

        if (*(a1 + 40))
        {
          v28 = *(*(a1 + 8) + 88);
          v31 = v22;
          v18 = v28 + 32 * v13;
LABEL_41:
          v30 = 0;
LABEL_42:
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v18 + 8, &v30, &v31);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (v15 == 36)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_43;
      }

      v23 = *(*(a1 + 8) + 88);
      v31 = 0;
      goto LABEL_37;
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = *v19;
      CI::SerialValArray<int>::append(v19, 37);
      if (*(a1 + 40))
      {
        v21 = *(*(a1 + 8) + 88);
        v31 = v20;
        v30 = 4;
        std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v21 + 32 * v13 + 8, &v30, &v31);
      }
    }

    if (a4)
    {
      CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
    }

LABEL_43:
    ++v12;
  }
}

uint64_t *CI::DAGHelper::add_function_info(uint64_t a1, CI::SerialStringArray **a2, CI::ColorKernelNode *a3, uint64_t a4, std::string::size_type a5, uint64_t a6, uint64_t a7, char *a8, unsigned __int8 a9, void *a10)
{
  v13 = a3;
  v16 = *(a3 + 6);
  if ((*(*v16 + 16))(v16) != 70)
  {
    (*(*v16 + 16))(v16);
  }

  if (*(v16 + 12) == 1)
  {
    v17 = CI::KernelArguments::count((v16 + 136));
  }

  else
  {
    v17 = *(v16 + 20);
  }

  if (*(a1 + 40))
  {
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(*(a1 + 8), v17);
  }

  else
  {
    argument_info = -1;
  }

  v19 = 0;
  v81 = 0;
  v79 = a6 + 1;
  v80 = (a1 + 96);
  v20 = argument_info;
  v75 = &a8[a6];
  v76 = v13;
  v72 = &a8[a6 + 3];
  v78 = a4;
  v74 = argument_info;
  while (1)
  {
    v21 = *(v16 + 12) == 1 ? CI::KernelArguments::count((v16 + 136)) : *(v16 + 20);
    if (v19 >= v21)
    {
      break;
    }

    v22 = CI::ColorKernelNode::kernel_argument_type(v13, v19);
    v23 = v22;
    if (v22 <= 35)
    {
      if (v22 > 3)
      {
        if (v22 == 4)
        {
LABEL_36:
          v35 = a4;
          argument = CI::ColorKernelNode::get_argument(v13, v19);
          v38 = argument;
          if (v23 == 4)
          {
            (*(*argument + 240))(argument);
            CI::Node::rois_count(v38);
            v86[0] = CI::hash_image_node_id(v38, 0);
            v83.__r_.__value_.__r.__words[0] = v86;
            v39 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 136, v86);
            if (*(a1 + 40))
            {
              v40 = *(*(a1 + 8) + 88);
              v83.__r_.__value_.__r.__words[0] = v39[5];
              LODWORD(v82) = 0;
              std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v40 + 32 * v20 + 8, &v82, &v83);
            }

            a4 = v35;
LABEL_97:
            ++v81;
            goto LABEL_98;
          }

          a8[v79] = v81 + 48;
          v75[2] = 0;
          v43 = CI::replaceWithLeaf(a2, (a8 + 1), argument, v37);
          v44 = CI::hash_dag_node_id(v43, a7, a8);
          if ((*(*v43 + 240))(v43))
          {
            v45 = v72;
            do
            {
              v46 = (*(*v43 + 48))(v43, 0);
              *(v45 - 1) = 48;
              v43 = CI::replaceWithLeaf(a2, (a8 + 1), v46, v47);
              v44 = CI::hash_dag_node_id(v43, v44, a8);
              ++v45;
            }

            while (((*(*v43 + 240))(v43) & 1) != 0);
          }

          v48 = *v80;
          a4 = v78;
          v20 = v74;
          v13 = v76;
          if (!*v80)
          {
            goto LABEL_57;
          }

          v49 = (a1 + 96);
          do
          {
            v50 = v48[4];
            v51 = v50 >= v44;
            v52 = v50 < v44;
            if (v51)
            {
              v49 = v48;
            }

            v48 = v48[v52];
          }

          while (v48);
          if (v49 == v80 || v44 < v49[4])
          {
LABEL_57:
            v82 = v44;
            v86[0] = &v82;
            v53 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 112, &v82);
            v54 = v53;
            if (*(v53 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v83, v53[5], v53[6]);
            }

            else
            {
              v83 = *(v53 + 5);
            }

            std::vector<unsigned long>::vector[abi:nn200100](__p, v54 + 8);
            v85 = *(v54 + 88);
            if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v83;
            }

            else
            {
              v55 = v83.__r_.__value_.__r.__words[0];
            }

            CI::DAGHelper::add_function_with_name(a1, v55);
            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v83.__r_.__value_.__l.__size_ == 14 && *v83.__r_.__value_.__l.__data_ == 0x646165725F69635FLL && *(v83.__r_.__value_.__r.__words[0] + 6) == 0x6C657869705F6461)
              {
                goto LABEL_99;
              }

              if (v83.__r_.__value_.__l.__size_ != 20)
              {
                goto LABEL_87;
              }

              v58 = v83.__r_.__value_.__r.__words[0];
LABEL_74:
              v60 = v58->__r_.__value_.__r.__words[0];
              size = v58->__r_.__value_.__l.__size_;
              v62 = v58->__r_.__value_.__r.__words[2];
              v63 = v60 == 0x646165725F69635FLL && size == 0x725F6C657869705FLL;
              if (v63 && v62 == 1633641063)
              {
                CI::DAGHelper::add_read_pixel_rgb_a_function_info(a1, *__p[0], v56, *(__p[0] + 2), *(__p[0] + 3), *(__p[0] + 4));
              }

              else
              {
LABEL_87:
                CI::DAGHelper::add_read_pixel_420_function_info(a1, *__p[0], v56, *(__p[0] + 2), *(__p[0] + 3), *(__p[0] + 4), v57, *(__p[0] + 6));
              }
            }

            else
            {
              if (HIBYTE(v83.__r_.__value_.__r.__words[2]) != 14)
              {
                if (HIBYTE(v83.__r_.__value_.__r.__words[2]) == 20)
                {
                  v58 = &v83;
                  goto LABEL_74;
                }

                goto LABEL_87;
              }

              if (v83.__r_.__value_.__r.__words[0] != 0x646165725F69635FLL || *(v83.__r_.__value_.__r.__words + 6) != 0x6C657869705F6461)
              {
                goto LABEL_87;
              }

LABEL_99:
              CI::DAGHelper::add_read_pixel_function_info(a1, *__p[0], v56, *(__p[0] + 2), *(__p[0] + 3));
            }

            v66 = (*a10)++;
            v82 = v44;
            v86[0] = &v82;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v82) + 20) = v66;
            if (v85 == 1)
            {
              CI::DAGHelper::add_function_with_name(a1, "_ci_srgb_to_linear");
              v82 = v44;
              v86[0] = &v82;
              v67 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v82);
              CI::DAGHelper::add_colour_inout_function_info(a1, *(v67 + 20));
              v68 = (*a10)++;
              v82 = v44;
              v86[0] = &v82;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v82) + 20) = v68;
            }

            v86[0] = v44;
            std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>((a1 + 112), v86);
            a4 = v78;
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }
          }

          v86[0] = v44;
          v83.__r_.__value_.__r.__words[0] = v86;
          v69 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, v86);
          if (*(a1 + 40))
          {
            v70 = *(*(a1 + 8) + 88);
            v83.__r_.__value_.__r.__words[0] = *(v69 + a9 + 20);
            LODWORD(v86[0]) = 5;
            std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v70 + 32 * v74 + 8, v86, &v83);
          }

          a8[v79] = 0;
          goto LABEL_97;
        }

        if (v22 == 30)
        {
          if (!*(a1 + 40))
          {
            goto LABEL_98;
          }

          v27 = *(*(a1 + 8) + 88);
          v83.__r_.__value_.__r.__words[0] = a5;
          v28 = v27 + 32 * v20;
          v29 = 5;
LABEL_42:
          LODWORD(v86[0]) = v29;
LABEL_45:
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v28 + 8, v86, &v83);
          goto LABEL_98;
        }
      }

      else
      {
        if (v22 == 1)
        {
          goto LABEL_36;
        }

        if (v22 == 2)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_32;
    }

    if (v22 > 37)
    {
      if (v22 == 38)
      {
        if (!*(a1 + 40))
        {
          goto LABEL_98;
        }

        v42 = *(*(a1 + 8) + 88);
        v83.__r_.__value_.__r.__words[0] = 0;
        v28 = v42 + 32 * v20;
        LODWORD(v86[0]) = 0;
        goto LABEL_45;
      }

      if (v22 == 39)
      {
        goto LABEL_98;
      }

LABEL_32:
      CI::KernelArguments::is_uniform(v22);
      v30 = CI::ColorKernelNode::get_argument(v13, v19);
      CI::SerialObjectPtrArray::append(a4, v30);
      v31 = *(a1 + 40);
      if (v31)
      {
        v32 = a4;
        v33 = *v31;
        CI::SerialValArray<int>::append(v31, v23);
        if (*(a1 + 40))
        {
          v34 = *(*(a1 + 8) + 88);
          v83.__r_.__value_.__r.__words[0] = v33;
          LODWORD(v86[0]) = 4;
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v34 + 32 * v20 + 8, v86, &v83);
        }

        a4 = v32;
      }

      goto LABEL_98;
    }

    if (v22 == 36)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_98;
      }

      v41 = *(*(a1 + 8) + 88);
      v83.__r_.__value_.__r.__words[0] = 0;
      v28 = v41 + 32 * v20;
      v29 = 4;
      goto LABEL_42;
    }

    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = *v24;
      CI::SerialValArray<int>::append(v24, 37);
      if (*(a1 + 40))
      {
        v26 = *(*(a1 + 8) + 88);
        v83.__r_.__value_.__r.__words[0] = v25;
        LODWORD(v86[0]) = 4;
        std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v26 + 32 * v20 + 8, v86, &v83);
      }
    }

    if (a4)
    {
      CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
    }

LABEL_98:
    ++v19;
  }

  if (*(a1 + 40))
  {
    (***(a1 + 8))(*(a1 + 8), *(v16 + 48), *(v16 + 56));
  }

  return CI::SoftwareDAGDescriptor::create_function_info(*(a1 + 8), v20);
}

const char *CI::replaceWithLeaf(CI::SerialStringArray **this, const CI::ProgramNode *a2, const char *a3, const CI::Node *a4)
{
  IndexOfString = CI::SerialStringArray::firstIndexOfString(this[7], a2);
  if (IndexOfString == -1)
  {
    return a3;
  }

  v7 = *(*this + 6);

  return v7(this, IndexOfString);
}

void CI::DAGHelper::TextureReadFunction::~TextureReadFunction(CI::DAGHelper::TextureReadFunction *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t *CI::DAGHelper::add_function_info(CI::SoftwareDAGDescriptor **this, const CI::ProgramNode *a2, const CI::GeneralKernelNode *a3, CI::Object **a4, uint64_t a5, unint64_t a6)
{
  v10 = *(a3 + 6);
  (*(*v10 + 16))(v10);
  if (*(v10 + 12) == 1)
  {
    v11 = CI::KernelArguments::count((v10 + 136));
  }

  else
  {
    v11 = *(v10 + 20);
  }

  if (this[5])
  {
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(this[1], v11);
  }

  else
  {
    argument_info = -1;
  }

  v13 = 0;
  v14 = argument_info;
  while (1)
  {
    v15 = *(v10 + 12) == 1 ? CI::KernelArguments::count((v10 + 136)) : *(v10 + 20);
    if (v13 >= v15)
    {
      return CI::SoftwareDAGDescriptor::create_function_info(this[1], v14);
    }

    v16 = CI::ColorKernelNode::kernel_argument_type(a3, v13);
    v17 = v16;
    if (v16 <= 35)
    {
      if (v16 > 3)
      {
        if (v16 == 4)
        {
          goto LABEL_61;
        }

        if (v16 == 30)
        {
          if (!this[5])
          {
            goto LABEL_61;
          }

          v23 = *(this[1] + 11);
          *&v46.f64[0] = a5;
          v24 = v23 + 32 * v14;
          v25 = 5;
LABEL_57:
          v45[0] = v25;
LABEL_58:
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v24 + 8, v45, &v46);
          goto LABEL_61;
        }
      }

      else
      {
        if (v16 == 1)
        {
          goto LABEL_61;
        }

        if (v16 == 2)
        {
          v18 = *(a3 + 7);
          if (v13 > 9)
          {
            v19 = (*(v18 + 16) + 8 * v13 - 80);
          }

          else
          {
            v19 = (v18 + 8 * v13 + 24);
          }

          v30 = *v19;
          v47.f64[0] = 0.0;
          v46 = 0x3FF0000000000000uLL;
          v47.f64[1] = 1.0;
          v48 = 0uLL;
          v31 = CI::ProgramNode::child_depth(a2, 0);
          if (v31 - 1 > a6)
          {
            v32 = ~a6 + v31;
            do
            {
              if ((*(*v30 + 16))(v30) == 34)
              {
                v33 = vaddq_f64(v48, vmlaq_n_f64(vmulq_n_f64(v47, v30[12]), v46, v30[11]));
                v34 = vmlaq_n_f64(vmulq_n_f64(v47, v30[10]), v46, v30[9]);
                v46 = vmlaq_n_f64(vmulq_n_f64(v47, v30[8]), v46, v30[7]);
                v47 = v34;
                v48 = v33;
              }

              else
              {
                v35 = (*(*v30 + 16))(v30);
                v36 = *v30;
                if (v35 == 53)
                {
                  (*(v36 + 424))(v30);
                }

                else if ((*(v36 + 16))(v30) != 36)
                {
                  (*(*v30 + 16))(v30);
                }
              }

              v30 = (*(*v30 + 48))(v30, 0);
              --v32;
            }

            while (v32);
          }

          v37 = (*(*a2 + 48))(a2, 0);
          if (*(*v37 + 16))(v37) == 60 && (*(v37 + 144))
          {
            v38 = *(v37 + 140);
            if (CI_INTERMEDIATE_SRGB_TEXTURES() && (*(*this[2] + 592))(this[2], v38, 1))
            {
              *(v37 + 144) |= 4u;
            }

            else
            {
              v41 = CI::name_for_format(v38);
              x_log("Cannot use sRGB texture binding with format %s for sampler %d in kernel '%s'.\n", v41, v13, *(v10 + 24));
            }
          }

          operator new();
        }
      }

      goto LABEL_31;
    }

    if (v16 > 37)
    {
      if (v16 == 38)
      {
        if (!this[5])
        {
          goto LABEL_61;
        }

        v29 = *(this[1] + 11);
        v46.f64[0] = 0.0;
        v24 = v29 + 32 * v14;
        v45[0] = 0;
        goto LABEL_58;
      }

      if (v16 == 39)
      {
        goto LABEL_61;
      }

LABEL_31:
      CI::KernelArguments::is_uniform(v16);
      v26 = *(a3 + 7);
      if (v13 > 9)
      {
        v27 = (*(v26 + 16) + 8 * v13 - 80);
      }

      else
      {
        v27 = (v26 + 8 * v13 + 24);
      }

      CI::SerialObjectPtrArray::append(a4, *v27);
      v39 = this[5];
      if (v39)
      {
        *&v40 = *v39;
        CI::SerialValArray<int>::append(v39, v17);
        if (this[5])
        {
          v28 = *(this[1] + 11);
          v46.f64[0] = v40;
LABEL_56:
          v24 = v28 + 32 * v14;
          v25 = 4;
          goto LABEL_57;
        }
      }

      goto LABEL_61;
    }

    if (v16 == 36)
    {
      if (!this[5])
      {
        goto LABEL_61;
      }

      v28 = *(this[1] + 11);
      v46.f64[0] = 0.0;
      goto LABEL_56;
    }

    v20 = this[5];
    if (v20)
    {
      *&v21 = *v20;
      CI::SerialValArray<int>::append(v20, 37);
      if (this[5])
      {
        v22 = *(this[1] + 11);
        v46.f64[0] = v21;
        v45[0] = 4;
        std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v22 + 32 * v14 + 8, v45, &v46);
      }
    }

    if (a4)
    {
      CI::SerialObjectPtrArray::append(a4, a4[3]);
    }

LABEL_61:
    ++v13;
  }
}

int8x16_t CI::Affine::inverse@<Q0>(CI::Affine *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4.f64[0] = *(this + 3);
  v5 = *(this + 8);
  v6 = vmuld_lane_f64(-v5.f64[0], v5, 1) + *this * v4.f64[0];
  if (fabs(v6) >= 1.0e-10)
  {
    v8 = 1.0 / v6;
    *(a2 + 8) = v8 * -v5.f64[0];
    *(a2 + 16) = -(v5.f64[1] * v8);
    v4.f64[1] = v3;
    v9 = vmulq_n_f64(v4, v8);
    v10 = *(this + 2);
    v11 = vmulq_n_f64(v5, v8);
    v12 = vmulq_f64(v10, vnegq_f64(v9));
    v13 = vmlaq_f64(vextq_s8(v12, v12, 8uLL), v10, v11);
    *a2 = v9.f64[0];
    *(a2 + 24) = v9.f64[1];
    result = vextq_s8(v13, v13, 8uLL);
    *(a2 + 32) = result;
  }

  else
  {
    x_log("Singular matrix cannot be inverted!\n");
    result.i64[0] = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t CI::SoftwareDAGDescriptor::create_sampler_builder_function_info(CI::SoftwareDAGDescriptor *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = (*(this + 11) + 32 * a2 + 8);
  v7 = v3;
  v4 = *(this + 9);
  if (v4 >= *(this + 10))
  {
    v5 = std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction const&,std::vector<CI::SWRendererFunctionInputNode> *&>(this + 64, this + 16, &v7);
  }

  else
  {
    CI::SWRendererFunctionNode::SWRendererFunctionNode(*(this + 9), *(this + 16), *(this + 17), v3);
    v5 = v4 + 64;
    *(this + 9) = v4 + 64;
  }

  *(this + 9) = v5;
  return ((v5 - *(this + 8)) >> 6) - 1;
}

uint64_t *CI::DAGHelper::add_function_info(uint64_t a1, CI::SerialStringArray **a2, CI::ColorKernelNode *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, unsigned __int8 a9, void *a10)
{
  v11 = a3;
  v14 = *(a3 + 6);
  if ((*(*v14 + 16))(v14) != 72)
  {
    (*(*v14 + 16))(v14);
  }

  if (*(v14 + 12) == 1)
  {
    v15 = CI::KernelArguments::count((v14 + 136));
  }

  else
  {
    v15 = *(v14 + 20);
  }

  if (*(a1 + 40))
  {
    argument_info = CI::SoftwareDAGDescriptor::create_argument_info(*(a1 + 8), v15);
  }

  else
  {
    argument_info = -1;
  }

  v17 = 0;
  v18 = 0;
  *v90 = argument_info;
  v86 = v11;
  v87 = a6 + 1;
  v88 = (a1 + 96);
  while (1)
  {
    v19 = *(v14 + 12) == 1 ? CI::KernelArguments::count((v14 + 136)) : *(v14 + 20);
    if (v17 >= v19)
    {
      break;
    }

    v20 = CI::ColorKernelNode::kernel_argument_type(v11, v17);
    v22 = v20;
    if (v20 <= 35)
    {
      if (v20 > 3)
      {
        if (v20 == 4)
        {
LABEL_35:
          v33 = *(v11 + 7);
          if (v17 > 9)
          {
            v34 = (*(v33 + 16) + 8 * v17 - 80);
          }

          else
          {
            v34 = (v33 + 8 * v17 + 24);
          }

          v37 = *v34;
          if (v20 == 4)
          {
            (*(*v37 + 240))(v37);
            CI::Node::rois_count(v37);
            v91[0] = CI::hash_image_node_id(v37, 0);
            *v93 = v91;
            v38 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 136, v91);
            if (*(a1 + 40))
            {
              v39 = *(*(a1 + 8) + 88);
              *v93 = v38[5];
              LODWORD(v92) = 0;
              std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v39 + 32 * *v90 + 8, &v92, v93);
            }

LABEL_121:
            v11 = v86;
            v18 = (v18 + 1);
            goto LABEL_122;
          }

          a8[v87] = v18 + 48;
          a8[a6 + 2] = 0;
          v40 = CI::replaceWithLeaf(a2, (a8 + 1), v37, v21);
          v41 = CI::hash_dag_node_id(v40, a7, a8);
          if ((*(*v40 + 240))(v40))
          {
            v42 = &a8[a6 + 3];
            do
            {
              v43 = (*(*v40 + 48))(v40, 0);
              *(v42 - 1) = 48;
              v40 = CI::replaceWithLeaf(a2, (a8 + 1), v43, v44);
              v41 = CI::hash_dag_node_id(v40, v41, a8);
              ++v42;
            }

            while (((*(*v40 + 240))(v40) & 1) != 0);
          }

          v45 = *v88;
          if (!*v88)
          {
            goto LABEL_58;
          }

          v46 = (a1 + 96);
          do
          {
            v47 = v45[4];
            v48 = v47 >= v41;
            v49 = v47 < v41;
            if (v48)
            {
              v46 = v45;
            }

            v45 = v45[v49];
          }

          while (v45);
          if (v46 == v88 || v41 < v46[4])
          {
LABEL_58:
            v92 = v41;
            v91[0] = &v92;
            v50 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 112, &v92);
            v51 = v50;
            if (*(v50 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(v93, v50[5], v50[6]);
            }

            else
            {
              *v93 = *(v50 + 5);
              *&v93[16] = v50[7];
            }

            std::vector<unsigned long>::vector[abi:nn200100](&v93[24], v51 + 8);
            v95 = *(v51 + 88);
            if (v93[23] >= 0)
            {
              v65 = v93;
            }

            else
            {
              v65 = *v93;
            }

            CI::DAGHelper::add_function_with_name(a1, v65);
            if ((v93[23] & 0x80000000) != 0)
            {
              if (*&v93[8] == 14 && **v93 == 0x646165725F69635FLL && *(*v93 + 6) == 0x6C657869705F6461)
              {
                goto LABEL_123;
              }

              if (*&v93[8] != 20)
              {
                goto LABEL_111;
              }

              v68 = *v93;
LABEL_96:
              v70 = *v68;
              v71 = *(v68 + 1);
              v72 = *(v68 + 4);
              v73 = v70 == 0x646165725F69635FLL && v71 == 0x725F6C657869705FLL;
              if (v73 && v72 == 1633641063)
              {
                CI::DAGHelper::add_read_pixel_rgb_a_function_info(a1, **&v93[24], v66, *(*&v93[24] + 16), *(*&v93[24] + 24), *(*&v93[24] + 32));
              }

              else
              {
LABEL_111:
                CI::DAGHelper::add_read_pixel_420_function_info(a1, **&v93[24], v66, *(*&v93[24] + 16), *(*&v93[24] + 24), *(*&v93[24] + 32), v67, *(*&v93[24] + 48));
              }
            }

            else
            {
              if (v93[23] != 14)
              {
                if (v93[23] == 20)
                {
                  v68 = v93;
                  goto LABEL_96;
                }

                goto LABEL_111;
              }

              if (*v93 != 0x646165725F69635FLL || *&v93[6] != 0x6C657869705F6461)
              {
                goto LABEL_111;
              }

LABEL_123:
              CI::DAGHelper::add_read_pixel_function_info(a1, **&v93[24], v66, *(*&v93[24] + 16), *(*&v93[24] + 24));
            }

            v77 = (*a10)++;
            v92 = v41;
            v91[0] = &v92;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v92) + 20) = v77;
            if (v95 == 1)
            {
              CI::DAGHelper::add_function_with_name(a1, "_ci_srgb_to_linear");
              v92 = v41;
              v91[0] = &v92;
              v78 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v92);
              CI::DAGHelper::add_colour_inout_function_info(a1, *(v78 + 20));
              v79 = (*a10)++;
              v92 = v41;
              v91[0] = &v92;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, &v92) + 20) = v79;
            }

            v91[0] = v41;
            std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>((a1 + 112), v91);
            if (*&v93[24])
            {
              v94.f64[0] = *&v93[24];
              operator delete(*&v93[24]);
            }

            if ((v93[23] & 0x80000000) != 0)
            {
              operator delete(*v93);
            }
          }

          v91[0] = v41;
          *v93 = v91;
          v80 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1 + 88, v91);
          if (*(a1 + 40))
          {
            v81 = *(*(a1 + 8) + 88);
            *v93 = *(v80 + a9 + 20);
            LODWORD(v91[0]) = 5;
            std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v81 + 32 * *v90 + 8, v91, v93);
          }

          a8[v87] = 0;
          goto LABEL_121;
        }

        if (v20 == 30)
        {
          if (!*(a1 + 40))
          {
            goto LABEL_122;
          }

          v28 = *(*(a1 + 8) + 88);
          *v93 = a5;
          v29 = v28 + 32 * *v90;
          v30 = 5;
LABEL_39:
          LODWORD(v91[0]) = v30;
LABEL_42:
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v29 + 8, v91, v93);
          goto LABEL_122;
        }
      }

      else
      {
        if (v20 == 1)
        {
          goto LABEL_35;
        }

        if (v20 == 2)
        {
          v23 = *(v11 + 7);
          if (v17 > 9)
          {
            v24 = (*(v23 + 16) + 8 * v17 - 80);
          }

          else
          {
            v24 = (v23 + 8 * v17 + 24);
          }

          v52 = *v24;
          *&v93[16] = 0;
          *v93 = 0x3FF0000000000000uLL;
          *&v93[24] = 0x3FF0000000000000;
          v94 = 0uLL;
          v53 = CI::ProgramNode::child_depth(a2, v18);
          if (v53 - 1 > a6)
          {
            v54 = ~a6 + v53;
            do
            {
              if ((*(*v52 + 16))(v52) == 34)
              {
                v55 = vaddq_f64(v94, vmlaq_n_f64(vmulq_n_f64(*&v93[16], v52[12]), *v93, v52[11]));
                v56 = vmlaq_n_f64(vmulq_n_f64(*&v93[16], v52[10]), *v93, v52[9]);
                *v93 = vmlaq_n_f64(vmulq_n_f64(*&v93[16], v52[8]), *v93, v52[7]);
                *&v93[16] = v56;
                v94 = v55;
              }

              else
              {
                v57 = (*(*v52 + 16))(v52);
                v58 = *v52;
                if (v57 == 53)
                {
                  (*(v58 + 424))(v52);
                }

                else if ((*(v58 + 16))(v52) != 36)
                {
                  (*(*v52 + 16))(v52);
                }
              }

              v52 = (*(*v52 + 48))(v52, 0);
              --v54;
            }

            while (v54);
          }

          v63 = (*(*a2 + 6))(a2, v18);
          if (*(*v63 + 16))(v63) == 60 && (*(v63 + 144))
          {
            v64 = *(v63 + 140);
            if (CI_INTERMEDIATE_SRGB_TEXTURES() && (*(**(a1 + 16) + 592))(*(a1 + 16), v64, 1))
            {
              *(v63 + 144) |= 4u;
            }

            else
            {
              v75 = CI::name_for_format(v64);
              x_log("Cannot use sRGB texture binding with format %s for sampler %d in kernel '%s'.\n", v75, v17, *(v14 + 24));
            }
          }

          operator new();
        }
      }

      goto LABEL_33;
    }

    if (v20 > 37)
    {
      if (v20 == 38)
      {
        if (!*(a1 + 40))
        {
          goto LABEL_122;
        }

        v36 = *(*(a1 + 8) + 88);
        *v93 = 0;
        v29 = v36 + 32 * *v90;
        LODWORD(v91[0]) = 0;
        goto LABEL_42;
      }

      if (v20 == 39)
      {
        goto LABEL_122;
      }

LABEL_33:
      CI::KernelArguments::is_uniform(v20);
      v31 = *(v11 + 7);
      if (v17 > 9)
      {
        v32 = (*(v31 + 16) + 8 * v17 - 80);
      }

      else
      {
        v32 = (v31 + 8 * v17 + 24);
      }

      CI::SerialObjectPtrArray::append(a4, *v32);
      v59 = *(a1 + 40);
      if (v59)
      {
        v60 = v11;
        v61 = *v59;
        CI::SerialValArray<int>::append(v59, v22);
        if (*(a1 + 40))
        {
          v62 = *(*(a1 + 8) + 88);
          *v93 = v61;
          LODWORD(v91[0]) = 4;
          std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v62 + 32 * *v90 + 8, v91, v93);
        }

        v11 = v60;
      }

      goto LABEL_122;
    }

    if (v20 == 36)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_122;
      }

      v35 = *(*(a1 + 8) + 88);
      *v93 = 0;
      v29 = v35 + 32 * *v90;
      v30 = 4;
      goto LABEL_39;
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = *v25;
      CI::SerialValArray<int>::append(v25, 37);
      if (*(a1 + 40))
      {
        v27 = *(*(a1 + 8) + 88);
        *v93 = v26;
        LODWORD(v91[0]) = 4;
        std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(v27 + 32 * *v90 + 8, v91, v93);
      }
    }

    if (a4)
    {
      CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
    }

LABEL_122:
    ++v17;
  }

  if (*(a1 + 40))
  {
    (***(a1 + 8))(*(a1 + 8), *(v14 + 48), *(v14 + 56));
  }

  return CI::SoftwareDAGDescriptor::create_function_info(*(a1 + 8), v90[0]);
}

uint64_t CI::DAGHelper::color_output_for_kernel(CI::DAGHelper *this, const CI::Kernel *a2, unint64_t *a3)
{
  v12 = 0;
  if (*(a2 + 4))
  {
    v4 = *(a2 + 15);
    v5 = *(a2 + 16);
    v6 = (*a3)++;
    if (v4 == 2 && v5 == 2)
    {
      for (i = 0; i != 4; ++i)
      {
        CI::DAGHelper::add_function_with_name(this, CI::DAGHelper::color_output_for_kernel(CI::Kernel const*,unsigned long &)::sGroupOutputFunctions[i]);
        CI::DAGHelper::add_colour_inout_function_info(this, v6);
        v10 = (*a3)++;
        *(&v12 + i) = v10;
      }
    }

    else
    {
      LOWORD(v12) = v6;
    }
  }

  return v12;
}

uint64_t CI::DAGHelper::build_dag(CI::DAGHelper *this, const CI::Node *a2, const CI::ProgramNode *a3, CI::SerialObjectPtrArray *a4, uint64_t a5)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    v11 = *(a3 + 9) | ((*(**(this + 2) + 280))(*(this + 2)) << 32);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "build_dag", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v12 = (*(**(this + 2) + 280))(*(this + 2));
  TimerBase::TimerBase(buf, v12, *(a3 + 9), "build_dag", 5);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = a5 + 1;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke;
  v47[3] = &unk_1E75C15A8;
  v47[6] = a5;
  v47[7] = a3;
  v47[8] = a4;
  v47[4] = &v48;
  v47[5] = this;
  CI::ProgramNode::traverse_dag_preorder(a3, a2, v47, &__block_literal_global_0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3812000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = &unk_19D0E11CF;
  v46 = 0;
  if (*(a3 + 136) == 1)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_22;
    v39[3] = &unk_1E75C15F0;
    v39[6] = this;
    v39[7] = a5;
    v39[8] = a3;
    v39[9] = a4;
    v39[4] = &v48;
    v39[5] = &v40;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v39, 0);
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_2_23;
    v38[3] = &__block_descriptor_56_e33_v60__0_v8r_v16i24i28_v32Q40_48i56l;
    v38[4] = this;
    v38[5] = a3;
    v38[6] = a4;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v38, &__block_literal_global_26);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_4;
    v37[3] = &__block_descriptor_48_e33_v60__0_v8r_v16i24i28_v32Q40_48i56l;
    v37[4] = this;
    v37[5] = a5;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v37, &__block_literal_global_30);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_6;
  v36[3] = &unk_1E75C15F0;
  v36[6] = this;
  v36[7] = a5;
  v36[8] = a3;
  v36[9] = a4;
  v36[4] = &v48;
  v36[5] = &v40;
  CI::ProgramNode::traverse_dag(a3, a2, v36, &__block_literal_global_32);
  v13 = v41;
  if (!*(v41 + 24) && *(this + 16))
  {
    v14 = *(this + 14);
    v35 = *(v14 + 32);
    if (*(v14 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *(v14 + 40), *(v14 + 48));
    }

    else
    {
      v32 = *(v14 + 40);
    }

    std::vector<unsigned long>::vector[abi:nn200100](__p, (v14 + 64));
    v34 = *(v14 + 88);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v32;
    }

    else
    {
      v15 = v32.__r_.__value_.__r.__words[0];
    }

    CI::DAGHelper::add_function_with_name(this, v15);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v32.__r_.__value_.__l.__size_ != 14 || (*v32.__r_.__value_.__l.__data_ == 0x646165725F69635FLL ? (v19 = *(v32.__r_.__value_.__r.__words[0] + 6) == 0x6C657869705F6461) : (v19 = 0), !v19))
      {
        if (v32.__r_.__value_.__l.__size_ != 20)
        {
          goto LABEL_40;
        }

        v18 = v32.__r_.__value_.__r.__words[0];
        goto LABEL_27;
      }
    }

    else
    {
      if (HIBYTE(v32.__r_.__value_.__r.__words[2]) != 14)
      {
        if (HIBYTE(v32.__r_.__value_.__r.__words[2]) != 20)
        {
          goto LABEL_40;
        }

        v18 = &v32;
LABEL_27:
        v20 = v18->__r_.__value_.__r.__words[0];
        size = v18->__r_.__value_.__l.__size_;
        v22 = v18->__r_.__value_.__r.__words[2];
        if (v20 == 0x646165725F69635FLL && size == 0x725F6C657869705FLL && v22 == 1633641063)
        {
          CI::DAGHelper::add_read_pixel_rgb_a_function_info(this, *__p[0], v16, *(__p[0] + 2), *(__p[0] + 3), *(__p[0] + 4));
LABEL_41:
          v26 = v49[3];
          v49[3] = v26 + 1;
          v53 = &v35;
          *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 88, &v35) + 20) = v26;
          if (v34 == 1)
          {
            CI::DAGHelper::add_function_with_name(this, "_ci_srgb_to_linear");
            v53 = &v35;
            v27 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 88, &v35);
            CI::DAGHelper::add_colour_inout_function_info(this, *(v27 + 20));
            v28 = v49[3];
            v49[3] = v28 + 1;
            v53 = &v35;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 88, &v35) + 20) = v28;
          }

          std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>(this + 14, &v35);
          v53 = &v35;
          v29 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 88, &v35);
          v41[6] = v29[5];
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          v13 = v41;
          goto LABEL_48;
        }

LABEL_40:
        CI::DAGHelper::add_read_pixel_420_function_info(this, *__p[0], v16, *(__p[0] + 2), *(__p[0] + 3), *(__p[0] + 4), v17, *(__p[0] + 6));
        goto LABEL_41;
      }

      if (v32.__r_.__value_.__r.__words[0] != 0x646165725F69635FLL || *(v32.__r_.__value_.__r.__words + 6) != 0x6C657869705F6461)
      {
        goto LABEL_40;
      }
    }

    CI::DAGHelper::add_read_pixel_function_info(this, *__p[0], v16, *(__p[0] + 2), *(__p[0] + 3));
    goto LABEL_41;
  }

LABEL_48:
  v30 = v13[6];
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v48, 8);
  CI::DAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer(buf);
  return v30;
}

void sub_19CC47CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 192), 8);
  CI::DAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer((v54 - 160));
  _Unwind_Resume(a1);
}

void ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke(void *a1, CI::Object *this, int a3, int a4, int a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v14 = a1[5];
    v26 = this;
    v27 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v15 = (*(*this + 336))(this, *(v14 + 16));
    v27 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = this;
    }

    if ((*(*v16 + 16))(v16) == 58)
    {
      v18 = *(v16 + 6);
      if (a6)
      {
        v25 = CI::hash_dag_node_id(a6, a7, 0);
        v28 = &v25;
        v19 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 64, &v25) + 5;
      }

      else
      {
        v19 = a1 + 6;
      }

      v20 = *v19;
      if (*(v14 + 40))
      {
        (***(v14 + 8))(*(v14 + 8), *(v18 + 48), *(v18 + 56));
      }

      CI::DAGHelper::add_function_info(v14, v17, v16, a1[8], v20);
      v21 = CI::hash_dag_node_id(this, a7, a8);
      v22 = CI::hash_dag_node_id(this, v21, 0);
      v23 = *(a1[4] + 8);
      v24 = *(v23 + 24);
      *(v23 + 24) = v24 + 1;
      v25 = v22;
      v28 = &v25;
      std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 64, &v25)[5] = v24;
    }

    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v26);
  }
}

void sub_19CC47F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CI::ConvertedNodeRAII::~ConvertedNodeRAII(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_22(uint64_t result, const CI::GeneralKernelNode *a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v14 = result;
    v15 = *(result + 48);
    result = (*(*a2 + 16))(a2);
    if (result == 59)
    {
      result = (*(*a2 + 312))(a2);
      if ((result & 1) == 0)
      {
        v16 = CI::hash_dag_node_id(a2, a7, a8);
        v17 = *(a2 + 6);
        if (a6)
        {
          v21 = CI::hash_dag_node_id(a6, a7, 0);
          v22 = &v21;
          v18 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 64, &v21) + 5;
        }

        else
        {
          v18 = (v14 + 56);
        }

        v19 = *v18;
        if (*(v15 + 40))
        {
          (***(v15 + 8))(*(v15 + 8), *(v17 + 6), *(v17 + 7));
        }

        CI::DAGHelper::add_function_info(v15, *(v14 + 64), a2, *(v14 + 72), v19, a4);
        v20 = CI::DAGHelper::color_output_for_kernel(v15, v17, (*(*(v14 + 32) + 8) + 24));
        v21 = v16;
        v22 = &v21;
        std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v21)[5] = v20;
        v21 = v16;
        v22 = &v21;
        result = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v21);
        *(*(*(v14 + 40) + 8) + 48) = *(result + 40);
      }
    }
  }

  return result;
}

unint64_t ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_2_23(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (a9 != -1)
  {
    v12 = *(result + 32);
    (*(**(result + 40) + 48))(*(result + 40), a9);
    if (a3 && !(*(*a3 + 200))(a3, a5))
    {
      v13 = 0;
    }

    else
    {
      v13 = a9;
    }

    result = CI::hash_image_node_id(a2, v13);
    v14 = *(v12 + 144);
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v12 + 144;
    do
    {
      v16 = *(v14 + 32);
      v17 = v16 >= result;
      v18 = v16 < result;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *(v14 + 8 * v18);
    }

    while (v14);
    if (v15 == v12 + 144 || result < *(v15 + 32))
    {
LABEL_14:
      CI::DAGHelper::add_arguments_for_image_node(v12);
    }
  }

  return result;
}

unint64_t ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a9 != -1)
  {
    v13 = result;
    v14 = *(result + 32);
    if (!a3 || (result = (*(*a3 + 200))(a3, a5), result))
    {
      result = CI::hash_dag_node_id(a2, a7, a8);
      v15 = result;
      v16 = *(v14 + 96);
      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = v14 + 96;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= result;
        v20 = v18 < result;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 == v14 + 96 || result < *(v17 + 32))
      {
LABEL_12:
        v21 = (*(*a2 + 16))(a2);
        v22 = *a2;
        if (v21 == 54)
        {
          v23 = (*(v22 + 216))(a2);
          v25 = CI::format_from_IOSurface(*(a2 + 56), v24);
        }

        else
        {
          if ((*(v22 + 16))(a2) != 52)
          {
            is_ycc_biplanar = 0;
            v26 = 0;
            goto LABEL_18;
          }

          v23 = (*(*a2 + 216))(a2);
          v25 = *(a2 + 152);
        }

        v26 = v23;
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v25);
LABEL_18:
        v44 = CI::hash_image_node_id(a2, a9);
        v46.__r_.__value_.__r.__words[0] = &v44;
        v39 = v14;
        v28 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v14 + 136, &v44);
        v30 = v28[5];
        v29 = v28[6];
        v31 = v28[7];
        v32 = v28[8];
        v37 = *(v28 + 9);
        v38 = *(v28 + 88);
        if (a6)
        {
          v43[0] = CI::hash_dag_node_id(a6, a7, 0);
          v46.__r_.__value_.__r.__words[0] = v43;
          v13 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v39 + 64, v43);
        }

        v33 = v13[5];
        if ((v26 != 2) | is_ycc_biplanar & 1)
        {
          v46.__r_.__value_.__r.__words[0] = v30;
          v46.__r_.__value_.__l.__size_ = v29;
          v46.__r_.__value_.__r.__words[2] = v33;
          __p = v31;
          if (v26 >= 2)
          {
            v48 = v32;
            v49 = v37;
            std::vector<unsigned long>::vector[abi:nn200100](v43, &v46, 7uLL);
            std::string::basic_string[abi:nn200100]<0>(v41, "_ci_read_pixel_420");
          }

          else
          {
            std::vector<unsigned long>::vector[abi:nn200100](v43, &v46, 4uLL);
            std::string::basic_string[abi:nn200100]<0>(v41, "_ci_read_pixel");
          }

          CI::DAGHelper::TextureReadFunction::TextureReadFunction(&v46, v41, v43);
          v35 = v39;
          v40 = v15;
          v45 = &v40;
          v36 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v39 + 112, &v40);
          CI::DAGHelper::TextureReadFunction::operator=((v36 + 5), &v46);
        }

        else
        {
          v46.__r_.__value_.__r.__words[0] = v30;
          v46.__r_.__value_.__l.__size_ = v29;
          v46.__r_.__value_.__r.__words[2] = v33;
          __p = v31;
          v48 = v32;
          *&v49 = v37;
          std::vector<unsigned long>::vector[abi:nn200100](v43, &v46, 6uLL);
          std::string::basic_string[abi:nn200100]<0>(v41, "_ci_read_pixel_rgb_a");
          CI::DAGHelper::TextureReadFunction::TextureReadFunction(&v46, v41, v43);
          v35 = v39;
          v40 = v15;
          v45 = &v40;
          v34 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v39 + 112, &v40);
          CI::DAGHelper::TextureReadFunction::operator=((v34 + 5), &v46);
        }

        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (v42 < 0)
        {
          operator delete(v41[0]);
        }

        if (v43[0])
        {
          v43[1] = v43[0];
          operator delete(v43[0]);
        }

        v43[0] = v15;
        v46.__r_.__value_.__r.__words[0] = v43;
        result = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v35 + 112, v43);
        *(result + 88) = v38 & 1;
      }
    }
  }

  return result;
}

void sub_19CC487EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

std::string *CI::DAGHelper::TextureReadFunction::operator=(std::string *a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(a1[1].__r_.__value_.__r.__words, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  }

  return a1;
}

void ___ZN2CI9DAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_6(uint64_t a1, CI::Object *this, int a3, int a4, int a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v15 = *(a1 + 48);
    v40 = this;
    v41 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v16 = (*(*this + 336))(this, *(v15 + 2));
    v41 = v16;
    if (!v16)
    {
      v16 = v40;
    }

    v38 = v16;
    if ((*(*v16 + 16))() == 57)
    {
      v17 = *(v38 + 6);
      if (a6)
      {
        v39 = CI::hash_dag_node_id(a6, a7, 0);
        v42 = &v39;
        v18 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 64, &v39) + 5;
      }

      else
      {
        v18 = (a1 + 56);
      }

      v21 = *v18;
      v22 = CI::hash_dag_node_id(this, a7, a8);
      CI::DAGHelper::add_function_info(v15, *(a1 + 64), v38, *(a1 + 72), v21, a4, a7, a8, 0, (*(*(a1 + 32) + 8) + 24));
      v23 = a7;
      v24 = CI::DAGHelper::color_output_for_kernel(v15, v17, (*(*(a1 + 32) + 8) + 24));
      v25 = a8;
      v39 = v22;
      v42 = &v39;
      v26 = 0;
      std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v39)[5] = v24;
      do
      {
        v27 = v26 + 1;
        if (*(*(*(a1 + 40) + 8) + 2 * v26 + 50))
        {
          CI::DAGHelper::add_function_info(v15, *(a1 + 64), v38, *(a1 + 72), v21, a4, v23, v25, v27, (*(*(a1 + 32) + 8) + 24));
          v39 = v22;
          v42 = &v39;
          v28 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v39);
          v29 = *(*(a1 + 32) + 8);
          v30 = *(v29 + 24);
          *(v29 + 24) = v30 + 1;
          *(v28 + v26 + 21) = v30;
        }

        ++v26;
      }

      while (v27 != 3);
    }

    else
    {
      if ((*(*v38 + 16))(v38) != 59 || !(*(*v38 + 312))(v38))
      {
        goto LABEL_19;
      }

      v19 = *(v38 + 6);
      if (a6)
      {
        v39 = CI::hash_dag_node_id(a6, a7, 0);
        v42 = &v39;
        v20 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 64, &v39) + 5;
      }

      else
      {
        v20 = (a1 + 56);
      }

      v31 = *v20;
      v22 = CI::hash_dag_node_id(this, a7, a8);
      CI::DAGHelper::add_function_info(v15, *(a1 + 64), v38, *(a1 + 72), v31, a4, a7, a8, 0, (*(*(a1 + 32) + 8) + 24));
      v32 = CI::DAGHelper::color_output_for_kernel(v15, v19, (*(*(a1 + 32) + 8) + 24));
      v39 = v22;
      v42 = &v39;
      v33 = 0;
      std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v39)[5] = v32;
      do
      {
        v34 = v33 + 1;
        if (*(*(*(a1 + 40) + 8) + 2 * v33 + 50))
        {
          CI::DAGHelper::add_function_info(v15, *(a1 + 64), v38, *(a1 + 72), v31, a4, a7, a8, v34, (*(*(a1 + 32) + 8) + 24));
          v39 = v22;
          v42 = &v39;
          v35 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v39);
          v36 = *(*(a1 + 32) + 8);
          v37 = *(v36 + 24);
          *(v36 + 24) = v37 + 1;
          *(v35 + v33 + 21) = v37;
        }

        ++v33;
      }

      while (v34 != 3);
    }

    v39 = v22;
    v42 = &v39;
    *(*(*(a1 + 40) + 8) + 48) = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 88, &v39)[5];
LABEL_19:
    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v40);
  }
}

void sub_19CC48DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CI::ConvertedNodeRAII::~ConvertedNodeRAII(va);
  _Unwind_Resume(a1);
}

void CI::DAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "build_dag", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

uint64_t CI::DAGHelper::analyze_kernels(CI::DAGHelper *this, const CI::ProgramNode *a2)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4012000000;
  v8 = __Block_byref_object_copy__33;
  v9 = __Block_byref_object_dispose__34;
  v10 = &unk_19D0E11CF;
  v11 = xmmword_19CF22D90;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2CI9DAGHelper15analyze_kernelsEPKNS_11ProgramNodeE_block_invoke;
  v4[3] = &unk_1E75C1658;
  v4[8] = this;
  v4[9] = a2;
  v4[4] = v16;
  v4[5] = v18;
  v4[6] = &v12;
  v4[7] = &v5;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a2, v4);
  *(this + 24) = *(v6 + 3);
  if (v13[3])
  {
    operator new();
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  return 0xFFFFFFFFLL;
}

void sub_19CC490E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__33(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

BOOL ___ZN2CI9DAGHelper15analyze_kernelsEPKNS_11ProgramNodeE_block_invoke(uint64_t a1, CI::Object *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == -1)
  {
    v8 = this;
    v9 = *(a1 + 64);
    v18 = this;
    v19 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v10 = (*(*v8 + 336))(v8, *(v9 + 16));
    v19 = v10;
    if (v10)
    {
      v8 = v10;
    }

    if ((*(*v8 + 16))(v8) == 57 || (*(*v8 + 16))(v8) == 58 || (*(*v8 + 16))(v8) == 59)
    {
      v11 = *(v8 + 6);
      if (v11)
      {
        if ((*(*v11 + 16))(v11) == 70 && *(v11 + 172) == 1)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        if ((*(*v11 + 72))(v11))
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        v12 = *(*(a1 + 56) + 8);
        v13 = *(v12 + 48);
        v14 = *(v11 + 128);
        if (v13 <= *(v11 + 120))
        {
          v13 = *(v11 + 120);
        }

        *(v12 + 48) = v13;
        v15 = *(*(a1 + 56) + 8);
        v16 = *(v15 + 56);
        if (v16 <= v14)
        {
          v16 = v14;
        }

        *(v15 + 56) = v16;
      }
    }

    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v18);
  }

  else
  {
    v7 = (*(**(a1 + 72) + 48))(*(a1 + 72), a6);
    if (*(*v7 + 16))(v7) == 60 && (v7[144])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return (*(*(*(a1 + 48) + 8) + 24) & 1) == 0;
}

void ***CI::SoftwareDAGDescriptor::create_pipeline(void ***this)
{
  if (!this[1])
  {
    v8[1] = v2;
    v8[2] = v1;
    v8[3] = v3;
    v8[4] = v4;
    v5 = this;
    CI::SoftwareDAGDescriptor::add_set_destcoord_nodes(this, &v6);
    std::vector<CI::SWRendererFunctionNode>::__vdeallocate(v5 + 5);
    *(v5 + 5) = v6;
    v5[7] = v7;
    v7 = 0;
    v6 = 0uLL;
    v8[0] = &v6;
    std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100](v8);
    operator new();
  }

  return this;
}

uint64_t CI::create_sw_dag(CI *this, const CI::SWContext *a2, const CI::SWContext *a3, const CI::Node *a4, const CI::ProgramNode *a5, CI::SerialObjectPtrArray *a6)
{
  CI::DAGHelper::DAGHelper(v11, a2);
  if (!CI::DAGHelper::analyze_kernels(v11, a4))
  {
    CI::DAGHelper::process_kernels(v11, this, a3, a4, a5);
  }

  CI::DAGHelper::~DAGHelper(v11);
  return 0;
}

void sub_19CC496BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CI::DAGHelper::~DAGHelper(va);
  _Unwind_Resume(a1);
}

void CI::create_sw_args(CI *this, const CI::SWContext *a2, const CI::Node *a3, const CI::ProgramNode *a4, CI::SerialObjectPtrArray *a5)
{
  CI::DAGHelper::DAGHelper(&v8, this);
  if (!CI::DAGHelper::analyze_kernels(&v8, a3))
  {
    CI::DAGHelper::build_dag(&v8, a2, a3, a4, 1);
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }
  }

  CI::DAGHelper::~DAGHelper(&v8);
}

void sub_19CC49778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CI::DAGHelper::~DAGHelper(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<CI::SWRendererFunctionInputNode>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*(v9 + 8))(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CI::SWRendererFunctionInputNode::description(CI::SWRendererFunctionInputNode *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 4);
  if (v3 > 4)
  {
    if ((v3 - 5) >= 2)
    {
      if (v3 != 7)
      {
LABEL_15:
        v7 = "Unknown";
        goto LABEL_16;
      }

      v7 = "ThreadPosition";
    }

    else
    {
      v7 = "";
    }

LABEL_16:

    std::string::basic_string[abi:nn200100]<0>(a2, v7);
    return;
  }

  if (v3)
  {
    if (v3 == 3)
    {
      std::to_string(&v15, *(this + 1));
      v12 = std::string::insert(&v15, 0, "Sampler#", 8uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v12->__r_.__value_.__l + 2);
      *a2 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      v11 = v15.__r_.__value_.__r.__words[0];
      goto LABEL_21;
    }

    if (v3 == 4)
    {
      std::to_string(&v14, *(this + 1));
      v4 = std::string::insert(&v14, 0, "Buffer[", 7uLL);
      v5 = *&v4->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v15, "]", 1uLL);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  std::to_string(&v14, *(this + 1));
  v8 = std::string::insert(&v14, 0, "Texture[", 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v15, "]", 1uLL);
LABEL_11:
  v10 = *&v6->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v6->__r_.__value_.__l + 2);
  *a2 = v10;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__r.__words[0];
LABEL_21:
    operator delete(v11);
  }
}

void sub_19CC49B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SamplerObj::~SamplerObj(SamplerObj *this)
{
  *this = &unk_1F10302B8;
  v1 = *(this + 1);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

{
  *this = &unk_1F10302B8;
  v1 = *(this + 1);
  if (v1)
  {
    CI::Object::unref(v1);
  }

  JUMPOUT(0x19EAF5590);
}

uint64_t std::vector<CI::SoftwareDAGDescriptor::ArgumentInfo>::__emplace_back_slow_path<unsigned long &>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SoftwareDAGDescriptor::ArgumentInfo>>(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *&v17 = 32 * v2 + 32;
  v9 = *(a1 + 8);
  v10 = (32 * v2 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SoftwareDAGDescriptor::ArgumentInfo>,CI::SoftwareDAGDescriptor::ArgumentInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CI::SoftwareDAGDescriptor::ArgumentInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_19CC49D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CI::SoftwareDAGDescriptor::ArgumentInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SoftwareDAGDescriptor::ArgumentInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SoftwareDAGDescriptor::ArgumentInfo>,CI::SoftwareDAGDescriptor::ArgumentInfo*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v10[7] = v4;
    v10[8] = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = *v9;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>((a4 + 1), v9[1], v9[2], 0xAAAAAAAAAAAAAAABLL * ((v9[2] - v9[1]) >> 3));
      v9 += 4;
      a4 += 4;
    }

    while (v9 != a3);
    while (v8 != a3)
    {
      v10[0] = (v8 + 1);
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](v10);
      v8 += 4;
    }
  }
}

void **std::__split_buffer<CI::SoftwareDAGDescriptor::ArgumentInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<CI::SoftwareDAGDescriptor::ArgumentInfo>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CI::SoftwareDAGDescriptor::ArgumentInfo>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v4);
  }
}

unint64_t std::vector<CI::SWRendererFunctionInputNode>::emplace_back<CI::SWArgumentInfoType,unsigned long &>(uint64_t a1, int *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    v18[4] = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(a1, v13);
    }

    v14 = 24 * v10;
    v18[0] = 0;
    v18[1] = v14;
    v18[3] = 0;
    v15 = *a2;
    v16 = *a3;
    *v14 = &unk_1F1030290;
    *(v14 + 8) = v16;
    *(v14 + 16) = v15;
    v18[2] = 24 * v10 + 24;
    std::vector<CI::SWRendererFunctionInputNode>::__swap_out_circular_buffer(a1, v18);
    v9 = *(a1 + 8);
    std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(v18);
  }

  else
  {
    v7 = *a2;
    v8 = *a3;
    *v5 = &unk_1F1030290;
    *(v5 + 8) = v8;
    *(v5 + 16) = v7;
    v9 = v5 + 24;
    *(a1 + 8) = v5 + 24;
  }

  *(a1 + 8) = v9;
  return v9 - 24;
}

void sub_19CC4A068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *std::vector<CI::SWRendererFunctionInputNode>::__swap_out_circular_buffer(char **a1, void *a2)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 8 * ((v6 - result) >> 3);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_1F1030290;
      v12 = *(v10 + 1);
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 1) = v12;
      v10 += 24;
      v11 += 24;
      v9 += 24;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 24;
      (*(v15 + 8))();
      v13 += 24;
      result = v14;
    }

    while (v14 != v6);
  }

  a2[1] = v8;
  v16 = *a1;
  *a1 = v8;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction &,std::vector<CI::SWRendererFunctionInputNode> *&>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>>(a1, v8);
  }

  v15 = 0;
  v16 = (v3 << 6);
  v17 = (v3 << 6);
  CI::SWRendererFunctionNode::SWRendererFunctionNode(v3 << 6, *a2, a2[1], *a3);
  *&v17 = (v3 << 6) + 64;
  v9 = *(a1 + 8);
  v10 = (v3 << 6) + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>,CI::SWRendererFunctionNode*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(&v15);
  return v14;
}

void sub_19CC4A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t CI::SWRendererFunctionNode::SWRendererFunctionNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(a1, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  *(a1 + 40) = *a1;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>,CI::SWRendererFunctionNode*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v11[7] = v4;
    v11[8] = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(a4, *v9, v9[1], 0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 3));
      *(a4 + 24) = *(v9 + 3);
      v10 = v9[6];
      *(a4 + 40) = *a4;
      *(a4 + 48) = v10;
      *(a4 + 56) = *(v9 + 56);
      v9 += 8;
      a4 += 64;
    }

    while (v9 != a3);
    while (v8 != a3)
    {
      v11[0] = v8;
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](v11);
      v8 += 8;
    }
  }
}

void **std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(void **a1)
{
  std::__split_buffer<CI::SWRendererFunctionNode>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CI::SWRendererFunctionNode>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 64);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v5);
  }
}

uint64_t CI::SerialStringArray::firstIndexOfString(CI::SerialStringArray *this, const char *__s2)
{
  v2 = *this;
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = *(this + 4);
  while (strcmp(*(v5 + 8 * v4), __s2))
  {
    if (v2 == ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<unsigned long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction const&,std::vector<CI::SWRendererFunctionInputNode> *&>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>>(a1, v8);
  }

  v15 = 0;
  v16 = (v3 << 6);
  v17 = (v3 << 6);
  CI::SWRendererFunctionNode::SWRendererFunctionNode(v3 << 6, *a2, a2[1], *a3);
  *&v17 = (v3 << 6) + 64;
  v9 = *(a1 + 8);
  v10 = (v3 << 6) + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>,CI::SWRendererFunctionNode*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(&v15);
  return v14;
}

void sub_19CC4A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t TimerBase::TimerBase(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a3 | (a2 << 32);
  *(a1 + 16) = a4;
  if (CI_KDEBUG())
  {
    v7 = a5;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = v7;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  if ((v7 - 29) < 2 || v7 == 6 || (v7 - 25) <= 3 || v7)
  {
    kdebug_trace();
  }

  if (CI_PRINT_TIME())
  {
    *(a1 + 48) = CFAbsoluteTimeGetCurrent();
    *(a1 + 32) = dispatch_get_current_queue();
    v8 = TimerBase::get_and_increment_queue_level(a1);
    *(a1 + 28) = v8;
    v9 = *(a1 + 32);
    if (v9)
    {
      dispatch_queue_set_specific(v9, (v8 + 0x6369746C1), 0, 0);
    }

    *(a1 + 40) = CFAbsoluteTimeGetCurrent();
  }

  return a1;
}

char *TimerBase::get_and_increment_queue_level(TimerBase *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = dispatch_queue_get_specific(*(this + 4), "com.apple.coreimage.TimerBase.dispatchQueueKey") + 1;
  dispatch_queue_set_specific(v1, "com.apple.coreimage.TimerBase.dispatchQueueKey", v2, 0);
  return v2;
}

void CI::ConvertedNodeRAII::~ConvertedNodeRAII(CI::ConvertedNodeRAII *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  if (*this)
  {
    CI::Object::unref(*this);
  }
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

std::string *CI::DAGHelper::TextureReadFunction::TextureReadFunction(std::string *this, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::vector<unsigned long>::vector[abi:nn200100](this[1].__r_.__value_.__r.__words, a3);
  this[2].__r_.__value_.__s.__data_[0] = 0;
  return this;
}

void sub_19CC4AABC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void TimerBase::~TimerBase(TimerBase *this)
{
  v2 = *(this + 6);
  if ((v2 - 29) < 2 || v2 == 6 || (v2 - 25) <= 3 || v2)
  {
    kdebug_trace();
  }

  if (CI_PRINT_TIME())
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(this + 5);
    if (v3 >= 0.000005)
    {
      v4 = *(this + 7);
      if (v4)
      {
        if (v4 < CI_PRINT_TIME())
        {
          v5 = *(this + 4);
          if (v5)
          {
            label = dispatch_queue_get_label(*(this + 4));
          }

          else
          {
            label = "";
          }

          if (!strncmp(label, "CI::", 4uLL))
          {
            v7 = label;
          }

          else
          {
            v7 = "";
          }

          v8 = *(this + 7);
          if (*v7)
          {
            v9 = 2 * v8 + 16;
          }

          else
          {
            v9 = 2 * v8;
          }

          v10 = MEMORY[0x1E69E9848];
          if (v5)
          {
            v11 = dispatch_queue_get_specific(v5, (v8 + 0x6369746C1)) / 10000000.0;
            if (v11 > 0.0)
            {
              v12 = v3 - v11;
              if (v12 >= 0.000001)
              {
                v13 = v12 * 100.0 / v3;
                if (v13 >= 10.0 && v13 <= 90.0)
                {
                  v15 = v13;
                  if (v12 <= 1.5)
                  {
                    v16 = "ms";
                  }

                  else
                  {
                    v16 = "s ";
                  }

                  v17 = 1000.0;
                  if (v12 > 1.5)
                  {
                    v17 = 1.0;
                  }

                  v18 = v12 * v17;
                  v19 = *v10;
                  v20 = _indent_str();
                  fprintf(v19, "CI_PRINT_TIME %9.3f%s %.*s unaccounted(%.1f%%) %s\n", v18, v16, v9 + 2, v20, v15, v7);
                }
              }
            }
          }

          v21 = 1000.0;
          if (v3 > 1.5)
          {
            v21 = 1.0;
          }

          v22 = v3 * v21;
          if (*(this + 1))
          {
            v23 = *v10;
            _indent_str();
            fprintf(v23, "CI_PRINT_TIME %9.3f%s %.*s %s(c:%u, n:%u)  %s\n", *&v22);
          }

          else
          {
            v24 = *this;
            v25 = *v10;
            _indent_str();
            if (v24)
            {
              fprintf(v25, "CI_PRINT_TIME %9.3f%s %.*s %s(c:%u)  %s\n");
            }

            else
            {
              fprintf(v25, "CI_PRINT_TIME %9.3f%s %.*s %s  %s\n");
            }
          }

          fflush(*v10);
        }
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    TimerBase::add_time_at_level(this, *(this + 7), Current - *(this + 6));
    v27 = *(this + 4);
    if (v27)
    {
      v28 = *(this + 7);
      if (v28 <= 1)
      {
        v28 = 1;
      }

      dispatch_queue_set_specific(v27, "com.apple.coreimage.TimerBase.dispatchQueueKey", (v28 - 1), 0);
    }
  }
}

void TimerBase::add_time_at_level(TimerBase *this, int a2, double a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (a2 + 0x6369746C0);
    v5 = ((dispatch_queue_get_specific(*(this + 4), v4) / 10000000.0 + a3) * 10000000.0 + 0.5);

    dispatch_queue_set_specific(v3, v4, v5, 0);
  }
}

__n128 _ci_sampler_builder(uint64_t a1, CI::Object *this, __int128 *a3, __n128 *a4)
{
  *a1 = &unk_1F10302B8;
  if (this)
  {
    v7 = CI::Object::ref(this);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 48) = *(a3 + 4);
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  result = *a4;
  *(a1 + 64) = *a4;
  return result;
}

uint64_t CI::SoftwareDAGDescriptor::add_function(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 112) = a2;
  *(result + 120) = a3;
  return result;
}

void CI::SoftwareDAGDescriptor::~SoftwareDAGDescriptor(CI::SoftwareDAGDescriptor *this)
{
  CI::SoftwareDAGDescriptor::~SoftwareDAGDescriptor(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F10302D8;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x19EAF5590](v2, 0x1060C4030F2A1FBLL);
  }

  v3 = (this + 88);
  std::vector<CI::SoftwareDAGDescriptor::ArgumentInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 64);
  std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 40);
  std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 16);
  std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void std::vector<CI::SoftwareDAGDescriptor::ArgumentInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        v6 = v4;
        std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void CI::SoftwareDAGDescriptor::add_set_destcoord_nodes(CI::SoftwareDAGDescriptor *this@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v59 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v38 - v4;
  *(&v38 - v4) = 0;
  std::vector<CI::SWRendererFunctionNode>::push_back[abi:nn200100](v3, v6);
  v7 = *(this + 2);
  if ((*(this + 3) - v7) >= 0x41)
  {
    v41 = 0;
    v40 = -1;
    v8 = 1;
    v39 = v3;
    v38 = this;
    while (1)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(&v53, *(v7 + (v8 << 6)), *(v7 + (v8 << 6) + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + (v8 << 6) + 8) - *(v7 + (v8 << 6))) >> 3));
      v9 = *(this + 2);
      if (((*(this + 3) - v9) >> 6) - 1 != v8)
      {
        v50 = &unk_1F1030290;
        v10 = *(v54 - 16);
        LODWORD(v52) = *(v54 - 8);
        v51 = v10;
        if (v10 != v40)
        {
          v11 = *&v5[8 * v10];
          v56 = &unk_1F1030290;
          v57 = v11;
          v58 = 5;
          v43 = 0;
          v44 = 0;
          v42 = 0;
          operator new();
        }
      }

      v12 = (v9 + (v8 << 6));
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v13 = *v12;
      if (v12[1] != *v12)
      {
        break;
      }

LABEL_35:
      v32 = v9 + (v8 << 6);
      v33 = *(v3 + 8);
      if (v33 >= *(v3 + 16))
      {
        v37 = std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction const&,std::vector<CI::SWRendererFunctionInputNode> &>(v3, (v32 + 24), &v50);
      }

      else
      {
        v34 = *(v32 + 24);
        v35 = *(v32 + 32);
        *v33 = 0;
        *(v33 + 8) = 0;
        *(v33 + 16) = 0;
        std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(v33, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3));
        *(v33 + 24) = v34;
        *(v33 + 32) = v35;
        v36 = 0xAAAAAAAAAAAAAAABLL * ((*(v33 + 8) - *v33) >> 3);
        *(v33 + 40) = *v33;
        *(v33 + 48) = v36;
        *(v33 + 56) = 0;
        v37 = v33 + 64;
      }

      *(v3 + 8) = v37;
      *&v5[8 * v8] = v41 + v8;
      v45 = &v50;
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v45);
      v45 = &v53;
      std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v45);
      ++v8;
      v7 = *(this + 2);
      if (v8 >= (*(this + 3) - v7) >> 6)
      {
        return;
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = v13 + v14;
      if (*(v13 + v14 + 16) == 5)
      {
        v18 = *(v17 + 8);
        if (v15 >= v52)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v50) >> 3);
          v22 = v21 + 1;
          if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_40;
          }

          if (0x5555555555555556 * ((v52 - v50) >> 3) > v22)
          {
            v22 = 0x5555555555555556 * ((v52 - v50) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v52 - v50) >> 3) >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v22;
          }

          v49 = &v50;
          if (v23)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(&v50, v23);
          }

          v27 = 24 * v21;
          v45 = 0;
          v46 = v27;
          v48 = 0;
          v28 = *(v17 + 16);
          v29 = *&v5[8 * v18];
          *v27 = &unk_1F1030290;
          *(v27 + 8) = v29;
          *(v27 + 16) = v28;
          v47 = 24 * v21 + 24;
          std::vector<CI::SWRendererFunctionInputNode>::__swap_out_circular_buffer(&v50, &v45);
LABEL_32:
          v15 = v51;
          std::__split_buffer<CI::SWRendererFunctionInputNode>::~__split_buffer(&v45);
          goto LABEL_33;
        }

        v19 = *&v5[8 * v18];
        *v15 = &unk_1F1030290;
        *(v15 + 8) = v19;
        *(v15 + 16) = 5;
      }

      else
      {
        if (v15 >= v52)
        {
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v50) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_40:
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v52 - v50) >> 3) > v25)
          {
            v25 = 0x5555555555555556 * ((v52 - v50) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v52 - v50) >> 3) >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v25;
          }

          v49 = &v50;
          if (v26)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionInputNode>>(&v50, v26);
          }

          v30 = 8 * ((v15 - v50) >> 3);
          v45 = 0;
          v46 = v30;
          v48 = 0;
          *v30 = &unk_1F1030290;
          v31 = *(v13 + v14 + 8);
          *(v30 + 16) = *(v13 + v14 + 16);
          *(v30 + 8) = v31;
          v47 = 24 * v24 + 24;
          std::vector<CI::SWRendererFunctionInputNode>::__swap_out_circular_buffer(&v50, &v45);
          goto LABEL_32;
        }

        *v15 = &unk_1F1030290;
        v20 = *(v13 + v14 + 8);
        *(v15 + 16) = *(v13 + v14 + 16);
        *(v15 + 8) = v20;
      }

      v15 += 24;
LABEL_33:
      v51 = v15;
      ++v16;
      v13 = *v12;
      v14 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3) <= v16)
      {
        this = v38;
        v9 = *(v38 + 2);
        v3 = v39;
        goto LABEL_35;
      }
    }
  }
}

void sub_19CC4B7FC(_Unwind_Exception *a1)
{
  *(v2 - 152) = v1;
  std::vector<CI::SWRendererFunctionNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 152));
  _Unwind_Resume(a1);
}

uint64_t std::vector<CI::SWRendererFunctionNode>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWRendererFunctionNode const&>(a1, a2);
  }

  else
  {
    std::vector<CI::SWRendererFunctionNode>::__construct_one_at_end[abi:nn200100]<CI::SWRendererFunctionNode const&>(a1, a2);
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

__n128 std::vector<CI::SWRendererFunctionNode>::__construct_one_at_end[abi:nn200100]<CI::SWRendererFunctionNode const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  result = *(a2 + 24);
  *(v4 + 24) = result;
  v6 = *(a2 + 48);
  *(v4 + 40) = *v4;
  *(v4 + 48) = v6;
  *(v4 + 56) = *(a2 + 56);
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWRendererFunctionNode const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>>(a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<CI::SWRendererFunctionInputNode>::__init_with_size[abi:nn200100]<CI::SWRendererFunctionInputNode*,CI::SWRendererFunctionInputNode*>(v8, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(v8 + 24) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(v8 + 40) = *v8;
  *(v8 + 48) = v9;
  *(v8 + 56) = *(a2 + 56);
  *&v18 = v18 + 64;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>,CI::SWRendererFunctionNode*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(&v16);
  return v15;
}

void sub_19CC4BAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CI::SWRendererFunctionNode>::__emplace_back_slow_path<CI::SWFunction const&,std::vector<CI::SWRendererFunctionInputNode> &>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>>(a1, v8);
  }

  v15 = 0;
  v16 = (v3 << 6);
  v17 = (v3 << 6);
  CI::SWRendererFunctionNode::SWRendererFunctionNode(v3 << 6, *a2, a2[1], a3);
  *&v17 = (v3 << 6) + 64;
  v9 = *(a1 + 8);
  v10 = (v3 << 6) + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SWRendererFunctionNode>,CI::SWRendererFunctionNode*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(&v15);
  return v14;
}

void sub_19CC4BBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CI::SWRendererFunctionNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<CI::SWRendererFunctionNode>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 8;
        v5 = v3;
        std::vector<CI::SWRendererFunctionInputNode>::__destroy_vector::operator()[abi:nn200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

CI::DAGHelper *CI::DAGHelper::DAGHelper(CI::DAGHelper *this, const CI::SWContext *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1030300;
  *(this + 2) = a2;
  *(this + 5) = 0;
  *(this + 3) = xmmword_19CF22D70;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 14) = this + 120;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 19) = 0;
  std::string::basic_string[abi:nn200100]<0>(v5, "_ci_read_pixel");
  v5[3] = CI::_sw_ci_read_pixel;
  v5[4] = "_ci_read_pixel";
  std::string::basic_string[abi:nn200100]<0>(v6, "_ci_read_pixel_420");
  v7 = CI::_sw_ci_read_pixel_420;
  v8 = "_ci_read_pixel_420";
  std::string::basic_string[abi:nn200100]<0>(v9, "_ci_read_pixel_rgb_a");
  v10 = CI::_sw_ci_read_pixel_rgb_a;
  v11 = "_ci_read_pixel_rgb_a";
  std::string::basic_string[abi:nn200100]<0>(v12, "_ci_srgb_to_linear");
  v13 = CI::_sw_ci_srgb_to_linear;
  v14 = "_ci_srgb_to_linear";
  std::string::basic_string[abi:nn200100]<0>(v15, "_ci_init_destcoord");
  v16 = _ci_init_destcoord;
  v17 = "_ci_init_destcoord";
  std::string::basic_string[abi:nn200100]<0>(v18, "_ci_write_pixel");
  v19 = CI::_sw_ci_write_pixel;
  v20 = "_ci_write_pixel";
  std::string::basic_string[abi:nn200100]<0>(v21, "_ci_linear_to_srgb");
  v22 = CI::_sw_ci_linear_to_srgb;
  v23 = "_ci_linear_to_srgb";
  std::map<std::string,CI::SWFunction>::map[abi:nn200100](this + 20, v5, 7);
  v3 = 35;
  do
  {
    if (*(&v5[v3 - 2] - 1) < 0)
    {
      operator delete(v5[v3 - 5]);
    }

    v3 -= 5;
  }

  while (v3 * 8);
  return this;
}

void sub_19CC4BECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = (v13 + 263);
  v20 = -280;
  v21 = v19;
  while (1)
  {
    v22 = *v21;
    v21 -= 40;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 40;
    if (!v20)
    {
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v14, *v12);
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(a10, *v17);
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a11, *v16);
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a12, *v15);
      _Unwind_Resume(a1);
    }
  }
}

double CI::_sw_ci_read_pixel(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(a2 + (v11[1] << 6));
  v13 = a2 + (v11[4] << 6);
  v14 = *(a3 + 16 * v11[7]);
  v15 = *(v13 + 36);
  if (v15 != 2)
  {
    if (v15 == 1)
    {
      LODWORD(a5.f64[0]) = *v13;
      v16.i32[0] = *(v13 + 8);
      HIDWORD(a5.f64[0]) = *(v13 + 16);
      v16.i32[1] = *(v13 + 20);
      a6 = COERCE_DOUBLE(vmla_f32(v16, *&a5.f64[0], *&v14));
      v14 = a6;
    }

    else
    {
      LODWORD(a6) = *(v13 + 8);
      LODWORD(a7) = *(v13 + 12);
      a9.i32[0] = *(v13 + 20);
      *a8.i32 = vmuls_lane_f32(*(v13 + 16), *&v14, 1);
      *a5.f64 = *&a6 + (vmuls_lane_f32(*(v13 + 4), *&v14, 1) + (*&v14 * *v13));
      *(a5.f64 + 1) = *a9.i32 + (*a8.i32 + (*&v14 * *&a7));
      v14 = a5.f64[0];
    }
  }

  return CI::BitmapSampler::read(v12, v14, a5, a6, a7, a8, a9, a10, a11);
}

unint64_t CI::_sw_ci_read_pixel_420(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(a2 + (v11[1] << 6));
  v13 = a2 + (v11[4] << 6);
  v14 = *(a2 + (v11[7] << 6));
  v15 = *(a2 + (v11[10] << 6));
  v16 = *(a3 + 16 * v11[13]);
  v17 = *(v13 + 36);
  if (v17 != 2)
  {
    if (v17 == 1)
    {
      LODWORD(a6) = *v13;
      v18.i32[0] = *(v13 + 8);
      HIDWORD(a6) = *(v13 + 16);
      v18.i32[1] = *(v13 + 20);
      *&a5.f64[0] = vmla_f32(v18, *&a6, v16);
      v16 = *&a5.f64[0];
    }

    else
    {
      *a9.i32 = vmuls_lane_f32(*(v13 + 4), v16, 1) + (v16.f32[0] * *v13);
      a8.i32[0] = *(v13 + 20);
      *&a7 = vmuls_lane_f32(*(v13 + 16), v16, 1);
      *&a6 = *&a7 + (v16.f32[0] * *(v13 + 12));
      v16.f32[0] = *(v13 + 8) + *a9.i32;
      *a5.f64 = *a8.i32 + *&a6;
      v16.f32[1] = *a8.i32 + *&a6;
    }
  }

  v29 = v16;
  v19 = CI::BitmapSampler::read(v12, *&v16, a5, a6, a7, a8, a9, a10, a11);
  v30 = LODWORD(v19);
  v27 = CI::BitmapSampler::read(v14, COERCE_DOUBLE(vmul_f32(v15, v29)), v20, v21, v22, v23, v24, v25, v26);
  return __PAIR64__(LODWORD(v27), v30);
}

uint64_t CI::_sw_ci_read_pixel_rgb_a(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(a2 + (v11[1] << 6));
  v13 = a2 + (v11[4] << 6);
  v14 = *(a2 + (v11[7] << 6));
  v15 = *(a3 + 16 * v11[10]);
  v16 = *(v13 + 36);
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      LODWORD(a6) = *v13;
      v17.i32[0] = *(v13 + 8);
      HIDWORD(a6) = *(v13 + 16);
      v17.i32[1] = *(v13 + 20);
      *&a5.f64[0] = vmla_f32(v17, *&a6, v15);
      v15 = *&a5.f64[0];
    }

    else
    {
      *a9.i32 = vmuls_lane_f32(*(v13 + 4), v15, 1) + (v15.f32[0] * *v13);
      a8.i32[0] = *(v13 + 20);
      *&a7 = vmuls_lane_f32(*(v13 + 16), v15, 1);
      *&a6 = *&a7 + (v15.f32[0] * *(v13 + 12));
      v15.f32[0] = *(v13 + 8) + *a9.i32;
      *a5.f64 = *a8.i32 + *&a6;
      v15.f32[1] = *a8.i32 + *&a6;
    }
  }

  v26 = *&v15;
  v27 = CI::BitmapSampler::read(v12, *&v15, a5, a6, a7, a8, a9, a10, a11);
  CI::BitmapSampler::read(v14, v26, v18, v19, v20, v21, v22, v23, v24);
  return *&v27;
}

double CI::_sw_ci_srgb_to_linear(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v22 = *v7;
  v8 = vmulq_n_f32(*v7, 1.0 / fmaxf(COERCE_FLOAT(HIDWORD(*v7)), 0.00001));
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v20 = _Q2;
  v21 = vbslq_s8(vorrq_s8(vcltzq_f32(v8), vcgtzq_f32(v8)), vorrq_s8(vandq_s8(v8, v9), _Q2), 0);
  v19 = vabsq_f32(v8);
  v15 = vaddq_f32(vmulq_f32(v19, vdupq_n_s32(0x3F72A76Eu)), vdupq_n_s32(0x3D558919u));
  v15.i32[3] = 0;
  v16 = _simd_pow_f4(v15, xmmword_19CF226D0);
  v17 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v19), 0, v20);
  *&result = vmulq_laneq_f32(vmulq_f32(v21, vmlaq_f32(vmulq_f32(vmulq_f32(v19, vdupq_n_s32(0x3D9E8391u)), vsubq_f32(v20, v17)), v17, v16)), v22, 3).u64[0];
  return result;
}

__n64 _ci_init_destcoord(float *a1, uint64_t a2)
{
  v2 = a2 + 0.5;
  v3 = SHIDWORD(a2) + 0.5;
  result.n64_f32[0] = a1[2] + ((v3 * a1[1]) + (v2 * *a1));
  result.n64_f32[1] = a1[5] + ((v3 * a1[4]) + (v2 * a1[3]));
  return result;
}

uint64_t CI::_sw_ci_write_pixel(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CI::BitmapSampler *this, IPoint *a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  v8 = *(v6 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = *a6;
  v13 = *v10;
  CI::BitmapSampler::write(this, v11, &v13);
  return v13;
}

double CI::_sw_ci_linear_to_srgb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v22 = *v7;
  v8 = vmulq_n_f32(*v7, 1.0 / fmaxf(COERCE_FLOAT(HIDWORD(*v7)), 0.00001));
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v20 = _Q2;
  v21 = vbslq_s8(vorrq_s8(vcltzq_f32(v8), vcgtzq_f32(v8)), vorrq_s8(vandq_s8(v8, v9), _Q2), 0);
  v19 = vabsq_f32(v8);
  v15 = v19;
  v15.i32[3] = 0;
  v16 = _simd_pow_f4(v15, xmmword_19CF22D80);
  v17 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v19), 0, v20);
  *&result = vmulq_laneq_f32(vmulq_f32(v21, vmlaq_f32(vmulq_f32(vmulq_f32(v19, vdupq_n_s32(0x414EB852u)), vsubq_f32(v20, v17)), v17, vaddq_f32(vmulq_f32(v16, vdupq_n_s32(0x3F870A3Du)), vdupq_n_s32(0xBD6147AE)))), v22, 3).u64[0];
  return result;
}

void CI::DAGHelper::~DAGHelper(char **this)
{
  CI::DAGHelper::~DAGHelper(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1030300;
  std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::destroy((this + 20), this[21]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 17), this[18]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy((this + 14), this[15]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 11), this[12]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 8), this[9]);
}

float32_t CI::BitmapSampler::write(CI::BitmapSampler *this, IPoint a2, const vec4 *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = (this + 80);
  v4 = *(this + 10);
  if (!v4 || (v6 = *(this + 11)) == 0)
  {
    v49 = ci_logger_render();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      CI::BitmapSampler::write(v5, this, v49);
    }

    goto LABEL_87;
  }

  var0 = a2.var0;
  var1 = a2.var1;
  v9 = a2.var0;
  if (a2.var1 >= v6 || a2.var0 >= v4 || (*&a2 & 0x8000000080000000) != 0)
  {
    v50 = ci_logger_render();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_91:
      v52 = *(this + 10);
      v53 = *(this + 11);
      v55[0] = 67109888;
      v55[1] = var0;
      v56 = 1024;
      v57 = var1;
      v58 = 2048;
      v59 = v52;
      v60 = 2048;
      v61 = v53;
      _os_log_error_impl(&dword_19CC36000, v50, OS_LOG_TYPE_ERROR, "Bitmap write error: Writing to point (%d,%d) out of bounds (%zux%zu)", v55, 0x22u);
      abort();
    }

LABEL_87:
    abort();
  }

  v13 = *(this + 15);
  v14 = *(this + 16);
  v15 = *(this + 12);
  v16 = v15 * a2.var1;
  if (CI::format_bytes_per_row(*(this + 26), a2.var0) + v16 > v15 * v6)
  {
    v50 = ci_logger_render();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

  v18 = *(this + 9) + v13 * v9 + v16;
  v19 = *(this + 26);
  if ((v19 | 4) == 0x10E)
  {
    _Q0 = vdupq_n_s32(0x437F0000u);
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    *_Q0.f32 = vrev32_s16(vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v20, _Q0, *a3), 0), _Q0))));
    *_Q0.f32 = vext_s8(*_Q0.f32, *_Q0.f32, 6uLL);
LABEL_14:
    _Q0.i32[0] = vuzp1_s8(*_Q0.f32, *_Q0.f32).u32[0];
LABEL_15:
    *v18 = _Q0.i32[0];
    return _Q0.f32[0];
  }

  if ((*(this + 136) & 1) != 0 || v14 != 8)
  {
    if (!*(this + 136) && v14 == 16)
    {
      if (v13 <= 5)
      {
        if (v13 == 2)
        {
          v40 = 65535.0;
          v41 = (*a3 * 65535.0) + 0.5;
          if (v41 <= 65535.0)
          {
            v40 = (*a3 * 65535.0) + 0.5;
          }

          _NF = v41 < 0.0;
          _Q0.i32[0] = 0;
          if (!_NF)
          {
            _Q0.f32[0] = v40;
          }

          v24 = _Q0.f32[0];
        }

        else
        {
          if (v13 != 4)
          {
            return _Q0.f32[0];
          }

          v23 = vdup_n_s32(0x477FFF00u);
          *_Q0.f32 = vcvt_s32_f32(vminnm_f32(vmaxnm_f32(vmla_f32(0x3F0000003F000000, v23, *a3), 0), v23));
          *(v18 + 2) = _Q0.i16[2];
          LOWORD(v24) = _Q0.i16[0];
        }

        *v18 = v24;
        return _Q0.f32[0];
      }

      if (v13 != 6)
      {
        if (v13 != 8)
        {
          return _Q0.f32[0];
        }

LABEL_46:
        v28 = vdupq_n_s32(0x477FFF00u);
        v29.i64[0] = 0x3F0000003F000000;
        v29.i64[1] = 0x3F0000003F000000;
        *_Q0.f32 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v29, v28, *a3), 0), v28)));
LABEL_62:
        *v18 = _Q0.i64[0];
        return _Q0.f32[0];
      }

      v42 = vdupq_n_s32(0x477FFF00u);
      v43.i64[0] = 0x3F0000003F000000;
      v43.i64[1] = 0x3F0000003F000000;
      *_Q0.f32 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v43, v42, *a3), 0), v42)));
LABEL_79:
      *v18 = _Q0.i32[0];
      *(v18 + 4) = _Q0.i16[2];
      return _Q0.f32[0];
    }

    if (*(this + 136) && v14 == 16)
    {
      if (v13 <= 5)
      {
        if (v13 != 2)
        {
          if (v13 != 4)
          {
            return _Q0.f32[0];
          }

          _Q0.i32[0] = vcvt_f16_f32(*a3).u32[0];
          goto LABEL_15;
        }

        _Q0.i32[0] = *a3;
        __asm { FCVT            H0, S0 }

        *v18 = _Q0.i16[0];
        return _Q0.f32[0];
      }

      if (v13 != 6)
      {
        if (v13 != 8)
        {
          return _Q0.f32[0];
        }

        *_Q0.f32 = vcvt_f16_f32(*a3);
        goto LABEL_62;
      }

      *_Q0.f32 = vcvt_f16_f32(*a3);
      goto LABEL_79;
    }

    if (*(this + 136) && v14 == 32)
    {
      v27 = __ROR8__(v13 - 4, 2);
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          *v18 = *a3;
          *(v18 + 4) = *(a3 + 1);
          _Q0.i32[0] = *(a3 + 2);
          *(v18 + 8) = _Q0.i32[0];
        }

        else if (v27 == 3)
        {
          _Q0 = *a3;
          *v18 = *a3;
        }
      }

      else if (v27)
      {
        if (v27 == 1)
        {
          _Q0 = *a3;
          *v18 = *a3;
        }
      }

      else
      {
        _Q0.i32[0] = *a3;
        *v18 = *a3;
      }

      return _Q0.f32[0];
    }

    if (v19 <= 784)
    {
      if (v19 != 775 && v19 != 784)
      {
        goto LABEL_82;
      }
    }

    else if (v19 != 3079 && v19 != 2567)
    {
      if (v19 == 785)
      {
        v35 = vdupq_n_s32(0x447FC000u);
        v36.i64[0] = 0x3F0000003F000000;
        v36.i64[1] = 0x3F0000003F000000;
        _Q0 = vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v36, v35, *a3), 0), v35));
        v35.i64[0] = 0xFFFF0000FFFFLL;
        v35.i64[1] = 0xFFFF0000FFFFLL;
        v37 = vandq_s8(_Q0, v35);
        v38 = v37.i32[0];
        v37.i32[0] = vextq_s8(v37, v37, 8uLL).i32[1];
        *_Q0.f32 = vshl_u32(*v37.i8, 0xA0000001ELL);
        v39 = v38 | (_Q0.i32[2] << 20);
LABEL_76:
        *v18 = v39 | _Q0.i32[0] | _Q0.i32[1];
        return _Q0.f32[0];
      }

LABEL_82:
      if (v13 != 8 || v14 != 10)
      {
        return _Q0.f32[0];
      }

      goto LABEL_46;
    }

    v44 = vdupq_n_s32(0x447FC000u);
    v45.i64[0] = 0x3F0000003F000000;
    v45.i64[1] = 0x3F0000003F000000;
    _Q0 = vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v45, v44, *a3), 0), v44));
    v44.i64[0] = 0xFFFF0000FFFFLL;
    v44.i64[1] = 0xFFFF0000FFFFLL;
    v46 = vandq_s8(_Q0, v44);
    v47 = _Q0.i32[0];
    v46.i32[0] = vextq_s8(v46, v46, 8uLL).i32[1];
    *_Q0.f32 = vshl_u32(*v46.i8, 0xA0000001ELL);
    v39 = v46.i32[2] | (v47 << 20);
    goto LABEL_76;
  }

  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        return _Q0.f32[0];
      }

      v25 = vdupq_n_s32(0x437F0000u);
      v26.i64[0] = 0x3F0000003F000000;
      v26.i64[1] = 0x3F0000003F000000;
      *_Q0.f32 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v26, v25, *a3), 0), v25)));
      goto LABEL_14;
    }

    v33 = vdupq_n_s32(0x437F0000u);
    v34.i64[0] = 0x3F0000003F000000;
    v34.i64[1] = 0x3F0000003F000000;
    *_Q0.f32 = vmovn_s32(vcvtq_s32_f32(vminnmq_f32(vmaxnmq_f32(vmlaq_f32(v34, v33, *a3), 0), v33)));
    *v18 = _Q0.i8[0];
    *(v18 + 1) = _Q0.i8[2];
    *(v18 + 2) = _Q0.i8[4];
  }

  else
  {
    if (v13 == 1)
    {
      v30 = 255.0;
      v31 = (*a3 * 255.0) + 0.5;
      if (v31 <= 255.0)
      {
        v30 = (*a3 * 255.0) + 0.5;
      }

      _NF = v31 < 0.0;
      _Q0.i32[0] = 0;
      if (!_NF)
      {
        _Q0.f32[0] = v30;
      }

      v22 = _Q0.f32[0];
    }

    else
    {
      if (v13 != 2)
      {
        return _Q0.f32[0];
      }

      v21 = vdup_n_s32(0x437F0000u);
      *_Q0.f32 = vcvt_s32_f32(vminnm_f32(vmaxnm_f32(vmla_f32(0x3F0000003F000000, v21, *a3), 0), v21));
      *(v18 + 1) = _Q0.i8[4];
      LOBYTE(v22) = _Q0.i8[0];
    }

    *v18 = v22;
  }

  return _Q0.f32[0];
}

void *std::map<std::string,CI::SWFunction>::map[abi:nn200100](void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,CI::SWFunction> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,CI::SWFunction> const&>(void *a1, uint64_t a2, void **a3)
{
  result = *std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__construct_node<std::pair<std::string const,CI::SWFunction> const&>();
  }

  return result;
}

void **std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_19CC4CE54(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CI::SWFunction>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void *std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CI::SWFunction>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,CI::DAGHelper::TextureReadFunction>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<unsigned long long const,CI::DAGHelper::TextureReadFunction>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,CI::SWFunction>,std::__map_value_compare<std::string,std::__value_type<std::string,CI::SWFunction>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CI::SWFunction>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}