@interface _INPBQueryHealthSampleIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBQueryHealthSampleIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addResultValues:(id)values;
- (void)encodeWithCoder:(id)coder;
- (void)setResultValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _INPBQueryHealthSampleIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_resultValues count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_resultValues;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"resultValues"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resultValues = [(_INPBQueryHealthSampleIntentResponse *)self resultValues];
    resultValues2 = [equalCopy resultValues];
    v7 = resultValues2;
    if ((resultValues != 0) != (resultValues2 == 0))
    {
      resultValues3 = [(_INPBQueryHealthSampleIntentResponse *)self resultValues];
      if (!resultValues3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resultValues3;
      resultValues4 = [(_INPBQueryHealthSampleIntentResponse *)self resultValues];
      resultValues5 = [equalCopy resultValues];
      v12 = [resultValues4 isEqual:resultValues5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBQueryHealthSampleIntentResponse allocWithZone:](_INPBQueryHealthSampleIntentResponse init];
  v6 = [(NSArray *)self->_resultValues copyWithZone:zone];
  [(_INPBQueryHealthSampleIntentResponse *)v5 setResultValues:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBQueryHealthSampleIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBQueryHealthSampleIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBQueryHealthSampleIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_resultValues;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addResultValues:(id)values
{
  valuesCopy = values;
  resultValues = self->_resultValues;
  v8 = valuesCopy;
  if (!resultValues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resultValues;
    self->_resultValues = array;

    valuesCopy = v8;
    resultValues = self->_resultValues;
  }

  [(NSArray *)resultValues addObject:valuesCopy];
}

- (void)setResultValues:(id)values
{
  v4 = [values mutableCopy];
  resultValues = self->_resultValues;
  self->_resultValues = v4;

  MEMORY[0x1EEE66BB8](v4, resultValues);
}

@end