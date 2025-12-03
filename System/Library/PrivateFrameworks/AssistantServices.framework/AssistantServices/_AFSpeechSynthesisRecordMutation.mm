@interface _AFSpeechSynthesisRecordMutation
- (_AFSpeechSynthesisRecordMutation)initWithBase:(id)base;
- (id)getUtterance;
- (unint64_t)getBeginTimestamp;
- (unint64_t)getEndTimestamp;
@end

@implementation _AFSpeechSynthesisRecordMutation

- (id)getUtterance
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    utterance = self->_utterance;
  }

  else
  {
    utterance = [(AFSpeechSynthesisRecord *)self->_base utterance];
  }

  return utterance;
}

- (unint64_t)getEndTimestamp
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_endTimestamp;
  }

  else
  {
    return [(AFSpeechSynthesisRecord *)self->_base endTimestamp];
  }
}

- (unint64_t)getBeginTimestamp
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_beginTimestamp;
  }

  else
  {
    return [(AFSpeechSynthesisRecord *)self->_base beginTimestamp];
  }
}

- (_AFSpeechSynthesisRecordMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechSynthesisRecordMutation;
  v6 = [(_AFSpeechSynthesisRecordMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end