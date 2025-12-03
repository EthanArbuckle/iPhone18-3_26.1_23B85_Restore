@interface AVTStickerRecentsPresetsProvider
+ (id)filteredRecentStickers:(id)stickers withAvailableRecordIdentifiersMap:(id)map;
+ (id)paddedStickerRecordsWithRecents:(id)recents excludingRecords:(id)records paddingMemojiIdentifier:(id)identifier numberOfStickers:(int64_t)stickers;
+ (id)presetsGivenNoMemoji;
+ (id)presetsGivenOneMemojiWithIdentifier:(id)identifier;
+ (void)filteredAndPaddedStickerRecordsWithRecents:(id)recents excludingRecords:(id)records paddingMemojiIdentifier:(id)identifier avatarStore:(id)store numberOfStickers:(int64_t)stickers resultBlock:(id)block;
@end

@implementation AVTStickerRecentsPresetsProvider

+ (void)filteredAndPaddedStickerRecordsWithRecents:(id)recents excludingRecords:(id)records paddingMemojiIdentifier:(id)identifier avatarStore:(id)store numberOfStickers:(int64_t)stickers resultBlock:(id)block
{
  v62 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  identifierCopy = identifier;
  storeCopy = store;
  blockCopy = block;
  selfCopy = self;
  v49 = identifierCopy;
  v17 = [self paddedStickerRecordsWithRecents:recents excludingRecords:recordsCopy paddingMemojiIdentifier:identifierCopy numberOfStickers:stickers];
  stickersCopy = stickers;
  v18 = [MEMORY[0x1E695DFA8] setWithCapacity:stickers];
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

        avatarRecordIdentifier = [*(*(&v56 + 1) + 8 * i) avatarRecordIdentifier];
        [v18 addObject:avatarRecordIdentifier];
      }

      v21 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v21);
  }

  v50 = recordsCopy;

  v25 = MEMORY[0x1E698E310];
  allObjects = [v18 allObjects];
  v27 = [v25 requestForAvatarsWithIdentifiers:allObjects];

  v55 = 0;
  v48 = storeCopy;
  v28 = [storeCopy avatarsForFetchRequest:v27 error:&v55];
  v44 = v55;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        identifier = [v35 identifier];
        [dictionary setObject:v35 forKeyedSubscript:identifier];
      }

      v32 = [v30 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v32);
  }

  v37 = [selfCopy filteredRecentStickers:v19 withAvailableRecordIdentifiersMap:dictionary];

  if ([v37 count] >= stickersCopy)
  {
    v43 = blockCopy;
    (*(blockCopy + 2))(blockCopy, v37, dictionary);
    v38 = v49;
    v41 = v50;
    v42 = v48;
  }

  else
  {
    v38 = v49;
    v39 = [dictionary objectForKey:v49];

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
    v43 = blockCopy;
    [selfCopy filteredAndPaddedStickerRecordsWithRecents:v37 excludingRecords:v50 paddingMemojiIdentifier:v40 avatarStore:v48 numberOfStickers:stickersCopy resultBlock:blockCopy];
  }
}

+ (id)filteredRecentStickers:(id)stickers withAvailableRecordIdentifiersMap:(id)map
{
  v22 = *MEMORY[0x1E69E9840];
  stickersCopy = stickers;
  mapCopy = map;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stickersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = stickersCopy;
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
        avatarRecordIdentifier = [v13 avatarRecordIdentifier];
        v15 = [mapCopy objectForKey:avatarRecordIdentifier];

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

+ (id)paddedStickerRecordsWithRecents:(id)recents excludingRecords:(id)records paddingMemojiIdentifier:(id)identifier numberOfStickers:(int64_t)stickers
{
  v50 = *MEMORY[0x1E69E9840];
  recentsCopy = recents;
  recordsCopy = records;
  identifierCopy = identifier;
  if ([recentsCopy count] >= stickers)
  {
    v33 = recentsCopy;
  }

  else
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithArray:recentsCopy];
    if (identifierCopy)
    {
      [self presetsGivenOneMemojiWithIdentifier:identifierCopy];
    }

    else
    {
      [self presetsGivenNoMemoji];
    }
    v13 = ;
    v14 = [recentsCopy count];
    v31 = recentsCopy;
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recentsCopy, "count") + objc_msgSend(recordsCopy, "count")}];
    if (recordsCopy)
    {
      [v32 addObjectsFromArray:recordsCopy];
    }

    if (recentsCopy)
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
      v15 = stickers - v14;
      v35 = *v45;
      v36 = recordsCopy;
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
        v18 = recordsCopy;
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
              avatarRecordIdentifier = [v23 avatarRecordIdentifier];
              avatarRecordIdentifier2 = [v17 avatarRecordIdentifier];
              if ([avatarRecordIdentifier isEqualToString:avatarRecordIdentifier2])
              {
                stickerConfigurationIdentifier = [v23 stickerConfigurationIdentifier];
                stickerConfigurationIdentifier2 = [v17 stickerConfigurationIdentifier];
                v28 = [stickerConfigurationIdentifier isEqualToString:stickerConfigurationIdentifier2];

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
        recordsCopy = v36;
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

    identifierCopy = v30;
    recentsCopy = v31;
  }

  return v33;
}

