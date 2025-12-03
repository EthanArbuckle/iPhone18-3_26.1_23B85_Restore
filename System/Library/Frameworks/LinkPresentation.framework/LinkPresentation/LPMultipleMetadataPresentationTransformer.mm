@interface LPMultipleMetadataPresentationTransformer
- (LPMultipleMetadataPresentationTransformer)initWithMetadata:(id)metadata;
- (id)_summaryCounts;
- (id)_summarySubtitle;
- (id)summary;
- (id)summaryImages;
- (id)summaryMetadata;
@end

@implementation LPMultipleMetadataPresentationTransformer

- (LPMultipleMetadataPresentationTransformer)initWithMetadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v27.receiver = self;
  v27.super_class = LPMultipleMetadataPresentationTransformer;
  v6 = [(LPMultipleMetadataPresentationTransformer *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadata, metadata);
    _summaryCounts = [(LPMultipleMetadataPresentationTransformer *)v7 _summaryCounts];
    summaryCounts = v7->_summaryCounts;
    v7->_summaryCounts = _summaryCounts;

    v7->_hasOnlyFiles = 1;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v7->_metadata;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          originalURL = [v14 originalURL];
          v16 = originalURL;
          if (originalURL)
          {
            v17 = originalURL;
          }

          else
          {
            v17 = [v14 URL];
          }

          v18 = v17;

          specialization = [v14 specialization];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
          }

          else
          {
            isFileURL = [v18 isFileURL];

            if ((isFileURL & 1) == 0)
            {
              v7->_hasOnlyFiles = 0;
            }
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v21 = v7;
  }

  return v7;
}

- (id)_summaryCounts
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__LPMultipleMetadataPresentationTransformer__summaryCounts__block_invoke;
  aBlock[3] = &unk_1E7A378F8;
  v23 = v2;
  v30 = v23;
  v3 = _Block_copy(aBlock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_metadata;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        specialization = [v8 specialization];
        if (specialization && ([v8 specialization], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", &unk_1F2496F58), v10, specialization, v11))
        {
          specialization2 = [v8 specialization];
          v13 = [specialization2 summaryTypeForTransformer:self];

          v3[2](v3, v13);
        }

        else
        {
          originalURL = [v8 originalURL];
          if (originalURL || ([v8 URL], (originalURL = objc_claimAutoreleasedReturnValue()) != 0))
          {
            if ([originalURL isFileURL])
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }

            v3[2](v3, v15);
          }

          else
          {
            icon = [v8 icon];
            if (icon || ([v8 image], (icon = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "alternateImages"), (icon = objc_claimAutoreleasedReturnValue()) != 0))
            {

              v17 = 1;
            }

            else
            {
              contentImages = [v8 contentImages];
              v19 = contentImages == 0;

              if (v19)
              {
                v17 = 3;
              }

              else
              {
                v17 = 1;
              }
            }

            originalURL = 0;
            v3[2](v3, v17);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v20 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
      v5 = v20;
    }

    while (v20);
  }

  v21 = v23;
  return v23;
}

void __59__LPMultipleMetadataPresentationTransformer__summaryCounts__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v9 = [v4 objectForKey:v5];

  if (v9)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "intValue") + 1}];

    v10 = v6;
  }

  else
  {
    v10 = &unk_1F24836C8;
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v7 setObject:v10 forKey:v8];
}

- (id)summary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  summaryCounts = self->_summaryCounts;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__LPMultipleMetadataPresentationTransformer_summary__block_invoke;
  v8[3] = &unk_1E7A37920;
  v5 = v3;
  v9 = v5;
  [(NSDictionary *)summaryCounts enumerateKeysAndObjectsUsingBlock:v8];
  [v5 sortUsingComparator:&__block_literal_global_27];
  v6 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v5];

  return v6;
}

void __52__LPMultipleMetadataPresentationTransformer_summary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v13 intValue];
  v7 = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
      v9 = LPLocalizedString(@"%ld Image(s)");
      v10 = [v8 localizedStringWithFormat:v9, objc_msgSend(v5, "longValue")];
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      v9 = LPLocalizedString(@"%ld Link(s)");
      v10 = [v11 localizedStringWithFormat:v9, objc_msgSend(v5, "longValue")];
    }

    goto LABEL_10;
  }

  if (v6 == 2)
  {
    v12 = MEMORY[0x1E696AEC0];
    v9 = LPLocalizedString(@"%ld Document(s)");
    v10 = [v12 localizedStringWithFormat:v9, objc_msgSend(v5, "longValue")];
LABEL_10:
    v7 = v10;

    goto LABEL_11;
  }

  if (v6 == 3)
  {
    v7 = LPLocalizedString(@"Plain Text");
  }

