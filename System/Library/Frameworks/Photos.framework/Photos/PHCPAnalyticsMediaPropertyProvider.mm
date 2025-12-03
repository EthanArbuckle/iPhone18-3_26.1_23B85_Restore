@interface PHCPAnalyticsMediaPropertyProvider
+ (id)_syndicationStateDescriptionForSyndicationState:(unsigned __int16)state;
+ (id)_syndicationValueDescriptionForAssetProcessingValue:(unsigned __int16)value;
+ (id)_wellKnownPhotoLibraryIdentifierDescription:(int64_t)description;
+ (id)assetPropertySetsToFetch;
- (BOOL)_hasPeopleForSceneClassifications:(id)classifications sceneAnalysisVersion:(signed __int16)version;
- (BOOL)_hasPetsForSceneClassifications:(id)classifications sceneAnalysisVersion:(signed __int16)version;
- (BOOL)_isPeopleSceneIdentifier:(unint64_t)identifier;
- (BOOL)_isSceneConfidenceAboveThresholdForSceneClassification:(id)classification sceneAnalysisVersion:(signed __int16)version;
- (PHCPAnalyticsMediaPropertyProvider)init;
- (PHCPAnalyticsMediaPropertyProvider)initWithPhotoLibrary:(id)library;
- (PHPhotoLibrary)photoLibrary;
- (id)_PHAssetCollectionFromPayload:(id)payload;
- (id)_PHAssetFromPayload:(id)payload;
- (id)_ageDescriptionForMediaDate:(id)date;
- (id)_cameraTypeFromImportSource:(int64_t)source;
- (id)_junkConfidenceThresholdForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version;
- (id)_junkConfidenceThresholdVersion40ForIdentifier:(unint64_t)identifier;
- (id)_junkConfidenceThresholdVersion81ForIdentifier:(unint64_t)identifier;
- (id)_junkConfidenceThresholdVersion86ForIdentifier:(unint64_t)identifier;
- (id)_mediaCountFromPayload:(id)payload;
- (id)_mediaProperty:(id)property forAsset:(id)asset;
- (id)_mediaProperty:(id)property forAssetCollection:(id)collection;
- (id)_sceneConfidenceThresholdByClassificationIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version;
- (id)_sceneForAsset:(id)asset;
- (id)_sceneLabelByClassificationIdentifier:(unint64_t)identifier;
- (id)_sceneNetLabelConfidenceForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version;
- (id)_sceneSubjectForAsset:(id)asset;
- (id)_sdConfidenceThresholdForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version;
- (id)_sdConfidenceThresholdVersion33ForIdentifier:(unint64_t)identifier;
- (id)_sdConfidenceThresholdVersion51ForIdentifier:(unint64_t)identifier;
- (id)_sdConfidenceThresholdVersion85ForIdentifier:(unint64_t)identifier;
- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (void)registerSystemProperties:(id)properties;
@end

