@interface AVAssetTrackPlan
- (AVAssetTrackPlan)initWithMediaType:(id)type segmentConfigurations:(id)configurations assemblyTrackID:(int)d;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetTrackPlan

- (AVAssetTrackPlan)initWithMediaType:(id)type segmentConfigurations:(id)configurations assemblyTrackID:(int)d
{
  v10.receiver = self;
  v10.super_class = AVAssetTrackPlan;
  v8 = [(AVAssetTrackPlan *)&v10 init];
  if (v8)
  {
    v8->_mediaType = [type copy];
    v8->_segmentConfigurations = [configurations copy];
    v8->_assemblyTrackID = d;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetTrackPlan;
  [(AVAssetTrackPlan *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mediaType = self->_mediaType;
  if (mediaType != [equal mediaType])
  {
    return 0;
  }

  assemblyTrackID = self->_assemblyTrackID;
  if (assemblyTrackID != [equal assemblyTrackID])
  {
    return 0;
  }

  requiresVideoCompression = [(AVAssetTrackPlan *)self requiresVideoCompression];
  if (requiresVideoCompression != [equal requiresVideoCompression])
  {
    return 0;
  }

  segmentConfigurations = self->_segmentConfigurations;
  segmentConfigurations = [equal segmentConfigurations];

  return [(NSArray *)segmentConfigurations isEqual:segmentConfigurations];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, mediaType = %@, assemblyTrackID = %d, segmentConfigurations = %@>", NSStringFromClass(v4), self, -[AVAssetTrackPlan mediaType](self, "mediaType"), -[AVAssetTrackPlan assemblyTrackID](self, "assemblyTrackID"), -[AVAssetTrackPlan segmentConfigurations](self, "segmentConfigurations")];
}

@end