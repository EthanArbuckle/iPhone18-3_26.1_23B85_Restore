@interface _LTTranslationParagraph
- (_LTTranslationParagraph)initWithCoder:(id)coder;
- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans;
- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans isFinal:(BOOL)final;
- (id)splitIntoSentences;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTranslationParagraph

- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans
{
  identifierCopy = identifier;
  textCopy = text;
  spansCopy = spans;
  v14.receiver = self;
  v14.super_class = _LTTranslationParagraph;
  v11 = [(_LTTranslationParagraph *)&v14 init];
  if (v11)
  {
    v12 = [(_LTTranslationParagraph *)v11 initWithIdentifier:identifierCopy text:textCopy spans:spansCopy isFinal:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_LTTranslationParagraph)initWithIdentifier:(id)identifier text:(id)text spans:(id)spans isFinal:(BOOL)final
{
  identifierCopy = identifier;
  textCopy = text;
  spansCopy = spans;
  v22.receiver = self;
  v22.super_class = _LTTranslationParagraph;
  v13 = [(_LTTranslationParagraph *)&v22 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [textCopy copy];
    text = v13->_text;
    v13->_text = v16;

    v13->_isFinal = final;
    v18 = [spansCopy copy];
    spans = v13->_spans;
    v13->_spans = v18;

    v20 = v13;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_spans forKey:@"spans"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
}

- (_LTTranslationParagraph)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _LTTranslationParagraph;
  v5 = [(_LTTranslationParagraph *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v12;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)splitIntoSentences
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self->_text];
  spans = self->_spans;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke;
  v36[3] = &unk_278B6D9D8;
  v6 = v4;
  v37 = v6;
  [(NSArray *)spans enumerateObjectsUsingBlock:v36];
  v26 = v6;
  [v6 sentences];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v10 = array;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [v12 length];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke_2;
        v30[3] = &unk_278B6DA28;
        v15 = v13;
        v31 = v15;
        [v12 enumerateAttributesInRange:0 options:v14 usingBlock:{0, v30}];
        if ([v15 count])
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __45___LTTranslationParagraph_splitIntoSentences__block_invoke_4;
          v28[3] = &unk_278B6DA50;
          v17 = v16;
          v29 = v17;
          [v15 enumerateKeysAndObjectsUsingBlock:v28];
        }

        else
        {
          v17 = 0;
        }

        v18 = [_LTTranslationParagraph alloc];
        identifier = self->_identifier;
        string = [v12 string];
        v21 = [(_LTTranslationParagraph *)v18 initWithIdentifier:identifier text:string spans:v17 isFinal:self->_isFinal];
        array = v10;
        [v10 addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v8);
  }

  if ([array count] == 1)
  {
    selfCopy = self;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
  }

  else
  {
    v22 = array;
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end