@interface VideoAttributes
+ (VideoAttributes)videoAttributesWithVideoAttributes:(id)attributes;
+ (id)cameraUIDForVideoAttributeCamera:(int)camera;
+ (int)videoAttributeCameraForCameraUID:(id)d;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)framePresentationTime;
- (CGRect)contentsRect;
- (CGRect)contentsRectForCALayer;
- (CGSize)ratio;
- (VideoAttributes)init;
- (VideoAttributes)initWithCameraStatusBits:(unsigned __int8)bits aspectRatio:(CGSize)ratio contentsRect:(CGRect)rect scaleFactor:(float)factor frameOrientationReference:(int)reference;
- (VideoAttributes)initWithCoder:(id)coder;
- (VideoAttributes)initWithEncodedDictionary:(id)dictionary;
- (id)copyEncodedDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)decodeFromNSDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setFramePresentationTime:(id *)time;
- (void)updateCameraStatusBits:(unsigned __int8)bits;
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

- (VideoAttributes)initWithCameraStatusBits:(unsigned __int8)bits aspectRatio:(CGSize)ratio contentsRect:(CGRect)rect scaleFactor:(float)factor frameOrientationReference:(int)reference
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = ratio.height;
  v14 = ratio.width;
  bitsCopy = bits;
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VideoAttributes;
  v16 = [(VideoAttributes *)&v23 init];
  v18 = v16;
  if (v16)
  {
    v16->ratio.width = v14;
    v16->ratio.height = v13;
    v16->orientation = bitsCopy & 3;
    v16->camera = (bitsCopy >> 3) & 1;
    v16->cameraSwitching = (bitsCopy & 0x40) != 0;
    v16->videoMirrored = (bitsCopy & 4) != 0;
    v16->contentsRect.origin.x = x;
    v16->contentsRect.origin.y = y;
    v16->contentsRect.size.width = width;
    v16->contentsRect.size.height = height;
    *&v17 = factor;
    [(VideoAttributes *)v16 setScaleFactor:v17];
    CMTimeMake(&v22, 0, 1);
    *(&v18->videoMirrored + 3) = v22;
    v19 = MEMORY[0x1E695F050];
    v18->videoSourceScreen = (bitsCopy & 0x30) == 16;
    v20 = v19[1];
    v18->_contentsRectForCALayer.origin = *v19;
    v18->_contentsRectForCALayer.size = v20;
    LODWORD(v18->scaleFactor) = reference;
  }

  return v18;
}

- (VideoAttributes)initWithEncodedDictionary:(id)dictionary
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VideoAttributes;
  v4 = [(VideoAttributes *)&v6 init];
  [(VideoAttributes *)v4 decodeFromNSDictionary:dictionary];
  return v4;
}

+ (VideoAttributes)videoAttributesWithVideoAttributes:(id)attributes
{
  v10 = *MEMORY[0x1E69E9840];
  if (!attributes)
  {
    return 0;
  }

  v4 = objc_alloc_init(VideoAttributes);
  [attributes ratio];
  [(VideoAttributes *)v4 setRatio:?];
  -[VideoAttributes setOrientation:](v4, "setOrientation:", [attributes orientation]);
  -[VideoAttributes setCamera:](v4, "setCamera:", [attributes camera]);
  -[VideoAttributes setCameraSwitching:](v4, "setCameraSwitching:", [attributes cameraSwitching]);
  [attributes contentsRect];
  [(VideoAttributes *)v4 setContentsRect:?];
  -[VideoAttributes setVideoSourceScreen:](v4, "setVideoSourceScreen:", [attributes videoSourceScreen]);
  -[VideoAttributes setVideoMirrored:](v4, "setVideoMirrored:", [attributes videoMirrored]);
  [attributes framePresentationTime];
  v6 = v8;
  v7 = v9;
  [(VideoAttributes *)v4 setFramePresentationTime:&v6];
  [attributes scaleFactor];
  [(VideoAttributes *)v4 setScaleFactor:?];
  [attributes contentsRectForCALayer];
  [(VideoAttributes *)v4 setContentsRectForCALayer:?];
  -[VideoAttributes setFrameOrientationReference:](v4, "setFrameOrientationReference:", [attributes frameOrientationReference]);
  return v4;
}

