@interface BSXPCEncodeObjectForKey
@end

@implementation BSXPCEncodeObjectForKey

void ___BSXPCEncodeObjectForKey_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();
  if ([*(a1 + 32) supportsBSXPCSecureCoding] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) encodeWithBSXPCCoder:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = BSSerializeBSXPCEncodableObjectToXPCDictionary(*(a1 + 32), a2);
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 supportsSecureCoding])
  {
    v6 = objc_alloc_init(MEMORY[0x1E696B0C8]);
    [v6 beginEncoding];
    [v6 encodeObject:*(a1 + 32) forKey:@"bsx"];
    v7 = [v6 finishEncoding];
    v8 = v7;
    if (v7)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = ___BSXPCEncodeObjectForKey_block_invoke_3;
      applier[3] = &unk_1E72CC520;
      applier[4] = a2;
      xpc_dictionary_apply(v7, applier);
    }
  }

  v9 = NSStringFromClass([*(a1 + 32) classForCoder]);
  BSSerializeStringToXPCDictionaryWithKey(v9, a2, "bsx_class");
}

void ___BSXPCEncodeObjectForKey_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    v5 = *MEMORY[0x1E695D940];
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [*(a1 + 32) objectForKey:v7];
          _BSXPCEncodeObjectForKey(*(a1 + 40), v8, v7);
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:v5 format:{@"Dictionary keys must be of type NSString", v9}];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

@end