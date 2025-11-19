@interface AFSiriWorkoutVoiceFeedback
- (AFSiriWorkoutVoiceFeedback)initWithCoder:(id)a3;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackAudioData:(id)a3 asbd:(AudioStreamBasicDescription *)a4;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 audioData:(id)a4 asbd:(AudioStreamBasicDescription *)a5;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 text:(id)a4;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 text:(id)a4 voiceName:(id)a5 voiceLanguage:(id)a6 intensity:(unint64_t)a7;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackText:(id)a3;
- (AudioStreamBasicDescription)feedbackAudioASBD;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriWorkoutVoiceFeedback

- (AudioStreamBasicDescription)feedbackAudioASBD
{
  v3 = *&self[1].mBitsPerChannel;
  *&retstr->mSampleRate = *&self[1].mBytesPerPacket;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mFormatID;
  return self;
}

- (AFSiriWorkoutVoiceFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedbackIdentifier"];
  feedbackIdentifier = self->_feedbackIdentifier;
  self->_feedbackIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedbackText"];
  feedbackText = self->_feedbackText;
  self->_feedbackText = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceName"];
  voiceName = self->_voiceName;
  self->_voiceName = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceLanguage"];
  voiceLanguage = self->_voiceLanguage;
  self->_voiceLanguage = v11;

  self->_feedbackIntensity = [v4 decodeIntegerForKey:@"feedbackIntensity"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedbackAudioData"];
  feedbackAudioData = self->_feedbackAudioData;
  self->_feedbackAudioData = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedbackAudioASBD"];

  if ([v15 length] == 40)
  {
    [v15 getBytes:&self->_feedbackAudioASBD length:40];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  feedbackIdentifier = self->_feedbackIdentifier;
  v5 = a3;
  [v5 encodeObject:feedbackIdentifier forKey:@"feedbackIdentifier"];
  [v5 encodeObject:self->_feedbackText forKey:@"feedbackText"];
  [v5 encodeObject:self->_voiceName forKey:@"voiceName"];
  [v5 encodeObject:self->_voiceLanguage forKey:@"voiceLanguage"];
  [v5 encodeInteger:self->_feedbackIntensity forKey:@"feedbackIntensity"];
  [v5 encodeObject:self->_feedbackAudioData forKey:@"feedbackAudioData"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_feedbackAudioASBD length:40];
  [v5 encodeObject:v6 forKey:@"feedbackAudioASBD"];
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackAudioData:(id)a3 asbd:(AudioStreamBasicDescription *)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];

  v10 = *&a4->mBytesPerPacket;
  v13[0] = *&a4->mSampleRate;
  v13[1] = v10;
  v14 = *&a4->mBitsPerChannel;
  v11 = [(AFSiriWorkoutVoiceFeedback *)self initWithVoiceFeedbackIdentifier:v9 audioData:v7 asbd:v13];

  return v11;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackText:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];

  v8 = [(AFSiriWorkoutVoiceFeedback *)self initWithVoiceFeedbackIdentifier:v7 text:v5];
  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFSiriWorkoutVoiceFeedback;
  v4 = [(AFSiriWorkoutVoiceFeedback *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ feedbackIdentifier %@ voiceName %@ voiceLanguage %@", v4, self->_feedbackIdentifier, self->_voiceName, self->_voiceLanguage];

  return v5;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 text:(id)a4 voiceName:(id)a5 voiceLanguage:(id)a6 intensity:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = AFSiriWorkoutVoiceFeedback;
  v17 = [(AFSiriWorkoutVoiceFeedback *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_feedbackIdentifier, a3);
    objc_storeStrong(&v18->_feedbackText, a4);
    objc_storeStrong(&v18->_voiceName, a5);
    objc_storeStrong(&v18->_voiceLanguage, a6);
    v18->_feedbackIntensity = a7;
  }

  return v18;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 audioData:(id)a4 asbd:(AudioStreamBasicDescription *)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = AFSiriWorkoutVoiceFeedback;
  v11 = [(AFSiriWorkoutVoiceFeedback *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedbackIdentifier, a3);
    objc_storeStrong(&v12->_feedbackAudioData, a4);
    v13 = *&a5->mSampleRate;
    v14 = *&a5->mBytesPerPacket;
    *&v12->_feedbackAudioASBD.mBitsPerChannel = *&a5->mBitsPerChannel;
    *&v12->_feedbackAudioASBD.mBytesPerPacket = v14;
    *&v12->_feedbackAudioASBD.mSampleRate = v13;
  }

  return v12;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)a3 text:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AFSiriWorkoutVoiceFeedback;
  v9 = [(AFSiriWorkoutVoiceFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedbackIdentifier, a3);
    objc_storeStrong(&v10->_feedbackText, a4);
  }

  return v10;
}

@end