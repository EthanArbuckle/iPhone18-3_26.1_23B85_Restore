@interface _INPBCallGroup
- (BOOL)isEqual:(id)equal;
- (_INPBCallGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallGroup

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  groupId = [(_INPBCallGroup *)self groupId];
  dictionaryRepresentation = [groupId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groupId"];

  groupName = [(_INPBCallGroup *)self groupName];
  dictionaryRepresentation2 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"groupName"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  groupId = [(_INPBCallGroup *)self groupId];
  groupId2 = [equalCopy groupId];
  if ((groupId != 0) == (groupId2 == 0))
  {
    goto LABEL_11;
  }

  groupId3 = [(_INPBCallGroup *)self groupId];
  if (groupId3)
  {
    v8 = groupId3;
    groupId4 = [(_INPBCallGroup *)self groupId];
    groupId5 = [equalCopy groupId];
    v11 = [groupId4 isEqual:groupId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  groupId = [(_INPBCallGroup *)self groupName];
  groupId2 = [equalCopy groupName];
  if ((groupId != 0) != (groupId2 == 0))
  {
    groupName = [(_INPBCallGroup *)self groupName];
    if (!groupName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = groupName;
    groupName2 = [(_INPBCallGroup *)self groupName];
    groupName3 = [equalCopy groupName];
    v16 = [groupName2 isEqual:groupName3];

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
  v5 = [+[_INPBCallGroup allocWithZone:](_INPBCallGroup init];
  v6 = [(_INPBString *)self->_groupId copyWithZone:zone];
  [(_INPBCallGroup *)v5 setGroupId:v6];

  v7 = [(_INPBString *)self->_groupName copyWithZone:zone];
  [(_INPBCallGroup *)v5 setGroupName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallGroup *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallGroup *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  groupId = [(_INPBCallGroup *)self groupId];

  if (groupId)
  {
    groupId2 = [(_INPBCallGroup *)self groupId];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBCallGroup *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBCallGroup *)self groupName];
    PBDataWriterWriteSubmessage();
  }
}

@end