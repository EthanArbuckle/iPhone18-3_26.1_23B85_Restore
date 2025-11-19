@interface LPLinkMetadata
+ (LPLinkMetadata)metadataWithDataRepresentation:(id)a3;
+ (LPLinkMetadata)metadataWithDataRepresentation:(id)a3 decodingType:(unint64_t)a4;
+ (LPLinkMetadata)metadataWithDataRepresentationForLocalUseOnly:(id)a3;
- (BOOL)_hasAnyAsynchronousFields;
- (BOOL)_hasMedia;
- (BOOL)_isCurrentlyLoading;
- (BOOL)_isCurrentlyLoadingOrIncomplete;
- (BOOL)_isEqualIgnoringURLs:(id)a3;
- (BOOL)_loadAsynchronousFieldsWithLoadGroup:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGroupCollaboration;
- (LPLinkMetadata)init;
- (LPLinkMetadata)initWithCoder:(id)a3;
- (NSString)originalTitle;
- (NSString)title;
- (NSURL)remoteVideoURL;
- (id)_createAsynchronousLoadDeferralToken;
- (id)_initWithConversationActivity:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)_initWithSynapseContentItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentationWithEncodingType:(unint64_t)a3 options:(unint64_t)a4;
- (id)variants;
- (unint64_t)_encodedSize;
- (void)_addFinishedDeferringAsynchronousLoadHandler:(id)a3;
- (void)_copyPropertiesFrom:(id)a3 onlyUpgradeFields:(BOOL)a4;
- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)a3;
- (void)_decodeAllImagesWithMaximumSize:(CGSize)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)_enumerateSubstitutableFields:(id)a3;
- (void)_invokePendingAsynchronousLoadUpdateHandlers;
- (void)_loadAsynchronousFieldsWithUpdateHandler:(id)a3;
- (void)_populateMetadataForBackwardCompatibility;
- (void)_reduceSizeByDroppingResourcesIfNeeded;
- (void)dropAuxiliaryMedia;
- (void)encodeWithCoder:(id)a3;
- (void)setIconProvider:(NSItemProvider *)iconProvider;
- (void)setImageProvider:(NSItemProvider *)imageProvider;
- (void)setRemoteVideoURL:(NSURL *)remoteVideoURL;
- (void)setTitle:(NSString *)title;
- (void)setVideoProvider:(NSItemProvider *)videoProvider;
@end

@implementation LPLinkMetadata

