@interface _INPBContactRelationship
- (BOOL)isEqual:(id)equal;
- (_INPBContactRelationship)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
- (void)setRelation:(id)relation;
- (void)writeTo:(id)to;
@end

@implementation _INPBContactRelationship

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_name)
  {
    name = [(_INPBContactRelationship *)self name];
    v5 = [name copy];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_relation)
  {
    relation = [(_INPBContactRelationship *)self relation];
    v7 = [relation copy];
    [dictionary setObject:v7 forKeyedSubscript:@"relation"];
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

  name = [(_INPBContactRelationship *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_11;
  }

  name3 = [(_INPBContactRelationship *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(_INPBContactRelationship *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  name = [(_INPBContactRelationship *)self relation];
  name2 = [equalCopy relation];
  if ((name != 0) != (name2 == 0))
  {
    relation = [(_INPBContactRelationship *)self relation];
    if (!relation)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = relation;
    relation2 = [(_INPBContactRelationship *)self relation];
    relation3 = [equalCopy relation];
    v16 = [relation2 isEqual:relation3];

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
  v5 = [+[_INPBContactRelationship allocWithZone:](_INPBContactRelationship init];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  [(_INPBContactRelationship *)v5 setName:v6];

  v7 = [(NSString *)self->_relation copyWithZone:zone];
  [(_INPBContactRelationship *)v5 setRelation:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBContactRelationship *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBContactRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBContactRelationship *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(_INPBContactRelationship *)self name];

  if (name)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  relation = [(_INPBContactRelationship *)self relation];

  if (relation)
  {
    relation = self->_relation;
    PBDataWriterWriteStringField();
  }
}

- (void)setRelation:(id)relation
{
  v4 = [relation copy];
  relation = self->_relation;
  self->_relation = v4;

  MEMORY[0x1EEE66BB8](v4, relation);
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

@end