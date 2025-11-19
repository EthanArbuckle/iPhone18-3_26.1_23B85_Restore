@interface SHHaptic
- (NSArray)spatialOffsets;
- (SHHaptic)initWithCoder:(id)a3;
- (SHHaptic)initWithHapticTracks:(id)a3 representingMediaItem:(id)a4 spatialTrackInformation:(id)a5 error:(id)a6;
- (id)tracksWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHHaptic

- (SHHaptic)initWithHapticTracks:(id)a3 representingMediaItem:(id)a4 spatialTrackInformation:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SHHaptic;
  v15 = [(SHHaptic *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_tracks, a3);
    objc_storeStrong(&v16->_mediaItem, a4);
    objc_storeStrong(&v16->_associatedSpatialTrackInformation, a5);
    objc_storeStrong(&v16->_tracksError, a6);
  }

  return v16;
}

- (SHHaptic)initWithCoder:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticMediaItemKey"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"SHHapticItemsKey"];
  v10 = [v5 decodeObjectOfClasses:v7 forKey:@"SHHapticSpatialTrackInformationCodingKey"];

  v11 = [(SHHaptic *)self initWithHapticTracks:v9 representingMediaItem:v8 spatialTrackInformation:v10 error:0];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHHaptic *)self mediaItem];
  [v4 encodeObject:v5 forKey:@"SHHapticMediaItemKey"];

  v6 = [(SHHaptic *)self tracks];
  [v4 encodeObject:v6 forKey:@"SHHapticItemsKey"];

  v7 = [(SHHaptic *)self associatedSpatialTrackInformation];
  [v4 encodeObject:v7 forKey:@"SHHapticSpatialTrackInformationCodingKey"];
}

- (NSArray)spatialOffsets
{
  v2 = [(SHHaptic *)self associatedSpatialTrackInformation];
  v3 = [v2 offsets];

  return v3;
}

- (id)tracksWithError:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(SHHaptic *)self tracksError];

  if (v5)
  {
    v6 = MEMORY[0x277D54E10];
    v7 = [(SHHaptic *)self tracksError];
    [v6 annotateError:a3 withError:v7];

    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(SHHaptic *)self tracksError];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_ERROR, "Error with fetching haptic track %@", &v13, 0xCu);
    }
  }

  v10 = [(SHHaptic *)self tracks];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end