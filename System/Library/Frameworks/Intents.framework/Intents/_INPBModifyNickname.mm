@interface _INPBModifyNickname
- (BOOL)isEqual:(id)equal;
- (_INPBModifyNickname)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBModifyNickname

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBModifyNickname *)self hasIsRemoval])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBModifyNickname isRemoval](self, "isRemoval")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isRemoval"];
  }

  targetNickname = [(_INPBModifyNickname *)self targetNickname];
  dictionaryRepresentation = [targetNickname dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"targetNickname"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBModifyNickname *)self hasIsRemoval])
  {
    v3 = 2654435761 * self->_isRemoval;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBString *)self->_targetNickname hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasIsRemoval = [(_INPBModifyNickname *)self hasIsRemoval];
    if (hasIsRemoval == [equalCopy hasIsRemoval])
    {
      if (!-[_INPBModifyNickname hasIsRemoval](self, "hasIsRemoval") || ![equalCopy hasIsRemoval] || (isRemoval = self->_isRemoval, isRemoval == objc_msgSend(equalCopy, "isRemoval")))
      {
        targetNickname = [(_INPBModifyNickname *)self targetNickname];
        targetNickname2 = [equalCopy targetNickname];
        v9 = targetNickname2;
        if ((targetNickname != 0) != (targetNickname2 == 0))
        {
          targetNickname3 = [(_INPBModifyNickname *)self targetNickname];
          if (!targetNickname3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = targetNickname3;
          targetNickname4 = [(_INPBModifyNickname *)self targetNickname];
          targetNickname5 = [equalCopy targetNickname];
          v14 = [targetNickname4 isEqual:targetNickname5];

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
  v5 = [+[_INPBModifyNickname allocWithZone:](_INPBModifyNickname init];
  if ([(_INPBModifyNickname *)self hasIsRemoval])
  {
    [(_INPBModifyNickname *)v5 setIsRemoval:[(_INPBModifyNickname *)self isRemoval]];
  }

  v6 = [(_INPBString *)self->_targetNickname copyWithZone:zone];
  [(_INPBModifyNickname *)v5 setTargetNickname:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBModifyNickname *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBModifyNickname)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBModifyNickname *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBModifyNickname *)self hasIsRemoval])
  {
    isRemoval = self->_isRemoval;
    PBDataWriterWriteBOOLField();
  }

  targetNickname = [(_INPBModifyNickname *)self targetNickname];

  v6 = toCopy;
  if (targetNickname)
  {
    targetNickname2 = [(_INPBModifyNickname *)self targetNickname];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

@end