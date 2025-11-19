@interface FilteredMetadataExtractor
- (FilteredMetadataExtractor)init;
- (int)processFile;
- (void)removeMetadataFromInterpolatedFrameDict:(id)a3;
@end

@implementation FilteredMetadataExtractor

- (FilteredMetadataExtractor)init
{
  v8[7] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = FilteredMetadataExtractor;
  v2 = [(IrisVideoMetadataExtractor *)&v7 init];
  v8[0] = @"privET";
  v8[1] = @"privImgG";
  v8[2] = @"privTZF";
  v8[3] = @"privAFS";
  v8[4] = @"privAFSt";
  v8[5] = @"privFM";
  v8[6] = @"privECMVct";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v4 = [v3 mutableCopy];
  filteredKeysArray = v2->filteredKeysArray;
  v2->filteredKeysArray = v4;

  return v2;
}

- (void)removeMetadataFromInterpolatedFrameDict:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"InterpolatedFrame"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->filteredKeysArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v4 objectForKey:{v11, v13}];

          if (v12)
          {
            [v4 removeObjectForKey:v11];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (int)processFile
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = FilteredMetadataExtractor;
  v3 = [(IrisVideoMetadataExtractor *)&v17 processFile];
  if (!v3 && self->super._framesMetadataArray)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->super._framesMetadataArray;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{*(*(&v13 + 1) + 8 * v9), v13}];
          [(FilteredMetadataExtractor *)self removeMetadataFromInterpolatedFrameDict:v10];
          [(NSArray *)v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }

    framesMetadataArray = self->super._framesMetadataArray;
    self->super._framesMetadataArray = v4;
  }

  return v3;
}

@end