@implementation PHCPAnalyticsMediaPropertyProvider

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (BOOL)_hasPeopleForSceneClassifications:(id)classifications sceneAnalysisVersion:(signed __int16)version
{
  versionCopy = version;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  classificationsCopy = classifications;
  v7 = [classificationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(classificationsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (-[PHCPAnalyticsMediaPropertyProvider _isPeopleSceneIdentifier:](self, "_isPeopleSceneIdentifier:", [v11 extendedSceneIdentifier]) && -[PHCPAnalyticsMediaPropertyProvider _isSceneConfidenceAboveThresholdForSceneClassification:sceneAnalysisVersion:](self, "_isSceneConfidenceAboveThresholdForSceneClassification:sceneAnalysisVersion:", v11, versionCopy))
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [classificationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)_hasPetsForSceneClassifications:(id)classifications sceneAnalysisVersion:(signed __int16)version
{
  versionCopy = version;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  classificationsCopy = classifications;
  v7 = [classificationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(classificationsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        extendedSceneIdentifier = [v11 extendedSceneIdentifier];
        if ((extendedSceneIdentifier == 493 || extendedSceneIdentifier == 114) && [(PHCPAnalyticsMediaPropertyProvider *)self _isSceneConfidenceAboveThresholdForSceneClassification:v11 sceneAnalysisVersion:versionCopy])
        {
          v13 = 1;
          goto LABEL_13;
        }
      }

      v8 = [classificationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)_isPeopleSceneIdentifier:(unint64_t)identifier
{
  result = 1;
  if (identifier - 1736 > 0x17 || ((1 << (identifier + 56)) & 0xC00001) == 0)
  {
    return identifier == 147 || identifier == 1600;
  }

  return result;
}

- (id)_sceneSubjectForAsset:(id)asset
{
  v38[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  photoLibrary = [(PHCPAnalyticsMediaPropertyProvider *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v38[0] = @"PHFacePropertySetIdentifier";
  v38[1] = @"PHFacePropertySetAnalytics";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  v8 = [PHFace fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  sceneClassifications = [assetCopy sceneClassifications];
  sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

  selfCopy = self;
  v28 = sceneAnalysisVersion;
  v12 = [(PHCPAnalyticsMediaPropertyProvider *)self _hasPetsForSceneClassifications:sceneClassifications sceneAnalysisVersion:sceneAnalysisVersion];
  v13 = [v8 count];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v16 = @"Single Person";
  if (v15)
  {
    v17 = v15;
    v30 = v12;
    v31 = v13;
    v32 = sceneClassifications;
    v18 = 0;
    v19 = 0;
    v20 = *v34;
    v21 = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        ageType = [v23 ageType];
        if (ageType == 1)
        {
          v25 = v19 + 1;
        }

        else
        {
          v25 = v19;
        }

        if (ageType == 2)
        {
          ++v18;
        }

        else
        {
          v19 = v25;
        }

        [v23 size];
        v21 = v21 + v26;
      }

      v17 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
    if (v21 >= 0.2)
    {
      v16 = @"Portrait";
    }

    v13 = v31;
    sceneClassifications = v32;
    v12 = v30;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (v12)
  {
    if (v13)
    {
      v16 = @"People and pets";
    }

    else
    {
      v16 = @"Pets";
    }
  }

  else if (v19 && v19 == v13)
  {
    v16 = @"Baby";
  }

  else if (v18 && v18 == v13)
  {
    v16 = @"Children";
  }

  else if (v19 + v18 && v13 > v19 + v18)
  {
    v16 = @"People with children";
  }

  else if (v13 != 1)
  {
    if (v13 - 1 >= 4)
    {
      if (v13 <= 4)
      {
        if ([(PHCPAnalyticsMediaPropertyProvider *)selfCopy _hasPeopleForSceneClassifications:sceneClassifications sceneAnalysisVersion:v28])
        {
          v16 = @"People (no face info)";
        }

        else
        {
          v16 = @"None";
        }
      }

      else
      {
        v16 = @"Group Shot";
      }
    }

    else
    {
      v16 = @"2-4 People";
    }
  }

  return v16;
}

- (id)_sceneLabelByClassificationIdentifier:(unint64_t)identifier
{
  if (identifier <= 1759)
  {
    if (identifier > 978)
    {
      if (identifier <= 1268)
      {
        if (identifier == 979)
        {
          return @"performance";
        }

        if (identifier == 1088)
        {
          return @"recreation";
        }
      }

      else
      {
        switch(identifier)
        {
          case 0x4F5uLL:
            return @"sport";
          case 0x5A7uLL:
            return @"vehicle";
          case 0x681uLL:
            return @"screenshot";
        }
      }

      return @"Other";
    }

    if (identifier > 116)
    {
      if (identifier != 117 && identifier != 493)
      {
        return @"Other";
      }

      return @"animal";
    }

    if (identifier != 5)
    {
      if (identifier != 114)
      {
        return @"Other";
      }

      return @"animal";
    }

    return @"outdoor";
  }

  if (identifier > 2147483640)
  {
    if (identifier - 2147483641 >= 2)
    {
      if (identifier != 2147483655)
      {
        if (identifier == 2147483653)
        {
          return @"interior_room";
        }

        return @"Other";
      }

      return @"outdoor";
    }

    return @"references";
  }

  if (identifier > 2147482622)
  {
    if (identifier == 2147482623)
    {
      return @"landscape_cityscape";
    }

    if (identifier != 2147483638)
    {
      if (identifier == 2147483640)
      {
        return @"receipt_or_document";
      }

      return @"Other";
    }

    return @"references";
  }

  if (identifier == 1760)
  {
    return @"crowd";
  }

  if (identifier == 2147482622)
  {
    return @"food";
  }

  return @"Other";
}

- (id)_sdConfidenceThresholdVersion85ForIdentifier:(unint64_t)identifier
{
  if (identifier == 2147482623)
  {
    v3 = &unk_1F102E588;
  }

  else
  {
    v3 = 0;
  }

  if (identifier == 2147482622)
  {
    return &unk_1F102E578;
  }

  else
  {
    return v3;
  }
}

- (id)_sdConfidenceThresholdVersion51ForIdentifier:(unint64_t)identifier
{
  if (identifier == 2147482623)
  {
    v3 = &unk_1F102E558;
  }

  else
  {
    v3 = 0;
  }

  if (identifier == 2147482622)
  {
    return &unk_1F102E568;
  }

  else
  {
    return v3;
  }
}

- (id)_sdConfidenceThresholdVersion33ForIdentifier:(unint64_t)identifier
{
  if (identifier == 2147482623)
  {
    v3 = &unk_1F102E558;
  }

  else
  {
    v3 = 0;
  }

  if (identifier == 2147482622)
  {
    return &unk_1F102E548;
  }

  else
  {
    return v3;
  }
}

- (id)_sdConfidenceThresholdForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version
{
  if (version < 0x55)
  {
    if (version < 0x33)
    {
      if (version < 0x21)
      {
        v4 = 0;
      }

      else
      {
        v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _sdConfidenceThresholdVersion33ForIdentifier:identifier];
      }
    }

    else
    {
      v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _sdConfidenceThresholdVersion51ForIdentifier:identifier];
    }
  }

  else
  {
    v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _sdConfidenceThresholdVersion85ForIdentifier:identifier];
  }

  return v4;
}

- (id)_junkConfidenceThresholdVersion86ForIdentifier:(unint64_t)identifier
{
  if (identifier == 2147483640)
  {
    return &unk_1F102E538;
  }

  else
  {
    return 0;
  }
}

- (id)_junkConfidenceThresholdVersion81ForIdentifier:(unint64_t)identifier
{
  if (identifier - 2147483638 > 4)
  {
    return 0;
  }

  else
  {
    return *(&unk_1E75A9758 + identifier - 2147483638);
  }
}

- (id)_junkConfidenceThresholdVersion40ForIdentifier:(unint64_t)identifier
{
  if (identifier - 2147483638 > 4)
  {
    return 0;
  }

  else
  {
    return *(&unk_1E75A9730 + identifier - 2147483638);
  }
}

- (id)_junkConfidenceThresholdForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version
{
  if (version < 0x56)
  {
    if (version < 0x51)
    {
      if (version < 0x28)
      {
        v4 = 0;
      }

      else
      {
        v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _junkConfidenceThresholdVersion40ForIdentifier:identifier];
      }
    }

    else
    {
      v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _junkConfidenceThresholdVersion81ForIdentifier:identifier];
    }
  }

  else
  {
    v4 = [(PHCPAnalyticsMediaPropertyProvider *)self _junkConfidenceThresholdVersion86ForIdentifier:identifier];
  }

  return v4;
}

- (id)_sceneNetLabelConfidenceForIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version
{
  if (version < 0x63)
  {
    if (version < 0x54)
    {
      v5 = 0;
      goto LABEL_8;
    }

    sceneTaxonomy84 = self->_sceneTaxonomy84;
  }

  else
  {
    sceneTaxonomy84 = self->_sceneTaxonomy99;
  }

  v5 = [(PFSceneTaxonomy *)sceneTaxonomy84 nodeRefForExtendedSceneClassId:identifier];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    PFSceneTaxonomyNodeSearchThreshold();
    v5 = [v6 numberWithDouble:?];
  }

LABEL_8:

  return v5;
}

- (id)_sceneConfidenceThresholdByClassificationIdentifier:(unint64_t)identifier sceneAnalysisVersion:(signed __int16)version
{
  v5 = 0;
  if (identifier <= 1735)
  {
    if (identifier <= 978)
    {
      if ((identifier - 114 > 0x21 || ((1 << (identifier - 114)) & 0x200000009) == 0) && identifier != 5 && identifier != 493)
      {
        goto LABEL_26;
      }
    }

    else if (identifier > 1446)
    {
      if (identifier != 1447 && identifier != 1600 && identifier != 1665)
      {
        goto LABEL_26;
      }
    }

    else if (identifier != 979 && identifier != 1088 && identifier != 1269)
    {
      goto LABEL_26;
    }

LABEL_25:
    v5 = [PHCPAnalyticsMediaPropertyProvider _sceneNetLabelConfidenceForIdentifier:"_sceneNetLabelConfidenceForIdentifier:sceneAnalysisVersion:" sceneAnalysisVersion:?];
    goto LABEL_26;
  }

  v6 = identifier + 10;
  if (identifier - 2147483638 <= 0x11)
  {
    if (((1 << v6) & 0x1D) != 0)
    {
      v5 = [PHCPAnalyticsMediaPropertyProvider _junkConfidenceThresholdForIdentifier:"_junkConfidenceThresholdForIdentifier:sceneAnalysisVersion:" sceneAnalysisVersion:?];
      goto LABEL_26;
    }

    if (((1 << v6) & 0x28000) != 0)
    {
      goto LABEL_25;
    }
  }

  if (identifier - 1736 <= 0x18 && ((1 << (identifier + 56)) & 0x1C00001) != 0)
  {
    goto LABEL_25;
  }

  if (identifier - 2147482622 < 2)
  {
    v5 = [PHCPAnalyticsMediaPropertyProvider _sdConfidenceThresholdForIdentifier:"_sdConfidenceThresholdForIdentifier:sceneAnalysisVersion:" sceneAnalysisVersion:?];
  }

LABEL_26:

  return v5;
}

- (BOOL)_isSceneConfidenceAboveThresholdForSceneClassification:(id)classification sceneAnalysisVersion:(signed __int16)version
{
  versionCopy = version;
  classificationCopy = classification;
  v7 = -[PHCPAnalyticsMediaPropertyProvider _sceneConfidenceThresholdByClassificationIdentifier:sceneAnalysisVersion:](self, "_sceneConfidenceThresholdByClassificationIdentifier:sceneAnalysisVersion:", [classificationCopy extendedSceneIdentifier], versionCopy);
  if (v7)
  {
    [classificationCopy confidence];
    v9 = v8;
    [v7 doubleValue];
    v11 = v9 >= v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_sceneForAsset:(id)asset
{
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  sceneClassifications = [assetCopy sceneClassifications];
  sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = sceneClassifications;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {
    v23 = @"Other";
    v11 = v8;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v26;
  v13 = 0.0;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      extendedSceneIdentifier = [v15 extendedSceneIdentifier];
      if ([(PHCPAnalyticsMediaPropertyProvider *)self _isSceneConfidenceAboveThresholdForSceneClassification:v15 sceneAnalysisVersion:sceneAnalysisVersion])
      {
        v17 = [(PHCPAnalyticsMediaPropertyProvider *)self _sceneConfidenceThresholdByClassificationIdentifier:extendedSceneIdentifier sceneAnalysisVersion:sceneAnalysisVersion];
        [v17 doubleValue];
        v19 = v18;

        if (v19 > 0.0)
        {
          [v15 confidence];
          v21 = v20 / v19;
          if (v21 > v13)
          {
            v22 = v15;

            v11 = v22;
            v13 = v21;
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v10);

  if (v11)
  {
    v23 = -[PHCPAnalyticsMediaPropertyProvider _sceneLabelByClassificationIdentifier:](self, "_sceneLabelByClassificationIdentifier:", [v11 extendedSceneIdentifier]);
LABEL_15:

    goto LABEL_17;
  }

  v23 = @"Other";
LABEL_17:

  return v23;
}

- (id)_cameraTypeFromImportSource:(int64_t)source
{
  if (source > 0xF)
  {
    return @"Unknown Or Legacy";
  }

  else
  {
    return off_1E75A96B0[source];
  }
}

- (id)_ageDescriptionForMediaDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceNow];
    if (v5 <= 60.0)
    {
      v7 = v5 / -60.0;
      if (v7 >= 3.0)
      {
        if (v7 >= 10.0)
        {
          v8 = v7 / 60.0;
          if (v8 >= 3.0)
          {
            if (v8 < 24.0)
            {
              v6 = @"MediaAgeToday";
            }

            else if (v8 < 48.0)
            {
              v6 = @"MediaAgeYesterday";
            }

            else
            {
              v9 = v8 / 24.0;
              if (v9 >= 7.0)
              {
                if (v9 < 30.0)
                {
                  v6 = @"MediaAgeLast30Days";
                }

                else if (v9 < 60.0)
                {
                  v6 = @"MediaAgeLast60Days";
                }

                else if (v9 >= 90.0)
                {
                  if (v9 >= 180.0)
                  {
                    v11 = v9 / 365.0;
                    if (v11 >= 1.0)
                    {
                      if (v11 < 2.0)
                      {
                        v6 = @"MediaAge1Year";
                      }

                      else if (v11 < 3.0)
                      {
                        v6 = @"MediaAge2Years";
                      }

                      else if (v11 < 4.0)
                      {
                        v6 = @"MediaAge3Years";
                      }

                      else if (v11 < 5.0)
                      {
                        v6 = @"MediaAge4Years";
                      }

                      else if (v11 < 6.0)
                      {
                        v6 = @"MediaAge5Years";
                      }

                      else if (v11 < 10.0)
                      {
                        v6 = @"MediaAge10Years";
                      }

                      else if (v11 < 20.0)
                      {
                        v6 = @"MediaAge20Years";
                      }

                      else if (v11 < 30.0)
                      {
                        v6 = @"MediaAge30Years";
                      }

                      else if (v11 < 40.0)
                      {
                        v6 = @"MediaAge40Years";
                      }

                      else
                      {
                        v6 = @"MediaAge40PlusYears";
                      }
                    }

                    else
                    {
                      v6 = @"MediaAgeLastYear";
                    }
                  }

                  else
                  {
                    v6 = @"MediaAgeLast180Days";
                  }
                }

                else
                {
                  v6 = @"MediaAgeLast90Days";
                }
              }

              else
              {
                v6 = @"MediaAgeThisWeek";
              }
            }
          }

          else
          {
            v6 = @"MediaAgeNew";
          }
        }

        else
        {
          v6 = @"MediaAgeVeryNew";
        }
      }

      else
      {
        v6 = @"MediaAgeJustNow";
      }
    }

    else
    {
      v6 = @"MediaAgeFuture";
    }
  }

  else
  {
    v6 = @"MediaAgeUnknown";
  }

  return v6;
}

- (id)_mediaProperty:(id)property forAssetCollection:(id)collection
{
  propertyCopy = property;
  collectionCopy = collection;
  if (!collectionCopy)
  {
    goto LABEL_30;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D50]])
  {
    localIdentifier = +[PHAssetCollection descriptionForType:](PHAssetCollection, "descriptionForType:", [collectionCopy assetCollectionType]);
LABEL_4:
    v9 = localIdentifier;
    goto LABEL_34;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D48]])
  {
    if ([collectionCopy assetCollectionType] != 4)
    {
      if ([collectionCopy assetCollectionType] == 10)
      {
        [collectionCopy projectDocumentType];
      }

      else
      {
        +[PHAssetCollection descriptionForSubtype:](PHAssetCollection, "descriptionForSubtype:", [collectionCopy assetCollectionSubtype]);
      }
      localIdentifier = ;
      goto LABEL_4;
    }

    startDate = collectionCopy;
    category = [startDate category];
    if ([startDate subcategory])
    {
      [PHMemory stringForSubcategory:?];
    }

    else
    {
      [PHMemory stringForCategory:category];
    }
    v9 = ;
    if ([PHMemory isTriggeredMemoryCategory:category])
    {
      v16 = [v9 stringByAppendingString:{@", Triggered"}];

      v9 = v16;
    }

    goto LABEL_33;
  }

  if (![propertyCopy isEqualToString:*MEMORY[0x1E6991D28]])
  {
    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D40]])
    {
      startDate = [collectionCopy startDate];
      endDate = [collectionCopy endDate];
      endDate2 = endDate;
      v9 = 0;
      if (!startDate || !endDate)
      {
        goto LABEL_32;
      }

      v14 = MEMORY[0x1E696AD98];
      [endDate timeIntervalSinceDate:startDate];
      v15 = [v14 numberWithDouble:?];
      goto LABEL_27;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D20]])
    {
      localIdentifier = [collectionCopy localIdentifier];
      goto LABEL_4;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D90]])
    {
      localIdentifier = [collectionCopy uuid];
      goto LABEL_4;
    }

