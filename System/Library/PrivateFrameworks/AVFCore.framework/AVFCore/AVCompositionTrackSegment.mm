@interface AVCompositionTrackSegment
+ (AVCompositionTrackSegment)compositionTrackSegmentWithTimeRange:(CMTimeRange *)timeRange;
+ (AVCompositionTrackSegment)compositionTrackSegmentWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange *)sourceTimeRange targetTimeRange:(CMTimeRange *)targetTimeRange;
- (AVCompositionTrackSegment)init;
- (AVCompositionTrackSegment)initWithCoder:(id)coder;
- (AVCompositionTrackSegment)initWithTimeRange:(CMTimeRange *)timeRange;
- (AVCompositionTrackSegment)initWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange *)sourceTimeRange targetTimeRange:(CMTimeRange *)targetTimeRange;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (id)_initWithTimeMapping:(id *)mapping;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCompositionTrackSegment

+ (AVCompositionTrackSegment)compositionTrackSegmentWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange *)sourceTimeRange targetTimeRange:(CMTimeRange *)targetTimeRange
{
  v8 = *&trackID;
  v10 = [AVCompositionTrackSegment alloc];
  v11 = *&sourceTimeRange->start.epoch;
  v15[0] = *&sourceTimeRange->start.value;
  v15[1] = v11;
  v15[2] = *&sourceTimeRange->duration.timescale;
  v12 = *&targetTimeRange->start.epoch;
  v14[0] = *&targetTimeRange->start.value;
  v14[1] = v12;
  v14[2] = *&targetTimeRange->duration.timescale;
  return [(AVCompositionTrackSegment *)v10 initWithURL:URL trackID:v8 sourceTimeRange:v15 targetTimeRange:v14];
}

+ (AVCompositionTrackSegment)compositionTrackSegmentWithTimeRange:(CMTimeRange *)timeRange
{
  v4 = [AVCompositionTrackSegment alloc];
  v5 = *&timeRange->start.epoch;
  v7[0] = *&timeRange->start.value;
  v7[1] = v5;
  v7[2] = *&timeRange->duration.timescale;
  return [(AVCompositionTrackSegment *)v4 initWithTimeRange:v7];
}

- (AVCompositionTrackSegment)init
{
  v2 = *(MEMORY[0x1E6960C98] + 16);
  v4[0] = *MEMORY[0x1E6960C98];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E6960C98] + 32);
  return [(AVCompositionTrackSegment *)self initWithTimeRange:v4];
}

- (id)_initWithTimeMapping:(id *)mapping
{
  v8.receiver = self;
  v8.super_class = AVCompositionTrackSegment;
  v3 = *&mapping->var1.var0.var0;
  v7[2] = *&mapping->var0.var1.var1;
  v7[3] = v3;
  v4 = *&mapping->var1.var1.var1;
  v7[4] = *&mapping->var1.var0.var3;
  v7[5] = v4;
  v5 = *&mapping->var0.var0.var3;
  v7[0] = *&mapping->var0.var0.var0;
  v7[1] = v5;
  return [(AVAssetTrackSegment *)&v8 _initWithTimeMapping:v7];
}

