@interface PHDetectionTrait
+ (id)detectionTraitsByFaceLocalIdentifierForFaceUUIDs:(id)ds photoLibrary:(id)library withDetectionTraitTypes:(id)types;
+ (id)detectionTraitsByFaceLocalIdentifierForFaces:(id)faces withDetectionTraitTypes:(id)types;
+ (id)detectionTraitsForDetection:(id)detection;
- (PHDetectionTrait)initWithPropertyListRepresentation:(id)representation;
- (PHDetectionTrait)initWithType:(signed __int16)type value:(signed __int16)value score:(double)score startTime:(double)time duration:(double)duration thumbnailIdentifier:(id)identifier;
- (id)propertyListRepresentation;
@end

@implementation PHDetectionTrait

- (id)propertyListRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithShort:{-[PHDetectionTrait type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithShort:{-[PHDetectionTrait value](self, "value")}];
  [v3 setObject:v5 forKeyedSubscript:@"value"];

  v6 = MEMORY[0x1E696AD98];
  [(PHDetectionTrait *)self score];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"score"];

  v8 = MEMORY[0x1E696AD98];
  [(PHDetectionTrait *)self startTime];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"startTime"];

  v10 = MEMORY[0x1E696AD98];
  [(PHDetectionTrait *)self duration];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"duration"];

  thumbnailIdentifier = [(PHDetectionTrait *)self thumbnailIdentifier];
  if (thumbnailIdentifier)
  {
    [v3 setObject:thumbnailIdentifier forKeyedSubscript:@"thumbnailIdentifier"];
  }

  return v3;
}

- (PHDetectionTrait)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHDetectionTrait.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  v6 = [representationCopy objectForKeyedSubscript:@"type"];
  integerValue = [v6 integerValue];
  v8 = [representationCopy objectForKeyedSubscript:@"value"];
  integerValue2 = [v8 integerValue];
  v10 = [representationCopy objectForKeyedSubscript:@"score"];
  [v10 doubleValue];
  v12 = v11;
  v13 = [representationCopy objectForKeyedSubscript:@"startTime"];
  [v13 doubleValue];
  v15 = v14;
  v16 = [representationCopy objectForKeyedSubscript:@"duration"];
  [v16 doubleValue];
  v18 = v17;
  v19 = [representationCopy objectForKeyedSubscript:@"thumbnailIdentifier"];
  v20 = [(PHDetectionTrait *)self initWithType:integerValue value:integerValue2 score:v19 startTime:v12 duration:v15 thumbnailIdentifier:v18];

  return v20;
}

- (PHDetectionTrait)initWithType:(signed __int16)type value:(signed __int16)value score:(double)score startTime:(double)time duration:(double)duration thumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = PHDetectionTrait;
  v16 = [(PHDetectionTrait *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v16->_value = value;
    v16->_score = score;
    v16->_startTime = time;
    v16->_duration = duration;
    if (identifierCopy)
    {
      objc_storeStrong(&v16->_thumbnailIdentifier, identifier);
    }
  }

  return v17;
}

