@interface AVTStickerRecentsPresetsProvider
+ (id)filteredRecentStickers:(id)a3 withAvailableRecordIdentifiersMap:(id)a4;
+ (id)paddedStickerRecordsWithRecents:(id)a3 excludingRecords:(id)a4 paddingMemojiIdentifier:(id)a5 numberOfStickers:(int64_t)a6;
+ (id)presetsGivenNoMemoji;
+ (id)presetsGivenOneMemojiWithIdentifier:(id)a3;
+ (void)filteredAndPaddedStickerRecordsWithRecents:(id)a3 excludingRecords:(id)a4 paddingMemojiIdentifier:(id)a5 avatarStore:(id)a6 numberOfStickers:(int64_t)a7 resultBlock:(id)a8;
@end

@implementation AVTStickerRecentsPresetsProvider

+ (void)filteredAndPaddedStickerRecordsWithRecents:(id)a3 excludingRecords:(id)a4 paddingMemojiIdentifier:(id)a5 avatarStore:(id)a6 numberOfStickers:(int64_t)a7 resultBlock:(id)a8
{
  v62 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v47 = a8;
  v45 = a1;
  v49 = v15;
  v17 = [a1 paddedStickerRecordsWithRecents:a3 excludingRecords:v14 paddingMemojiIdentifier:v15 numberOfStickers:a7];
  v46 = a7;
  v18 = [MEMORY[0x1E695DFA8] setWithCapacity:a7];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v57;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v56 + 1) + 8 * i) avatarRecordIdentifier];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v21);
  }

  v50 = v14;

  v25 = MEMORY[0x1E698E310];
  v26 = [v18 allObjects];
  v27 = [v25 requestForAvatarsWithIdentifiers:v26];

  v55 = 0;
  v48 = v16;
  v28 = [v16 avatarsForFetchRequest:v27 error:&v55];
  v44 = v55;
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v52;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v51 + 1) + 8 * j);
        v36 = [v35 identifier];
        [v29 setObject:v35 forKeyedSubscript:v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v32);
  }

  v37 = [v45 filteredRecentStickers:v19 withAvailableRecordIdentifiersMap:v29];

  if ([v37 count] >= v46)
  {
    v43 = v47;
    (*(v47 + 2))(v47, v37, v29);
    v38 = v49;
    v41 = v50;
    v42 = v48;
  }

  else
  {
    v38 = v49;
    v39 = [v29 objectForKey:v49];

    if (v39)
    {
      v40 = v49;
    }

    else
    {
      v40 = 0;
    }

    v41 = v50;
    v42 = v48;
    v43 = v47;
    [v45 filteredAndPaddedStickerRecordsWithRecents:v37 excludingRecords:v50 paddingMemojiIdentifier:v40 avatarStore:v48 numberOfStickers:v46 resultBlock:v47];
  }
}

+ (id)filteredRecentStickers:(id)a3 withAvailableRecordIdentifiersMap:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 avatarRecordIdentifier];
        v15 = [v6 objectForKey:v14];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)paddedStickerRecordsWithRecents:(id)a3 excludingRecords:(id)a4 paddingMemojiIdentifier:(id)a5 numberOfStickers:(int64_t)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 count] >= a6)
  {
    v33 = v10;
  }

  else
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
    if (v12)
    {
      [a1 presetsGivenOneMemojiWithIdentifier:v12];
    }

    else
    {
      [a1 presetsGivenNoMemoji];
    }
    v13 = ;
    v14 = [v10 count];
    v31 = v10;
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count") + objc_msgSend(v11, "count")}];
    if (v11)
    {
      [v32 addObjectsFromArray:v11];
    }

    if (v10)
    {
      [v32 addObjectsFromArray:?];
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v13;
    v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v37)
    {
      v15 = a6 - v14;
      v35 = *v45;
      v36 = v11;
LABEL_12:
      v16 = 0;
      while (1)
      {
        v39 = v15;
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v16;
        v17 = *(*(&v44 + 1) + 8 * v16);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v18 = v11;
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v41;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v40 + 1) + 8 * i);
              v24 = [v23 avatarRecordIdentifier];
              v25 = [v17 avatarRecordIdentifier];
              if ([v24 isEqualToString:v25])
              {
                v26 = [v23 stickerConfigurationIdentifier];
                v27 = [v17 stickerConfigurationIdentifier];
                v28 = [v26 isEqualToString:v27];

                if (v28)
                {

                  v15 = v39;
                  goto LABEL_27;
                }
              }

              else
              {
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v20);
        }

        [v33 addObject:v17];
        v15 = v39 - 1;
