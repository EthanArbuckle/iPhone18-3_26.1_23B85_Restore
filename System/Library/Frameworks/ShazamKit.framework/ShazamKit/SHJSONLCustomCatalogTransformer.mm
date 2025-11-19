@interface SHJSONLCustomCatalogTransformer
+ (BOOL)objectIsHeader:(id)a3;
+ (BOOL)objectIsMediaItem:(id)a3;
+ (BOOL)objectIsSignature:(id)a3;
+ (id)catalogFileRepresentationOfMediaItems:(id)a3 withID:(id)a4 error:(id *)a5;
+ (id)catalogFileRepresentationOfSignature:(id)a3 withID:(id)a4;
+ (id)mediaItemFromFileRow:(id)a3 error:(id *)a4;
+ (id)outputFileHeader;
+ (id)signatureFromFileRow:(id)a3 error:(id *)a4;
- (BOOL)parsedJSONObject:(id)a3 error:(id *)a4;
- (SHCustomCatalogStorage)delegate;
- (void)reset;
@end

@implementation SHJSONLCustomCatalogTransformer

- (void)reset
{
  [(SHJSONLCustomCatalogTransformer *)self setError:0];

  [(SHJSONLCustomCatalogTransformer *)self setHeader:0];
}

- (BOOL)parsedJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![SHJSONLCustomCatalogTransformer objectIsMediaItem:v6])
  {
    if (![SHJSONLCustomCatalogTransformer objectIsSignature:v6])
    {
      if (![SHJSONLCustomCatalogTransformer objectIsHeader:v6])
      {
        goto LABEL_16;
      }

      v11 = [(SHJSONLCustomCatalogTransformer *)self header];

      if (!v11)
      {
        [(SHJSONLCustomCatalogTransformer *)self setHeader:v6];
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v7 = [(SHJSONLCustomCatalogTransformer *)self error];
    if (!v7)
    {
      v12 = [(SHJSONLCustomCatalogTransformer *)self header];

      if (v12)
      {
        v18 = 0;
        v13 = [SHJSONLCustomCatalogTransformer signatureFromFileRow:v6 error:&v18];
        if (v13)
        {
          v14 = v13;
          v15 = [(SHJSONLCustomCatalogTransformer *)self delegate];
          v16 = [SHJSONLCustomCatalogTransformer IDFromFileRow:v6];
          [v15 producedSignature:v14 forID:v16];

          goto LABEL_16;
        }
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(SHJSONLCustomCatalogTransformer *)self error];
  if (v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = [(SHJSONLCustomCatalogTransformer *)self header];

  if (!v8)
  {
LABEL_9:
    [SHError annotateClientError:a4 code:300 underlyingError:0];
    LOBYTE(a4) = 0;
    goto LABEL_17;
  }

  a4 = [SHJSONLCustomCatalogTransformer mediaItemFromFileRow:v6 error:a4];
  if (a4)
  {
    v9 = [(SHJSONLCustomCatalogTransformer *)self delegate];
    v10 = [SHJSONLCustomCatalogTransformer IDFromFileRow:v6];
    [v9 producedMediaItem:a4 forID:v10];

LABEL_16:
    LOBYTE(a4) = 1;
  }

LABEL_17:

  return a4;
}

+ (BOOL)objectIsHeader:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"header"])
    {
      v5 = [v3 objectForKeyedSubscript:@"name"];
      if (v5)
      {
        v6 = [v3 objectForKeyedSubscript:@"version"];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)objectIsMediaItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"media"])
    {
      v5 = [v3 objectForKeyedSubscript:@"id"];
      if (v5)
      {
        v6 = [v3 objectForKeyedSubscript:@"data"];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)objectIsSignature:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"signature"])
    {
      v5 = [v3 objectForKeyedSubscript:@"id"];
      if (v5)
      {
        v6 = [v3 objectForKeyedSubscript:@"data"];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)mediaItemFromFileRow:(id)a3 error:(id *)a4
{
  v5 = [a3 objectForKeyedSubscript:@"data"];
  v6 = [SHMediaItemSerialization propertiesFromSerializationFormat:v5 error:a4];
  v7 = [SHMediaItem mediaItemWithProperties:v6];

  return v7;
}

+ (id)signatureFromFileRow:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"data"];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:0];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:mach_absolute_time()];
    v9 = [v5 objectForKeyedSubscript:@"id"];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CCAD78] UUID];
    }

    v14 = v12;

    v18 = 0;
    v15 = [[SHSignature alloc] initWithID:v14 dataRepresentation:v7 startTime:v8 error:&v18];
    v13 = v15;
    if (v15)
    {
      v16 = v15;
    }
  }

  else
  {
    [SHError annotateClientError:a4 code:200 underlyingError:0];
    v13 = 0;
  }

  return v13;
}

+ (id)catalogFileRepresentationOfSignature:(id)a3 withID:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v11[1] = @"id";
  v12[0] = @"signature";
  v12[1] = a4;
  v11[2] = @"data";
  v5 = a4;
  v6 = [a3 dataRepresentation];
  v7 = [v6 base64EncodedStringWithOptions:0];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)catalogFileRepresentationOfMediaItems:(id)a3 withID:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v23 + 1) + 8 * i) properties];
        v16 = [SHMediaItemSerialization serializationFormatForProperties:v15 error:a5];

        if (!v16)
        {

          v20 = 0;
          goto LABEL_11;
        }

        v17 = MEMORY[0x277CBEB38];
        v27[0] = @"type";
        v27[1] = @"id";
        v28[0] = @"media";
        v28[1] = v8;
        v27[2] = @"data";
        v28[2] = v16;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
        v19 = [v17 dictionaryWithDictionary:v18];

        [v9 addObject:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = [v9 copy];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)outputFileHeader
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"name";
  v6[0] = @"header";
  v6[1] = @"Shazam Catalog";
  v5[2] = @"version";
  v6[2] = &unk_2845D1528;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (SHCustomCatalogStorage)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end