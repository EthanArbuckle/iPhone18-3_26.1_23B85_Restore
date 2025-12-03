@interface INSpeakerIDInfo
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSpeakerIDInfo)initWithCoder:(id)coder;
- (INSpeakerIDInfo)initWithSharedUserID:(id)d speakerIDConfidence:(int64_t)confidence;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSpeakerIDInfo

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sharedUserID";
  sharedUserID = self->_sharedUserID;
  null = sharedUserID;
  if (!sharedUserID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"speakerIDConfidence";
  v10[0] = null;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_speakerIDConfidence];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!sharedUserID)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSpeakerIDInfo;
  v6 = [(INSpeakerIDInfo *)&v11 description];
  _dictionaryRepresentation = [(INSpeakerIDInfo *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_sharedUserID];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"sharedUserID"];
  v9 = self->_speakerIDConfidence - 1;
  if (v9 > 4)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = *(&off_1E7287A68 + v9);
  }

  v11 = v10;
  [dictionary if_setObjectIfNonNil:v11 forKey:@"speakerIDConfidence"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  sharedUserID = self->_sharedUserID;
  coderCopy = coder;
  [coderCopy encodeObject:sharedUserID forKey:@"sharedUserID"];
  [coderCopy encodeInteger:self->_speakerIDConfidence forKey:@"speakerIDConfidence"];
}

- (INSpeakerIDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedUserID"];
  v6 = [coderCopy decodeIntegerForKey:@"speakerIDConfidence"];

  v7 = [(INSpeakerIDInfo *)self initWithSharedUserID:v5 speakerIDConfidence:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sharedUserID = self->_sharedUserID;
      v7 = (sharedUserID == v5->_sharedUserID || [(NSString *)sharedUserID isEqual:?]) && self->_speakerIDConfidence == v5->_speakerIDConfidence;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sharedUserID hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_speakerIDConfidence];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INSpeakerIDInfo)initWithSharedUserID:(id)d speakerIDConfidence:(int64_t)confidence
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = INSpeakerIDInfo;
  v7 = [(INSpeakerIDInfo *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    sharedUserID = v7->_sharedUserID;
    v7->_sharedUserID = v8;

    v7->_speakerIDConfidence = confidence;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"sharedUserID"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"speakerIDConfidence"];
    v13 = INSpeakerIDConfidenceWithString(v12);

    v14 = [[self alloc] initWithSharedUserID:v11 speakerIDConfidence:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end