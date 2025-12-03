@interface SHMediaLibraryTrack
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTrack:(id)track;
- (CLLocation)location;
- (CLLocationCoordinate2D)locationCoordinate;
- (NSSet)labels;
- (SHMediaItem)mediaItemValue;
- (SHMediaLibraryTrack)initWithCoder:(id)coder;
- (SHMediaLibraryTrack)initWithIdentifier:(id)identifier builder:(id)builder;
- (SHMediaLibraryTrack)initWithIdentifier:(id)identifier metadata:(id)metadata builder:(id)builder;
- (SHMediaLibraryTrack)initWithMediaItem:(id)item;
- (SHMediaLibraryTrack)initWithTrackSyncID:(id)d creationDate:(id)date releaseDate:(id)releaseDate groupSyncID:(id)iD labels:(id)labels lastUpdatedDate:(id)updatedDate providerIdentifier:(id)identifier trackMetadata:(id)self0 providerName:(id)self1 shazamKey:(id)self2 recognitionID:(id)self3 title:(id)self4 subtitle:(id)self5 artworkURL:(id)self6 appleMusicID:(id)self7 appleMusicURL:(id)self8 shazamURL:(id)self9 videoURL:(id)videoURL isExplicit:(BOOL)explicit albumName:(id)albumName isrc:(id)isrc shazamCount:(int64_t)count locationCoordinate:(CLLocationCoordinate2D)coordinate genres:(id)genres rawSongResponse:(id)response;
- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels;
- (id)copyWithZone:(_NSZone *)zone;
- (id)platformLabel;
- (unint64_t)hash;
- (void)addLabel:(id)label;
- (void)addPlatformLabel;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithBuilderBlock:(id)block;
- (void)updateWithMediaItem:(id)item;
@end

@implementation SHMediaLibraryTrack

- (SHMediaLibraryTrack)initWithIdentifier:(id)identifier builder:(id)builder
{
  builderCopy = builder;
  v7 = [(SHMediaLibraryTrack *)self _initWithIdentifier:identifier metadata:0 labels:MEMORY[0x277CBEBF8]];
  [(SHMediaLibraryTrack *)v7 updateWithBuilderBlock:builderCopy];

  return v7;
}

- (SHMediaLibraryTrack)initWithIdentifier:(id)identifier metadata:(id)metadata builder:(id)builder
{
  builderCopy = builder;
  v9 = [(SHMediaLibraryTrack *)self _initWithIdentifier:identifier metadata:metadata labels:MEMORY[0x277CBEBF8]];
  [(SHMediaLibraryTrack *)v9 updateWithBuilderBlock:builderCopy];

  return v9;
}

