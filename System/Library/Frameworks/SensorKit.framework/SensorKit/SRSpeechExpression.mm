@interface SRSpeechExpression
- (BOOL)isEqual:(id)equal;
- (CMTimeRange)timeRange;
- (SRSpeechExpression)init;
- (SRSpeechExpression)initWithCoder:(id)coder;
- (SRSpeechExpression)initWithVersion:(id)version timeRange:(id *)range confidence:(double)confidence mood:(double)mood valence:(double)valence activation:(double)activation dominance:(double)dominance;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRSpeechExpression

- (SRSpeechExpression)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRSpeechExpression)initWithVersion:(id)version timeRange:(id *)range confidence:(double)confidence mood:(double)mood valence:(double)valence activation:(double)activation dominance:(double)dominance
{
  v20.receiver = self;
  v20.super_class = SRSpeechExpression;
  v16 = [(SRSpeechExpression *)&v20 init];
  if (v16)
  {
    *(v16 + 1) = [version copy];
    v18 = *&range->var0.var3;
    v17 = *&range->var1.var1;
    *(v16 + 56) = *&range->var0.var0;
    *(v16 + 72) = v18;
    *(v16 + 88) = v17;
    *(v16 + 2) = confidence;
    *(v16 + 3) = mood;
    *(v16 + 4) = valence;
    *(v16 + 5) = activation;
    *(v16 + 6) = dominance;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRSpeechExpression;
  [(SRSpeechExpression *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v26 = v6;
    v27 = v5;
    v28 = v3;
    v29 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    LOBYTE(v10) = 0;
    if (self && (isKindOfClass & 1) != 0 && (!-[SRSpeechExpression version](self, "version") && ![equal version] || (v10 = -[NSString isEqual:](-[SRSpeechExpression version](self, "version"), "isEqual:", objc_msgSend(equal, "version"))) != 0))
    {
      v11 = MEMORY[0x1E696B098];
      [(SRSpeechExpression *)self timeRange];
      v12 = [v11 valueWithCMTimeRange:v25];
      v13 = MEMORY[0x1E696B098];
      if (equal)
      {
        [equal timeRange];
      }

      else
      {
        memset(v25, 0, sizeof(v25));
      }

      v10 = [v12 isEqual:{objc_msgSend(v13, "valueWithCMTimeRange:", v25)}];
      if (v10)
      {
        confidence = self->_confidence;
        [equal confidence];
        if (confidence == v15 && (mood = self->_mood, [equal mood], mood == v17) && (valence = self->_valence, objc_msgSend(equal, "valence"), valence == v19) && (activation = self->_activation, objc_msgSend(equal, "activation"), activation == v21))
        {
          dominance = self->_dominance;
          [equal dominance];
          LOBYTE(v10) = dominance == v23;
        }

        else
        {
          LOBYTE(v10) = 0;
        }
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(SRSpeechExpression *)self version] hash];
  v4 = MEMORY[0x1E696B098];
  if (self)
  {
    [(SRSpeechExpression *)self timeRange];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v5 = [objc_msgSend(v4 valueWithCMTimeRange:{v16), "hash"}] ^ v3;
  v6 = MEMORY[0x1E696AD98];
  [(SRSpeechExpression *)self confidence];
  v7 = [objc_msgSend(v6 "numberWithDouble:"hash"")];
  v8 = MEMORY[0x1E696AD98];
  [(SRSpeechExpression *)self mood];
  v9 = v5 ^ v7 ^ [objc_msgSend(v8 "numberWithDouble:"hash"")];
  v10 = MEMORY[0x1E696AD98];
  [(SRSpeechExpression *)self valence];
  v11 = [objc_msgSend(v10 "numberWithDouble:"hash"")];
  v12 = MEMORY[0x1E696AD98];
  [(SRSpeechExpression *)self activation];
  v13 = v11 ^ [objc_msgSend(v12 "numberWithDouble:"hash"")];
  v14 = MEMORY[0x1E696AD98];
  [(SRSpeechExpression *)self dominance];
  return v9 ^ v13 ^ [objc_msgSend(v14 "numberWithDouble:"hash"")];
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  v4 = *&self->_timeRange.start.epoch;
  *&range.start.value = *&self->_timeRange.start.value;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *&self->_timeRange.duration.timescale;
  v5 = CMTimeRangeCopyDescription(v3, &range);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"%@ (%p): version: %@, timeRange: %@, confidence: %f, mood: %f, valence: %f, activation: %f, dominance: %f", NSStringFromClass(v7), self, self->_version, v5, *&self->_confidence, *&self->_mood, *&self->_valence, *&self->_activation, *&self->_dominance];
  CFRelease(v5);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_version forKey:@"version"];
  v6 = MEMORY[0x1E696B098];
  [(SRSpeechExpression *)self timeRange];
  [coder encodeObject:objc_msgSend(v6 forKey:{"valueWithCMTimeRange:", v7), @"timeRange"}];
  [coder encodeDouble:@"confidence" forKey:self->_confidence];
  [coder encodeDouble:@"mood" forKey:self->_mood];
  [coder encodeDouble:@"valence" forKey:self->_valence];
  [coder encodeDouble:@"activation" forKey:self->_activation];
  [coder encodeDouble:@"dominance" forKey:self->_dominance];
}

- (SRSpeechExpression)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"timeRange"];
  [coder decodeDoubleForKey:@"confidence"];
  v9 = v8;
  [coder decodeDoubleForKey:@"mood"];
  v11 = v10;
  [coder decodeDoubleForKey:@"valence"];
  v13 = v12;
  [coder decodeDoubleForKey:@"activation"];
  v15 = v14;
  [coder decodeDoubleForKey:@"dominance"];
  v17 = v16;
  if (v7)
  {
    [v7 CMTimeRangeValue];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  return [(SRSpeechExpression *)self initWithVersion:v6 timeRange:v19 confidence:v9 mood:v11 valence:v13 activation:v15 dominance:v17];
}

- (CMTimeRange)timeRange
{
  v3 = *&self[1].duration.value;
  *&retstr->start.value = *&self[1].start.timescale;
  *&retstr->start.epoch = v3;
  *&retstr->duration.timescale = *&self[1].duration.epoch;
  return self;
}

@end