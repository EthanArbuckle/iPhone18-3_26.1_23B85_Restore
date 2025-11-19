@interface _INPBShowHomeIntent
- (BOOL)isEqual:(id)a3;
- (_INPBShowHomeIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFilters:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFilters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBShowHomeIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_filters count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_filters;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"filters"];
  }

  v11 = [(_INPBShowHomeIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  v13 = [(_INPBShowHomeIntent *)self time];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"time"];

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_filters hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBDateTimeRange *)self->_time hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBShowHomeIntent *)self filters];
  v6 = [v4 filters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBShowHomeIntent *)self filters];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBShowHomeIntent *)self filters];
    v10 = [v4 filters];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBShowHomeIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBShowHomeIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBShowHomeIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBShowHomeIntent *)self time];
  v6 = [v4 time];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBShowHomeIntent *)self time];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBShowHomeIntent *)self time];
    v20 = [v4 time];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBShowHomeIntent allocWithZone:](_INPBShowHomeIntent init];
  v6 = [(NSArray *)self->_filters copyWithZone:a3];
  [(_INPBShowHomeIntent *)v5 setFilters:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBShowHomeIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBDateTimeRange *)self->_time copyWithZone:a3];
  [(_INPBShowHomeIntent *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBShowHomeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBShowHomeIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBShowHomeIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_filters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBShowHomeIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBShowHomeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBShowHomeIntent *)self time];

  if (v13)
  {
    v14 = [(_INPBShowHomeIntent *)self time];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
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

@end