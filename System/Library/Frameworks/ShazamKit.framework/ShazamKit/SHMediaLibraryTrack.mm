@interface SHMediaLibraryTrack
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTrack:(id)a3;
- (CLLocation)location;
- (CLLocationCoordinate2D)locationCoordinate;
- (NSSet)labels;
- (SHMediaItem)mediaItemValue;
- (SHMediaLibraryTrack)initWithCoder:(id)a3;
- (SHMediaLibraryTrack)initWithIdentifier:(id)a3 builder:(id)a4;
- (SHMediaLibraryTrack)initWithIdentifier:(id)a3 metadata:(id)a4 builder:(id)a5;
- (SHMediaLibraryTrack)initWithMediaItem:(id)a3;
- (SHMediaLibraryTrack)initWithTrackSyncID:(id)a3 creationDate:(id)a4 releaseDate:(id)a5 groupSyncID:(id)a6 labels:(id)a7 lastUpdatedDate:(id)a8 providerIdentifier:(id)a9 trackMetadata:(id)a10 providerName:(id)a11 shazamKey:(id)a12 recognitionID:(id)a13 title:(id)a14 subtitle:(id)a15 artworkURL:(id)a16 appleMusicID:(id)a17 appleMusicURL:(id)a18 shazamURL:(id)a19 videoURL:(id)a20 isExplicit:(BOOL)a21 albumName:(id)a22 isrc:(id)a23 shazamCount:(int64_t)a24 locationCoordinate:(CLLocationCoordinate2D)a25 genres:(id)a26 rawSongResponse:(id)a27;
- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)platformLabel;
- (unint64_t)hash;
- (void)addLabel:(id)a3;
- (void)addPlatformLabel;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBuilderBlock:(id)a3;
- (void)updateWithMediaItem:(id)a3;
@end

@implementation SHMediaLibraryTrack

- (SHMediaLibraryTrack)initWithIdentifier:(id)a3 builder:(id)a4
{
  v6 = a4;
  v7 = [(SHMediaLibraryTrack *)self _initWithIdentifier:a3 metadata:0 labels:MEMORY[0x277CBEBF8]];
  [(SHMediaLibraryTrack *)v7 updateWithBuilderBlock:v6];

  return v7;
}

- (SHMediaLibraryTrack)initWithIdentifier:(id)a3 metadata:(id)a4 builder:(id)a5
{
  v8 = a5;
  v9 = [(SHMediaLibraryTrack *)self _initWithIdentifier:a3 metadata:a4 labels:MEMORY[0x277CBEBF8]];
  [(SHMediaLibraryTrack *)v9 updateWithBuilderBlock:v8];

  return v9;
}

- (SHMediaLibraryTrack)initWithMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 shazamID];

  if (!v5)
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
  v7 = [v4 shazamID];
  v8 = [(SHShazamKey *)v6 initWithKey:v7];

  if (!v8)
  {
    v19 = sh_log_object();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_230F52000, v19, OS_LOG_TYPE_ERROR, "A media item must have a valid (numeric only) format when creating a library track", v21, 2u);
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v9 = [v4 identifier];
  v10 = [v9 UUIDString];
  self = [(SHMediaLibraryTrack *)self _initWithIdentifier:v10 metadata:0 labels:MEMORY[0x277CBEBF8]];

  [(SHMediaLibraryTrack *)self setShazamKey:v8];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  [(SHMediaLibraryTrack *)self setRecognitionIdentifier:v12];

  v13 = [v4 providerIdentifier];
  [(SHMediaLibraryTrack *)self setProviderIdentifier:v13];

  v14 = [v4 creationDate];

  if (v14)
  {
    v15 = [v4 creationDate];
    [(SHMediaLibraryTrack *)self setCreationDate:v15];
  }

  v16 = [v4 matchLocation];
  [SHLocationTransformer coordinateFromLocation:v16];
  [(SHMediaLibraryTrack *)self setLocationCoordinate:?];

  [(SHMediaLibraryTrack *)self updateWithMediaItem:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x277CBEAA8] date];
    [(SHMediaLibraryTrack *)self setLastUpdatedDate:v17];
  }

  v18 = self;
LABEL_14:

  return v18;
}

