@interface PHUserFeedbackCalculator
+ (BOOL)score:(double)a3 meetsScoreThreshold:(double)a4;
+ (id)descriptionForScore:(double)a3;
+ (id)fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary:(id)a3;
+ (id)songIdentifiersWithNegativeFeedbackForMemory:(id)a3;
- (BOOL)_anyPersonUUIDs:(id)a3 matchesWithImportantPersonType:(unint64_t)a4;
- (BOOL)_hasNegativeFeedback:(id)a3;
- (PHUserFeedbackCalculator)initWithDataCache:(id)a3;
- (PHUserFeedbackCalculator)initWithPhotoLibrary:(id)a3;
- (double)_adjustScore:(double)result shouldDowngrade:(BOOL)a4;
- (double)_scoreForKeyAssetWithPersonUUIDs:(id)a3;
- (double)_scoreForPersonsInAssetsForUUIDs:(id)a3 keyAssetUUID:(id)a4 personsUUIDsByAssetUUIDs:(id)a5;
- (double)scoreForAssetUUIDs:(id)a3 keyAssetUUID:(id)a4 personsUUIDsByAssetUUIDs:(id)a5 memoryFeatures:(id)a6;
- (double)scoreForKeyAssetUUID:(id)a3 personsUUIDsInKeyAsset:(id)a4 memoryFeatures:(id)a5;
- (id)_uniqueFeedbackTypesForPersonUUIDs:(id)a3;
- (id)memoryFeaturesWithNegativeFeedbackForMemoryFeatures:(id)a3;
- (id)personUUIDsWithUserFeedbackFilterBlock:(id)a3;
- (id)userFeedbackTypeByPersonUUIDForPersonUUIDs:(id)a3;
- (unint64_t)userFeedbackTypeForPersonUUID:(id)a3;
@end

@implementation PHUserFeedbackCalculator

- (BOOL)_hasNegativeFeedback:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 type] == 16)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v5 datesWithNegativeFeedback];

    v7 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v7)
    {
      v8 = *v49;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([v4 collidesWithDate:*(*(&v48 + 1) + 8 * v9)])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_62;
        }
      }

LABEL_61:
      LOBYTE(v7) = 1;
    }
  }

  else if ([v4 type] == 512)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v10 dateIntervalsWithNegativeFeedback];

    v7 = [v6 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v7)
    {
      v11 = *v45;
LABEL_14:
      v12 = 0;
      while (1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v6);
        }

        if ([v4 collidesWithDateInterval:*(*(&v44 + 1) + 8 * v12)])
        {
          goto LABEL_61;
        }

        if (v7 == ++v12)
        {
          v7 = [v6 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v7)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

  else if ([v4 type] == 32)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v13 holidayNamesWithNegativeFeedback];

    v7 = [v6 countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v7)
    {
      v14 = *v41;
LABEL_24:
      v15 = 0;
      while (1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v6);
        }

        if ([v4 collidesWithHolidayWithName:*(*(&v40 + 1) + 8 * v15)])
        {
          goto LABEL_61;
        }

        if (v7 == ++v15)
        {
          v7 = [v6 countByEnumeratingWithState:&v40 objects:v55 count:16];
          if (v7)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }
  }

  else if ([v4 type] == 4096)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v16 locationsWithNegativeFeedback];

    v7 = [v6 countByEnumeratingWithState:&v36 objects:v54 count:16];
    if (v7)
    {
      v17 = *v37;
LABEL_34:
      v18 = 0;
      while (1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v36 + 1) + 8 * v18) coordinate];
        if ([v4 collidesWithLocationAtCoordinates:?])
        {
          goto LABEL_61;
        }

        if (v7 == ++v18)
        {
          v7 = [v6 countByEnumeratingWithState:&v36 objects:v54 count:16];
          if (v7)
          {
            goto LABEL_34;
          }

          break;
        }
      }
    }
  }

  else if ([v4 type] == 0x20000)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v19 areaNamesWithNegativeFeedback];

    v7 = [v6 countByEnumeratingWithState:&v32 objects:v53 count:16];
    if (v7)
    {
      v20 = *v33;
LABEL_44:
      v21 = 0;
      while (1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v6);
        }

        if ([v4 collidesWithAreaWithName:*(*(&v32 + 1) + 8 * v21)])
        {
          goto LABEL_61;
        }

        if (v7 == ++v21)
        {
          v7 = [v6 countByEnumeratingWithState:&v32 objects:v53 count:16];
          if (v7)
          {
            goto LABEL_44;
          }

          break;
        }
      }
    }
  }

  else
  {
    if ([v4 type] != 1)
    {
      LOBYTE(v7) = 0;
      goto LABEL_63;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = [(PHUserFeedbackCalculator *)self dataCache];
    v6 = [v22 userFeedbackTypeByPersonUUID];

    v7 = [v6 countByEnumeratingWithState:&v28 objects:v52 count:16];
    if (v7)
    {
      v23 = *v29;
LABEL_54:
      v24 = 0;
      while (1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v6);
        }

        v25 = [(PHObject *)PHPerson localIdentifierWithUUID:*(*(&v28 + 1) + 8 * v24)];
        v26 = [v4 collidesWithPersonWithLocalIdentifier:v25];

        if (v26)
        {
          goto LABEL_61;
        }

        if (v7 == ++v24)
        {
          v7 = [v6 countByEnumeratingWithState:&v28 objects:v52 count:16];
          if (v7)
          {
            goto LABEL_54;
          }

          break;
        }
      }
    }
  }

