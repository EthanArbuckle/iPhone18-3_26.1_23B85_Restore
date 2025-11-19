@interface AEAssetLinkPresentationActivityItemProvider
- (AEAssetLinkPresentationActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4;
- (id)_generateLinkMetaData;
@end

@implementation AEAssetLinkPresentationActivityItemProvider

- (AEAssetLinkPresentationActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4
{
  v5 = a4;
  v10.receiver = self;
  v10.super_class = AEAssetLinkPresentationActivityItemProvider;
  v6 = [(AEAssetLinkPresentationActivityItemProvider *)&v10 init];
  if (v6)
  {
    v7 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:v5];
    propertyProvider = v6->_propertyProvider;
    v6->_propertyProvider = v7;
  }

  return v6;
}

- (id)_generateLinkMetaData
{
  v3 = objc_alloc_init(LPLinkMetadata);
  v4 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  v5 = [v4 storeURL];

  [v3 setURL:v5];
  [v3 setOriginalURL:v5];
  v6 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  v7 = [v6 previewAssetCoverItemProvider];

  if (v7)
  {
    v8 = [[LPImage alloc] initWithItemProvider:v7 properties:0 placeholderImage:0];
    if (!v8)
    {
      goto LABEL_28;
    }

LABEL_11:
    v12 = +[BUAccountsProvider sharedProvider];
    v13 = [v12 activeStoreAccount];
    v14 = [v13 ams_storefront];

    v15 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    v16 = [v15 assetType];

    if (v16 != 1 && v16 != 4)
    {
      if (v16 == 6)
      {
        v20 = objc_alloc_init(LPiTunesMediaAudioBookMetadata);
        v21 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        v22 = [v21 title];
        [v20 setName:v22];

        v23 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        v24 = [v23 author];
        [v20 setAuthor:v24];

        [v20 setArtwork:v8];
        v25 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        LODWORD(v24) = [v25 isStoreAsset];

        if (v24)
        {
          [v20 setStoreFrontIdentifier:v14];
          v26 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
          v27 = [v26 storeID];
          [v20 setStoreIdentifier:v27];
LABEL_20:
        }
      }

      else
      {
        if ((v16 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AEServices/Sharing/Private/AEAssetActivityItemProviderSource.m", 984, "[AEAssetLinkPresentationActivityItemProvider _generateLinkMetaData]", "NO", @"Trying to show link preview for unsupported asset type", v17, v18, v19, v45);
          goto LABEL_27;
        }

        v20 = objc_alloc_init(LPFileMetadata);
        v37 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        v38 = [v37 title];
        [v20 setName:v38];

        v39 = BCAssetUTIForContentType(v16);
        [v20 setType:v39];

        v40 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
        v41 = [v40 bookURL];
        v46 = 0;
        v42 = [v41 bu_fileAllocatedSizeWithError:&v46];
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
    v28 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    v29 = [v28 title];
    [v20 setName:v29];

    v30 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    v31 = [v30 author];
    [v20 setAuthor:v31];

    [v20 setArtwork:v8];
    v32 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    LODWORD(v31) = [v32 isStoreAsset];

    if (v31)
    {
      [v20 setStoreFrontIdentifier:v14];
      v33 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
      v34 = [v33 storeID];
      [v20 setStoreIdentifier:v34];
    }

    v35 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    v36 = [v35 readingDirection];

    if (!v36)
    {
      goto LABEL_26;
    }

    v26 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
    v27 = [v26 readingDirection];
    [v20 setHasSpineOnRight:{objc_msgSend(v27, "isEqualToString:", @"rtl"}];
    goto LABEL_20;
  }

  v9 = [(AEAssetLinkPresentationActivityItemProvider *)self propertyProvider];
  v10 = [v9 assetCover];

  if (v10)
  {
    v11 = UIImagePNGRepresentation(v10);
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