- (LPLinkMetadata)init
{
  v6.receiver = self;
  v6.super_class = LPLinkMetadata;
  v2 = [(LPLinkMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)a3
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v90 = v4;
  v5 = [(LPLinkMetadata *)self init];
  v91 = v5;
  if (!v5)
  {
    goto LABEL_79;
  }

  v6 = URLForKey(v4, @"LPMetadataURL");
  URL = v5->_URL;
  v5->_URL = v6;

  v8 = stringForKey(v4, @"LPMetadataTitle");
  title = v5->_title;
  v5->_title = v8;

  v10 = stringForKey(v4, @"LPMetadataDescription");
  summary = v5->_summary;
  v5->_summary = v10;

  v12 = stringForKey(v4, @"LPMetadataSelectedText");
  selectedText = v5->_selectedText;
  v5->_selectedText = v12;

  v14 = stringForKey(v4, @"LPMetadataSiteName");
  siteName = v5->_siteName;
  v5->_siteName = v14;

  v16 = stringForKey(v4, @"LPMetadataItemType");
  itemType = v5->_itemType;
  v5->_itemType = v16;

  v18 = URLForKey(v4, @"LPMetadataRelatedURL");
  relatedURL = v5->_relatedURL;
  v5->_relatedURL = v18;

  v20 = stringForKey(v4, @"LPMetadataCreator");
  creator = v5->_creator;
  v5->_creator = v20;

  v22 = stringForKey(v4, @"LPMetadataCreatorFacebookProfile");
  creatorFacebookProfile = v5->_creatorFacebookProfile;
  v5->_creatorFacebookProfile = v22;

  v24 = stringForKey(v4, @"LPMetadataCreatorTwitterUsername");
  creatorTwitterUsername = v5->_creatorTwitterUsername;
  v5->_creatorTwitterUsername = v24;

  v26 = stringForKey(v4, @"LPMetadataTwitterCard");
  twitterCard = v5->_twitterCard;
  v5->_twitterCard = v26;

  v28 = numberForKey(v4, @"LPMetadataUsesActivityPub");
  v5->_usesActivityPub = [v28 BOOLValue];

  v29 = stringForKey(v4, @"LPMetadataAppleContentID");
  appleContentID = v5->_appleContentID;
  v5->_appleContentID = v29;

  v31 = stringForKey(v4, @"LPMetadataAppleDescription");
  appleSummary = v5->_appleSummary;
  v5->_appleSummary = v31;

  v89 = arrayOfStringsForKey(v4, @"LPMetadataIcons");
  v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v89;
  v33 = [obj countByEnumeratingWithState:&v125 objects:v137 count:16];
  if (v33)
  {
    v34 = *v126;
    do
    {
      v35 = 0;
      do
      {
        if (*v126 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = URLFromStringIfHTTPFamily(*(*(&v125 + 1) + 8 * v35));
        if (v36)
        {
          v37 = [[LPIconMetadata alloc] _initWithURL:v36];
          if (v37)
          {
            [v92 addObject:v37];
          }
        }

        ++v35;
      }

      while (v33 != v35);
      v33 = [obj countByEnumeratingWithState:&v125 objects:v137 count:16];
    }

    while (v33);
  }

  objc_storeStrong(&v91->_icons, v92);
  v88 = arrayOfStringsForKey(v90, @"LPMetadataContentImages");
  v100 = [MEMORY[0x1E695DF70] array];
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v95 = v88;
  v38 = [v95 countByEnumeratingWithState:&v121 objects:v136 count:16];
  if (v38)
  {
    v39 = *v122;
    do
    {
      v40 = 0;
      do
      {
        if (*v122 != v39)
        {
          objc_enumerationMutation(v95);
        }

        v41 = *(*(&v121 + 1) + 8 * v40);
        v42 = [LPImageMetadata alloc];
        v134 = @"LPMetadataImageURL";
        v135 = v41;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v44 = [(LPImageMetadata *)v42 _initWithDictionary:v43];

        if (v44)
        {
          [v100 addObject:v44];
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = [v95 countByEnumeratingWithState:&v121 objects:v136 count:16];
    }

    while (v38);
  }

  objc_storeStrong(&v91->_contentImagesMetadata, v100);
  v87 = arrayOfDictionariesForKey(v90, @"LPMetadataImages");
  v99 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v94 = v87;
  v45 = [v94 countByEnumeratingWithState:&v117 objects:v133 count:16];
  if (v45)
  {
    v46 = *v118;
    do
    {
      v47 = 0;
      do
      {
        if (*v118 != v46)
        {
          objc_enumerationMutation(v94);
        }

        v48 = [[LPImageMetadata alloc] _initWithDictionary:*(*(&v117 + 1) + 8 * v47)];
        if (v48)
        {
          [v99 addObject:v48];
        }

        ++v47;
      }

      while (v45 != v47);
      v45 = [v94 countByEnumeratingWithState:&v117 objects:v133 count:16];
    }

    while (v45);
  }

  objc_storeStrong(&v91->_images, v99);
  v86 = arrayOfDictionariesForKey(v90, @"LPMetadataVideos");
  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = v86;
  v49 = [v93 countByEnumeratingWithState:&v113 objects:v132 count:16];
  if (v49)
  {
    v50 = *v114;
    do
    {
      v51 = 0;
      do
      {
        if (*v114 != v50)
        {
          objc_enumerationMutation(v93);
        }

        v52 = [[LPVideoMetadata alloc] _initWithDictionary:*(*(&v113 + 1) + 8 * v51)];
        if (v52)
        {
          [v98 addObject:v52];
        }

        ++v51;
      }

      while (v49 != v51);
      v49 = [v93 countByEnumeratingWithState:&v113 objects:v132 count:16];
    }

    while (v49);
  }

  objc_storeStrong(&v91->_videos, v98);
  v85 = arrayOfDictionariesForKey(v90, @"LPMetadataStreamingVideos");
  v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v53 = v85;
  v54 = [v53 countByEnumeratingWithState:&v109 objects:v131 count:16];
  if (v54)
  {
    v55 = *v110;
    do
    {
      v56 = 0;
      do
      {
        if (*v110 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = [[LPVideoMetadata alloc] _initWithDictionary:*(*(&v109 + 1) + 8 * v56)];
        if (v57)
        {
          [v97 addObject:v57];
        }

        ++v56;
      }

      while (v54 != v56);
      v54 = [v53 countByEnumeratingWithState:&v109 objects:v131 count:16];
    }

    while (v54);
  }

  objc_storeStrong(&v91->_streamingVideos, v97);
  v84 = arrayOfDictionariesForKey(v90, @"LPMetadataAudios");
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v59 = v84;
  v60 = [v59 countByEnumeratingWithState:&v105 objects:v130 count:16];
  if (v60)
  {
    v61 = *v106;
    do
    {
      v62 = 0;
      do
      {
        if (*v106 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = [[LPAudioMetadata alloc] _initWithDictionary:*(*(&v105 + 1) + 8 * v62)];
        if (v63)
        {
          [v58 addObject:v63];
        }

        ++v62;
      }

      while (v60 != v62);
      v60 = [v59 countByEnumeratingWithState:&v105 objects:v130 count:16];
    }

    while (v60);
  }

  objc_storeStrong(&v91->_audios, v58);
  v83 = arrayOfDictionariesForKey(v90, @"LPMetadataARAssets");
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v65 = v83;
  v66 = [v65 countByEnumeratingWithState:&v101 objects:v129 count:{16, v83, v84, v85, v86, v87}];
  if (v66)
  {
    v67 = *v102;
    do
    {
      v68 = 0;
      do
      {
        if (*v102 != v67)
        {
          objc_enumerationMutation(v65);
        }

        v69 = [[LPARAssetMetadata alloc] _initWithDictionary:*(*(&v101 + 1) + 8 * v68)];
        if (v69)
        {
          [v64 addObject:v69];
        }

        ++v68;
      }

      while (v66 != v68);
      v66 = [v65 countByEnumeratingWithState:&v101 objects:v129 count:16];
    }

    while (v66);
  }

  objc_storeStrong(&v91->_arAssets, v64);
  v70 = v90;
  v71 = [v90 objectForKey:@"LPMetadataAssociatedApplication"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v71 count])
  {
    v74 = v71;
    v71 = 0;
    goto LABEL_72;
  }

  if (v71)
  {
    v72 = objc_alloc_init(LPAssociatedApplicationMetadata);
    associatedApplication = v91->_associatedApplication;
    v91->_associatedApplication = v72;

    v74 = stringForKey(v71, @"app-clip-bundle-id");
    [(LPAssociatedApplicationMetadata *)v91->_associatedApplication setBundleIdentifier:v74];
LABEL_72:

    v70 = v90;
  }

  v75 = stringForKey(v70, @"LPMetadataProduct");
  v76 = arrayOfDictionariesForKey(v70, @"LPMetadataProductPrices");
  v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v78 = v77;
  if (v75)
  {
    [v77 setObject:v75 forKeyedSubscript:@"LPMetadataProductPluralTitle"];
  }

  if (v76 && [v76 count])
  {
    [v78 setObject:v76 forKeyedSubscript:@"LPMetadataProductPrices"];
  }

  v79 = [[LPProductMetadata alloc] _initWithDictionary:v78];
  product = v91->_product;
  v91->_product = v79;

  v81 = v91;
  v4 = v90;
LABEL_79:

  return v91;
}

- (LPLinkMetadata)initWithCoder:(id)a3
{
  v116[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v104.receiver = self;
  v104.super_class = LPLinkMetadata;
  v5 = [(LPLinkMetadata *)&v104 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v5->_version = [v4 decodeInt32ForKey:@"version"];
  if ([v4 decodeBoolForKey:@"isEncodedForLocalUse"] && objc_msgSend(v4, "_lp_coderType") != 1)
  {
    v98 = MEMORY[0x1E696ABC0];
    v115 = *MEMORY[0x1E696A278];
    v116[0] = @"Attemping to decode LPLinkMetadata intended for local only use.";
    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
    v100 = [v98 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v99];
    [v4 failWithError:v100];

LABEL_29:
    v97 = 0;
    goto LABEL_30;
  }

  v5->_incomplete = [v4 decodeBoolForKey:@"isIncomplete"];
  v6 = decodeURLForKey(v4, @"originalURL");
  originalURL = v5->_originalURL;
  v5->_originalURL = v6;

  v8 = decodeURLForKey(v4, @"URL");
  URL = v5->_URL;
  v5->_URL = v8;

  v10 = decodeStringForKey(v4, @"title");
  title = v5->_title;
  v5->_title = v10;

  v12 = decodeStringForKey(v4, @"originalTitle");
  originalTitle = v5->_originalTitle;
  v5->_originalTitle = v12;

  v14 = decodeStringForKey(v4, @"summary");
  summary = v5->_summary;
  v5->_summary = v14;

  v16 = decodeStringForKey(v4, @"selection");
  selectedText = v5->_selectedText;
  v5->_selectedText = v16;

  v18 = decodeStringForKey(v4, @"siteName");
  siteName = v5->_siteName;
  v5->_siteName = v18;

  v20 = decodeStringForKey(v4, @"itemType");
  itemType = v5->_itemType;
  v5->_itemType = v20;

  v22 = decodeURLForKey(v4, @"relatedURL");
  relatedURL = v5->_relatedURL;
  v5->_relatedURL = v22;

  v24 = decodeStringForKey(v4, @"creator");
  creator = v5->_creator;
  v5->_creator = v24;

  v26 = decodeStringForKey(v4, @"creatorFacebookProfile");
  creatorFacebookProfile = v5->_creatorFacebookProfile;
  v5->_creatorFacebookProfile = v26;

  v28 = decodeStringForKey(v4, @"creatorTwitterUsername");
  creatorTwitterUsername = v5->_creatorTwitterUsername;
  v5->_creatorTwitterUsername = v28;

  v30 = decodeStringForKey(v4, @"twitterCard");
  twitterCard = v5->_twitterCard;
  v5->_twitterCard = v30;

  v5->_usesActivityPub = [v4 decodeBoolForKey:@"usesActivityPub"];
  v32 = decodeStringForKey(v4, @"appleContentID");
  appleContentID = v5->_appleContentID;
  v5->_appleContentID = v32;

  v34 = decodeStringForKey(v4, @"appleSummary");
  appleSummary = v5->_appleSummary;
  v5->_appleSummary = v34;

  v36 = [v4 _lp_strictlyDecodeColorForKey:@"themeColor"];
  themeColor = v5->_themeColor;
  v5->_themeColor = v36;

  v38 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
  [(LPLinkMetadata *)v5 setIcon:v38];

  v39 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"iconMetadata"];
  iconMetadata = v5->_iconMetadata;
  v5->_iconMetadata = v39;

  v41 = [v4 _lp_strictlyDecodeLPImageForKey:@"image"];
  [(LPLinkMetadata *)v5 setImage:v41];

  v42 = [v4 _lp_strictlyDecodeArrayOfLPImagesForKey:@"alternateImages"];
  [(LPLinkMetadata *)v5 setAlternateImages:v42];

  v43 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"imageMetadata"];
  imageMetadata = v5->_imageMetadata;
  v5->_imageMetadata = v43;

  v45 = [v4 _lp_strictlyDecodeArrayOfLPImagesForKey:@"contentImages"];
  contentImages = v5->_contentImages;
  v5->_contentImages = v45;

  v47 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contentImagesMetadata"];
  contentImagesMetadata = v5->_contentImagesMetadata;
  v5->_contentImagesMetadata = v47;

  v49 = [v4 _lp_strictlyDecodeLPVideoForKey:@"video"];
  [(LPLinkMetadata *)v5 setVideo:v49];

  v50 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"videoMetadata"];
  videoMetadata = v5->_videoMetadata;
  v5->_videoMetadata = v50;

  v52 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audio"];
  [(LPLinkMetadata *)v5 setAudio:v52];

  v53 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audioMetadata"];
  audioMetadata = v5->_audioMetadata;
  v5->_audioMetadata = v53;

  v55 = [v4 _lp_strictlyDecodeLPARAssetForKey:@"arAsset"];
  [(LPLinkMetadata *)v5 setArAsset:v55];

  v56 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"arAssetMetadata"];
  arAssetMetadata = v5->_arAssetMetadata;
  v5->_arAssetMetadata = v56;

  v58 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"icons"];
  icons = v5->_icons;
  v5->_icons = v58;

  v60 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"images"];
  images = v5->_images;
  v5->_images = v60;

  v62 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"videos"];
  videos = v5->_videos;
  v5->_videos = v62;

  v64 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"streamingVideos"];
  streamingVideos = v5->_streamingVideos;
  v5->_streamingVideos = v64;

  v66 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"audios"];
  audios = v5->_audios;
  v5->_audios = v66;

  v68 = [v4 _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arAssets"];
  arAssets = v5->_arAssets;
  v5->_arAssets = v68;

  v70 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"associatedApplication"];
  associatedApplication = v5->_associatedApplication;
  v5->_associatedApplication = v70;

  v72 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"sourceApplication"];
  sourceApplication = v5->_sourceApplication;
  v5->_sourceApplication = v72;

  v74 = [v4 decodeIntegerForKey:@"collaborationType"];
  if (v74 <= 2)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  v5->_collaborationType = v75;
  v76 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"product"];
  product = v5->_product;
  v5->_product = v76;

  v78 = [v4 error];

  if (v78)
  {
    goto LABEL_29;
  }

  if ([v4 containsValueForKey:@"conversationActivity"])
  {
    v106 = 0;
    v107 = &v106;
    v108 = 0x2050000000;
    v79 = getTUConversationActivityClass_softClass;
    v109 = getTUConversationActivityClass_softClass;
    if (!getTUConversationActivityClass_softClass)
    {
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __getTUConversationActivityClass_block_invoke;
      v105[3] = &unk_1E7A35518;
      v105[4] = &v106;
      __getTUConversationActivityClass_block_invoke(v105);
      v79 = *(v107 + 24);
    }

    v80 = v79;
    _Block_object_dispose(&v106, 8);
    v81 = [v4 _lp_strictlyDecodeObjectOfClass:v79 forKey:@"conversationActivity"];
    conversationActivity = v5->_conversationActivity;
    v5->_conversationActivity = v81;
  }

  if ([v4 containsValueForKey:@"collaborationMetadata"])
  {
    v111 = 0;
    v112 = &v111;
    v113 = 0x2050000000;
    v83 = get_SWCollaborationMetadataClass_softClass;
    v114 = get_SWCollaborationMetadataClass_softClass;
    if (!get_SWCollaborationMetadataClass_softClass)
    {
      v106 = MEMORY[0x1E69E9820];
      v107 = 3221225472;
      v108 = __get_SWCollaborationMetadataClass_block_invoke;
      v109 = &unk_1E7A35518;
      v110 = &v111;
      __get_SWCollaborationMetadataClass_block_invoke(&v106);
      v83 = v112[3];
    }

    v84 = v83;
    _Block_object_dispose(&v111, 8);
    v85 = [v4 _lp_strictlyDecodeObjectOfClass:v83 forKey:@"collaborationMetadata"];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v85;
  }

  if ([v4 containsValueForKey:@"specialization2"])
  {
    v87 = decodableSpecializationClasses([v4 _lp_coderType]);
    v103 = 0;
    v88 = [v4 _lp_strictlyDecodeTopLevelObjectOfClasses:v87 forKey:@"specialization2" error:&v103];
    v89 = v103;
    specialization = v5->_specialization;
    v5->_specialization = v88;

    if (v89)
    {
      v91 = LPLogChannelSerialization();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        [LPLinkMetadata initWithCoder:];
      }
    }
  }

  if (!v5->_specialization && [v4 containsValueForKey:@"specialization"])
  {
    v92 = decodableSpecializationClasses([v4 _lp_coderType]);
    v102 = 0;
    v93 = [v4 _lp_strictlyDecodeTopLevelObjectOfClasses:v92 forKey:@"specialization" error:&v102];
    v94 = v102;
    v95 = v5->_specialization;
    v5->_specialization = v93;

    if (v94)
    {
      v96 = LPLogChannelSerialization();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        [LPLinkMetadata initWithCoder:];
      }
    }
  }

  v97 = v5;
