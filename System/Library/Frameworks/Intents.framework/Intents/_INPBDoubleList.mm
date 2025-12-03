@interface _INPBDoubleList
- (BOOL)isEqual:(id)equal;
- (_INPBDoubleList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addDataString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)setDataStrings:(id)strings;
- (void)writeTo:(id)to;
@end

@implementation _INPBDoubleList

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  conditionType = [(_INPBDoubleList *)self conditionType];
  dictionaryRepresentation = [conditionType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"conditionType"];

  if ([(NSArray *)self->_dataStrings count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_dataStrings;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"dataString"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  conditionType = [(_INPBDoubleList *)self conditionType];
  conditionType2 = [equalCopy conditionType];
  if ((conditionType != 0) == (conditionType2 == 0))
  {
    goto LABEL_11;
  }

  conditionType3 = [(_INPBDoubleList *)self conditionType];
  if (conditionType3)
  {
    v8 = conditionType3;
    conditionType4 = [(_INPBDoubleList *)self conditionType];
    conditionType5 = [equalCopy conditionType];
    v11 = [conditionType4 isEqual:conditionType5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  conditionType = [(_INPBDoubleList *)self dataStrings];
  conditionType2 = [equalCopy dataStrings];
  if ((conditionType != 0) != (conditionType2 == 0))
  {
    dataStrings = [(_INPBDoubleList *)self dataStrings];
    if (!dataStrings)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = dataStrings;
    dataStrings2 = [(_INPBDoubleList *)self dataStrings];
    dataStrings3 = [equalCopy dataStrings];
    v16 = [dataStrings2 isEqual:dataStrings3];

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
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDoubleList allocWithZone:](_INPBDoubleList init];
  v6 = [(_INPBCondition *)self->_conditionType copyWithZone:zone];
  [(_INPBDoubleList *)v5 setConditionType:v6];

  v7 = [(NSArray *)self->_dataStrings copyWithZone:zone];
  [(_INPBDoubleList *)v5 setDataStrings:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDoubleList *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDoubleList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDoubleList *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  conditionType = [(_INPBDoubleList *)self conditionType];

  if (conditionType)
  {
    conditionType2 = [(_INPBDoubleList *)self conditionType];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_dataStrings;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addDataString:(id)string
{
  stringCopy = string;
  dataStrings = self->_dataStrings;
  v8 = stringCopy;
  if (!dataStrings)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dataStrings;
    self->_dataStrings = array;

    stringCopy = v8;
    dataStrings = self->_dataStrings;
  }

  [(NSArray *)dataStrings addObject:stringCopy];
}

- (void)setDataStrings:(id)strings
{
  v4 = [strings mutableCopy];
  dataStrings = self->_dataStrings;
  self->_dataStrings = v4;

  MEMORY[0x1EEE66BB8](v4, dataStrings);
}

@end