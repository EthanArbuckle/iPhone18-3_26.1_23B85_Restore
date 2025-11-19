@interface INSpeakerIDInfo
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSpeakerIDInfo)initWithCoder:(id)a3;
- (INSpeakerIDInfo)initWithSharedUserID:(id)a3 speakerIDConfidence:(int64_t)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSpeakerIDInfo

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"sharedUserID";
  sharedUserID = self->_sharedUserID;
  v4 = sharedUserID;
  if (!sharedUserID)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"speakerIDConfidence";
  v10[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_speakerIDConfidence];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!sharedUserID)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSpeakerIDInfo;
  v6 = [(INSpeakerIDInfo *)&v11 description];
  v7 = [(INSpeakerIDInfo *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_sharedUserID];

  [v7 if_setObjectIfNonNil:v8 forKey:@"sharedUserID"];
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
  [v7 if_setObjectIfNonNil:v11 forKey:@"speakerIDConfidence"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  sharedUserID = self->_sharedUserID;
  v5 = a3;
  [v5 encodeObject:sharedUserID forKey:@"sharedUserID"];
  [v5 encodeInteger:self->_speakerIDConfidence forKey:@"speakerIDConfidence"];
}

- (INSpeakerIDInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedUserID"];
  v6 = [v4 decodeIntegerForKey:@"speakerIDConfidence"];

  v7 = [(INSpeakerIDInfo *)self initWithSharedUserID:v5 speakerIDConfidence:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INSpeakerIDInfo)initWithSharedUserID:(id)a3 speakerIDConfidence:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = INSpeakerIDInfo;
  v7 = [(INSpeakerIDInfo *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    sharedUserID = v7->_sharedUserID;
    v7->_sharedUserID = v8;

    v7->_speakerIDConfidence = a4;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"sharedUserID"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"speakerIDConfidence"];
    v13 = INSpeakerIDConfidenceWithString(v12);

    v14 = [[a1 alloc] initWithSharedUserID:v11 speakerIDConfidence:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end