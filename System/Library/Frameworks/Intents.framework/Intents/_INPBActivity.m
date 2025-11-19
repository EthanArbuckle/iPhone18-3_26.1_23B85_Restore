@interface _INPBActivity
- (BOOL)isEqual:(id)a3;
- (_INPBActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addActivityDescriptors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setActivityDescriptors:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBActivity

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activityDescriptors count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_activityDescriptors;
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

    [v3 setObject:v4 forKeyedSubscript:@"activityDescriptors"];
  }

  v11 = [(_INPBActivity *)self activityType];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"activityType"];

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

  v5 = [(_INPBActivity *)self activityDescriptors];
  v6 = [v4 activityDescriptors];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBActivity *)self activityDescriptors];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBActivity *)self activityDescriptors];
    v10 = [v4 activityDescriptors];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBActivity *)self activityType];
  v6 = [v4 activityType];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBActivity *)self activityType];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBActivity *)self activityType];
    v15 = [v4 activityType];
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
  v5 = [+[_INPBActivity allocWithZone:](_INPBActivity init];
  v6 = [(NSArray *)self->_activityDescriptors copyWithZone:a3];
  [(_INPBActivity *)v5 setActivityDescriptors:v6];

  v7 = [(_INPBString *)self->_activityType copyWithZone:a3];
  [(_INPBActivity *)v5 setActivityType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBActivity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBActivity *)self initWithData:v6];

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
  v5 = self->_activityDescriptors;
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

  v11 = [(_INPBActivity *)self activityType];

  if (v11)
  {
    v12 = [(_INPBActivity *)self activityType];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addActivityDescriptors:(id)a3
{
  v4 = a3;
  activityDescriptors = self->_activityDescriptors;
  v8 = v4;
  if (!activityDescriptors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_activityDescriptors;
    self->_activityDescriptors = v6;

    v4 = v8;
    activityDescriptors = self->_activityDescriptors;
  }

  [(NSArray *)activityDescriptors addObject:v4];
}

- (void)setActivityDescriptors:(id)a3
{
  v4 = [a3 mutableCopy];
  activityDescriptors = self->_activityDescriptors;
  self->_activityDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, activityDescriptors);
}

@end