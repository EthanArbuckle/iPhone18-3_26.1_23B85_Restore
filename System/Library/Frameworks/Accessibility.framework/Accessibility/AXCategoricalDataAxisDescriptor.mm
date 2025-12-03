@interface AXCategoricalDataAxisDescriptor
- (AXCategoricalDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle categoryOrder:(NSArray *)categoryOrder;
- (AXCategoricalDataAxisDescriptor)initWithDictionary:(id)dictionary;
- (AXCategoricalDataAxisDescriptor)initWithTitle:(NSString *)title categoryOrder:(NSArray *)categoryOrder;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)setTitle:(id)title;
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

- (AXCategoricalDataAxisDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = getkAXMChartAxisTitleKey();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = getkAXMChartAxisTitleKey();
    v8 = [dictionaryCopy objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = getkAXMChartAxisTitleKey();
    v10 = [dictionaryCopy objectForKeyedSubscript:v7];
    v8 = [v9 initWithString:v10];
  }

  v11 = getkAXMChartCategoryAxisCategoriesKey();
  v12 = [dictionaryCopy objectForKeyedSubscript:v11];
  v13 = [(AXCategoricalDataAxisDescriptor *)self initWithAttributedTitle:v8 categoryOrder:v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  title = [(AXCategoricalDataAxisDescriptor *)self title];
  categoryOrder = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v4 initWithTitle:title categoryOrder:categoryOrder];

  attributedTitle = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  v9 = [attributedTitle length];

  if (v9)
  {
    attributedTitle2 = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
    v11 = [attributedTitle2 copy];
    [v7 setAttributedTitle:v11];
  }

  return v7;
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x1E696AAB0];
  titleCopy = title;
  v6 = [[v4 alloc] initWithString:titleCopy];

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v6;
}

- (NSString)title
{
  attributedTitle = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  attributedTitle = [(AXCategoricalDataAxisDescriptor *)self attributedTitle];
  v5 = getkAXMChartAxisTitleKey();
  [dictionary setObject:attributedTitle forKeyedSubscript:v5];

  categoryOrder = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = getkAXMChartCategoryAxisCategoriesKey();
  [dictionary setObject:categoryOrder forKeyedSubscript:v7];

  v8 = getkAXMChartAxisTypeCategorical();
  v9 = getkAXMChartAxisTypeKey();
  [dictionary setObject:v8 forKeyedSubscript:v9];

  return dictionary;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(AXCategoricalDataAxisDescriptor *)self title];
  categoryOrder = [(AXCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v3 stringWithFormat:@"<%@ %p title=%@ order=%@>", v4, self, title, categoryOrder];

  return v7;
}

@end