LABEL_30:

  return v97;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPLinkMetadata allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [(LPLinkMetadata *)v4 _copyPropertiesFrom:self onlyUpgradeFields:0];
    v6 = v5;
  }

  return v5;
}

- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)a3
{
  v156 = a3;
  self->_version = [v156 version];
  v4 = [(LPLinkMetadata *)self originalURL];
  if (!v4 || ([v156 originalURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v156 originalURL];
    [(LPLinkMetadata *)self setOriginalURL:v6];
  }

  v7 = [(LPLinkMetadata *)self URL];
  if (!v7 || ([v156 URL], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v156 URL];
    [(LPLinkMetadata *)self setURL:v9];
  }

  v10 = [(LPLinkMetadata *)self title];
  if (!v10 || ([v156 title], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v156 title];
    v13 = [v12 copy];
    [(LPLinkMetadata *)self setTitle:v13];
  }

  v14 = [(LPLinkMetadata *)self originalTitle];
  if (!v14 || ([v156 originalTitle], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = [v156 originalTitle];
    v17 = [v16 copy];
    [(LPLinkMetadata *)self setOriginalTitle:v17];
  }

  v18 = [(LPLinkMetadata *)self summary];
  if (!v18 || ([v156 summary], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    v20 = [v156 summary];
    v21 = [v20 copy];
    [(LPLinkMetadata *)self setSummary:v21];
  }

  v22 = [(LPLinkMetadata *)self selectedText];
  if (!v22 || ([v156 selectedText], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
  {
    v24 = [v156 selectedText];
    v25 = [v24 copy];
    [(LPLinkMetadata *)self setSelectedText:v25];
  }

  v26 = [(LPLinkMetadata *)self siteName];
  if (!v26 || ([v156 siteName], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v27))
  {
    v28 = [v156 siteName];
    v29 = [v28 copy];
    [(LPLinkMetadata *)self setSiteName:v29];
  }

  v30 = [(LPLinkMetadata *)self itemType];
  if (!v30 || ([v156 itemType], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
  {
    v32 = [v156 itemType];
    v33 = [v32 copy];
    [(LPLinkMetadata *)self setItemType:v33];
  }

  v34 = [(LPLinkMetadata *)self relatedURL];
  if (!v34 || ([v156 relatedURL], v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
  {
    v36 = [v156 relatedURL];
    [(LPLinkMetadata *)self setRelatedURL:v36];
  }

  v37 = [(LPLinkMetadata *)self creator];
  if (!v37 || ([v156 creator], v38 = objc_claimAutoreleasedReturnValue(), v38, v37, v38))
  {
    v39 = [v156 creator];
    v40 = [v39 copy];
    [(LPLinkMetadata *)self setCreator:v40];
  }

  v41 = [(LPLinkMetadata *)self creatorFacebookProfile];
  if (!v41 || ([v156 creatorFacebookProfile], v42 = objc_claimAutoreleasedReturnValue(), v42, v41, v42))
  {
    v43 = [v156 creatorFacebookProfile];
    v44 = [v43 copy];
    [(LPLinkMetadata *)self setCreatorFacebookProfile:v44];
  }

  v45 = [(LPLinkMetadata *)self creatorTwitterUsername];
  if (!v45 || ([v156 creatorTwitterUsername], v46 = objc_claimAutoreleasedReturnValue(), v46, v45, v46))
  {
    v47 = [v156 creatorTwitterUsername];
    v48 = [v47 copy];
    [(LPLinkMetadata *)self setCreatorTwitterUsername:v48];
  }

  v49 = [(LPLinkMetadata *)self twitterCard];
  if (!v49 || ([v156 twitterCard], v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50))
  {
    v51 = [v156 twitterCard];
    v52 = [v51 copy];
    [(LPLinkMetadata *)self setTwitterCard:v52];
  }

  if ([(LPLinkMetadata *)self usesActivityPub])
  {
    v53 = 1;
  }

  else
  {
    v53 = [v156 usesActivityPub];
  }

  [(LPLinkMetadata *)self setUsesActivityPub:v53];
  v54 = [(LPLinkMetadata *)self appleContentID];
  if (!v54 || ([v156 appleContentID], v55 = objc_claimAutoreleasedReturnValue(), v55, v54, v55))
  {
    v56 = [v156 appleContentID];
    v57 = [v56 copy];
    [(LPLinkMetadata *)self setAppleContentID:v57];
  }

  v58 = [(LPLinkMetadata *)self appleSummary];
  if (!v58 || ([v156 appleSummary], v59 = objc_claimAutoreleasedReturnValue(), v59, v58, v59))
  {
    v60 = [v156 appleSummary];
    v61 = [v60 copy];
    [(LPLinkMetadata *)self setAppleSummary:v61];
  }

  v62 = [(LPLinkMetadata *)self themeColor];
  if (!v62 || ([v156 themeColor], v63 = objc_claimAutoreleasedReturnValue(), v63, v62, v63))
  {
    v64 = [v156 themeColor];
    v65 = [v64 copy];
    [(LPLinkMetadata *)self setThemeColor:v65];
  }

  v66 = [(LPLinkMetadata *)self icon];
  if (!v66 || ([v156 icon], v67 = objc_claimAutoreleasedReturnValue(), v67, v66, v67))
  {
    v68 = [v156 icon];
    [(LPLinkMetadata *)self setIcon:v68];
  }

  v69 = [(LPLinkMetadata *)self iconMetadata];
  if (!v69 || ([v156 iconMetadata], v70 = objc_claimAutoreleasedReturnValue(), v70, v69, v70))
  {
    v71 = [v156 iconMetadata];
    [(LPLinkMetadata *)self setIconMetadata:v71];
  }

  v72 = [(LPLinkMetadata *)self image];
  if (!v72 || ([v156 image], v73 = objc_claimAutoreleasedReturnValue(), v73, v72, v73))
  {
    v74 = [v156 image];
    [(LPLinkMetadata *)self setImage:v74];
  }

  v75 = [(LPLinkMetadata *)self imageMetadata];
  if (!v75 || ([v156 imageMetadata], v76 = objc_claimAutoreleasedReturnValue(), v76, v75, v76))
  {
    v77 = [v156 imageMetadata];
    [(LPLinkMetadata *)self setImageMetadata:v77];
  }

  v78 = [(LPLinkMetadata *)self video];
  if (!v78 || ([v156 video], v79 = objc_claimAutoreleasedReturnValue(), v79, v78, v79))
  {
    v80 = [v156 video];
    [(LPLinkMetadata *)self setVideo:v80];
  }

  v81 = [(LPLinkMetadata *)self videoMetadata];
  if (!v81 || ([v156 videoMetadata], v82 = objc_claimAutoreleasedReturnValue(), v82, v81, v82))
  {
    v83 = [v156 videoMetadata];
    [(LPLinkMetadata *)self setVideoMetadata:v83];
  }

  v84 = [(LPLinkMetadata *)self audio];
  if (!v84 || ([v156 audio], v85 = objc_claimAutoreleasedReturnValue(), v85, v84, v85))
  {
    v86 = [v156 audio];
    [(LPLinkMetadata *)self setAudio:v86];
  }

  v87 = [(LPLinkMetadata *)self audioMetadata];
  if (!v87 || ([v156 audioMetadata], v88 = objc_claimAutoreleasedReturnValue(), v88, v87, v88))
  {
    v89 = [v156 audioMetadata];
    [(LPLinkMetadata *)self setAudioMetadata:v89];
  }

  v90 = [(LPLinkMetadata *)self arAsset];
  if (!v90 || ([v156 arAsset], v91 = objc_claimAutoreleasedReturnValue(), v91, v90, v91))
  {
    v92 = [v156 arAsset];
    [(LPLinkMetadata *)self setArAsset:v92];
  }

  v93 = [(LPLinkMetadata *)self arAssetMetadata];
  if (!v93 || ([v156 arAssetMetadata], v94 = objc_claimAutoreleasedReturnValue(), v94, v93, v94))
  {
    v95 = [v156 arAssetMetadata];
    [(LPLinkMetadata *)self setArAssetMetadata:v95];
  }

  v96 = [(LPLinkMetadata *)self icons];
  if (!v96 || ([v156 icons], v97 = objc_claimAutoreleasedReturnValue(), v97, v96, v97))
  {
    v98 = [v156 icons];
    v99 = [v98 copy];
    [(LPLinkMetadata *)self setIcons:v99];
  }

  v100 = [(LPLinkMetadata *)self images];
  if (!v100 || ([v156 images], v101 = objc_claimAutoreleasedReturnValue(), v101, v100, v101))
  {
    v102 = [v156 images];
    v103 = [v102 copy];
    [(LPLinkMetadata *)self setImages:v103];
  }

  v104 = [(LPLinkMetadata *)self contentImages];
  if (!v104 || ([v156 contentImages], v105 = objc_claimAutoreleasedReturnValue(), v105, v104, v105))
  {
    v106 = [v156 contentImages];
    v107 = [v106 copy];
    [(LPLinkMetadata *)self setContentImages:v107];
  }

  v108 = [(LPLinkMetadata *)self contentImagesMetadata];
  if (!v108 || ([v156 contentImagesMetadata], v109 = objc_claimAutoreleasedReturnValue(), v109, v108, v109))
  {
    v110 = [v156 contentImagesMetadata];
    v111 = [v110 copy];
    [(LPLinkMetadata *)self setContentImagesMetadata:v111];
  }

  v112 = [(LPLinkMetadata *)self alternateImages];
  if (!v112 || ([v156 alternateImages], v113 = objc_claimAutoreleasedReturnValue(), v113, v112, v113))
  {
    v114 = [v156 alternateImages];
    v115 = [v114 copy];
    [(LPLinkMetadata *)self setAlternateImages:v115];
  }

  v116 = [(LPLinkMetadata *)self videos];
  if (!v116 || ([v156 videos], v117 = objc_claimAutoreleasedReturnValue(), v117, v116, v117))
  {
    v118 = [v156 videos];
    v119 = [v118 copy];
    [(LPLinkMetadata *)self setVideos:v119];
  }

  v120 = [(LPLinkMetadata *)self streamingVideos];
  if (!v120 || ([v156 streamingVideos], v121 = objc_claimAutoreleasedReturnValue(), v121, v120, v121))
  {
    v122 = [v156 streamingVideos];
    v123 = [v122 copy];
    [(LPLinkMetadata *)self setStreamingVideos:v123];
  }

  v124 = [(LPLinkMetadata *)self audios];
  if (!v124 || ([v156 audios], v125 = objc_claimAutoreleasedReturnValue(), v125, v124, v125))
  {
    v126 = [v156 audios];
    v127 = [v126 copy];
    [(LPLinkMetadata *)self setAudios:v127];
  }

  v128 = [(LPLinkMetadata *)self arAssets];
  if (!v128 || ([v156 arAssets], v129 = objc_claimAutoreleasedReturnValue(), v129, v128, v129))
  {
    v130 = [v156 arAssets];
    v131 = [v130 copy];
    [(LPLinkMetadata *)self setArAssets:v131];
  }

  v132 = [(LPLinkMetadata *)self associatedApplication];
  if (!v132 || ([v156 associatedApplication], v133 = objc_claimAutoreleasedReturnValue(), v133, v132, v133))
  {
    v134 = [v156 associatedApplication];
    v135 = [v134 copy];
    [(LPLinkMetadata *)self setAssociatedApplication:v135];
  }

  v136 = [(LPLinkMetadata *)self sourceApplication];
  if (!v136 || ([v156 sourceApplication], v137 = objc_claimAutoreleasedReturnValue(), v137, v136, v137))
  {
    v138 = [v156 sourceApplication];
    v139 = [v138 copy];
    [(LPLinkMetadata *)self setSourceApplication:v139];
  }

  v140 = [(LPLinkMetadata *)self product];
  if (!v140 || ([v156 product], v141 = objc_claimAutoreleasedReturnValue(), v141, v140, v141))
  {
    v142 = [v156 product];
    v143 = [v142 copy];
    [(LPLinkMetadata *)self setProduct:v143];
  }

  v144 = [(LPLinkMetadata *)self conversationActivity];
  if (!v144 || ([v156 conversationActivity], v145 = objc_claimAutoreleasedReturnValue(), v145, v144, v145))
  {
    v146 = [v156 conversationActivity];
    v147 = [v146 copy];
    [(LPLinkMetadata *)self setConversationActivity:v147];
  }

  -[LPLinkMetadata setCollaborationType:](self, "setCollaborationType:", [v156 collaborationType]);
  v148 = [(LPLinkMetadata *)self collaborationMetadata];
  if (!v148 || ([v156 collaborationMetadata], v149 = objc_claimAutoreleasedReturnValue(), v149, v148, v149))
  {
    v150 = [v156 collaborationMetadata];
    v151 = [v150 copy];
    [(LPLinkMetadata *)self setCollaborationMetadata:v151];
  }

  v152 = [(LPLinkMetadata *)self specialization];
  if (!v152 || ([v156 specialization], v153 = objc_claimAutoreleasedReturnValue(), v153, v152, v153))
  {
    v154 = [v156 specialization];
    v155 = [v154 copy];
    [(LPLinkMetadata *)self setSpecialization:v155];
  }
}

- (void)_copyPropertiesFrom:(id)a3 onlyUpgradeFields:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v78 = v6;
  if (v4)
  {
    [(LPLinkMetadata *)self _copyPropertiesOnlyUpgradingFieldsFrom:v6];
  }

  else
  {
    self->_version = [v6 version];
    v7 = [v78 originalURL];
    [(LPLinkMetadata *)self setOriginalURL:v7];

    v8 = [v78 URL];
    [(LPLinkMetadata *)self setURL:v8];

    v9 = [v78 title];
    v10 = [v9 copy];
    [(LPLinkMetadata *)self setTitle:v10];

    v11 = [v78 originalTitle];
    v12 = [v11 copy];
    [(LPLinkMetadata *)self setOriginalTitle:v12];

    v13 = [v78 summary];
    v14 = [v13 copy];
    [(LPLinkMetadata *)self setSummary:v14];

    v15 = [v78 selectedText];
    v16 = [v15 copy];
    [(LPLinkMetadata *)self setSelectedText:v16];

    v17 = [v78 siteName];
    v18 = [v17 copy];
    [(LPLinkMetadata *)self setSiteName:v18];

    v19 = [v78 itemType];
    v20 = [v19 copy];
    [(LPLinkMetadata *)self setItemType:v20];

    v21 = [v78 relatedURL];
    [(LPLinkMetadata *)self setRelatedURL:v21];

    v22 = [v78 creator];
    v23 = [v22 copy];
    [(LPLinkMetadata *)self setCreator:v23];

    v24 = [v78 creatorFacebookProfile];
    v25 = [v24 copy];
    [(LPLinkMetadata *)self setCreatorFacebookProfile:v25];

    v26 = [v78 creatorTwitterUsername];
    v27 = [v26 copy];
    [(LPLinkMetadata *)self setCreatorTwitterUsername:v27];

    v28 = [v78 twitterCard];
    v29 = [v28 copy];
    [(LPLinkMetadata *)self setTwitterCard:v29];

    -[LPLinkMetadata setUsesActivityPub:](self, "setUsesActivityPub:", [v78 usesActivityPub]);
    v30 = [v78 appleContentID];
    v31 = [v30 copy];
    [(LPLinkMetadata *)self setAppleContentID:v31];

    v32 = [v78 appleSummary];
    v33 = [v32 copy];
    [(LPLinkMetadata *)self setAppleSummary:v33];

    v34 = [v78 themeColor];
    v35 = [v34 copy];
    [(LPLinkMetadata *)self setThemeColor:v35];

    v36 = [v78 icon];
    [(LPLinkMetadata *)self setIcon:v36];

    v37 = [v78 iconMetadata];
    [(LPLinkMetadata *)self setIconMetadata:v37];

    v38 = [v78 image];
    [(LPLinkMetadata *)self setImage:v38];

    v39 = [v78 imageMetadata];
    [(LPLinkMetadata *)self setImageMetadata:v39];

    v40 = [v78 contentImages];
    v41 = [v40 copy];
    [(LPLinkMetadata *)self setContentImages:v41];

    v42 = [v78 contentImagesMetadata];
    v43 = [v42 copy];
    [(LPLinkMetadata *)self setContentImagesMetadata:v43];

    v44 = [v78 video];
    [(LPLinkMetadata *)self setVideo:v44];

    v45 = [v78 videoMetadata];
    [(LPLinkMetadata *)self setVideoMetadata:v45];

    v46 = [v78 audio];
    [(LPLinkMetadata *)self setAudio:v46];

    v47 = [v78 audioMetadata];
    [(LPLinkMetadata *)self setAudioMetadata:v47];

    v48 = [v78 arAsset];
    [(LPLinkMetadata *)self setArAsset:v48];

    v49 = [v78 arAssetMetadata];
    [(LPLinkMetadata *)self setArAssetMetadata:v49];

    v50 = [v78 icons];
    v51 = [v50 copy];
    [(LPLinkMetadata *)self setIcons:v51];

    v52 = [v78 images];
    v53 = [v52 copy];
    [(LPLinkMetadata *)self setImages:v53];

    v54 = [v78 alternateImages];
    v55 = [v54 copy];
    [(LPLinkMetadata *)self setAlternateImages:v55];

    v56 = [v78 videos];
    v57 = [v56 copy];
    [(LPLinkMetadata *)self setVideos:v57];

    v58 = [v78 streamingVideos];
    v59 = [v58 copy];
    [(LPLinkMetadata *)self setStreamingVideos:v59];

    v60 = [v78 audios];
    v61 = [v60 copy];
    [(LPLinkMetadata *)self setAudios:v61];

    v62 = [v78 arAssets];
    v63 = [v62 copy];
    [(LPLinkMetadata *)self setArAssets:v63];

    v64 = [v78 associatedApplication];
    v65 = [v64 copy];
    [(LPLinkMetadata *)self setAssociatedApplication:v65];

    v66 = [v78 product];
    v67 = [v66 copy];
    [(LPLinkMetadata *)self setProduct:v67];

    v68 = [v78 sourceApplication];
    v69 = [v68 copy];
    [(LPLinkMetadata *)self setSourceApplication:v69];

    v70 = [v78 conversationActivity];
    v71 = [v70 copy];
    [(LPLinkMetadata *)self setConversationActivity:v71];

    -[LPLinkMetadata setCollaborationType:](self, "setCollaborationType:", [v78 collaborationType]);
    v72 = [v78 collaborationMetadata];
    v73 = [v72 copy];
    [(LPLinkMetadata *)self setCollaborationMetadata:v73];

    v74 = [v78 specialization];
    v75 = [v74 copy];
    [(LPLinkMetadata *)self setSpecialization:v75];

    -[LPLinkMetadata _setIncomplete:](self, "_setIncomplete:", [v78 _isIncomplete]);
    self->_wasCopiedFromIncompleteMetadata = [v78 _isCurrentlyLoadingOrIncomplete];
    v76 = [v78 originatingSynapseContentItem];
    v77 = [v76 copy];
    [(LPLinkMetadata *)self setOriginatingSynapseContentItem:v77];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeInt32:self->_version forKey:@"version"];
  [v4 encodeBool:objc_msgSend(v4 forKey:{"_lp_coderType") == 1, @"isEncodedForLocalUse"}];
  v5 = [(LPLinkMetadata *)self _isCurrentlyLoadingOrIncomplete];
  [v4 encodeBool:v5 forKey:@"isIncomplete"];
  if (v5)
  {
    v6 = LPLogChannelSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(LPLinkMetadata *)self _isCurrentlyLoading];
      v8 = [(LPLinkMetadata *)self _isIncomplete];
      v9 = [(LPLinkMetadata *)self _wasCopiedFromIncompleteMetadata];
      objc_opt_class();
      *buf = 67109888;
      v28 = v7;
      v29 = 1024;
      v30 = v8;
      v31 = 1024;
      v32 = v9;
      v33 = 1024;
      LOBYTE(v34) = objc_opt_isKindOfClass() & 1;
      v34 = v34;
      _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPLinkMetadata being encoded while incomplete (loading: %d, incomplete: %d, copiedFromIncomplete: %d, isPlaceholder: %d)!", buf, 0x1Au);
    }
  }

  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_originalURL forKey:@"originalURL"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_originalTitle forKey:@"originalTitle"];
  [v4 _lp_encodeStringIfNotNil:self->_summary forKey:@"summary"];
  [v4 _lp_encodeStringIfNotNil:self->_selectedText forKey:@"selection"];
  [v4 _lp_encodeStringIfNotNil:self->_siteName forKey:@"siteName"];
  [v4 _lp_encodeStringIfNotNil:self->_itemType forKey:@"itemType"];
  [v4 _lp_encodeURLIfNotNilOrLocalFile:self->_relatedURL forKey:@"relatedURL"];
  [v4 _lp_encodeStringIfNotNil:self->_creator forKey:@"creator"];
  [v4 _lp_encodeStringIfNotNil:self->_creatorFacebookProfile forKey:@"creatorFacebookProfile"];
  [v4 _lp_encodeStringIfNotNil:self->_creatorTwitterUsername forKey:@"creatorTwitterUsername"];
  [v4 _lp_encodeStringIfNotNil:self->_twitterCard forKey:@"twitterCard"];
  [v4 encodeBool:self->_usesActivityPub forKey:@"usesActivityPub"];
  [v4 _lp_encodeStringIfNotNil:self->_appleContentID forKey:@"appleContentID"];
  [v4 _lp_encodeStringIfNotNil:self->_appleSummary forKey:@"appleSummary"];
  [v4 _lp_encodeColorIfNotNil:self->_themeColor forKey:@"themeColor"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v4 _lp_encodeObjectIfNotNil:self->_iconMetadata forKey:@"iconMetadata"];
  [v4 _lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_alternateImages forKey:@"alternateImages"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_contentImages forKey:@"contentImages"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_contentImagesMetadata forKey:@"contentImagesMetadata"];
  [v4 _lp_encodeObjectIfNotNil:self->_imageMetadata forKey:@"imageMetadata"];
  [v4 _lp_encodeObjectIfNotNil:self->_video forKey:@"video"];
  [v4 _lp_encodeObjectIfNotNil:self->_videoMetadata forKey:@"videoMetadata"];
  [v4 _lp_encodeObjectIfNotNil:self->_audio forKey:@"audio"];
  [v4 _lp_encodeObjectIfNotNil:self->_audioMetadata forKey:@"audioMetadata"];
  [v4 _lp_encodeObjectIfNotNil:self->_arAsset forKey:@"arAsset"];
  [v4 _lp_encodeObjectIfNotNil:self->_arAssetMetadata forKey:@"arAssetMetadata"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_icons forKey:@"icons"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_images forKey:@"images"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_videos forKey:@"videos"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_streamingVideos forKey:@"streamingVideos"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_audios forKey:@"audios"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_arAssets forKey:@"arAssets"];
  [v4 _lp_encodeObjectIfNotNil:self->_associatedApplication forKey:@"associatedApplication"];
  [v4 _lp_encodeObjectIfNotNil:self->_sourceApplication forKey:@"sourceApplication"];
  [v4 _lp_encodeObjectIfNotNil:self->_product forKey:@"product"];
  [v4 _lp_encodeObjectIfNotNil:self->_conversationActivity forKey:@"conversationActivity"];
  [v4 encodeInteger:self->_collaborationType forKey:@"collaborationType"];
  [v4 _lp_encodeObjectIfNotNil:self->_collaborationMetadata forKey:@"collaborationMetadata"];
  v10 = [v4 _lp_coderType];
  v11 = self->_specialization;
  v12 = v11;
  if (v10 == 1)
  {
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = specializationClassesForLocalUseOnly();
    v14 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
    if (v14)
    {
      v15 = *v36;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v13);
          }

          if (objc_opt_isKindOfClass())
          {

            goto LABEL_28;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v35 objects:buf count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = self->_specialization;
  *&v35 = objc_opt_class();
  *(&v35 + 1) = objc_opt_class();
  *&v36 = objc_opt_class();
  *(&v36 + 1) = objc_opt_class();
  *&v37 = objc_opt_class();
  *(&v37 + 1) = objc_opt_class();
  *&v38 = objc_opt_class();
  *(&v38 + 1) = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:11];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v18 = v24 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:buf count:16];
  if (v19)
  {
    v20 = *v24;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if (objc_opt_isKindOfClass())
        {

          v22 = @"specialization";
          goto LABEL_26;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v23 objects:buf count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v22 = @"specialization2";
LABEL_26:
  [v4 _lp_encodeObjectIfNotNil:self->_specialization forKey:{v22, v23}];
LABEL_28:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPLinkMetadata;
  if ([(LPLinkMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = (objectsAreEqual_0(v6[9], self->_originalURL) & 1) != 0 && objectsAreEqual_0(v6[10], self->_URL) && [(LPLinkMetadata *)self _isEqualIgnoringURLs:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isEqualIgnoringURLs:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPLinkMetadata;
  if ([(LPLinkMetadata *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else if (*(v4 + 15) == self->_version && objectsAreEqual_0(v4[6], self->_title) && objectsAreEqual_0(v4[11], self->_summary) && objectsAreEqual_0(v4[12], self->_selectedText) && objectsAreEqual_0(v4[13], self->_siteName) && objectsAreEqual_0(v4[14], self->_itemType) && objectsAreEqual_0(v4[15], self->_relatedURL) && objectsAreEqual_0(v4[16], self->_creator) && objectsAreEqual_0(v4[17], self->_creatorFacebookProfile) && objectsAreEqual_0(v4[18], self->_creatorTwitterUsername) && objectsAreEqual_0(v4[19], self->_twitterCard) && *(v4 + 57) == self->_usesActivityPub && objectsAreEqual_0(v4[20], self->_appleContentID) && objectsAreEqual_0(v4[21], self->_appleSummary) && objectsAreEqual_0(v4[22], self->_themeColor) && objectsAreEqual_0(v4[25], self->_icon) && objectsAreEqual_0(v4[26], self->_iconMetadata) && objectsAreEqual_0(v4[27], self->_image) && objectsAreEqual_0(v4[31], self->_imageMetadata) && objectsAreEqual_0(v4[29], self->_contentImages) && objectsAreEqual_0(v4[30], self->_contentImagesMetadata) && objectsAreEqual_0(v4[32], self->_video) && objectsAreEqual_0(v4[33], self->_videoMetadata) && objectsAreEqual_0(v4[34], self->_audio) && objectsAreEqual_0(v4[35], self->_audioMetadata) && objectsAreEqual_0(v4[23], self->_arAsset) && objectsAreEqual_0(v4[24], self->_arAssetMetadata) && objectsAreEqual_0(v4[37], self->_icons) && objectsAreEqual_0(v4[38], self->_images) && objectsAreEqual_0(v4[28], self->_alternateImages) && objectsAreEqual_0(v4[39], self->_videos) && objectsAreEqual_0(v4[40], self->_streamingVideos) && objectsAreEqual_0(v4[41], self->_audios) && objectsAreEqual_0(v4[36], self->_arAssets) && objectsAreEqual_0(v4[42], self->_associatedApplication) && objectsAreEqual_0(v4[47], self->_sourceApplication) && objectsAreEqual_0(v4[44], self->_conversationActivity) && v4[45] == self->_collaborationType && objectsAreEqual_0(v4[46], self->_collaborationMetadata))
  {
    v5 = objectsAreEqual_0(v4[49], self->_specialization);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (LPLinkMetadata)metadataWithDataRepresentation:(id)a3 decodingType:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4 == 1 || [v5 length] <= 0xA00000)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:0];
    [v9 _enableStrictSecureDecodingMode];
    [v9 setDecodingFailurePolicy:1];
    [v9 _lp_setCoderType:a4];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = *MEMORY[0x1E696A508];
    v18 = 0;
    v14 = [v9 _lp_strictlyDecodeTopLevelObjectOfClasses:v12 forKey:v13 error:&v18];
    v15 = v18;

    [v9 finishDecoding];
    if (v15)
    {
      v16 = LPLogChannelSerialization();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[LPLinkMetadata metadataWithDataRepresentation:decodingType:];
      }

      v8 = 0;
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v7 = LPLogChannelSerialization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[LPLinkMetadata metadataWithDataRepresentation:decodingType:].cold.1(buf, [v6 length], v7);
    }

    v8 = 0;
  }

  return v8;
}

- (id)dataRepresentationWithEncodingType:(unint64_t)a3 options:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 _lp_setCoderType:a3];
  [v7 _lp_setCoderOptions:a4];
  if (a3 == 1)
  {
    v8 = objc_alloc_init(LPLocalMetadataArchiverDelegate);
    [v7 setDelegate:v8];
  }

  else
  {
    v8 = 0;
  }

  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v9 = [v7 encodedData];

  return v9;
}

+ (LPLinkMetadata)metadataWithDataRepresentation:(id)a3
{
  v3 = [a1 metadataWithDataRepresentation:a3 decodingType:0];

  return v3;
}

+ (LPLinkMetadata)metadataWithDataRepresentationForLocalUseOnly:(id)a3
{
  v3 = [a1 metadataWithDataRepresentation:a3 decodingType:1];

  return v3;
}

- (unint64_t)_encodedSize
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_alternateImages;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v21 + 1) + 8 * v7++) _encodedSize];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_contentImages;
  v9 = 0;
  v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v9 += [*(*(&v17 + 1) + 8 * v12++) _encodedSize];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v13 = [(LPImage *)self->_icon _encodedSize];
  v14 = [(LPImage *)self->_image _encodedSize];
  v15 = [(LPVisualMedia *)self->_video _encodedSize];
  return v9 + v4 + v13 + v14 + v15 + [(LPAudio *)self->_audio _encodedSize];
}

- (void)_reduceSizeByDroppingResourcesIfNeeded
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  if (+[LPTestingOverrides forceUseSmallerMaximumMetadataSize])
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 10485760;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v21 = [&unk_1F2483878 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v21)
  {
    v4 = *v23;
    v18 = *v23;
    v19 = self;
LABEL_6:
    v5 = 0;
    while (1)
    {
      if (*v23 != v4)
      {
        objc_enumerationMutation(&unk_1F2483878);
      }

      v6 = *(*(&v22 + 1) + 8 * v5);
      if ([(LPLinkMetadata *)self _encodedSize:v18]<= v3)
      {
        break;
      }

      v7 = [(LPLinkMetadata *)self valueForKeyPath:v6];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [(LPLinkMetadata *)self _encodedSize];
          v20 = v7;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = [v20 reverseObjectEnumerator];
          v10 = 0;
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v11)
          {
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v26 + 1) + 8 * i) _encodedSize];
                v15 = (v14 != 0) & (v8 > v3);
                if (v14 != 0 && v8 > v3)
                {
                  v16 = v14;
                }

                else
                {
                  v16 = 0;
                }

                v8 -= v16;
                v10 += v15;
              }

              v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v11);
          }

          v4 = v18;
          self = v19;
          v17 = [v20 subarrayWithRange:{0, objc_msgSend(v20, "count") - v10}];

          [(LPLinkMetadata *)v19 setValue:v17 forKeyPath:v6];
        }

        else if ([v7 _encodedSize])
        {
          [(LPLinkMetadata *)self setValue:0 forKeyPath:v6];
        }
      }

      if (++v5 == v21)
      {
        v21 = [&unk_1F2483878 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v21)
        {
          goto LABEL_6;
        }

        return;
      }
    }
  }
}