LABEL_30:
    v9 = 0;
    goto LABEL_34;
  }

  startDate = [collectionCopy creationDate];
  if (!startDate)
  {
    endDate2 = [collectionCopy endDate];
    if (!endDate2)
    {
      startDate2 = [collectionCopy startDate];
      v9 = [(PHCPAnalyticsMediaPropertyProvider *)self _ageDescriptionForMediaDate:startDate2];

      goto LABEL_32;
    }

    v15 = [(PHCPAnalyticsMediaPropertyProvider *)self _ageDescriptionForMediaDate:endDate2];
LABEL_27:
    v9 = v15;
LABEL_32:

    goto LABEL_33;
  }

  v9 = [(PHCPAnalyticsMediaPropertyProvider *)self _ageDescriptionForMediaDate:startDate];
LABEL_33:

LABEL_34:

  return v9;
}

- (id)_PHAssetCollectionFromPayload:(id)payload
{
  v13[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E6991E08]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    firstObject = v6;
  }

  else
  {
    v6 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E6991E10]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoLibrary = [(PHCPAnalyticsMediaPropertyProvider *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v13[0] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v11 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v10 options:librarySpecificFetchOptions];
      firstObject = [v11 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (id)_mediaProperty:(id)property forAsset:(id)asset
{
  propertyCopy = property;
  assetCopy = asset;
  if (assetCopy)
  {
    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991CE8]])
    {
      v8 = MEMORY[0x1E696AD98];
      hasAdjustments = [assetCopy hasAdjustments];
LABEL_4:
      v10 = hasAdjustments;
      v11 = v8;
LABEL_5:
      localIdentifier = [v11 numberWithBool:v10];
LABEL_6:
      v13 = localIdentifier;
      goto LABEL_63;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991CF0]])
    {
      [assetCopy fetchPropertySetsIfNeeded];
      importProperties = [assetCopy importProperties];
      v15 = -[PHCPAnalyticsMediaPropertyProvider _cameraTypeFromImportSource:](self, "_cameraTypeFromImportSource:", [importProperties importedBy]);
      goto LABEL_9;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D00]])
    {
      v8 = MEMORY[0x1E696AD98];
      hasAdjustments = [assetCopy isFavorite];
      goto LABEL_4;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D10]])
    {
      [assetCopy fetchPropertySetsIfNeeded];
      importProperties = [assetCopy importProperties];
      importedBy = [importProperties importedBy];
      if (importedBy > 0xF)
      {
        v17 = @"Unknown Import Source Value";
      }

      else
      {
        v17 = off_1E75A7278[importedBy];
      }

      v15 = v17;
      goto LABEL_9;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D50]])
    {
      localIdentifier = +[PHAsset descriptionForMediaType:](PHAsset, "descriptionForMediaType:", [assetCopy mediaType]);
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D48]])
    {
      localIdentifier = +[PHAsset descriptionForMediaSubtypes:](PHAsset, "descriptionForMediaSubtypes:", [assetCopy mediaSubtypes]);
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D28]])
    {
      importProperties = [assetCopy creationDate];
      v15 = [(PHCPAnalyticsMediaPropertyProvider *)self _ageDescriptionForMediaDate:importProperties];
      goto LABEL_9;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D40]])
    {
      v18 = MEMORY[0x1E696AD98];
      [assetCopy duration];
LABEL_26:
      localIdentifier = [v18 numberWithDouble:?];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D20]])
    {
      localIdentifier = [assetCopy localIdentifier];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D30]])
    {
      importProperties = [assetCopy creationDate];
      [importProperties timeIntervalSinceNow];
      v13 = 0;
      if (!importProperties || v19 > 0.0)
      {
        goto LABEL_10;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v19 / -60.0];
LABEL_9:
      v13 = v15;
LABEL_10:

      goto LABEL_63;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D58]])
    {
      localIdentifier = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(assetCopy, "exifOrientation")}];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D60]])
    {
      localIdentifier = [(PHCPAnalyticsMediaPropertyProvider *)self _sceneForAsset:assetCopy];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D70]])
    {
      localIdentifier = [(PHCPAnalyticsMediaPropertyProvider *)self _sceneSubjectForAsset:assetCopy];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D90]])
    {
      localIdentifier = [assetCopy uuid];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D18]])
    {
      importProperties = [assetCopy photoLibrary];
      isSystemPhotoLibrary = [importProperties isSystemPhotoLibrary];
      v21 = objc_opt_class();
      if (isSystemPhotoLibrary)
      {
        wellKnownPhotoLibraryIdentifier = 1;
      }

      else
      {
        wellKnownPhotoLibraryIdentifier = [importProperties wellKnownPhotoLibraryIdentifier];
      }

      v15 = [v21 _wellKnownPhotoLibraryIdentifierDescription:wellKnownPhotoLibraryIdentifier];
      goto LABEL_9;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D88]])
    {
      localIdentifier = [objc_opt_class() _syndicationStateDescriptionForSyndicationState:{objc_msgSend(assetCopy, "syndicationState")}];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D08]])
    {
      curationProperties = [assetCopy curationProperties];
      syndicationIdentifier = [curationProperties syndicationIdentifier];
      v25 = syndicationIdentifier != 0;

      v11 = MEMORY[0x1E696AD98];
      v10 = v25;
      goto LABEL_5;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D78]])
    {
      [assetCopy fetchPropertySetsIfNeeded];
      mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
      syndicationProcessingValue = [mediaAnalysisProperties syndicationProcessingValue];

      localIdentifier = [objc_opt_class() _syndicationValueDescriptionForAssetProcessingValue:syndicationProcessingValue];
      goto LABEL_6;
    }

    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D80]])
    {
      [assetCopy fetchPropertySetsIfNeeded];
      mediaAnalysisProperties2 = [assetCopy mediaAnalysisProperties];
      syndicationProcessingVersion = [mediaAnalysisProperties2 syndicationProcessingVersion];

      if ((syndicationProcessingVersion - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        localIdentifier = PHAssetSyndicationProcessingVersionDescription(syndicationProcessingVersion);
        goto LABEL_6;
      }
    }

    else
    {
      if ([propertyCopy isEqualToString:*MEMORY[0x1E6991CF8]])
      {
        v18 = MEMORY[0x1E696AD98];
        [assetCopy curationScore];
        goto LABEL_26;
      }

      if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D68]] && CFPreferencesGetAppBooleanValue(@"PhotosSharedLibrarySyncingIsActive", @"com.apple.mobileslideshow", 0))
      {
        participatesInLibraryScope = [assetCopy participatesInLibraryScope];
        v31 = @"Personal";
        if (participatesInLibraryScope)
        {
          v31 = @"Shared";
        }

        localIdentifier = v31;
        goto LABEL_6;
      }
    }
  }

  v13 = 0;
