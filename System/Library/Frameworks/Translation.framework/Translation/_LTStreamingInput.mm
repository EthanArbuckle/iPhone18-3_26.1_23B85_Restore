@interface _LTStreamingInput
- (_LTStreamingInput)initWithASRResult:(id)result;
- (_LTStreamingInput)initWithCoder:(id)coder;
- (_LTStreamingInput)initWithText:(id)text isFinal:(BOOL)final;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTStreamingInput

- (_LTStreamingInput)initWithText:(id)text isFinal:(BOOL)final
{
  textCopy = text;
  v12.receiver = self;
  v12.super_class = _LTStreamingInput;
  v7 = [(_LTStreamingInput *)&v12 init];
  if (v7)
  {
    v8 = [textCopy copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_isFinal = final;
    v7->_isStable = 1;
    v10 = v7;
  }

  return v7;
}

- (_LTStreamingInput)initWithASRResult:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = _LTStreamingInput;
  v5 = [(_LTStreamingInput *)&v13 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    asrResult = v5->_asrResult;
    v5->_asrResult = v6;

    v5->_isFinal = [resultCopy isFinal];
    bestTranscription = [resultCopy bestTranscription];
    formattedString = [bestTranscription formattedString];
    text = v5->_text;
    v5->_text = formattedString;

    v5->_isStable = v5->_isFinal;
    v11 = v5;
  }

  return v5;
}

- (_LTStreamingInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _LTStreamingInput;
  v5 = [(_LTStreamingInput *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asrResult"];
    asrResult = v5->_asrResult;
    v5->_asrResult = v8;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v5->_isStable = [coderCopy decodeBoolForKey:@"isStable"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_asrResult forKey:@"asrResult"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeBool:self->_isStable forKey:@"isStable"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTStreamingInput alloc];
  text = [(_LTStreamingInput *)self text];
  v6 = [(_LTStreamingInput *)v4 initWithText:text isFinal:[(_LTStreamingInput *)self isFinal]];

  asrResult = [(_LTStreamingInput *)self asrResult];
  v8 = [asrResult copy];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  *(v6 + 9) = [(_LTStreamingInput *)self isStable];
  sourceIdentifier = [(_LTStreamingInput *)self sourceIdentifier];
  v11 = [sourceIdentifier copy];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  return v6;
}

@end