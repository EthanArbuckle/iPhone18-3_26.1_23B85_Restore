@interface NTKUltraCubeResourcesManifest
- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4;
@end

@implementation NTKUltraCubeResourcesManifest

- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NTKUltraCubeResourcesManifest *)self resourceDirectoryURL];
    v8 = [v7 lastPathComponent];
    v9 = [v5 objectForKeyedSubscript:@"localIdentifier"];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", &v15, 0x16u);
  }

  if (![NTKUltraCubePhoto validateDictionary:v5])
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29964(self, v5, v10);
    }

    goto LABEL_15;
  }

  v10 = [v5 objectForKeyedSubscript:@"baseImageURL"];
  if (![(NTKUltraCubeResourcesManifest *)self resourceWithName:v10 isValidMediaAssetOfType:&off_4B480 withMinFileSize:1000 maxFileSize:4000000]|| ![(NTKUltraCubeResourcesManifest *)self resourceWithNameIsValidImage:v10])
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v11 = [v5 objectForKeyedSubscript:@"backgroundImageURL"];
  if (!v11 || [(NTKUltraCubeResourcesManifest *)self resourceWithName:v11 isValidMediaAssetOfType:&off_4B480 withMinFileSize:1000 maxFileSize:4000000]&& [(NTKUltraCubeResourcesManifest *)self resourceWithNameIsValidImage:v11])
  {
    v12 = [v5 objectForKeyedSubscript:@"maskImageURL"];
    v13 = !v12 || [(NTKUltraCubeResourcesManifest *)self resourceWithName:v12 isValidMediaAssetOfType:&off_4B498 withMinFileSize:1000 maxFileSize:4000000]&& [(NTKUltraCubeResourcesManifest *)self resourceWithNameIsValidImage:v12];
  }

  else
  {
    v13 = 0;
  }

LABEL_16:
  return v13;
}

@end