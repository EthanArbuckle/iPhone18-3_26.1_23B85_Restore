@interface INSleepAlarmAttribute
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSleepAlarmAttribute)initWithBedtime:(id)bedtime override:(id)override;
- (INSleepAlarmAttribute)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSleepAlarmAttribute

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"bedtime";
  bedtime = self->_bedtime;
  null = bedtime;
  if (!bedtime)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"override";
  v11[0] = null;
  override = self->_override;
  null2 = override;
  if (!override)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (override)
  {
    if (bedtime)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (bedtime)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSleepAlarmAttribute;
  v6 = [(INSleepAlarmAttribute *)&v11 description];
  _dictionaryRepresentation = [(INSleepAlarmAttribute *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_bedtime];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"bedtime"];

  v9 = [encoderCopy encodeObject:self->_override];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"override"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  bedtime = self->_bedtime;
  coderCopy = coder;
  [coderCopy encodeObject:bedtime forKey:@"bedtime"];
  [coderCopy encodeObject:self->_override forKey:@"override"];
}

- (INSleepAlarmAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bedtime"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"override"];

  v7 = [(INSleepAlarmAttribute *)self initWithBedtime:v5 override:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bedtime = self->_bedtime;
      v8 = 0;
      if (bedtime == v5->_bedtime || [(NSDateComponents *)bedtime isEqual:?])
      {
        override = self->_override;
        if (override == v5->_override || [(NSNumber *)override isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INSleepAlarmAttribute)initWithBedtime:(id)bedtime override:(id)override
{
  bedtimeCopy = bedtime;
  overrideCopy = override;
  v14.receiver = self;
  v14.super_class = INSleepAlarmAttribute;
  v8 = [(INSleepAlarmAttribute *)&v14 init];
  if (v8)
  {
    v9 = [bedtimeCopy copy];
    bedtime = v8->_bedtime;
    v8->_bedtime = v9;

    v11 = [overrideCopy copy];
    override = v8->_override;
    v8->_override = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"bedtime"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"override"];
    v13 = [[self alloc] initWithBedtime:v11 override:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end