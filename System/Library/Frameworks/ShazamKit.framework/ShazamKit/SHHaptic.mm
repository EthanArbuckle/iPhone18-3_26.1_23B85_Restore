@interface SHHaptic
- (NSArray)spatialOffsets;
- (SHHaptic)initWithCoder:(id)coder;
- (SHHaptic)initWithHapticTracks:(id)tracks representingMediaItem:(id)item spatialTrackInformation:(id)information error:(id)error;
- (id)tracksWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHHaptic

- (SHHaptic)initWithHapticTracks:(id)tracks representingMediaItem:(id)item spatialTrackInformation:(id)information error:(id)error
{
  tracksCopy = tracks;
  itemCopy = item;
  informationCopy = information;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = SHHaptic;
  v15 = [(SHHaptic *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_tracks, tracks);
    objc_storeStrong(&v16->_mediaItem, item);
    objc_storeStrong(&v16->_associatedSpatialTrackInformation, information);
    objc_storeStrong(&v16->_tracksError, error);
  }

  return v16;
}

- (SHHaptic)initWithCoder:(id)coder
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v7 = [v4 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticMediaItemKey"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SHHapticItemsKey"];
  v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SHHapticSpatialTrackInformationCodingKey"];

  v11 = [(SHHaptic *)self initWithHapticTracks:v9 representingMediaItem:v8 spatialTrackInformation:v10 error:0];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mediaItem = [(SHHaptic *)self mediaItem];
  [coderCopy encodeObject:mediaItem forKey:@"SHHapticMediaItemKey"];

  tracks = [(SHHaptic *)self tracks];
  [coderCopy encodeObject:tracks forKey:@"SHHapticItemsKey"];

  associatedSpatialTrackInformation = [(SHHaptic *)self associatedSpatialTrackInformation];
  [coderCopy encodeObject:associatedSpatialTrackInformation forKey:@"SHHapticSpatialTrackInformationCodingKey"];
}

- (NSArray)spatialOffsets
{
  associatedSpatialTrackInformation = [(SHHaptic *)self associatedSpatialTrackInformation];
  offsets = [associatedSpatialTrackInformation offsets];

  return offsets;
}

- (id)tracksWithError:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  tracksError = [(SHHaptic *)self tracksError];

  if (tracksError)
  {
    v6 = MEMORY[0x277D54E10];
    tracksError2 = [(SHHaptic *)self tracksError];
    [v6 annotateError:error withError:tracksError2];

    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      tracksError3 = [(SHHaptic *)self tracksError];
      v13 = 138412290;
      v14 = tracksError3;
      _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_ERROR, "Error with fetching haptic track %@", &v13, 0xCu);
    }
  }

  tracks = [(SHHaptic *)self tracks];
  v11 = *MEMORY[0x277D85DE8];

  return tracks;
}

@end