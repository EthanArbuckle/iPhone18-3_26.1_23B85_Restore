@interface NSItemProvider(UTType)
- (id)loadDataRepresentationForContentType:()UTType completionHandler:;
- (id)loadFileRepresentationForContentType:()UTType openInPlace:completionHandler:;
- (id)registeredContentTypes;
- (id)registeredContentTypesConformingToContentType:()UTType;
- (id)registeredContentTypesForOpenInPlace;
- (void)initWithContentsOfURL:()UTType contentType:openInPlace:coordinated:visibility:;
- (void)registerDataRepresentationForContentType:()UTType visibility:loadHandler:;
- (void)registerFileRepresentationForContentType:()UTType visibility:openInPlace:loadHandler:;
@end

@implementation NSItemProvider(UTType)

- (void)initWithContentsOfURL:()UTType contentType:openInPlace:coordinated:visibility:
{
  v11 = a3;
  v12 = a4;
  v13 = [a1 init];
  if (v13)
  {
    if (v12)
    {
      v14 = _typeIdentifierFromUTType(v12);
    }

    else
    {
      v14 = 0;
    }

    if (![v14 length])
    {
      v25 = 0;
      if ([v11 getResourceValue:&v25 forKey:*MEMORY[0x1E695DAA0] error:0])
      {
        v15 = [v25 identifier];

        v14 = v15;
      }
    }

    if (![v14 length])
    {
      v16 = [v11 pathExtension];
      if ([v16 length])
      {
        v17 = [UTType typeWithFilenameExtension:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 identifier];

          v14 = v19;
        }
      }
    }

    if (![v14 length])
    {
      v20 = [(_UTConstantType *)&off_1ED40C640 identifier];

      v14 = v20;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __95__NSItemProvider_UTType__initWithContentsOfURL_contentType_openInPlace_coordinated_visibility___block_invoke;
    v22[3] = &unk_1E796EFA0;
    v23 = v11;
    v24 = a5;
    [v13 registerFileRepresentationForTypeIdentifier:v14 fileOptions:a5 visibility:a7 loadHandler:v22];
  }

  return v13;
}

- (void)registerDataRepresentationForContentType:()UTType visibility:loadHandler:
{
  v8 = a5;
  v9 = _typeIdentifierFromUTType(a3);
  [a1 registerDataRepresentationForTypeIdentifier:v9 visibility:a4 loadHandler:v8];
}

- (void)registerFileRepresentationForContentType:()UTType visibility:openInPlace:loadHandler:
{
  v10 = a6;
  v11 = _typeIdentifierFromUTType(a3);
  [a1 registerFileRepresentationForTypeIdentifier:v11 fileOptions:a5 visibility:a4 loadHandler:v10];
}

- (id)registeredContentTypes
{
  v1 = [a1 registeredTypeIdentifiers];
  v2 = _utTypesFromTypeIdentifiers(v1);

  return v2;
}

- (id)registeredContentTypesForOpenInPlace
{
  v1 = [a1 registeredTypeIdentifiersWithFileOptions:1];
  v2 = _utTypesFromTypeIdentifiers(v1);

  return v2;
}

- (id)registeredContentTypesConformingToContentType:()UTType
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 registeredContentTypes];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 conformsToType:{v4, v15}])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)loadDataRepresentationForContentType:()UTType completionHandler:
{
  v6 = a4;
  v7 = _typeIdentifierFromUTType(a3);
  v8 = [a1 loadDataRepresentationForTypeIdentifier:v7 completionHandler:v6];

  return v8;
}

- (id)loadFileRepresentationForContentType:()UTType openInPlace:completionHandler:
{
  v8 = a5;
  v9 = _typeIdentifierFromUTType(a3);
  if (a4)
  {
    v10 = [a1 loadInPlaceFileRepresentationForTypeIdentifier:v9 completionHandler:v8];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__NSItemProvider_UTType__loadFileRepresentationForContentType_openInPlace_completionHandler___block_invoke;
    v12[3] = &unk_1E796EFC8;
    v13 = v8;
    v10 = [a1 loadFileRepresentationForTypeIdentifier:v9 completionHandler:v12];
  }

  return v10;
}

@end