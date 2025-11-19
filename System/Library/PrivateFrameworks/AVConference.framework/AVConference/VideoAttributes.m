@interface VideoAttributes
+ (VideoAttributes)videoAttributesWithVideoAttributes:(id)a3;
+ (id)cameraUIDForVideoAttributeCamera:(int)a3;
+ (int)videoAttributeCameraForCameraUID:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)framePresentationTime;
- (CGRect)contentsRect;
- (CGRect)contentsRectForCALayer;
- (CGSize)ratio;
- (VideoAttributes)init;
- (VideoAttributes)initWithCameraStatusBits:(unsigned __int8)a3 aspectRatio:(CGSize)a4 contentsRect:(CGRect)a5 scaleFactor:(float)a6 frameOrientationReference:(int)a7;
- (VideoAttributes)initWithCoder:(id)a3;
- (VideoAttributes)initWithEncodedDictionary:(id)a3;
- (id)copyEncodedDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)decodeFromNSDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFramePresentationTime:(id *)a3;
- (void)updateCameraStatusBits:(unsigned __int8)a3;
@end

@implementation VideoAttributes

- (VideoAttributes)init
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VideoAttributes;
  v2 = [(VideoAttributes *)&v12 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = *MEMORY[0x1E695F060];
    *(v2 + 3) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v2 + 56) = _Q0;
    CMTimeMake(&v11, 0, 1);
    *(v3 + 76) = v11;
    *(v3 + 100) = 1065353216;
    v9 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 7) = *MEMORY[0x1E695F050];
    *(v3 + 8) = v9;
  }

  return v3;
}

- (VideoAttributes)initWithCameraStatusBits:(unsigned __int8)a3 aspectRatio:(CGSize)a4 contentsRect:(CGRect)a5 scaleFactor:(float)a6 frameOrientationReference:(int)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a4.height;
  v14 = a4.width;
  v15 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VideoAttributes;
  v16 = [(VideoAttributes *)&v23 init];
  v18 = v16;
  if (v16)
  {
    v16->ratio.width = v14;
    v16->ratio.height = v13;
    v16->orientation = v15 & 3;
    v16->camera = (v15 >> 3) & 1;
    v16->cameraSwitching = (v15 & 0x40) != 0;
    v16->videoMirrored = (v15 & 4) != 0;
    v16->contentsRect.origin.x = x;
    v16->contentsRect.origin.y = y;
    v16->contentsRect.size.width = width;
    v16->contentsRect.size.height = height;
    *&v17 = a6;
    [(VideoAttributes *)v16 setScaleFactor:v17];
    CMTimeMake(&v22, 0, 1);
    *(&v18->videoMirrored + 3) = v22;
    v19 = MEMORY[0x1E695F050];
    v18->videoSourceScreen = (v15 & 0x30) == 16;
    v20 = v19[1];
    v18->_contentsRectForCALayer.origin = *v19;
    v18->_contentsRectForCALayer.size = v20;
    LODWORD(v18->scaleFactor) = a7;
  }

  return v18;
}

- (VideoAttributes)initWithEncodedDictionary:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VideoAttributes;
  v4 = [(VideoAttributes *)&v6 init];
  [(VideoAttributes *)v4 decodeFromNSDictionary:a3];
  return v4;
}

+ (VideoAttributes)videoAttributesWithVideoAttributes:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc_init(VideoAttributes);
  [a3 ratio];
  [(VideoAttributes *)v4 setRatio:?];
  -[VideoAttributes setOrientation:](v4, "setOrientation:", [a3 orientation]);
  -[VideoAttributes setCamera:](v4, "setCamera:", [a3 camera]);
  -[VideoAttributes setCameraSwitching:](v4, "setCameraSwitching:", [a3 cameraSwitching]);
  [a3 contentsRect];
  [(VideoAttributes *)v4 setContentsRect:?];
  -[VideoAttributes setVideoSourceScreen:](v4, "setVideoSourceScreen:", [a3 videoSourceScreen]);
  -[VideoAttributes setVideoMirrored:](v4, "setVideoMirrored:", [a3 videoMirrored]);
  [a3 framePresentationTime];
  v6 = v8;
  v7 = v9;
  [(VideoAttributes *)v4 setFramePresentationTime:&v6];
  [a3 scaleFactor];
  [(VideoAttributes *)v4 setScaleFactor:?];
  [a3 contentsRectForCALayer];
  [(VideoAttributes *)v4 setContentsRectForCALayer:?];
  -[VideoAttributes setFrameOrientationReference:](v4, "setFrameOrientationReference:", [a3 frameOrientationReference]);
  return v4;
}

+ (int)videoAttributeCameraForCameraUID:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:0"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:2"])
  {
    return 2;
  }

  return 0;
}

