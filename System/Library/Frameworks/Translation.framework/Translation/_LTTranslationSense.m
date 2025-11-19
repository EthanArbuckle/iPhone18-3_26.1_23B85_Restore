@interface _LTTranslationSense
+ (id)senseFromDictionary:(id)a3;
+ (id)senseWithPhrasebookMatchMeta:(id)a3;
- (_LTTranslationSense)initWithCoder:(id)a3;
- (id)jsonRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTranslationSense

- (id)jsonRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(_LTTranslationSense *)self senseID];

  if (v4)
  {
    v5 = [(_LTTranslationSense *)self senseID];
    [v3 setObject:v5 forKeyedSubscript:@"syn"];
  }

  v6 = [(_LTTranslationSense *)self definition];

  if (v6)
  {
    v7 = [(_LTTranslationSense *)self definition];
    [v3 setObject:v7 forKeyedSubscript:@"def"];
  }

  v8 = [(_LTTranslationSense *)self sourceMatch];

  if (v8)
  {
    v9 = [(_LTTranslationSense *)self sourceMatch];
    [v3 setObject:v9 forKeyedSubscript:@"sourceMatch"];
  }

  v10 = [(_LTTranslationSense *)self targetMatch];

  if (v10)
  {
    v11 = [(_LTTranslationSense *)self targetMatch];
    [v3 setObject:v11 forKeyedSubscript:@"targetMatch"];
  }

  return v3;
}

+ (id)senseWithPhrasebookMatchMeta:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [_LTTranslationSense senseFromDictionary:a3];
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

+ (id)senseFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"syn"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"sense ID"];
  }

  v7 = v6;

  v8 = [v3 objectForKeyedSubscript:@"def"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v3 objectForKeyedSubscript:@"definition"];
  }

  v11 = v10;

  v12 = 0;
  if (v7 && v11)
  {
    v12 = objc_alloc_init(_LTTranslationSense);
    [(_LTTranslationSense *)v12 setSenseID:v7];
    [(_LTTranslationSense *)v12 setDefinition:v11];
    v13 = [v3 objectForKeyedSubscript:@"status"];
    -[_LTTranslationSense setPhrasebookMatch:](v12, "setPhrasebookMatch:", [v13 isEqualToString:@"phrasebook_exact"]);

    v14 = [(_LTTranslationSense *)v12 isPhrasebookMatch];
    if (v14)
    {
      v15 = @"input";
    }

    else
    {
      v15 = @"source match";
    }

    if (v14)
    {
      v16 = @"output";
    }

    else
    {
      v16 = @"target match";
    }

    v17 = [v3 objectForKeyedSubscript:v15];
    [(_LTTranslationSense *)v12 setSourceMatch:v17];

    v18 = [v3 objectForKeyedSubscript:v16];
    [(_LTTranslationSense *)v12 setTargetMatch:v18];

    v19 = [MEMORY[0x277CBEB18] array];
    v20 = [v3 objectForKeyedSubscript:@"gender"];

    if (v20)
    {
      v21 = [v3 objectForKeyedSubscript:@"gender"];
      [v19 addObject:v21];
    }

    v22 = [v3 objectForKeyedSubscript:@"formality"];

    if (v22)
    {
      v23 = [v3 objectForKeyedSubscript:@"formality"];
      [v19 addObject:v23];
    }

    v24 = [v3 objectForKeyedSubscript:@"pos"];

    if (v24)
    {
      v25 = [v3 objectForKeyedSubscript:@"pos"];
      [v19 addObject:v25];
    }

    [(_LTTranslationSense *)v12 setLabels:v19];
  }

  return v12;
}

- (_LTTranslationSense)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _LTTranslationSense;
  v5 = [(_LTTranslationSense *)&v23 init];
  if (v5)
  {
    v5->_phrasebookMatch = [v4 decodeBoolForKey:@"pbMatch"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syn"];
    senseID = v5->_senseID;
    v5->_senseID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"def"];
    definition = v5->_definition;
    v5->_definition = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceMatch"];
    sourceMatch = v5->_sourceMatch;
    v5->_sourceMatch = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetMatch"];
    targetMatch = v5->_targetMatch;
    v5->_targetMatch = v12;

    v14 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"labels"];
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

- (void)encodeWithCoder:(id)a3
{
  phrasebookMatch = self->_phrasebookMatch;
  v5 = a3;
  [v5 encodeBool:phrasebookMatch forKey:@"pbMatch"];
  [v5 encodeObject:self->_senseID forKey:@"syn"];
  [v5 encodeObject:self->_definition forKey:@"def"];
  [v5 encodeObject:self->_sourceMatch forKey:@"sourceMatch"];
  [v5 encodeObject:self->_targetMatch forKey:@"targetMatch"];
  [v5 encodeObject:self->_labels forKey:@"labels"];
}

@end