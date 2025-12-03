@interface _INPBCreateNoteIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBCreateNoteIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateNoteIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  createdNote = [(_INPBCreateNoteIntentResponse *)self createdNote];
  dictionaryRepresentation = [createdNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"createdNote"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    createdNote = [(_INPBCreateNoteIntentResponse *)self createdNote];
    createdNote2 = [equalCopy createdNote];
    v7 = createdNote2;
    if ((createdNote != 0) != (createdNote2 == 0))
    {
      createdNote3 = [(_INPBCreateNoteIntentResponse *)self createdNote];
      if (!createdNote3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = createdNote3;
      createdNote4 = [(_INPBCreateNoteIntentResponse *)self createdNote];
      createdNote5 = [equalCopy createdNote];
      v12 = [createdNote4 isEqual:createdNote5];

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
  v5 = [+[_INPBCreateNoteIntentResponse allocWithZone:](_INPBCreateNoteIntentResponse init];
  v6 = [(_INPBNote *)self->_createdNote copyWithZone:zone];
  [(_INPBCreateNoteIntentResponse *)v5 setCreatedNote:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateNoteIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateNoteIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateNoteIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  createdNote = [(_INPBCreateNoteIntentResponse *)self createdNote];

  if (createdNote)
  {
    createdNote2 = [(_INPBCreateNoteIntentResponse *)self createdNote];
    PBDataWriterWriteSubmessage();
  }
}

@end