+ (id)cameraUIDForVideoAttributeCamera:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E85F7AE8 + a3);
  }
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  width = self->ratio.width;
  height = self->ratio.height;
  orientation = self->orientation;
  if (orientation >= 3)
  {
    if (orientation == 3)
    {
      v7 = "LandscapeRight";
    }

    else
    {
      v7 = "Invalid";
    }
  }

  else
  {
    v7 = off_1E85F7B00[orientation];
  }

  camera = self->camera;
  v9 = "Back";
  cameraSwitching = self->cameraSwitching;
  if (camera != 1)
  {
    v9 = "Invalid";
  }

  size = self->contentsRect.size;
  if (camera)
  {
    v11 = v9;
  }

  else
  {
    v11 = "Front";
  }

  v23 = self->_contentsRectForCALayer.size;
  origin = self->contentsRect.origin;
  x = self->_contentsRectForCALayer.origin.x;
  y = self->_contentsRectForCALayer.origin.y;
  videoSourceScreen = self->videoSourceScreen;
  videoMirrored = self->videoMirrored;
  *&time.value = *(&self->videoMirrored + 3);
  time.epoch = *&self->framePresentationTime.flags;
  Seconds = CMTimeGetSeconds(&time);
  v17 = "Remote";
  scaleFactor = self->scaleFactor;
  if (LODWORD(scaleFactor) != 1)
  {
    v17 = "Invalid";
  }

  if (scaleFactor == 0.0)
  {
    v17 = "Local";
  }

  v19 = "NO";
  if (videoMirrored)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  if (videoSourceScreen)
  {
    v21 = "YES";
  }

  else
  {
    v21 = "NO";
  }

  if (cameraSwitching)
  {
    v19 = "YES";
  }

  return [v3 stringWithFormat:@"[ratio:%.2fx%.2f orientation:%s camera:%s switching:%s contentsRect:%.3fx%.3f@(%.3f, %.3f) contentsRectForCALayer:%.3fx%.3f@(%.3f, %.3f) videoSourceScreen:%s videoMirrored:%s framePresentationTime:%f scaleFactor:%f frameOrientationReference:%s]", *&width, *&height, v7, v11, v19, size, origin, v23, *&x, *&y, v21, v20, *&Seconds, *(&self->framePresentationTime.epoch + 1), v17];
}

- (void)encodeWithCoder:(id)a3
{
  x = self->contentsRect.origin.x;
  y = self->contentsRect.origin.y;
  width = self->contentsRect.size.width;
  height = self->contentsRect.size.height;
  [a3 encodeSize:@"ratio" forKey:{self->ratio.width, self->ratio.height}];
  [a3 encodeInt:self->orientation forKey:@"orientation"];
  [a3 encodeInt:self->camera forKey:@"camera"];
  [a3 encodeBool:self->cameraSwitching forKey:@"cameraSwitching"];
  [a3 encodeRect:@"contentsRect" forKey:{x, y, width, height}];
  [a3 encodeBool:self->videoSourceScreen forKey:@"isVideoSourceScreen"];
  [a3 encodeBool:self->videoMirrored forKey:@"videoMirrored"];
  [a3 encodeInt64:*(&self->videoMirrored + 3) forKey:@"framePresentationTimeValue"];
  [a3 encodeInt32:HIDWORD(self->framePresentationTime.value) forKey:@"framePresentationTimeTimeScale"];
  LODWORD(v9) = HIDWORD(self->framePresentationTime.epoch);
  [a3 encodeFloat:@"scaleFactor" forKey:v9];
  scaleFactor_low = LODWORD(self->scaleFactor);

  [a3 encodeInt:scaleFactor_low forKey:@"frameOrientationReference"];
}

- (VideoAttributes)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [a3 decodeSizeForKey:@"ratio"];
  self->ratio.width = v5;
  self->ratio.height = v6;
  self->orientation = [a3 decodeIntForKey:@"orientation"];
  self->camera = [a3 decodeIntForKey:@"camera"];
  self->cameraSwitching = [a3 decodeBoolForKey:@"cameraSwitching"];
  [a3 decodeRectForKey:@"contentsRect"];
  self->contentsRect.origin.x = v7;
  self->contentsRect.origin.y = v8;
  self->contentsRect.size.width = v9;
  self->contentsRect.size.height = v10;
  self->videoSourceScreen = [a3 decodeBoolForKey:@"isVideoSourceScreen"];
  self->videoMirrored = [a3 decodeBoolForKey:@"videoMirrored"];
  CMTimeMake(&v17, [a3 decodeInt64ForKey:@"framePresentationTimeValue"], objc_msgSend(a3, "decodeInt32ForKey:", @"framePresentationTimeTimeScale"));
  *(&self->videoMirrored + 3) = *&v17.value;
  *&self->framePresentationTime.flags = v17.epoch;
  [a3 decodeFloatForKey:@"scaleFactor"];
  HIDWORD(self->framePresentationTime.epoch) = v11;
  [a3 decodeRectForKey:@"contentsRectForCALayer"];
  self->_contentsRectForCALayer.origin.x = v12;
  self->_contentsRectForCALayer.origin.y = v13;
  self->_contentsRectForCALayer.size.width = v14;
  self->_contentsRectForCALayer.size.height = v15;
  LODWORD(self->scaleFactor) = [a3 decodeIntForKey:@"frameOrientationReference"];
  return self;
}

