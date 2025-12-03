@interface PHPhotoLibraryFeatureAvailability
- (BOOL)isEqual:(id)equal;
- (PHPhotoLibraryFeatureAvailability)initWithFeature:(unint64_t)feature;
- (id)debugDescription;
@end

@implementation PHPhotoLibraryFeatureAvailability

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"-- General Processing Availability --\n"];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithSceneAnalysis];
  [v3 appendFormat:@"Scene analysis progress (all assets): %f\n", v4];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithFaceAnalysis];
  [v3 appendFormat:@"Face analysis progress (all assets): %f\n", v5];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithEmbeddings];
  [v3 appendFormat:@"Embedding progress (all assets): %f\n", v6];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithCaptions];
  [v3 appendFormat:@"Captioning progress (all assets): %f\n", v7];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithScenesInIndex];
  [v3 appendFormat:@"Search indexing progress (scenes): %f\n", v8];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithFacesInIndex];
  [v3 appendFormat:@"Search indexing progress (faces): %f\n", v9];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithEmbeddingsInIndex];
  [v3 appendFormat:@"Search indexing progress (embeddings): %f\n", v10];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddings];
  [v3 appendFormat:@"Embedding progress (curated assets): %f\n", v11];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithCaptions];
  [v3 appendFormat:@"Captioning progress (curated assets): %f\n", v12];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddingsInIndex];
  [v3 appendFormat:@"Search indexing progress (curated asset embeddings): %f\n", v13];
  [(PHPhotoLibraryFeatureAvailability *)self fractionOfHighlightsEnriched];
  [v3 appendFormat:@"Highlights progress: %f\n", v14];
  if ([(PHPhotoLibraryFeatureAvailability *)self photosKnowledgeGraphIsReady])
  {
    v15 = @"true";
  }

  else
  {
    v15 = @"false";
  }

  [v3 appendFormat:@"Photos Knowledge Graph is Ready: %@\n", v15];
  [v3 appendFormat:@"Count of curated assets: %lu\n", -[PHPhotoLibraryFeatureAvailability numberOfCuratedAssets](self, "numberOfCuratedAssets")];
  if ([(PHPhotoLibraryFeatureAvailability *)self stillAssetEmbeddingsAreIndexedEnough])
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  [v3 appendFormat:@"Enough still assets are in the index: %@\n", v16];
  if ([(PHPhotoLibraryFeatureAvailability *)self libraryHasEnoughCuratedAssets])
  {
    v17 = @"true";
  }

  else
  {
    v17 = @"false";
  }

  [v3 appendFormat:@"Library has enough curated assets: %@\n", v17];
  if ([(PHPhotoLibraryFeatureAvailability *)self featureAvailability])
  {
    v18 = @"true";
  }

  else
  {
    v18 = @"false";
  }

  [v3 appendFormat:@"Is Processing done: %@\n", v18];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v45 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      feature = [(PHPhotoLibraryFeatureAvailability *)self feature];
      if (feature == [(PHPhotoLibraryFeatureAvailability *)v5 feature]
        && (v7 = [(PHPhotoLibraryFeatureAvailability *)self photosKnowledgeGraphIsReady], v7 == [(PHPhotoLibraryFeatureAvailability *)v5 photosKnowledgeGraphIsReady])
        && (v8 = [(PHPhotoLibraryFeatureAvailability *)self featureAvailability], v8 == [(PHPhotoLibraryFeatureAvailability *)v5 featureAvailability])
        && (v9 = [(PHPhotoLibraryFeatureAvailability *)self numberOfCuratedAssets], v9 == [(PHPhotoLibraryFeatureAvailability *)v5 numberOfCuratedAssets])
        && (v10 = [(PHPhotoLibraryFeatureAvailability *)self stillAssetEmbeddingsAreIndexedEnough], v10 == [(PHPhotoLibraryFeatureAvailability *)v5 stillAssetEmbeddingsAreIndexedEnough])
        && (v11 = [(PHPhotoLibraryFeatureAvailability *)self libraryHasEnoughCuratedAssets], v11 == [(PHPhotoLibraryFeatureAvailability *)v5 libraryHasEnoughCuratedAssets])
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithSceneAnalysis], v13 = v12, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithSceneAnalysis], vabdd_f64(v13, v14) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithFaceAnalysis], v16 = v15, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithFaceAnalysis], vabdd_f64(v16, v17) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithEmbeddings], v19 = v18, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithEmbeddings], vabdd_f64(v19, v20) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithCaptions], v22 = v21, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithCaptions], vabdd_f64(v22, v23) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithScenesInIndex], v25 = v24, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithScenesInIndex], vabdd_f64(v25, v26) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithFacesInIndex], v28 = v27, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithFacesInIndex], vabdd_f64(v28, v29) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfAssetsWithEmbeddingsInIndex], v31 = v30, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfAssetsWithEmbeddingsInIndex], vabdd_f64(v31, v32) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddings], v34 = v33, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfCuratedAssetsWithEmbeddings], vabdd_f64(v34, v35) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithCaptions], v37 = v36, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfCuratedAssetsWithCaptions], vabdd_f64(v37, v38) < 2.22044605e-16)
        && ([(PHPhotoLibraryFeatureAvailability *)self fractionOfCuratedAssetsWithEmbeddingsInIndex], v40 = v39, [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfCuratedAssetsWithEmbeddingsInIndex], vabdd_f64(v40, v41) < 2.22044605e-16))
      {
        [(PHPhotoLibraryFeatureAvailability *)self fractionOfHighlightsEnriched];
        v43 = v42;
        [(PHPhotoLibraryFeatureAvailability *)v5 fractionOfHighlightsEnriched];
        v45 = vabdd_f64(v43, v44) < 2.22044605e-16;
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }
  }

  return v45;
}

- (PHPhotoLibraryFeatureAvailability)initWithFeature:(unint64_t)feature
{
  v8.receiver = self;
  v8.super_class = PHPhotoLibraryFeatureAvailability;
  v4 = [(PHPhotoLibraryFeatureAvailability *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_feature = feature;
    v6 = v4;
  }

  return v5;
}

@end