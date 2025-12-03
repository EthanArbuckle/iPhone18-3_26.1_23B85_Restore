@interface _INPBRefinementItem
- (BOOL)isEqual:(id)equal;
- (_INPBRefinementItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setSubKeyPath:(id)path;
- (void)writeTo:(id)to;
@end

@implementation _INPBRefinementItem

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  item = [(_INPBRefinementItem *)self item];
  dictionaryRepresentation = [item dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"item"];

  if (self->_subKeyPath)
  {
    subKeyPath = [(_INPBRefinementItem *)self subKeyPath];
    v7 = [subKeyPath copy];
    [dictionary setObject:v7 forKeyedSubscript:@"subKeyPath"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  item = [(_INPBRefinementItem *)self item];
  item2 = [equalCopy item];
  if ((item != 0) == (item2 == 0))
  {
    goto LABEL_11;
  }

  item3 = [(_INPBRefinementItem *)self item];
  if (item3)
  {
    v8 = item3;
    item4 = [(_INPBRefinementItem *)self item];
    item5 = [equalCopy item];
    v11 = [item4 isEqual:item5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  item = [(_INPBRefinementItem *)self subKeyPath];
  item2 = [equalCopy subKeyPath];
  if ((item != 0) != (item2 == 0))
  {
    subKeyPath = [(_INPBRefinementItem *)self subKeyPath];
    if (!subKeyPath)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = subKeyPath;
    subKeyPath2 = [(_INPBRefinementItem *)self subKeyPath];
    subKeyPath3 = [equalCopy subKeyPath];
    v16 = [subKeyPath2 isEqual:subKeyPath3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRefinementItem allocWithZone:](_INPBRefinementItem init];
  v6 = [(_INPBSelectionItem *)self->_item copyWithZone:zone];
  [(_INPBRefinementItem *)v5 setItem:v6];

  v7 = [(NSString *)self->_subKeyPath copyWithZone:zone];
  [(_INPBRefinementItem *)v5 setSubKeyPath:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRefinementItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRefinementItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRefinementItem *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  item = [(_INPBRefinementItem *)self item];

  if (item)
  {
    item2 = [(_INPBRefinementItem *)self item];
    PBDataWriterWriteSubmessage();
  }

  subKeyPath = [(_INPBRefinementItem *)self subKeyPath];

  if (subKeyPath)
  {
    subKeyPath = self->_subKeyPath;
    PBDataWriterWriteStringField();
  }
}

- (void)setSubKeyPath:(id)path
{
  v4 = [path copy];
  subKeyPath = self->_subKeyPath;
  self->_subKeyPath = v4;

  MEMORY[0x1EEE66BB8](v4, subKeyPath);
}

@end