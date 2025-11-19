@interface AEAnnotationActivityItemProviderSource
+ (id)activityItemProviderSourceWithAnnotations:(id)a3 propertySource:(id)a4;
+ (id)truncatedAnnotationSelectedText:(id)a3;
- (AEAnnotationActivityItemProviderSource)initWithAnnotations:(id)a3 propertySource:(id)a4;
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (id)_generateLinkMetadata;
- (id)chapterTitleForAnnotation:(id)a3;
- (id)copyrightCitation;
- (id)text;
- (void)dealloc;
@end

@implementation AEAnnotationActivityItemProviderSource

+ (id)truncatedAnnotationSelectedText:(id)a3
{
  v4 = [a3 annotationSelectedText];
  v10 = 0;
  [v4 tokenCountWithEnumerationOptions:3 maxTokenCount:objc_msgSend(a1 outLimitLength:{"citationWordCountLimit"), &v10}];
  v5 = v10;
  v6 = IMCommonCoreBundle();
  v7 = [v6 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v8 = [v4 stringByTruncatingToLength:v5 options:3 truncationString:v7];

  return v8;
}

+ (id)activityItemProviderSourceWithAnnotations:(id)a3 propertySource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAnnotations:v7 propertySource:v6];

  return v8;
}

- (AEAnnotationActivityItemProviderSource)initWithAnnotations:(id)a3 propertySource:(id)a4
{
  v7 = a3;
  v8 = [(AEAssetActivityItemProviderSource *)self initWithPropertySource:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_annotations, a3);
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_paginationDataSource, 0);
  v3.receiver = self;
  v3.super_class = AEAnnotationActivityItemProviderSource;
  [(AEAnnotationActivityItemProviderSource *)&v3 dealloc];
}

- (id)copyrightCitation
{
  v7.receiver = self;
  v7.super_class = AEAnnotationActivityItemProviderSource;
  v2 = [(AEAssetActivityItemProviderSource *)&v7 citation];
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v5 = [v2 stringByAppendingFormat:@"\n%@", v4];

  return v5;
}

- (id)chapterTitleForAnnotation:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 chapterTitle], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(AEAnnotationActivityItemProviderSource *)self paginationDataSource];
    v5 = [v6 chapterTitleForAnnotation:v4];
  }

  return v5;
}

- (id)text
{
  v3 = objc_opt_class();
  v4 = [(AEAnnotationActivityItemProviderSource *)self annotations];
  v5 = [v4 firstObject];
  v6 = [v3 truncatedAnnotationSelectedText:v5];

  return v6;
}

- (id)_generateLinkMetadata
{
  v3 = objc_alloc_init(LPLinkMetadata);
  v4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v5 = [v4 previewAssetCoverItemProvider];

  if (v5)
  {
    v6 = [[LPImage alloc] initWithItemProvider:v5 properties:0 placeholderImage:0];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    v37 = [v36 assetCover];

    if (v37)
    {
      v38 = UIImagePNGRepresentation(v37);
      if (v38)
      {
        v6 = [[LPImage alloc] initWithData:v38 MIMEType:@"image/png"];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
LABEL_3:
      v7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v8 = [v7 isStoreAsset];

      if (v8)
      {
        v9 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v10 = [v9 storeURL];

        [v3 setURL:v10];
        [v3 setOriginalURL:v10];
        v11 = [(AEAnnotationActivityItemProviderSource *)self annotations];
        v12 = [v11 firstObject];

        if (([v12 annotationHasNote] & 1) == 0)
        {
          v13 = [AEAnnotationActivityItemProviderSource truncatedAnnotationSelectedText:v12];
          [v3 setSelectedText:v13];
        }
      }

      v14 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v15 = [v14 title];
      [v3 setTitle:v15];

      v16 = +[BUAccountsProvider sharedProvider];
      v17 = [v16 activeStoreAccount];
      v18 = [v17 ams_storefront];

      v19 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v20 = [v19 assetType];

      if (v20 == 4 || v20 == 1)
      {
        v24 = objc_alloc_init(LPiTunesMediaBookMetadata);
        v25 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v26 = [v25 title];
        [v24 setName:v26];

        v27 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v28 = [v27 author];
        [v24 setAuthor:v28];

        [v24 setArtwork:v6];
        v29 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        LODWORD(v28) = [v29 isStoreAsset];

        if (v28)
        {
          [v24 setStoreFrontIdentifier:v18];
          v30 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
          v31 = [v30 storeID];
          [v24 setStoreIdentifier:v31];
        }

        v32 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v33 = [v32 readingDirection];

        if (v33)
        {
          v34 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
          v35 = [v34 readingDirection];
          [v24 setHasSpineOnRight:{objc_msgSend(v35, "isEqualToString:", @"rtl"}];
        }
      }

      else
      {
        if ((v20 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AEServices/Sharing/Private/AEAnnotationActivityItemProviderSource.m", 170, "[AEAnnotationActivityItemProviderSource _generateLinkMetadata]", "NO", @"Trying to show link preview for unsupported asset type", v21, v22, v23, v48);
          goto LABEL_22;
        }

        v24 = objc_alloc_init(LPFileMetadata);
        v39 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v40 = [v39 title];
        [v24 setName:v40];

        v41 = BCAssetUTIForContentType(v20);
        [v24 setType:v41];

        v42 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        v43 = [v42 bookURL];
        v49 = 0;
        v44 = [v43 bu_fileAllocatedSizeWithError:&v49];
        v45 = v49;

        if (!v45 && v44)
        {
          [v24 setSize:v44];
        }

        [v24 setThumbnail:v6];
      }

      [v3 setSpecialization:v24];

LABEL_22:
      v46 = v3;

      goto LABEL_29;
    }
  }

  v46 = 0;
LABEL_29:

  return v46;
}

- (AEAnnotationPaginationDataSource)paginationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationDataSource);

  return WeakRetained;
}

@end