@interface AFSpeechSynthesisRecord
+ (id)newWithBuilder:(id)builder;
- (AFSpeechSynthesisRecord)initWithBuilder:(id)builder;
- (AFSpeechSynthesisRecord)initWithCoder:(id)coder;
- (AFSpeechSynthesisRecord)initWithUtterance:(id)utterance beginTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechSynthesisRecord

- (void)encodeWithCoder:(id)coder
{
  utterance = self->_utterance;
  coderCopy = coder;
  [coderCopy encodeObject:utterance forKey:@"AFSpeechSynthesisRecord::utterance"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_beginTimestamp];
  [coderCopy encodeObject:v6 forKey:@"AFSpeechSynthesisRecord::beginTimestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_endTimestamp];
  [coderCopy encodeObject:v7 forKey:@"AFSpeechSynthesisRecord::endTimestamp"];
}

- (AFSpeechSynthesisRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechSynthesisRecord::utterance"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechSynthesisRecord::beginTimestamp"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechSynthesisRecord::endTimestamp"];

  unsignedLongLongValue2 = [v8 unsignedLongLongValue];
  v10 = [(AFSpeechSynthesisRecord *)self initWithUtterance:v5 beginTimestamp:unsignedLongLongValue endTimestamp:unsignedLongLongValue2];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      beginTimestamp = self->_beginTimestamp;
      if (beginTimestamp == [(AFSpeechSynthesisRecord *)v5 beginTimestamp]&& (endTimestamp = self->_endTimestamp, endTimestamp == [(AFSpeechSynthesisRecord *)v5 endTimestamp]))
      {
        utterance = [(AFSpeechSynthesisRecord *)v5 utterance];
        utterance = self->_utterance;
        v10 = utterance == utterance || [(NSString *)utterance isEqual:utterance];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_utterance hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_beginTimestamp];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_endTimestamp];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechSynthesisRecord;
  v5 = [(AFSpeechSynthesisRecord *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {utterance = %@, beginTimestamp = %llu, endTimestamp = %llu}", v5, self->_utterance, self->_beginTimestamp, self->_endTimestamp];

  return v6;
}

- (AFSpeechSynthesisRecord)initWithUtterance:(id)utterance beginTimestamp:(unint64_t)timestamp endTimestamp:(unint64_t)endTimestamp
{
  utteranceCopy = utterance;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AFSpeechSynthesisRecord_initWithUtterance_beginTimestamp_endTimestamp___block_invoke;
  v12[3] = &unk_1E7348858;
  v13 = utteranceCopy;
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  v9 = utteranceCopy;
  v10 = [(AFSpeechSynthesisRecord *)self initWithBuilder:v12];

  return v10;
}

void __73__AFSpeechSynthesisRecord_initWithUtterance_beginTimestamp_endTimestamp___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setUtterance:v3];
  [v4 setBeginTimestamp:a1[5]];
  [v4 setEndTimestamp:a1[6]];
}

- (AFSpeechSynthesisRecord)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFSpeechSynthesisRecord;
  v5 = [(AFSpeechSynthesisRecord *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSpeechSynthesisRecordMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSpeechSynthesisRecordMutation *)v7 isDirty])
    {
      getUtterance = [(_AFSpeechSynthesisRecordMutation *)v7 getUtterance];
      v9 = [getUtterance copy];
      utterance = v6->_utterance;
      v6->_utterance = v9;

      v6->_beginTimestamp = [(_AFSpeechSynthesisRecordMutation *)v7 getBeginTimestamp];
      v6->_endTimestamp = [(_AFSpeechSynthesisRecordMutation *)v7 getEndTimestamp];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSpeechSynthesisRecordMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSpeechSynthesisRecordMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechSynthesisRecord);
      getUtterance = [(_AFSpeechSynthesisRecordMutation *)v5 getUtterance];
      v8 = [getUtterance copy];
      utterance = v6->_utterance;
      v6->_utterance = v8;

      v6->_beginTimestamp = [(_AFSpeechSynthesisRecordMutation *)v5 getBeginTimestamp];
      v6->_endTimestamp = [(_AFSpeechSynthesisRecordMutation *)v5 getEndTimestamp];
    }

    else
    {
      v6 = [(AFSpeechSynthesisRecord *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechSynthesisRecord *)self copy];
  }

  return v6;
}

@end