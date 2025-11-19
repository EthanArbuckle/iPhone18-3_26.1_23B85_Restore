@interface SFSpeechRecognitionResult
- (BOOL)isEqual:(id)a3;
- (NSArray)rawTranscriptions;
- (NSArray)transcriptions;
- (NSString)description;
- (SFSpeechRecognitionResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SFSpeechRecognitionResult)initWithCoder:(id)a3;
- (id)_initWithBestTranscription:(id)a3 rawTranscription:(id)a4 final:(BOOL)a5 speechRecognitionMetadata:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSpeechRecognitionResult

- (SFSpeechRecognitionResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  if ([v6 length])
  {
    v13.receiver = self;
    v13.super_class = SFSpeechRecognitionResult;
    v7 = [(SFSpeechRecognitionResult *)&v13 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)rawTranscriptions
{
  v2 = self;
  objc_sync_enter(v2);
  rawTranscriptions = v2->_rawTranscriptions;
  if (!rawTranscriptions)
  {
    v4 = ExpandTranscription(v2->_rawTranscription);
    v5 = [v4 copy];
    v6 = v2->_rawTranscriptions;
    v2->_rawTranscriptions = v5;

    rawTranscriptions = v2->_rawTranscriptions;
  }

  v7 = rawTranscriptions;
  objc_sync_exit(v2);

  return v7;
}

- (NSArray)transcriptions
{
  v2 = self;
  objc_sync_enter(v2);
  transcriptions = v2->_transcriptions;
  if (!transcriptions)
  {
    v4 = ExpandTranscription(v2->_bestTranscription);
    v5 = [v4 copy];
    v6 = v2->_transcriptions;
    v2->_transcriptions = v5;

    transcriptions = v2->_transcriptions;
  }

  v7 = transcriptions;
  objc_sync_exit(v2);

  return v7;
}

- (id)_initWithBestTranscription:(id)a3 rawTranscription:(id)a4 final:(BOOL)a5 speechRecognitionMetadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SFSpeechRecognitionResult;
  v13 = [(SFSpeechRecognitionResult *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    bestTranscription = v13->_bestTranscription;
    v13->_bestTranscription = v14;

    v16 = [v11 copy];
    rawTranscription = v13->_rawTranscription;
    v13->_rawTranscription = v16;

    v13->_final = a5;
    v18 = [v12 copy];
    speechRecognitionMetadata = v13->_speechRecognitionMetadata;
    v13->_speechRecognitionMetadata = v18;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  bestTranscription = self->_bestTranscription;
  v5 = a3;
  [v5 encodeObject:bestTranscription forKey:@"_bestTranscription"];
  [v5 encodeObject:self->_rawTranscription forKey:@"_rawTranscription"];
  [v5 encodeBool:self->_final forKey:@"_final"];
  [v5 encodeObject:self->_speechRecognitionMetadata forKey:@"_speechRecognitionMetadata"];
}

- (SFSpeechRecognitionResult)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFSpeechRecognitionResult;
  v5 = [(SFSpeechRecognitionResult *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_bestTranscription"];
    bestTranscription = v5->_bestTranscription;
    v5->_bestTranscription = v9;

    v11 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_rawTranscription"];
    rawTranscription = v5->_rawTranscription;
    v5->_rawTranscription = v14;

    v5->_final = [v4 decodeBoolForKey:@"_final"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechRecognitionMetadata"];
    speechRecognitionMetadata = v5->_speechRecognitionMetadata;
    v5->_speechRecognitionMetadata = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = SFSpeechRecognitionResult;
  v3 = [(SFSpeechRecognitionResult *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" final=%d, bestTranscription=%@, speechRecognitionMetadata=%@", self->_final, self->_bestTranscription, self->_speechRecognitionMetadata];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_final == *(v4 + 24))
  {
    bestTranscription = self->_bestTranscription;
    if (bestTranscription == v4[4] || [(SFTranscription *)bestTranscription isEqual:?])
    {
      speechRecognitionMetadata = self->_speechRecognitionMetadata;
      if (speechRecognitionMetadata == v4[5] || [(SFSpeechRecognitionMetadata *)speechRecognitionMetadata isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

@end