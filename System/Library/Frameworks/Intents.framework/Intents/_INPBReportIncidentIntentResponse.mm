@interface _INPBReportIncidentIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBReportIncidentIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsTransportTypes:(id)types;
- (unint64_t)hash;
- (void)addSupportedType:(id)type;
- (void)addTransportType:(int)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSupportedTypes:(id)types;
- (void)writeTo:(id)to;
@end

@implementation _INPBReportIncidentIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  location = [(_INPBReportIncidentIntentResponse *)self location];
  dictionaryRepresentation = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_supportedTypes count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_supportedTypes;
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"supportedType"];
  }

  if (self->_transportTypes.count)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBReportIncidentIntentResponse transportTypesCount](self, "transportTypesCount")}];
    if ([(_INPBReportIncidentIntentResponse *)self transportTypesCount])
    {
      v14 = 0;
      do
      {
        v15 = self->_transportTypes.list[v14];
        if (v15 >= 6)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportTypes.list[v14]];
        }

        else
        {
          v16 = off_1E72886B8[v15];
        }

        [v13 addObject:v16];

        ++v14;
      }

      while (v14 < [(_INPBReportIncidentIntentResponse *)self transportTypesCount]);
    }

    [dictionary setObject:v13 forKeyedSubscript:@"transportType"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_location hash];
  v4 = [(NSArray *)self->_supportedTypes hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  location = [(_INPBReportIncidentIntentResponse *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_11;
  }

  location3 = [(_INPBReportIncidentIntentResponse *)self location];
  if (location3)
  {
    v8 = location3;
    location4 = [(_INPBReportIncidentIntentResponse *)self location];
    location5 = [equalCopy location];
    v11 = [location4 isEqual:location5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  location = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
  location2 = [equalCopy supportedTypes];
  if ((location != 0) != (location2 == 0))
  {
    supportedTypes = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
    if (!supportedTypes)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = supportedTypes;
    supportedTypes2 = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
    supportedTypes3 = [equalCopy supportedTypes];
    v16 = [supportedTypes2 isEqual:supportedTypes3];

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
  IsEqual = 0;
LABEL_13:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReportIncidentIntentResponse allocWithZone:](_INPBReportIncidentIntentResponse init];
  v6 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBReportIncidentIntentResponse *)v5 setLocation:v6];

  v7 = [(NSArray *)self->_supportedTypes copyWithZone:zone];
  [(_INPBReportIncidentIntentResponse *)v5 setSupportedTypes:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReportIncidentIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReportIncidentIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReportIncidentIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBReportIncidentIntentResponse *)self clearTransportTypes];
  v3.receiver = self;
  v3.super_class = _INPBReportIncidentIntentResponse;
  [(_INPBReportIncidentIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  location = [(_INPBReportIncidentIntentResponse *)self location];

  if (location)
  {
    location2 = [(_INPBReportIncidentIntentResponse *)self location];
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_supportedTypes;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  p_transportTypes = &self->_transportTypes;
  if (p_transportTypes->count)
  {
    v14 = 0;
    do
    {
      v15 = p_transportTypes->list[v14];
      PBDataWriterWriteInt32Field();
      ++v14;
    }

    while (v14 < p_transportTypes->count);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (int)StringAsTransportTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"DRIVING"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"WALKING"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"CYCLING"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 4;
  }

  else if ([typesCopy isEqualToString:@"RIDESHARE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTransportType:(int)type
{
  if (type != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addSupportedType:(id)type
{
  typeCopy = type;
  supportedTypes = self->_supportedTypes;
  v8 = typeCopy;
  if (!supportedTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedTypes;
    self->_supportedTypes = array;

    typeCopy = v8;
    supportedTypes = self->_supportedTypes;
  }

  [(NSArray *)supportedTypes addObject:typeCopy];
}

- (void)setSupportedTypes:(id)types
{
  v4 = [types mutableCopy];
  supportedTypes = self->_supportedTypes;
  self->_supportedTypes = v4;

  MEMORY[0x1EEE66BB8](v4, supportedTypes);
}

@end