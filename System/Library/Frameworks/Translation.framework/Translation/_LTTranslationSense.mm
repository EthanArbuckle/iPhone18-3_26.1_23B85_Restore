@interface _LTTranslationSense
+ (id)senseFromDictionary:(id)dictionary;
+ (id)senseWithPhrasebookMatchMeta:(id)meta;
- (_LTTranslationSense)initWithCoder:(id)coder;
- (id)jsonRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationSense

- (id)jsonRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  senseID = [(_LTTranslationSense *)self senseID];

  if (senseID)
  {
    senseID2 = [(_LTTranslationSense *)self senseID];
    [dictionary setObject:senseID2 forKeyedSubscript:@"syn"];
  }

  definition = [(_LTTranslationSense *)self definition];

  if (definition)
  {
    definition2 = [(_LTTranslationSense *)self definition];
    [dictionary setObject:definition2 forKeyedSubscript:@"def"];
  }

  sourceMatch = [(_LTTranslationSense *)self sourceMatch];

  if (sourceMatch)
  {
    sourceMatch2 = [(_LTTranslationSense *)self sourceMatch];
    [dictionary setObject:sourceMatch2 forKeyedSubscript:@"sourceMatch"];
  }

  targetMatch = [(_LTTranslationSense *)self targetMatch];

  if (targetMatch)
  {
    targetMatch2 = [(_LTTranslationSense *)self targetMatch];
    [dictionary setObject:targetMatch2 forKeyedSubscript:@"targetMatch"];
  }

  return dictionary;
}

+ (id)senseWithPhrasebookMatchMeta:(id)meta
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [_LTTranslationSense senseFromDictionary:meta];
  v4 = v3;
  if (v3)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)senseFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"syn"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sense ID"];
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"def"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"definition"];
  }

  v11 = v10;

  v12 = 0;
  if (v7 && v11)
  {
    v12 = objc_alloc_init(_LTTranslationSense);
    [(_LTTranslationSense *)v12 setSenseID:v7];
    [(_LTTranslationSense *)v12 setDefinition:v11];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    -[_LTTranslationSense setPhrasebookMatch:](v12, "setPhrasebookMatch:", [v13 isEqualToString:@"phrasebook_exact"]);

    isPhrasebookMatch = [(_LTTranslationSense *)v12 isPhrasebookMatch];
    if (isPhrasebookMatch)
    {
      v15 = @"input";
    }

    else
    {
      v15 = @"source match";
    }

    if (isPhrasebookMatch)
    {
      v16 = @"output";
    }

    else
    {
      v16 = @"target match";
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:v15];
    [(_LTTranslationSense *)v12 setSourceMatch:v17];

    v18 = [dictionaryCopy objectForKeyedSubscript:v16];
    [(_LTTranslationSense *)v12 setTargetMatch:v18];

    array = [MEMORY[0x277CBEB18] array];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"gender"];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"gender"];
      [array addObject:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"formality"];

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"formality"];
      [array addObject:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"pos"];

    if (v24)
    {
      v25 = [dictionaryCopy objectForKeyedSubscript:@"pos"];
      [array addObject:v25];
    }

    [(_LTTranslationSense *)v12 setLabels:array];
  }

  return v12;
}

- (_LTTranslationSense)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = _LTTranslationSense;
  v5 = [(_LTTranslationSense *)&v23 init];
  if (v5)
  {
    v5->_phrasebookMatch = [coderCopy decodeBoolForKey:@"pbMatch"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syn"];
    senseID = v5->_senseID;
    v5->_senseID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"def"];
    definition = v5->_definition;
    v5->_definition = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceMatch"];
    sourceMatch = v5->_sourceMatch;
    v5->_sourceMatch = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetMatch"];
    targetMatch = v5->_targetMatch;
    v5->_targetMatch = v12;

    v14 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"labels"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_labels, v19);

    v20 = v5;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  phrasebookMatch = self->_phrasebookMatch;
  coderCopy = coder;
  [coderCopy encodeBool:phrasebookMatch forKey:@"pbMatch"];
  [coderCopy encodeObject:self->_senseID forKey:@"syn"];
  [coderCopy encodeObject:self->_definition forKey:@"def"];
  [coderCopy encodeObject:self->_sourceMatch forKey:@"sourceMatch"];
  [coderCopy encodeObject:self->_targetMatch forKey:@"targetMatch"];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
}

@end