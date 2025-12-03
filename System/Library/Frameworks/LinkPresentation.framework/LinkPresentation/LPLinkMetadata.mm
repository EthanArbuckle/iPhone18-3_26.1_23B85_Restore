@interface LPLinkMetadata
+ (LPLinkMetadata)metadataWithDataRepresentation:(id)representation;
+ (LPLinkMetadata)metadataWithDataRepresentation:(id)representation decodingType:(unint64_t)type;
+ (LPLinkMetadata)metadataWithDataRepresentationForLocalUseOnly:(id)only;
- (BOOL)_hasAnyAsynchronousFields;
- (BOOL)_hasMedia;
- (BOOL)_isCurrentlyLoading;
- (BOOL)_isCurrentlyLoadingOrIncomplete;
- (BOOL)_isEqualIgnoringURLs:(id)ls;
- (BOOL)_loadAsynchronousFieldsWithLoadGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupCollaboration;
- (LPLinkMetadata)init;
- (LPLinkMetadata)initWithCoder:(id)coder;
- (NSString)originalTitle;
- (NSString)title;
- (NSURL)remoteVideoURL;
- (id)_createAsynchronousLoadDeferralToken;
- (id)_initWithConversationActivity:(id)activity;
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithSynapseContentItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentationWithEncodingType:(unint64_t)type options:(unint64_t)options;
- (id)variants;
- (unint64_t)_encodedSize;
- (void)_addFinishedDeferringAsynchronousLoadHandler:(id)handler;
- (void)_copyPropertiesFrom:(id)from onlyUpgradeFields:(BOOL)fields;
- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)from;
- (void)_decodeAllImagesWithMaximumSize:(CGSize)size;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)_enumerateSubstitutableFields:(id)fields;
- (void)_invokePendingAsynchronousLoadUpdateHandlers;
- (void)_loadAsynchronousFieldsWithUpdateHandler:(id)handler;
- (void)_populateMetadataForBackwardCompatibility;
- (void)_reduceSizeByDroppingResourcesIfNeeded;
- (void)dropAuxiliaryMedia;
- (void)encodeWithCoder:(id)coder;
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

- (id)_initWithDictionary:(id)dictionary
{
  v138 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v90 = dictionaryCopy;
  v5 = [(LPLinkMetadata *)self init];
  v91 = v5;
  if (!v5)
  {
    goto LABEL_79;
  }

  v6 = URLForKey(dictionaryCopy, @"LPMetadataURL");
  URL = v5->_URL;
  v5->_URL = v6;

  v8 = stringForKey(dictionaryCopy, @"LPMetadataTitle");
  title = v5->_title;
  v5->_title = v8;

  v10 = stringForKey(dictionaryCopy, @"LPMetadataDescription");
  summary = v5->_summary;
  v5->_summary = v10;

  v12 = stringForKey(dictionaryCopy, @"LPMetadataSelectedText");
  selectedText = v5->_selectedText;
  v5->_selectedText = v12;

  v14 = stringForKey(dictionaryCopy, @"LPMetadataSiteName");
  siteName = v5->_siteName;
  v5->_siteName = v14;

  v16 = stringForKey(dictionaryCopy, @"LPMetadataItemType");
  itemType = v5->_itemType;
  v5->_itemType = v16;

  v18 = URLForKey(dictionaryCopy, @"LPMetadataRelatedURL");
  relatedURL = v5->_relatedURL;
  v5->_relatedURL = v18;

  v20 = stringForKey(dictionaryCopy, @"LPMetadataCreator");
  creator = v5->_creator;
  v5->_creator = v20;

  v22 = stringForKey(dictionaryCopy, @"LPMetadataCreatorFacebookProfile");
  creatorFacebookProfile = v5->_creatorFacebookProfile;
  v5->_creatorFacebookProfile = v22;

  v24 = stringForKey(dictionaryCopy, @"LPMetadataCreatorTwitterUsername");
  creatorTwitterUsername = v5->_creatorTwitterUsername;
  v5->_creatorTwitterUsername = v24;

  v26 = stringForKey(dictionaryCopy, @"LPMetadataTwitterCard");
  twitterCard = v5->_twitterCard;
  v5->_twitterCard = v26;

  v28 = numberForKey(dictionaryCopy, @"LPMetadataUsesActivityPub");
  v5->_usesActivityPub = [v28 BOOLValue];

  v29 = stringForKey(dictionaryCopy, @"LPMetadataAppleContentID");
  appleContentID = v5->_appleContentID;
  v5->_appleContentID = v29;

  v31 = stringForKey(dictionaryCopy, @"LPMetadataAppleDescription");
  appleSummary = v5->_appleSummary;
  v5->_appleSummary = v31;

  v89 = arrayOfStringsForKey(dictionaryCopy, @"LPMetadataIcons");
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
  array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v44];
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = [v95 countByEnumeratingWithState:&v121 objects:v136 count:16];
    }

    while (v38);
  }

  objc_storeStrong(&v91->_contentImagesMetadata, array);
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
  dictionaryCopy = v90;
LABEL_79:

  return v91;
}

