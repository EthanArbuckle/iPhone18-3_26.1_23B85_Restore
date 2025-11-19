@interface _INPBModifyRelationship
- (BOOL)isEqual:(id)a3;
- (_INPBModifyRelationship)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBModifyRelationship

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBModifyRelationship isRemoval](self, "isRemoval")}];
    [v3 setObject:v4 forKeyedSubscript:@"isRemoval"];
  }

  v5 = [(_INPBModifyRelationship *)self targetRelationship];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"targetRelationship"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBModifyRelationship *)self hasIsRemoval];
    if (v5 == [v4 hasIsRemoval])
    {
      if (!-[_INPBModifyRelationship hasIsRemoval](self, "hasIsRemoval") || ![v4 hasIsRemoval] || (isRemoval = self->_isRemoval, isRemoval == objc_msgSend(v4, "isRemoval")))
      {
        v7 = [(_INPBModifyRelationship *)self targetRelationship];
        v8 = [v4 targetRelationship];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBModifyRelationship *)self targetRelationship];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBModifyRelationship *)self targetRelationship];
          v13 = [v4 targetRelationship];
          v14 = [v12 isEqual:v13];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBModifyRelationship allocWithZone:](_INPBModifyRelationship init];
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    [(_INPBModifyRelationship *)v5 setIsRemoval:[(_INPBModifyRelationship *)self isRemoval]];
  }

  v6 = [(_INPBString *)self->_targetRelationship copyWithZone:a3];
  [(_INPBModifyRelationship *)v5 setTargetRelationship:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBModifyRelationship *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBModifyRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBModifyRelationship *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBModifyRelationship *)self hasIsRemoval])
  {
    isRemoval = self->_isRemoval;
    PBDataWriterWriteBOOLField();
  }

  v5 = [(_INPBModifyRelationship *)self targetRelationship];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBModifyRelationship *)self targetRelationship];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

@end