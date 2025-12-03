@interface AVCaptureReactionEffectState
- (AVCaptureReactionEffectState)initWithReactionType:(id)type startTime:(id *)time;
- (AVCaptureReactionEffectState)initWithReactionType:(id)type startTime:(id *)time endTime:(id *)endTime;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)setEndTime:(id *)time;
@end

@implementation AVCaptureReactionEffectState

- (AVCaptureReactionEffectState)initWithReactionType:(id)type startTime:(id *)time
{
  v7 = *time;
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  return [(AVCaptureReactionEffectState *)self initWithReactionType:type startTime:&v7 endTime:&v5];
}

- (AVCaptureReactionEffectState)initWithReactionType:(id)type startTime:(id *)time endTime:(id *)endTime
{
  v12.receiver = self;
  v12.super_class = AVCaptureReactionEffectState;
  v8 = [(AVCaptureReactionEffectState *)&v12 init];
  if (v8)
  {
    *(v8 + 1) = type;
    var3 = time->var3;
    *(v8 + 1) = *&time->var0;
    *(v8 + 4) = var3;
    v10 = *&endTime->var0;
    *(v8 + 7) = endTime->var3;
    *(v8 + 40) = v10;
  }

  return v8;
}

- (id)initFromDictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = AVCaptureReactionEffectState;
  v4 = [(AVCaptureReactionEffectState *)&v13 init];
  if (v4)
  {
    v5 = [dictionary objectForKeyedSubscript:@"ReactionType"];
    *(v4 + 1) = v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    [objc_msgSend(dictionary objectForKeyedSubscript:{@"StartTime", "doubleValue"}];
    CMTimeMakeWithSeconds(&v12, v6, 1000000000);
    epoch = v12.epoch;
    *(v4 + 1) = *&v12.value;
    *(v4 + 4) = epoch;
    if ((v4[28] & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = [dictionary objectForKeyedSubscript:@"EndTime"];
    if (!v8)
    {
      v10 = MEMORY[0x1E6960C70];
      *(v4 + 40) = *MEMORY[0x1E6960C70];
      *(v4 + 7) = *(v10 + 16);
      return v4;
    }

    [v8 doubleValue];
    CMTimeMakeWithSeconds(&v12, v9, 1000000000);
    *(v4 + 40) = v12;
    if ((v4[52] & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureReactionEffectState;
  [(AVCaptureReactionEffectState *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  if (self->_endTime.flags)
  {
    v13[0] = self->_reactionType;
    v12[0] = @"ReactionType";
    v12[1] = @"StartTime";
    time = self->_startTime;
    v13[1] = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time)];
    v12[2] = @"EndTime";
    time = self->_endTime;
    v13[2] = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&time)];
    v4 = MEMORY[0x1E695DF20];
    v5 = v13;
    v6 = v12;
    v7 = 3;
  }

  else
  {
    reactionType = self->_reactionType;
    v9[0] = @"ReactionType";
    v9[1] = @"StartTime";
    v10[0] = reactionType;
    time = self->_startTime;
    v10[1] = [MEMORY[0x1E696AD98] numberWithDouble:{CMTimeGetSeconds(&time), @"ReactionType", @"StartTime", reactionType}];
    v4 = MEMORY[0x1E695DF20];
    v5 = v10;
    v6 = v9;
    v7 = 2;
  }

  return [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
}

- (id)description
{
  if (self->_endTime.flags)
  {
    time = self->_endTime;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", CMTimeGetSeconds(&time)];
  }

  else
  {
    v3 = @"...";
  }

  reactionType = self->_reactionType;
  time = self->_startTime;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[AVCaptureReactionEffectState(%p): %@ %.4f - %@]", self, reactionType, CMTimeGetSeconds(&time), v3];
}

- (void)setEndTime:(id *)time
{
  v3 = *&time->var0;
  self->_endTime.epoch = time->var3;
  *&self->_endTime.value = v3;
}

@end