@interface _NSPlaceholderData
- (_NSPlaceholderData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
- (_NSPlaceholderData)initWithData:(id)data;
@end

@implementation _NSPlaceholderData

- (_NSPlaceholderData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  if (!length)
  {
    v10 = [_NSZeroData data:bytes];
LABEL_6:
    v11 = v10;
    copyCopy = 1;
    if (!deallocator)
    {
      return v11;
    }

    goto LABEL_21;
  }

  copyCopy = copy;
  if (length <= 0xFFF6 && copy)
  {
    v10 = [+[_NSInlineData _allocWithExtraBytes:](_NSInlineData _allocWithExtraBytes:{length), "initWithBytes:length:", bytes, length}];
    goto LABEL_6;
  }

  if (copy)
  {
    v12 = NSAllocateMemoryPages(length);
    bytesCopy5 = v12;
    lengthCopy3 = length;
    bytesCopy3 = bytes;
    if (length >= 0x80000)
    {
      v16 = MEMORY[0x1E69E9AC8];
      lengthCopy3 = length;
      bytesCopy3 = bytes;
      if (((*MEMORY[0x1E69E9AC8] - 1) & (v12 | bytes)) == 0)
      {
        malloc_default_zone();
        v17 = malloc_zone_claimed_address();
        v12 = bytesCopy5;
        lengthCopy3 = length;
        bytesCopy3 = bytes;
        if (!v17)
        {
          v18 = -*v16 & length;
          NSCopyMemoryPages(bytes, bytesCopy5, v18);
          lengthCopy3 = length - v18;
          if (length == v18)
          {
            goto LABEL_20;
          }

          bytesCopy3 = bytes + v18;
          v12 = &bytesCopy5[v18];
        }
      }
    }

    memmove(v12, bytesCopy3, lengthCopy3);
LABEL_20:
    v11 = dispatch_data_create(bytesCopy5, length, 0, *MEMORY[0x1E69E9660]);
    if (!deallocator)
    {
      return v11;
    }

LABEL_21:
    if (copyCopy)
    {
      (*(deallocator + 2))(deallocator, bytes, length);
    }

    return v11;
  }

  bytesCopy5 = bytes;
  if (deallocator == &__block_literal_global_2)
  {
    goto LABEL_20;
  }

  bytesCopy5 = bytes;
  if (deallocator == &__block_literal_global_4)
  {
    goto LABEL_20;
  }

  v19 = objc_allocWithZone(NSConcreteData);

  return [v19 initWithBytes:bytes length:length copy:0 deallocator:deallocator];
}

- (_NSPlaceholderData)initWithData:(id)data
{
  v9 = *MEMORY[0x1E69E9840];
  if (_CFExecutableLinkedOnOrAfter() && ((v5 = objc_opt_class(), v5 == NSConcreteData) || (v6 = v5, v5 == objc_opt_class()) || v6 == objc_opt_class() || v6 == objc_lookUpClass("__NSCFData") || [data _isDispatchData]))
  {

    return [data copyWithZone:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _NSPlaceholderData;
    return [(NSData *)&v8 initWithData:data];
  }
}

@end