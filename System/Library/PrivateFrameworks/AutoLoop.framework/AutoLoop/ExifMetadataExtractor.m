@interface ExifMetadataExtractor
- (BOOL)CopyFromMakerMediaDict:(id)a3 toDict:(id)a4;
- (BOOL)copyKeysFromDictionary:(id)a3;
- (BOOL)keyIsDesired:(id)a3;
- (ExifMetadataExtractor)init;
- (signed)processFile;
- (void)CopyFacesDataFromAuxDictionary:(id)a3 toArray:(id)a4;
- (void)performCorrectionsOnDictionary:(id)a3;
@end

@implementation ExifMetadataExtractor

- (ExifMetadataExtractor)init
{
  v15[3] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ExifMetadataExtractor;
  v2 = [(ExifMetadataExtractor *)&v12 init];
  v14[0] = @"AEAverage";
  v14[1] = @"AESTable";
  v15[0] = @"6";
  v15[1] = @"4";
  v14[2] = @"AFStable";
  v15[2] = @"7";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  desiredAppleMakerKeyPairs = v2->desiredAppleMakerKeyPairs;
  v2->desiredAppleMakerKeyPairs = v3;

  v5 = *MEMORY[0x277CD2FF0];
  v13[0] = *MEMORY[0x277CD30B0];
  v13[1] = v5;
  v6 = *MEMORY[0x277CD3040];
  v13[2] = *MEMORY[0x277CD3060];
  v13[3] = v6;
  v7 = *MEMORY[0x277CD30C8];
  v13[4] = *MEMORY[0x277CD3070];
  v13[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v9 = [v8 mutableCopy];
  desiredExifKeysArray = v2->desiredExifKeysArray;
  v2->desiredExifKeysArray = v9;

  return v2;
}

- (BOOL)keyIsDesired:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->desiredExifKeysArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 isEqualToString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)performCorrectionsOnDictionary:(id)a3
{
  v7 = a3;
  v4 = *MEMORY[0x277CD3040];
  if ([(ExifMetadataExtractor *)self keyIsDesired:*MEMORY[0x277CD3040]])
  {
    v5 = [v7 objectForKeyedSubscript:v4];
    if (!v5)
    {
      LODWORD(v6) = 1.0;
      v5 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    }

    [v7 setObject:v5 forKeyedSubscript:v4];
  }
}

- (BOOL)CopyFromMakerMediaDict:(id)a3 toDict:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->desiredAppleMakerKeyPairs;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v17 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->desiredAppleMakerKeyPairs objectForKeyedSubscript:v13];
        v15 = [v6 objectForKeyedSubscript:v14];

        if (v15)
        {
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        else
        {
          v17 = 0;
        }
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

- (void)CopyFacesDataFromAuxDictionary:(id)a3 toArray:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"Regions"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"RegionList"];
    v9 = v8;
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:@"Type"];
            if ([v15 isEqualToString:@"Face"])
            {
              [v5 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)copyKeysFromDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->desiredExifKeysArray;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:{v12, v16}];
        if (v13)
        {
          [(NSMutableDictionary *)v5 setObject:v13 forKeyedSubscript:v12];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  metadataDictionary = self->metadataDictionary;
  self->metadataDictionary = v5;

  return v10 & 1;
}

- (signed)processFile
{
  self->hadAllRequestedKeys = 0;
  inFileURL = self->inFileURL;
  if (inFileURL)
  {
    v4 = CGImageSourceCreateWithURL(inFileURL, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);
      if (self->saveAllMetadata)
      {
        objc_storeStrong(&self->allMetadata, v6);
      }

      if (v6)
      {
        v7 = [(__CFDictionary *)v6 objectForKey:*MEMORY[0x277CD3038]];
        if (v7)
        {
          self->hadAllRequestedKeys = [(ExifMetadataExtractor *)self copyKeysFromDictionary:v7];
        }

        v8 = [(__CFDictionary *)v6 objectForKey:*MEMORY[0x277CD33B0]];
        if (v8)
        {
          self->hadAllRequestedKeys &= [(ExifMetadataExtractor *)self CopyFromMakerMediaDict:v8 toDict:self->metadataDictionary];
        }

        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        facesArray = self->facesArray;
        self->facesArray = v9;

        v11 = [(__CFDictionary *)v6 objectForKey:*MEMORY[0x277CD2F50]];
        if (v11)
        {
          [(ExifMetadataExtractor *)self CopyFacesDataFromAuxDictionary:v11 toArray:self->facesArray];
        }

        v12 = 0;
      }

      else
      {
        v12 = -5003;
      }

      CFRelease(v5);
    }

    else
    {
      v12 = -5002;
    }
  }

  else
  {
    v12 = -5001;
  }

  if (self->metadataDictionary)
  {
    [(ExifMetadataExtractor *)self performCorrectionsOnDictionary:?];
  }

  return v12;
}

@end