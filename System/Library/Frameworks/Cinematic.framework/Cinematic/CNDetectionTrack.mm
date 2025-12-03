@interface CNDetectionTrack
+ (id)_internalFromTracks:(id)tracks;
+ (id)_trackFromInternal:(id)internal;
+ (id)_tracksFromInternal:(id)internal;
- (CNDetection)detectionAtOrBeforeTime:(CMTime *)time;
- (CNDetection)detectionNearestTime:(CMTime *)time;
- (NSArray)detectionsInTimeRange:(CMTimeRange *)timeRange;
- (id)_initWithInternal:(id)internal;
- (unint64_t)hash;
@end

@implementation CNDetectionTrack

- (CNDetection)detectionAtOrBeforeTime:(CMTime *)time
{
  internalTrack = self->_internalTrack;
  v7 = *time;
  v4 = [(PTCinematographyTrack *)internalTrack detectionAtOrBeforeTime:&v7];
  if (v4)
  {
    v5 = [CNDetection _copyDetectionFromInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNDetection)detectionNearestTime:(CMTime *)time
{
  internalTrack = self->_internalTrack;
  v7 = *time;
  v4 = [(PTCinematographyTrack *)internalTrack detectionNearestTime:&v7];
  if (v4)
  {
    v5 = [CNDetection _copyDetectionFromInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)detectionsInTimeRange:(CMTimeRange *)timeRange
{
  internalTrack = self->_internalTrack;
  v4 = *&timeRange->start.epoch;
  v8[0] = *&timeRange->start.value;
  v8[1] = v4;
  v8[2] = *&timeRange->duration.timescale;
  v5 = [(PTCinematographyTrack *)internalTrack detectionsInTimeRange:v8];
  v6 = [CNDetection _copyDetectionsFromInternal:v5];

  return v6;
}

- (unint64_t)hash
{
  internalTrack = [(CNDetectionTrack *)self internalTrack];
  v3 = [internalTrack hash];

  return v3;
}

- (id)_initWithInternal:(id)internal
{
  internalCopy = internal;
  v9.receiver = self;
  v9.super_class = CNDetectionTrack;
  v5 = [(CNDetectionTrack *)&v9 init];
  if (v5)
  {
    v6 = [internalCopy copy];
    internalTrack = v5->_internalTrack;
    v5->_internalTrack = v6;
  }

  return v5;
}

+ (id)_trackFromInternal:(id)internal
{
  internalCopy = internal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = off_278A15DA8;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = off_278A15DA0;
    if (isKindOfClass)
    {
      v4 = off_278A15D88;
    }
  }

  v6 = [objc_alloc(*v4) _initWithInternal:internalCopy];

  return v6;
}

+ (id)_tracksFromInternal:(id)internal
{
  v20 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = internalCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _trackFromInternal:{*(*(&v15 + 1) + 8 * i), v15}];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_internalFromTracks:(id)tracks
{
  v19 = *MEMORY[0x277D85DE8];
  tracksCopy = tracks;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = tracksCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        internalTrack = [*(*(&v14 + 1) + 8 * i) internalTrack];
        [array addObject:internalTrack];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end