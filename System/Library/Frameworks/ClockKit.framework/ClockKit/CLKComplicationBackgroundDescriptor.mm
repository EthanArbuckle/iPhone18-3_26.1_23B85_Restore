@interface CLKComplicationBackgroundDescriptor
- (CLKComplicationBackgroundDescriptor)initWithBackgroundColor:(id)color;
- (CLKComplicationBackgroundDescriptor)initWithClearBackground;
- (CLKComplicationBackgroundDescriptor)initWithGradientBackgroundColors:(id)colors locations:(id)locations;
- (CLKComplicationBackgroundDescriptor)initWithMaterialBackground;
@end

@implementation CLKComplicationBackgroundDescriptor

- (CLKComplicationBackgroundDescriptor)initWithClearBackground
{
  v7.receiver = self;
  v7.super_class = CLKComplicationBackgroundDescriptor;
  v2 = [(CLKComplicationBackgroundDescriptor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    backgroundColors = v2->_backgroundColors;
    v2->_backgroundColors = 0;

    backgroundLocations = v3->_backgroundLocations;
    v3->_backgroundLocations = 0;

    v3->_style = 1;
  }

  return v3;
}

- (CLKComplicationBackgroundDescriptor)initWithMaterialBackground
{
  v7.receiver = self;
  v7.super_class = CLKComplicationBackgroundDescriptor;
  v2 = [(CLKComplicationBackgroundDescriptor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    backgroundColors = v2->_backgroundColors;
    v2->_backgroundColors = 0;

    backgroundLocations = v3->_backgroundLocations;
    v3->_backgroundLocations = 0;

    v3->_style = 0;
  }

  return v3;
}

- (CLKComplicationBackgroundDescriptor)initWithGradientBackgroundColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  v14.receiver = self;
  v14.super_class = CLKComplicationBackgroundDescriptor;
  v8 = [(CLKComplicationBackgroundDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [colorsCopy copy];
    backgroundColors = v8->_backgroundColors;
    v8->_backgroundColors = v9;

    v11 = [locationsCopy copy];
    backgroundLocations = v8->_backgroundLocations;
    v8->_backgroundLocations = v11;

    v8->_style = 2;
  }

  return v8;
}

- (CLKComplicationBackgroundDescriptor)initWithBackgroundColor:(id)color
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = color;
  v9[1] = color;
  v4 = MEMORY[0x277CBEA60];
  colorCopy = color;
  v6 = [v4 arrayWithObjects:v9 count:2];

  v7 = [(CLKComplicationBackgroundDescriptor *)self initWithGradientBackgroundColors:v6];
  return v7;
}

@end