@interface AVAssetVideoTrackPlan
- (AVAssetVideoTrackPlan)initWithVideoCodecType:(id)type encoderSpecification:(id)specification mediaType:(id)mediaType segmentConfigurations:(id)configurations assemblyTrackID:(int)d;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetVideoTrackPlan

- (AVAssetVideoTrackPlan)initWithVideoCodecType:(id)type encoderSpecification:(id)specification mediaType:(id)mediaType segmentConfigurations:(id)configurations assemblyTrackID:(int)d
{
  if (@"vide" == mediaType || @"auxv" == mediaType)
  {
    v12 = 0u;
    v13 = 0u;
    [AVAssetPlanner segmentBoundaryGuidelinesForVideoCodecType:type videoEncoderSpecification:specification];
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Specified codecType and encoderSpecifications do not support segmented encoding";
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Media type is not supported. Expect AVMediaTypeVideo or AVMediaTypeAuxiliaryPicture";
  }

  objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVideoTrackPlan;
  [(AVAssetTrackPlan *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[AVAssetTrackPlan mediaType](self, "mediaType"), v5 == [equal mediaType]) && (v6 = -[AVAssetTrackPlan assemblyTrackID](self, "assemblyTrackID"), v6 == objc_msgSend(equal, "assemblyTrackID")) && (v7 = -[AVAssetVideoTrackPlan requiresVideoCompression](self, "requiresVideoCompression"), v7 == objc_msgSend(equal, "requiresVideoCompression")))
  {
    v8 = -[NSArray isEqual:](-[AVAssetTrackPlan segmentConfigurations](self, "segmentConfigurations"), "isEqual:", [equal segmentConfigurations]);
    if (v8)
    {
      videoCodecType = self->_videoCodecType;
      LOBYTE(v8) = videoCodecType == [equal videoCodecType];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, mediaType = %@, videoCodecType = %@, assemblyTrackID = %d, segmentConfigurations = %@>", NSStringFromClass(v4), self, -[AVAssetTrackPlan mediaType](self, "mediaType"), -[AVAssetVideoTrackPlan videoCodecType](self, "videoCodecType"), -[AVAssetTrackPlan assemblyTrackID](self, "assemblyTrackID"), -[AVAssetTrackPlan segmentConfigurations](self, "segmentConfigurations")];
}

@end