- (void)setIconProvider:(NSItemProvider *)iconProvider
{
  v5 = iconProvider;
  if (v5)
  {
    v4 = [[LPImage alloc] initWithItemProvider:v5 properties:0 placeholderImage:0];
  }

  else
  {
    v4 = 0;
  }

  [(LPLinkMetadata *)self setIcon:v4];
  if (v5)
  {
  }
}

- (void)setImageProvider:(NSItemProvider *)imageProvider
{
  v5 = imageProvider;
  if (v5)
  {
    v4 = [[LPImage alloc] initWithItemProvider:v5 properties:0 placeholderImage:0];
  }

  else
  {
    v4 = 0;
  }

  [(LPLinkMetadata *)self setImage:v4];
  if (v5)
  {
  }
}

- (NSString)title
{
  title = self->_title;
  if (title)
  {
    v3 = title;
  }

  else
  {
    v5 = [(NSURL *)self->_URL _title];

    if (v5)
    {
      v3 = [(NSURL *)self->_URL _title];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setTitle:(NSString *)title
{
  v6 = title;
  objc_storeStrong(&self->_title, title);
  v5 = [(NSURL *)self->_URL _title];

  if (!v5)
  {
    [(NSURL *)self->_URL _setTitle:self->_title];
  }
}

- (void)setVideoProvider:(NSItemProvider *)videoProvider
{
  v5 = videoProvider;
  if (v5)
  {
    v4 = [[LPVideo alloc] initWithItemProvider:v5 properties:0];
  }

  else
  {
    v4 = 0;
  }

  [(LPLinkMetadata *)self setVideo:v4];
  if (v5)
  {
  }
}

- (NSURL)remoteVideoURL
{
  v3 = [(LPVideo *)self->_video streamingURL];

  video = self->_video;
  if (v3)
  {
    v5 = [(LPVideo *)video streamingURL];
  }

  else
  {
    v6 = [(LPVideo *)video youTubeURL];

    if (v6)
    {
      v5 = [(LPVideo *)self->_video youTubeURL];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setRemoteVideoURL:(NSURL *)remoteVideoURL
{
  v5 = remoteVideoURL;
  if ([LPPresentationSpecializations isYouTubeEmbedURL:?])
  {
    v4 = [[LPVideo alloc] initWithYouTubeURL:v5];
    [(LPLinkMetadata *)self setVideo:v4];
LABEL_5:

    goto LABEL_7;
  }

  if ([(NSURL *)v5 _lp_isHTTPFamilyURL])
  {
    v4 = [[LPVideo alloc] initWithStreamingURL:v5 hasAudio:1];
    [(LPLinkMetadata *)self setVideo:v4];
    goto LABEL_5;
  }

  [(LPLinkMetadata *)self setVideo:0];
LABEL_7:
}

- (BOOL)isGroupCollaboration
{
  if (self->_collaborationType == 2)
  {
    return 1;
  }

  v3 = [(TUConversationActivity *)self->_conversationActivity metadata];
  v4 = [v3 context];
  v5 = [v4 typedIdentifier];
  v2 = [v5 isEqualToString:@"CPGroupActivityCollaborationContext"];

  return v2;
}

- (BOOL)_isCurrentlyLoading
{
  if ([(LPLinkMetadata *)self _isDeferringAsynchronousLoads])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(LPLinkMetadata *)self _isLoadingAsynchronousFields];
    if (v3)
    {

      LOBYTE(v3) = [(LPLinkMetadata *)self _hasAnyAsynchronousFields];
    }
  }

  return v3;
}

- (BOOL)_isCurrentlyLoadingOrIncomplete
{
  if ([(LPLinkMetadata *)self _isCurrentlyLoading]|| [(LPLinkMetadata *)self _isIncomplete]|| [(LPLinkMetadata *)self _wasCopiedFromIncompleteMetadata])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_hasAnyAsynchronousFields
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__LPLinkMetadata__hasAnyAsynchronousFields__block_invoke;
  v4[3] = &unk_1E7A357F8;
  v4[4] = self;
  v4[5] = &v5;
  [(LPLinkMetadata *)self _enumerateAsynchronousFields:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __43__LPLinkMetadata__hasAnyAsynchronousFields__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKeyPath:a2];
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    v5 = [v3 conformsToProtocol:&unk_1F2493030];
    v4 = v7;
    if (v5)
    {
      v6 = [v7 needsAsynchronousLoad];
      v4 = v7;
      if (v6)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }
}

- (void)_addFinishedDeferringAsynchronousLoadHandler:(id)a3
{
  v4 = a3;
  finishedDeferringAsynchronousLoadHandlers = self->_finishedDeferringAsynchronousLoadHandlers;
  aBlock = v4;
  if (!finishedDeferringAsynchronousLoadHandlers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_finishedDeferringAsynchronousLoadHandlers;
    self->_finishedDeferringAsynchronousLoadHandlers = v6;

    finishedDeferringAsynchronousLoadHandlers = self->_finishedDeferringAsynchronousLoadHandlers;
    v4 = aBlock;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)finishedDeferringAsynchronousLoadHandlers addObject:v8];
}

- (void)_loadAsynchronousFieldsWithUpdateHandler:(id)a3
{
  v4 = a3;
  asynchronousLoadGroup = self->_asynchronousLoadGroup;
  v6 = asynchronousLoadGroup;
  if (!asynchronousLoadGroup)
  {
    v7 = dispatch_group_create();
    v8 = self->_asynchronousLoadGroup;
    self->_asynchronousLoadGroup = v7;

    v6 = self->_asynchronousLoadGroup;
  }

  if ([(LPLinkMetadata *)self _loadAsynchronousFieldsWithLoadGroup:v6]|| ((v9 = [(LPLinkMetadata *)self _isDeferringAsynchronousLoads], asynchronousLoadGroup) ? (v10 = 1) : (v10 = v9), (v10 & 1) != 0))
  {
    pendingAsynchronousLoadHandlers = self->_pendingAsynchronousLoadHandlers;
    if (!pendingAsynchronousLoadHandlers)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = self->_pendingAsynchronousLoadHandlers;
      self->_pendingAsynchronousLoadHandlers = v12;

      pendingAsynchronousLoadHandlers = self->_pendingAsynchronousLoadHandlers;
    }

    v14 = _Block_copy(v4);
    [(NSMutableArray *)pendingAsynchronousLoadHandlers addObject:v14];

    v15 = self->_asynchronousLoadGroup;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__LPLinkMetadata__loadAsynchronousFieldsWithUpdateHandler___block_invoke;
    v17[3] = &unk_1E7A35428;
    v17[4] = self;
    v18 = v4;
    dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v17);
    v16 = v18;
  }

  else
  {
    (*(v4 + 2))(v4, 1);
    v16 = self->_asynchronousLoadGroup;
    self->_asynchronousLoadGroup = 0;
  }
}

void __59__LPLinkMetadata__loadAsynchronousFieldsWithUpdateHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (id)_createAsynchronousLoadDeferralToken
{
  asynchronousLoadGroup = self->_asynchronousLoadGroup;
  if (!asynchronousLoadGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_asynchronousLoadGroup;
    self->_asynchronousLoadGroup = v4;

    asynchronousLoadGroup = self->_asynchronousLoadGroup;
  }

  dispatch_group_enter(asynchronousLoadGroup);
  ++self->_asynchronousLoadDeferralTokenCount;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__LPLinkMetadata__createAsynchronousLoadDeferralToken__block_invoke;
  aBlock[3] = &unk_1E7A35450;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);

  return v6;
}

