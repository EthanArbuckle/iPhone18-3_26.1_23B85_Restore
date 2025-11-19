@interface _INPBSpatialEventTrigger
- (BOOL)isEqual:(id)a3;
- (_INPBSpatialEventTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)a3;
- (int)StringAsMobileSpace:(id)a3;
- (unint64_t)hash;
- (void)addSuggestedValues:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEvent:(int)a3;
- (void)setHasMobileSpace:(BOOL)a3;
- (void)setMobileSpace:(int)a3;
- (void)setSuggestedValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSpatialEventTrigger

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    v4 = [(_INPBSpatialEventTrigger *)self event];
    if (v4)
    {
      if (v4 == 20)
      {
        v5 = @"DEPART";
      }

      else if (v4 == 10)
      {
        v5 = @"ARRIVE";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }
    }

    else
    {
      v5 = @"UNKNOWN_SPATIAL_EVENT";
    }

    [v3 setObject:v5 forKeyedSubscript:@"event"];
  }

  v6 = [(_INPBSpatialEventTrigger *)self location];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"location"];

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    v8 = [(_INPBSpatialEventTrigger *)self mobileSpace];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = @"CAR";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
      }
    }

    else
    {
      v9 = @"UNKNOWN_MOBILE_SPACE";
    }

    [v3 setObject:v9 forKeyedSubscript:@"mobileSpace"];
  }

  if ([(NSArray *)self->_suggestedValues count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_suggestedValues;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"suggestedValues"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    v3 = 2654435761 * self->_event;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBLocationValue *)self->_location hash];
  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    v5 = 2654435761 * self->_mobileSpace;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_suggestedValues hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(_INPBSpatialEventTrigger *)self hasEvent];
  if (v5 != [v4 hasEvent])
  {
    goto LABEL_20;
  }

  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    if ([v4 hasEvent])
    {
      event = self->_event;
      if (event != [v4 event])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBSpatialEventTrigger *)self location];
  v8 = [v4 location];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_19;
  }

  v9 = [(_INPBSpatialEventTrigger *)self location];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBSpatialEventTrigger *)self location];
    v12 = [v4 location];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = [(_INPBSpatialEventTrigger *)self hasMobileSpace];
  if (v14 != [v4 hasMobileSpace])
  {
    goto LABEL_20;
  }

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    if ([v4 hasMobileSpace])
    {
      mobileSpace = self->_mobileSpace;
      if (mobileSpace != [v4 mobileSpace])
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [(_INPBSpatialEventTrigger *)self suggestedValues];
  v8 = [v4 suggestedValues];
  if ((v7 != 0) != (v8 == 0))
  {
    v16 = [(_INPBSpatialEventTrigger *)self suggestedValues];
    if (!v16)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = v16;
    v18 = [(_INPBSpatialEventTrigger *)self suggestedValues];
    v19 = [v4 suggestedValues];
    v20 = [v18 isEqual:v19];

    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v21 = 0;
LABEL_21:

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSpatialEventTrigger allocWithZone:](_INPBSpatialEventTrigger init];
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    [(_INPBSpatialEventTrigger *)v5 setEvent:[(_INPBSpatialEventTrigger *)self event]];
  }

  v6 = [(_INPBLocationValue *)self->_location copyWithZone:a3];
  [(_INPBSpatialEventTrigger *)v5 setLocation:v6];

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    [(_INPBSpatialEventTrigger *)v5 setMobileSpace:[(_INPBSpatialEventTrigger *)self mobileSpace]];
  }

  v7 = [(NSArray *)self->_suggestedValues copyWithZone:a3];
  [(_INPBSpatialEventTrigger *)v5 setSuggestedValues:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSpatialEventTrigger *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSpatialEventTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSpatialEventTrigger *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    event = self->_event;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBSpatialEventTrigger *)self location];

  if (v6)
  {
    v7 = [(_INPBSpatialEventTrigger *)self location];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    mobileSpace = self->_mobileSpace;
    PBDataWriterWriteInt32Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_suggestedValues;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addSuggestedValues:(id)a3
{
  v4 = a3;
  suggestedValues = self->_suggestedValues;
  v8 = v4;
  if (!suggestedValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestedValues;
    self->_suggestedValues = v6;

    v4 = v8;
    suggestedValues = self->_suggestedValues;
  }

  [(NSArray *)suggestedValues addObject:v4];
}

- (void)setSuggestedValues:(id)a3
{
  v4 = [a3 mutableCopy];
  suggestedValues = self->_suggestedValues;
  self->_suggestedValues = v4;

  MEMORY[0x1EEE66BB8](v4, suggestedValues);
}

- (int)StringAsMobileSpace:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_MOBILE_SPACE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CAR"];
  }

  return v4;
}

- (void)setHasMobileSpace:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setMobileSpace:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_mobileSpace = a3;
  }
}

- (int)StringAsEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SPATIAL_EVENT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ARRIVE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DEPART"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEvent:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_event = a3;
  }
}

@end