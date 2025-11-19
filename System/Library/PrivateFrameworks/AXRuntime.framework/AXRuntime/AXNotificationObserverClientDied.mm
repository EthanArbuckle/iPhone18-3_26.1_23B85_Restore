@interface AXNotificationObserverClientDied
@end

@implementation AXNotificationObserverClientDied

void ___AXNotificationObserverClientDied_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = 0x1EBDE6000uLL;
  CFDictionaryGetValue(ObserverDictionary, 0x270F);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v31;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v30 + 1) + 8 * v9);
      v12 = [v11 observer];
      v13 = [v12 isEqual:*(a1 + 40)];

      if (v13)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v5 = v3;
        v2 = 0x1EBDE6000;
        goto LABEL_14;
      }
    }

    v14 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v11;
      _os_log_impl(&dword_1BF78E000, v14, OS_LOG_TYPE_INFO, "Removing client observer: %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];

    v2 = 0x1EBDE6000uLL;
    if (v5)
    {
      [v3 removeObjectsAtIndexes:v5];
      goto LABEL_14;
    }
  }

  else
  {
LABEL_14:
  }

  v15 = [v3 count] == 0;
  v16 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v15;
  v17 = v16;
  Count = CFDictionaryGetCount(*(v2 + 3544));
  v19 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  if (v19)
  {
    v20 = v19;
    v29 = v3;
    CFDictionaryGetKeysAndValues(*(v2 + 3544), 0, v19);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v22 = v20[i];
        v23 = [v22 count];
        if (v23)
        {
          v24 = v23;
          for (j = 0; j < v24; ++j)
          {
            v26 = [v22 objectAtIndex:j];
            v27 = [v26 observer];
            v28 = [v27 isEqual:v17];

            if (v28)
            {
              [v22 removeObjectAtIndex:j];
              --v24;
            }
          }
        }
      }
    }

    free(v20);
    v3 = v29;
  }
}

@end