- (SHMediaLibraryTrack)initWithMediaItem:(id)item
{
  itemCopy = item;
  shazamID = [itemCopy shazamID];

  if (!shazamID)
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_ERROR, "A media item must have a shazamID when creating a library track", buf, 2u);
    }

    goto LABEL_13;
  }

  v6 = [SHShazamKey alloc];
  shazamID2 = [itemCopy shazamID];
  v8 = [(SHShazamKey *)v6 initWithKey:shazamID2];

  if (!v8)
  {
    v19 = sh_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_230F52000, v19, OS_LOG_TYPE_ERROR, "A media item must have a valid (numeric only) format when creating a library track", v21, 2u);
    }

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  identifier = [itemCopy identifier];
  uUIDString = [identifier UUIDString];
  self = [(SHMediaLibraryTrack *)self _initWithIdentifier:uUIDString metadata:0 labels:MEMORY[0x277CBEBF8]];

  [(SHMediaLibraryTrack *)self setShazamKey:v8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID UUIDString];
  [(SHMediaLibraryTrack *)self setRecognitionIdentifier:uUIDString2];

  providerIdentifier = [itemCopy providerIdentifier];
  [(SHMediaLibraryTrack *)self setProviderIdentifier:providerIdentifier];

  creationDate = [itemCopy creationDate];

  if (creationDate)
  {
    creationDate2 = [itemCopy creationDate];
    [(SHMediaLibraryTrack *)self setCreationDate:creationDate2];
  }

  matchLocation = [itemCopy matchLocation];
  [SHLocationTransformer coordinateFromLocation:matchLocation];
  [(SHMediaLibraryTrack *)self setLocationCoordinate:?];

  [(SHMediaLibraryTrack *)self updateWithMediaItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(SHMediaLibraryTrack *)self setLastUpdatedDate:date];
  }

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (SHMediaLibraryTrack)initWithTrackSyncID:(id)d creationDate:(id)date releaseDate:(id)releaseDate groupSyncID:(id)iD labels:(id)labels lastUpdatedDate:(id)updatedDate providerIdentifier:(id)identifier trackMetadata:(id)self0 providerName:(id)self1 shazamKey:(id)self2 recognitionID:(id)self3 title:(id)self4 subtitle:(id)self5 artworkURL:(id)self6 appleMusicID:(id)self7 appleMusicURL:(id)self8 shazamURL:(id)self9 videoURL:(id)videoURL isExplicit:(BOOL)explicit albumName:(id)albumName isrc:(id)isrc shazamCount:(int64_t)count locationCoordinate:(CLLocationCoordinate2D)coordinate genres:(id)genres rawSongResponse:(id)response
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v76 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  releaseDateCopy = releaseDate;
  iDCopy = iD;
  labelsCopy = labels;
  updatedDateCopy = updatedDate;
  identifierCopy = identifier;
  metadataCopy = metadata;
  nameCopy = name;
  keyCopy = key;
  recognitionIDCopy = recognitionID;
  titleCopy = title;
  subtitleCopy = subtitle;
  lCopy = l;
  musicIDCopy = musicID;
  rLCopy = rL;
  uRLCopy = uRL;
  videoURLCopy = videoURL;
  albumNameCopy = albumName;
  isrcCopy = isrc;
  genresCopy = genres;
  responseCopy = response;
  v58 = metadataCopy;
  if (metadataCopy)
  {
    v38 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:metadataCopy];
  }

  else
  {
    v38 = 0;
  }

  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(labelsCopy, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = labelsCopy;
  v41 = [v40 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v72;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v72 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [[SHMediaLibraryLabel alloc] initWithName:*(*(&v71 + 1) + 8 * i)];
        [v39 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v42);
  }

  v46 = [v39 copy];
  v47 = [(SHMediaLibraryTrack *)self _initWithIdentifier:dCopy metadata:v38 labels:v46];

  if (keyCopy)
  {
    v48 = [[SHShazamKey alloc] initWithKey:keyCopy];
    [(SHMediaLibraryTrack *)v47 setShazamKey:v48];
  }

  [(SHMediaLibraryTrack *)v47 setProviderIdentifier:identifierCopy];
  [(SHMediaLibraryTrack *)v47 setProviderName:nameCopy];
  [(SHMediaLibraryTrack *)v47 setCreationDate:dateCopy];
  [(SHMediaLibraryTrack *)v47 setRecognitionIdentifier:recognitionIDCopy];
  [(SHMediaLibraryTrack *)v47 setTitle:titleCopy];
  [(SHMediaLibraryTrack *)v47 setSubtitle:subtitleCopy];
  [(SHMediaLibraryTrack *)v47 setArtworkURL:lCopy];
  [(SHMediaLibraryTrack *)v47 setShazamURL:uRLCopy];
  [(SHMediaLibraryTrack *)v47 setAssociatedGroupIdentifier:iDCopy];
  [(SHMediaLibraryTrack *)v47 setLocationCoordinate:latitude, longitude];
  [(SHMediaLibraryTrack *)v47 setAlbumName:albumNameCopy];
  [(SHMediaLibraryTrack *)v47 setAppleMusicID:musicIDCopy];
  [(SHMediaLibraryTrack *)v47 setAppleMusicURL:rLCopy];
  [(SHMediaLibraryTrack *)v47 setExplicitContent:explicit];
  [(SHMediaLibraryTrack *)v47 setGenres:genresCopy];
  [(SHMediaLibraryTrack *)v47 setIsrc:isrcCopy];
  [(SHMediaLibraryTrack *)v47 setRawSongResponse:responseCopy];
  [(SHMediaLibraryTrack *)v47 setReleaseDate:releaseDateCopy];
  [(SHMediaLibraryTrack *)v47 setShazamCount:count];
  [(SHMediaLibraryTrack *)v47 setVideoURL:videoURLCopy];
  [(SHMediaLibraryTrack *)v47 setLastUpdatedDate:updatedDateCopy];

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)_initWithIdentifier:(id)identifier metadata:(id)metadata labels:(id)labels
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  labelsCopy = labels;
  v19.receiver = self;
  v19.super_class = SHMediaLibraryTrack;
  v11 = [(SHMediaLibraryTrack *)&v19 init];
  if (v11)
  {
    precomposedStringWithCanonicalMapping = [identifierCopy precomposedStringWithCanonicalMapping];
    v13 = *(v11 + 2);
    *(v11 + 2) = precomposedStringWithCanonicalMapping;

    objc_storeStrong(v11 + 3, metadata);
    date = [MEMORY[0x277CBEAA8] date];
    v15 = *(v11 + 4);
    *(v11 + 4) = date;

    v16 = [MEMORY[0x277CBEB58] setWithArray:labelsCopy];
    v17 = *(v11 + 14);
    *(v11 + 14) = v16;

    *(v11 + 200) = *MEMORY[0x277CE4278];
    [v11 addPlatformLabel];
  }

  return v11;
}

