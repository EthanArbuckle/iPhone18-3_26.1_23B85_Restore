@interface _INPBActivityList
- (BOOL)isEqual:(id)equal;
- (_INPBActivityList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
- (void)setActivities:(id)activities;
- (void)writeTo:(id)to;
@end

@implementation _INPBActivityList

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activities count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_activities;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"activity"];
  }

  condition = [(_INPBActivityList *)self condition];
  dictionaryRepresentation2 = [condition dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"condition"];

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  activities = [(_INPBActivityList *)self activities];
  activities2 = [equalCopy activities];
  if ((activities != 0) == (activities2 == 0))
  {
    goto LABEL_11;
  }

  activities3 = [(_INPBActivityList *)self activities];
  if (activities3)
  {
    v8 = activities3;
    activities4 = [(_INPBActivityList *)self activities];
    activities5 = [equalCopy activities];
    v11 = [activities4 isEqual:activities5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  activities = [(_INPBActivityList *)self condition];
  activities2 = [equalCopy condition];
  if ((activities != 0) != (activities2 == 0))
  {
    condition = [(_INPBActivityList *)self condition];
    if (!condition)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = condition;
    condition2 = [(_INPBActivityList *)self condition];
    condition3 = [equalCopy condition];
    v16 = [condition2 isEqual:condition3];

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
  v5 = [+[_INPBActivityList allocWithZone:](_INPBActivityList init];
  v6 = [(NSArray *)self->_activities copyWithZone:zone];
  [(_INPBActivityList *)v5 setActivities:v6];

  v7 = [(_INPBCondition *)self->_condition copyWithZone:zone];
  [(_INPBActivityList *)v5 setCondition:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBActivityList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBActivityList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBActivityList *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_activities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  condition = [(_INPBActivityList *)self condition];

  if (condition)
  {
    condition2 = [(_INPBActivityList *)self condition];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addActivity:(id)activity
{
  activityCopy = activity;
  activities = self->_activities;
  v8 = activityCopy;
  if (!activities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activities;
    self->_activities = array;

    activityCopy = v8;
    activities = self->_activities;
  }

  [(NSArray *)activities addObject:activityCopy];
}

- (void)setActivities:(id)activities
{
  v4 = [activities mutableCopy];
  activities = self->_activities;
  self->_activities = v4;

  MEMORY[0x1EEE66BB8](v4, activities);
}

@end