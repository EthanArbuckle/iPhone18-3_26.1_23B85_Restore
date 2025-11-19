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
  v6 = [(AVAssetTrack *)self trackID];
  v7 = [(AVAssetTrack *)self mediaType];
  v8 = [v3 stringWithFormat:@"<%@: %p, trackID = %d, mediaType = %@>", v5, self, v6, v7];

  return v8;
}

@end