- (void)updateWithBuilderBlock:(id)block
{
  blockCopy = block;
  v5 = [SHMediaLibraryTrackBuilder alloc];
  creationDate = [(SHMediaLibraryTrack *)self creationDate];
  v20 = [(SHMediaLibraryTrackBuilder *)v5 initWithCreationDate:creationDate];

  blockCopy[2](blockCopy, v20);
  creationDate2 = [(SHMediaLibraryTrackBuilder *)v20 creationDate];
  [(SHMediaLibraryTrack *)self setCreationDate:creationDate2];

  title = [(SHMediaLibraryTrackBuilder *)v20 title];
  [(SHMediaLibraryTrack *)self setTitle:title];

  subtitle = [(SHMediaLibraryTrackBuilder *)v20 subtitle];
  [(SHMediaLibraryTrack *)self setSubtitle:subtitle];

  providerName = [(SHMediaLibraryTrackBuilder *)v20 providerName];
  [(SHMediaLibraryTrack *)self setProviderName:providerName];

  providerIdentifier = [(SHMediaLibraryTrackBuilder *)v20 providerIdentifier];
  [(SHMediaLibraryTrack *)self setProviderIdentifier:providerIdentifier];

  recognitionIdentifier = [(SHMediaLibraryTrackBuilder *)v20 recognitionIdentifier];
  [(SHMediaLibraryTrack *)self setRecognitionIdentifier:recognitionIdentifier];

  shazamKey = [(SHMediaLibraryTrackBuilder *)v20 shazamKey];
  [(SHMediaLibraryTrack *)self setShazamKey:shazamKey];

  location = [(SHMediaLibraryTrackBuilder *)v20 location];
  [SHLocationTransformer coordinateFromLocation:location];
  [(SHMediaLibraryTrack *)self setLocationCoordinate:?];

  v15 = MEMORY[0x277CBEB58];
  labels = [(SHMediaLibraryTrackBuilder *)v20 labels];
  v17 = [v15 setWithSet:labels];
  [(SHMediaLibraryTrack *)self setLabelSet:v17];

  artworkURL = [(SHMediaLibraryTrackBuilder *)v20 artworkURL];
  [(SHMediaLibraryTrack *)self setArtworkURL:artworkURL];

  shazamURL = [(SHMediaLibraryTrackBuilder *)v20 shazamURL];
  [(SHMediaLibraryTrack *)self setShazamURL:shazamURL];

  [(SHMediaLibraryTrack *)self addPlatformLabel];
}