- (LPLinkMetadata)initWithCoder:(id)coder
{
  v116[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v104.receiver = self;
  v104.super_class = LPLinkMetadata;
  v5 = [(LPLinkMetadata *)&v104 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v5->_version = [coderCopy decodeInt32ForKey:@"version"];
  if ([coderCopy decodeBoolForKey:@"isEncodedForLocalUse"] && objc_msgSend(coderCopy, "_lp_coderType") != 1)
  {
    v98 = MEMORY[0x1E696ABC0];
    v115 = *MEMORY[0x1E696A278];
    v116[0] = @"Attemping to decode LPLinkMetadata intended for local only use.";
    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
    v100 = [v98 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v99];
    [coderCopy failWithError:v100];

LABEL_29:
    v97 = 0;
    goto LABEL_30;
  }

  v5->_incomplete = [coderCopy decodeBoolForKey:@"isIncomplete"];
  v6 = decodeURLForKey(coderCopy, @"originalURL");
  originalURL = v5->_originalURL;
  v5->_originalURL = v6;

  v8 = decodeURLForKey(coderCopy, @"URL");
  URL = v5->_URL;
  v5->_URL = v8;

  v10 = decodeStringForKey(coderCopy, @"title");
  title = v5->_title;
  v5->_title = v10;

  v12 = decodeStringForKey(coderCopy, @"originalTitle");
  originalTitle = v5->_originalTitle;
  v5->_originalTitle = v12;

  v14 = decodeStringForKey(coderCopy, @"summary");
  summary = v5->_summary;
  v5->_summary = v14;

  v16 = decodeStringForKey(coderCopy, @"selection");
  selectedText = v5->_selectedText;
  v5->_selectedText = v16;

  v18 = decodeStringForKey(coderCopy, @"siteName");
  siteName = v5->_siteName;
  v5->_siteName = v18;

  v20 = decodeStringForKey(coderCopy, @"itemType");
  itemType = v5->_itemType;
  v5->_itemType = v20;

  v22 = decodeURLForKey(coderCopy, @"relatedURL");
  relatedURL = v5->_relatedURL;
  v5->_relatedURL = v22;

  v24 = decodeStringForKey(coderCopy, @"creator");
  creator = v5->_creator;
  v5->_creator = v24;

  v26 = decodeStringForKey(coderCopy, @"creatorFacebookProfile");
  creatorFacebookProfile = v5->_creatorFacebookProfile;
  v5->_creatorFacebookProfile = v26;

  v28 = decodeStringForKey(coderCopy, @"creatorTwitterUsername");
  creatorTwitterUsername = v5->_creatorTwitterUsername;
  v5->_creatorTwitterUsername = v28;

  v30 = decodeStringForKey(coderCopy, @"twitterCard");
  twitterCard = v5->_twitterCard;
  v5->_twitterCard = v30;

  v5->_usesActivityPub = [coderCopy decodeBoolForKey:@"usesActivityPub"];
  v32 = decodeStringForKey(coderCopy, @"appleContentID");
  appleContentID = v5->_appleContentID;
  v5->_appleContentID = v32;

  v34 = decodeStringForKey(coderCopy, @"appleSummary");
  appleSummary = v5->_appleSummary;
  v5->_appleSummary = v34;

  v36 = [coderCopy _lp_strictlyDecodeColorForKey:@"themeColor"];
  themeColor = v5->_themeColor;
  v5->_themeColor = v36;

  v38 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
  [(LPLinkMetadata *)v5 setIcon:v38];

  v39 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"iconMetadata"];
  iconMetadata = v5->_iconMetadata;
  v5->_iconMetadata = v39;

  v41 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"image"];
  [(LPLinkMetadata *)v5 setImage:v41];

  v42 = [coderCopy _lp_strictlyDecodeArrayOfLPImagesForKey:@"alternateImages"];
  [(LPLinkMetadata *)v5 setAlternateImages:v42];

  v43 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"imageMetadata"];
  imageMetadata = v5->_imageMetadata;
  v5->_imageMetadata = v43;

  v45 = [coderCopy _lp_strictlyDecodeArrayOfLPImagesForKey:@"contentImages"];
  contentImages = v5->_contentImages;
  v5->_contentImages = v45;

  v47 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contentImagesMetadata"];
  contentImagesMetadata = v5->_contentImagesMetadata;
  v5->_contentImagesMetadata = v47;

  v49 = [coderCopy _lp_strictlyDecodeLPVideoForKey:@"video"];
  [(LPLinkMetadata *)v5 setVideo:v49];

  v50 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"videoMetadata"];
  videoMetadata = v5->_videoMetadata;
  v5->_videoMetadata = v50;

  v52 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audio"];
  [(LPLinkMetadata *)v5 setAudio:v52];

  v53 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audioMetadata"];
  audioMetadata = v5->_audioMetadata;
  v5->_audioMetadata = v53;

  v55 = [coderCopy _lp_strictlyDecodeLPARAssetForKey:@"arAsset"];
  [(LPLinkMetadata *)v5 setArAsset:v55];

  v56 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"arAssetMetadata"];
  arAssetMetadata = v5->_arAssetMetadata;
  v5->_arAssetMetadata = v56;

  v58 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"icons"];
  icons = v5->_icons;
  v5->_icons = v58;

  v60 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"images"];
  images = v5->_images;
  v5->_images = v60;

  v62 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"videos"];
  videos = v5->_videos;
  v5->_videos = v62;

  v64 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"streamingVideos"];
  streamingVideos = v5->_streamingVideos;
  v5->_streamingVideos = v64;

  v66 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"audios"];
  audios = v5->_audios;
  v5->_audios = v66;

  v68 = [coderCopy _lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arAssets"];
  arAssets = v5->_arAssets;
  v5->_arAssets = v68;

  v70 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"associatedApplication"];
  associatedApplication = v5->_associatedApplication;
  v5->_associatedApplication = v70;

  v72 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"sourceApplication"];
  sourceApplication = v5->_sourceApplication;
  v5->_sourceApplication = v72;

  v74 = [coderCopy decodeIntegerForKey:@"collaborationType"];
  if (v74 <= 2)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  v5->_collaborationType = v75;
  v76 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"product"];
  product = v5->_product;
  v5->_product = v76;

  error = [coderCopy error];

  if (error)
  {
    goto LABEL_29;
  }

  if ([coderCopy containsValueForKey:@"conversationActivity"])
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
    v81 = [coderCopy _lp_strictlyDecodeObjectOfClass:v79 forKey:@"conversationActivity"];
    conversationActivity = v5->_conversationActivity;
    v5->_conversationActivity = v81;
  }

  if ([coderCopy containsValueForKey:@"collaborationMetadata"])
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
    v85 = [coderCopy _lp_strictlyDecodeObjectOfClass:v83 forKey:@"collaborationMetadata"];
    collaborationMetadata = v5->_collaborationMetadata;
    v5->_collaborationMetadata = v85;
  }

  if ([coderCopy containsValueForKey:@"specialization2"])
  {
    v87 = decodableSpecializationClasses([coderCopy _lp_coderType]);
    v103 = 0;
    v88 = [coderCopy _lp_strictlyDecodeTopLevelObjectOfClasses:v87 forKey:@"specialization2" error:&v103];
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

  if (!v5->_specialization && [coderCopy containsValueForKey:@"specialization"])
  {
    v92 = decodableSpecializationClasses([coderCopy _lp_coderType]);
    v102 = 0;
    v93 = [coderCopy _lp_strictlyDecodeTopLevelObjectOfClasses:v92 forKey:@"specialization" error:&v102];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPLinkMetadata allocWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [(LPLinkMetadata *)v4 _copyPropertiesFrom:self onlyUpgradeFields:0];
    v6 = v5;
  }

  return v5;
}

- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)from
{
  fromCopy = from;
  self->_version = [fromCopy version];
  originalURL = [(LPLinkMetadata *)self originalURL];
  if (!originalURL || ([fromCopy originalURL], v5 = objc_claimAutoreleasedReturnValue(), v5, originalURL, v5))
  {
    originalURL2 = [fromCopy originalURL];
    [(LPLinkMetadata *)self setOriginalURL:originalURL2];
  }

  v7 = [(LPLinkMetadata *)self URL];
  if (!v7 || ([fromCopy URL], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [fromCopy URL];
    [(LPLinkMetadata *)self setURL:v9];
  }

  title = [(LPLinkMetadata *)self title];
  if (!title || ([fromCopy title], v11 = objc_claimAutoreleasedReturnValue(), v11, title, v11))
  {
    title2 = [fromCopy title];
    v13 = [title2 copy];
    [(LPLinkMetadata *)self setTitle:v13];
  }

  originalTitle = [(LPLinkMetadata *)self originalTitle];
  if (!originalTitle || ([fromCopy originalTitle], v15 = objc_claimAutoreleasedReturnValue(), v15, originalTitle, v15))
  {
    originalTitle2 = [fromCopy originalTitle];
    v17 = [originalTitle2 copy];
    [(LPLinkMetadata *)self setOriginalTitle:v17];
  }

  summary = [(LPLinkMetadata *)self summary];
  if (!summary || ([fromCopy summary], v19 = objc_claimAutoreleasedReturnValue(), v19, summary, v19))
  {
    summary2 = [fromCopy summary];
    v21 = [summary2 copy];
    [(LPLinkMetadata *)self setSummary:v21];
  }

  selectedText = [(LPLinkMetadata *)self selectedText];
  if (!selectedText || ([fromCopy selectedText], v23 = objc_claimAutoreleasedReturnValue(), v23, selectedText, v23))
  {
    selectedText2 = [fromCopy selectedText];
    v25 = [selectedText2 copy];
    [(LPLinkMetadata *)self setSelectedText:v25];
  }

  siteName = [(LPLinkMetadata *)self siteName];
  if (!siteName || ([fromCopy siteName], v27 = objc_claimAutoreleasedReturnValue(), v27, siteName, v27))
  {
    siteName2 = [fromCopy siteName];
    v29 = [siteName2 copy];
    [(LPLinkMetadata *)self setSiteName:v29];
  }

  itemType = [(LPLinkMetadata *)self itemType];
  if (!itemType || ([fromCopy itemType], v31 = objc_claimAutoreleasedReturnValue(), v31, itemType, v31))
  {
    itemType2 = [fromCopy itemType];
    v33 = [itemType2 copy];
    [(LPLinkMetadata *)self setItemType:v33];
  }

  relatedURL = [(LPLinkMetadata *)self relatedURL];
  if (!relatedURL || ([fromCopy relatedURL], v35 = objc_claimAutoreleasedReturnValue(), v35, relatedURL, v35))
  {
    relatedURL2 = [fromCopy relatedURL];
    [(LPLinkMetadata *)self setRelatedURL:relatedURL2];
  }

  creator = [(LPLinkMetadata *)self creator];
  if (!creator || ([fromCopy creator], v38 = objc_claimAutoreleasedReturnValue(), v38, creator, v38))
  {
    creator2 = [fromCopy creator];
    v40 = [creator2 copy];
    [(LPLinkMetadata *)self setCreator:v40];
  }

  creatorFacebookProfile = [(LPLinkMetadata *)self creatorFacebookProfile];
  if (!creatorFacebookProfile || ([fromCopy creatorFacebookProfile], v42 = objc_claimAutoreleasedReturnValue(), v42, creatorFacebookProfile, v42))
  {
    creatorFacebookProfile2 = [fromCopy creatorFacebookProfile];
    v44 = [creatorFacebookProfile2 copy];
    [(LPLinkMetadata *)self setCreatorFacebookProfile:v44];
  }

  creatorTwitterUsername = [(LPLinkMetadata *)self creatorTwitterUsername];
  if (!creatorTwitterUsername || ([fromCopy creatorTwitterUsername], v46 = objc_claimAutoreleasedReturnValue(), v46, creatorTwitterUsername, v46))
  {
    creatorTwitterUsername2 = [fromCopy creatorTwitterUsername];
    v48 = [creatorTwitterUsername2 copy];
    [(LPLinkMetadata *)self setCreatorTwitterUsername:v48];
  }

  twitterCard = [(LPLinkMetadata *)self twitterCard];
  if (!twitterCard || ([fromCopy twitterCard], v50 = objc_claimAutoreleasedReturnValue(), v50, twitterCard, v50))
  {
    twitterCard2 = [fromCopy twitterCard];
    v52 = [twitterCard2 copy];
    [(LPLinkMetadata *)self setTwitterCard:v52];
  }

  if ([(LPLinkMetadata *)self usesActivityPub])
  {
    usesActivityPub = 1;
  }

  else
  {
    usesActivityPub = [fromCopy usesActivityPub];
  }

  [(LPLinkMetadata *)self setUsesActivityPub:usesActivityPub];
  appleContentID = [(LPLinkMetadata *)self appleContentID];
  if (!appleContentID || ([fromCopy appleContentID], v55 = objc_claimAutoreleasedReturnValue(), v55, appleContentID, v55))
  {
    appleContentID2 = [fromCopy appleContentID];
    v57 = [appleContentID2 copy];
    [(LPLinkMetadata *)self setAppleContentID:v57];
  }

  appleSummary = [(LPLinkMetadata *)self appleSummary];
  if (!appleSummary || ([fromCopy appleSummary], v59 = objc_claimAutoreleasedReturnValue(), v59, appleSummary, v59))
  {
    appleSummary2 = [fromCopy appleSummary];
    v61 = [appleSummary2 copy];
    [(LPLinkMetadata *)self setAppleSummary:v61];
  }

  themeColor = [(LPLinkMetadata *)self themeColor];
  if (!themeColor || ([fromCopy themeColor], v63 = objc_claimAutoreleasedReturnValue(), v63, themeColor, v63))
  {
    themeColor2 = [fromCopy themeColor];
    v65 = [themeColor2 copy];
    [(LPLinkMetadata *)self setThemeColor:v65];
  }

  icon = [(LPLinkMetadata *)self icon];
  if (!icon || ([fromCopy icon], v67 = objc_claimAutoreleasedReturnValue(), v67, icon, v67))
  {
    icon2 = [fromCopy icon];
    [(LPLinkMetadata *)self setIcon:icon2];
  }

  iconMetadata = [(LPLinkMetadata *)self iconMetadata];
  if (!iconMetadata || ([fromCopy iconMetadata], v70 = objc_claimAutoreleasedReturnValue(), v70, iconMetadata, v70))
  {
    iconMetadata2 = [fromCopy iconMetadata];
    [(LPLinkMetadata *)self setIconMetadata:iconMetadata2];
  }

  image = [(LPLinkMetadata *)self image];
  if (!image || ([fromCopy image], v73 = objc_claimAutoreleasedReturnValue(), v73, image, v73))
  {
    image2 = [fromCopy image];
    [(LPLinkMetadata *)self setImage:image2];
  }

  imageMetadata = [(LPLinkMetadata *)self imageMetadata];
  if (!imageMetadata || ([fromCopy imageMetadata], v76 = objc_claimAutoreleasedReturnValue(), v76, imageMetadata, v76))
  {
    imageMetadata2 = [fromCopy imageMetadata];
    [(LPLinkMetadata *)self setImageMetadata:imageMetadata2];
  }

  video = [(LPLinkMetadata *)self video];
  if (!video || ([fromCopy video], v79 = objc_claimAutoreleasedReturnValue(), v79, video, v79))
  {
    video2 = [fromCopy video];
    [(LPLinkMetadata *)self setVideo:video2];
  }

  videoMetadata = [(LPLinkMetadata *)self videoMetadata];
  if (!videoMetadata || ([fromCopy videoMetadata], v82 = objc_claimAutoreleasedReturnValue(), v82, videoMetadata, v82))
  {
    videoMetadata2 = [fromCopy videoMetadata];
    [(LPLinkMetadata *)self setVideoMetadata:videoMetadata2];
  }

  audio = [(LPLinkMetadata *)self audio];
  if (!audio || ([fromCopy audio], v85 = objc_claimAutoreleasedReturnValue(), v85, audio, v85))
  {
    audio2 = [fromCopy audio];
    [(LPLinkMetadata *)self setAudio:audio2];
  }

  audioMetadata = [(LPLinkMetadata *)self audioMetadata];
  if (!audioMetadata || ([fromCopy audioMetadata], v88 = objc_claimAutoreleasedReturnValue(), v88, audioMetadata, v88))
  {
    audioMetadata2 = [fromCopy audioMetadata];
    [(LPLinkMetadata *)self setAudioMetadata:audioMetadata2];
  }

  arAsset = [(LPLinkMetadata *)self arAsset];
  if (!arAsset || ([fromCopy arAsset], v91 = objc_claimAutoreleasedReturnValue(), v91, arAsset, v91))
  {
    arAsset2 = [fromCopy arAsset];
    [(LPLinkMetadata *)self setArAsset:arAsset2];
  }

  arAssetMetadata = [(LPLinkMetadata *)self arAssetMetadata];
  if (!arAssetMetadata || ([fromCopy arAssetMetadata], v94 = objc_claimAutoreleasedReturnValue(), v94, arAssetMetadata, v94))
  {
    arAssetMetadata2 = [fromCopy arAssetMetadata];
    [(LPLinkMetadata *)self setArAssetMetadata:arAssetMetadata2];
  }

  icons = [(LPLinkMetadata *)self icons];
  if (!icons || ([fromCopy icons], v97 = objc_claimAutoreleasedReturnValue(), v97, icons, v97))
  {
    icons2 = [fromCopy icons];
    v99 = [icons2 copy];
    [(LPLinkMetadata *)self setIcons:v99];
  }

  images = [(LPLinkMetadata *)self images];
  if (!images || ([fromCopy images], v101 = objc_claimAutoreleasedReturnValue(), v101, images, v101))
  {
    images2 = [fromCopy images];
    v103 = [images2 copy];
    [(LPLinkMetadata *)self setImages:v103];
  }

  contentImages = [(LPLinkMetadata *)self contentImages];
  if (!contentImages || ([fromCopy contentImages], v105 = objc_claimAutoreleasedReturnValue(), v105, contentImages, v105))
  {
    contentImages2 = [fromCopy contentImages];
    v107 = [contentImages2 copy];
    [(LPLinkMetadata *)self setContentImages:v107];
  }

  contentImagesMetadata = [(LPLinkMetadata *)self contentImagesMetadata];
  if (!contentImagesMetadata || ([fromCopy contentImagesMetadata], v109 = objc_claimAutoreleasedReturnValue(), v109, contentImagesMetadata, v109))
  {
    contentImagesMetadata2 = [fromCopy contentImagesMetadata];
    v111 = [contentImagesMetadata2 copy];
    [(LPLinkMetadata *)self setContentImagesMetadata:v111];
  }

  alternateImages = [(LPLinkMetadata *)self alternateImages];
  if (!alternateImages || ([fromCopy alternateImages], v113 = objc_claimAutoreleasedReturnValue(), v113, alternateImages, v113))
  {
    alternateImages2 = [fromCopy alternateImages];
    v115 = [alternateImages2 copy];
    [(LPLinkMetadata *)self setAlternateImages:v115];
  }

  videos = [(LPLinkMetadata *)self videos];
  if (!videos || ([fromCopy videos], v117 = objc_claimAutoreleasedReturnValue(), v117, videos, v117))
  {
    videos2 = [fromCopy videos];
    v119 = [videos2 copy];
    [(LPLinkMetadata *)self setVideos:v119];
  }

  streamingVideos = [(LPLinkMetadata *)self streamingVideos];
  if (!streamingVideos || ([fromCopy streamingVideos], v121 = objc_claimAutoreleasedReturnValue(), v121, streamingVideos, v121))
  {
    streamingVideos2 = [fromCopy streamingVideos];
    v123 = [streamingVideos2 copy];
    [(LPLinkMetadata *)self setStreamingVideos:v123];
  }

  audios = [(LPLinkMetadata *)self audios];
  if (!audios || ([fromCopy audios], v125 = objc_claimAutoreleasedReturnValue(), v125, audios, v125))
  {
    audios2 = [fromCopy audios];
    v127 = [audios2 copy];
    [(LPLinkMetadata *)self setAudios:v127];
  }

  arAssets = [(LPLinkMetadata *)self arAssets];
  if (!arAssets || ([fromCopy arAssets], v129 = objc_claimAutoreleasedReturnValue(), v129, arAssets, v129))
  {
    arAssets2 = [fromCopy arAssets];
    v131 = [arAssets2 copy];
    [(LPLinkMetadata *)self setArAssets:v131];
  }

  associatedApplication = [(LPLinkMetadata *)self associatedApplication];
  if (!associatedApplication || ([fromCopy associatedApplication], v133 = objc_claimAutoreleasedReturnValue(), v133, associatedApplication, v133))
  {
    associatedApplication2 = [fromCopy associatedApplication];
    v135 = [associatedApplication2 copy];
    [(LPLinkMetadata *)self setAssociatedApplication:v135];
  }

  sourceApplication = [(LPLinkMetadata *)self sourceApplication];
  if (!sourceApplication || ([fromCopy sourceApplication], v137 = objc_claimAutoreleasedReturnValue(), v137, sourceApplication, v137))
  {
    sourceApplication2 = [fromCopy sourceApplication];
    v139 = [sourceApplication2 copy];
    [(LPLinkMetadata *)self setSourceApplication:v139];
  }

  product = [(LPLinkMetadata *)self product];
  if (!product || ([fromCopy product], v141 = objc_claimAutoreleasedReturnValue(), v141, product, v141))
  {
    product2 = [fromCopy product];
    v143 = [product2 copy];
    [(LPLinkMetadata *)self setProduct:v143];
  }

  conversationActivity = [(LPLinkMetadata *)self conversationActivity];
  if (!conversationActivity || ([fromCopy conversationActivity], v145 = objc_claimAutoreleasedReturnValue(), v145, conversationActivity, v145))
  {
    conversationActivity2 = [fromCopy conversationActivity];
    v147 = [conversationActivity2 copy];
    [(LPLinkMetadata *)self setConversationActivity:v147];
  }

  -[LPLinkMetadata setCollaborationType:](self, "setCollaborationType:", [fromCopy collaborationType]);
  collaborationMetadata = [(LPLinkMetadata *)self collaborationMetadata];
  if (!collaborationMetadata || ([fromCopy collaborationMetadata], v149 = objc_claimAutoreleasedReturnValue(), v149, collaborationMetadata, v149))
  {
    collaborationMetadata2 = [fromCopy collaborationMetadata];
    v151 = [collaborationMetadata2 copy];
    [(LPLinkMetadata *)self setCollaborationMetadata:v151];
  }

  specialization = [(LPLinkMetadata *)self specialization];
  if (!specialization || ([fromCopy specialization], v153 = objc_claimAutoreleasedReturnValue(), v153, specialization, v153))
  {
    specialization2 = [fromCopy specialization];
    v155 = [specialization2 copy];
    [(LPLinkMetadata *)self setSpecialization:v155];
  }
}

- (void)_copyPropertiesFrom:(id)from onlyUpgradeFields:(BOOL)fields
{
  fieldsCopy = fields;
  fromCopy = from;
  v78 = fromCopy;
  if (fieldsCopy)
  {
    [(LPLinkMetadata *)self _copyPropertiesOnlyUpgradingFieldsFrom:fromCopy];
  }

  else
  {
    self->_version = [fromCopy version];
    originalURL = [v78 originalURL];
    [(LPLinkMetadata *)self setOriginalURL:originalURL];

    v8 = [v78 URL];
    [(LPLinkMetadata *)self setURL:v8];

    title = [v78 title];
    v10 = [title copy];
    [(LPLinkMetadata *)self setTitle:v10];

    originalTitle = [v78 originalTitle];
    v12 = [originalTitle copy];
    [(LPLinkMetadata *)self setOriginalTitle:v12];

    summary = [v78 summary];
    v14 = [summary copy];
    [(LPLinkMetadata *)self setSummary:v14];

    selectedText = [v78 selectedText];
    v16 = [selectedText copy];
    [(LPLinkMetadata *)self setSelectedText:v16];

    siteName = [v78 siteName];
    v18 = [siteName copy];
    [(LPLinkMetadata *)self setSiteName:v18];

    itemType = [v78 itemType];
    v20 = [itemType copy];
    [(LPLinkMetadata *)self setItemType:v20];

    relatedURL = [v78 relatedURL];
    [(LPLinkMetadata *)self setRelatedURL:relatedURL];

    creator = [v78 creator];
    v23 = [creator copy];
    [(LPLinkMetadata *)self setCreator:v23];

    creatorFacebookProfile = [v78 creatorFacebookProfile];
    v25 = [creatorFacebookProfile copy];
    [(LPLinkMetadata *)self setCreatorFacebookProfile:v25];

    creatorTwitterUsername = [v78 creatorTwitterUsername];
    v27 = [creatorTwitterUsername copy];
    [(LPLinkMetadata *)self setCreatorTwitterUsername:v27];

    twitterCard = [v78 twitterCard];
    v29 = [twitterCard copy];
    [(LPLinkMetadata *)self setTwitterCard:v29];

    -[LPLinkMetadata setUsesActivityPub:](self, "setUsesActivityPub:", [v78 usesActivityPub]);
    appleContentID = [v78 appleContentID];
    v31 = [appleContentID copy];
    [(LPLinkMetadata *)self setAppleContentID:v31];

    appleSummary = [v78 appleSummary];
    v33 = [appleSummary copy];
    [(LPLinkMetadata *)self setAppleSummary:v33];

    themeColor = [v78 themeColor];
    v35 = [themeColor copy];
    [(LPLinkMetadata *)self setThemeColor:v35];

    icon = [v78 icon];
    [(LPLinkMetadata *)self setIcon:icon];

    iconMetadata = [v78 iconMetadata];
    [(LPLinkMetadata *)self setIconMetadata:iconMetadata];

    image = [v78 image];
    [(LPLinkMetadata *)self setImage:image];

    imageMetadata = [v78 imageMetadata];
    [(LPLinkMetadata *)self setImageMetadata:imageMetadata];

    contentImages = [v78 contentImages];
    v41 = [contentImages copy];
    [(LPLinkMetadata *)self setContentImages:v41];

    contentImagesMetadata = [v78 contentImagesMetadata];
    v43 = [contentImagesMetadata copy];
    [(LPLinkMetadata *)self setContentImagesMetadata:v43];

    video = [v78 video];
    [(LPLinkMetadata *)self setVideo:video];

    videoMetadata = [v78 videoMetadata];
    [(LPLinkMetadata *)self setVideoMetadata:videoMetadata];

    audio = [v78 audio];
    [(LPLinkMetadata *)self setAudio:audio];

    audioMetadata = [v78 audioMetadata];
    [(LPLinkMetadata *)self setAudioMetadata:audioMetadata];

    arAsset = [v78 arAsset];
    [(LPLinkMetadata *)self setArAsset:arAsset];

    arAssetMetadata = [v78 arAssetMetadata];
    [(LPLinkMetadata *)self setArAssetMetadata:arAssetMetadata];

    icons = [v78 icons];
    v51 = [icons copy];
    [(LPLinkMetadata *)self setIcons:v51];

    images = [v78 images];
    v53 = [images copy];
    [(LPLinkMetadata *)self setImages:v53];

    alternateImages = [v78 alternateImages];
    v55 = [alternateImages copy];
    [(LPLinkMetadata *)self setAlternateImages:v55];

    videos = [v78 videos];
    v57 = [videos copy];
    [(LPLinkMetadata *)self setVideos:v57];

    streamingVideos = [v78 streamingVideos];
    v59 = [streamingVideos copy];
    [(LPLinkMetadata *)self setStreamingVideos:v59];

    audios = [v78 audios];
    v61 = [audios copy];
    [(LPLinkMetadata *)self setAudios:v61];

    arAssets = [v78 arAssets];
    v63 = [arAssets copy];
    [(LPLinkMetadata *)self setArAssets:v63];

    associatedApplication = [v78 associatedApplication];
    v65 = [associatedApplication copy];
    [(LPLinkMetadata *)self setAssociatedApplication:v65];

    product = [v78 product];
    v67 = [product copy];
    [(LPLinkMetadata *)self setProduct:v67];

    sourceApplication = [v78 sourceApplication];
    v69 = [sourceApplication copy];
    [(LPLinkMetadata *)self setSourceApplication:v69];

    conversationActivity = [v78 conversationActivity];
    v71 = [conversationActivity copy];
    [(LPLinkMetadata *)self setConversationActivity:v71];

    -[LPLinkMetadata setCollaborationType:](self, "setCollaborationType:", [v78 collaborationType]);
    collaborationMetadata = [v78 collaborationMetadata];
    v73 = [collaborationMetadata copy];
    [(LPLinkMetadata *)self setCollaborationMetadata:v73];

    specialization = [v78 specialization];
    v75 = [specialization copy];
    [(LPLinkMetadata *)self setSpecialization:v75];

    -[LPLinkMetadata _setIncomplete:](self, "_setIncomplete:", [v78 _isIncomplete]);
    self->_wasCopiedFromIncompleteMetadata = [v78 _isCurrentlyLoadingOrIncomplete];
    originatingSynapseContentItem = [v78 originatingSynapseContentItem];
    v77 = [originatingSynapseContentItem copy];
    [(LPLinkMetadata *)self setOriginatingSynapseContentItem:v77];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeInt32:self->_version forKey:@"version"];
  [coderCopy encodeBool:objc_msgSend(coderCopy forKey:{"_lp_coderType") == 1, @"isEncodedForLocalUse"}];
  _isCurrentlyLoadingOrIncomplete = [(LPLinkMetadata *)self _isCurrentlyLoadingOrIncomplete];
  [coderCopy encodeBool:_isCurrentlyLoadingOrIncomplete forKey:@"isIncomplete"];
  if (_isCurrentlyLoadingOrIncomplete)
  {
    v6 = LPLogChannelSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _isCurrentlyLoading = [(LPLinkMetadata *)self _isCurrentlyLoading];
      _isIncomplete = [(LPLinkMetadata *)self _isIncomplete];
      _wasCopiedFromIncompleteMetadata = [(LPLinkMetadata *)self _wasCopiedFromIncompleteMetadata];
      objc_opt_class();
      *buf = 67109888;
      v28 = _isCurrentlyLoading;
      v29 = 1024;
      v30 = _isIncomplete;
      v31 = 1024;
      v32 = _wasCopiedFromIncompleteMetadata;
      v33 = 1024;
      LOBYTE(v34) = objc_opt_isKindOfClass() & 1;
      v34 = v34;
      _os_log_impl(&dword_1AE886000, v6, OS_LOG_TYPE_DEFAULT, "LPLinkMetadata being encoded while incomplete (loading: %d, incomplete: %d, copiedFromIncomplete: %d, isPlaceholder: %d)!", buf, 0x1Au);
    }
  }

  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_originalURL forKey:@"originalURL"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_originalTitle forKey:@"originalTitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_summary forKey:@"summary"];
  [coderCopy _lp_encodeStringIfNotNil:self->_selectedText forKey:@"selection"];
  [coderCopy _lp_encodeStringIfNotNil:self->_siteName forKey:@"siteName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_itemType forKey:@"itemType"];
  [coderCopy _lp_encodeURLIfNotNilOrLocalFile:self->_relatedURL forKey:@"relatedURL"];
  [coderCopy _lp_encodeStringIfNotNil:self->_creator forKey:@"creator"];
  [coderCopy _lp_encodeStringIfNotNil:self->_creatorFacebookProfile forKey:@"creatorFacebookProfile"];
  [coderCopy _lp_encodeStringIfNotNil:self->_creatorTwitterUsername forKey:@"creatorTwitterUsername"];
  [coderCopy _lp_encodeStringIfNotNil:self->_twitterCard forKey:@"twitterCard"];
  [coderCopy encodeBool:self->_usesActivityPub forKey:@"usesActivityPub"];
  [coderCopy _lp_encodeStringIfNotNil:self->_appleContentID forKey:@"appleContentID"];
  [coderCopy _lp_encodeStringIfNotNil:self->_appleSummary forKey:@"appleSummary"];
  [coderCopy _lp_encodeColorIfNotNil:self->_themeColor forKey:@"themeColor"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_iconMetadata forKey:@"iconMetadata"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_alternateImages forKey:@"alternateImages"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_contentImages forKey:@"contentImages"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_contentImagesMetadata forKey:@"contentImagesMetadata"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_imageMetadata forKey:@"imageMetadata"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_video forKey:@"video"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_videoMetadata forKey:@"videoMetadata"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_audio forKey:@"audio"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_audioMetadata forKey:@"audioMetadata"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_arAsset forKey:@"arAsset"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_arAssetMetadata forKey:@"arAssetMetadata"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_icons forKey:@"icons"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_images forKey:@"images"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_videos forKey:@"videos"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_streamingVideos forKey:@"streamingVideos"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_audios forKey:@"audios"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_arAssets forKey:@"arAssets"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_associatedApplication forKey:@"associatedApplication"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_sourceApplication forKey:@"sourceApplication"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_product forKey:@"product"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_conversationActivity forKey:@"conversationActivity"];
  [coderCopy encodeInteger:self->_collaborationType forKey:@"collaborationType"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_collaborationMetadata forKey:@"collaborationMetadata"];
  _lp_coderType = [coderCopy _lp_coderType];
  v11 = self->_specialization;
  v12 = v11;
  if (_lp_coderType == 1)
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
  [coderCopy _lp_encodeObjectIfNotNil:self->_specialization forKey:{v22, v23}];
LABEL_28:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPLinkMetadata;
  if ([(LPLinkMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = (objectsAreEqual_0(v6[9], self->_originalURL) & 1) != 0 && objectsAreEqual_0(v6[10], self->_URL) && [(LPLinkMetadata *)self _isEqualIgnoringURLs:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isEqualIgnoringURLs:(id)ls
{
  lsCopy = ls;
  v7.receiver = self;
  v7.super_class = LPLinkMetadata;
  if ([(LPLinkMetadata *)&v7 isEqual:lsCopy])
  {
    v5 = 1;
  }

  else if (*(lsCopy + 15) == self->_version && objectsAreEqual_0(lsCopy[6], self->_title) && objectsAreEqual_0(lsCopy[11], self->_summary) && objectsAreEqual_0(lsCopy[12], self->_selectedText) && objectsAreEqual_0(lsCopy[13], self->_siteName) && objectsAreEqual_0(lsCopy[14], self->_itemType) && objectsAreEqual_0(lsCopy[15], self->_relatedURL) && objectsAreEqual_0(lsCopy[16], self->_creator) && objectsAreEqual_0(lsCopy[17], self->_creatorFacebookProfile) && objectsAreEqual_0(lsCopy[18], self->_creatorTwitterUsername) && objectsAreEqual_0(lsCopy[19], self->_twitterCard) && *(lsCopy + 57) == self->_usesActivityPub && objectsAreEqual_0(lsCopy[20], self->_appleContentID) && objectsAreEqual_0(lsCopy[21], self->_appleSummary) && objectsAreEqual_0(lsCopy[22], self->_themeColor) && objectsAreEqual_0(lsCopy[25], self->_icon) && objectsAreEqual_0(lsCopy[26], self->_iconMetadata) && objectsAreEqual_0(lsCopy[27], self->_image) && objectsAreEqual_0(lsCopy[31], self->_imageMetadata) && objectsAreEqual_0(lsCopy[29], self->_contentImages) && objectsAreEqual_0(lsCopy[30], self->_contentImagesMetadata) && objectsAreEqual_0(lsCopy[32], self->_video) && objectsAreEqual_0(lsCopy[33], self->_videoMetadata) && objectsAreEqual_0(lsCopy[34], self->_audio) && objectsAreEqual_0(lsCopy[35], self->_audioMetadata) && objectsAreEqual_0(lsCopy[23], self->_arAsset) && objectsAreEqual_0(lsCopy[24], self->_arAssetMetadata) && objectsAreEqual_0(lsCopy[37], self->_icons) && objectsAreEqual_0(lsCopy[38], self->_images) && objectsAreEqual_0(lsCopy[28], self->_alternateImages) && objectsAreEqual_0(lsCopy[39], self->_videos) && objectsAreEqual_0(lsCopy[40], self->_streamingVideos) && objectsAreEqual_0(lsCopy[41], self->_audios) && objectsAreEqual_0(lsCopy[36], self->_arAssets) && objectsAreEqual_0(lsCopy[42], self->_associatedApplication) && objectsAreEqual_0(lsCopy[47], self->_sourceApplication) && objectsAreEqual_0(lsCopy[44], self->_conversationActivity) && lsCopy[45] == self->_collaborationType && objectsAreEqual_0(lsCopy[46], self->_collaborationMetadata))
  {
    v5 = objectsAreEqual_0(lsCopy[49], self->_specialization);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (LPLinkMetadata)metadataWithDataRepresentation:(id)representation decodingType:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = representationCopy;
  if (type == 1 || [representationCopy length] <= 0xA00000)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:0];
    [v9 _enableStrictSecureDecodingMode];
    [v9 setDecodingFailurePolicy:1];
    [v9 _lp_setCoderType:type];
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

- (id)dataRepresentationWithEncodingType:(unint64_t)type options:(unint64_t)options
{
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 _lp_setCoderType:type];
  [v7 _lp_setCoderOptions:options];
  if (type == 1)
  {
    v8 = objc_alloc_init(LPLocalMetadataArchiverDelegate);
    [v7 setDelegate:v8];
  }

  else
  {
    v8 = 0;
  }

  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  encodedData = [v7 encodedData];

  return encodedData;
}

+ (LPLinkMetadata)metadataWithDataRepresentation:(id)representation
{
  v3 = [self metadataWithDataRepresentation:representation decodingType:0];

  return v3;
}

+ (LPLinkMetadata)metadataWithDataRepresentationForLocalUseOnly:(id)only
{
  v3 = [self metadataWithDataRepresentation:only decodingType:1];

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

  _encodedSize = [(LPImage *)self->_icon _encodedSize];
  _encodedSize2 = [(LPImage *)self->_image _encodedSize];
  _encodedSize3 = [(LPVisualMedia *)self->_video _encodedSize];
  return v9 + v4 + _encodedSize + _encodedSize2 + _encodedSize3 + [(LPAudio *)self->_audio _encodedSize];
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
    selfCopy = self;
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
          _encodedSize = [(LPLinkMetadata *)self _encodedSize];
          v20 = v7;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          reverseObjectEnumerator = [v20 reverseObjectEnumerator];
          v10 = 0;
          v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v11)
          {
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                _encodedSize2 = [*(*(&v26 + 1) + 8 * i) _encodedSize];
                v15 = (_encodedSize2 != 0) & (_encodedSize > v3);
                if (_encodedSize2 != 0 && _encodedSize > v3)
                {
                  v16 = _encodedSize2;
                }

                else
                {
                  v16 = 0;
                }

                _encodedSize -= v16;
                v10 += v15;
              }

              v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v11);
          }

          v4 = v18;
          self = selfCopy;
          v17 = [v20 subarrayWithRange:{0, objc_msgSend(v20, "count") - v10}];

          [(LPLinkMetadata *)selfCopy setValue:v17 forKeyPath:v6];
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
    _title2 = title;
  }

  else
  {
    _title = [(NSURL *)self->_URL _title];

    if (_title)
    {
      _title2 = [(NSURL *)self->_URL _title];
    }

    else
    {
      _title2 = 0;
    }
  }

  return _title2;
}

- (void)setTitle:(NSString *)title
{
  v6 = title;
  objc_storeStrong(&self->_title, title);
  _title = [(NSURL *)self->_URL _title];

  if (!_title)
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
  streamingURL = [(LPVideo *)self->_video streamingURL];

  video = self->_video;
  if (streamingURL)
  {
    streamingURL2 = [(LPVideo *)video streamingURL];
  }

  else
  {
    youTubeURL = [(LPVideo *)video youTubeURL];

    if (youTubeURL)
    {
      streamingURL2 = [(LPVideo *)self->_video youTubeURL];
    }

    else
    {
      streamingURL2 = 0;
    }
  }

  return streamingURL2;
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

  metadata = [(TUConversationActivity *)self->_conversationActivity metadata];
  context = [metadata context];
  typedIdentifier = [context typedIdentifier];
  v2 = [typedIdentifier isEqualToString:@"CPGroupActivityCollaborationContext"];

  return v2;
}

- (BOOL)_isCurrentlyLoading
{
  if ([(LPLinkMetadata *)self _isDeferringAsynchronousLoads])
  {
    LOBYTE(_isLoadingAsynchronousFields) = 1;
  }

  else
  {
    _isLoadingAsynchronousFields = [(LPLinkMetadata *)self _isLoadingAsynchronousFields];
    if (_isLoadingAsynchronousFields)
    {

      LOBYTE(_isLoadingAsynchronousFields) = [(LPLinkMetadata *)self _hasAnyAsynchronousFields];
    }
  }

  return _isLoadingAsynchronousFields;
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

- (void)_addFinishedDeferringAsynchronousLoadHandler:(id)handler
{
  handlerCopy = handler;
  finishedDeferringAsynchronousLoadHandlers = self->_finishedDeferringAsynchronousLoadHandlers;
  aBlock = handlerCopy;
  if (!finishedDeferringAsynchronousLoadHandlers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_finishedDeferringAsynchronousLoadHandlers;
    self->_finishedDeferringAsynchronousLoadHandlers = array;

    finishedDeferringAsynchronousLoadHandlers = self->_finishedDeferringAsynchronousLoadHandlers;
    handlerCopy = aBlock;
  }

  v8 = _Block_copy(handlerCopy);
  [(NSMutableArray *)finishedDeferringAsynchronousLoadHandlers addObject:v8];
}

- (void)_loadAsynchronousFieldsWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
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

    v14 = _Block_copy(handlerCopy);
    [(NSMutableArray *)pendingAsynchronousLoadHandlers addObject:v14];

    v15 = self->_asynchronousLoadGroup;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__LPLinkMetadata__loadAsynchronousFieldsWithUpdateHandler___block_invoke;
    v17[3] = &unk_1E7A35428;
    v17[4] = self;
    v18 = handlerCopy;
    dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v17);
    v16 = v18;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
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

- (BOOL)_loadAsynchronousFieldsWithLoadGroup:(id)group
{
  groupCopy = group;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__LPLinkMetadata__loadAsynchronousFieldsWithLoadGroup___block_invoke;
  v7[3] = &unk_1E7A35898;
  v8 = groupCopy;
  v9 = &v10;
  v7[4] = self;
  v5 = groupCopy;
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

- (void)_enumerateSubstitutableFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"arAsset");
  [(LPLinkMetadata *)self _enumerateAsynchronousFields:fieldsCopy];
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"icon");
  fieldsCopy[2](fieldsCopy, @"image");
  fieldsCopy[2](fieldsCopy, @"video");
  fieldsCopy[2](fieldsCopy, @"alternateImages");
  specialization = self->_specialization;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__LPLinkMetadata__enumerateAsynchronousFields___block_invoke;
  v7[3] = &unk_1E7A358C0;
  v6 = fieldsCopy;
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
  specialization = [(LPLinkMetadata *)self specialization];
  if (specialization)
  {
    specialization2 = [(LPLinkMetadata *)self specialization];
    if ([specialization2 conformsToProtocol:&unk_1F2495850])
    {
      specialization3 = [(LPLinkMetadata *)self specialization];
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        return;
      }

      specialization = [(LPLinkMetadata *)self specialization];
      [specialization populateMetadataForBackwardCompatibility:self];
    }

    else
    {
    }
  }
}