- (SHMediaLibraryTrack)initWithTrackSyncID:(id)a3 creationDate:(id)a4 releaseDate:(id)a5 groupSyncID:(id)a6 labels:(id)a7 lastUpdatedDate:(id)a8 providerIdentifier:(id)a9 trackMetadata:(id)a10 providerName:(id)a11 shazamKey:(id)a12 recognitionID:(id)a13 title:(id)a14 subtitle:(id)a15 artworkURL:(id)a16 appleMusicID:(id)a17 appleMusicURL:(id)a18 shazamURL:(id)a19 videoURL:(id)a20 isExplicit:(BOOL)a21 albumName:(id)a22 isrc:(id)a23 shazamCount:(int64_t)a24 locationCoordinate:(CLLocationCoordinate2D)a25 genres:(id)a26 rawSongResponse:(id)a27
{
  longitude = a25.longitude;
  latitude = a25.latitude;
  v76 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v68 = a4;
  v67 = a5;
  v66 = a6;
  v34 = a7;
  v59 = a8;
  v35 = a9;
  v36 = a10;
  v37 = a11;
  v70 = a12;
  v65 = a13;
  v64 = a14;
  v63 = a15;
  v62 = a16;
  v61 = a17;
  v57 = a18;
  v60 = a19;
  v56 = a20;
  v55 = a22;
  v54 = a23;
  v53 = a26;
  v52 = a27;
  v58 = v36;
  if (v36)
  {
    v38 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v36];
  }

  else
  {
    v38 = 0;
  }

  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = v34;
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
  v47 = [(SHMediaLibraryTrack *)self _initWithIdentifier:v69 metadata:v38 labels:v46];

  if (v70)
  {
    v48 = [[SHShazamKey alloc] initWithKey:v70];
    [(SHMediaLibraryTrack *)v47 setShazamKey:v48];
  }

  [(SHMediaLibraryTrack *)v47 setProviderIdentifier:v35];
  [(SHMediaLibraryTrack *)v47 setProviderName:v37];
  [(SHMediaLibraryTrack *)v47 setCreationDate:v68];
  [(SHMediaLibraryTrack *)v47 setRecognitionIdentifier:v65];
  [(SHMediaLibraryTrack *)v47 setTitle:v64];
  [(SHMediaLibraryTrack *)v47 setSubtitle:v63];
  [(SHMediaLibraryTrack *)v47 setArtworkURL:v62];
  [(SHMediaLibraryTrack *)v47 setShazamURL:v60];
  [(SHMediaLibraryTrack *)v47 setAssociatedGroupIdentifier:v66];
  [(SHMediaLibraryTrack *)v47 setLocationCoordinate:latitude, longitude];
  [(SHMediaLibraryTrack *)v47 setAlbumName:v55];
  [(SHMediaLibraryTrack *)v47 setAppleMusicID:v61];
  [(SHMediaLibraryTrack *)v47 setAppleMusicURL:v57];
  [(SHMediaLibraryTrack *)v47 setExplicitContent:a21];
  [(SHMediaLibraryTrack *)v47 setGenres:v53];
  [(SHMediaLibraryTrack *)v47 setIsrc:v54];
  [(SHMediaLibraryTrack *)v47 setRawSongResponse:v52];
  [(SHMediaLibraryTrack *)v47 setReleaseDate:v67];
  [(SHMediaLibraryTrack *)v47 setShazamCount:a24];
  [(SHMediaLibraryTrack *)v47 setVideoURL:v56];
  [(SHMediaLibraryTrack *)v47 setLastUpdatedDate:v59];

  v49 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)_initWithIdentifier:(id)a3 metadata:(id)a4 labels:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SHMediaLibraryTrack;
  v11 = [(SHMediaLibraryTrack *)&v19 init];
  if (v11)
  {
    v12 = [v8 precomposedStringWithCanonicalMapping];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    objc_storeStrong(v11 + 3, a4);
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = *(v11 + 4);
    *(v11 + 4) = v14;

    v16 = [MEMORY[0x277CBEB58] setWithArray:v10];
    v17 = *(v11 + 14);
    *(v11 + 14) = v16;

    *(v11 + 200) = *MEMORY[0x277CE4278];
    [v11 addPlatformLabel];
  }

  return v11;
}