- (void)updateWithMediaItem:(id)item
{
  itemCopy = item;
  shazamID = [itemCopy shazamID];

  if (shazamID)
  {
    v5 = [SHShazamKey alloc];
    shazamID2 = [itemCopy shazamID];
    v7 = [(SHShazamKey *)v5 initWithKey:shazamID2];

    if (v7)
    {
      [(SHMediaLibraryTrack *)self setShazamKey:v7];
    }
  }

  title = [itemCopy title];
  [(SHMediaLibraryTrack *)self setTitle:title];

  subtitle = [itemCopy subtitle];
  if (subtitle)
  {
    [(SHMediaLibraryTrack *)self setSubtitle:subtitle];
  }

  else
  {
    artist = [itemCopy artist];
    [(SHMediaLibraryTrack *)self setSubtitle:artist];
  }

  artworkURL = [itemCopy artworkURL];
  [(SHMediaLibraryTrack *)self setArtworkURL:artworkURL];

  webURL = [itemCopy webURL];
  [(SHMediaLibraryTrack *)self setShazamURL:webURL];

  albumName = [itemCopy albumName];
  [(SHMediaLibraryTrack *)self setAlbumName:albumName];

  appleMusicID = [itemCopy appleMusicID];
  [(SHMediaLibraryTrack *)self setAppleMusicID:appleMusicID];

  appleMusicURL = [itemCopy appleMusicURL];
  [(SHMediaLibraryTrack *)self setAppleMusicURL:appleMusicURL];

  -[SHMediaLibraryTrack setExplicitContent:](self, "setExplicitContent:", [itemCopy explicitContent]);
  genres = [itemCopy genres];
  [(SHMediaLibraryTrack *)self setGenres:genres];

  isrc = [itemCopy isrc];
  [(SHMediaLibraryTrack *)self setIsrc:isrc];

  _rawResponseSongsData = [itemCopy _rawResponseSongsData];
  [(SHMediaLibraryTrack *)self setRawSongResponse:_rawResponseSongsData];

  releaseDate = [itemCopy releaseDate];
  [(SHMediaLibraryTrack *)self setReleaseDate:releaseDate];

  -[SHMediaLibraryTrack setShazamCount:](self, "setShazamCount:", [itemCopy shazamCount]);
  videoURL = [itemCopy videoURL];
  [(SHMediaLibraryTrack *)self setVideoURL:videoURL];
}

- (NSSet)labels
{
  labelSet = [(SHMediaLibraryTrack *)self labelSet];
  v3 = [labelSet copy];

  return v3;
}

- (CLLocation)location
{
  [(SHMediaLibraryTrack *)self locationCoordinate];

  return [SHLocationTransformer locationFromCoordinate:?];
}

- (SHMediaItem)mediaItemValue
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  identifier = [(SHMediaLibraryTrack *)self identifier];
  v6 = [v4 initWithUUIDString:identifier];
  [dictionary setValue:v6 forKey:@"sh_identifier"];

  creationDate = [(SHMediaLibraryTrack *)self creationDate];
  [dictionary setValue:creationDate forKey:@"sh_creationDate"];

  shazamKey = [(SHMediaLibraryTrack *)self shazamKey];
  validatedKey = [shazamKey validatedKey];
  [dictionary setValue:validatedKey forKey:@"sh_shazamID"];

  title = [(SHMediaLibraryTrack *)self title];
  [dictionary setValue:title forKey:@"sh_title"];

  subtitle = [(SHMediaLibraryTrack *)self subtitle];
  [dictionary setValue:subtitle forKey:@"sh_subtitle"];

  subtitle2 = [(SHMediaLibraryTrack *)self subtitle];
  [dictionary setValue:subtitle2 forKey:@"sh_artist"];

  artworkURL = [(SHMediaLibraryTrack *)self artworkURL];
  [dictionary setValue:artworkURL forKey:@"sh_artworkURL"];

  shazamURL = [(SHMediaLibraryTrack *)self shazamURL];
  [dictionary setValue:shazamURL forKey:@"sh_webURL"];

  providerIdentifier = [(SHMediaLibraryTrack *)self providerIdentifier];
  [dictionary setValue:providerIdentifier forKey:@"sh_providerIdentifier"];

  albumName = [(SHMediaLibraryTrack *)self albumName];
  [dictionary setValue:albumName forKey:@"sh_albumName"];

  appleMusicID = [(SHMediaLibraryTrack *)self appleMusicID];
  [dictionary setValue:appleMusicID forKey:@"sh_appleMusicID"];

  appleMusicURL = [(SHMediaLibraryTrack *)self appleMusicURL];
  [dictionary setValue:appleMusicURL forKey:@"sh_appleMusicURL"];

  genres = [(SHMediaLibraryTrack *)self genres];
  [dictionary setValue:genres forKey:@"sh_genres"];

  isrc = [(SHMediaLibraryTrack *)self isrc];
  [dictionary setValue:isrc forKey:@"sh_isrc"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SHMediaLibraryTrack explicitContent](self, "explicitContent")}];
  [dictionary setValue:v21 forKey:@"sh_explicitContent"];

  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SHMediaLibraryTrack shazamCount](self, "shazamCount")}];
  [dictionary setValue:v22 forKey:@"sh_shazamCount"];

  releaseDate = [(SHMediaLibraryTrack *)self releaseDate];
  [dictionary setValue:releaseDate forKey:@"sh_releaseDate"];

  videoURL = [(SHMediaLibraryTrack *)self videoURL];
  [dictionary setValue:videoURL forKey:@"sh_videoURL"];

  [(SHMediaLibraryTrack *)self locationCoordinate];
  v25 = [SHLocationTransformer valueForCoordinate:?];
  [dictionary setValue:v25 forKey:@"sh_matchLocationCoordinate"];

  v26 = [dictionary copy];
  v27 = [SHMediaItem mediaItemWithProperties:v26];

  rawSongResponse = [(SHMediaLibraryTrack *)self rawSongResponse];
  [v27 set_rawResponseSongsData:rawSongResponse];

  return v27;
}

