@interface AEAssetLinkPresentationActivityItemProvider
- (AEAssetLinkPresentationActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source;
- (id)_generateLinkMetaData;
@end

@implementation AEAssetLinkPresentationActivityItemProvider

- (AEAssetLinkPresentationActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = AEAssetLinkPresentationActivityItemProvider;
  v6 = [(AEAssetLinkPresentationActivityItemProvider *)&v10 init];
  if (v6)
  {
    v7 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];
    propertyProvider = v6->_propertyProvider;
    v6->_propertyProvider = v7;
  }

  return v6;
}

- (id)_generateLinkMetaData
{
  v3 = objc_alloc_init(LPLinkMetadata);
  propertyProvider = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  storeURL = [propertyProvider storeURL];

  [v3 setURL:storeURL];
  [v3 setOriginalURL:storeURL];
  propertyProvider2 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  previewAssetCoverItemProvider = [propertyProvider2 previewAssetCoverItemProvider];

  if (previewAssetCoverItemProvider)
  {
    v8 = [[LPImage alloc] initWithItemProvider:previewAssetCoverItemProvider properties:0 placeholderImage:0];
    if (!v8)
    {
      goto LABEL_28;
    }

LABEL_11:
    v12 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v12 activeStoreAccount];
    ams_storefront = [activeStoreAccount ams_storefront];

    propertyProvider3 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    assetType = [propertyProvider3 assetType];

    if (assetType != 1 && assetType != 4)
    {
      if (assetType == 6)
      {
        v20 = objc_alloc_init(LPiTunesMediaAudioBookMetadata);
        propertyProvider4 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        title = [propertyProvider4 title];
        [v20 setName:title];

        propertyProvider5 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        author = [propertyProvider5 author];
        [v20 setAuthor:author];

        [v20 setArtwork:v8];
        propertyProvider6 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        LODWORD(author) = [propertyProvider6 isStoreAsset];

        if (author)
        {
          [v20 setStoreFrontIdentifier:ams_storefront];
          propertyProvider7 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
          storeID = [propertyProvider7 storeID];
          [v20 setStoreIdentifier:storeID];
LABEL_20:
        }
      }

      else
      {
        if ((assetType & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AEServices/Sharing/Private/AEAssetActivityItemProviderSource.m", 984, "[AEAssetLinkPresentationActivityItemProvider _generateLinkMetaData]", "NO", @"Trying to show link preview for unsupported asset type", v17, v18, v19, v45);
          goto LABEL_27;
        }

        v20 = objc_alloc_init(LPFileMetadata);
        propertyProvider8 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        title2 = [propertyProvider8 title];
        [v20 setName:title2];

        v39 = BCAssetUTIForContentType(assetType);
        [v20 setType:v39];

        propertyProvider9 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        bookURL = [propertyProvider9 bookURL];
        v46 = 0;
        v42 = [bookURL bu_fileAllocatedSizeWithError:&v46];
        v43 = v46;

        if (!v43 && v42)
        {
          [v20 setSize:v42];
        }

        [v20 setThumbnail:v8];
      }

LABEL_26:
      [v3 setSpecialization:v20];

LABEL_27:
      goto LABEL_28;
    }

    v20 = objc_alloc_init(LPiTunesMediaBookMetadata);
    propertyProvider10 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    title3 = [propertyProvider10 title];
    [v20 setName:title3];

    propertyProvider11 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    author2 = [propertyProvider11 author];
    [v20 setAuthor:author2];

    [v20 setArtwork:v8];
    propertyProvider12 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    LODWORD(author2) = [propertyProvider12 isStoreAsset];

    if (author2)
    {
      [v20 setStoreFrontIdentifier:ams_storefront];
      propertyProvider13 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
      storeID2 = [propertyProvider13 storeID];
      [v20 setStoreIdentifier:storeID2];
    }

    propertyProvider14 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    readingDirection = [propertyProvider14 readingDirection];

    if (!readingDirection)
    {
      goto LABEL_26;
    }

    propertyProvider7 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    storeID = [propertyProvider7 readingDirection];
    [v20 setHasSpineOnRight:{objc_msgSend(storeID, "isEqualToString:", @"rtl"}];
    goto LABEL_20;
  }

  propertyProvider15 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  assetCover = [propertyProvider15 assetCover];

  if (assetCover)
  {
    v11 = UIImagePNGRepresentation(assetCover);
    if (v11)
    {
      v8 = [[LPImage alloc] initWithData:v11 MIMEType:@"image/png"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_28:

  return v3;
}

@end