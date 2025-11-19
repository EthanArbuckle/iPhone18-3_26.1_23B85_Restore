@interface SFFormsMetadataProvider
- (SFFormsMetadataProvider)initWithFrameHandleToFormsDictionary:(id)a3;
- (unint64_t)formCount;
- (void)enumerateFormsAndFrameHandlesUsingBlock:(id)a3;
- (void)enumerateFormsAndFramesUsingBlock:(id)a3;
- (void)enumerateFormsUsingBlock:(id)a3;
- (void)replaceFormsMetadataUsingBlock:(id)a3;
@end

@implementation SFFormsMetadataProvider

- (SFFormsMetadataProvider)initWithFrameHandleToFormsDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFFormsMetadataProvider;
  v5 = [(SFFormsMetadataProvider *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    frameHandleToForms = v5->_frameHandleToForms;
    v5->_frameHandleToForms = v6;

    v8 = v5;
  }

  return v5;
}

- (unint64_t)formCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSDictionary *)self->_frameHandleToForms allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateFormsUsingBlock:(id)a3
{
  v4 = a3;
  frameHandleToForms = self->_frameHandleToForms;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SFFormsMetadataProvider_enumerateFormsUsingBlock___block_invoke;
  v7[3] = &unk_1E848F918;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)frameHandleToForms enumerateKeysAndObjectsUsingBlock:v7];
}

void __52__SFFormsMetadataProvider_enumerateFormsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (*a4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)replaceFormsMetadataUsingBlock:(id)a3
{
  v4 = a3;
  frameHandleToForms = self->_frameHandleToForms;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SFFormsMetadataProvider_replaceFormsMetadataUsingBlock___block_invoke;
  v9[3] = &unk_1E848F968;
  v10 = v4;
  v6 = v4;
  v7 = [(NSDictionary *)frameHandleToForms safari_mapAndFilterKeysAndObjectsUsingBlock:v9];
  v8 = self->_frameHandleToForms;
  self->_frameHandleToForms = v7;
}

id __58__SFFormsMetadataProvider_replaceFormsMetadataUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SFFormsMetadataProvider_replaceFormsMetadataUsingBlock___block_invoke_2;
  v6[3] = &unk_1E848F940;
  v7 = *(a1 + 32);
  v4 = [a3 safari_mapObjectsUsingBlock:v6];

  return v4;
}

void *__58__SFFormsMetadataProvider_replaceFormsMetadataUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (void)enumerateFormsAndFramesUsingBlock:(id)a3
{
  v4 = a3;
  frameHandleToForms = self->_frameHandleToForms;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFFormsMetadataProvider_enumerateFormsAndFramesUsingBlock___block_invoke;
  v7[3] = &unk_1E848F918;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)frameHandleToForms enumerateKeysAndObjectsUsingBlock:v7];
}

void __61__SFFormsMetadataProvider_enumerateFormsAndFramesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      v14 = *(a1 + 32);
      v15 = [v7 frameHandle];
      (*(v14 + 16))(v14, v15, v13, a4);

      if (*a4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateFormsAndFrameHandlesUsingBlock:(id)a3
{
  v4 = a3;
  frameHandleToForms = self->_frameHandleToForms;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFFormsMetadataProvider_enumerateFormsAndFrameHandlesUsingBlock___block_invoke;
  v7[3] = &unk_1E848F918;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)frameHandleToForms enumerateKeysAndObjectsUsingBlock:v7];
}

void __67__SFFormsMetadataProvider_enumerateFormsAndFrameHandlesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (*a4)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end