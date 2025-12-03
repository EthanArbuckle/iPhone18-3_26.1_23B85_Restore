@interface PHSearch
+ (id)spotlightSceneClassificationsFromPhotosSceneClassifications:(id)classifications algorithmVersion:(int64_t)version;
@end

@implementation PHSearch

+ (id)spotlightSceneClassificationsFromPhotosSceneClassifications:(id)classifications algorithmVersion:(int64_t)version
{
  v16 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  v6 = objc_opt_new();
  v7 = objc_alloc_init(MEMORY[0x1E69BE7A0]);
  v8 = [v7 searchIndexSceneTaxonomyForSceneAnalysisVersion:version];
  if (v8)
  {
    v9 = [MEMORY[0x1E69BE818] spotlightScenesFromScenes:classificationsCopy sceneTaxonomy:v8 thumbnailMap:0];
    [v6 addObjectsFromArray:v9];
    v10 = [MEMORY[0x1E69BE818] spotlightAudioClassificationsFromScenes:classificationsCopy];
    [v6 addObjectsFromArray:v10];
    v11 = [v6 copy];
  }

  else
  {
    v12 = PLSearchBackendSceneTaxonomyGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      versionCopy = version;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to load Scene Taxonomy for analysis version: %ld. Unable to translate scenes.", &v14, 0xCu);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

@end