- (AVCompositionTrackSegment)initWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange *)sourceTimeRange targetTimeRange:(CMTimeRange *)targetTimeRange
{
  v8 = *&sourceTimeRange->start.epoch;
  v17 = *&sourceTimeRange->start.value;
  v18 = v8;
  v9 = *&targetTimeRange->start.value;
  v10 = *&targetTimeRange->start.epoch;
  v19 = *&sourceTimeRange->duration.timescale;
  v20 = v9;
  v11 = *&targetTimeRange->duration.timescale;
  v21 = v10;
  v22 = v11;
  v16.receiver = self;
  v16.super_class = AVCompositionTrackSegment;
  v15[2] = v19;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[0] = v17;
  v15[1] = v8;
  v12 = [(AVAssetTrackSegment *)&v16 _initWithTimeMapping:v15];
  if (v12)
  {
    Ivars = AVCompositionTrackSegmentCreateIvars(URL, trackID);
    v12->_priv = Ivars;
    if (!Ivars)
    {

      return 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    self->_priv->editAssetURL = 0;
    v4 = self->_priv;
    if (v4)
    {
      CFRelease(v4);
      self->_priv = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = AVCompositionTrackSegment;
  [(AVCompositionTrackSegment *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    [(AVAssetTrackSegment *)self timeMapping];
    time = v16;
    Seconds = CMTimeGetSeconds(&time);
    [(AVAssetTrackSegment *)self timeMapping];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    Seconds = CMTimeGetSeconds(&time);
    memset(v15, 0, sizeof(v15));
  }

  time = *&v15[1];
  v7 = [v3 stringWithFormat:@"<%@: %p timeRange [%.3f, +%.3f] ", v5, self, *&Seconds, CMTimeGetSeconds(&time)];
  if ([(AVCompositionTrackSegment *)self isEmpty])
  {
    [v7 appendString:@"is empty"];
  }

  else
  {
    priv = self->_priv;
    editAssetURL = priv->editAssetURL;
    editAssetTrackID = priv->editAssetTrackID;
    [(AVAssetTrackSegment *)self timeMapping];
    time = v14;
    v11 = CMTimeGetSeconds(&time);
    [(AVAssetTrackSegment *)self timeMapping];
    time = v13;
    [v7 appendFormat:@"from trackID %d of asset %@ sourceTimeRange [%.3f, +%.3f]", editAssetTrackID, editAssetURL, *&v11, CMTimeGetSeconds(&time)];
  }

  [v7 appendString:@">"];
  return v7;
}

- (BOOL)isEmpty
{
  v3.receiver = self;
  v3.super_class = AVCompositionTrackSegment;
  return [(AVAssetTrackSegment *)&v3 isEmpty];
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = AVCompositionTrackSegment;
  v5 = [(AVAssetTrackSegment *)&v9 isEqual:?];
  if (v5)
  {
    sourceTrackID = [(AVCompositionTrackSegment *)self sourceTrackID];
    if (sourceTrackID == [equal sourceTrackID])
    {
      sourceURL = [(AVCompositionTrackSegment *)self sourceURL];
      if (sourceURL == [equal sourceURL])
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = -[NSURL isEqual:](-[AVCompositionTrackSegment sourceURL](self, "sourceURL"), "isEqual:", [equal sourceURL]);
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = AVCompositionTrackSegment;
  v3 = [(AVAssetTrackSegment *)&v6 hash];
  v4 = [(NSURL *)[(AVCompositionTrackSegment *)self sourceURL] hash];
  return v4 ^ [(AVCompositionTrackSegment *)self sourceTrackID]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AVCompositionTrackSegment;
  [(AVAssetTrackSegment *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[AVCompositionTrackSegment sourceURL](self forKey:{"sourceURL"), @"sourceURL"}];
  [coder encodeInt32:-[AVCompositionTrackSegment sourceTrackID](self forKey:{"sourceTrackID"), @"sourceTrackID"}];
}

- (AVCompositionTrackSegment)initWithTimeRange:(CMTimeRange *)timeRange
{
  memset(&__src, 0, sizeof(__src));
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v9[0].start.value = *MEMORY[0x1E6960C98];
  *&v9[0].start.epoch = v4;
  *&v9[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v5 = *&timeRange->start.epoch;
  *&target.start.value = *&timeRange->start.value;
  *&target.start.epoch = v5;
  *&target.duration.timescale = *&timeRange->duration.timescale;
  CMTimeMappingMake(&__src, v9, &target);
  v10.receiver = self;
  v10.super_class = AVCompositionTrackSegment;
  memcpy(v9, &__src, sizeof(v9));
  v6 = [(AVAssetTrackSegment *)&v10 _initWithTimeMapping:v9];
  if (v6)
  {
    Ivars = AVCompositionTrackSegmentCreateIvars(0, 0);
    v6->_priv = Ivars;
    if (!Ivars)
    {

      return 0;
    }
  }

  return v6;
}

- (AVCompositionTrackSegment)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = AVCompositionTrackSegment;
  v4 = [(AVAssetTrackSegment *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    Ivars = AVCompositionTrackSegmentCreateIvars(v5, [coder decodeInt32ForKey:@"sourceTrackID"]);
    v4->_priv = Ivars;
    if (!Ivars)
    {

      return 0;
    }
  }

  return v4;
}

@end