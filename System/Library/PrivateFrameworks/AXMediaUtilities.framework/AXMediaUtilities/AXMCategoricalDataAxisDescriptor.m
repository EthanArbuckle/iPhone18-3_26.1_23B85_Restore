@interface AXMCategoricalDataAxisDescriptor
- (AXMCategoricalDataAxisDescriptor)initWithAttributedTitle:(id)a3 categoryOrder:(id)a4;
- (AXMCategoricalDataAxisDescriptor)initWithDictionary:(id)a3;
- (AXMCategoricalDataAxisDescriptor)initWithTitle:(id)a3 categoryOrder:(id)a4;
- (NSString)description;
- (NSString)title;
- (double)normalizedAxisValueForValue:(id)a3;
- (double)upperBound;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)setTitle:(id)a3;
@end

@implementation AXMCategoricalDataAxisDescriptor

- (AXMCategoricalDataAxisDescriptor)initWithTitle:(id)a3 categoryOrder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXMCategoricalDataAxisDescriptor;
  v8 = [(AXMCategoricalDataAxisDescriptor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXMCategoricalDataAxisDescriptor *)v8 setTitle:v6];
    objc_storeStrong(&v9->_categoryOrder, a4);
  }

  return v9;
}

- (AXMCategoricalDataAxisDescriptor)initWithAttributedTitle:(id)a3 categoryOrder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AXMCategoricalDataAxisDescriptor;
  v9 = [(AXMCategoricalDataAxisDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributedTitle, a3);
    objc_storeStrong(&v10->_categoryOrder, a4);
  }

  return v10;
}

- (AXMCategoricalDataAxisDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [v4 objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
    v6 = [v7 initWithString:v8];
  }

  v9 = [v4 objectForKeyedSubscript:@"kAXMChartCategoryAxisCategoriesKey"];
  v10 = [(AXMCategoricalDataAxisDescriptor *)self initWithAttributedTitle:v6 categoryOrder:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AXMCategoricalDataAxisDescriptor *)self title];
  v6 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v4 initWithTitle:v5 categoryOrder:v6];

  v8 = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
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
  v2 = [(AXMCategoricalDataAxisDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (double)upperBound
{
  v2 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v3 = [v2 count];

  return v3;
}

- (double)normalizedAxisValueForValue:(id)a3
{
  v4 = a3;
  v5 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v6 = [v5 indexOfObject:v4];

  v7 = 0.0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
    v7 = v6 / [v8 count];
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXMCategoricalDataAxisDescriptor *)self title];
  [v3 setObject:v4 forKeyedSubscript:@"kAXMChartAxisTitleKey"];

  v5 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  [v3 setObject:v5 forKeyedSubscript:@"kAXMChartCategoryAxisCategoriesKey"];

  [v3 setObject:@"categorical" forKeyedSubscript:@"kAXMChartAxisType"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMCategoricalDataAxisDescriptor *)self title];
  v6 = [(AXMCategoricalDataAxisDescriptor *)self categoryOrder];
  v7 = [v3 stringWithFormat:@"<%@ %p title=%@ order=%@>", v4, self, v5, v6];

  return v7;
}

@end