LABEL_11:
  [*(a1 + 32) addObject:v7];
}

- (id)summaryImages
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = +[LPResources fileIcon];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[LPResources safariIcon];
  }

  v6 = v5;

  if (self->_hasOnlyFiles && sizeClassPrefersPlaceholderIconForMultipleFiles(self->_preferredSizeClass))
  {
    if ([(NSArray *)self->_metadata count]< 2)
    {
      v32 = v6;
      v7 = &v32;
      v8 = 1;
    }

    else
    {
      v33[0] = v6;
      v33[1] = v6;
      v7 = v33;
      v8 = 2;
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:v8];
    goto LABEL_29;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_metadata;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        specialization = [v14 specialization];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          image = [v14 image];
          v18 = image == 0;

          if (v18)
          {
            [v9 addObject:v6];
            continue;
          }

LABEL_15:
          image2 = [v14 image];
          [v9 addObject:image2];
          goto LABEL_22;
        }

        icon = [v14 icon];

        if (icon)
        {
          image2 = [v14 icon];
          [v9 addObject:image2];
          goto LABEL_22;
        }

        image3 = [v14 image];

        if (image3)
        {
          goto LABEL_15;
        }

        alternateImages = [v14 alternateImages];
        v23 = [alternateImages count] == 0;

        if (v23)
        {
          continue;
        }

        image2 = [v14 alternateImages];
        firstObject = [image2 firstObject];
        [v9 addObject:firstObject];

LABEL_22:
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  if (![v9 count])
  {
    v25 = +[LPResources safariIcon];
    [v9 addObject:v25];
  }

LABEL_29:

  return v9;
}

- (id)_summarySubtitle
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_hasOnlyFiles)
  {
    goto LABEL_12;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_metadata;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v4)
  {

LABEL_12:
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__LPMultipleMetadataPresentationTransformer__summarySubtitle__block_invoke;
    aBlock[3] = &unk_1E7A37968;
    v12 = v11;
    v29 = v12;
    v13 = _Block_copy(aBlock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_metadata;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = *v25;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        originalURL = [v18 originalURL];
        v20 = originalURL;
        if (originalURL)
        {
          if ([originalURL isFileURL])
          {
            goto LABEL_23;
          }

          _lp_simplifiedDisplayString = [v20 _lp_simplifiedDisplayString];
          v13[2](v13, _lp_simplifiedDisplayString);
        }

        else
        {
          summary = [v18 summary];

          if (!summary)
          {
            goto LABEL_23;
          }

          _lp_simplifiedDisplayString = [v18 summary];
          v13[2](v13, _lp_simplifiedDisplayString);
        }

LABEL_23:
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v15)
      {
LABEL_25:

        if ([v12 count])
        {
          v10 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v12];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_29;
      }
    }
  }

  v5 = 0;
  v6 = *v31;
  do
  {
    for (j = 0; j != v4; ++j)
    {
      if (*v31 != v6)
      {
        objc_enumerationMutation(v3);
      }

      specialization = [*(*(&v30 + 1) + 8 * j) specialization];
      v9 = [specialization size];

      v5 += v9;
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  }

  while (v4);

  if (!v5)
  {
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E696AAF0] stringFromByteCount:v5 countStyle:0];
LABEL_29:

  return v10;
}

void __61__LPMultipleMetadataPresentationTransformer__summarySubtitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)summaryMetadata
{
  if ([(NSArray *)self->_metadata count]== 1)
  {
    firstObject = [(NSArray *)self->_metadata firstObject];
  }

  else
  {
    firstObject = objc_alloc_init(LPLinkMetadata);
    summary = [(LPMultipleMetadataPresentationTransformer *)self summary];
    [(LPLinkMetadata *)firstObject setTitle:summary];

    _summarySubtitle = [(LPMultipleMetadataPresentationTransformer *)self _summarySubtitle];
    [(LPLinkMetadata *)firstObject setSummary:_summarySubtitle];

    summaryImages = [(LPMultipleMetadataPresentationTransformer *)self summaryImages];
    if ([summaryImages count])
    {
      firstObject2 = [summaryImages firstObject];
      [(LPLinkMetadata *)firstObject setIcon:firstObject2];
    }

    if ([summaryImages count] >= 2)
    {
      v8 = [summaryImages subarrayWithRange:{1, objc_msgSend(summaryImages, "count") - 1}];
      [(LPLinkMetadata *)firstObject setAlternateImages:v8];
    }

    v9 = objc_alloc_init(LPSummarizedLinkMetadata);
    [(LPLinkMetadata *)firstObject setSpecialization:v9];
  }

  return firstObject;
}

@end