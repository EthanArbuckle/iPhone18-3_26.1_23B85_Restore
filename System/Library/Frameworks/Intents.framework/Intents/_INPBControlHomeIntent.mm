@interface _INPBControlHomeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBControlHomeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContents:(id)a3;
- (void)addFilters:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContents:(id)a3;
- (void)setFilters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBControlHomeIntent

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contents count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_contents;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"contents"];
  }

  if ([(NSArray *)self->_filters count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = self->_filters;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"filters"];
  }

  v18 = [(_INPBControlHomeIntent *)self intentMetadata];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"intentMetadata"];

  v20 = [(_INPBControlHomeIntent *)self time];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"time"];

  v22 = [(_INPBControlHomeIntent *)self userTask];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"userTask"];

  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_contents hash];
  v4 = [(NSArray *)self->_filters hash]^ v3;
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTimeRange *)self->_time hash];
  return v6 ^ [(_INPBHomeUserTask *)self->_userTask hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBControlHomeIntent *)self contents];
  v6 = [v4 contents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBControlHomeIntent *)self contents];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBControlHomeIntent *)self contents];
    v10 = [v4 contents];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBControlHomeIntent *)self filters];
  v6 = [v4 filters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBControlHomeIntent *)self filters];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBControlHomeIntent *)self filters];
    v15 = [v4 filters];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBControlHomeIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBControlHomeIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBControlHomeIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBControlHomeIntent *)self time];
  v6 = [v4 time];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBControlHomeIntent *)self time];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBControlHomeIntent *)self time];
    v25 = [v4 time];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBControlHomeIntent *)self userTask];
  v6 = [v4 userTask];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBControlHomeIntent *)self userTask];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBControlHomeIntent *)self userTask];
    v30 = [v4 userTask];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBControlHomeIntent allocWithZone:](_INPBControlHomeIntent init];
  v6 = [(NSArray *)self->_contents copyWithZone:a3];
  [(_INPBControlHomeIntent *)v5 setContents:v6];

  v7 = [(NSArray *)self->_filters copyWithZone:a3];
  [(_INPBControlHomeIntent *)v5 setFilters:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBControlHomeIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDateTimeRange *)self->_time copyWithZone:a3];
  [(_INPBControlHomeIntent *)v5 setTime:v9];

  v10 = [(_INPBHomeUserTask *)self->_userTask copyWithZone:a3];
  [(_INPBControlHomeIntent *)v5 setUserTask:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBControlHomeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBControlHomeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBControlHomeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_contents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_filters;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  v17 = [(_INPBControlHomeIntent *)self intentMetadata];

  if (v17)
  {
    v18 = [(_INPBControlHomeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBControlHomeIntent *)self time];

  if (v19)
  {
    v20 = [(_INPBControlHomeIntent *)self time];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBControlHomeIntent *)self userTask];

  if (v21)
  {
    v22 = [(_INPBControlHomeIntent *)self userTask];
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addFilters:(id)a3
{
  v4 = a3;
  filters = self->_filters;
  v8 = v4;
  if (!filters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_filters;
    self->_filters = v6;

    v4 = v8;
    filters = self->_filters;
  }

  [(NSArray *)filters addObject:v4];
}

- (void)setFilters:(id)a3
{
  v4 = [a3 mutableCopy];
  filters = self->_filters;
  self->_filters = v4;

  MEMORY[0x1EEE66BB8](v4, filters);
}

- (void)addContents:(id)a3
{
  v4 = a3;
  contents = self->_contents;
  v8 = v4;
  if (!contents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contents;
    self->_contents = v6;

    v4 = v8;
    contents = self->_contents;
  }

  [(NSArray *)contents addObject:v4];
}

- (void)setContents:(id)a3
{
  v4 = [a3 mutableCopy];
  contents = self->_contents;
  self->_contents = v4;

  MEMORY[0x1EEE66BB8](v4, contents);
}

@end