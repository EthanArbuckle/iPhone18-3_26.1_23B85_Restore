@interface _LTDisambiguationNode
- (_LTDisambiguationNode)initWithCoder:(id)coder;
- (_LTDisambiguationNode)initWithText:(id)text links:(id)links romanization:(id)romanization;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_insertPrefix:(id)prefix;
- (void)_removeAllLinks;
- (void)_removeRomanization;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTDisambiguationNode

- (_LTDisambiguationNode)initWithText:(id)text links:(id)links romanization:(id)romanization
{
  textCopy = text;
  linksCopy = links;
  romanizationCopy = romanization;
  v20.receiver = self;
  v20.super_class = _LTDisambiguationNode;
  v11 = [(_LTDisambiguationNode *)&v20 init];
  if (v11)
  {
    v12 = [textCopy copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [linksCopy copy];
    links = v11->_links;
    v11->_links = v14;

    v16 = [romanizationCopy copy];
    romanization = v11->_romanization;
    v11->_romanization = v16;

    v18 = v11;
  }

  return v11;
}

- (void)_removeAllLinks
{
  links = self->_links;
  self->_links = MEMORY[0x277CBEBF8];
  MEMORY[0x2821F96F8]();
}

- (void)_removeRomanization
{
  romanization = self->_romanization;
  self->_romanization = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_insertPrefix:(id)prefix
{
  v20 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if ([(NSString *)self->_text length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", prefixCopy, self->_text];
    text = self->_text;
    self->_text = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_links;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) _insertPrefix:prefixCopy];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ([(NSString *)self->_romanization length])
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", prefixCopy, self->_romanization, v15];
      romanization = self->_romanization;
      self->_romanization = v12;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_links forKey:@"links"];
  [coderCopy encodeObject:self->_romanization forKey:@"romanization"];
}

- (_LTDisambiguationNode)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _LTDisambiguationNode;
  v5 = [(_LTDisambiguationNode *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"links"];
    links = v5->_links;
    v5->_links = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"romanization"];
    romanization = v5->_romanization;
    v5->_romanization = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_links, 1}")];
  v6 = [objc_opt_class() allocWithZone:zone];
  v7 = [(NSString *)self->_text copy];
  v8 = [(NSString *)self->_romanization copy];
  v9 = [v6 initWithText:v7 links:v5 romanization:v8];

  return v9;
}

@end