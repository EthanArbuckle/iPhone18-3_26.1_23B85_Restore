@interface SHHapticSpatialTrackInformation
- (SHHapticSpatialTrackInformation)initWithCoder:(id)coder;
- (SHHapticSpatialTrackInformation)initWithSpatialStartOffset:(double)offset offsets:(id)offsets timeDrift:(double)drift matchesStereo:(BOOL)stereo;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHHapticSpatialTrackInformation

- (SHHapticSpatialTrackInformation)initWithSpatialStartOffset:(double)offset offsets:(id)offsets timeDrift:(double)drift matchesStereo:(BOOL)stereo
{
  offsetsCopy = offsets;
  v15.receiver = self;
  v15.super_class = SHHapticSpatialTrackInformation;
  v12 = [(SHHapticSpatialTrackInformation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_startOffset = offset;
    objc_storeStrong(&v12->_offsets, offsets);
    v13->_timeDrift = drift;
    v13->_matchesStereo = stereo;
  }

  return v13;
}

- (SHHapticSpatialTrackInformation)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v4 setWithArray:v6];

  [coderCopy decodeDoubleForKey:@"SHHapticSpatialTrackInformationTimeDriftCodingKey"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"SHHapticSpatialTrackInformationSpatialStartOffsetCodingKey"];
  v11 = v10;
  v12 = [coderCopy decodeBoolForKey:@"SHHapticSpatialTrackInformationMatchesStereoCodingKey"];
  v13 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SHHapticSpatialTrackInformationOffsetsCodingKey"];

  v14 = [(SHHapticSpatialTrackInformation *)self initWithSpatialStartOffset:v13 offsets:v12 timeDrift:v11 matchesStereo:v9];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SHHapticSpatialTrackInformation *)self timeDrift];
  [coderCopy encodeDouble:@"SHHapticSpatialTrackInformationTimeDriftCodingKey" forKey:?];
  [(SHHapticSpatialTrackInformation *)self startOffset];
  [coderCopy encodeDouble:@"SHHapticSpatialTrackInformationSpatialStartOffsetCodingKey" forKey:?];
  [coderCopy encodeBool:-[SHHapticSpatialTrackInformation matchesStereo](self forKey:{"matchesStereo"), @"SHHapticSpatialTrackInformationMatchesStereoCodingKey"}];
  offsets = [(SHHapticSpatialTrackInformation *)self offsets];
  [coderCopy encodeObject:offsets forKey:@"SHHapticSpatialTrackInformationOffsetsCodingKey"];
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