- (SHMediaLibraryTrack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v64.receiver = self;
  v64.super_class = SHMediaLibraryTrack;
  v5 = [(SHMediaLibraryTrack *)&v64 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackMetadata"];
    if (v6)
    {
      v7 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v6];
      metadata = v5->_metadata;
      v5->_metadata = v7;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackShazamKey"];
    if (v9)
    {
      v10 = [[SHShazamKey alloc] initWithKey:v9];
      shazamKey = v5->_shazamKey;
      v5->_shazamKey = v10;
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackRecognitionIdentifierKey"];
    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackProviderIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackProviderName"];
    providerName = v5->_providerName;
    v5->_providerName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackTitle"];
    title = v5->_title;
    v5->_title = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackAssociatedGroupIdentifier"];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackArtworkURL"];
    artworkURL = v5->_artworkURL;
    v5->_artworkURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackShazamURL"];
    shazamURL = v5->_shazamURL;
    v5->_shazamURL = v30;

    [coderCopy decodeDoubleForKey:@"SHLibraryTrackLocationLatitude"];
    v33 = v32;
    [coderCopy decodeDoubleForKey:@"SHLibraryTrackLocationLongitude"];
    v5->_locationCoordinate = CLLocationCoordinate2DMake(v33, v34);
    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"SHLibraryTrackLibrarySet"];
    v39 = [v38 mutableCopy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAlbumName"];
    albumName = v5->_albumName;
    v5->_albumName = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAppleMusicURL"];
    appleMusicURL = v5->_appleMusicURL;
    v5->_appleMusicURL = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAppleMusicID"];
    appleMusicID = v5->_appleMusicID;
    v5->_appleMusicID = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackISRC"];
    isrc = v5->_isrc;
    v5->_isrc = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackReleaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackVideoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v51;

    v5->_explicitContent = [coderCopy decodeBoolForKey:@"SHMediaLibraryTrackExplicitContent"];
    v5->_shazamCount = [coderCopy decodeInt64ForKey:@"SHMediaLibraryTrackShazamCount"];
    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackLastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackRawSongResponseData"];
    rawSongResponse = v5->_rawSongResponse;
    v5->_rawSongResponse = v55;

    v57 = MEMORY[0x277CBEB98];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"SHMediaLibraryTrackGenres"];
    genres = v5->_genres;
    v5->_genres = v60;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_identifier forKey:@"SHLibraryTrackIdentifier"];
  [coderCopy encodeObject:self->_recognitionIdentifier forKey:@"SHLibraryTrackRecognitionIdentifierKey"];
  validatedKey = [(SHShazamKey *)self->_shazamKey validatedKey];
  [coderCopy encodeObject:validatedKey forKey:@"SHLibraryTrackShazamKey"];

  encodedSystemData = [(SHMediaLibraryItemMetadata *)self->_metadata encodedSystemData];
  [coderCopy encodeObject:encodedSystemData forKey:@"SHLibraryTrackMetadata"];

  [coderCopy encodeObject:self->_providerIdentifier forKey:@"SHLibraryTrackProviderIdentifier"];
  [coderCopy encodeObject:self->_providerName forKey:@"SHLibraryTrackProviderName"];
  [coderCopy encodeObject:self->_creationDate forKey:@"SHLibraryTrackDate"];
  [coderCopy encodeObject:self->_title forKey:@"SHLibraryTrackTitle"];
  [coderCopy encodeObject:self->_subtitle forKey:@"SHLibraryTrackSubtitle"];
  [coderCopy encodeObject:self->_associatedGroupIdentifier forKey:@"SHLibraryTrackAssociatedGroupIdentifier"];
  v7 = [(NSMutableSet *)self->_labelSet copy];
  [coderCopy encodeObject:v7 forKey:@"SHLibraryTrackLibrarySet"];

  [coderCopy encodeObject:self->_artworkURL forKey:@"SHLibraryTrackArtworkURL"];
  [coderCopy encodeObject:self->_shazamURL forKey:@"SHLibraryTrackShazamURL"];
  [coderCopy encodeDouble:@"SHLibraryTrackLocationLatitude" forKey:self->_locationCoordinate.latitude];
  [coderCopy encodeDouble:@"SHLibraryTrackLocationLongitude" forKey:self->_locationCoordinate.longitude];
  [coderCopy encodeObject:self->_albumName forKey:@"SHMediaLibraryTrackAlbumName"];
  [coderCopy encodeObject:self->_appleMusicURL forKey:@"SHMediaLibraryTrackAppleMusicURL"];
  [coderCopy encodeObject:self->_appleMusicID forKey:@"SHMediaLibraryTrackAppleMusicID"];
  [coderCopy encodeObject:self->_genres forKey:@"SHMediaLibraryTrackGenres"];
  [coderCopy encodeObject:self->_isrc forKey:@"SHMediaLibraryTrackISRC"];
  [coderCopy encodeObject:self->_rawSongResponse forKey:@"SHMediaLibraryTrackRawSongResponseData"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"SHMediaLibraryTrackReleaseDate"];
  [coderCopy encodeObject:self->_videoURL forKey:@"SHMediaLibraryTrackVideoURL"];
  [coderCopy encodeBool:self->_explicitContent forKey:@"SHMediaLibraryTrackExplicitContent"];
  [coderCopy encodeInt64:self->_shazamCount forKey:@"SHMediaLibraryTrackShazamCount"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"SHMediaLibraryTrackLastUpdatedDate"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryTrack allocWithZone:?];
  identifier = [(SHMediaLibraryTrack *)self identifier];
  v7 = [identifier copyWithZone:zone];
  metadata = [(SHMediaLibraryTrack *)self metadata];
  v9 = [metadata copyWithZone:zone];
  labels = [(SHMediaLibraryTrack *)self labels];
  allObjects = [labels allObjects];
  v12 = [allObjects copyWithZone:zone];
  v13 = [(SHMediaLibraryTrack *)v5 _initWithIdentifier:v7 metadata:v9 labels:v12];

  recognitionIdentifier = [(SHMediaLibraryTrack *)self recognitionIdentifier];
  v15 = [recognitionIdentifier copyWithZone:zone];
  [v13 setRecognitionIdentifier:v15];

  shazamKey = [(SHMediaLibraryTrack *)self shazamKey];
  v17 = [shazamKey copyWithZone:zone];
  [v13 setShazamKey:v17];

  creationDate = [(SHMediaLibraryTrack *)self creationDate];
  v19 = [creationDate copyWithZone:zone];
  [v13 setCreationDate:v19];

  providerIdentifier = [(SHMediaLibraryTrack *)self providerIdentifier];
  v21 = [providerIdentifier copyWithZone:zone];
  [v13 setProviderIdentifier:v21];

  providerName = [(SHMediaLibraryTrack *)self providerName];
  v23 = [providerName copyWithZone:zone];
  [v13 setProviderName:v23];

  title = [(SHMediaLibraryTrack *)self title];
  v25 = [title copyWithZone:zone];
  [v13 setTitle:v25];

  subtitle = [(SHMediaLibraryTrack *)self subtitle];
  v27 = [subtitle copyWithZone:zone];
  [v13 setSubtitle:v27];

  associatedGroupIdentifier = [(SHMediaLibraryTrack *)self associatedGroupIdentifier];
  v29 = [associatedGroupIdentifier copyWithZone:zone];
  [v13 setAssociatedGroupIdentifier:v29];

  artworkURL = [(SHMediaLibraryTrack *)self artworkURL];
  v31 = [artworkURL copyWithZone:zone];
  [v13 setArtworkURL:v31];

  shazamURL = [(SHMediaLibraryTrack *)self shazamURL];
  v33 = [shazamURL copyWithZone:zone];
  [v13 setShazamURL:v33];

  [(SHMediaLibraryTrack *)self locationCoordinate];
  [v13 setLocationCoordinate:?];
  albumName = [(SHMediaLibraryTrack *)self albumName];
  v35 = [albumName copyWithZone:zone];
  [v13 setAlbumName:v35];

  appleMusicID = [(SHMediaLibraryTrack *)self appleMusicID];
  v37 = [appleMusicID copyWithZone:zone];
  [v13 setAppleMusicID:v37];

  appleMusicURL = [(SHMediaLibraryTrack *)self appleMusicURL];
  v39 = [appleMusicURL copyWithZone:zone];
  [v13 setAppleMusicURL:v39];

  [v13 setExplicitContent:{-[SHMediaLibraryTrack explicitContent](self, "explicitContent")}];
  genres = [(SHMediaLibraryTrack *)self genres];
  v41 = [genres copyWithZone:zone];
  [v13 setGenres:v41];

  isrc = [(SHMediaLibraryTrack *)self isrc];
  v43 = [isrc copyWithZone:zone];
  [v13 setIsrc:v43];

  rawSongResponse = [(SHMediaLibraryTrack *)self rawSongResponse];
  v45 = [rawSongResponse copyWithZone:zone];
  [v13 setRawSongResponse:v45];

  releaseDate = [(SHMediaLibraryTrack *)self releaseDate];
  v47 = [releaseDate copyWithZone:zone];
  [v13 setReleaseDate:v47];

  [v13 setShazamCount:{-[SHMediaLibraryTrack shazamCount](self, "shazamCount")}];
  videoURL = [(SHMediaLibraryTrack *)self videoURL];
  v49 = [videoURL copyWithZone:zone];
  [v13 setVideoURL:v49];

  lastUpdatedDate = [(SHMediaLibraryTrack *)self lastUpdatedDate];
  v51 = [lastUpdatedDate copyWithZone:zone];
  [v13 setLastUpdatedDate:v51];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryTrack *)self isEqualTrack:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualTrack:(id)track
{
  trackCopy = track;
  identifier = [(SHMediaLibraryTrack *)self identifier];
  identifier2 = [trackCopy identifier];

  LOBYTE(trackCopy) = [identifier isEqualToString:identifier2];
  return trackCopy;
}

- (unint64_t)hash
{
  identifier = [(SHMediaLibraryTrack *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)platformLabel
{
  v2 = [SHMediaLibraryLabel alloc];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ios", @"platform"];
  v4 = [(SHMediaLibraryLabel *)v2 initWithName:v3];

  return v4;
}

- (void)addPlatformLabel
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  labels = [(SHMediaLibraryTrack *)self labels];
  v4 = [labels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(labels);
      }

      if (![*(*(&v9 + 1) + 8 * v7) type])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [labels countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    labels = [(SHMediaLibraryTrack *)self platformLabel];
    [(SHMediaLibraryTrack *)self addLabel:labels];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addLabel:(id)label
{
  labelCopy = label;
  labelSet = [(SHMediaLibraryTrack *)self labelSet];
  [labelSet addObject:labelCopy];
}

- (CLLocationCoordinate2D)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end