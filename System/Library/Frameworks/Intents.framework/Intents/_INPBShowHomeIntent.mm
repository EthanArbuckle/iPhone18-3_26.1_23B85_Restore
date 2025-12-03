@interface _INPBShowHomeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBShowHomeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFilters:(id)filters;
- (void)encodeWithCoder:(id)coder;
- (void)setFilters:(id)filters;
- (void)writeTo:(id)to;
@end

@implementation _INPBShowHomeIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_filters count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"filters"];
  }

  intentMetadata = [(_INPBShowHomeIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  time = [(_INPBShowHomeIntent *)self time];
  dictionaryRepresentation3 = [time dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"time"];

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_filters hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBDateTimeRange *)self->_time hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  filters = [(_INPBShowHomeIntent *)self filters];
  filters2 = [equalCopy filters];
  if ((filters != 0) == (filters2 == 0))
  {
    goto LABEL_16;
  }

  filters3 = [(_INPBShowHomeIntent *)self filters];
  if (filters3)
  {
    v8 = filters3;
    filters4 = [(_INPBShowHomeIntent *)self filters];
    filters5 = [equalCopy filters];
    v11 = [filters4 isEqual:filters5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  filters = [(_INPBShowHomeIntent *)self intentMetadata];
  filters2 = [equalCopy intentMetadata];
  if ((filters != 0) == (filters2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBShowHomeIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBShowHomeIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  filters = [(_INPBShowHomeIntent *)self time];
  filters2 = [equalCopy time];
  if ((filters != 0) != (filters2 == 0))
  {
    time = [(_INPBShowHomeIntent *)self time];
    if (!time)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = time;
    time2 = [(_INPBShowHomeIntent *)self time];
    time3 = [equalCopy time];
    v21 = [time2 isEqual:time3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBShowHomeIntent allocWithZone:](_INPBShowHomeIntent init];
  v6 = [(NSArray *)self->_filters copyWithZone:zone];
  [(_INPBShowHomeIntent *)v5 setFilters:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBShowHomeIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBDateTimeRange *)self->_time copyWithZone:zone];
  [(_INPBShowHomeIntent *)v5 setTime:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShowHomeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShowHomeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShowHomeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  intentMetadata = [(_INPBShowHomeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBShowHomeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  time = [(_INPBShowHomeIntent *)self time];

  if (time)
  {
    time2 = [(_INPBShowHomeIntent *)self time];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addFilters:(id)filters
{
  filtersCopy = filters;
  filters = self->_filters;
  v8 = filtersCopy;
  if (!filters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_filters;
    self->_filters = array;

    filtersCopy = v8;
    filters = self->_filters;
  }

  [(NSArray *)filters addObject:filtersCopy];
}

- (void)setFilters:(id)filters
{
  v4 = [filters mutableCopy];
  filters = self->_filters;
  self->_filters = v4;

  MEMORY[0x1EEE66BB8](v4, filters);
}

@end