@interface CNContactBufferDecoder
- (BOOL)decodeContactsFromBuffer:(id)a3 replyHandler:(id)a4;
- (CNContactBufferDecoder)initWithKeyDescriptorToMakeAvailable:(id)a3 posterDataStore:(id)a4 mutableResults:(BOOL)a5;
- (id)_contactFromByteCursor:(unint64_t)a3 end:;
- (id)completedPendingContactFromByteCursor:(unint64_t)a3 end:;
- (void)_applyImageDataFromByteCursor:(unint64_t)a3 end:;
- (void)_applyMultivalueFromByteCursor:(unint64_t)a3 end:(uint64_t)property abPropertyID:;
- (void)_applyPropertiesFromFromByteCursor:(unint64_t)a3 end:;
- (void)addContactImageDataToContact:(id *)a1;
- (void)addPosterDataToContact:(id *)a1;
@end

@implementation CNContactBufferDecoder

- (CNContactBufferDecoder)initWithKeyDescriptorToMakeAvailable:(id)a3 posterDataStore:(id)a4 mutableResults:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = CNContactBufferDecoder;
  v10 = [(CNContactBufferDecoder *)&v19 init];
  if (v10)
  {
    v11 = [v8 copy];
    keyDescriptorToMakeAvailable = v10->_keyDescriptorToMakeAvailable;
    v10->_keyDescriptorToMakeAvailable = v11;

    v13 = [[_CNContactPosterDataFeatureFlagGuardian alloc] initWithStore:v9];
    posterDataStore = v10->_posterDataStore;
    v10->_posterDataStore = v13;

    v10->_mutableResults = a5;
    v10->_state = 0;
    v15 = objc_opt_new();
    resumeBuffer = v10->_resumeBuffer;
    v10->_resumeBuffer = v15;

    v17 = v10;
  }

  return v10;
}

