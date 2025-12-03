@interface MPSStateResourceList
+ (MPSStateResourceList)resourceList;
+ (MPSStateResourceList)resourceListWithBufferSizes:(NSUInteger)firstSize;
+ (MPSStateResourceList)resourceListWithTextureDescriptors:(MTLTextureDescriptor *)d;
- (MPSStateResourceList)init;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSStateResourceList

- (MPSStateResourceList)init
{
  v3.receiver = self;
  v3.super_class = MPSStateResourceList;
  result = [(MPSStateResourceList *)&v3 init];
  if (result)
  {
    result->_list = 0;
  }

  return result;
}

+ (MPSStateResourceList)resourceList
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (MPSStateResourceList)resourceListWithTextureDescriptors:(MTLTextureDescriptor *)d
{
  va_start(va, d);
  v9 = objc_msgSend_resourceList(MPSStateResourceList, a2, d, v3, v4);
  if (v9)
  {
    va_copy(v13, va);
    if (d)
    {
      v10 = d;
      do
      {
        objc_msgSend_appendTexture_(v9, v6, v10, v7, v8);
        v11 = va_arg(v13, MTLTextureDescriptor *);
        v10 = v11;
      }

      while (v11);
    }
  }

  return v9;
}

+ (MPSStateResourceList)resourceListWithBufferSizes:(NSUInteger)firstSize
{
  va_start(va, firstSize);
  v9 = objc_msgSend_resourceList(MPSStateResourceList, a2, firstSize, v3, v4);
  if (v9)
  {
    va_copy(v13, va);
    if (firstSize)
    {
      v10 = firstSize;
      do
      {
        objc_msgSend_appendBuffer_(v9, v6, v10, v7, v8);
        v11 = va_arg(v13, void);
        v10 = v11;
      }

      while (v11);
    }
  }

  return v9;
}

- (void)dealloc
{
  list = self->_list;
  if (list)
  {
    do
    {
      var1 = list->var1;
      (*(list->var0 + 1))(list, a2);
      list = var1;
    }

    while (var1);
  }

  self->_list = 0;
  v5.receiver = self;
  v5.super_class = MPSStateResourceList;
  [(MPSStateResourceList *)&v5 dealloc];
}

- (id)debugDescription
{
  v11 = 0;
  v2 = MEMORY[0x277CCACA8];
  list = self->_list;
  v10.receiver = self;
  v10.super_class = MPSStateResourceList;
  v4 = [(MPSStateResourceList *)&v10 debugDescription];
  v5 = sub_22E357EB0(list, v4, &v11);
  return objc_msgSend_stringWithFormat_(v2, v6, @"%@\n", v7, v8, v5);
}

@end