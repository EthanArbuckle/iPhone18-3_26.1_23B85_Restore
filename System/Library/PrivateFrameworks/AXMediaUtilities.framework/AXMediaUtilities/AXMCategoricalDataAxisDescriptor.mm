@interface AXMCategoricalDataAxisDescriptor
- (AXMCategoricalDataAxisDescriptor)initWithAttributedTitle:(id)title categoryOrder:(id)order;
- (AXMCategoricalDataAxisDescriptor)initWithDictionary:(id)dictionary;
- (AXMCategoricalDataAxisDescriptor)initWithTitle:(id)title categoryOrder:(id)order;
- (NSString)description;
- (NSString)title;
- (double)normalizedAxisValueForValue:(id)value;
- (double)upperBound;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)setTitle:(id)title;
@end

@implementation AXMCategoricalDataAxisDescriptor

- (AXMCategoricalDataAxisDescriptor)initWithTitle:(id)title categoryOrder:(id)order
{
  titleCopy = title;
  orderCopy = order;
  v11.receiver = self;
  v11.super_class = AXMCategoricalDataAxisDescriptor;
  v8 = [(AXMCategoricalDataAxisDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXMCategoricalDataAxisDescriptor *)v8 setTitle:titleCopy];
    objc_storeStrong(&v9->_categoryOrder, order);
  }

  return v9;
}

- (AXMCategoricalDataAxisDescriptor)initWithAttributedTitle:(id)title categoryOrder:(id)order
{
  titleCopy = title;
  orderCopy = order;
  v12.receiver = self;
  v12.super_class = AXMCategoricalDataAxisDescriptor;
  v9 = [(AXMCategoricalDataAxisDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributedTitle, title);
    objc_storeStrong(&v10->_categoryOrder, order);
  }

  return v10;
}

- (AXMCategoricalDataAxisDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
    v6 = [v7 initWithString:v8];
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartCategoryAxisCategoriesKey"];
  v10 = [(AXMCategoricalDataAxisDescriptor *)self initWithAttributedTitle:v6 categoryOrder:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  title = [(AXMCategoricalDataAxisDescriptor *)self title];
  categoryOrder = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v4 initWithTitle:title categoryOrder:categoryOrder];

  attributedTitle = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
  v9 = [attributedTitle length];

  if (v9)
  {
    attributedTitle2 = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
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
  attributedTitle = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (double)upperBound
{
  categoryOrder = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v3 = [categoryOrder count];

  return v3;
}

- (double)normalizedAxisValueForValue:(id)value
{
  valueCopy = value;
  categoryOrder = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v6 = [categoryOrder indexOfObject:valueCopy];

  v7 = 0.0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    categoryOrder2 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
    v7 = v6 / [categoryOrder2 count];
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [(AXMCategoricalDataAxisDescriptor *)self title];
  [dictionary setObject:title forKeyedSubscript:@"kAXMChartAxisTitleKey"];

  categoryOrder = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  [dictionary setObject:categoryOrder forKeyedSubscript:@"kAXMChartCategoryAxisCategoriesKey"];

  [dictionary setObject:@"categorical" forKeyedSubscript:@"kAXMChartAxisType"];

  return dictionary;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(AXMCategoricalDataAxisDescriptor *)self title];
  categoryOrder = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v3 stringWithFormat:@"<%@ %p title=%@ order=%@>", v4, self, title, categoryOrder];

  return v7;
}

@end