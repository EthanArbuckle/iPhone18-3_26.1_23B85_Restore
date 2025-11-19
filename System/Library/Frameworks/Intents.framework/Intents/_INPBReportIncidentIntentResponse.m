@interface _INPBReportIncidentIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBReportIncidentIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsTransportTypes:(id)a3;
- (unint64_t)hash;
- (void)addSupportedType:(id)a3;
- (void)addTransportType:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSupportedTypes:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReportIncidentIntentResponse

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReportIncidentIntentResponse *)self location];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_supportedTypes count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"supportedType"];
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

    [v3 setObject:v13 forKeyedSubscript:@"transportType"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_location hash];
  v4 = [(NSArray *)self->_supportedTypes hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBReportIncidentIntentResponse *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBReportIncidentIntentResponse *)self location];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReportIncidentIntentResponse *)self location];
    v10 = [v4 location];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
  v6 = [v4 supportedTypes];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
    if (!v12)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBReportIncidentIntentResponse *)self supportedTypes];
    v15 = [v4 supportedTypes];
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
  IsEqual = 0;
LABEL_13:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReportIncidentIntentResponse allocWithZone:](_INPBReportIncidentIntentResponse init];
  v6 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBReportIncidentIntentResponse *)v5 setLocation:v6];

  v7 = [(NSArray *)self->_supportedTypes copyWithZone:a3];
  [(_INPBReportIncidentIntentResponse *)v5 setSupportedTypes:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReportIncidentIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReportIncidentIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReportIncidentIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBReportIncidentIntentResponse *)self clearTransportTypes];
  v3.receiver = self;
  v3.super_class = _INPBReportIncidentIntentResponse;
  [(_INPBReportIncidentIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBReportIncidentIntentResponse *)self location];

  if (v5)
  {
    v6 = [(_INPBReportIncidentIntentResponse *)self location];
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

- (int)StringAsTransportTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DRIVING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WALKING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CYCLING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TRANSIT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RIDESHARE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTransportType:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addSupportedType:(id)a3
{
  v4 = a3;
  supportedTypes = self->_supportedTypes;
  v8 = v4;
  if (!supportedTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedTypes;
    self->_supportedTypes = v6;

    v4 = v8;
    supportedTypes = self->_supportedTypes;
  }

  [(NSArray *)supportedTypes addObject:v4];
}

- (void)setSupportedTypes:(id)a3
{
  v4 = [a3 mutableCopy];
  supportedTypes = self->_supportedTypes;
  self->_supportedTypes = v4;

  MEMORY[0x1EEE66BB8](v4, supportedTypes);
}

@end