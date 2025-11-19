@interface _INPBActivityList
- (BOOL)isEqual:(id)a3;
- (_INPBActivityList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addActivity:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setActivities:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBActivityList

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activities count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"activity"];
  }

  v11 = [(_INPBActivityList *)self condition];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"condition"];

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBActivityList *)self activities];
  v6 = [v4 activities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBActivityList *)self activities];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBActivityList *)self activities];
    v10 = [v4 activities];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBActivityList *)self condition];
  v6 = [v4 condition];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBActivityList *)self condition];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBActivityList *)self condition];
    v15 = [v4 condition];
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
  v5 = [+[_INPBActivityList allocWithZone:](_INPBActivityList init];
  v6 = [(NSArray *)self->_activities copyWithZone:a3];
  [(_INPBActivityList *)v5 setActivities:v6];

  v7 = [(_INPBCondition *)self->_condition copyWithZone:a3];
  [(_INPBActivityList *)v5 setCondition:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBActivityList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBActivityList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBActivityList *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBActivityList *)self condition];

  if (v11)
  {
    v12 = [(_INPBActivityList *)self condition];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addActivity:(id)a3
{
  v4 = a3;
  activities = self->_activities;
  v8 = v4;
  if (!activities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_activities;
    self->_activities = v6;

    v4 = v8;
    activities = self->_activities;
  }

  [(NSArray *)activities addObject:v4];
}

- (void)setActivities:(id)a3
{
  v4 = [a3 mutableCopy];
  activities = self->_activities;
  self->_activities = v4;

  MEMORY[0x1EEE66BB8](v4, activities);
}

@end