void __54__LPLinkMetadata__createAsynchronousLoadDeferralToken__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  --*(*(a1 + 32) + 16);
  if (([*(a1 + 32) _isDeferringAsynchronousLoads] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 24) copy];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }

  [*(a1 + 32) _loadAsynchronousFieldsWithLoadGroup:{*(*(a1 + 32) + 8), v7}];
  dispatch_group_leave(*(*(a1 + 32) + 8));
}

- (void)_invokePendingAsynchronousLoadUpdateHandlers
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_pendingAsynchronousLoadHandlers copy];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_loadAsynchronousFieldsWithLoadGroup:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke;
  v7[3] = &unk_1E7A35898;
  v8 = v4;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  [(LPLinkMetadata *)self _enumerateAsynchronousFields:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForKeyPath:v3];
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:&unk_1F2493030])
    {
      v6 = v5;
      if ([v6 needsAsynchronousLoad])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        dispatch_group_enter(*(a1 + 40));
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_2;
        v22[3] = &unk_1E7A35820;
        v22[4] = *(a1 + 32);
        v23 = v3;
        v24 = v6;
        v25 = *(a1 + 40);
        [v24 loadAsynchronouslyWithCompletionHandler:v22];
      }

      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
      for (i = 0; [v7 count] > i; ++i)
      {
        [v8 addPointer:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_3;
      v15[3] = &unk_1E7A35870;
      v10 = v8;
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v16 = v10;
      v21 = v11;
      v13 = v12;
      v14 = *(a1 + 32);
      v17 = v13;
      v18 = v14;
      v19 = v3;
      v20 = v7;
      [v20 enumerateObjectsUsingBlock:v15];

LABEL_10:
    }
  }
}

