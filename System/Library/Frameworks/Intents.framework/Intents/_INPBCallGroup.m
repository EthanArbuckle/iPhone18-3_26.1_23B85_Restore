@interface _INPBCallGroup
- (BOOL)isEqual:(id)a3;
- (_INPBCallGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallGroup

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCallGroup *)self groupId];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"groupId"];

  v6 = [(_INPBCallGroup *)self groupName];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"groupName"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBCallGroup *)self groupId];
  v6 = [v4 groupId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBCallGroup *)self groupId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCallGroup *)self groupId];
    v10 = [v4 groupId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBCallGroup *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBCallGroup *)self groupName];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBCallGroup *)self groupName];
    v15 = [v4 groupName];
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
  v5 = [+[_INPBCallGroup allocWithZone:](_INPBCallGroup init];
  v6 = [(_INPBString *)self->_groupId copyWithZone:a3];
  [(_INPBCallGroup *)v5 setGroupId:v6];

  v7 = [(_INPBString *)self->_groupName copyWithZone:a3];
  [(_INPBCallGroup *)v5 setGroupName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallGroup *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallGroup *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBCallGroup *)self groupId];

  if (v4)
  {
    v5 = [(_INPBCallGroup *)self groupId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBCallGroup *)self groupName];

  if (v6)
  {
    v7 = [(_INPBCallGroup *)self groupName];
    PBDataWriterWriteSubmessage();
  }
}

@end