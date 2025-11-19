@interface SFVoiceAnalytics
- (SFVoiceAnalytics)initWithCoder:(id)a3;
- (id)_initWithJitter:(id)a3 shimmer:(id)a4 pitch:(id)a5 voicing:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithJitter:(id)a3 shimmer:(id)a4 pitch:(id)a5 voicing:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SFVoiceAnalytics;
  v14 = [(SFVoiceAnalytics *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    jitter = v14->_jitter;
    v14->_jitter = v15;

    v17 = [v11 copy];
    shimmer = v14->_shimmer;
    v14->_shimmer = v17;

    v19 = [v12 copy];
    pitch = v14->_pitch;
    v14->_pitch = v19;

    v21 = [v13 copy];
    voicing = v14->_voicing;
    v14->_voicing = v21;
  }

  return v14;
}

- (SFVoiceAnalytics)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFVoiceAnalytics;
  v5 = [(SFVoiceAnalytics *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_jitter"];
    jitter = v5->_jitter;
    v5->_jitter = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shimmer"];
    shimmer = v5->_shimmer;
    v5->_shimmer = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pitch"];
    pitch = v5->_pitch;
    v5->_pitch = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voicing"];
    voicing = v5->_voicing;
    v5->_voicing = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  jitter = self->_jitter;
  v5 = a3;
  [v5 encodeObject:jitter forKey:@"_jitter"];
  [v5 encodeObject:self->_shimmer forKey:@"_shimmer"];
  [v5 encodeObject:self->_pitch forKey:@"_pitch"];
  [v5 encodeObject:self->_voicing forKey:@"_voicing"];
}

@end