- (void)updateWithBuilderBlock:(id)a3
{
  v4 = a3;
  v5 = [SHMediaLibraryTrackBuilder alloc];
  v6 = [(SHMediaLibraryTrack *)self creationDate];
  v20 = [(SHMediaLibraryTrackBuilder *)v5 initWithCreationDate:v6];

  v4[2](v4, v20);
  v7 = [(SHMediaLibraryTrackBuilder *)v20 creationDate];
  [(SHMediaLibraryTrack *)self setCreationDate:v7];

  v8 = [(SHMediaLibraryTrackBuilder *)v20 title];
  [(SHMediaLibraryTrack *)self setTitle:v8];

  v9 = [(SHMediaLibraryTrackBuilder *)v20 subtitle];
  [(SHMediaLibraryTrack *)self setSubtitle:v9];

  v10 = [(SHMediaLibraryTrackBuilder *)v20 providerName];
  [(SHMediaLibraryTrack *)self setProviderName:v10];

  v11 = [(SHMediaLibraryTrackBuilder *)v20 providerIdentifier];
  [(SHMediaLibraryTrack *)self setProviderIdentifier:v11];

  v12 = [(SHMediaLibraryTrackBuilder *)v20 recognitionIdentifier];
  [(SHMediaLibraryTrack *)self setRecognitionIdentifier:v12];

  v13 = [(SHMediaLibraryTrackBuilder *)v20 shazamKey];
  [(SHMediaLibraryTrack *)self setShazamKey:v13];

  v14 = [(SHMediaLibraryTrackBuilder *)v20 location];
  [SHLocationTransformer coordinateFromLocation:v14];
  [(SHMediaLibraryTrack *)self setLocationCoordinate:?];

  v15 = MEMORY[0x277CBEB58];
  v16 = [(SHMediaLibraryTrackBuilder *)v20 labels];
  v17 = [v15 setWithSet:v16];
  [(SHMediaLibraryTrack *)self setLabelSet:v17];

  v18 = [(SHMediaLibraryTrackBuilder *)v20 artworkURL];
  [(SHMediaLibraryTrack *)self setArtworkURL:v18];

  v19 = [(SHMediaLibraryTrackBuilder *)v20 shazamURL];
  [(SHMediaLibraryTrack *)self setShazamURL:v19];

  [(SHMediaLibraryTrack *)self addPlatformLabel];
}

- (void)updateWithMediaItem:(id)a3
{
  v21 = a3;
  v4 = [v21 shazamID];

  if (v4)
  {
    v5 = [SHShazamKey alloc];
    v6 = [v21 shazamID];
    v7 = [(SHShazamKey *)v5 initWithKey:v6];

    if (v7)
    {
      [(SHMediaLibraryTrack *)self setShazamKey:v7];
    }
  }

  v8 = [v21 title];
  [(SHMediaLibraryTrack *)self setTitle:v8];

  v9 = [v21 subtitle];
  if (v9)
  {
    [(SHMediaLibraryTrack *)self setSubtitle:v9];
  }

  else
  {
    v10 = [v21 artist];
    [(SHMediaLibraryTrack *)self setSubtitle:v10];
  }

  v11 = [v21 artworkURL];
  [(SHMediaLibraryTrack *)self setArtworkURL:v11];

  v12 = [v21 webURL];
  [(SHMediaLibraryTrack *)self setShazamURL:v12];

  v13 = [v21 albumName];
  [(SHMediaLibraryTrack *)self setAlbumName:v13];

  v14 = [v21 appleMusicID];
  [(SHMediaLibraryTrack *)self setAppleMusicID:v14];

  v15 = [v21 appleMusicURL];
  [(SHMediaLibraryTrack *)self setAppleMusicURL:v15];

  -[SHMediaLibraryTrack setExplicitContent:](self, "setExplicitContent:", [v21 explicitContent]);
  v16 = [v21 genres];
  [(SHMediaLibraryTrack *)self setGenres:v16];

  v17 = [v21 isrc];
  [(SHMediaLibraryTrack *)self setIsrc:v17];

  v18 = [v21 _rawResponseSongsData];
  [(SHMediaLibraryTrack *)self setRawSongResponse:v18];

  v19 = [v21 releaseDate];
  [(SHMediaLibraryTrack *)self setReleaseDate:v19];

  -[SHMediaLibraryTrack setShazamCount:](self, "setShazamCount:", [v21 shazamCount]);
  v20 = [v21 videoURL];
  [(SHMediaLibraryTrack *)self setVideoURL:v20];
}

- (NSSet)labels
{
  v2 = [(SHMediaLibraryTrack *)self labelSet];
  v3 = [v2 copy];

  return v3;
}

- (CLLocation)location
{
  [(SHMediaLibraryTrack *)self locationCoordinate];

  return [SHLocationTransformer locationFromCoordinate:?];
}

