@interface _INPBModifyRelationship
- (BOOL)isEqual:(id)equal;
- (_INPBModifyRelationship)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBModifyRelationship

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBModifyRelationship isRemoval](self, "isRemoval")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isRemoval"];
  }

  targetRelationship = [(_INPBModifyRelationship *)self targetRelationship];
  dictionaryRepresentation = [targetRelationship dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"targetRelationship"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    v3 = 2654435761 * self->_isRemoval;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBString *)self->_targetRelationship hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasIsRemoval = [(_INPBModifyRelationship *)self hasIsRemoval];
    if (hasIsRemoval == [equalCopy hasIsRemoval])
    {
      if (!-[_INPBModifyRelationship hasIsRemoval](self, "hasIsRemoval") || ![equalCopy hasIsRemoval] || (isRemoval = self->_isRemoval, isRemoval == objc_msgSend(equalCopy, "isRemoval")))
      {
        targetRelationship = [(_INPBModifyRelationship *)self targetRelationship];
        targetRelationship2 = [equalCopy targetRelationship];
        v9 = targetRelationship2;
        if ((targetRelationship != 0) != (targetRelationship2 == 0))
        {
          targetRelationship3 = [(_INPBModifyRelationship *)self targetRelationship];
          if (!targetRelationship3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = targetRelationship3;
          targetRelationship4 = [(_INPBModifyRelationship *)self targetRelationship];
          targetRelationship5 = [equalCopy targetRelationship];
          v14 = [targetRelationship4 isEqual:targetRelationship5];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBModifyRelationship allocWithZone:](_INPBModifyRelationship init];
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    [(_INPBModifyRelationship *)v5 setIsRemoval:[(_INPBModifyRelationship *)self isRemoval]];
  }

  v6 = [(_INPBString *)self->_targetRelationship copyWithZone:zone];
  [(_INPBModifyRelationship *)v5 setTargetRelationship:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBModifyRelationship *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBModifyRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBModifyRelationship *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    isRemoval = self->_isRemoval;
    PBDataWriterWriteBOOLField();
  }

  targetRelationship = [(_INPBModifyRelationship *)self targetRelationship];

  v6 = toCopy;
  if (targetRelationship)
  {
    targetRelationship2 = [(_INPBModifyRelationship *)self targetRelationship];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

@end