- (BOOL)decodeContactsFromBuffer:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = [v6 bytes];
  v8 = &v21[[v6 length]];
  while (!self || self->_bytesNeededToResume < 1)
  {
    v9 = [(CNContactBufferDecoder *)self _contactFromByteCursor:v8 end:?];
    v10 = v9;
    if (self)
    {
      goto LABEL_5;
    }

    v13 = v21 < v8;
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  v10 = [(CNContactBufferDecoder *)self completedPendingContactFromByteCursor:v8 end:?];
LABEL_5:
  state = self->_state;
  if (state)
  {
    v12 = 1;
  }

  else
  {
    v12 = v21 >= v8;
  }

  v13 = !v12;
  if (v10)
  {
LABEL_12:
    v14 = [(CNContactBufferDecoder *)self keyDescriptorToMakeAvailable];
    [v10 setAvailableKeyDescriptor:v14];

    v15 = [MEMORY[0x1E69966E8] currentEnvironment];
    v16 = [v15 featureFlags];
    v17 = [v16 isFeatureEnabled:22];

    if (v17)
    {
      [(CNContactBufferDecoder *)&self->super.isa addPosterDataToContact:v10];
      [(CNContactBufferDecoder *)&self->super.isa addContactImageDataToContact:v10];
    }

    if ([(CNContactBufferDecoder *)self mutableResults])
    {
      [v10 setFrozenSelfAsSnapshot];
    }

    else
    {
      v18 = [v10 freezeWithSelfAsSnapshot];
    }

    v7[2](v7, v10, v13);

    goto LABEL_21;
  }

  if (state != 2)
  {
    if (state == 1)
    {
      v7[2](v7, 0, 0);
LABEL_26:
      v19 = 1;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v19 = 0;
LABEL_28:

  return v19;
}

- (id)_contactFromByteCursor:(unint64_t)a3 end:
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = v6 >= a3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && *v6 == 1 && v6 + 13 <= a3 && v6 + 13 + *(v6 + 5) <= a3)
    {
      v10 = *(v6 + 1);
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 + 13 length:*(v6 + 5) encoding:4];
      v12 = [(CNContact *)CNMutableContact contactWithIdentifier:v11];
      v13 = *(a1 + 32);
      *(a1 + 32) = v12;

      [*(a1 + 32) setIOSLegacyIdentifier:v10];
      v15 = (v6 + *(v6 + 5) + 13);
      [(CNContactBufferDecoder *)a1 _applyPropertiesFromFromByteCursor:a3 end:?];
      *a2 = v15;
      if (*(a1 + 24))
      {
        v3 = 0;
      }

      else
      {
        v3 = *(a1 + 32);
        v14 = *(a1 + 32);
        *(a1 + 32) = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_applyPropertiesFromFromByteCursor:(unint64_t)a3 end:
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v3 = a2;
  if (!a2)
  {
    return;
  }

  v4 = a3;
  v5 = *a2;
  if (!*a2 || v5 >= a3)
  {
    return;
  }

  v30 = *a2;
  v24 = a3;
  v25 = a2;
  while (1)
  {
    v8 = *v5;
    if (v8 > 2)
    {
      break;
    }

    if (v8 != 2)
    {
      if (v8 == 1)
      {
        v23 = 0;
      }

      else
      {
LABEL_36:
        v23 = 2;
      }

      goto LABEL_30;
    }

    if ((v5 + 13) > v4)
    {
      goto LABEL_31;
    }

    v10 = *(v5 + 5);
    if (&v5[v10 + 13] > v4)
    {
      goto LABEL_31;
    }

    v11 = *(v5 + 1);
    v12 = +[CNiOSABConversions contactPropertiesByABPropertyID];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v14 = [v12 objectForKeyedSubscript:v13];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 CNValueFromABBytes:v5 + 13 length:{v10, v24, v25}];
          [v20 setCNValue:v21 onContact:*(a1 + 32)];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }

    v30 += *(v5 + 5) + 13;
    v4 = v24;
    v3 = v25;
LABEL_27:
    v5 = v30;
    *v3 = v30;
    if (v5 >= v4)
    {
      v23 = 0;
      goto LABEL_32;
    }
  }

  if (v8 == 3)
  {
    if ((v5 + 5) > v4)
    {
      goto LABEL_31;
    }

    v22 = *(v5 + 1);
    v30 = v5 + 5;
    [(CNContactBufferDecoder *)a1 _applyMultivalueFromByteCursor:v4 end:v22 abPropertyID:?];
    goto LABEL_27;
  }

  if (v8 != 6)
  {
    goto LABEL_36;
  }

  v9 = v5 + 26;
  if ((v5 + 26) <= v4)
  {
    if (&v9[*(v5 + 18)] <= v4)
    {
      [(CNContactBufferDecoder *)a1 _applyImageDataFromByteCursor:v4 end:?];
      goto LABEL_27;
    }

    [*(a1 + 40) appendBytes:v30 length:v4 - v30];
    *(a1 + 48) = &v9[*(v5 + 18) - v4];
    v23 = 1;
LABEL_30:
    *v3 = v30;
    goto LABEL_32;
  }

LABEL_31:
  v23 = 2;
LABEL_32:
  *(a1 + 24) = v23;
}