+ (id)detectionTraitsByFaceLocalIdentifierForFaceUUIDs:(id)ds photoLibrary:(id)library withDetectionTraitTypes:(id)types
{
  dsCopy = ds;
  libraryCopy = library;
  typesCopy = types;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11433;
  v25 = __Block_byref_object_dispose__11434;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  photoLibrary = [libraryCopy photoLibrary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PHDetectionTrait_detectionTraitsByFaceLocalIdentifierForFaceUUIDs_photoLibrary_withDetectionTraitTypes___block_invoke;
  v16[3] = &unk_1E75AA158;
  v11 = dsCopy;
  v17 = v11;
  v12 = photoLibrary;
  v18 = v12;
  v13 = typesCopy;
  v19 = v13;
  v20 = &v21;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __106__PHDetectionTrait_detectionTraitsByFaceLocalIdentifierForFaceUUIDs_photoLibrary_withDetectionTraitTypes___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v4 = [MEMORY[0x1E69BE3E8] fetchDetectionTraitByFaceUUIDWithFaceUUIDs:v2 library:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = a1[6];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __106__PHDetectionTrait_detectionTraitsByFaceLocalIdentifierForFaceUUIDs_photoLibrary_withDetectionTraitTypes___block_invoke_2;
    v9[3] = &unk_1E75A50C0;
    v12 = v6 != 0;
    v7 = v6;
    v8 = a1[7];
    v10 = v7;
    v11 = v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __106__PHDetectionTrait_detectionTraitsByFaceLocalIdentifierForFaceUUIDs_photoLibrary_withDetectionTraitTypes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = [(PHObject *)PHFace localIdentifierWithUUID:a2];
  v6 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        if (*(a1 + 48) != 1 || (v13 = *(a1 + 32), [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(*(&v27 + 1) + 8 * v11), "type")}], v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = objc_msgSend(v13, "containsObject:", v14), v14, v13))
        {
          v15 = [PHDetectionTrait alloc];
          v16 = [v12 type];
          v17 = [v12 value];
          [v12 score];
          v19 = v18;
          [v12 startTime];
          v21 = v20;
          [v12 duration];
          v23 = v22;
          v24 = [v12 thumbnailIdentifier];
          v25 = [(PHDetectionTrait *)v15 initWithType:v16 value:v17 score:v24 startTime:v19 duration:v21 thumbnailIdentifier:v23];

          [v6 addObject:v25];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v26];
}

+ (id)detectionTraitsByFaceLocalIdentifierForFaces:(id)faces withDetectionTraitTypes:(id)types
{
  v25 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  typesCopy = types;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = facesCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    v18 = MEMORY[0x1E695E0F8];
    v12 = v9;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v21;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v20 + 1) + 8 * i);
      uuid = [v15 uuid];
      [array addObject:uuid];

      if (!v12)
      {
        v12 = v15;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v11);

  if (v12)
  {
    photoLibrary = [v12 photoLibrary];
    v18 = [self detectionTraitsByFaceLocalIdentifierForFaceUUIDs:array photoLibrary:photoLibrary withDetectionTraitTypes:typesCopy];

LABEL_13:
    goto LABEL_15;
  }

  v18 = MEMORY[0x1E695E0F8];
LABEL_15:

  return v18;
}

+ (id)detectionTraitsForDetection:(id)detection
{
  detectionCopy = detection;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11433;
  v18 = __Block_byref_object_dispose__11434;
  array = [MEMORY[0x1E695DF70] array];
  photoLibrary = [detectionCopy photoLibrary];
  v4PhotoLibrary = [photoLibrary photoLibrary];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PHDetectionTrait_detectionTraitsForDetection___block_invoke;
  v10[3] = &unk_1E75AA3F8;
  v6 = v4PhotoLibrary;
  v11 = v6;
  v7 = detectionCopy;
  v12 = v7;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __48__PHDetectionTrait_detectionTraitsForDetection___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [MEMORY[0x1E69BE3D0] entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  v7 = [*(a1 + 40) objectID];
  v8 = [v6 predicateWithFormat:@"self == %@", v7];
  [v5 setPredicate:v8];

  v29 = v5;
  v30 = v2;
  v9 = [v2 executeFetchRequest:v5 error:0];
  v10 = [v9 firstObject];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v10;
  v11 = [v10 detectionTraits];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [PHDetectionTrait alloc];
        v18 = [v16 type];
        v19 = [v16 value];
        [v16 score];
        v21 = v20;
        [v16 startTime];
        v23 = v22;
        [v16 duration];
        v25 = v24;
        v26 = [v16 thumbnailIdentifier];
        v27 = [(PHDetectionTrait *)v17 initWithType:v18 value:v19 score:v26 startTime:v21 duration:v23 thumbnailIdentifier:v25];

        [*(*(*(a1 + 48) + 8) + 40) addObject:v27];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }
}

@end