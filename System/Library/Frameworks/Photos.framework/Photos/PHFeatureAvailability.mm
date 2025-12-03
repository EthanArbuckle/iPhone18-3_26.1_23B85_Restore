@interface PHFeatureAvailability
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)initForFeature:(unint64_t)feature withPLFeatureAvailability:(id)availability;
@end

@implementation PHFeatureAvailability

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = PHStringFromAnalysisCoordinatorFeature([(PHFeatureAvailability *)self feature]);
  [v3 appendFormat:@"-- General Processing Availability For %@ --\n", v4];

  [(PHFeatureAvailability *)self fractionOfAllAssetsAnalyzedForScenes];
  [v3 appendFormat:@"Scene analysis progress (all assets): %f\n", v5];
  [(PHFeatureAvailability *)self fractionOfAllAssetsWithCaptions];
  [v3 appendFormat:@"Captioning progress (all assets): %f\n", v6];
  [(PHFeatureAvailability *)self fractionOfAllAssetsWithSceneAnalysisInSearchIndex];
  [v3 appendFormat:@"Search indexing progress (scenes): %f\n", v7];
  [v3 appendFormat:@"Count of search indexing (scenes): %lu\n", -[PHFeatureAvailability numberOfAssetsWithSceneAnalysisInSearchIndex](self, "numberOfAssetsWithSceneAnalysisInSearchIndex")];
  [(PHFeatureAvailability *)self fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
  [v3 appendFormat:@"Search indexing progress (embeddings): %f\n", v8];
  [v3 appendFormat:@"Count of search indexing (embeddings): %lu\n", -[PHFeatureAvailability numberOfAssetsWithMediaAnalysisInSearchIndex](self, "numberOfAssetsWithMediaAnalysisInSearchIndex")];
  dateSearchIndexSnapshotLastUpdated = [(PHFeatureAvailability *)self dateSearchIndexSnapshotLastUpdated];
  [v3 appendFormat:@"Date search index last updated: %@\n", dateSearchIndexSnapshotLastUpdated];

  [(PHFeatureAvailability *)self fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
  [v3 appendFormat:@"Search indexing progress (curated assets scenes): %f\n", v10];
  [(PHFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
  [v3 appendFormat:@"Search indexing progress (curated asset embeddings): %f\n", v11];
  [(PHFeatureAvailability *)self fractionOfCuratedAssetsIndexedInVUClustering];
  [v3 appendFormat:@"Clustering indexing progress (curated asset embeddings): %f\n", v12];
  [(PHFeatureAvailability *)self fractionOfCuratedAssetsWithCaptions];
  [v3 appendFormat:@"Captioning progress (curated assets): %f\n", v13];
  [(PHFeatureAvailability *)self fractionOfHighlightsEnriched];
  [v3 appendFormat:@"Highlights progress: %f\n", v14];
  if ([(PHFeatureAvailability *)self photosKnowledgeGraphIsReady])
  {
    v15 = @"true";
  }

  else
  {
    v15 = @"false";
  }

  [v3 appendFormat:@"Photos Knowledge Graph is Ready: %@\n", v15];
  if ([(PHFeatureAvailability *)self vuIndexIsFullClustered])
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  [v3 appendFormat:@"VU index is full clustered: %@\n", v16];
  [v3 appendFormat:@"Count of curated assets: %lu\n", -[PHFeatureAvailability numberOfCuratedAssets](self, "numberOfCuratedAssets")];
  if ([(PHFeatureAvailability *)self libraryHasEnoughCuratedAssetsWithEmbeddingsInVectorIndex])
  {
    v17 = @"true";
  }

  else
  {
    v17 = @"false";
  }

  [v3 appendFormat:@"Enough curated assets are in the embedding search index: %@\n", v17];
  if ([(PHFeatureAvailability *)self libraryHasEnoughCuratedAssetsIndexedInVUClustering])
  {
    v18 = @"true";
  }

  else
  {
    v18 = @"false";
  }

  [v3 appendFormat:@"Enough curated assets are in the clustering index: %@\n", v18];
  if ([(PHFeatureAvailability *)self libraryHasEnoughCuratedAssets])
  {
    v19 = @"true";
  }

  else
  {
    v19 = @"false";
  }

  [v3 appendFormat:@"Library has enough curated assets: %@\n", v19];
  [v3 appendFormat:@"Total number of assets available for analysis in library: %lu\n", -[PHFeatureAvailability numberOfAssets](self, "numberOfAssets")];
  [v3 appendFormat:@"Total number of curated assets in library: %lu\n", -[PHFeatureAvailability numberOfCuratedAssets](self, "numberOfCuratedAssets")];
  if ([(PHFeatureAvailability *)self wasComputed])
  {
    v20 = @"true";
  }

  else
  {
    v20 = @"false";
  }

  [v3 appendFormat:@"Availability was computed: %@\n", v20];
  dateComputed = [(PHFeatureAvailability *)self dateComputed];
  [v3 appendFormat:@"Availability was computed on date: %@\n", dateComputed];

  if ([(PHFeatureAvailability *)self isAvailable])
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  [v3 appendFormat:@"Feature is available: %@\n", v22];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateComputed = [(PHFeatureAvailability *)self dateComputed];
      dateComputed2 = [(PHFeatureAvailability *)v5 dateComputed];
      IsEqual = PLObjectIsEqual();

      lastFullVUIndexClusterDate = [(PHFeatureAvailability *)self lastFullVUIndexClusterDate];
      lastFullVUIndexClusterDate2 = [(PHFeatureAvailability *)v5 lastFullVUIndexClusterDate];
      v11 = PLObjectIsEqual();

      dateSearchIndexSnapshotLastUpdated = [(PHFeatureAvailability *)self dateSearchIndexSnapshotLastUpdated];
      dateSearchIndexSnapshotLastUpdated2 = [(PHFeatureAvailability *)v5 dateSearchIndexSnapshotLastUpdated];
      v14 = PLObjectIsEqual();

      v15 = 0;
      if (IsEqual && v11 && v14)
      {
        feature = [(PHFeatureAvailability *)self feature];
        if (feature == [(PHFeatureAvailability *)v5 feature]
          && (v17 = [(PHFeatureAvailability *)self wasComputed], v17 == [(PHFeatureAvailability *)v5 wasComputed])
          && (v18 = [(PHFeatureAvailability *)self photosKnowledgeGraphIsReady], v18 == [(PHFeatureAvailability *)v5 photosKnowledgeGraphIsReady])
          && (v19 = [(PHFeatureAvailability *)self vuIndexIsFullClustered], v19 == [(PHFeatureAvailability *)v5 vuIndexIsFullClustered])
          && (v20 = [(PHFeatureAvailability *)self isAvailable], v20 == [(PHFeatureAvailability *)v5 isAvailable])
          && (v21 = [(PHFeatureAvailability *)self numberOfCuratedAssets], v21 == [(PHFeatureAvailability *)v5 numberOfCuratedAssets])
          && (v22 = [(PHFeatureAvailability *)self numberOfAssetsWithSceneAnalysisInSearchIndex], v22 == [(PHFeatureAvailability *)v5 numberOfAssetsWithSceneAnalysisInSearchIndex])
          && (v23 = [(PHFeatureAvailability *)self numberOfAssetsWithMediaAnalysisInSearchIndex], v23 == [(PHFeatureAvailability *)v5 numberOfAssetsWithMediaAnalysisInSearchIndex])
          && (v24 = [(PHFeatureAvailability *)self numberOfAssets], v24 == [(PHFeatureAvailability *)v5 numberOfAssets])
          && (v25 = [(PHFeatureAvailability *)self libraryHasEnoughCuratedAssetsWithEmbeddingsInVectorIndex], v25 == [(PHFeatureAvailability *)v5 libraryHasEnoughCuratedAssetsWithEmbeddingsInVectorIndex])
          && (v26 = [(PHFeatureAvailability *)self libraryHasEnoughCuratedAssetsIndexedInVUClustering], v26 == [(PHFeatureAvailability *)v5 libraryHasEnoughCuratedAssetsIndexedInVUClustering])
          && (v27 = [(PHFeatureAvailability *)self libraryHasEnoughCuratedAssets], v27 == [(PHFeatureAvailability *)v5 libraryHasEnoughCuratedAssets])
          && ([(PHFeatureAvailability *)self fractionOfAllAssetsAnalyzedForScenes], v29 = v28, [(PHFeatureAvailability *)v5 fractionOfAllAssetsAnalyzedForScenes], vabdd_f64(v29, v30) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfAllAssetsWithCaptions], v32 = v31, [(PHFeatureAvailability *)v5 fractionOfAllAssetsWithCaptions], vabdd_f64(v32, v33) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfAllAssetsWithSceneAnalysisInSearchIndex], v35 = v34, [(PHFeatureAvailability *)v5 fractionOfAllAssetsWithSceneAnalysisInSearchIndex], vabdd_f64(v35, v36) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfAllAssetsWithMediaAnalysisInSearchIndex], v38 = v37, [(PHFeatureAvailability *)v5 fractionOfAllAssetsWithMediaAnalysisInSearchIndex], vabdd_f64(v38, v39) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex], v41 = v40, [(PHFeatureAvailability *)v5 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex], vabdd_f64(v41, v42) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddingsInVectorIndex], v44 = v43, [(PHFeatureAvailability *)v5 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex], vabdd_f64(v44, v45) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfCuratedAssetsIndexedInVUClustering], v47 = v46, [(PHFeatureAvailability *)v5 fractionOfCuratedAssetsIndexedInVUClustering], vabdd_f64(v47, v48) < 2.22044605e-16)
          && ([(PHFeatureAvailability *)self fractionOfCuratedAssetsWithCaptions], v50 = v49, [(PHFeatureAvailability *)v5 fractionOfCuratedAssetsWithCaptions], vabdd_f64(v50, v51) < 2.22044605e-16))
        {
          [(PHFeatureAvailability *)self fractionOfHighlightsEnriched];
          v53 = v52;
          [(PHFeatureAvailability *)v5 fractionOfHighlightsEnriched];
          v15 = vabdd_f64(v53, v54) < 2.22044605e-16;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)initForFeature:(unint64_t)feature withPLFeatureAvailability:(id)availability
{
  availabilityCopy = availability;
  v38.receiver = self;
  v38.super_class = PHFeatureAvailability;
  v7 = [(PHFeatureAvailability *)&v38 init];
  v8 = v7;
  if (v7)
  {
    v7->_feature = feature;
    if (availabilityCopy)
    {
      availabilityByFeature = [availabilityCopy availabilityByFeature];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
      v11 = [availabilityByFeature objectForKeyedSubscript:v10];

      if (v11)
      {
        processingSnapshot = [availabilityCopy processingSnapshot];
        v8->_wasComputed = 1;
        v8->_isAvailable = [v11 BOOLValue];
        [processingSnapshot fractionOfAllAssetsAnalyzedForScenes];
        v8->_fractionOfAllAssetsAnalyzedForScenes = v13;
        [processingSnapshot fractionOfAllAssetsWithSceneAnalysisInSearchIndex];
        v8->_fractionOfAllAssetsWithSceneAnalysisInSearchIndex = v14;
        v8->_numberOfAssetsWithSceneAnalysisInSearchIndex = [processingSnapshot numberOfAssetsWithSceneAnalysisInSearchIndex];
        [processingSnapshot fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
        v8->_fractionOfAllAssetsWithMediaAnalysisInSearchIndex = v15;
        v8->_numberOfAssetsWithMediaAnalysisInSearchIndex = [processingSnapshot numberOfAssetsWithMediaAnalysisInSearchIndex];
        [processingSnapshot fractionOfAllAssetsWithCaptions];
        v8->_fractionOfAllAssetsWithCaptions = v16;
        dateSearchIndexSnapshotLastUpdated = [processingSnapshot dateSearchIndexSnapshotLastUpdated];
        dateSearchIndexSnapshotLastUpdated = v8->_dateSearchIndexSnapshotLastUpdated;
        v8->_dateSearchIndexSnapshotLastUpdated = dateSearchIndexSnapshotLastUpdated;

        [processingSnapshot fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
        v8->_fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex = v19;
        [processingSnapshot fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
        v8->_fractionOfCuratedAssetsWithEmbeddingsInVectorIndex = v20;
        [processingSnapshot fractionOfCuratedAssetsIndexedInVUClustering];
        v8->_fractionOfCuratedAssetsIndexedInVUClustering = v21;
        [processingSnapshot fractionOfCuratedAssetsWithCaptions];
        v8->_fractionOfCuratedAssetsWithCaptions = v22;
        [processingSnapshot fractionOfHighlightsEnriched];
        v8->_fractionOfHighlightsEnriched = v23;
        v8->_photosKnowledgeGraphIsReady = [processingSnapshot photosKnowledgeGraphIsReady];
        v8->_vuIndexIsFullClustered = [processingSnapshot vuIndexIsFullClustered];
        lastFullVUIndexClusterDate = [processingSnapshot lastFullVUIndexClusterDate];
        lastFullVUIndexClusterDate = v8->_lastFullVUIndexClusterDate;
        v8->_lastFullVUIndexClusterDate = lastFullVUIndexClusterDate;

        v8->_numberOfAssets = [processingSnapshot totalAssetCount];
        v8->_numberOfCuratedAssets = [processingSnapshot totalCuratedAssetCount];
        v8->_mediaAnalysisImageVersion = [processingSnapshot mediaAnalysisImageVersion];
        v8->_hasConsistentMediaAnalysisImageVersion = [processingSnapshot hasConsistentMediaAnalysisImageVersion];
        dateComputed = [processingSnapshot dateComputed];
        dateComputed = v8->_dateComputed;
        v8->_dateComputed = dateComputed;

        v28 = [objc_alloc(MEMORY[0x1E69BE420]) initWithFeature:feature];
        numberOfCuratedAssets = v8->_numberOfCuratedAssets;
        v8->_libraryHasEnoughCuratedAssets = numberOfCuratedAssets >= [v28 minimumNumberOfCuratedAssets];
        fractionOfCuratedAssetsWithEmbeddingsInVectorIndex = v8->_fractionOfCuratedAssetsWithEmbeddingsInVectorIndex;
        [v28 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
        v8->_libraryHasEnoughCuratedAssetsWithEmbeddingsInVectorIndex = fractionOfCuratedAssetsWithEmbeddingsInVectorIndex >= v31;
        fractionOfCuratedAssetsIndexedInVUClustering = v8->_fractionOfCuratedAssetsIndexedInVUClustering;
        [v28 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
        v8->_libraryHasEnoughCuratedAssetsIndexedInVUClustering = fractionOfCuratedAssetsIndexedInVUClustering >= v33;
        v34 = v8;
      }

      else
      {
        v36 = v8;
      }
    }

    else
    {
      v7->_isAvailable = 0;
      v7->_wasComputed = 0;
      v35 = v7;
    }
  }

  return v8;
}

@end