- (void)_decodeAllImagesWithMaximumSize:(CGSize)size
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__LPLinkMetadata__decodeAllImagesWithMaximumSize___block_invoke;
  v3[3] = &unk_1E7A35908;
  v3[4] = self;
  sizeCopy = size;
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

- (id)_initWithSynapseContentItem:(id)item
{
  itemCopy = item;
  linkPreviewMetadata = [itemCopy linkPreviewMetadata];

  if (!linkPreviewMetadata || ([itemCopy linkPreviewMetadata], v6 = objc_claimAutoreleasedReturnValue(), +[LPLinkMetadata metadataWithDataRepresentation:](LPLinkMetadata, "metadataWithDataRepresentation:", v6), selfCopy = objc_claimAutoreleasedReturnValue(), v6, !selfCopy))
  {
    v8 = [(LPLinkMetadata *)self init];
    if (!v8)
    {
      v12 = 0;
      goto LABEL_7;
    }

    self = v8;
    itemURL = [itemCopy itemURL];
    [(LPLinkMetadata *)self setOriginalURL:itemURL];

    itemURL2 = [itemCopy itemURL];
    [(LPLinkMetadata *)self setURL:itemURL2];

    displayTitle = [itemCopy displayTitle];
    [(LPLinkMetadata *)self setTitle:displayTitle];

    selfCopy = self;
  }

  [selfCopy setOriginatingSynapseContentItem:itemCopy];
  v12 = selfCopy;

LABEL_7:
  return v12;
}

