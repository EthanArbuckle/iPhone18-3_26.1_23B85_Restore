@interface SHHapticSpatialTrackInformation
- (SHHapticSpatialTrackInformation)initWithCoder:(id)a3;
- (SHHapticSpatialTrackInformation)initWithSpatialStartOffset:(double)a3 offsets:(id)a4 timeDrift:(double)a5 matchesStereo:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHHapticSpatialTrackInformation

- (SHHapticSpatialTrackInformation)initWithSpatialStartOffset:(double)a3 offsets:(id)a4 timeDrift:(double)a5 matchesStereo:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = SHHapticSpatialTrackInformation;
  v12 = [(SHHapticSpatialTrackInformation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_startOffset = a3;
    objc_storeStrong(&v12->_offsets, a4);
    v13->_timeDrift = a5;
    v13->_matchesStereo = a6;
  }

  return v13;
}

- (SHHapticSpatialTrackInformation)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v4 setWithArray:v6];

  [v5 decodeDoubleForKey:@"SHHapticSpatialTrackInformationTimeDriftCodingKey"];
  v9 = v8;
  [v5 decodeDoubleForKey:@"SHHapticSpatialTrackInformationSpatialStartOffsetCodingKey"];
  v11 = v10;
  v12 = [v5 decodeBoolForKey:@"SHHapticSpatialTrackInformationMatchesStereoCodingKey"];
  v13 = [v5 decodeObjectOfClasses:v7 forKey:@"SHHapticSpatialTrackInformationOffsetsCodingKey"];

  v14 = [(SHHapticSpatialTrackInformation *)self initWithSpatialStartOffset:v13 offsets:v12 timeDrift:v11 matchesStereo:v9];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SHHapticSpatialTrackInformation *)self timeDrift];
  [v4 encodeDouble:@"SHHapticSpatialTrackInformationTimeDriftCodingKey" forKey:?];
  [(SHHapticSpatialTrackInformation *)self startOffset];
  [v4 encodeDouble:@"SHHapticSpatialTrackInformationSpatialStartOffsetCodingKey" forKey:?];
  [v4 encodeBool:-[SHHapticSpatialTrackInformation matchesStereo](self forKey:{"matchesStereo"), @"SHHapticSpatialTrackInformationMatchesStereoCodingKey"}];
  v5 = [(SHHapticSpatialTrackInformation *)self offsets];
  [v4 encodeObject:v5 forKey:@"SHHapticSpatialTrackInformationOffsetsCodingKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SHHapticSpatialTrackInformation *)self startOffset];
  v5 = v4;
  [(SHHapticSpatialTrackInformation *)self timeDrift];
  return [v3 stringWithFormat:@"StartOffset: %f, TimeDrift: %f, Matches Stereo: %d", v5, v6, -[SHHapticSpatialTrackInformation matchesStereo](self, "matchesStereo")];
}

@end