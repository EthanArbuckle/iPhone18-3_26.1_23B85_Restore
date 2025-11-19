@interface AVAssetVideoTrackPlan
- (AVAssetVideoTrackPlan)initWithVideoCodecType:(id)a3 encoderSpecification:(id)a4 mediaType:(id)a5 segmentConfigurations:(id)a6 assemblyTrackID:(int)a7;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetVideoTrackPlan

- (AVAssetVideoTrackPlan)initWithVideoCodecType:(id)a3 encoderSpecification:(id)a4 mediaType:(id)a5 segmentConfigurations:(id)a6 assemblyTrackID:(int)a7
{
  if (@"vide" == a5 || @"auxv" == a5)
  {
    v12 = 0u;
    v13 = 0u;
    [AVAssetPlanner segmentBoundaryGuidelinesForVideoCodecType:a3 videoEncoderSpecification:a4];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = -[AVAssetTrackPlan mediaType](self, "mediaType"), v5 == [a3 mediaType]) && (v6 = -[AVAssetTrackPlan assemblyTrackID](self, "assemblyTrackID"), v6 == objc_msgSend(a3, "assemblyTrackID")) && (v7 = -[AVAssetVideoTrackPlan requiresVideoCompression](self, "requiresVideoCompression"), v7 == objc_msgSend(a3, "requiresVideoCompression")))
  {
    v8 = -[NSArray isEqual:](-[AVAssetTrackPlan segmentConfigurations](self, "segmentConfigurations"), "isEqual:", [a3 segmentConfigurations]);
    if (v8)
    {
      videoCodecType = self->_videoCodecType;
      LOBYTE(v8) = videoCodecType == [a3 videoCodecType];
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