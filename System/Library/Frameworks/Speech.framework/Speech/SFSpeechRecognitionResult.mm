@interface SFSpeechRecognitionResult
- (BOOL)isEqual:(id)equal;
- (NSArray)rawTranscriptions;
- (NSArray)transcriptions;
- (NSString)description;
- (SFSpeechRecognitionResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SFSpeechRecognitionResult)initWithCoder:(id)coder;
- (id)_initWithBestTranscription:(id)transcription rawTranscription:(id)rawTranscription final:(BOOL)final speechRecognitionMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSpeechRecognitionResult

- (SFSpeechRecognitionResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  if ([representationCopy length])
  {
    v13.receiver = self;
    v13.super_class = SFSpeechRecognitionResult;
    v7 = [(SFSpeechRecognitionResult *)&v13 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:0];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSArray)rawTranscriptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rawTranscriptions = selfCopy->_rawTranscriptions;
  if (!rawTranscriptions)
  {
    v4 = ExpandTranscription(selfCopy->_rawTranscription);
    v5 = [v4 copy];
    v6 = selfCopy->_rawTranscriptions;
    selfCopy->_rawTranscriptions = v5;

    rawTranscriptions = selfCopy->_rawTranscriptions;
  }

  v7 = rawTranscriptions;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSArray)transcriptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transcriptions = selfCopy->_transcriptions;
  if (!transcriptions)
  {
    v4 = ExpandTranscription(selfCopy->_bestTranscription);
    v5 = [v4 copy];
    v6 = selfCopy->_transcriptions;
    selfCopy->_transcriptions = v5;

    transcriptions = selfCopy->_transcriptions;
  }

  v7 = transcriptions;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_initWithBestTranscription:(id)transcription rawTranscription:(id)rawTranscription final:(BOOL)final speechRecognitionMetadata:(id)metadata
{
  transcriptionCopy = transcription;
  rawTranscriptionCopy = rawTranscription;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = SFSpeechRecognitionResult;
  v13 = [(SFSpeechRecognitionResult *)&v21 init];
  if (v13)
  {
    v14 = [transcriptionCopy copy];
    bestTranscription = v13->_bestTranscription;
    v13->_bestTranscription = v14;

    v16 = [rawTranscriptionCopy copy];
    rawTranscription = v13->_rawTranscription;
    v13->_rawTranscription = v16;

    v13->_final = final;
    v18 = [metadataCopy copy];
    speechRecognitionMetadata = v13->_speechRecognitionMetadata;
    v13->_speechRecognitionMetadata = v18;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  bestTranscription = self->_bestTranscription;
  coderCopy = coder;
  [coderCopy encodeObject:bestTranscription forKey:@"_bestTranscription"];
  [coderCopy encodeObject:self->_rawTranscription forKey:@"_rawTranscription"];
  [coderCopy encodeBool:self->_final forKey:@"_final"];
  [coderCopy encodeObject:self->_speechRecognitionMetadata forKey:@"_speechRecognitionMetadata"];
}

- (SFSpeechRecognitionResult)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_bestTranscription"];
    bestTranscription = v5->_bestTranscription;
    v5->_bestTranscription = v9;

    v11 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_rawTranscription"];
    rawTranscription = v5->_rawTranscription;
    v5->_rawTranscription = v14;

    v5->_final = [coderCopy decodeBoolForKey:@"_final"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechRecognitionMetadata"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_final == *(equalCopy + 24))
  {
    bestTranscription = self->_bestTranscription;
    if (bestTranscription == equalCopy[4] || [(SFTranscription *)bestTranscription isEqual:?])
    {
      speechRecognitionMetadata = self->_speechRecognitionMetadata;
      if (speechRecognitionMetadata == equalCopy[5] || [(SFSpeechRecognitionMetadata *)speechRecognitionMetadata isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

@end