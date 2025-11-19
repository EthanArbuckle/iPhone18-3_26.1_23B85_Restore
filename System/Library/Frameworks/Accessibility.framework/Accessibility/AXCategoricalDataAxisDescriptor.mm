@interface AXCategoricalDataAxisDescriptor
- (AXCategoricalDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle categoryOrder:(NSArray *)categoryOrder;
- (AXCategoricalDataAxisDescriptor)initWithDictionary:(id)a3;
- (AXCategoricalDataAxisDescriptor)initWithTitle:(NSString *)title categoryOrder:(NSArray *)categoryOrder;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)setTitle:(id)a3;
@end

@implementation AXCategoricalDataAxisDescriptor

- (AXCategoricalDataAxisDescriptor)initWithTitle:(NSString *)title categoryOrder:(NSArray *)categoryOrder
{
  v6 = title;
  v7 = categoryOrder;
  v12.receiver = self;
  v12.super_class = AXCategoricalDataAxisDescriptor;
  v8 = [(AXCategoricalDataAxisDescriptor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = &stru_1F29D6BC8;
    }

    [(AXCategoricalDataAxisDescriptor *)v8 setTitle:v10];
    objc_storeStrong(&v9->_categoryOrder, categoryOrder);
  }

  return v9;
}

- (AXCategoricalDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle categoryOrder:(NSArray *)categoryOrder
{
  v6 = attributedTitle;
  v7 = categoryOrder;
  v12.receiver = self;
  v12.super_class = AXCategoricalDataAxisDescriptor;
  v8 = [(AXCategoricalDataAxisDescriptor *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F29D6BC8];
    }

    v10 = v8->_attributedTitle;
    v8->_attributedTitle = v9;

    objc_storeStrong(&v8->_categoryOrder, categoryOrder);
  }

  return v8;
}

- (AXCategoricalDataAxisDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = getkAXMChartAxisTitleKey();
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = getkAXMChartAxisTitleKey();
    v8 = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = getkAXMChartAxisTitleKey();
    v10 = [v4 objectForKeyedSubscript:v7];
    v8 = [v9 initWithString:v10];
  }

  v11 = getkAXMChartCategoryAxisCategoriesKey();
  v12 = [v4 objectForKeyedSubscript:v11];
  v13 = [(AXCategoricalDataAxisDescriptor *)self initWithAttributedTitle:v8 categoryOrder:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXCategoricalDataAxisDescriptor *)self title];
  v6 = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v4 initWithTitle:v5 categoryOrder:v6];

  v8 = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
    v11 = [v10 copy];
    [v7 setAttributedTitle:v11];
  }

  return v7;
}

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v6;
}

- (NSString)title
{
  v2 = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  v5 = getkAXMChartAxisTitleKey();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = getkAXMChartCategoryAxisCategoriesKey();
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = getkAXMChartAxisTypeCategorical();
  v9 = getkAXMChartAxisTypeKey();
  [v3 setObject:v8 forKeyedSubscript:v9];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXCategoricalDataAxisDescriptor *)self title];
  v6 = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v3 stringWithFormat:@"<%@ %p title=%@ order=%@>", v4, self, v5, v6];

  return v7;
}

@end