LABEL_63:

  return v13;
}

- (id)_mediaCountFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:*MEMORY[0x1E6991E18]];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = &unk_1F102D8B0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_PHAssetFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:*MEMORY[0x1E6991E18]];
  if (!v3)
  {
LABEL_8:
    firstObject = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = v3;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if ([v4 count] == 1 && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

LABEL_11:

  return firstObject;
}

- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  propertyCopy = property;
  extractionCopy = extraction;
  if (![propertyCopy isEqualToString:*MEMORY[0x1E6991D20]] || (objc_msgSend(extractionCopy, "objectForKeyedSubscript:", *MEMORY[0x1E6991E10]), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D90]] && (objc_msgSend(extractionCopy, "objectForKeyedSubscript:", *MEMORY[0x1E6991E10]), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = [PHObject uuidFromLocalIdentifier:v10];
    }

    else
    {
      if ([propertyCopy isEqualToString:*MEMORY[0x1E6991D38]])
      {
        v9 = [(PHCPAnalyticsMediaPropertyProvider *)self _mediaCountFromPayload:extractionCopy];
        goto LABEL_12;
      }

      v11 = [(PHCPAnalyticsMediaPropertyProvider *)self _PHAssetFromPayload:extractionCopy];
      if (!v11)
      {
        v14 = [(PHCPAnalyticsMediaPropertyProvider *)self _PHAssetCollectionFromPayload:extractionCopy];
        if (v14)
        {
          v9 = [(PHCPAnalyticsMediaPropertyProvider *)self _mediaProperty:propertyCopy forAssetCollection:v14];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_11;
      }

      v12 = [(PHCPAnalyticsMediaPropertyProvider *)self _mediaProperty:propertyCopy forAsset:v11];
    }

    v9 = v12;
LABEL_11:
  }

LABEL_12:

  return v9;
}