+ (int)videoAttributeCameraForCameraUID:(id)d
{
  if ([d isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:0"])
  {
    return 1;
  }

  if ([d isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:2"])
  {
    return 2;
  }

  return 0;
}

+ (id)cameraUIDForVideoAttributeCamera:(int)camera
{
  if (camera > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E85F7AE8 + camera);
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

- (void)encodeWithCoder:(id)coder
{
  x = self->contentsRect.origin.x;
  y = self->contentsRect.origin.y;
  width = self->contentsRect.size.width;
  height = self->contentsRect.size.height;
  [coder encodeSize:@"ratio" forKey:{self->ratio.width, self->ratio.height}];
  [coder encodeInt:self->orientation forKey:@"orientation"];
  [coder encodeInt:self->camera forKey:@"camera"];
  [coder encodeBool:self->cameraSwitching forKey:@"cameraSwitching"];
  [coder encodeRect:@"contentsRect" forKey:{x, y, width, height}];
  [coder encodeBool:self->videoSourceScreen forKey:@"isVideoSourceScreen"];
  [coder encodeBool:self->videoMirrored forKey:@"videoMirrored"];
  [coder encodeInt64:*(&self->videoMirrored + 3) forKey:@"framePresentationTimeValue"];
  [coder encodeInt32:HIDWORD(self->framePresentationTime.value) forKey:@"framePresentationTimeTimeScale"];
  LODWORD(v9) = HIDWORD(self->framePresentationTime.epoch);
  [coder encodeFloat:@"scaleFactor" forKey:v9];
  scaleFactor_low = LODWORD(self->scaleFactor);

  [coder encodeInt:scaleFactor_low forKey:@"frameOrientationReference"];
}

- (VideoAttributes)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  [coder decodeSizeForKey:@"ratio"];
  self->ratio.width = v5;
  self->ratio.height = v6;
  self->orientation = [coder decodeIntForKey:@"orientation"];
  self->camera = [coder decodeIntForKey:@"camera"];
  self->cameraSwitching = [coder decodeBoolForKey:@"cameraSwitching"];
  [coder decodeRectForKey:@"contentsRect"];
  self->contentsRect.origin.x = v7;
  self->contentsRect.origin.y = v8;
  self->contentsRect.size.width = v9;
  self->contentsRect.size.height = v10;
  self->videoSourceScreen = [coder decodeBoolForKey:@"isVideoSourceScreen"];
  self->videoMirrored = [coder decodeBoolForKey:@"videoMirrored"];
  CMTimeMake(&v17, [coder decodeInt64ForKey:@"framePresentationTimeValue"], objc_msgSend(coder, "decodeInt32ForKey:", @"framePresentationTimeTimeScale"));
  *(&self->videoMirrored + 3) = *&v17.value;
  *&self->framePresentationTime.flags = v17.epoch;
  [coder decodeFloatForKey:@"scaleFactor"];
  HIDWORD(self->framePresentationTime.epoch) = v11;
  [coder decodeRectForKey:@"contentsRectForCALayer"];
  self->_contentsRectForCALayer.origin.x = v12;
  self->_contentsRectForCALayer.origin.y = v13;
  self->_contentsRectForCALayer.size.width = v14;
  self->_contentsRectForCALayer.size.height = v15;
  LODWORD(self->scaleFactor) = [coder decodeIntForKey:@"frameOrientationReference"];
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

- (void)decodeFromNSDictionary:(id)dictionary
{
  v19 = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    v5 = [dictionary objectForKeyedSubscript:@"ratio"];
    v6 = [dictionary objectForKeyedSubscript:@"orientation"];
    v7 = [dictionary objectForKeyedSubscript:@"camera"];
    v8 = [dictionary objectForKeyedSubscript:@"cameraSwitching"];
    v9 = [dictionary objectForKeyedSubscript:@"contentsRect"];
    v10 = [dictionary objectForKeyedSubscript:@"isVideoSourceScreen"];
    v11 = [dictionary objectForKeyedSubscript:@"videoMirrored"];
    v14 = [dictionary objectForKeyedSubscript:@"framePresentationTimeValue"];
    v12 = [dictionary objectForKeyedSubscript:@"framePresentationTimeTimeScale"];
    v16 = [dictionary objectForKeyedSubscript:@"scaleFactor"];
    aString = [dictionary objectForKeyedSubscript:@"contentsRectForCALayer"];
    v17 = [dictionary objectForKeyedSubscript:@"frameOrientationReference"];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)updateCameraStatusBits:(unsigned __int8)bits
{
  self->orientation = bits & 3;
  self->camera = (bits >> 3) & 1;
  self->cameraSwitching = (bits & 0x40) != 0;
  self->videoMirrored = (bits & 4) != 0;
  self->videoSourceScreen = (bits & 0x30) == 16;
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

- (void)setFramePresentationTime:(id *)time
{
  v3 = *&time->var0;
  *&self->framePresentationTime.flags = time->var3;
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