- (SHMediaItem)mediaItemValue
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [(SHMediaLibraryTrack *)self identifier];
  v6 = [v4 initWithUUIDString:v5];
  [v3 setValue:v6 forKey:@"sh_identifier"];

  v7 = [(SHMediaLibraryTrack *)self creationDate];
  [v3 setValue:v7 forKey:@"sh_creationDate"];

  v8 = [(SHMediaLibraryTrack *)self shazamKey];
  v9 = [v8 validatedKey];
  [v3 setValue:v9 forKey:@"sh_shazamID"];

  v10 = [(SHMediaLibraryTrack *)self title];
  [v3 setValue:v10 forKey:@"sh_title"];

  v11 = [(SHMediaLibraryTrack *)self subtitle];
  [v3 setValue:v11 forKey:@"sh_subtitle"];

  v12 = [(SHMediaLibraryTrack *)self subtitle];
  [v3 setValue:v12 forKey:@"sh_artist"];

  v13 = [(SHMediaLibraryTrack *)self artworkURL];
  [v3 setValue:v13 forKey:@"sh_artworkURL"];

  v14 = [(SHMediaLibraryTrack *)self shazamURL];
  [v3 setValue:v14 forKey:@"sh_webURL"];

  v15 = [(SHMediaLibraryTrack *)self providerIdentifier];
  [v3 setValue:v15 forKey:@"sh_providerIdentifier"];

  v16 = [(SHMediaLibraryTrack *)self albumName];
  [v3 setValue:v16 forKey:@"sh_albumName"];

  v17 = [(SHMediaLibraryTrack *)self appleMusicID];
  [v3 setValue:v17 forKey:@"sh_appleMusicID"];

  v18 = [(SHMediaLibraryTrack *)self appleMusicURL];
  [v3 setValue:v18 forKey:@"sh_appleMusicURL"];

  v19 = [(SHMediaLibraryTrack *)self genres];
  [v3 setValue:v19 forKey:@"sh_genres"];

  v20 = [(SHMediaLibraryTrack *)self isrc];
  [v3 setValue:v20 forKey:@"sh_isrc"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SHMediaLibraryTrack explicitContent](self, "explicitContent")}];
  [v3 setValue:v21 forKey:@"sh_explicitContent"];

  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SHMediaLibraryTrack shazamCount](self, "shazamCount")}];
  [v3 setValue:v22 forKey:@"sh_shazamCount"];

  v23 = [(SHMediaLibraryTrack *)self releaseDate];
  [v3 setValue:v23 forKey:@"sh_releaseDate"];

  v24 = [(SHMediaLibraryTrack *)self videoURL];
  [v3 setValue:v24 forKey:@"sh_videoURL"];

  [(SHMediaLibraryTrack *)self locationCoordinate];
  v25 = [SHLocationTransformer valueForCoordinate:?];
  [v3 setValue:v25 forKey:@"sh_matchLocationCoordinate"];

  v26 = [v3 copy];
  v27 = [SHMediaItem mediaItemWithProperties:v26];

  v28 = [(SHMediaLibraryTrack *)self rawSongResponse];
  [v27 set_rawResponseSongsData:v28];

  return v27;
}