- (void)registerSystemProperties:(id)properties
{
  v4 = *MEMORY[0x1E6991CE8];
  propertiesCopy = properties;
  [propertiesCopy addDynamicProperty:v4 withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991CF0] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D00] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D10] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D20] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D50] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D48] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D28] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D38] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D40] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D30] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D58] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D60] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D70] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D90] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D18] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D88] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D08] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D78] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D80] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991CF8] withProvider:self];
  [propertiesCopy addDynamicProperty:*MEMORY[0x1E6991D68] withProvider:self];
}

- (PHCPAnalyticsMediaPropertyProvider)initWithPhotoLibrary:(id)library
{
  v27 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v22.receiver = self;
  v22.super_class = PHCPAnalyticsMediaPropertyProvider;
  v5 = [(PHCPAnalyticsMediaPropertyProvider *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 84];
    v21 = 0;
    v8 = [objc_alloc(MEMORY[0x1E69C0850]) initWithIdentifier:v7 error:&v21];
    v9 = v21;
    sceneTaxonomy84 = v6->_sceneTaxonomy84;
    v6->_sceneTaxonomy84 = v8;

    if (!v6->_sceneTaxonomy84)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v7;
        v25 = 2112;
        v26 = v9;
        _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@. %@", buf, 0x16u);
      }

      initWithLatestTaxonomy = [objc_alloc(MEMORY[0x1E69C0850]) initWithLatestTaxonomy];
      v12 = v6->_sceneTaxonomy84;
      v6->_sceneTaxonomy84 = initWithLatestTaxonomy;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 99];
    v20 = v9;
    v14 = [objc_alloc(MEMORY[0x1E69C0850]) initWithIdentifier:v13 error:&v20];
    v15 = v20;

    sceneTaxonomy99 = v6->_sceneTaxonomy99;
    v6->_sceneTaxonomy99 = v14;

    if (!v6->_sceneTaxonomy99)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v13;
        v25 = 2112;
        v26 = v15;
        _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@. %@", buf, 0x16u);
      }

      initWithLatestTaxonomy2 = [objc_alloc(MEMORY[0x1E69C0850]) initWithLatestTaxonomy];
      v18 = v6->_sceneTaxonomy99;
      v6->_sceneTaxonomy99 = initWithLatestTaxonomy2;
    }
  }

  return v6;
}

- (PHCPAnalyticsMediaPropertyProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHCPAnalyticsMediaPropertyProvider.m" lineNumber:127 description:{@"%s is not available as initializer", "-[PHCPAnalyticsMediaPropertyProvider init]"}];

  abort();
}

+ (id)_wellKnownPhotoLibraryIdentifierDescription:(int64_t)description
{
  if (description > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A97C8[description];
  }
}

+ (id)_syndicationValueDescriptionForAssetProcessingValue:(unsigned __int16)value
{
  valueCopy = value;
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (!valueCopy)
  {
    v6 = @"none";
LABEL_34:
    [v5 addObject:v6];
    goto LABEL_35;
  }

  if (valueCopy)
  {
    [array addObject:@"no moment"];
    if ((valueCopy & 2) == 0)
    {
LABEL_4:
      if ((valueCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((valueCopy & 2) == 0)
  {
    goto LABEL_4;
  }

  [v5 addObject:@"time"];
  if ((valueCopy & 4) == 0)
  {
LABEL_5:
    if ((valueCopy & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v5 addObject:@"no location"];
  if ((valueCopy & 8) == 0)
  {
LABEL_6:
    if ((valueCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 addObject:@"far location"];
  if ((valueCopy & 0x10) == 0)
  {
LABEL_7:
    if ((valueCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:@"location"];
  if ((valueCopy & 0x20) == 0)
  {
LABEL_8:
    if ((valueCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:@"owner face"];
  if ((valueCopy & 0x40) == 0)
  {
LABEL_9:
    if ((valueCopy & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:@"face"];
  if ((valueCopy & 0x80) == 0)
  {
LABEL_10:
    if ((valueCopy & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v5 addObject:@"previous moment"];
  if ((valueCopy & 0x100) == 0)
  {
LABEL_11:
    if ((valueCopy & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v5 addObject:@"duplicate"];
  if ((valueCopy & 0x200) == 0)
  {
LABEL_12:
    if ((valueCopy & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v5 addObject:@"pet"];
  if ((valueCopy & 0x400) == 0)
  {
LABEL_13:
    if ((valueCopy & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v5 addObject:@"coreroutine"];
  if ((valueCopy & 0x800) == 0)
  {
LABEL_14:
    if ((valueCopy & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v5 addObject:@"significant location"];
  if ((valueCopy & 0x1000) == 0)
  {
LABEL_15:
    if ((valueCopy & 0x2000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    [v5 addObject:@"sceneprint"];
    if ((valueCopy & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_31:
  [v5 addObject:@"saved guest"];
  if ((valueCopy & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((valueCopy & 0x4000) != 0)
  {
LABEL_33:
    v6 = @"child";
    goto LABEL_34;
  }

LABEL_35:
  v7 = [v5 componentsJoinedByString:{@", "}];

  return v7;
}

+ (id)_syndicationStateDescriptionForSyndicationState:(unsigned __int16)state
{
  if (state > 8u)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E75A9780[state];
  }
}

+ (id)assetPropertySetsToFetch
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"PHAssetPropertySetCore";
  v4[1] = @"PHAssetPropertySetSceneAnalysis";
  v4[2] = @"PHAssetPropertySetImport";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

@end