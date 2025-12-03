@interface QLLivePhotoItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLLivePhotoItemTransformer

+ (id)allowedOutputClasses
{
  v3 = MEMORY[0x277CBEB98];
  gotLoadHelper_x8__OBJC_CLASS___PHLivePhoto(v2);
  v5 = *(v4 + 2248);
  return [v3 setWithObjects:{objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  v42[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(v7);
  v9 = [objc_alloc(*(v8 + 1312)) initWithBundleAtURL:lCopy];
  imagePath = [v9 imagePath];
  v11 = MEMORY[0x277D43EF8];
  if (imagePath && (v12 = imagePath, [v9 videoPath], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = MEMORY[0x277CBEBC0];
    imagePath2 = [v9 imagePath];
    v16 = [v14 fileURLWithPath:imagePath2];

    v17 = MEMORY[0x277CBEBC0];
    videoPath = [v9 videoPath];
    v19 = [v17 fileURLWithPath:videoPath];

    gotLoadHelper_x24__OBJC_CLASS___PHLivePhoto(v20);
    v21 = videoPath[281];
    if ((objc_opt_respondsToSelector() & 1) != 0 && _os_feature_enabled_impl())
    {
      v22 = videoPath[281];
      v42[0] = v16;
      v42[1] = v19;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v36 = 0;
      v24 = &v36;
      v25 = [v22 livePhotoWithResourceFileURLs:v23 prefersHDR:1 error:&v36];
    }

    else
    {
      v32 = videoPath[281];
      v41[0] = v16;
      v41[1] = v19;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
      v35 = 0;
      v24 = &v35;
      v25 = [v32 livePhotoWithResourceFileURLs:v23 error:&v35];
    }

    v28 = v25;
    v27 = *v24;

    if (!v27 && v28)
    {
      v28 = v28;
      v27 = 0;
      v31 = v28;
      goto LABEL_22;
    }
  }

  else
  {
    v26 = *v11;
    if (!*v11)
    {
      QLSInitLogging();
      v26 = *v11;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = lCopy;
      _os_log_impl(&dword_23A714000, v26, OS_LOG_TYPE_INFO, "Could not generate a PFVideoComplement from the given url: %@ #PreviewItem", buf, 0xCu);
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLLivePhotoItemTransformer" code:0 userInfo:0];
    v16 = 0;
    v19 = 0;
    v28 = 0;
  }

  v29 = *v11;
  if (!*v11)
  {
    QLSInitLogging();
    v29 = *v11;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v38 = lCopy;
    v39 = 2112;
    v40 = v27;
    _os_log_impl(&dword_23A714000, v29, OS_LOG_TYPE_ERROR, "Error creating PHLivePhoto for url(%@) error (%@) #PreviewItem", buf, 0x16u);
  }

  if (error)
  {
    v30 = v27;
    v31 = 0;
    *error = v27;
  }

  else
  {
    v31 = 0;
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];

  return v31;
}

@end