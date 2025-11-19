@interface PHSearch
+ (id)spotlightSceneClassificationsFromPhotosSceneClassifications:(id)a3 algorithmVersion:(int64_t)a4;
@end

@implementation PHSearch

+ (id)spotlightSceneClassificationsFromPhotosSceneClassifications:(id)a3 algorithmVersion:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = objc_alloc_init(MEMORY[0x1E69BE7A0]);
  v8 = [v7 searchIndexSceneTaxonomyForSceneAnalysisVersion:a4];
  if (v8)
  {
    v9 = [MEMORY[0x1E69BE818] spotlightScenesFromScenes:v5 sceneTaxonomy:v8 thumbnailMap:0];
    [v6 addObjectsFromArray:v9];
    v10 = [MEMORY[0x1E69BE818] spotlightAudioClassificationsFromScenes:v5];
    [v6 addObjectsFromArray:v10];
    v11 = [v6 copy];
  }

  else
  {
    v12 = PLSearchBackendSceneTaxonomyGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = a4;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to load Scene Taxonomy for analysis version: %ld. Unable to translate scenes.", &v14, 0xCu);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

@end