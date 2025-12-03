@interface EARSpeechRecognitionToken
- (EARSpeechRecognitionToken)initWithCoder:(id)coder;
- (EARSpeechRecognitionToken)initWithToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARSpeechRecognitionToken

- (EARSpeechRecognitionToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = EARSpeechRecognitionToken;
  v5 = [(EARSpeechRecognitionToken *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenName"];
    tokenName = v5->_tokenName;
    v5->_tokenName = v6;

    [coderCopy decodeDoubleForKey:@"start"];
    v5->_start = v8;
    [coderCopy decodeDoubleForKey:@"end"];
    v5->_end = v9;
    [coderCopy decodeDoubleForKey:@"silenceStart"];
    v5->_silenceStart = v10;
    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v11;
    v5->_hasSpaceAfter = [coderCopy decodeBoolForKey:@"hasSpaceAfter"];
    v5->_hasSpaceBefore = [coderCopy decodeBoolForKey:@"hasSpaceBefore"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v14;

    v5->_appendedAutoPunctuation = [coderCopy decodeBoolForKey:@"appendedAutoPunctuation"];
    v5->_prependedAutoPunctuation = [coderCopy decodeBoolForKey:@"prependedAutoPunctuation"];
    v5->_isModifiedByAutoPunctuation = [coderCopy decodeBoolForKey:@"isModifiedByAutoPunctuation"];
    [coderCopy decodeDoubleForKey:@"graphCost"];
    v5->_graphCost = v16;
    [coderCopy decodeDoubleForKey:@"acousticCost"];
    v5->_acousticCost = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tokenName = self->_tokenName;
  coderCopy = coder;
  [coderCopy encodeObject:tokenName forKey:@"tokenName"];
  [coderCopy encodeDouble:@"start" forKey:self->_start];
  [coderCopy encodeDouble:@"end" forKey:self->_end];
  [coderCopy encodeDouble:@"silenceStart" forKey:self->_silenceStart];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
  [coderCopy encodeBool:self->_hasSpaceAfter forKey:@"hasSpaceAfter"];
  [coderCopy encodeBool:self->_hasSpaceBefore forKey:@"hasSpaceBefore"];
  [coderCopy encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [coderCopy encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
  [coderCopy encodeBool:self->_appendedAutoPunctuation forKey:@"appendedAutoPunctuation"];
  [coderCopy encodeBool:self->_prependedAutoPunctuation forKey:@"prependedAutoPunctuation"];
  [coderCopy encodeBool:self->_isModifiedByAutoPunctuation forKey:@"isModifiedByAutoPunctuation"];
  [coderCopy encodeDouble:@"graphCost" forKey:self->_graphCost];
  [coderCopy encodeDouble:@"acousticCost" forKey:self->_acousticCost];
}

- (EARSpeechRecognitionToken)initWithToken:(id)token
{
  tokenCopy = token;
  v22.receiver = self;
  v22.super_class = EARSpeechRecognitionToken;
  v5 = [(EARSpeechRecognitionToken *)&v22 init];
  if (v5)
  {
    tokenName = [tokenCopy tokenName];
    v7 = [tokenName copy];
    tokenName = v5->_tokenName;
    v5->_tokenName = v7;

    [tokenCopy start];
    v5->_start = v9;
    [tokenCopy end];
    v5->_end = v10;
    [tokenCopy silenceStart];
    v5->_silenceStart = v11;
    [tokenCopy confidence];
    v5->_confidence = v12;
    v5->_hasSpaceAfter = [tokenCopy hasSpaceAfter];
    v5->_hasSpaceBefore = [tokenCopy hasSpaceBefore];
    phoneSequence = [tokenCopy phoneSequence];
    v14 = [phoneSequence copy];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v14;

    ipaPhoneSequence = [tokenCopy ipaPhoneSequence];
    v17 = [ipaPhoneSequence copy];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v17;

    v5->_appendedAutoPunctuation = [tokenCopy appendedAutoPunctuation];
    v5->_prependedAutoPunctuation = [tokenCopy prependedAutoPunctuation];
    v5->_isModifiedByAutoPunctuation = [tokenCopy isModifiedByAutoPunctuation];
    [tokenCopy graphCost];
    v5->_graphCost = v19;
    [tokenCopy acousticCost];
    v5->_acousticCost = v20;
  }

  return v5;
}

@end