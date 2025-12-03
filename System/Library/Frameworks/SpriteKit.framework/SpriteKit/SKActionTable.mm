@interface SKActionTable
+ (id)actionTableWithContentsOfDictionary:(id)dictionary;
- (BOOL)isEqualToActionTable:(id)table;
- (SKActionTable)initWithCoder:(id)coder;
- (SKActionTable)initWithContentsOfDictionary:(id)dictionary;
- (id)actionForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKActionTable

+ (id)actionTableWithContentsOfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[SKActionTable alloc] initWithContentsOfDictionary:dictionaryCopy];

  return v4;
}

- (SKActionTable)initWithContentsOfDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SKActionTable;
  v5 = [(SKActionTable *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionaryCopy];
    actionTableDictionary = v5->_actionTableDictionary;
    v5->_actionTableDictionary = v6;

    info = v5->__info;
    v5->__info = 0;
  }

  return v5;
}

- (SKActionTable)initWithCoder:(id)coder
{
  v15[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SKActionTable;
  v5 = [(SKActionTable *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_actionTableDict"];
    actionTableDictionary = v5->_actionTableDictionary;
    v5->_actionTableDictionary = v9;

    v11 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_info"];
    info = v5->__info;
    v5->__info = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_actionTableDictionary forKey:@"_actionTableDict"];
  [coderCopy encodeObject:self->__info forKey:@"_info"];
}

- (BOOL)isEqualToActionTable:(id)table
{
  v20 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  if (self == tableCopy)
  {
    v13 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_actionTableDictionary;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [(NSDictionary *)self->_actionTableDictionary objectForKey:v9, v15];
          v11 = [(NSDictionary *)tableCopy->_actionTableDictionary objectForKey:v9];
          if (!v11)
          {

LABEL_15:
            v13 = 0;
            goto LABEL_16;
          }

          v12 = [v10 isEqualToAction:v11];

          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v13 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_16:
  }

  return v13;
}

- (id)actionForName:(id)name
{
  v3 = [(NSDictionary *)self->_actionTableDictionary objectForKeyedSubscript:name];

  return v3;
}

@end