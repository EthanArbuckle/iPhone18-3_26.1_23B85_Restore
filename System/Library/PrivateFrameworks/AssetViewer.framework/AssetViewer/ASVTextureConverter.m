@interface ASVTextureConverter
+ (id)defaultTextureConverters;
+ (id)newConverterOfType:(int64_t)a3;
+ (id)preferredConverterFromConverters:(id)a3 forTextureDescription:(id)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)a3;
- (unint64_t)alignUp:(unint64_t)a3 toAlignment:(unint64_t)a4;
@end

@implementation ASVTextureConverter

- (unint64_t)alignUp:(unint64_t)a3 toAlignment:(unint64_t)a4
{
  if ((a4 & (a4 - 1)) != 0)
  {
    return 0;
  }

  else
  {
    return (a4 - 1 + a3) & -a4;
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)a3
{
  v3 = 0;
  v4 = 0;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (id)defaultTextureConverters
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(ASVImageIOTextureConverter);
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)newConverterOfType:(int64_t)a3
{
  if (a3 == 1)
  {
    return objc_alloc_init(ASVImageIOTextureConverter);
  }

  else
  {
    return 0;
  }
}

+ (id)preferredConverterFromConverters:(id)a3 forTextureDescription:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 canConvertTextureWithDescription:{v6, v13}])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end