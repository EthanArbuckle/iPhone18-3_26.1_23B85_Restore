@interface _CFPrefsOversizedPlistDescription
- (id)_descriptionOfDictionary:(__CFDictionary *)a3 withKeyRedaction:(BOOL)a4;
- (void)dealloc;
- (void)initWithDict:(const void *)a3 setKeys:(const void *)a4 andValues:(CFIndex)a5 count:;
@end

@implementation _CFPrefsOversizedPlistDescription

- (id)_descriptionOfDictionary:(__CFDictionary *)a3 withKeyRedaction:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(a3);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, 0);
  v8 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeArrayCallBacks);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke;
  v15[3] = &unk_1E6DD2D10;
  v15[4] = &v17;
  v15[5] = Mutable;
  v16 = a4;
  v15[6] = v8;
  CFDictionaryApply(a3, v15);
  CFRelease(Mutable);
  v9 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  if (CFArrayGetCount(v8) > 9)
  {
    v10 = 10;
  }

  else
  {
    v10 = CFArrayGetCount(v8);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79___CFPrefsOversizedPlistDescription__descriptionOfDictionary_withKeyRedaction___block_invoke_2;
  v14[3] = &__block_descriptor_40_e13_v24__0r_v8_16l;
  v14[4] = v9;
  CFArrayApply(v8, 0, v10, v14);
  if (CFArrayGetCount(v8) >= 11)
  {
    CFStringAppendFormat(v9, 0, @"...\nTotal keys: %ld - Average approximate value size: %ld bytes", Count, v18[3] / Count);
  }

  CFRelease(v8);
  v11 = CFAutorelease(v9);
  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  existingValues = self->existingValues;
  if (existingValues)
  {
    CFRelease(existingValues);
  }

  newValues = self->newValues;
  if (newValues)
  {
    CFRelease(newValues);
  }

  v6.receiver = self;
  v6.super_class = _CFPrefsOversizedPlistDescription;
  [(_CFPrefsOversizedPlistDescription *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithDict:(const void *)a3 setKeys:(const void *)a4 andValues:(CFIndex)a5 count:
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _CFPrefsOversizedPlistDescription;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    if (v9)
    {
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v9[1] = v10;
      v9[2] = CFDictionaryCreate(&__kCFAllocatorSystemDefault, a3, a4, a5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end