- (id)_initWithConversationActivity:(id)activity
{
  activityCopy = activity;
  metadata = [activityCopy metadata];
  linkMetadatablob = [metadata linkMetadatablob];

  if (!linkMetadatablob || ([metadata linkMetadatablob], v7 = objc_claimAutoreleasedReturnValue(), +[LPLinkMetadata metadataWithDataRepresentation:](LPLinkMetadata, "metadataWithDataRepresentation:", v7), selfCopy = objc_claimAutoreleasedReturnValue(), v7, !selfCopy))
  {
    v9 = [(LPLinkMetadata *)self init];
    if (!v9)
    {
      v18 = 0;
      goto LABEL_9;
    }

    self = v9;
    title = [metadata title];
    [(LPLinkMetadata *)self setTitle:title];

    subTitle = [metadata subTitle];
    [(LPLinkMetadata *)self setSummary:subTitle];

    imageData = [metadata imageData];

    if (imageData)
    {
      v13 = [LPImage alloc];
      v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
      imageData2 = [metadata imageData];
      v16 = [v14 initWithData:imageData2];
      v17 = [(LPImage *)v13 initWithPlatformImage:v16];
      [(LPLinkMetadata *)self setImage:v17];
    }

    selfCopy = self;
  }

  [selfCopy setConversationActivity:activityCopy];
  v18 = selfCopy;

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
  selfCopy = self;
  [(LPLinkMetadata *)selfCopy setContentImages:0];
  [(LPLinkMetadata *)selfCopy setContentImagesMetadata:0];
  [(LPLinkMetadata *)selfCopy setVideo:0];
  [(LPLinkMetadata *)selfCopy setArAsset:0];
  [(LPLinkMetadata *)selfCopy setSelectedText:0];
}

- (BOOL)_hasMedia
{
  selfCopy = self;
  v3 = sub_1AE9687A8();

  return v3 & 1;
}

- (id)variants
{
  selfCopy = self;
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