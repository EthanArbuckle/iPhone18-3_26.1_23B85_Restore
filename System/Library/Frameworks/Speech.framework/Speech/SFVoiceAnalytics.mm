@interface SFVoiceAnalytics
- (SFVoiceAnalytics)initWithCoder:(id)coder;
- (id)_initWithJitter:(id)jitter shimmer:(id)shimmer pitch:(id)pitch voicing:(id)voicing;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFVoiceAnalytics

- (id)description
{
  v6.receiver = self;
  v6.super_class = SFVoiceAnalytics;
  v3 = [(SFVoiceAnalytics *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", jitter=%@, shimmer=%@, pitch=%@, voicing=%@", self->_jitter, self->_shimmer, self->_pitch, self->_voicing];

  return v4;
}

- (id)_initWithJitter:(id)jitter shimmer:(id)shimmer pitch:(id)pitch voicing:(id)voicing
{
  jitterCopy = jitter;
  shimmerCopy = shimmer;
  pitchCopy = pitch;
  voicingCopy = voicing;
  v24.receiver = self;
  v24.super_class = SFVoiceAnalytics;
  v14 = [(SFVoiceAnalytics *)&v24 init];
  if (v14)
  {
    v15 = [jitterCopy copy];
    jitter = v14->_jitter;
    v14->_jitter = v15;

    v17 = [shimmerCopy copy];
    shimmer = v14->_shimmer;
    v14->_shimmer = v17;

    v19 = [pitchCopy copy];
    pitch = v14->_pitch;
    v14->_pitch = v19;

    v21 = [voicingCopy copy];
    voicing = v14->_voicing;
    v14->_voicing = v21;
  }

  return v14;
}

- (SFVoiceAnalytics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SFVoiceAnalytics;
  v5 = [(SFVoiceAnalytics *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_jitter"];
    jitter = v5->_jitter;
    v5->_jitter = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shimmer"];
    shimmer = v5->_shimmer;
    v5->_shimmer = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pitch"];
    pitch = v5->_pitch;
    v5->_pitch = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voicing"];
    voicing = v5->_voicing;
    v5->_voicing = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  jitter = self->_jitter;
  coderCopy = coder;
  [coderCopy encodeObject:jitter forKey:@"_jitter"];
  [coderCopy encodeObject:self->_shimmer forKey:@"_shimmer"];
  [coderCopy encodeObject:self->_pitch forKey:@"_pitch"];
  [coderCopy encodeObject:self->_voicing forKey:@"_voicing"];
}

@end