- (id)copyEncodedDictionary
{
  v18 = objc_autoreleasePoolPush();
  v17 = NSStringFromSize(self->ratio);
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->orientation];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->camera];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->cameraSwitching];
  v4 = NSStringFromRect(self->contentsRect);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->videoSourceScreen];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->videoMirrored];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(&self->videoMirrored + 3)];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(self->framePresentationTime.value)];
  LODWORD(v9) = HIDWORD(self->framePresentationTime.epoch);
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v11 = NSStringFromRect(self->_contentsRectForCALayer);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->scaleFactor)];
  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v17, @"ratio", v16, @"orientation", v15, @"camera", v3, @"cameraSwitching", v4, @"contentsRect", v5, @"isVideoSourceScreen", v6, @"videoMirrored", v7, @"framePresentationTimeValue", v8, @"framePresentationTimeTimeScale", v10, @"scaleFactor", v11, @"contentsRectForCALayer", v12, @"frameOrientationReference", 0}];
  objc_autoreleasePoolPop(v18);
  return v13;
}

- (void)decodeFromNSDictionary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a3 objectForKeyedSubscript:@"ratio"];
    v6 = [a3 objectForKeyedSubscript:@"orientation"];
    v7 = [a3 objectForKeyedSubscript:@"camera"];
    v8 = [a3 objectForKeyedSubscript:@"cameraSwitching"];
    v9 = [a3 objectForKeyedSubscript:@"contentsRect"];
    v10 = [a3 objectForKeyedSubscript:@"isVideoSourceScreen"];
    v11 = [a3 objectForKeyedSubscript:@"videoMirrored"];
    v14 = [a3 objectForKeyedSubscript:@"framePresentationTimeValue"];
    v12 = [a3 objectForKeyedSubscript:@"framePresentationTimeTimeScale"];
    v16 = [a3 objectForKeyedSubscript:@"scaleFactor"];
    aString = [a3 objectForKeyedSubscript:@"contentsRectForCALayer"];
    v17 = [a3 objectForKeyedSubscript:@"frameOrientationReference"];
    self->ratio = NSSizeFromString(v5);
    self->orientation = [v6 intValue];
    self->camera = [v7 intValue];
    self->cameraSwitching = [v8 intValue] != 0;
    self->contentsRect = NSRectFromString(v9);
    self->videoSourceScreen = [v10 intValue] != 0;
    self->videoMirrored = [v11 intValue] != 0;
    CMTimeMake(&v18, [v14 longLongValue], objc_msgSend(v12, "intValue"));
    *(&self->videoMirrored + 3) = v18;
    [v16 floatValue];
    HIDWORD(self->framePresentationTime.epoch) = v13;
    self->_contentsRectForCALayer = NSRectFromString(aString);
    LODWORD(self->scaleFactor) = [v17 intValue];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[VideoAttributes allocWithZone:?]];
  if (result)
  {
    *(result + 8) = self->ratio;
    *(result + 6) = self->orientation;
    *(result + 7) = self->camera;
    *(result + 32) = self->cameraSwitching;
    origin = self->contentsRect.origin;
    *(result + 56) = self->contentsRect.size;
    *(result + 40) = origin;
    *(result + 72) = self->videoSourceScreen;
    *(result + 73) = self->videoMirrored;
    v6 = *(&self->videoMirrored + 3);
    *(result + 92) = *&self->framePresentationTime.flags;
    *(result + 76) = v6;
    *(result + 25) = HIDWORD(self->framePresentationTime.epoch);
    size = self->_contentsRectForCALayer.size;
    *(result + 7) = self->_contentsRectForCALayer.origin;
    *(result + 8) = size;
    *(result + 26) = LODWORD(self->scaleFactor);
  }

  return result;
}

- (void)updateCameraStatusBits:(unsigned __int8)a3
{
  self->orientation = a3 & 3;
  self->camera = (a3 >> 3) & 1;
  self->cameraSwitching = (a3 & 0x40) != 0;
  self->videoMirrored = (a3 & 4) != 0;
  self->videoSourceScreen = (a3 & 0x30) == 16;
}

- (CGSize)ratio
{
  width = self->ratio.width;
  height = self->ratio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentsRect
{
  x = self->contentsRect.origin.x;
  y = self->contentsRect.origin.y;
  width = self->contentsRect.size.width;
  height = self->contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)framePresentationTime
{
  *&retstr->var0 = *(&self[3].var0 + 4);
  retstr->var3 = *(&self[3].var3 + 4);
  return self;
}

- (void)setFramePresentationTime:(id *)a3
{
  v3 = *&a3->var0;
  *&self->framePresentationTime.flags = a3->var3;
  *(&self->videoMirrored + 3) = v3;
}

- (CGRect)contentsRectForCALayer
{
  x = self->_contentsRectForCALayer.origin.x;
  y = self->_contentsRectForCALayer.origin.y;
  width = self->_contentsRectForCALayer.size.width;
  height = self->_contentsRectForCALayer.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end