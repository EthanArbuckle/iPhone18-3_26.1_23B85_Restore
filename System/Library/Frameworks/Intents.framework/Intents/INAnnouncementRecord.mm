@interface INAnnouncementRecord
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAnnouncementRecord)initWithCoder:(id)coder;
- (INAnnouncementRecord)initWithOriginator:(id)originator identifier:(id)identifier duration:(id)duration;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAnnouncementRecord

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"originator";
  originator = self->_originator;
  null = originator;
  if (!originator)
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
  v12[2] = @"duration";
  duration = self->_duration;
  null3 = duration;
  if (!duration)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (duration)
  {
    if (identifier)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (originator)
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
  if (originator)
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
  v11.super_class = INAnnouncementRecord;
  v6 = [(INAnnouncementRecord *)&v11 description];
  _dictionaryRepresentation = [(INAnnouncementRecord *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_originator];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"originator"];

  v9 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"identifier"];

  v10 = [encoderCopy encodeObject:self->_duration];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"duration"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  originator = self->_originator;
  coderCopy = coder;
  [coderCopy encodeObject:originator forKey:@"originator"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
}

- (INAnnouncementRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originator"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifier"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];

  v11 = [(INAnnouncementRecord *)self initWithOriginator:v5 identifier:v9 duration:v10];
  return v11;
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
      originator = self->_originator;
      v9 = 0;
      if (originator == v5->_originator || [(INHomeFilter *)originator isEqual:?])
      {
        identifier = self->_identifier;
        if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
        {
          duration = self->_duration;
          if (duration == v5->_duration || [(NSNumber *)duration isEqual:?])
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
  v3 = [(INHomeFilter *)self->_originator hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(NSNumber *)self->_duration hash];
}

- (INAnnouncementRecord)initWithOriginator:(id)originator identifier:(id)identifier duration:(id)duration
{
  originatorCopy = originator;
  identifierCopy = identifier;
  durationCopy = duration;
  v19.receiver = self;
  v19.super_class = INAnnouncementRecord;
  v11 = [(INAnnouncementRecord *)&v19 init];
  if (v11)
  {
    v12 = [originatorCopy copy];
    originator = v11->_originator;
    v11->_originator = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v16 = [durationCopy copy];
    duration = v11->_duration;
    v11->_duration = v16;
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
    v10 = [fromCopy objectForKeyedSubscript:@"originator"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v13 = [fromCopy objectForKeyedSubscript:@"duration"];
    v14 = [[self alloc] initWithOriginator:v11 identifier:v12 duration:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end