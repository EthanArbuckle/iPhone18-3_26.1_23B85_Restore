@interface StocksSyncStock
- (BOOL)shouldUseCompanyNameAsListName;
- (NSDictionary)dictionaryRepresentation;
- (NSString)listName;
- (StocksSyncStock)initWithSymbol:(id)symbol companyName:(id)name listName:(id)listName compactListName:(id)compactListName type:(id)type;
@end

@implementation StocksSyncStock

- (StocksSyncStock)initWithSymbol:(id)symbol companyName:(id)name listName:(id)listName compactListName:(id)compactListName type:(id)type
{
  symbolCopy = symbol;
  nameCopy = name;
  listNameCopy = listName;
  compactListNameCopy = compactListName;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = StocksSyncStock;
  v17 = [(StocksSyncStock *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_symbol, symbol);
    objc_storeStrong(&v18->_companyName, name);
    objc_storeStrong(&v18->_listName, listName);
    objc_storeStrong(&v18->_compactListName, compactListName);
    objc_storeStrong(&v18->_type, type);
  }

  return v18;
}

- (BOOL)shouldUseCompanyNameAsListName
{
  naui_containsCJKScripts = [(NSString *)self->_companyName naui_containsCJKScripts];
  LODWORD(v4) = [(StocksSyncStock *)self isIndex];
  if ((naui_containsCJKScripts & 1) != 0 || v4)
  {
    v4 = [(NSString *)self->_companyName length];
    if (v4)
    {
      LOBYTE(v4) = [(NSString *)self->_companyName length]< 8;
    }
  }

  return v4;
}

- (NSString)listName
{
  shouldUseCompanyNameAsListName = [(StocksSyncStock *)self shouldUseCompanyNameAsListName];
  v4 = self->_companyName;
  if ((shouldUseCompanyNameAsListName & 1) == 0)
  {
    if ([(NSString *)self->_listName length])
    {
      v5 = [(NSString *)self->_listName length];
      if (v5 < [(NSString *)v4 length])
      {
        v6 = self->_listName;

        v4 = v6;
      }
    }

    if ([(NSString *)self->_compactListName length])
    {
      v7 = [(NSString *)self->_compactListName length];
      if (v7 < [(NSString *)v4 length])
      {
        v8 = self->_compactListName;

        v4 = v8;
      }
    }

    v9 = [(NSString *)v4 length];
    symbol = v4;
    if (!v9)
    {
      symbol = self->_symbol;
    }

    v11 = symbol;

    v4 = v11;
  }

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  symbol = self->_symbol;
  v4 = +[StocksSyncPreferenceKeys symbol];
  type = self->_type;
  v6 = +[StocksSyncPreferenceKeys type];
  v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:symbol, v4, type, v6, 0];

  listName = self->_listName;
  if (listName)
  {
    v9 = +[StocksSyncPreferenceKeys listName];
    [v7 setObject:listName forKeyedSubscript:v9];
  }

  compactListName = self->_compactListName;
  if (compactListName)
  {
    v11 = +[StocksSyncPreferenceKeys compactListName];
    [v7 setObject:compactListName forKeyedSubscript:v11];
  }

  companyName = self->_companyName;
  if (companyName)
  {
    v13 = +[StocksSyncPreferenceKeys companyName];
    [v7 setObject:companyName forKeyedSubscript:v13];
  }

  v14 = [v7 copy];

  return v14;
}

@end