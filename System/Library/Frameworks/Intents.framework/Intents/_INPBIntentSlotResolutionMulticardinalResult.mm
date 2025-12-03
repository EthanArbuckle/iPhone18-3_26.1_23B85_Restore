@interface _INPBIntentSlotResolutionMulticardinalResult
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSlotResolutionMulticardinalResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addResolutionResults:(id)results;
- (void)encodeWithCoder:(id)coder;
- (void)setResolutionResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotResolutionMulticardinalResult

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_resolutionResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_resolutionResults;
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

    [dictionary setObject:array forKeyedSubscript:@"resolutionResults"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resolutionResults = [(_INPBIntentSlotResolutionMulticardinalResult *)self resolutionResults];
    resolutionResults2 = [equalCopy resolutionResults];
    v7 = resolutionResults2;
    if ((resolutionResults != 0) != (resolutionResults2 == 0))
    {
      resolutionResults3 = [(_INPBIntentSlotResolutionMulticardinalResult *)self resolutionResults];
      if (!resolutionResults3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resolutionResults3;
      resolutionResults4 = [(_INPBIntentSlotResolutionMulticardinalResult *)self resolutionResults];
      resolutionResults5 = [equalCopy resolutionResults];
      v12 = [resolutionResults4 isEqual:resolutionResults5];

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
  v5 = [+[_INPBIntentSlotResolutionMulticardinalResult allocWithZone:](_INPBIntentSlotResolutionMulticardinalResult init];
  v6 = [(NSArray *)self->_resolutionResults copyWithZone:zone];
  [(_INPBIntentSlotResolutionMulticardinalResult *)v5 setResolutionResults:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotResolutionMulticardinalResult *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotResolutionMulticardinalResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotResolutionMulticardinalResult *)self initWithData:selfCopy];

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
  v5 = self->_resolutionResults;
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

- (void)addResolutionResults:(id)results
{
  resultsCopy = results;
  resolutionResults = self->_resolutionResults;
  v8 = resultsCopy;
  if (!resolutionResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_resolutionResults;
    self->_resolutionResults = array;

    resultsCopy = v8;
    resolutionResults = self->_resolutionResults;
  }

  [(NSArray *)resolutionResults addObject:resultsCopy];
}

- (void)setResolutionResults:(id)results
{
  v4 = [results mutableCopy];
  resolutionResults = self->_resolutionResults;
  self->_resolutionResults = v4;

  MEMORY[0x1EEE66BB8](v4, resolutionResults);
}

@end