LABEL_62:

LABEL_63:
  return v7;
}

- (double)_adjustScore:(double)result shouldDowngrade:(BOOL)a4
{
  if (result < 0.0 && a4)
  {
    if (result >= -0.1)
    {
      result = -0.35;
    }

    else
    {
      result = -1.0;
    }
  }

  if (result < -1.0)
  {
    result = -1.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (id)_uniqueFeedbackTypesForPersonUUIDs:(id)a3
{
  v3 = [(PHUserFeedbackCalculator *)self userFeedbackTypeByPersonUUIDForPersonUUIDs:a3];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [v3 allValues];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (BOOL)_anyPersonUUIDs:(id)a3 matchesWithImportantPersonType:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"personUUID IN %@", a3];
  v7 = [(PHUserFeedbackCalculator *)self dataCache];
  v8 = [v7 importantPersons];
  v9 = [v8 filteredArrayUsingPredicate:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v17 + 1) + 8 * i) type] == a4)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (double)_scoreForKeyAssetWithPersonUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(PHUserFeedbackCalculator *)self _uniqueFeedbackTypesForPersonUUIDs:v4];
  v6 = [v5 containsObject:&unk_1F102BDF8];
  v7 = [v5 containsObject:&unk_1F102BE10];
  v8 = v7;
  if ((v6 & 1) != 0 || (v9 = 0.0, v7))
  {
    v10 = -1.0;
    if ([v4 count] != 1)
    {
      if ([v4 count] == 2)
      {
        if (![(PHUserFeedbackCalculator *)self _anyPersonUUIDs:v4 matchesWithImportantPersonType:1])
        {
          if ([(PHUserFeedbackCalculator *)self _anyPersonUUIDs:v4 matchesWithImportantPersonType:2])
          {
            v10 = -0.2;
          }

          else
          {
            v10 = -0.3;
          }
        }
      }

      else if ([v4 count] >= 4)
      {
        if ([v4 count] <= 3)
        {
          v10 = -1.0;
        }

        else
        {
          v10 = -0.1;
        }
      }

      else
      {
        v10 = -0.2;
      }
    }

    [(PHUserFeedbackCalculator *)self _adjustScore:v8 shouldDowngrade:v10];
    v9 = v11;
  }

  return v9;
}

- (double)_scoreForPersonsInAssetsForUUIDs:(id)a3 keyAssetUUID:(id)a4 personsUUIDsByAssetUUIDs:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v61 = a5;
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = [v61 objectForKeyedSubscript:v9];
    [(PHUserFeedbackCalculator *)self _scoreForKeyAssetWithPersonUUIDs:v12];
    v14 = v13;

    v11 = -1.0;
    if (v14 == -1.0)
    {
      goto LABEL_53;
    }

    v11 = v14;
  }

  v49 = v8;
  v50 = v9;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v15 = v8;
  v62 = [v15 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v62)
  {
    v57 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v59 = *v64;
    v60 = 0;
    obj = v15;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v64 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v63 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [v61 objectForKeyedSubscript:v17];
        v20 = [(PHUserFeedbackCalculator *)self _uniqueFeedbackTypesForPersonUUIDs:v19];
        v21 = [v20 containsObject:&unk_1F102BDF8];
        v22 = [v20 containsObject:&unk_1F102BE10];
        v23 = self;
        v24 = [(PHUserFeedbackCalculator *)self dataCache];
        v25 = [v24 deniedFeaturedPhotoUUIDs];
        LODWORD(v17) = [v25 containsObject:v17];

        if (v17)
        {
          ++v60;
LABEL_14:
          self = v23;
          goto LABEL_15;
        }

        if (((v21 | v22) & 1) == 0)
        {
          goto LABEL_14;
        }

        v10 = v10 + 1.0;
        v57 |= v22;
        self = v23;
        if ([v19 count] == 1)
        {
          ++v56;
        }

        else if ([v19 count] == 2)
        {
          if ([(PHUserFeedbackCalculator *)v23 _anyPersonUUIDs:v19 matchesWithImportantPersonType:1])
          {
            ++v51;
          }

          else
          {
            v26 = [(PHUserFeedbackCalculator *)v23 _anyPersonUUIDs:v19 matchesWithImportantPersonType:2];
            if (v26)
            {
              v27 = v55 + 1;
            }

            else
            {
              v27 = v55;
            }

            v28 = v54;
            if (!v26)
            {
              v28 = v54 + 1;
            }

            v54 = v28;
            v55 = v27;
          }
        }

        else if ([v19 count] > 3)
        {
          v29 = [v19 count];
          v30 = v52;
          if (v29 > 3)
          {
            v30 = v52 + 1;
          }

          v52 = v30;
        }

        else
        {
          ++v53;
        }

LABEL_15:

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v62 != v16);
      v15 = obj;
      v31 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      v62 = v31;
      if (!v31)
      {
        goto LABEL_34;
      }
    }
  }

  v60 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
