@interface ATXWidgetEntityFeatures
- (ATXWidgetEntityFeatures)init;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
@end

@implementation ATXWidgetEntityFeatures

- (ATXWidgetEntityFeatures)init
{
  v8.receiver = self;
  v8.super_class = ATXWidgetEntityFeatures;
  v2 = [(ATXWidgetEntityFeatures *)&v8 init];
  v3 = v2;
  if (v2)
  {
    parentAppScore = v2->_parentAppScore;
    v2->_parentAppScore = &unk_283A56A20;

    parentAppGlobalPrior = v3->_parentAppGlobalPrior;
    v3->_parentAppGlobalPrior = &unk_283A56A20;

    widgetGlobalPrior = v3->_widgetGlobalPrior;
    v3->_widgetGlobalPrior = &unk_283A56A20;
  }

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v13.receiver = self;
  v13.super_class = ATXWidgetEntityFeatures;
  v5 = [(ATXWidgetEntityFeatures *)&v13 init];
  if (v5)
  {
    v6 = [nCopy objectForKeyedSubscript:@"parentAppScore"];
    parentAppScore = v5->_parentAppScore;
    v5->_parentAppScore = v6;

    v8 = [nCopy objectForKeyedSubscript:@"parentAppGlobalPrior"];
    parentAppGlobalPrior = v5->_parentAppGlobalPrior;
    v5->_parentAppGlobalPrior = v8;

    v10 = [nCopy objectForKeyedSubscript:@"widgetGlobalPrior"];
    widgetGlobalPrior = v5->_widgetGlobalPrior;
    v5->_widgetGlobalPrior = v10;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *&self->_parentAppScore;
  v6[0] = @"parentAppScore";
  v6[1] = @"parentAppGlobalPrior";
  v7 = v2;
  v6[2] = @"widgetGlobalPrior";
  widgetGlobalPrior = self->_widgetGlobalPrior;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end