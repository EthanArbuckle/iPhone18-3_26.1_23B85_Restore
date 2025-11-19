@interface AXCodeItem
+ (id)_codeItemQueue;
+ (int64_t)codeItemTypeFromString:(id)a3;
- (AXCodeItem)associatedAccessibilityCodeItem;
- (AXCodeItem)initWithPath:(id)a3 isDyldOpened:(BOOL)a4;
- (AXCodeItem)targetCodeItem;
- (BOOL)_isSystemAppAccessibilityBundle;
- (BOOL)isEqual:(id)a3;
- (NSBundle)cachedBundle;
- (NSString)debugCodeTypeDescription;
- (NSString)name;
- (id)description;
- (id)prepareBackingBundleIfNeeded:(id *)a3;
- (int64_t)type;
- (unint64_t)hash;
- (unsigned)loadOrder;
- (void)_cacheLazyProperties;
- (void)addPlatformToTargetEntries:(id)a3;
- (void)loadWithStrategy:(int64_t)a3 onQueue:(id)a4 completion:(id)a5;
- (void)setIsLoaded:(BOOL)a3;
@end

@implementation AXCodeItem

+ (id)_codeItemQueue
{
  if (_codeItemQueue_onceToken != -1)
  {
    +[AXCodeItem _codeItemQueue];
  }

  v3 = _codeItemQueue__queue;

  return v3;
}

uint64_t __28__AXCodeItem__codeItemQueue__block_invoke()
{
  _codeItemQueue__queue = dispatch_queue_create("AXCodeItemAccess", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (int64_t)codeItemTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"dylib"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"bundle"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"framework"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"app"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"executable"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"appex"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"assistantUIBundle"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"siriUIBundle"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"siriUIPresentationBundle"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"uibundle"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"qldisplay"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"fpenroll"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"servicebundle"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"lockbundle"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"XPCServices"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"wkbundle"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"healthplugin"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"axbundle"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AXCodeItem)initWithPath:(id)a3 isDyldOpened:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = AXCodeItem;
  v7 = [(AXCodeItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = -1;
    [(AXCodeItem *)v7 setPath:v6];
    if (v4)
    {
      *&v8->_flags |= 1u;
      v9 = mach_absolute_time();
    }

    else
    {
      v9 = 0;
    }

    v8->_loadedAtTimestamp = v9;
  }

  return v8;
}

- (void)addPlatformToTargetEntries:(id)a3
{
  v4 = a3;
  v5 = [(AXCodeItem *)self platformToTarget];
  [v5 addEntriesFromDictionary:v4];
}

- (id)description
{
  if ([(AXCodeItem *)self type]== 18)
  {
    v3 = [(AXCodeItem *)self platformToTarget];
    v4 = [v3 debugDescription];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v6 = [(AXCodeItem *)self excludedProcesses];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(AXCodeItem *)self loadOrder];
    v10 = [(AXCodeItem *)self name];
    v11 = [(AXCodeItem *)self path];
    v12 = _AXNameForCodeItemType([(AXCodeItem *)self targetType]);
    v13 = [v8 stringWithFormat:@"AXCodeItem<%p> [Rank:%u] %@ [AXBundle name:%@] [Platforms and Targets:%@ %@] [Excluded: %@]", self, v9, v10, v11, v5, v12, v7];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v5 = _AXNameForCodeItemType([(AXCodeItem *)self type]);
    v7 = [(AXCodeItem *)self name];
    v10 = [(AXCodeItem *)self path];
    v13 = [v14 stringWithFormat:@"AXCodeItem<%p> [type:%@ name:%@] %@", self, v5, v7, v10];
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(AXCodeItem *)self path];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 path];
    v6 = [(AXCodeItem *)self path];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    [(AXCodeItem *)self _cacheLazyProperties];
    name = self->_name;
  }

  return name;
}

- (int64_t)type
{
  result = self->_type;
  if (result == -1)
  {
    [(AXCodeItem *)self _cacheLazyProperties];
    return self->_type;
  }

  return result;
}

