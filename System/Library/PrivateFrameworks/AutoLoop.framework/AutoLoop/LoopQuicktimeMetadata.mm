@interface LoopQuicktimeMetadata
+ (id)arrayFromDictionary:(id)a3;
+ (id)metadataArrayForDictionary:(id)a3;
+ (id)metadataDictionaryForAssetURL:(id)a3;
+ (id)metadataStringArrayForAssetURL:(id)a3;
+ (id)metadataStringForArray:(id)a3;
+ (id)metadataStringForAssetURL:(id)a3;
@end

@implementation LoopQuicktimeMetadata

+ (id)metadataArrayForDictionary:(id)a3
{
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:1 error:&v9];
  v4 = v9;
  if (v4)
  {
    NSLog(&cfstr_Metadataarrayf.isa);
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    v7 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v7 setKeySpace:*MEMORY[0x277CE5FA8]];
    [v7 setKey:qword_27E54E9D0];
    [v7 setDataType:*MEMORY[0x277CC05F8]];
    [v7 setValue:v6];
    v5 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  }

  return v5;
}

+ (id)metadataDictionaryForAssetURL:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v15 = [MEMORY[0x277CE63D8] assetWithURL:?];
  v3 = [v15 metadataForFormat:*MEMORY[0x277CE5F40]];
  [MEMORY[0x277CE6520] metadataItemsFromArray:v3 withKey:qword_27E54E9D0 keySpace:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v18 + 1) + 8 * v9) stringValue];
        v12 = [v11 dataUsingEncoding:4];

        v17 = 0;
        v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:0 error:&v17];
        v13 = v17;

        if (v13)
        {
          sub_241906B98();
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)arrayFromDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && (v16 = 0u, v17 = 0u, v14 = 0u, v15 = 0u, (v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16]) != 0))
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (!v7)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", v10, v11];
        [v7 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)metadataStringArrayForAssetURL:(id)a3
{
  v4 = [a1 metadataDictionaryForAssetURL:a3];
  v5 = [a1 arrayFromDictionary:v4];

  return v5;
}

+ (id)metadataStringForArray:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = 0;
      v6 = &stru_28537E390;
      do
      {
        v7 = [v4 objectAtIndexedSubscript:v5];
        v8 = v7;
        if (v5)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v7];;
        }

        else
        {
          v9 = v7;
        }

        v10 = v9;

        ++v5;
        v6 = v10;
      }

      while (v5 < [v4 count]);
    }

    else
    {
      v10 = &stru_28537E390;
    }

    v12 = v10;
    v11 = v12;
  }

  else
  {
    v11 = 0;
    v12 = &stru_28537E390;
  }

  return v11;
}

+ (id)metadataStringForAssetURL:(id)a3
{
  v3 = [LoopQuicktimeMetadata metadataStringArrayForAssetURL:a3];
  v4 = [LoopQuicktimeMetadata metadataStringForArray:v3];

  return v4;
}

@end