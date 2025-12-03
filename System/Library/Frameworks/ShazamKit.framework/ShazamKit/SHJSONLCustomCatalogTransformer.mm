@interface SHJSONLCustomCatalogTransformer
+ (BOOL)objectIsHeader:(id)header;
+ (BOOL)objectIsMediaItem:(id)item;
+ (BOOL)objectIsSignature:(id)signature;
+ (id)catalogFileRepresentationOfMediaItems:(id)items withID:(id)d error:(id *)error;
+ (id)catalogFileRepresentationOfSignature:(id)signature withID:(id)d;
+ (id)mediaItemFromFileRow:(id)row error:(id *)error;
+ (id)outputFileHeader;
+ (id)signatureFromFileRow:(id)row error:(id *)error;
- (BOOL)parsedJSONObject:(id)object error:(id *)error;
- (SHCustomCatalogStorage)delegate;
- (void)reset;
@end

@implementation SHJSONLCustomCatalogTransformer

- (void)reset
{
  [(SHJSONLCustomCatalogTransformer *)self setError:0];

  [(SHJSONLCustomCatalogTransformer *)self setHeader:0];
}

- (BOOL)parsedJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (![SHJSONLCustomCatalogTransformer objectIsMediaItem:objectCopy])
  {
    if (![SHJSONLCustomCatalogTransformer objectIsSignature:objectCopy])
    {
      if (![SHJSONLCustomCatalogTransformer objectIsHeader:objectCopy])
      {
        goto LABEL_16;
      }

      header = [(SHJSONLCustomCatalogTransformer *)self header];

      if (!header)
      {
        [(SHJSONLCustomCatalogTransformer *)self setHeader:objectCopy];
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    error = [(SHJSONLCustomCatalogTransformer *)self error];
    if (!error)
    {
      header2 = [(SHJSONLCustomCatalogTransformer *)self header];

      if (header2)
      {
        v18 = 0;
        v13 = [SHJSONLCustomCatalogTransformer signatureFromFileRow:objectCopy error:&v18];
        if (v13)
        {
          v14 = v13;
          delegate = [(SHJSONLCustomCatalogTransformer *)self delegate];
          v16 = [SHJSONLCustomCatalogTransformer IDFromFileRow:objectCopy];
          [delegate producedSignature:v14 forID:v16];

          goto LABEL_16;
        }
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  error = [(SHJSONLCustomCatalogTransformer *)self error];
  if (error)
  {
LABEL_8:

    goto LABEL_9;
  }

  header3 = [(SHJSONLCustomCatalogTransformer *)self header];

  if (!header3)
  {
LABEL_9:
    [SHError annotateClientError:error code:300 underlyingError:0];
    LOBYTE(error) = 0;
    goto LABEL_17;
  }

  error = [SHJSONLCustomCatalogTransformer mediaItemFromFileRow:objectCopy error:error];
  if (error)
  {
    delegate2 = [(SHJSONLCustomCatalogTransformer *)self delegate];
    v10 = [SHJSONLCustomCatalogTransformer IDFromFileRow:objectCopy];
    [delegate2 producedMediaItem:error forID:v10];

LABEL_16:
    LOBYTE(error) = 1;
  }

LABEL_17:

  return error;
}

+ (BOOL)objectIsHeader:(id)header
{
  headerCopy = header;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [headerCopy objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"header"])
    {
      v5 = [headerCopy objectForKeyedSubscript:@"name"];
      if (v5)
      {
        v6 = [headerCopy objectForKeyedSubscript:@"version"];
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

+ (BOOL)objectIsMediaItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [itemCopy objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"media"])
    {
      v5 = [itemCopy objectForKeyedSubscript:@"id"];
      if (v5)
      {
        v6 = [itemCopy objectForKeyedSubscript:@"data"];
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

+ (BOOL)objectIsSignature:(id)signature
{
  signatureCopy = signature;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [signatureCopy objectForKeyedSubscript:@"type"];
    if ([v4 isEqualToString:@"signature"])
    {
      v5 = [signatureCopy objectForKeyedSubscript:@"id"];
      if (v5)
      {
        v6 = [signatureCopy objectForKeyedSubscript:@"data"];
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

+ (id)mediaItemFromFileRow:(id)row error:(id *)error
{
  v5 = [row objectForKeyedSubscript:@"data"];
  v6 = [SHMediaItemSerialization propertiesFromSerializationFormat:v5 error:error];
  v7 = [SHMediaItem mediaItemWithProperties:v6];

  return v7;
}

+ (id)signatureFromFileRow:(id)row error:(id *)error
{
  rowCopy = row;
  v6 = [rowCopy objectForKeyedSubscript:@"data"];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:0];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:mach_absolute_time()];
    v9 = [rowCopy objectForKeyedSubscript:@"id"];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    v11 = v10;
    if (v10)
    {
      uUID = v10;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v14 = uUID;

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
    [SHError annotateClientError:error code:200 underlyingError:0];
    v13 = 0;
  }

  return v13;
}

+ (id)catalogFileRepresentationOfSignature:(id)signature withID:(id)d
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v11[1] = @"id";
  v12[0] = @"signature";
  v12[1] = d;
  v11[2] = @"data";
  dCopy = d;
  dataRepresentation = [signature dataRepresentation];
  v7 = [dataRepresentation base64EncodedStringWithOptions:0];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)catalogFileRepresentationOfMediaItems:(id)items withID:(id)d error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = itemsCopy;
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

        properties = [*(*(&v23 + 1) + 8 * i) properties];
        v16 = [SHMediaItemSerialization serializationFormatForProperties:properties error:error];

        if (!v16)
        {

          v20 = 0;
          goto LABEL_11;
        }

        v17 = MEMORY[0x277CBEB38];
        v27[0] = @"type";
        v27[1] = @"id";
        v28[0] = @"media";
        v28[1] = dCopy;
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