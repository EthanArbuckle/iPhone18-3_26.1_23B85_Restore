@interface _LTStreamingInput
- (_LTStreamingInput)initWithASRResult:(id)a3;
- (_LTStreamingInput)initWithCoder:(id)a3;
- (_LTStreamingInput)initWithText:(id)a3 isFinal:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTStreamingInput

- (_LTStreamingInput)initWithText:(id)a3 isFinal:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _LTStreamingInput;
  v7 = [(_LTStreamingInput *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_isFinal = a4;
    v7->_isStable = 1;
    v10 = v7;
  }

  return v7;
}

- (_LTStreamingInput)initWithASRResult:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _LTStreamingInput;
  v5 = [(_LTStreamingInput *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    asrResult = v5->_asrResult;
    v5->_asrResult = v6;

    v5->_isFinal = [v4 isFinal];
    v8 = [v4 bestTranscription];
    v9 = [v8 formattedString];
    text = v5->_text;
    v5->_text = v9;

    v5->_isStable = v5->_isFinal;
    v11 = v5;
  }

  return v5;
}

- (_LTStreamingInput)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTStreamingInput;
  v5 = [(_LTStreamingInput *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asrResult"];
    asrResult = v5->_asrResult;
    v5->_asrResult = v8;

    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v5->_isStable = [v4 decodeBoolForKey:@"isStable"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_asrResult forKey:@"asrResult"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeBool:self->_isStable forKey:@"isStable"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTStreamingInput alloc];
  v5 = [(_LTStreamingInput *)self text];
  v6 = [(_LTStreamingInput *)v4 initWithText:v5 isFinal:[(_LTStreamingInput *)self isFinal]];

  v7 = [(_LTStreamingInput *)self asrResult];
  v8 = [v7 copy];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  *(v6 + 9) = [(_LTStreamingInput *)self isStable];
  v10 = [(_LTStreamingInput *)self sourceIdentifier];
  v11 = [v10 copy];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  return v6;
}

@end