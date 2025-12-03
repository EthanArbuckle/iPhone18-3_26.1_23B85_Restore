@interface LPAppleMapsMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (LPAppleMapsMetadataProviderSpecialization)initWithContext:(id)context URLParser:(id)parser;
- (id)mapMetadataWithDirections:(id)directions;
- (id)mapMetadataWithGuide:(id)guide snapshot:(id)snapshot;
- (id)mapMetadataWithLocationInfo:(id)info snapshot:(id)snapshot;
- (id)mapMetadataWithPublisher:(id)publisher;
- (id)mapMetadataWithSearch:(id)search snapshot:(id)snapshot;
- (void)_internalPostProcessResolvedMetadataWithCompletionHandler:(id)handler;
- (void)complete;
- (void)fail;
- (void)start;
@end

@implementation LPAppleMapsMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  postRedirectURL = [contextCopy postRedirectURL];
  if ([LPPresentationSpecializations isAppleMapsURL:postRedirectURL])
  {
  }

  else
  {
    postRedirectURL2 = [contextCopy postRedirectURL];
    v6 = [LPPresentationSpecializations isAppleMapsCollectionURL:postRedirectURL2];

    if (!v6)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = get_MKURLParserClass(void)::softClass;
  v18 = get_MKURLParserClass(void)::softClass;
  if (!get_MKURLParserClass(void)::softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL20get_MKURLParserClassv_block_invoke;
    v14[3] = &unk_1E7A35518;
    v14[4] = &v15;
    ___ZL20get_MKURLParserClassv_block_invoke(v14);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [v7 alloc];
  postRedirectURL3 = [contextCopy postRedirectURL];
  v11 = [v9 initWithURL:postRedirectURL3];

  if ([v11 parseIncludingCustomParameters:1])
  {
    v12 = [[LPAppleMapsMetadataProviderSpecialization alloc] initWithContext:contextCopy URLParser:v11];
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (LPAppleMapsMetadataProviderSpecialization)initWithContext:(id)context URLParser:(id)parser
{
  v8.receiver = self;
  v8.super_class = LPAppleMapsMetadataProviderSpecialization;
  parser = [(LPMetadataProviderSpecialization *)&v8 initWithContext:context, parser];
  v5 = parser;
  if (parser)
  {
    v6 = parser;
  }

  return v5;
}

- (void)start
{
  objc_initWeak(&location, self);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getMKLinkPreviewMetadataRequestClass(void)::softClass;
  v18 = getMKLinkPreviewMetadataRequestClass(void)::softClass;
  if (!getMKLinkPreviewMetadataRequestClass(void)::softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL36getMKLinkPreviewMetadataRequestClassv_block_invoke;
    v14[3] = &unk_1E7A35518;
    v14[4] = &v15;
    ___ZL36getMKLinkPreviewMetadataRequestClassv_block_invoke(v14);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = [v3 alloc];
  context = [(LPMetadataProviderSpecialization *)self context];
  postRedirectURL = [context postRedirectURL];
  v8 = [v5 initWithURL:postRedirectURL];
  request = self->_request;
  self->_request = v8;

  v10 = self->_request;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke;
  v11[3] = &unk_1E7A35BD0;
  objc_copyWeak(&v12, &location);
  [(MKLinkPreviewMetadataRequest *)v10 getMetadataWithCompletionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke_2;
  block[3] = &unk_1E7A35BA8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      [WeakRetained fail];
      goto LABEL_16;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v4 = getMKLinkPreviewDirectionsMetadataClass(void)::softClass;
    v28 = getMKLinkPreviewDirectionsMetadataClass(void)::softClass;
    if (!getMKLinkPreviewDirectionsMetadataClass(void)::softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___ZL39getMKLinkPreviewDirectionsMetadataClassv_block_invoke;
      v23 = &unk_1E7A35518;
      v24 = &v25;
      ___ZL39getMKLinkPreviewDirectionsMetadataClassv_block_invoke(&v20);
      v4 = v26[3];
    }

    v5 = v4;
    _Block_object_dispose(&v25, 8);
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 mapMetadataWithDirections:*(a1 + 40)];
      v7 = &OBJC_IVAR___LPAppleMapsMetadataProviderSpecialization__mapMetadata;
LABEL_12:
      v10 = *v7;
      v11 = *(v3 + v10);
      *(v3 + v10) = v6;

      [v3 complete];
      goto LABEL_16;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v8 = getMKLinkPreviewPublisherMetadataClass(void)::softClass;
    v28 = getMKLinkPreviewPublisherMetadataClass(void)::softClass;
    if (!getMKLinkPreviewPublisherMetadataClass(void)::softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___ZL38getMKLinkPreviewPublisherMetadataClassv_block_invoke;
      v23 = &unk_1E7A35518;
      v24 = &v25;
      ___ZL38getMKLinkPreviewPublisherMetadataClassv_block_invoke(&v20);
      v8 = v26[3];
    }

    v9 = v8;
    _Block_object_dispose(&v25, 8);
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 mapMetadataWithPublisher:*(a1 + 40)];
      v7 = &OBJC_IVAR___LPAppleMapsMetadataProviderSpecialization__publisherMetadata;
      goto LABEL_12;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v12 = getMKLinkPreviewSnapshotRequestClass(void)::softClass;
    v28 = getMKLinkPreviewSnapshotRequestClass(void)::softClass;
    if (!getMKLinkPreviewSnapshotRequestClass(void)::softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___ZL36getMKLinkPreviewSnapshotRequestClassv_block_invoke;
      v23 = &unk_1E7A35518;
      v24 = &v25;
      ___ZL36getMKLinkPreviewSnapshotRequestClassv_block_invoke(&v20);
      v12 = v26[3];
    }

    v13 = v12;
    _Block_object_dispose(&v25, 8);
    v14 = [[v12 alloc] initWithMetadata:*(a1 + 40)];
    v15 = v3[5];
    v3[5] = v14;

    v16 = v3[5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke_3;
    v17[3] = &unk_1E7A35B80;
    objc_copyWeak(&v19, (a1 + 48));
    v18 = *(a1 + 40);
    [v16 getSnapshotWithCompletionHandler:v17];

    objc_destroyWeak(&v19);
  }

LABEL_16:
}

void __50__LPAppleMapsMetadataProviderSpecialization_start__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v8 = getMKLinkPreviewFrameMetadataClass(void)::softClass;
    v31 = getMKLinkPreviewFrameMetadataClass(void)::softClass;
    if (!getMKLinkPreviewFrameMetadataClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = ___ZL34getMKLinkPreviewFrameMetadataClassv_block_invoke;
      v34 = &unk_1E7A35518;
      v35 = &v28;
      ___ZL34getMKLinkPreviewFrameMetadataClassv_block_invoke(&buf);
      v8 = v29[3];
    }

    v9 = v8;
    _Block_object_dispose(&v28, 8);
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if (isKindOfClass)
    {
      goto LABEL_5;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v13 = getMKLinkPreviewSearchMetadataClass(void)::softClass;
    v31 = getMKLinkPreviewSearchMetadataClass(void)::softClass;
    if (!getMKLinkPreviewSearchMetadataClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = ___ZL35getMKLinkPreviewSearchMetadataClassv_block_invoke;
      v34 = &unk_1E7A35518;
      v35 = &v28;
      ___ZL35getMKLinkPreviewSearchMetadataClassv_block_invoke(&buf);
      v13 = v29[3];
    }

    v14 = v13;
    _Block_object_dispose(&v28, 8);
    if (objc_opt_isKindOfClass())
    {
      v12 = [WeakRetained mapMetadataWithSearch:*(a1 + 32) snapshot:{v5, v28}];
      goto LABEL_10;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v18 = getMKLinkPreviewPlaceMetadataClass(void)::softClass;
    v31 = getMKLinkPreviewPlaceMetadataClass(void)::softClass;
    if (!getMKLinkPreviewPlaceMetadataClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = ___ZL34getMKLinkPreviewPlaceMetadataClassv_block_invoke;
      v34 = &unk_1E7A35518;
      v35 = &v28;
      ___ZL34getMKLinkPreviewPlaceMetadataClassv_block_invoke(&buf);
      v18 = v29[3];
    }

    v19 = v18;
    _Block_object_dispose(&v28, 8);
    v20 = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if (v20)
    {
      goto LABEL_5;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v21 = getMKLinkPreviewLookAroundMetadataClass(void)::softClass;
    v31 = getMKLinkPreviewLookAroundMetadataClass(void)::softClass;
    if (!getMKLinkPreviewLookAroundMetadataClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = ___ZL39getMKLinkPreviewLookAroundMetadataClassv_block_invoke;
      v34 = &unk_1E7A35518;
      v35 = &v28;
      ___ZL39getMKLinkPreviewLookAroundMetadataClassv_block_invoke(&buf);
      v21 = v29[3];
    }

    v22 = v21;
    _Block_object_dispose(&v28, 8);
    v23 = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if (v23)
    {
LABEL_5:
      v12 = [WeakRetained mapMetadataWithLocationInfo:v11 snapshot:{v5, v28}];
LABEL_10:
      v15 = &OBJC_IVAR___LPAppleMapsMetadataProviderSpecialization__mapMetadata;
LABEL_11:
      v16 = *v15;
      v17 = *&WeakRetained[v16];
      *&WeakRetained[v16] = v12;

      [WeakRetained complete];
      goto LABEL_12;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v24 = getMKLinkPreviewGuidesMetadataClass(void)::softClass;
    v31 = getMKLinkPreviewGuidesMetadataClass(void)::softClass;
    if (!getMKLinkPreviewGuidesMetadataClass(void)::softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v33 = ___ZL35getMKLinkPreviewGuidesMetadataClassv_block_invoke;
      v34 = &unk_1E7A35518;
      v35 = &v28;
      ___ZL35getMKLinkPreviewGuidesMetadataClassv_block_invoke(&buf);
      v24 = v29[3];
    }

    v25 = v24;
    _Block_object_dispose(&v28, 8);
    if (objc_opt_isKindOfClass())
    {
      v12 = [WeakRetained mapMetadataWithGuide:*(a1 + 32) snapshot:{v5, v28}];
      v15 = &OBJC_IVAR___LPAppleMapsMetadataProviderSpecialization__collectionMetadata;
      goto LABEL_11;
    }

    v26 = LPLogChannelFetching();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_1AE886000, v26, OS_LOG_TYPE_DEFAULT, "LPAppleMapsMetadataProviderSpecialization: unhandled map metadata class '%@'", &buf, 0xCu);
    }

    [WeakRetained fail];
  }

LABEL_12:
}

- (id)mapMetadataWithDirections:(id)directions
{
  directionsCopy = directions;
  v4 = objc_alloc_init(LPMapMetadata);
  transportType = [directionsCopy transportType];
  [(LPMapMetadata *)v4 setTransportType:transportType];

  sourceName = [directionsCopy sourceName];
  [(LPMapMetadata *)v4 setDirectionsSourceLocationName:sourceName];

  sourceAddress = [directionsCopy sourceAddress];
  [(LPMapMetadata *)v4 setDirectionsSourceAddress:sourceAddress];

  sourceAddressComponents = [directionsCopy sourceAddressComponents];
  [(LPMapMetadata *)v4 setDirectionsSourceAddressComponents:sourceAddressComponents];

  destinationName = [directionsCopy destinationName];
  [(LPMapMetadata *)v4 setDirectionsDestinationLocationName:destinationName];

  destinationAddress = [directionsCopy destinationAddress];
  [(LPMapMetadata *)v4 setDirectionsDestinationAddress:destinationAddress];

  destinationAddressComponents = [directionsCopy destinationAddressComponents];
  [(LPMapMetadata *)v4 setDirectionsDestinationAddressComponents:destinationAddressComponents];

  distance = [directionsCopy distance];
  [(LPMapMetadata *)v4 setDistance:distance];

  return v4;
}

- (id)mapMetadataWithSearch:(id)search snapshot:(id)snapshot
{
  searchCopy = search;
  v7 = [(LPAppleMapsMetadataProviderSpecialization *)self mapMetadataWithLocationInfo:searchCopy snapshot:snapshot];
  searchQuery = [searchCopy searchQuery];
  [v7 setSearchQuery:searchQuery];

  return v7;
}

- (id)mapMetadataWithLocationInfo:(id)info snapshot:(id)snapshot
{
  infoCopy = info;
  snapshotCopy = snapshot;
  v7 = objc_alloc_init(LPMapMetadata);
  -[LPMapMetadata setIsPointOfInterest:](v7, "setIsPointOfInterest:", [infoCopy isPointOfInterest]);
  [infoCopy coordinate];
  [(LPMapMetadata *)v7 setLocation:?];
  name = [infoCopy name];
  [(LPMapMetadata *)v7 setName:name];

  address = [infoCopy address];
  [(LPMapMetadata *)v7 setAddress:address];

  addressComponents = [infoCopy addressComponents];
  [(LPMapMetadata *)v7 setAddressComponents:addressComponents];

  category = [infoCopy category];
  [(LPMapMetadata *)v7 setCategory:category];

  lightImage = [snapshotCopy lightImage];

  if (lightImage)
  {
    v13 = [LPImage alloc];
    lightImage2 = [snapshotCopy lightImage];
    v15 = [lightImage2 _lp_imageForcingUserInterfaceStyle:0];
    v16 = [(LPImage *)v13 initWithPlatformImage:v15];
    [(LPMapMetadata *)v7 setImage:v16];
  }

  darkImage = [snapshotCopy darkImage];

  if (darkImage)
  {
    v18 = [LPImage alloc];
    darkImage2 = [snapshotCopy darkImage];
    v20 = [darkImage2 _lp_imageForcingUserInterfaceStyle:1];
    v21 = [(LPImage *)v18 initWithPlatformImage:v20];
    [(LPMapMetadata *)v7 setDarkImage:v21];
  }

  return v7;
}

- (id)mapMetadataWithGuide:(id)guide snapshot:(id)snapshot
{
  guideCopy = guide;
  snapshotCopy = snapshot;
  v7 = objc_alloc_init(LPMapCollectionMetadata);
  name = [guideCopy name];
  [(LPMapCollectionMetadata *)v7 setName:name];

  -[LPMapCollectionMetadata setNumberOfItems:](v7, "setNumberOfItems:", [guideCopy numberOfItems]);
  addresses = [guideCopy addresses];
  [(LPMapCollectionMetadata *)v7 setAddresses:addresses];

  publisherName = [guideCopy publisherName];
  [(LPMapCollectionMetadata *)v7 setPublisherName:publisherName];

  v11 = [LPImage alloc];
  publisherIcon = [guideCopy publisherIcon];
  v13 = [(LPImage *)v11 initWithPlatformImage:publisherIcon];
  [(LPMapCollectionMetadata *)v7 setPublisherIcon:v13];

  lightImage = [snapshotCopy lightImage];

  if (lightImage)
  {
    v15 = [LPImage alloc];
    lightImage2 = [snapshotCopy lightImage];
    v17 = [lightImage2 _lp_imageForcingUserInterfaceStyle:0];
    v18 = [(LPImage *)v15 initWithPlatformImage:v17];
    [(LPMapCollectionMetadata *)v7 setImage:v18];
  }

  darkImage = [snapshotCopy darkImage];

  if (darkImage)
  {
    v20 = [LPImage alloc];
    darkImage2 = [snapshotCopy darkImage];
    v22 = [darkImage2 _lp_imageForcingUserInterfaceStyle:1];
    v23 = [(LPImage *)v20 initWithPlatformImage:v22];
    [(LPMapCollectionMetadata *)v7 setDarkImage:v23];
  }

  return v7;
}

- (id)mapMetadataWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  v4 = objc_alloc_init(LPMapCollectionPublisherMetadata);
  name = [publisherCopy name];
  [(LPMapCollectionPublisherMetadata *)v4 setName:name];

  -[LPMapCollectionPublisherMetadata setNumberOfPublishedCollections:](v4, "setNumberOfPublishedCollections:", [publisherCopy numberOfPublishedCollections]);
  v6 = [LPImage alloc];
  icon = [publisherCopy icon];
  v8 = [(LPImage *)v6 initWithPlatformImage:icon];
  [(LPMapCollectionPublisherMetadata *)v4 setIcon:v8];

  return v4;
}

- (void)fail
{
  [(LPAppleMapsMetadataProviderSpecialization *)self cancel];
  delegate = [(LPMetadataProviderSpecialization *)self delegate];
  [delegate metadataProviderSpecializationDidFail:self];
}

- (void)complete
{
  mapMetadata = self->_mapMetadata;
  if (!mapMetadata)
  {
    mapMetadata = self->_collectionMetadata;
    if (!mapMetadata)
    {
      mapMetadata = self->_publisherMetadata;
    }
  }

  v5 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:mapMetadata];
  delegate = [(LPMetadataProviderSpecialization *)self delegate];
  [delegate metadataProviderSpecialization:self didCompleteWithMetadata:v5];
}

- (void)_internalPostProcessResolvedMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  image = [(LPMapMetadata *)self->_mapMetadata image];
  [image _computeDominantColorForProperties];

  darkImage = [(LPMapMetadata *)self->_mapMetadata darkImage];
  [darkImage _computeDominantColorForProperties];

  handlerCopy[2]();
}

@end