void __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) valueForKeyPath:*(a1 + 40)];
  v4 = *(a1 + 48);

  if (v3 == v4)
  {
    [*(a1 + 32) setValue:v5 forKeyPath:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 needsAsynchronousLoad])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    dispatch_group_enter(*(a1 + 40));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_4;
    v9[3] = &unk_1E7A35848;
    v6 = *(a1 + 32);
    v15 = a3;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 64);
    v14 = *(a1 + 40);
    [v5 loadAsynchronouslyWithCompletionHandler:v9];
  }

  else
  {
    [*(a1 + 32) replacePointerAtIndex:a3 withPointer:v5];
  }
}

void __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) replacePointerAtIndex:*(a1 + 72) withPointer:a2];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {

LABEL_11:
    v10 = [*(a1 + 40) valueForKeyPath:{*(a1 + 48), v14}];
    v11 = v10 == *(a1 + 56);

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) allObjects];
      [v12 setValue:v13 forKeyPath:*(a1 + 48)];
    }

    goto LABEL_13;
  }

  v5 = *v15;
  v6 = 1;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * i);
      v9 = [MEMORY[0x1E695DFB0] null];
      LODWORD(v8) = [v8 isEqual:v9];

      v6 &= v8 ^ 1;
    }

    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v4);

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_13:
  dispatch_group_leave(*(a1 + 64));
}

