@interface INAnnouncement
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAnnouncement)initWithCoder:(id)coder;
- (INAnnouncement)initWithSpeechDataURL:(id)l identifier:(id)identifier speechDataTranscription:(id)transcription;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAnnouncement

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"speechDataURL";
  speechDataURL = self->_speechDataURL;
  null = speechDataURL;
  if (!speechDataURL)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"identifier";
  identifier = self->_identifier;
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"speechDataTranscription";
  speechDataTranscription = self->_speechDataTranscription;
  null3 = speechDataTranscription;
  if (!speechDataTranscription)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (speechDataTranscription)
  {
    if (identifier)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (speechDataURL)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!identifier)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (speechDataURL)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAnnouncement;
  v6 = [(INAnnouncement *)&v11 description];
  _dictionaryRepresentation = [(INAnnouncement *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_speechDataURL];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"speechDataURL"];

  v9 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"identifier"];

  v10 = [encoderCopy encodeObject:self->_speechDataTranscription];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"speechDataTranscription"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  speechDataURL = self->_speechDataURL;
  coderCopy = coder;
  [coderCopy encodeObject:speechDataURL forKey:@"speechDataURL"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_speechDataTranscription forKey:@"speechDataTranscription"];
}

- (INAnnouncement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechDataURL"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"speechDataTranscription"];

  v14 = [(INAnnouncement *)self initWithSpeechDataURL:v5 identifier:v9 speechDataTranscription:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      speechDataURL = self->_speechDataURL;
      v9 = 0;
      if (speechDataURL == v5->_speechDataURL || [(NSURL *)speechDataURL isEqual:?])
      {
        identifier = self->_identifier;
        if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
        {
          speechDataTranscription = self->_speechDataTranscription;
          if (speechDataTranscription == v5->_speechDataTranscription || [(NSString *)speechDataTranscription isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_speechDataURL hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(NSString *)self->_speechDataTranscription hash];
}

- (INAnnouncement)initWithSpeechDataURL:(id)l identifier:(id)identifier speechDataTranscription:(id)transcription
{
  lCopy = l;
  identifierCopy = identifier;
  transcriptionCopy = transcription;
  v19.receiver = self;
  v19.super_class = INAnnouncement;
  v11 = [(INAnnouncement *)&v19 init];
  if (v11)
  {
    v12 = [lCopy copy];
    speechDataURL = v11->_speechDataURL;
    v11->_speechDataURL = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [transcriptionCopy copy];
    speechDataTranscription = v11->_speechDataTranscription;
    v11->_speechDataTranscription = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"speechDataURL"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v13 = [fromCopy objectForKeyedSubscript:@"speechDataTranscription"];
    v14 = [[self alloc] initWithSpeechDataURL:v11 identifier:v12 speechDataTranscription:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end