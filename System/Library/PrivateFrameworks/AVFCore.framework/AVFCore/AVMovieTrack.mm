@interface AVMovieTrack
- (CMTimeRange)mediaDecodeTimeRange;
- (CMTimeRange)mediaPresentationTimeRange;
- (NSInteger)alternateGroupID;
- (id)description;
@end

@implementation AVMovieTrack

- (CMTimeRange)mediaPresentationTimeRange
{
  v4.receiver = self;
  v4.super_class = AVMovieTrack;
  return [(CMTimeRange *)&v4 mediaPresentationTimeRange];
}

- (CMTimeRange)mediaDecodeTimeRange
{
  v4.receiver = self;
  v4.super_class = AVMovieTrack;
  return [(CMTimeRange *)&v4 mediaDecodeTimeRange];
}

- (NSInteger)alternateGroupID
{
  v3.receiver = self;
  v3.super_class = AVMovieTrack;
  return [(AVAssetTrack *)&v3 alternateGroupID];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  trackID = [(AVAssetTrack *)self trackID];
  mediaType = [(AVAssetTrack *)self mediaType];
  v8 = [v3 stringWithFormat:@"<%@: %p, trackID = %d, mediaType = %@>", v5, self, trackID, mediaType];

  return v8;
}

@end