LABEL_27:
        v11 = v36;
        if (!v15)
        {
          break;
        }

        v16 = v38 + 1;
        if (v38 + 1 == v37)
        {
          v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v37)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v12 = v30;
    v10 = v31;
  }

  return v33;
}

+ (id)presetsGivenNoMemoji
{
  v36[8] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E698E358]);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v35 = [v2 initWithIdentifier:v4 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_starry_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v5 = objc_alloc(MEMORY[0x1E698E358]);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v34 = [v5 initWithIdentifier:v7 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"smiling_face_with_heart-shaped_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v8 = objc_alloc(MEMORY[0x1E698E358]);
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v33 = [v8 initWithIdentifier:v10 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"exploding_head" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v11 = objc_alloc(MEMORY[0x1E698E358]);
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 initWithIdentifier:v13 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_tears_of_joy" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v15 = objc_alloc(MEMORY[0x1E698E358]);
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];
  v18 = [v15 initWithIdentifier:v17 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_blowing_a_kiss" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v19 = objc_alloc(MEMORY[0x1E698E358]);
  v20 = [MEMORY[0x1E696AFB0] UUID];
  v21 = [v20 UUIDString];
  v22 = [v19 initWithIdentifier:v21 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"sleeping_face" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v23 = objc_alloc(MEMORY[0x1E698E358]);
  v24 = [MEMORY[0x1E696AFB0] UUID];
  v25 = [v24 UUIDString];
  v26 = [v23 initWithIdentifier:v25 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_symbols_over_mouth" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v27 = objc_alloc(MEMORY[0x1E698E358]);
  v28 = [MEMORY[0x1E696AFB0] UUID];
  v29 = [v28 UUIDString];
  v30 = [v27 initWithIdentifier:v29 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"winking_face_with_stuck_out_tongue" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v36[0] = v35;
  v36[1] = v34;
  v36[2] = v33;
  v36[3] = v14;
  v36[4] = v18;
  v36[5] = v22;
  v36[6] = v26;
  v36[7] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:8];

  return v31;
}

+ (id)presetsGivenOneMemojiWithIdentifier:(id)a3
{
  v39[8] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698E358];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v38 = [v5 initWithIdentifier:v7 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"face_with_starry_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v8 = objc_alloc(MEMORY[0x1E698E358]);
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v37 = [v8 initWithIdentifier:v10 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"smiling_face_with_heart-shaped_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v11 = objc_alloc(MEMORY[0x1E698E358]);
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  v36 = [v11 initWithIdentifier:v13 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"person_nervous" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v14 = objc_alloc(MEMORY[0x1E698E358]);
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 initWithIdentifier:v16 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"face_with_tears_of_joy" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v18 = objc_alloc(MEMORY[0x1E698E358]);
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  v21 = [v18 initWithIdentifier:v20 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"beKind" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v22 = objc_alloc(MEMORY[0x1E698E358]);
  v23 = [MEMORY[0x1E696AFB0] UUID];
  v24 = [v23 UUIDString];
  v25 = [v22 initWithIdentifier:v24 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"face_with_symbols_over_mouth" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v26 = objc_alloc(MEMORY[0x1E698E358]);
  v27 = [MEMORY[0x1E696AFB0] UUID];
  v28 = [v27 UUIDString];
  v29 = [v26 initWithIdentifier:v28 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"person_waving" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v30 = objc_alloc(MEMORY[0x1E698E358]);
  v31 = [MEMORY[0x1E696AFB0] UUID];
  v32 = [v31 UUIDString];
  v33 = [v30 initWithIdentifier:v32 avatarRecordIdentifier:v4 stickerConfigurationIdentifier:@"head_in_clouds" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v39[0] = v38;
  v39[1] = v37;
  v39[2] = v36;
  v39[3] = v17;
  v39[4] = v21;
  v39[5] = v25;
  v39[6] = v29;
  v39[7] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:8];

  return v34;
}

@end