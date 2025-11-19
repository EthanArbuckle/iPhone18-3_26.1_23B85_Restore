@interface SHMediaItemSerialization
+ (BOOL)isInternalMediaItemProperty:(id)a3;
+ (id)dateFormatter;
+ (id)serializedFormatFromArrayValues:(id)a3 property:(id)a4;
+ (id)transformArrayValue:(id)a3 property:(id)a4 shouldSerialize:(BOOL)a5;
@end

@implementation SHMediaItemSerialization

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[SHMediaItemSerialization dateFormatter];
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

uint64_t __41__SHMediaItemSerialization_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v0;

  v2 = dateFormatter_dateFormatter;

  return [v2 setFormatOptions:1907];
}

+ (id)transformArrayValue:(id)a3 property:(id)a4 shouldSerialize:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [SHMediaItemPropertyUtilities categoryForShazamKitProperty:v9];
  v11 = v10;
  if (!v5)
  {
    v20 = v8;
    v21 = v20;
    if (v11 == 8)
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = v21;
      v28 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v38;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v38 != v30)
            {
              objc_enumerationMutation(v14);
            }

            v32 = *(*(&v37 + 1) + 8 * i);
            v33 = [SHSignatureAlignment alloc];
            v34 = [(SHSignatureAlignment *)v33 initWithSerializedRepresentation:v32, v37];
            [v13 addObject:v34];
          }

          v29 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v29);
      }
    }

    else
    {
      if (v11 != 6)
      {
        goto LABEL_33;
      }

      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = v21;
      v22 = [v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v14);
            }

            v26 = [[SHRange alloc] initWithSerializedRepresentation:*(*(&v41 + 1) + 8 * j)];
            [v13 addObject:v26];
          }

          v23 = [v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v23);
      }
    }

    goto LABEL_30;
  }

  if (v10 == 8)
  {
    v27 = [a1 serializedFormatFromArrayValues:v8 property:v9];
  }

  else
  {
    if (v10 == 6)
    {
      v12 = v8;
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v46;
        do
        {
          for (k = 0; k != v16; ++k)
          {
            if (*v46 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v45 + 1) + 8 * k) serializedRepresentation];
            [v13 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v16);
      }

LABEL_30:

      v21 = [v13 copy];
      goto LABEL_33;
    }

    v27 = v8;
  }

  v21 = v27;
LABEL_33:

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)serializedFormatFromArrayValues:(id)a3 property:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if ([SHMediaItemPropertyUtilities categoryForShazamKitProperty:v6]== 8)
  {
    v8 = v5;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) serializedRepresentation];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to serialize a custom array containing objects that aren't ShazamKit defined."];
  }

  v14 = [v7 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isInternalMediaItemProperty:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = @"sh_identifier";
  v9 = @"sh_providerIdentifier";
  v10 = @"sh_score";
  v11 = @"sh_matchLocationCoordinate";
  v12 = @"sh_matchLocationCoordinate_Swift";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:5];
  LOBYTE(v3) = [v5 containsObject:{v4, v8, v9, v10, v11, v12, v13}];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end