- (void)_applyMultivalueFromByteCursor:(unint64_t)a3 end:(uint64_t)property abPropertyID:
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && *a2 && *a2 < a3)
  {
    v39 = *a2;
    TypeOfProperty = ABPersonGetTypeOfProperty(property);
    v8 = +[CNiOSABConversions contactPropertiesByABPropertyID];
    v40 = property;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:property];
    v10 = [v8 objectForKeyedSubscript:v9];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v12)
    {
      v36 = a1;
      v13 = *v46;
      v14 = 0x1E696A000uLL;
      v38 = v11;
      v34 = *v46;
      while (2)
      {
        v15 = 0;
        v33 = v12;
        do
        {
          if (*v46 != v13)
          {
            v16 = v15;
            objc_enumerationMutation(v11);
            v15 = v16;
          }

          v35 = v15;
          v41 = *(*(&v45 + 1) + 8 * v15);
          v43 = [v41 CNMutableValueForABMultivalue];
          v17 = 0;
          v18 = v39;
          while (*v18 == 4)
          {
            if (v18 + 29 > a3 || v18 + 29 + *(v18 + 5) > a3)
            {
              *(v36 + 24) = 2;
LABEL_47:

              goto LABEL_48;
            }

            v19 = *(v18 + 1);
            v20 = [objc_alloc(*(v14 + 3776)) initWithBytes:v18 + 29 length:*(v18 + 5) encoding:4];
            v21 = *(v18 + 5) + v18 + 29;
            v22 = *(v18 + 13);
            if (v21 + v22 > a3)
            {
              *(v36 + 24) = 2;
LABEL_46:

              goto LABEL_47;
            }

            if (v22)
            {
              v44 = [objc_alloc(*(v14 + 3776)) initWithBytes:v21 length:*(v18 + 13) encoding:4];
            }

            else
            {
              v44 = 0;
            }

            v18 = v21 + *(v18 + 13) + *(v18 + 21);
            if (TypeOfProperty == 261)
            {
              v23 = [MEMORY[0x1E695DF90] dictionary];
              if (v18 < a3)
              {
                while (1)
                {
                  if (*v18 != 5)
                  {
                    goto LABEL_30;
                  }

                  v24 = v18 + 17;
                  if (v18 + 17 > a3 || v24 + *(v18 + 1) > a3)
                  {
                    break;
                  }

                  v25 = [objc_alloc(*(v14 + 3776)) initWithBytes:v18 + 17 length:*(v18 + 1) encoding:4];
                  v26 = v14;
                  v27 = v25;
                  v28 = v24 + *(v18 + 1);
                  if (v28 + *(v18 + 9) > a3)
                  {
                    *(v36 + 24) = 2;

                    goto LABEL_44;
                  }

                  v29 = v26;
                  v30 = [objc_alloc(*(v26 + 3776)) initWithBytes:v28 length:*(v18 + 9) encoding:4];
                  v31 = *(v18 + 9);
                  if (v27)
                  {
                    [v23 setObject:v30 forKey:v27];
                  }

                  else
                  {
                    NSLog(&cfstr_MissingDiction.isa, v40);
                  }

                  v18 = v28 + v31;

                  v14 = v29;
                  if (v18 >= a3)
                  {
                    goto LABEL_30;
                  }
                }

                *(v36 + 24) = 2;
LABEL_44:

                v11 = v38;
                goto LABEL_45;
              }

LABEL_30:
              v32 = v44;
              v17 |= [v41 applyDictionary:v23 identifier:v20 legacyIdentifier:v19 label:v44 toCNMultivalueRepresentation:v43];

              v11 = v38;
            }

            else
            {
              if (v18 > a3)
              {
                *(v36 + 24) = 2;
LABEL_45:

                goto LABEL_46;
              }

              v32 = v44;
              v17 |= [v41 applyABMultivalueValueBytes:? length:? identifier:? legacyIdentifier:? label:? toCNMultivalueRepresentation:?];
            }

            if (v18 >= a3)
            {
              break;
            }
          }

          if (v17)
          {
            [v41 setCNValue:v43 onContact:*(v36 + 32)];
          }

          v13 = v34;
          v15 = v35 + 1;
        }

        while (v35 + 1 != v33);
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
        v13 = v34;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = v39;
    }

    *a2 = v18;
LABEL_48:
  }
}

- (id)completedPendingContactFromByteCursor:(unint64_t)a3 end:
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = a1 + 40;
  v6 = *(a1 + 40);
  v7 = *(v8 + 8);
  v9 = a3 - *a2 >= v7 ? v7 : a3 - *a2;
  [v6 appendBytes:? length:?];
  *a2 += v9;
  v10 = *(a1 + 48) - v9;
  *(a1 + 48) = v10;
  if (v10)
  {
    goto LABEL_9;
  }

  *(a1 + 24) = 0;
  v15 = [*(a1 + 40) bytes];
  v11 = &v15[[*(a1 + 40) length]];
  [(CNContactBufferDecoder *)a1 _applyPropertiesFromFromByteCursor:v11 end:?];
  [*(a1 + 40) setLength:0];
  if (v15 != v11)
  {
    v12 = 0;
    *(a1 + 24) = 2;
    goto LABEL_10;
  }

  [(CNContactBufferDecoder *)a1 _applyPropertiesFromFromByteCursor:a2 end:a3];
  if (*(a1 + 24))
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 32);
    v14 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

LABEL_10:

  return v12;
}

