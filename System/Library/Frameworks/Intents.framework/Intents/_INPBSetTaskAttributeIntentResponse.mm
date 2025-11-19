@interface _INPBSetTaskAttributeIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSetTaskAttributeIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsWarnings:(id)a3;
- (void)addWarnings:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetTaskAttributeIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"modifiedTask"];

  if (self->_warnings.count)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSetTaskAttributeIntentResponse warningsCount](self, "warningsCount")}];
    if ([(_INPBSetTaskAttributeIntentResponse *)self warningsCount])
    {
      v7 = 0;
      do
      {
        v8 = self->_warnings.list[v7];
        if (v8 >= 5)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_warnings.list[v7]];
        }

        else
        {
          v9 = off_1E727F840[v8];
        }

        [v6 addObject:v9];

        ++v7;
      }

      while (v7 < [(_INPBSetTaskAttributeIntentResponse *)self warningsCount]);
    }

    [v3 setObject:v6 forKeyedSubscript:@"warnings"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
    v6 = [v4 modifiedTask];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
      if (!v8)
      {

LABEL_10:
        IsEqual = PBRepeatedInt32IsEqual();
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
      v11 = [v4 modifiedTask];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  IsEqual = 0;
LABEL_8:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetTaskAttributeIntentResponse allocWithZone:](_INPBSetTaskAttributeIntentResponse init];
  v6 = [(_INPBTask *)self->_modifiedTask copyWithZone:a3];
  [(_INPBSetTaskAttributeIntentResponse *)v5 setModifiedTask:v6];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetTaskAttributeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetTaskAttributeIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetTaskAttributeIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBSetTaskAttributeIntentResponse *)self clearWarnings];
  v3.receiver = self;
  v3.super_class = _INPBSetTaskAttributeIntentResponse;
  [(_INPBSetTaskAttributeIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];

  if (v4)
  {
    v5 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
    PBDataWriterWriteSubmessage();
  }

  p_warnings = &self->_warnings;
  if (p_warnings->count)
  {
    v7 = 0;
    do
    {
      v8 = p_warnings->list[v7];
      PBDataWriterWriteInt32Field();
      ++v7;
    }

    while (v7 < p_warnings->count);
  }
}

- (int)StringAsWarnings:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LOCATION_SERVICES_DISABLED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FLAGGED_NOT_ALLOWED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONTACT_TRIGGER_NOT_ALLOWED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NOT_UPGRADED_TO_CLOUDKIT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addWarnings:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end