+ (id)presetsGivenNoMemoji
{
  v36[8] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E698E358]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v35 = [v2 initWithIdentifier:uUIDString avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_starry_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v5 = objc_alloc(MEMORY[0x1E698E358]);
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v34 = [v5 initWithIdentifier:uUIDString2 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"smiling_face_with_heart-shaped_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v8 = objc_alloc(MEMORY[0x1E698E358]);
  uUID3 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v33 = [v8 initWithIdentifier:uUIDString3 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"exploding_head" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v11 = objc_alloc(MEMORY[0x1E698E358]);
  uUID4 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString4 = [uUID4 UUIDString];
  v14 = [v11 initWithIdentifier:uUIDString4 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_tears_of_joy" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v15 = objc_alloc(MEMORY[0x1E698E358]);
  uUID5 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString5 = [uUID5 UUIDString];
  v18 = [v15 initWithIdentifier:uUIDString5 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_blowing_a_kiss" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v19 = objc_alloc(MEMORY[0x1E698E358]);
  uUID6 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString6 = [uUID6 UUIDString];
  v22 = [v19 initWithIdentifier:uUIDString6 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"sleeping_face" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v23 = objc_alloc(MEMORY[0x1E698E358]);
  uUID7 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString7 = [uUID7 UUIDString];
  v26 = [v23 initWithIdentifier:uUIDString7 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"face_with_symbols_over_mouth" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v27 = objc_alloc(MEMORY[0x1E698E358]);
  uUID8 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString8 = [uUID8 UUIDString];
  v30 = [v27 initWithIdentifier:uUIDString8 avatarRecordIdentifier:@"unicorn" stickerConfigurationIdentifier:@"winking_face_with_stuck_out_tongue" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

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

+ (id)presetsGivenOneMemojiWithIdentifier:(id)identifier
{
  v39[8] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698E358];
  identifierCopy = identifier;
  v5 = [v3 alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v38 = [v5 initWithIdentifier:uUIDString avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"face_with_starry_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v8 = objc_alloc(MEMORY[0x1E698E358]);
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v37 = [v8 initWithIdentifier:uUIDString2 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"smiling_face_with_heart-shaped_eyes" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v11 = objc_alloc(MEMORY[0x1E698E358]);
  uUID3 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString3 = [uUID3 UUIDString];
  v36 = [v11 initWithIdentifier:uUIDString3 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"person_nervous" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v14 = objc_alloc(MEMORY[0x1E698E358]);
  uUID4 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString4 = [uUID4 UUIDString];
  v17 = [v14 initWithIdentifier:uUIDString4 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"face_with_tears_of_joy" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v18 = objc_alloc(MEMORY[0x1E698E358]);
  uUID5 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString5 = [uUID5 UUIDString];
  v21 = [v18 initWithIdentifier:uUIDString5 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"beKind" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v22 = objc_alloc(MEMORY[0x1E698E358]);
  uUID6 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString6 = [uUID6 UUIDString];
  v25 = [v22 initWithIdentifier:uUIDString6 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"face_with_symbols_over_mouth" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v26 = objc_alloc(MEMORY[0x1E698E358]);
  uUID7 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString7 = [uUID7 UUIDString];
  v29 = [v26 initWithIdentifier:uUIDString7 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"person_waving" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

  v30 = objc_alloc(MEMORY[0x1E698E358]);
  uUID8 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString8 = [uUID8 UUIDString];
  v33 = [v30 initWithIdentifier:uUIDString8 avatarRecordIdentifier:identifierCopy stickerConfigurationIdentifier:@"head_in_clouds" frequencySum:&unk_1F39A5AA0 serializationVersion:&unk_1F39A5AA0];

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