- (unsigned)loadOrder
{
  if ([(AXCodeItem *)self _isSystemAppAccessibilityBundle])
  {
    return 18000;
  }

  else
  {
    return self->_loadOrder;
  }
}

- (void)_cacheLazyProperties
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = [(AXCodeItem *)self path];
  v4 = [v3 pathComponents];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = v6;
  v8 = 1;
  v9 = *v51;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v51 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v50 + 1) + 8 * i);
      v12 = [v11 pathExtension];
      v13 = [v12 isEqualToString:@"dylib"];

      if (v13)
      {
        goto LABEL_41;
      }

      v14 = [v11 pathExtension];
      v15 = [v14 isEqualToString:@"bundle"];

      if (v15)
      {
        v8 = 2;
        goto LABEL_41;
      }

      v16 = [v11 pathExtension];
      v17 = [v16 isEqualToString:@"framework"];

      if (v17)
      {
        v8 = 3;
        goto LABEL_41;
      }

      v18 = [v11 pathExtension];
      v19 = [v18 isEqualToString:@"app"];

      if (v19)
      {
        v8 = 4;
        goto LABEL_41;
      }

      v20 = [v11 pathExtension];
      v21 = [v20 isEqualToString:@"appex"];

      if (v21)
      {
        v8 = 6;
        goto LABEL_41;
      }

      v22 = [v11 pathExtension];
      v23 = [v22 isEqualToString:@"assistantUIBundle"];

      if (v23)
      {
        v8 = 7;
        goto LABEL_41;
      }

      v24 = [v11 pathExtension];
      v25 = [v24 isEqualToString:@"siriUIBundle"];

      if (v25)
      {
        v8 = 8;
        goto LABEL_41;
      }

      v26 = [v11 pathExtension];
      v27 = [v26 isEqualToString:@"siriUIPresentationBundle"];

      if (v27)
      {
        v8 = 9;
        goto LABEL_41;
      }

      v28 = [v11 pathExtension];
      v29 = [v28 isEqualToString:@"uibundle"];

      if (v29)
      {
        v8 = 10;
        goto LABEL_41;
      }

      v30 = [v11 pathExtension];
      v31 = [v30 isEqualToString:@"qldisplay"];

      if (v31)
      {
        v8 = 11;
        goto LABEL_41;
      }

      v32 = [v11 pathExtension];
      v33 = [v32 isEqualToString:@"fpenroll"];

      if (v33)
      {
        v8 = 12;
        goto LABEL_41;
      }

      v34 = [v11 pathExtension];
      v35 = [v34 isEqualToString:@"servicebundle"];

      if (v35)
      {
        v8 = 13;
        goto LABEL_41;
      }

      v36 = [v11 pathExtension];
      v37 = [v36 isEqualToString:@"lockbundle"];

      if (v37)
      {
        goto LABEL_26;
      }

      v38 = [v11 pathExtension];
      v39 = [v38 isEqualToString:@"XPCServices"];

      if (v39)
      {
        v8 = 16;
        goto LABEL_41;
      }

      v40 = [v11 pathExtension];
      v41 = [v40 isEqualToString:@"healthplugin"];

      if (v41)
      {
        v8 = 17;
        goto LABEL_41;
      }

      v42 = [v11 pathExtension];
      v43 = [v42 isEqualToString:@"wkbundle"];

      if (v43)
      {
LABEL_26:
        v8 = 14;
LABEL_41:
        self->_type = v8;
        v46 = [v11 stringByDeletingPathExtension];
        name = self->_name;
        self->_name = v46;

        goto LABEL_42;
      }

      v44 = [v11 pathExtension];
      v45 = [v44 isEqualToString:@"axbundle"];

      if (v45)
      {
        v8 = 18;
        goto LABEL_41;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_42:

  if (self->_type == -1)
  {
    v48 = self->_name;
    self->_name = @"<Uninitialized>";

    self->_type = 0;
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)setIsLoaded:(BOOL)a3
{
  flags = self->_flags;
  if ((flags & 1) == 0 && a3)
  {
    self->_loadedAtTimestamp = mach_absolute_time();
    flags = self->_flags;
  }

  *&self->_flags = flags & 0xFE | a3;
}

- (BOOL)_isSystemAppAccessibilityBundle
{
  v3 = [(AXCodeItem *)self name];
  if ([v3 isEqualToString:@"SpringBoard"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AXCodeItem *)self name];
    if ([v5 isEqualToString:@"Carousel"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(AXCodeItem *)self name];
      v4 = [v6 isEqualToString:@"PineBoard"];
    }
  }

  return [(AXCodeItem *)self isAccessibilityBundle]& v4;
}

