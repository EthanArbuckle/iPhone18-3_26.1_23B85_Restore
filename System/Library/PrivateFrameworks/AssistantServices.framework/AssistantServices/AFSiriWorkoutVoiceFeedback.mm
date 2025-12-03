@interface AFSiriWorkoutVoiceFeedback
- (AFSiriWorkoutVoiceFeedback)initWithCoder:(id)coder;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackAudioData:(id)data asbd:(AudioStreamBasicDescription *)asbd;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier audioData:(id)data asbd:(AudioStreamBasicDescription *)asbd;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier text:(id)text;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier text:(id)text voiceName:(id)name voiceLanguage:(id)language intensity:(unint64_t)intensity;
- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackText:(id)text;
- (AudioStreamBasicDescription)feedbackAudioASBD;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (AFSiriWorkoutVoiceFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedbackIdentifier"];
  feedbackIdentifier = self->_feedbackIdentifier;
  self->_feedbackIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedbackText"];
  feedbackText = self->_feedbackText;
  self->_feedbackText = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceName"];
  voiceName = self->_voiceName;
  self->_voiceName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceLanguage"];
  voiceLanguage = self->_voiceLanguage;
  self->_voiceLanguage = v11;

  self->_feedbackIntensity = [coderCopy decodeIntegerForKey:@"feedbackIntensity"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedbackAudioData"];
  feedbackAudioData = self->_feedbackAudioData;
  self->_feedbackAudioData = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedbackAudioASBD"];

  if ([v15 length] == 40)
  {
    [v15 getBytes:&self->_feedbackAudioASBD length:40];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  feedbackIdentifier = self->_feedbackIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:feedbackIdentifier forKey:@"feedbackIdentifier"];
  [coderCopy encodeObject:self->_feedbackText forKey:@"feedbackText"];
  [coderCopy encodeObject:self->_voiceName forKey:@"voiceName"];
  [coderCopy encodeObject:self->_voiceLanguage forKey:@"voiceLanguage"];
  [coderCopy encodeInteger:self->_feedbackIntensity forKey:@"feedbackIntensity"];
  [coderCopy encodeObject:self->_feedbackAudioData forKey:@"feedbackAudioData"];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_feedbackAudioASBD length:40];
  [coderCopy encodeObject:v6 forKey:@"feedbackAudioASBD"];
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackAudioData:(id)data asbd:(AudioStreamBasicDescription *)asbd
{
  v6 = MEMORY[0x1E696AFB0];
  dataCopy = data;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  v10 = *&asbd->mBytesPerPacket;
  v13[0] = *&asbd->mSampleRate;
  v13[1] = v10;
  v14 = *&asbd->mBitsPerChannel;
  v11 = [(AFSiriWorkoutVoiceFeedback *)self initWithVoiceFeedbackIdentifier:uUIDString audioData:dataCopy asbd:v13];

  return v11;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackText:(id)text
{
  v4 = MEMORY[0x1E696AFB0];
  textCopy = text;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];

  v8 = [(AFSiriWorkoutVoiceFeedback *)self initWithVoiceFeedbackIdentifier:uUIDString text:textCopy];
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

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier text:(id)text voiceName:(id)name voiceLanguage:(id)language intensity:(unint64_t)intensity
{
  identifierCopy = identifier;
  textCopy = text;
  nameCopy = name;
  languageCopy = language;
  v20.receiver = self;
  v20.super_class = AFSiriWorkoutVoiceFeedback;
  v17 = [(AFSiriWorkoutVoiceFeedback *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_feedbackIdentifier, identifier);
    objc_storeStrong(&v18->_feedbackText, text);
    objc_storeStrong(&v18->_voiceName, name);
    objc_storeStrong(&v18->_voiceLanguage, language);
    v18->_feedbackIntensity = intensity;
  }

  return v18;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier audioData:(id)data asbd:(AudioStreamBasicDescription *)asbd
{
  identifierCopy = identifier;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = AFSiriWorkoutVoiceFeedback;
  v11 = [(AFSiriWorkoutVoiceFeedback *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedbackIdentifier, identifier);
    objc_storeStrong(&v12->_feedbackAudioData, data);
    v13 = *&asbd->mSampleRate;
    v14 = *&asbd->mBytesPerPacket;
    *&v12->_feedbackAudioASBD.mBitsPerChannel = *&asbd->mBitsPerChannel;
    *&v12->_feedbackAudioASBD.mBytesPerPacket = v14;
    *&v12->_feedbackAudioASBD.mSampleRate = v13;
  }

  return v12;
}

- (AFSiriWorkoutVoiceFeedback)initWithVoiceFeedbackIdentifier:(id)identifier text:(id)text
{
  identifierCopy = identifier;
  textCopy = text;
  v12.receiver = self;
  v12.super_class = AFSiriWorkoutVoiceFeedback;
  v9 = [(AFSiriWorkoutVoiceFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedbackIdentifier, identifier);
    objc_storeStrong(&v10->_feedbackText, text);
  }

  return v10;
}

@end