- (SHMediaLibraryTrack)initWithCoder:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = SHMediaLibraryTrack;
  v5 = [(SHMediaLibraryTrack *)&v64 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackMetadata"];
    if (v6)
    {
      v7 = [[SHMediaLibraryItemMetadata alloc] initWithEncodedSystemData:v6];
      metadata = v5->_metadata;
      v5->_metadata = v7;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackShazamKey"];
    if (v9)
    {
      v10 = [[SHShazamKey alloc] initWithKey:v9];
      shazamKey = v5->_shazamKey;
      v5->_shazamKey = v10;
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackRecognitionIdentifierKey"];
    recognitionIdentifier = v5->_recognitionIdentifier;
    v5->_recognitionIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackProviderIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackProviderName"];
    providerName = v5->_providerName;
    v5->_providerName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackTitle"];
    title = v5->_title;
    v5->_title = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackAssociatedGroupIdentifier"];
    associatedGroupIdentifier = v5->_associatedGroupIdentifier;
    v5->_associatedGroupIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackArtworkURL"];
    artworkURL = v5->_artworkURL;
    v5->_artworkURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryTrackShazamURL"];
    shazamURL = v5->_shazamURL;
    v5->_shazamURL = v30;

    [v4 decodeDoubleForKey:@"SHLibraryTrackLocationLatitude"];
    v33 = v32;
    [v4 decodeDoubleForKey:@"SHLibraryTrackLocationLongitude"];
    v5->_locationCoordinate = CLLocationCoordinate2DMake(v33, v34);
    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"SHLibraryTrackLibrarySet"];
    v39 = [v38 mutableCopy];
    labelSet = v5->_labelSet;
    v5->_labelSet = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAlbumName"];
    albumName = v5->_albumName;
    v5->_albumName = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAppleMusicURL"];
    appleMusicURL = v5->_appleMusicURL;
    v5->_appleMusicURL = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackAppleMusicID"];
    appleMusicID = v5->_appleMusicID;
    v5->_appleMusicID = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackISRC"];
    isrc = v5->_isrc;
    v5->_isrc = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackReleaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackVideoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v51;

    v5->_explicitContent = [v4 decodeBoolForKey:@"SHMediaLibraryTrackExplicitContent"];
    v5->_shazamCount = [v4 decodeInt64ForKey:@"SHMediaLibraryTrackShazamCount"];
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackLastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryTrackRawSongResponseData"];
    rawSongResponse = v5->_rawSongResponse;
    v5->_rawSongResponse = v55;

    v57 = MEMORY[0x277CBEB98];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"SHMediaLibraryTrackGenres"];
    genres = v5->_genres;
    v5->_genres = v60;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  [v8 encodeObject:self->_identifier forKey:@"SHLibraryTrackIdentifier"];
  [v8 encodeObject:self->_recognitionIdentifier forKey:@"SHLibraryTrackRecognitionIdentifierKey"];
  v5 = [(SHShazamKey *)self->_shazamKey validatedKey];
  [v8 encodeObject:v5 forKey:@"SHLibraryTrackShazamKey"];

  v6 = [(SHMediaLibraryItemMetadata *)self->_metadata encodedSystemData];
  [v8 encodeObject:v6 forKey:@"SHLibraryTrackMetadata"];

  [v8 encodeObject:self->_providerIdentifier forKey:@"SHLibraryTrackProviderIdentifier"];
  [v8 encodeObject:self->_providerName forKey:@"SHLibraryTrackProviderName"];
  [v8 encodeObject:self->_creationDate forKey:@"SHLibraryTrackDate"];
  [v8 encodeObject:self->_title forKey:@"SHLibraryTrackTitle"];
  [v8 encodeObject:self->_subtitle forKey:@"SHLibraryTrackSubtitle"];
  [v8 encodeObject:self->_associatedGroupIdentifier forKey:@"SHLibraryTrackAssociatedGroupIdentifier"];
  v7 = [(NSMutableSet *)self->_labelSet copy];
  [v8 encodeObject:v7 forKey:@"SHLibraryTrackLibrarySet"];

  [v8 encodeObject:self->_artworkURL forKey:@"SHLibraryTrackArtworkURL"];
  [v8 encodeObject:self->_shazamURL forKey:@"SHLibraryTrackShazamURL"];
  [v8 encodeDouble:@"SHLibraryTrackLocationLatitude" forKey:self->_locationCoordinate.latitude];
  [v8 encodeDouble:@"SHLibraryTrackLocationLongitude" forKey:self->_locationCoordinate.longitude];
  [v8 encodeObject:self->_albumName forKey:@"SHMediaLibraryTrackAlbumName"];
  [v8 encodeObject:self->_appleMusicURL forKey:@"SHMediaLibraryTrackAppleMusicURL"];
  [v8 encodeObject:self->_appleMusicID forKey:@"SHMediaLibraryTrackAppleMusicID"];
  [v8 encodeObject:self->_genres forKey:@"SHMediaLibraryTrackGenres"];
  [v8 encodeObject:self->_isrc forKey:@"SHMediaLibraryTrackISRC"];
  [v8 encodeObject:self->_rawSongResponse forKey:@"SHMediaLibraryTrackRawSongResponseData"];
  [v8 encodeObject:self->_releaseDate forKey:@"SHMediaLibraryTrackReleaseDate"];
  [v8 encodeObject:self->_videoURL forKey:@"SHMediaLibraryTrackVideoURL"];
  [v8 encodeBool:self->_explicitContent forKey:@"SHMediaLibraryTrackExplicitContent"];
  [v8 encodeInt64:self->_shazamCount forKey:@"SHMediaLibraryTrackShazamCount"];
  [v8 encodeObject:self->_lastUpdatedDate forKey:@"SHMediaLibraryTrackLastUpdatedDate"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaLibraryTrack allocWithZone:?];
  v6 = [(SHMediaLibraryTrack *)self identifier];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMediaLibraryTrack *)self metadata];
  v9 = [v8 copyWithZone:a3];
  v10 = [(SHMediaLibraryTrack *)self labels];
  v11 = [v10 allObjects];
  v12 = [v11 copyWithZone:a3];
  v13 = [(SHMediaLibraryTrack *)v5 _initWithIdentifier:v7 metadata:v9 labels:v12];

  v14 = [(SHMediaLibraryTrack *)self recognitionIdentifier];
  v15 = [v14 copyWithZone:a3];
  [v13 setRecognitionIdentifier:v15];

  v16 = [(SHMediaLibraryTrack *)self shazamKey];
  v17 = [v16 copyWithZone:a3];
  [v13 setShazamKey:v17];

  v18 = [(SHMediaLibraryTrack *)self creationDate];
  v19 = [v18 copyWithZone:a3];
  [v13 setCreationDate:v19];

  v20 = [(SHMediaLibraryTrack *)self providerIdentifier];
  v21 = [v20 copyWithZone:a3];
  [v13 setProviderIdentifier:v21];

  v22 = [(SHMediaLibraryTrack *)self providerName];
  v23 = [v22 copyWithZone:a3];
  [v13 setProviderName:v23];

  v24 = [(SHMediaLibraryTrack *)self title];
  v25 = [v24 copyWithZone:a3];
  [v13 setTitle:v25];

  v26 = [(SHMediaLibraryTrack *)self subtitle];
  v27 = [v26 copyWithZone:a3];
  [v13 setSubtitle:v27];

  v28 = [(SHMediaLibraryTrack *)self associatedGroupIdentifier];
  v29 = [v28 copyWithZone:a3];
  [v13 setAssociatedGroupIdentifier:v29];

  v30 = [(SHMediaLibraryTrack *)self artworkURL];
  v31 = [v30 copyWithZone:a3];
  [v13 setArtworkURL:v31];

  v32 = [(SHMediaLibraryTrack *)self shazamURL];
  v33 = [v32 copyWithZone:a3];
  [v13 setShazamURL:v33];

  [(SHMediaLibraryTrack *)self locationCoordinate];
  [v13 setLocationCoordinate:?];
  v34 = [(SHMediaLibraryTrack *)self albumName];
  v35 = [v34 copyWithZone:a3];
  [v13 setAlbumName:v35];

  v36 = [(SHMediaLibraryTrack *)self appleMusicID];
  v37 = [v36 copyWithZone:a3];
  [v13 setAppleMusicID:v37];

  v38 = [(SHMediaLibraryTrack *)self appleMusicURL];
  v39 = [v38 copyWithZone:a3];
  [v13 setAppleMusicURL:v39];

  [v13 setExplicitContent:{-[SHMediaLibraryTrack explicitContent](self, "explicitContent")}];
  v40 = [(SHMediaLibraryTrack *)self genres];
  v41 = [v40 copyWithZone:a3];
  [v13 setGenres:v41];

  v42 = [(SHMediaLibraryTrack *)self isrc];
  v43 = [v42 copyWithZone:a3];
  [v13 setIsrc:v43];

  v44 = [(SHMediaLibraryTrack *)self rawSongResponse];
  v45 = [v44 copyWithZone:a3];
  [v13 setRawSongResponse:v45];

  v46 = [(SHMediaLibraryTrack *)self releaseDate];
  v47 = [v46 copyWithZone:a3];
  [v13 setReleaseDate:v47];

  [v13 setShazamCount:{-[SHMediaLibraryTrack shazamCount](self, "shazamCount")}];
  v48 = [(SHMediaLibraryTrack *)self videoURL];
  v49 = [v48 copyWithZone:a3];
  [v13 setVideoURL:v49];

  v50 = [(SHMediaLibraryTrack *)self lastUpdatedDate];
  v51 = [v50 copyWithZone:a3];
  [v13 setLastUpdatedDate:v51];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryTrack *)self isEqualTrack:v4];
  }

  return v5;
}

- (BOOL)isEqualTrack:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryTrack *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SHMediaLibraryTrack *)self identifier];
  v3 = [v2 hash];

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
  v3 = [(SHMediaLibraryTrack *)self labels];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(v3);
      }

      if (![*(*(&v9 + 1) + 8 * v7) type])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

    v3 = [(SHMediaLibraryTrack *)self platformLabel];
    [(SHMediaLibraryTrack *)self addLabel:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addLabel:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryTrack *)self labelSet];
  [v5 addObject:v4];
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