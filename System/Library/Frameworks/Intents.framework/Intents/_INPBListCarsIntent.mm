@interface _INPBListCarsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBListCarsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBListCarsIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBListCarsIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    intentMetadata = [(_INPBListCarsIntent *)self intentMetadata];
    intentMetadata2 = [equalCopy intentMetadata];
    v7 = intentMetadata2;
    if ((intentMetadata != 0) != (intentMetadata2 == 0))
    {
      intentMetadata3 = [(_INPBListCarsIntent *)self intentMetadata];
      if (!intentMetadata3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = intentMetadata3;
      intentMetadata4 = [(_INPBListCarsIntent *)self intentMetadata];
      intentMetadata5 = [equalCopy intentMetadata];
      v12 = [intentMetadata4 isEqual:intentMetadata5];

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
  v5 = [+[_INPBListCarsIntent allocWithZone:](_INPBListCarsIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBListCarsIntent *)v5 setIntentMetadata:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListCarsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListCarsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListCarsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBListCarsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBListCarsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }
}

@end