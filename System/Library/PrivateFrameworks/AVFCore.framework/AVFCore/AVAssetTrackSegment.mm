@interface AVAssetTrackSegment
- (AVAssetTrackSegment)init;
- (AVAssetTrackSegment)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CMTimeMapping)timeMapping;
- (id)_initWithTimeMapping:(id *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAssetTrackSegment

- (AVAssetTrackSegment)init
{
  v2 = *(MEMORY[0x1E6960C78] + 48);
  v6[2] = *(MEMORY[0x1E6960C78] + 32);
  v6[3] = v2;
  v3 = *(MEMORY[0x1E6960C78] + 80);
  v6[4] = *(MEMORY[0x1E6960C78] + 64);
  v6[5] = v3;
  v4 = *(MEMORY[0x1E6960C78] + 16);
  v6[0] = *MEMORY[0x1E6960C78];
  v6[1] = v4;
  return [(AVAssetTrackSegment *)self _initWithTimeMapping:v6];
}

- (id)_initWithTimeMapping:(id *)a3
{
  v9.receiver = self;
  v9.super_class = AVAssetTrackSegment;
  result = [(AVAssetTrackSegment *)&v9 init];
  if (result)
  {
    v5 = *&a3->var0.var0.var0;
    *(result + 24) = *&a3->var0.var0.var3;
    *(result + 8) = v5;
    v6 = *&a3->var0.var1.var1;
    v7 = *&a3->var1.var0.var0;
    v8 = *&a3->var1.var0.var3;
    *(result + 88) = *&a3->var1.var1.var1;
    *(result + 72) = v8;
    *(result + 56) = v7;
    *(result + 40) = v6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetTrackSegment *)self isEmpty];
  v7 = *MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = @"empty";
  }

  else
  {
    v9 = *&self->_timeMapping.source.start.epoch;
    *&range.start.value = *&self->_timeMapping.source.start.value;
    *&range.start.epoch = v9;
    *&range.duration.timescale = *&self->_timeMapping.source.duration.timescale;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source = %@", CMTimeRangeCopyDescription(v7, &range)];
  }

  v10 = *&self->_timeMapping.target.start.epoch;
  *&range.start.value = *&self->_timeMapping.target.start.value;
  *&range.start.epoch = v10;
  *&range.duration.timescale = *&self->_timeMapping.target.duration.timescale;
  return [v3 stringWithFormat:@"<%@: %p, %@, target = %@>", v5, self, v8, CMTimeRangeCopyDescription(v7, &range)];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v14 = v3;
  v15 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (-[AVAssetTrackSegment isEmpty](self, "isEmpty") && ([a3 isEmpty] & 1) != 0)
  {
    return 1;
  }

  v7 = 0uLL;
  memset(v13, 0, sizeof(v13));
  if (self)
  {
    [(AVAssetTrackSegment *)self timeMapping];
    v7 = 0uLL;
  }

  *&v12.start.epoch = v7;
  *&v12.duration.timescale = v7;
  *&v11.duration.timescale = v7;
  *&v12.start.value = v7;
  *&v11.start.value = v7;
  *&v11.start.epoch = v7;
  if (a3)
  {
    [a3 timeMapping];
  }

  range1 = v13[0];
  v9 = v11;
  if (CMTimeRangeEqual(&range1, &v9) && (range1 = v13[1], v9 = v12, CMTimeRangeEqual(&range1, &v9)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  if ([(AVAssetTrackSegment *)self isEmpty])
  {
    return 0;
  }

  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  if (self)
  {
    [(AVAssetTrackSegment *)self timeMapping];
  }

  *&v7.value = v8;
  v7.epoch = *&v9[0];
  v4 = CMTimeHash(&v7);
  v7 = *(v9 + 8);
  v5 = CMTimeHash(&v7) ^ v4;
  *&v7.value = v10;
  v7.epoch = *&v11[0];
  v6 = CMTimeHash(&v7);
  v7 = *(v11 + 8);
  return v5 ^ v6 ^ CMTimeHash(&v7);
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [(AVAssetTrackSegment *)self timeMapping];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  [a3 encodeObject:CMTimeMappingCopyAsDictionary(&v4 forKey:{*MEMORY[0x1E695E480]), @"timeMapping"}];
}

- (CMTimeMapping)timeMapping
{
  v3 = *&self->target.start.timescale;
  *&retstr->source.duration.timescale = *&self->source.duration.epoch;
  *&retstr->target.start.value = v3;
  v4 = *&self->target.duration.epoch;
  *&retstr->target.start.epoch = *&self->target.duration.value;
  *&retstr->target.duration.timescale = v4;
  v5 = *&self->source.duration.value;
  *&retstr->source.start.value = *&self->source.start.timescale;
  *&retstr->source.start.epoch = v5;
  return self;
}

- (AVAssetTrackSegment)initWithCoder:(id)a3
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"timeMapping"}];
  memset(&__src, 0, sizeof(__src));
  CMTimeMappingMakeFromDictionary(&__src, v8);
  v12.receiver = self;
  v12.super_class = AVAssetTrackSegment;
  v9 = [(AVAssetTrackSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    memcpy(&v9->_timeMapping, &__src, sizeof(v9->_timeMapping));
  }

  return v10;
}

@end