LABEL_34:

  v32 = v10 + v60;
  if (v32 == 0.0)
  {
    v8 = v49;
    v9 = v50;
  }

  else
  {
    v33 = [v15 count];
    v34 = 0.0;
    v35 = 0.0;
    v8 = v49;
    v9 = v50;
    if (v32 > 0.0)
    {
      v36 = v56 + v60;
      v37 = v32 / v33;
      v48 = self;
      if (v37 <= 0.2)
      {
        v34 = -0.1;
      }

      else if (v37 > 0.5)
      {
        v34 = -0.3;
      }

      else
      {
        v34 = 0.0;
      }

      v38 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
      v67[0] = v38;
      v39 = [MEMORY[0x1E696AD98] numberWithInteger:v54];
      v67[1] = v39;
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
      v67[2] = v40;
      v41 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
      v67[3] = v41;
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:v53];
      v67[4] = v42;
      v43 = [MEMORY[0x1E696AD98] numberWithInteger:v52];
      v67[5] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:6];

      v45 = [v44 valueForKeyPath:@"@max.self"];
      v35 = 2.0;
      if (v36 == [v45 integerValue])
      {
        v9 = v50;
      }

      else
      {
        v9 = v50;
        if (v51 != [v45 integerValue])
        {
          v35 = 1.0;
          if (v55 != [v45 integerValue] && v54 != objc_msgSend(v45, "integerValue"))
          {
            v35 = 0.5;
            if (v53 != [v45 integerValue])
            {
              if (v52 == [v45 integerValue])
              {
                v35 = 0.1;
              }

              else
              {
                v35 = 0.0;
              }
            }
          }
        }
      }

      self = v48;
    }

    [(PHUserFeedbackCalculator *)self _adjustScore:v57 & 1 shouldDowngrade:v11 + v34 * v35];
    v11 = v46;
  }

LABEL_53:

  return v11;
}

- (id)memoryFeaturesWithNegativeFeedbackForMemoryFeatures:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(PHUserFeedbackCalculator *)self _hasNegativeFeedback:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)userFeedbackTypeByPersonUUIDForPersonUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(PHUserFeedbackCalculator *)self dataCache];
  v6 = [v5 userFeedbackTypeByPersonUUID];
  v7 = [v6 objectsForKeys:v4 notFoundMarker:&unk_1F102BDE0];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v4];

  return v8;
}

- (unint64_t)userFeedbackTypeForPersonUUID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  v7 = [(PHUserFeedbackCalculator *)self userFeedbackTypeByPersonUUIDForPersonUUIDs:v6, v11, v12];

  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 unsignedIntegerValue];
  return v9;
}

- (id)personUUIDsWithUserFeedbackFilterBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(PHUserFeedbackCalculator *)self dataCache];
  v7 = [v6 userFeedbackTypeByPersonUUID];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
        v14 = [v8 objectForKeyedSubscript:{v13, v17}];
        v15 = [v14 unsignedIntegerValue];

        if (v4[2](v4, v15))
        {
          [v5 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v5;
}

- (double)scoreForAssetUUIDs:(id)a3 keyAssetUUID:(id)a4 personsUUIDsByAssetUUIDs:(id)a5 memoryFeatures:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = a6;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([(PHUserFeedbackCalculator *)self _hasNegativeFeedback:*(*(&v24 + 1) + 8 * v17), v24])
        {

          v21 = -1.0;
          goto LABEL_12;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(PHUserFeedbackCalculator *)self dataCache];
  v19 = [v18 deniedFeaturedPhotoUUIDs];
  v20 = [v19 containsObject:v11];

  v21 = -1.0;
  if ((v20 & 1) == 0)
  {
    [(PHUserFeedbackCalculator *)self _scoreForPersonsInAssetsForUUIDs:v10 keyAssetUUID:v11 personsUUIDsByAssetUUIDs:v12];
    v21 = v22;
  }

LABEL_12:

  return v21;
}