- (void)_enumerateSubstitutableFields:(id)a3
{
  v4 = a3;
  v4[2](v4, @"arAsset");
  [(LPLinkMetadata *)self _enumerateAsynchronousFields:v4];
}

- (void)_enumerateAsynchronousFields:(id)a3
{
  v4 = a3;
  v4[2](v4, @"icon");
  v4[2](v4, @"image");
  v4[2](v4, @"video");
  v4[2](v4, @"alternateImages");
  specialization = self->_specialization;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__LPLinkMetadata__enumerateAsynchronousFields___block_invoke;
  v7[3] = &unk_1E7A358C0;
  v6 = v4;
  v8 = v6;
  [(LPSpecializationMetadata *)specialization _enumerateAsynchronousFields:v7];
}

void __47__LPLinkMetadata__enumerateAsynchronousFields___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [@"specialization." stringByAppendingString:a2];
  (*(v2 + 16))(v2);
}

- (void)_populateMetadataForBackwardCompatibility
{
  v6 = [(LPLinkMetadata *)self specialization];
  if (v6)
  {
    v3 = [(LPLinkMetadata *)self specialization];
    if ([v3 conformsToProtocol:&unk_1F2495850])
    {
      v4 = [(LPLinkMetadata *)self specialization];
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = [(LPLinkMetadata *)self specialization];
      [v6 populateMetadataForBackwardCompatibility:self];
    }

    else
    {
    }
  }
}

