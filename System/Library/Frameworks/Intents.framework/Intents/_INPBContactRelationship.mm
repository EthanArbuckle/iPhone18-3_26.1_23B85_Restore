@interface _INPBContactRelationship
- (BOOL)isEqual:(id)a3;
- (_INPBContactRelationship)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
- (void)setRelation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBContactRelationship

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_name)
  {
    v4 = [(_INPBContactRelationship *)self name];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_relation)
  {
    v6 = [(_INPBContactRelationship *)self relation];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"relation"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBContactRelationship *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBContactRelationship *)self name];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBContactRelationship *)self name];
    v10 = [v4 name];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBContactRelationship *)self relation];
  v6 = [v4 relation];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBContactRelationship *)self relation];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBContactRelationship *)self relation];
    v15 = [v4 relation];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBContactRelationship allocWithZone:](_INPBContactRelationship init];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBContactRelationship *)v5 setName:v6];

  v7 = [(NSString *)self->_relation copyWithZone:a3];
  [(_INPBContactRelationship *)v5 setRelation:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBContactRelationship *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBContactRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBContactRelationship *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBContactRelationship *)self name];

  if (v4)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBContactRelationship *)self relation];

  if (v6)
  {
    relation = self->_relation;
    PBDataWriterWriteStringField();
  }
}

- (void)setRelation:(id)a3
{
  v4 = [a3 copy];
  relation = self->_relation;
  self->_relation = v4;

  MEMORY[0x1EEE66BB8](v4, relation);
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

@end