@interface INAnnouncement
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAnnouncement)initWithCoder:(id)a3;
- (INAnnouncement)initWithSpeechDataURL:(id)a3 identifier:(id)a4 speechDataTranscription:(id)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAnnouncement

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"speechDataURL";
  speechDataURL = self->_speechDataURL;
  v4 = speechDataURL;
  if (!speechDataURL)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"identifier";
  identifier = self->_identifier;
  v6 = identifier;
  if (!identifier)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"speechDataTranscription";
  speechDataTranscription = self->_speechDataTranscription;
  v8 = speechDataTranscription;
  if (!speechDataTranscription)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAnnouncement;
  v6 = [(INAnnouncement *)&v11 description];
  v7 = [(INAnnouncement *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_speechDataURL];
  [v7 if_setObjectIfNonNil:v8 forKey:@"speechDataURL"];

  v9 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v9 forKey:@"identifier"];

  v10 = [v6 encodeObject:self->_speechDataTranscription];

  [v7 if_setObjectIfNonNil:v10 forKey:@"speechDataTranscription"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  speechDataURL = self->_speechDataURL;
  v5 = a3;
  [v5 encodeObject:speechDataURL forKey:@"speechDataURL"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_speechDataTranscription forKey:@"speechDataTranscription"];
}

- (INAnnouncement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechDataURL"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"speechDataTranscription"];

  v14 = [(INAnnouncement *)self initWithSpeechDataURL:v5 identifier:v9 speechDataTranscription:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INAnnouncement)initWithSpeechDataURL:(id)a3 identifier:(id)a4 speechDataTranscription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = INAnnouncement;
  v11 = [(INAnnouncement *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    speechDataURL = v11->_speechDataURL;
    v11->_speechDataURL = v12;

    v14 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [v10 copy];
    speechDataTranscription = v11->_speechDataTranscription;
    v11->_speechDataTranscription = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"speechDataURL"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"identifier"];
    v13 = [v8 objectForKeyedSubscript:@"speechDataTranscription"];
    v14 = [[a1 alloc] initWithSpeechDataURL:v11 identifier:v12 speechDataTranscription:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end