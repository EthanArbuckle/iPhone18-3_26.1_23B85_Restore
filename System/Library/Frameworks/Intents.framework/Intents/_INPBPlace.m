@interface _INPBPlace
- (BOOL)isEqual:(id)a3;
- (_INPBPlace)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsPersonalPlaceType:(id)a3;
- (unint64_t)hash;
- (void)addPlaceDescriptors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPersonalPlaceType:(int)a3;
- (void)setPlaceDescriptors:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlace

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    v4 = [(_INPBPlace *)self personalPlaceType];
    if (v4 == 2)
    {
      v5 = @"HOME";
    }

    else if (v4 == 3)
    {
      v5 = @"WORK";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"personalPlaceType"];
  }

  if ([(NSArray *)self->_placeDescriptors count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_placeDescriptors;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"placeDescriptors"];
  }

  v13 = [(_INPBPlace *)self placeSubType];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"placeSubType"];

  v15 = [(_INPBPlace *)self placeType];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"placeType"];

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    v3 = 2654435761 * self->_personalPlaceType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_placeDescriptors hash]^ v3;
  v5 = [(_INPBString *)self->_placeSubType hash];
  return v4 ^ v5 ^ [(_INPBString *)self->_placeType hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBPlace *)self hasPersonalPlaceType];
  if (v5 != [v4 hasPersonalPlaceType])
  {
    goto LABEL_21;
  }

  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    if ([v4 hasPersonalPlaceType])
    {
      personalPlaceType = self->_personalPlaceType;
      if (personalPlaceType != [v4 personalPlaceType])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBPlace *)self placeDescriptors];
  v8 = [v4 placeDescriptors];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBPlace *)self placeDescriptors];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBPlace *)self placeDescriptors];
    v12 = [v4 placeDescriptors];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBPlace *)self placeSubType];
  v8 = [v4 placeSubType];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBPlace *)self placeSubType];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBPlace *)self placeSubType];
    v17 = [v4 placeSubType];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBPlace *)self placeType];
  v8 = [v4 placeType];
  if ((v7 != 0) != (v8 == 0))
  {
    v19 = [(_INPBPlace *)self placeType];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBPlace *)self placeType];
    v22 = [v4 placeType];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPlace allocWithZone:](_INPBPlace init];
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    [(_INPBPlace *)v5 setPersonalPlaceType:[(_INPBPlace *)self personalPlaceType]];
  }

  v6 = [(NSArray *)self->_placeDescriptors copyWithZone:a3];
  [(_INPBPlace *)v5 setPlaceDescriptors:v6];

  v7 = [(_INPBString *)self->_placeSubType copyWithZone:a3];
  [(_INPBPlace *)v5 setPlaceSubType:v7];

  v8 = [(_INPBString *)self->_placeType copyWithZone:a3];
  [(_INPBPlace *)v5 setPlaceType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlace *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlace)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlace *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBPlace *)self hasPersonalPlaceType])
  {
    personalPlaceType = self->_personalPlaceType;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_placeDescriptors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(_INPBPlace *)self placeSubType];

  if (v12)
  {
    v13 = [(_INPBPlace *)self placeSubType];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBPlace *)self placeType];

  if (v14)
  {
    v15 = [(_INPBPlace *)self placeType];
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addPlaceDescriptors:(id)a3
{
  v4 = a3;
  placeDescriptors = self->_placeDescriptors;
  v8 = v4;
  if (!placeDescriptors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_placeDescriptors;
    self->_placeDescriptors = v6;

    v4 = v8;
    placeDescriptors = self->_placeDescriptors;
  }

  [(NSArray *)placeDescriptors addObject:v4];
}

- (void)setPlaceDescriptors:(id)a3
{
  v4 = [a3 mutableCopy];
  placeDescriptors = self->_placeDescriptors;
  self->_placeDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, placeDescriptors);
}

- (int)StringAsPersonalPlaceType:(id)a3
{
  v3 = a3;
  v4 = 2;
  if (([v3 isEqualToString:@"HOME"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"WORK"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

- (void)setPersonalPlaceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_personalPlaceType = a3;
  }
}

@end