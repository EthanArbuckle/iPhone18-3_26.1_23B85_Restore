@interface _INPBAppendToNoteIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBAppendToNoteIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppendToNoteIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  note = [(_INPBAppendToNoteIntentResponse *)self note];
  dictionaryRepresentation = [note dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"note"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    note = [(_INPBAppendToNoteIntentResponse *)self note];
    note2 = [equalCopy note];
    v7 = note2;
    if ((note != 0) != (note2 == 0))
    {
      note3 = [(_INPBAppendToNoteIntentResponse *)self note];
      if (!note3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = note3;
      note4 = [(_INPBAppendToNoteIntentResponse *)self note];
      note5 = [equalCopy note];
      v12 = [note4 isEqual:note5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAppendToNoteIntentResponse allocWithZone:](_INPBAppendToNoteIntentResponse init];
  v6 = [(_INPBNote *)self->_note copyWithZone:zone];
  [(_INPBAppendToNoteIntentResponse *)v5 setNote:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppendToNoteIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppendToNoteIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppendToNoteIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  note = [(_INPBAppendToNoteIntentResponse *)self note];

  if (note)
  {
    note2 = [(_INPBAppendToNoteIntentResponse *)self note];
    PBDataWriterWriteSubmessage();
  }
}

@end