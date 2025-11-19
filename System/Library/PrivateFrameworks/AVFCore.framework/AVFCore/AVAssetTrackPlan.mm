@interface AVAssetTrackPlan
- (AVAssetTrackPlan)initWithMediaType:(id)a3 segmentConfigurations:(id)a4 assemblyTrackID:(int)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetTrackPlan

- (AVAssetTrackPlan)initWithMediaType:(id)a3 segmentConfigurations:(id)a4 assemblyTrackID:(int)a5
{
  v10.receiver = self;
  v10.super_class = AVAssetTrackPlan;
  v8 = [(AVAssetTrackPlan *)&v10 init];
  if (v8)
  {
    v8->_mediaType = [a3 copy];
    v8->_segmentConfigurations = [a4 copy];
    v8->_assemblyTrackID = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetTrackPlan;
  [(AVAssetTrackPlan *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mediaType = self->_mediaType;
  if (mediaType != [a3 mediaType])
  {
    return 0;
  }

  assemblyTrackID = self->_assemblyTrackID;
  if (assemblyTrackID != [a3 assemblyTrackID])
  {
    return 0;
  }

  v7 = [(AVAssetTrackPlan *)self requiresVideoCompression];
  if (v7 != [a3 requiresVideoCompression])
  {
    return 0;
  }

  segmentConfigurations = self->_segmentConfigurations;
  v10 = [a3 segmentConfigurations];

  return [(NSArray *)segmentConfigurations isEqual:v10];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, mediaType = %@, assemblyTrackID = %d, segmentConfigurations = %@>", NSStringFromClass(v4), self, -[AVAssetTrackPlan mediaType](self, "mediaType"), -[AVAssetTrackPlan assemblyTrackID](self, "assemblyTrackID"), -[AVAssetTrackPlan segmentConfigurations](self, "segmentConfigurations")];
}

@end