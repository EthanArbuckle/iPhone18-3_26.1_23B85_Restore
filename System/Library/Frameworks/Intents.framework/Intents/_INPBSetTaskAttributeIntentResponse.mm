@interface _INPBSetTaskAttributeIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetTaskAttributeIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsWarnings:(id)warnings;
- (void)addWarnings:(int)warnings;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetTaskAttributeIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  modifiedTask = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
  dictionaryRepresentation = [modifiedTask dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"modifiedTask"];

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

    [dictionary setObject:v6 forKeyedSubscript:@"warnings"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    modifiedTask = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
    modifiedTask2 = [equalCopy modifiedTask];
    v7 = modifiedTask2;
    if ((modifiedTask != 0) != (modifiedTask2 == 0))
    {
      modifiedTask3 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
      if (!modifiedTask3)
      {

LABEL_10:
        IsEqual = PBRepeatedInt32IsEqual();
        goto LABEL_8;
      }

      v9 = modifiedTask3;
      modifiedTask4 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
      modifiedTask5 = [equalCopy modifiedTask];
      v12 = [modifiedTask4 isEqual:modifiedTask5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetTaskAttributeIntentResponse allocWithZone:](_INPBSetTaskAttributeIntentResponse init];
  v6 = [(_INPBTask *)self->_modifiedTask copyWithZone:zone];
  [(_INPBSetTaskAttributeIntentResponse *)v5 setModifiedTask:v6];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetTaskAttributeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetTaskAttributeIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetTaskAttributeIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBSetTaskAttributeIntentResponse *)self clearWarnings];
  v3.receiver = self;
  v3.super_class = _INPBSetTaskAttributeIntentResponse;
  [(_INPBSetTaskAttributeIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modifiedTask = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];

  if (modifiedTask)
  {
    modifiedTask2 = [(_INPBSetTaskAttributeIntentResponse *)self modifiedTask];
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

- (int)StringAsWarnings:(id)warnings
{
  warningsCopy = warnings;
  if ([warningsCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([warningsCopy isEqualToString:@"LOCATION_SERVICES_DISABLED"])
  {
    v4 = 1;
  }

  else if ([warningsCopy isEqualToString:@"FLAGGED_NOT_ALLOWED"])
  {
    v4 = 2;
  }

  else if ([warningsCopy isEqualToString:@"CONTACT_TRIGGER_NOT_ALLOWED"])
  {
    v4 = 3;
  }

  else if ([warningsCopy isEqualToString:@"NOT_UPGRADED_TO_CLOUDKIT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addWarnings:(int)warnings
{
  if (warnings != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end