- (NSString)debugCodeTypeDescription
{
  v2 = [(AXCodeItem *)self type];

  return _AXNameForCodeItemType(v2);
}

- (NSBundle)cachedBundle
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = +[AXCodeItem _codeItemQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__AXCodeItem_cachedBundle__block_invoke;
  v6[3] = &unk_1E735B758;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)prepareBackingBundleIfNeeded:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v5 = +[AXCodeItem _codeItemQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXCodeItem_prepareBackingBundleIfNeeded___block_invoke;
  block[3] = &unk_1E735BC00;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(v5, block);

  v6 = v11[5];
  if (v6)
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v7 = v17[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __43__AXCodeItem_prepareBackingBundleIfNeeded___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[1];
  if (v3)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v3);
    return;
  }

  v4 = [v2 path];
  if ([v4 length])
  {
    v5 = [v4 stringByDeletingLastPathComponent];

    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = 0;
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8 isDirectory:&v22];

    if (v9)
    {
      if (v22)
      {
        v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
        v11 = a1[4];
        v12 = *(v11 + 8);
        *(v11 + 8) = v10;

        v13 = *(a1[4] + 8);
        if (v13)
        {
          v14 = *(a1[5] + 8);
          v15 = v13;
          v16 = *(v14 + 40);
          *(v14 + 40) = v15;
LABEL_13:

          v4 = v5;
          goto LABEL_14;
        }

        [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoading" description:{@"Could not create bundle from URL: %@", v6}];
      }

      else
      {
        [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoading" description:{@"URL is not a directory as expected: %@", v6}];
      }
    }

    else
    {
      [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoading" description:{@"URL does not exist: %@", v6}];
    }
    v20 = ;
    v21 = *(a1[6] + 8);
    v16 = *(v21 + 40);
    *(v21 + 40) = v20;
    goto LABEL_13;
  }

  v17 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoading" description:@"Code item path was empty"];
  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

LABEL_14:
}

- (void)loadWithStrategy:(int64_t)a3 onQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v8 = dispatch_get_global_queue(0, 0);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [&__block_literal_global_103 copy];
    v12 = _Block_copy(v11);
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = _Block_copy(v10);
  v12 = _Block_copy(v11);

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AXCodeItem_loadWithStrategy_onQueue_completion___block_invoke_2;
  block[3] = &unk_1E735BC48;
  v15 = v12;
  v16 = a3;
  block[4] = self;
  v13 = v12;
  dispatch_async(v8, block);
}

void __50__AXCodeItem_loadWithStrategy_onQueue_completion___block_invoke_2(void *a1)
{
  if (!a1[6])
  {
    v4 = a1[4];
    v14 = 0;
    v5 = [v4 prepareBackingBundleIfNeeded:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v13 = 0;
      v8 = [v5 loadAndReturnError:&v13];
      v7 = v13;
      if (v8)
      {
        *(a1[4] + 16) |= 1u;
        v9 = a1[4];
        v10 = *(a1[5] + 16);
LABEL_10:
        v10();

        return;
      }
    }

    v11 = a1[4];
    v10 = *(a1[5] + 16);
    goto LABEL_10;
  }

  v3 = a1[4];
  v2 = a1[5];
  v12 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoading" description:@"dlopen strategy not inplemented"];
  (*(v2 + 16))(v2, v3, 0, v12);
}

- (AXCodeItem)associatedAccessibilityCodeItem
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedAccessibilityCodeItem);

  return WeakRetained;
}

- (AXCodeItem)targetCodeItem
{
  WeakRetained = objc_loadWeakRetained(&self->_targetCodeItem);

  return WeakRetained;
}

@end