- (double)scoreForKeyAssetUUID:(id)a3 personsUUIDsInKeyAsset:(id)a4 memoryFeatures:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17[0] = a4;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  [(PHUserFeedbackCalculator *)self scoreForAssetUUIDs:MEMORY[0x1E695E0F0] keyAssetUUID:v11 personsUUIDsByAssetUUIDs:v12 memoryFeatures:v9];
  v14 = v13;

  return v14;
}

- (PHUserFeedbackCalculator)initWithDataCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHUserFeedbackCalculator;
  v6 = [(PHUserFeedbackCalculator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataCache, a3);
  }

  return v7;
}

- (PHUserFeedbackCalculator)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [[PHUserFeedbackDataCache alloc] initWithPhotoLibrary:v4];

  v6 = [(PHUserFeedbackCalculator *)self initWithDataCache:v5];
  return v6;
}

+ (id)songIdentifiersWithNegativeFeedbackForMemory:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 userFeedbackProperties];
  v5 = [v4 userFeedback];

  if ([v5 feature] == 6)
  {
    v12 = 0;
    v6 = [v5 contextAsListOfSongIdentifiersWithError:&v12];
    v7 = v12;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v3 localIdentifier];
        *buf = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "PHUserFeedbackCalculator: Error parsing song identifiers from feedback for memory %@: %@", buf, 0x16u);
      }

      v8 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

+ (id)fetchSongIdentifiersWithNegativeFeedbackWithPhotoLibrary:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 _isUserFeedbackFeatureFlagEnabled])
  {
    v5 = PLUserFeedbackGetLog();
    v6 = os_signpost_id_generate(v5);
    info = 0;
    mach_timebase_info(&info);
    v7 = v5;
    v8 = v7;
    v34 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchSongIdentifiersWithNegativeFeedback", byte_19CB567AE, buf, 2u);
    }

    spid = v6;
    v33 = v8;

    v32 = mach_absolute_time();
    v36 = v4;
    v9 = [v4 librarySpecificFetchOptions];
    v48[0] = @"PHMemoryPropertySetUserFeedback";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    [v9 setFetchPropertySets:v10];

    v35 = v9;
    v11 = [PHMemory fetchMemoriesWithUserFeedbackWithOptions:v9];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = [v18 userFeedbackProperties];
          v20 = [v19 userFeedback];

          if ([v20 feature] == 6)
          {
            v37 = 0;
            v21 = [v20 contextAsListOfSongIdentifiersWithError:&v37];
            v22 = v37;
            if (v21)
            {
              [v12 addObjectsFromArray:v21];
            }

            else
            {
              v23 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v24 = [v18 localIdentifier];
                *buf = 138412546;
                v44 = v24;
                v45 = 2112;
                v46 = *&v22;
                _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "PHUserFeedbackCalculator: Error parsing song identifiers from feedback for memory %@: %@", buf, 0x16u);
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v15);
    }

    v25 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v28 = v33;
    v29 = v28;
    if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v29, OS_SIGNPOST_INTERVAL_END, spid, "FetchSongIdentifiersWithNegativeFeedback", byte_19CB567AE, buf, 2u);
    }

    v4 = v36;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v44 = "FetchSongIdentifiersWithNegativeFeedback";
      v45 = 2048;
      v46 = ((((v25 - v32) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

+ (id)descriptionForScore:(double)a3
{
  if ([a1 score:a3 meetsScoreThreshold:0.0])
  {
    return @"Recommended";
  }

  if ([a1 score:a3 meetsScoreThreshold:-0.1])
  {
    return @"Acceptable";
  }

  if ([a1 score:a3 meetsScoreThreshold:-1.0])
  {
    return @"Unacceptable";
  }

  if ([a1 score:a3 meetsScoreThreshold:-0.35])
  {
    return @"Not Recommended";
  }

  return @"Unknown";
}

+ (BOOL)score:(double)a3 meetsScoreThreshold:(double)a4
{
  if (a4 == 0.0)
  {
    v4 = a3 < 0.0;
    return !v4;
  }

  if (a4 == -0.1)
  {
    v4 = a3 < -0.1;
    return !v4;
  }

  if (a4 == -0.35)
  {
    v6 = a3 >= -1.0;
    v7 = a3 < -0.1;
  }

  else
  {
    if (a4 != -1.0)
    {
      return 0;
    }

    v6 = a3 >= -1.0;
    v7 = a3 < -0.35;
  }

  return v7 && v6;
}

@end