- (void)_decodeAllImagesWithMaximumSize:(CGSize)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__LPLinkMetadata__decodeAllImagesWithMaximumSize___block_invoke;
  v3[3] = &unk_1E7A35908;
  v3[4] = self;
  v4 = a3;
  [(LPLinkMetadata *)self _enumerateAsynchronousFields:v3];
}

void __50__LPLinkMetadata__decodeAllImagesWithMaximumSize___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) valueForKeyPath:a2];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 _synchronouslyDecodePlatformImageWithMaximumSize:{*(a1 + 40), *(a1 + 48)}];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __50__LPLinkMetadata__decodeAllImagesWithMaximumSize___block_invoke_2;
        v4[3] = &__block_descriptor_48_e41_v32__0___LPAsynchronousResource__8Q16_B24l;
        v5 = *(a1 + 40);
        [v3 enumerateObjectsUsingBlock:v4];
      }
    }
  }
}

void __50__LPLinkMetadata__decodeAllImagesWithMaximumSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 _synchronouslyDecodePlatformImageWithMaximumSize:{*(a1 + 32), *(a1 + 40)}];
  }
}

- (id)_initWithSynapseContentItem:(id)a3
{
  v4 = a3;
  v5 = [v4 linkPreviewMetadata];

  if (!v5 || ([v4 linkPreviewMetadata], v6 = objc_claimAutoreleasedReturnValue(), +[LPLinkMetadata metadataWithDataRepresentation:](LPLinkMetadata, "metadataWithDataRepresentation:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [(LPLinkMetadata *)self init];
    if (!v8)
    {
      v12 = 0;
      goto LABEL_7;
    }

    self = v8;
    v9 = [v4 itemURL];
    [(LPLinkMetadata *)self setOriginalURL:v9];

    v10 = [v4 itemURL];
    [(LPLinkMetadata *)self setURL:v10];

    v11 = [v4 displayTitle];
    [(LPLinkMetadata *)self setTitle:v11];

    v7 = self;
  }

  [v7 setOriginatingSynapseContentItem:v4];
  v12 = v7;

LABEL_7:
  return v12;
}

- (id)_initWithConversationActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 linkMetadatablob];

  if (!v6 || ([v5 linkMetadatablob], v7 = objc_claimAutoreleasedReturnValue(), +[LPLinkMetadata metadataWithDataRepresentation:](LPLinkMetadata, "metadataWithDataRepresentation:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [(LPLinkMetadata *)self init];
    if (!v9)
    {
      v18 = 0;
      goto LABEL_9;
    }

    self = v9;
    v10 = [v5 title];
    [(LPLinkMetadata *)self setTitle:v10];

    v11 = [v5 subTitle];
    [(LPLinkMetadata *)self setSummary:v11];

    v12 = [v5 imageData];

    if (v12)
    {
      v13 = [LPImage alloc];
      v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v15 = [v5 imageData];
      v16 = [v14 initWithData:v15];
      v17 = [(LPImage *)v13 initWithPlatformImage:v16];
      [(LPLinkMetadata *)self setImage:v17];
    }

    v8 = self;
  }

  [v8 setConversationActivity:v4];
  v18 = v8;

LABEL_9:
  return v18;
}

- (NSString)originalTitle
{
  originalTitle = self->_originalTitle;
  if (!originalTitle)
  {
    originalTitle = self->_title;
  }

  return originalTitle;
}

- (void)dropAuxiliaryMedia
{
  v2 = self;
  [(LPLinkMetadata *)v2 setContentImages:0];
  [(LPLinkMetadata *)v2 setContentImagesMetadata:0];
  [(LPLinkMetadata *)v2 setVideo:0];
  [(LPLinkMetadata *)v2 setArAsset:0];
  [(LPLinkMetadata *)v2 setSelectedText:0];
}

- (BOOL)_hasMedia
{
  v2 = self;
  v3 = sub_1AE9687A8();

  return v3 & 1;
}

- (id)variants
{
  v2 = self;
  sub_1AE968844();

  sub_1AE969B54(0, &qword_1ED5F3F20);
  v3 = sub_1AE988784();

  return v3;
}

+ (void)metadataWithDataRepresentation:(os_log_t)log decodingType:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPLinkMetadata: Failed to decode: excessive size (%{iec-bytes}lu)", buf, 0xCu);
}

@end