@interface AEAnnotationActivityItemProviderSource
+ (id)activityItemProviderSourceWithAnnotations:(id)annotations propertySource:(id)source;
+ (id)truncatedAnnotationSelectedText:(id)text;
- (AEAnnotationActivityItemProviderSource)initWithAnnotations:(id)annotations propertySource:(id)source;
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (id)_generateLinkMetadata;
- (id)chapterTitleForAnnotation:(id)annotation;
- (id)copyrightCitation;
- (id)text;
- (void)dealloc;
@end

@implementation AEAnnotationActivityItemProviderSource

+ (id)truncatedAnnotationSelectedText:(id)text
{
  annotationSelectedText = [text annotationSelectedText];
  v10 = 0;
  [annotationSelectedText tokenCountWithEnumerationOptions:3 maxTokenCount:objc_msgSend(self outLimitLength:{"citationWordCountLimit"), &v10}];
  v5 = v10;
  v6 = IMCommonCoreBundle();
  v7 = [v6 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v8 = [annotationSelectedText stringByTruncatingToLength:v5 options:3 truncationString:v7];

  return v8;
}

+ (id)activityItemProviderSourceWithAnnotations:(id)annotations propertySource:(id)source
{
  sourceCopy = source;
  annotationsCopy = annotations;
  v8 = [[self alloc] initWithAnnotations:annotationsCopy propertySource:sourceCopy];

  return v8;
}

- (AEAnnotationActivityItemProviderSource)initWithAnnotations:(id)annotations propertySource:(id)source
{
  annotationsCopy = annotations;
  v8 = [(AEAssetActivityItemProviderSource *)self initWithPropertySource:source];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_annotations, annotations);
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
  citation = [(AEAssetActivityItemProviderSource *)&v7 citation];
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v5 = [citation stringByAppendingFormat:@"\n%@", v4];

  return v5;
}

- (id)chapterTitleForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([annotationCopy chapterTitle], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    paginationDataSource = [(AEAnnotationActivityItemProviderSource *)self paginationDataSource];
    v5 = [paginationDataSource chapterTitleForAnnotation:annotationCopy];
  }

  return v5;
}

- (id)text
{
  v3 = objc_opt_class();
  annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
  firstObject = [annotations firstObject];
  v6 = [v3 truncatedAnnotationSelectedText:firstObject];

  return v6;
}

- (id)_generateLinkMetadata
{
  v3 = objc_alloc_init(LPLinkMetadata);
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  previewAssetCoverItemProvider = [propertyProvider previewAssetCoverItemProvider];

  if (previewAssetCoverItemProvider)
  {
    v6 = [[LPImage alloc] initWithItemProvider:previewAssetCoverItemProvider properties:0 placeholderImage:0];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    assetCover = [propertyProvider2 assetCover];

    if (assetCover)
    {
      v38 = UIImagePNGRepresentation(assetCover);
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
      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      isStoreAsset = [propertyProvider3 isStoreAsset];

      if (isStoreAsset)
      {
        propertyProvider4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        storeURL = [propertyProvider4 storeURL];

        [v3 setURL:storeURL];
        [v3 setOriginalURL:storeURL];
        annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
        firstObject = [annotations firstObject];

        if (([firstObject annotationHasNote] & 1) == 0)
        {
          v13 = [AEAnnotationActivityItemProviderSource truncatedAnnotationSelectedText:firstObject];
          [v3 setSelectedText:v13];
        }
      }

      propertyProvider5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider5 title];
      [v3 setTitle:title];

      v16 = +[BUAccountsProvider sharedProvider];
      activeStoreAccount = [v16 activeStoreAccount];
      ams_storefront = [activeStoreAccount ams_storefront];

      propertyProvider6 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      assetType = [propertyProvider6 assetType];

      if (assetType == 4 || assetType == 1)
      {
        v24 = objc_alloc_init(LPiTunesMediaBookMetadata);
        propertyProvider7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        title2 = [propertyProvider7 title];
        [v24 setName:title2];

        propertyProvider8 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        author = [propertyProvider8 author];
        [v24 setAuthor:author];

        [v24 setArtwork:v6];
        propertyProvider9 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        LODWORD(author) = [propertyProvider9 isStoreAsset];

        if (author)
        {
          [v24 setStoreFrontIdentifier:ams_storefront];
          propertyProvider10 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
          storeID = [propertyProvider10 storeID];
          [v24 setStoreIdentifier:storeID];
        }

        propertyProvider11 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        readingDirection = [propertyProvider11 readingDirection];

        if (readingDirection)
        {
          propertyProvider12 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
          readingDirection2 = [propertyProvider12 readingDirection];
          [v24 setHasSpineOnRight:{objc_msgSend(readingDirection2, "isEqualToString:", @"rtl"}];
        }
      }

      else
      {
        if ((assetType & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AEServices/Sharing/Private/AEAnnotationActivityItemProviderSource.m", 170, "[AEAnnotationActivityItemProviderSource _generateLinkMetadata]", "NO", @"Trying to show link preview for unsupported asset type", v21, v22, v23, v48);
          goto LABEL_22;
        }

        v24 = objc_alloc_init(LPFileMetadata);
        propertyProvider13 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        title3 = [propertyProvider13 title];
        [v24 setName:title3];

        v41 = BCAssetUTIForContentType(assetType);
        [v24 setType:v41];

        propertyProvider14 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
        bookURL = [propertyProvider14 bookURL];
        v49 = 0;
        v44 = [bookURL bu_fileAllocatedSizeWithError:&v49];
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