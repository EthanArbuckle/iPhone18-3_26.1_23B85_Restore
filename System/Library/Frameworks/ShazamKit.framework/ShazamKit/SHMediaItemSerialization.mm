@interface SHMediaItemSerialization
+ (BOOL)isInternalMediaItemProperty:(id)property;
+ (id)dateFormatter;
+ (id)serializedFormatFromArrayValues:(id)values property:(id)property;
+ (id)transformArrayValue:(id)value property:(id)property shouldSerialize:(BOOL)serialize;
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

+ (id)transformArrayValue:(id)value property:(id)property shouldSerialize:(BOOL)serialize
{
  serializeCopy = serialize;
  v52 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  v10 = [SHMediaItemPropertyUtilities categoryForShazamKitProperty:propertyCopy];
  v11 = v10;
  if (!serializeCopy)
  {
    v20 = valueCopy;
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
    v27 = [self serializedFormatFromArrayValues:valueCopy property:propertyCopy];
  }

  else
  {
    if (v10 == 6)
    {
      v12 = valueCopy;
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

            serializedRepresentation = [*(*(&v45 + 1) + 8 * k) serializedRepresentation];
            [v13 addObject:serializedRepresentation];
          }

          v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v16);
      }

LABEL_30:

      v21 = [v13 copy];
      goto LABEL_33;
    }

    v27 = valueCopy;
  }

  v21 = v27;
LABEL_33:

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)serializedFormatFromArrayValues:(id)values property:(id)property
{
  v22 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  propertyCopy = property;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  if ([SHMediaItemPropertyUtilities categoryForShazamKitProperty:propertyCopy]== 8)
  {
    v8 = valuesCopy;
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

          serializedRepresentation = [*(*(&v17 + 1) + 8 * i) serializedRepresentation];
          [v7 addObject:serializedRepresentation];
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

+ (BOOL)isInternalMediaItemProperty:(id)property
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = @"sh_identifier";
  v9 = @"sh_providerIdentifier";
  v10 = @"sh_score";
  v11 = @"sh_matchLocationCoordinate";
  v12 = @"sh_matchLocationCoordinate_Swift";
  v3 = MEMORY[0x277CBEA60];
  propertyCopy = property;
  v5 = [v3 arrayWithObjects:&v8 count:5];
  LOBYTE(v3) = [v5 containsObject:{propertyCopy, v8, v9, v10, v11, v12, v13}];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end