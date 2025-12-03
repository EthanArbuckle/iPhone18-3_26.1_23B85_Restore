@interface _INPBControlHomeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBControlHomeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContents:(id)contents;
- (void)addFilters:(id)filters;
- (void)encodeWithCoder:(id)coder;
- (void)setContents:(id)contents;
- (void)setFilters:(id)filters;
- (void)writeTo:(id)to;
@end

@implementation _INPBControlHomeIntent

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contents count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"contents"];
  }

  if ([(NSArray *)self->_filters count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"filters"];
  }

  intentMetadata = [(_INPBControlHomeIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  time = [(_INPBControlHomeIntent *)self time];
  dictionaryRepresentation4 = [time dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"time"];

  userTask = [(_INPBControlHomeIntent *)self userTask];
  dictionaryRepresentation5 = [userTask dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"userTask"];

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_contents hash];
  v4 = [(NSArray *)self->_filters hash]^ v3;
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTimeRange *)self->_time hash];
  return v6 ^ [(_INPBHomeUserTask *)self->_userTask hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  contents = [(_INPBControlHomeIntent *)self contents];
  contents2 = [equalCopy contents];
  if ((contents != 0) == (contents2 == 0))
  {
    goto LABEL_26;
  }

  contents3 = [(_INPBControlHomeIntent *)self contents];
  if (contents3)
  {
    v8 = contents3;
    contents4 = [(_INPBControlHomeIntent *)self contents];
    contents5 = [equalCopy contents];
    v11 = [contents4 isEqual:contents5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  contents = [(_INPBControlHomeIntent *)self filters];
  contents2 = [equalCopy filters];
  if ((contents != 0) == (contents2 == 0))
  {
    goto LABEL_26;
  }

  filters = [(_INPBControlHomeIntent *)self filters];
  if (filters)
  {
    v13 = filters;
    filters2 = [(_INPBControlHomeIntent *)self filters];
    filters3 = [equalCopy filters];
    v16 = [filters2 isEqual:filters3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  contents = [(_INPBControlHomeIntent *)self intentMetadata];
  contents2 = [equalCopy intentMetadata];
  if ((contents != 0) == (contents2 == 0))
  {
    goto LABEL_26;
  }

  intentMetadata = [(_INPBControlHomeIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBControlHomeIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  contents = [(_INPBControlHomeIntent *)self time];
  contents2 = [equalCopy time];
  if ((contents != 0) == (contents2 == 0))
  {
    goto LABEL_26;
  }

  time = [(_INPBControlHomeIntent *)self time];
  if (time)
  {
    v23 = time;
    time2 = [(_INPBControlHomeIntent *)self time];
    time3 = [equalCopy time];
    v26 = [time2 isEqual:time3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  contents = [(_INPBControlHomeIntent *)self userTask];
  contents2 = [equalCopy userTask];
  if ((contents != 0) != (contents2 == 0))
  {
    userTask = [(_INPBControlHomeIntent *)self userTask];
    if (!userTask)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = userTask;
    userTask2 = [(_INPBControlHomeIntent *)self userTask];
    userTask3 = [equalCopy userTask];
    v31 = [userTask2 isEqual:userTask3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBControlHomeIntent allocWithZone:](_INPBControlHomeIntent init];
  v6 = [(NSArray *)self->_contents copyWithZone:zone];
  [(_INPBControlHomeIntent *)v5 setContents:v6];

  v7 = [(NSArray *)self->_filters copyWithZone:zone];
  [(_INPBControlHomeIntent *)v5 setFilters:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBControlHomeIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDateTimeRange *)self->_time copyWithZone:zone];
  [(_INPBControlHomeIntent *)v5 setTime:v9];

  v10 = [(_INPBHomeUserTask *)self->_userTask copyWithZone:zone];
  [(_INPBControlHomeIntent *)v5 setUserTask:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBControlHomeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBControlHomeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBControlHomeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  intentMetadata = [(_INPBControlHomeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBControlHomeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  time = [(_INPBControlHomeIntent *)self time];

  if (time)
  {
    time2 = [(_INPBControlHomeIntent *)self time];
    PBDataWriterWriteSubmessage();
  }

  userTask = [(_INPBControlHomeIntent *)self userTask];

  if (userTask)
  {
    userTask2 = [(_INPBControlHomeIntent *)self userTask];
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
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

- (void)addContents:(id)contents
{
  contentsCopy = contents;
  contents = self->_contents;
  v8 = contentsCopy;
  if (!contents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contents;
    self->_contents = array;

    contentsCopy = v8;
    contents = self->_contents;
  }

  [(NSArray *)contents addObject:contentsCopy];
}

- (void)setContents:(id)contents
{
  v4 = [contents mutableCopy];
  contents = self->_contents;
  self->_contents = v4;

  MEMORY[0x1EEE66BB8](v4, contents);
}

@end