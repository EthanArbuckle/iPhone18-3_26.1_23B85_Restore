@interface _INPBSpatialEventTrigger
- (BOOL)isEqual:(id)equal;
- (_INPBSpatialEventTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)event;
- (int)StringAsMobileSpace:(id)space;
- (unint64_t)hash;
- (void)addSuggestedValues:(id)values;
- (void)encodeWithCoder:(id)coder;
- (void)setEvent:(int)event;
- (void)setHasMobileSpace:(BOOL)space;
- (void)setMobileSpace:(int)space;
- (void)setSuggestedValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBSpatialEventTrigger

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    event = [(_INPBSpatialEventTrigger *)self event];
    if (event)
    {
      if (event == 20)
      {
        v5 = @"DEPART";
      }

      else if (event == 10)
      {
        v5 = @"ARRIVE";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", event];
      }
    }

    else
    {
      v5 = @"UNKNOWN_SPATIAL_EVENT";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"event"];
  }

  location = [(_INPBSpatialEventTrigger *)self location];
  dictionaryRepresentation = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    mobileSpace = [(_INPBSpatialEventTrigger *)self mobileSpace];
    if (mobileSpace)
    {
      if (mobileSpace == 1)
      {
        v9 = @"CAR";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mobileSpace];
      }
    }

    else
    {
      v9 = @"UNKNOWN_MOBILE_SPACE";
    }

    [dictionary setObject:v9 forKeyedSubscript:@"mobileSpace"];
  }

  if ([(NSArray *)self->_suggestedValues count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"suggestedValues"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  hasEvent = [(_INPBSpatialEventTrigger *)self hasEvent];
  if (hasEvent != [equalCopy hasEvent])
  {
    goto LABEL_20;
  }

  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    if ([equalCopy hasEvent])
    {
      event = self->_event;
      if (event != [equalCopy event])
      {
        goto LABEL_20;
      }
    }
  }

  location = [(_INPBSpatialEventTrigger *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_19;
  }

  location3 = [(_INPBSpatialEventTrigger *)self location];
  if (location3)
  {
    v10 = location3;
    location4 = [(_INPBSpatialEventTrigger *)self location];
    location5 = [equalCopy location];
    v13 = [location4 isEqual:location5];

    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  hasMobileSpace = [(_INPBSpatialEventTrigger *)self hasMobileSpace];
  if (hasMobileSpace != [equalCopy hasMobileSpace])
  {
    goto LABEL_20;
  }

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    if ([equalCopy hasMobileSpace])
    {
      mobileSpace = self->_mobileSpace;
      if (mobileSpace != [equalCopy mobileSpace])
      {
        goto LABEL_20;
      }
    }
  }

  location = [(_INPBSpatialEventTrigger *)self suggestedValues];
  location2 = [equalCopy suggestedValues];
  if ((location != 0) != (location2 == 0))
  {
    suggestedValues = [(_INPBSpatialEventTrigger *)self suggestedValues];
    if (!suggestedValues)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = suggestedValues;
    suggestedValues2 = [(_INPBSpatialEventTrigger *)self suggestedValues];
    suggestedValues3 = [equalCopy suggestedValues];
    v20 = [suggestedValues2 isEqual:suggestedValues3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSpatialEventTrigger allocWithZone:](_INPBSpatialEventTrigger init];
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    [(_INPBSpatialEventTrigger *)v5 setEvent:[(_INPBSpatialEventTrigger *)self event]];
  }

  v6 = [(_INPBLocationValue *)self->_location copyWithZone:zone];
  [(_INPBSpatialEventTrigger *)v5 setLocation:v6];

  if ([(_INPBSpatialEventTrigger *)self hasMobileSpace])
  {
    [(_INPBSpatialEventTrigger *)v5 setMobileSpace:[(_INPBSpatialEventTrigger *)self mobileSpace]];
  }

  v7 = [(NSArray *)self->_suggestedValues copyWithZone:zone];
  [(_INPBSpatialEventTrigger *)v5 setSuggestedValues:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSpatialEventTrigger *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSpatialEventTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSpatialEventTrigger *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBSpatialEventTrigger *)self hasEvent])
  {
    event = self->_event;
    PBDataWriterWriteInt32Field();
  }

  location = [(_INPBSpatialEventTrigger *)self location];

  if (location)
  {
    location2 = [(_INPBSpatialEventTrigger *)self location];
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

- (void)addSuggestedValues:(id)values
{
  valuesCopy = values;
  suggestedValues = self->_suggestedValues;
  v8 = valuesCopy;
  if (!suggestedValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestedValues;
    self->_suggestedValues = array;

    valuesCopy = v8;
    suggestedValues = self->_suggestedValues;
  }

  [(NSArray *)suggestedValues addObject:valuesCopy];
}

- (void)setSuggestedValues:(id)values
{
  v4 = [values mutableCopy];
  suggestedValues = self->_suggestedValues;
  self->_suggestedValues = v4;

  MEMORY[0x1EEE66BB8](v4, suggestedValues);
}

- (int)StringAsMobileSpace:(id)space
{
  spaceCopy = space;
  if ([spaceCopy isEqualToString:@"UNKNOWN_MOBILE_SPACE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [spaceCopy isEqualToString:@"CAR"];
  }

  return v4;
}

- (void)setHasMobileSpace:(BOOL)space
{
  if (space)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setMobileSpace:(int)space
{
  has = self->_has;
  if (space == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_mobileSpace = space;
  }
}

- (int)StringAsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"UNKNOWN_SPATIAL_EVENT"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"ARRIVE"])
  {
    v4 = 10;
  }

  else if ([eventCopy isEqualToString:@"DEPART"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEvent:(int)event
{
  has = self->_has;
  if (event == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_event = event;
  }
}

@end