- (void)addPosterDataToContact:(id *)a1
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_18;
  }

  v4 = [a1 keyDescriptorToMakeAvailable];
  v5 = [v4 containsKey:@"wallpaper"];

  v6 = [a1 keyDescriptorToMakeAvailable];
  v7 = [v6 containsKey:@"wallpaperMetadata"];

  v8 = [a1 keyDescriptorToMakeAvailable];
  v9 = [v8 containsKey:@"watchWallpaperImageData"];

  if ((v5 & 1) == 0 && (v7 & 1) == 0 && !v9)
  {
    goto LABEL_18;
  }

  v10 = [v3 identifier];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v12 = [CNContactPosterFetchRequest currentPostersRequestForContactIdentifiers:v11];

  v13 = a1[7];
  objc_opt_class();
  v14 = [v13 executeFetchRequest:v12 error:0];

  v15 = [v14 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    v20 = 0;
    v23 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = [CNWallpaper alloc];
  v19 = [v17 posterData];
  v20 = [(CNWallpaper *)v18 initWithPosterArchiveData:v19];

  v21 = [CNWallpaperMetadata alloc];
  v22 = [v17 posterMetadata];
  v23 = [(CNWallpaperMetadata *)v21 initWithDataRepresentation:v22];

  [(CNWallpaper *)v20 setMetadata:v23];
  if (v5)
  {
LABEL_10:
    [v3 setWallpaper:v20];
  }

LABEL_11:
  v24 = v9 ^ 1;
  if (!v17)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    v25 = [v17 watchPosterImageData];
    [v3 setWatchWallpaperImageData:v25];
  }

  if (v7)
  {
    [v3 setWallpaperMetadata:v23];
  }

LABEL_18:
}

- (void)addContactImageDataToContact:(id *)a1
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 keyDescriptorToMakeAvailable];
    v5 = [v4 containsKey:@"avatarRecipeData"];

    v6 = [a1 keyDescriptorToMakeAvailable];
    v7 = [v6 containsKey:@"imageData"];

    if ((v5 & 1) != 0 || v7)
    {
      v8 = [v3 identifier];
      v17[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v10 = [CNContactImageFetchRequest currentImagesRequestForContactIdentifiers:v9];

      v11 = a1[7];
      objc_opt_class();
      v12 = [v11 executeFetchRequest:v10 error:0];

      v13 = [v12 firstObject];
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (!v15)
      {
        if ((([0 encodingType] == 1) & v5) == 1)
        {
          [v3 setAvatarRecipeData:0];
        }

        goto LABEL_16;
      }

      if ([v15 encodingType] == 1)
      {
        if (v5)
        {
          v16 = [v15 imageData];
          [v3 setAvatarRecipeData:v16];
LABEL_15:
        }
      }

      else if (v7)
      {
        v16 = [v15 imageData];
        [v3 setImageData:v16];
        goto LABEL_15;
      }

LABEL_16:
    }
  }
}

- (void)_applyImageDataFromByteCursor:(unint64_t)a3 end:
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *a2;
    v7 = *a2 + 26;
    if (v7 > a3)
    {
LABEL_7:
      *(a1 + 24) = 2;
      return;
    }

    if (*(v6 + 1) == 1)
    {
      [*(a1 + 32) setCropRect:{*(v6 + 2), *(v6 + 6), *(v6 + 10), *(v6 + 10)}];
    }

    v8 = *(v6 + 18);
    if (v8)
    {
      if (v7 + v8 > a3)
      {
        goto LABEL_7;
      }

      v9 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v6 + 14);
        v11 = *(v6 + 18);
        v13[0] = 67109376;
        v13[1] = v10;
        v14 = 2048;
        v15 = v11;
        _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "[CNContactBufferDecoder _applyImageDataFromByteCursor:end:] reading image format %d of length %lu into NSData", v13, 0x12u);
      }

      v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:*(v6 + 18)];
      switch(*(v6 + 14))
      {
        case 0:
          [OUTLINED_FUNCTION_0_7() setThumbnailImageData:?];
          break;
        case 2:
          [OUTLINED_FUNCTION_0_7() setImageData:?];
          break;
        case 4:
          [OUTLINED_FUNCTION_0_7() setFullscreenImageData:?];
          break;
        case 5:
          [OUTLINED_FUNCTION_0_7() setSyncImageData:?];
          break;
        default:
          break;
      }

      v8 = *(v6 + 18);
    }

    *a2 += v8 + 26;
  }
}

@end