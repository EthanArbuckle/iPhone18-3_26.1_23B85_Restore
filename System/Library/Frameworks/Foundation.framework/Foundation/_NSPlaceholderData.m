@interface _NSPlaceholderData
- (_NSPlaceholderData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6;
- (_NSPlaceholderData)initWithData:(id)a3;
@end

@implementation _NSPlaceholderData

- (_NSPlaceholderData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6
{
  if (!a4)
  {
    v10 = [_NSZeroData data:a3];
LABEL_6:
    v11 = v10;
    v9 = 1;
    if (!a6)
    {
      return v11;
    }

    goto LABEL_21;
  }

  v9 = a5;
  if (a4 <= 0xFFF6 && a5)
  {
    v10 = [+[_NSInlineData _allocWithExtraBytes:](_NSInlineData _allocWithExtraBytes:{a4), "initWithBytes:length:", a3, a4}];
    goto LABEL_6;
  }

  if (a5)
  {
    v12 = NSAllocateMemoryPages(a4);
    v13 = v12;
    v14 = a4;
    v15 = a3;
    if (a4 >= 0x80000)
    {
      v16 = MEMORY[0x1E69E9AC8];
      v14 = a4;
      v15 = a3;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v12 | a3)) == 0)
      {
        malloc_default_zone();
        v17 = malloc_zone_claimed_address();
        v12 = v13;
        v14 = a4;
        v15 = a3;
        if (!v17)
        {
          v18 = -*v16 & a4;
          NSCopyMemoryPages(a3, v13, v18);
          v14 = a4 - v18;
          if (a4 == v18)
          {
            goto LABEL_20;
          }

          v15 = a3 + v18;
          v12 = &v13[v18];
        }
      }
    }

    memmove(v12, v15, v14);
LABEL_20:
    v11 = dispatch_data_create(v13, a4, 0, *MEMORY[0x1E69E9660]);
    if (!a6)
    {
      return v11;
    }

LABEL_21:
    if (v9)
    {
      (*(a6 + 2))(a6, a3, a4);
    }

    return v11;
  }

  v13 = a3;
  if (a6 == &__block_literal_global_2)
  {
    goto LABEL_20;
  }

  v13 = a3;
  if (a6 == &__block_literal_global_4)
  {
    goto LABEL_20;
  }

  v19 = objc_allocWithZone(NSConcreteData);

  return [v19 initWithBytes:a3 length:a4 copy:0 deallocator:a6];
}

- (_NSPlaceholderData)initWithData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (_CFExecutableLinkedOnOrAfter() && ((v5 = objc_opt_class(), v5 == NSConcreteData) || (v6 = v5, v5 == objc_opt_class()) || v6 == objc_opt_class() || v6 == objc_lookUpClass("__NSCFData") || [a3 _isDispatchData]))
  {

    return [a3 copyWithZone:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NSPlaceholderData;
    return [(NSData *)&v8 initWithData:a3];
  }
}

@end