@interface CLKFont
+ (id)fontWithDescriptor:(id)descriptor size:(double)size;
+ (id)fontWithName:(id)name size:(double)size;
+ (id)nonAccessibleCompactSoftFontOfSize:(double)size weight:(double)weight;
+ (id)nonAccessibleSystemFontOfSize:(double)size weight:(double)weight;
+ (id)systemFontOfSize:(double)size weight:(double)weight;
+ (id)systemFontOfSize:(double)size weight:(double)weight design:(id)design;
- (CLKFont)fontWithSize:(double)size;
@end

@implementation CLKFont

+ (id)systemFontOfSize:(double)size weight:(double)weight
{
  v4 = *MEMORY[0x277D743C0];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CLKFont;
  v5 = objc_msgSendSuper2(&v7, sel_systemFontOfSize_weight_design_, v4, size, weight);

  return v5;
}

+ (id)systemFontOfSize:(double)size weight:(double)weight design:(id)design
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CLKFont;
  v5 = objc_msgSendSuper2(&v7, sel_systemFontOfSize_weight_design_, design, size, weight);

  return v5;
}

+ (id)fontWithDescriptor:(id)descriptor size:(double)size
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CLKFont;
  v4 = objc_msgSendSuper2(&v6, sel_fontWithDescriptor_size_, descriptor, size);

  return v4;
}

+ (id)fontWithName:(id)name size:(double)size
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CLKFont;
  v4 = objc_msgSendSuper2(&v6, sel_fontWithName_size_, name, size);

  return v4;
}

+ (id)nonAccessibleSystemFontOfSize:(double)size weight:(double)weight
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [self systemFontOfSize:size weight:weight];
  fontDescriptor = [v6 fontDescriptor];
  v13 = *MEMORY[0x277CC48F8];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [fontDescriptor fontDescriptorByAddingAttributes:v8];

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLKFont;
  v10 = objc_msgSendSuper2(&v12, sel_fontWithDescriptor_size_, v9, size);

  return v10;
}

+ (id)nonAccessibleCompactSoftFontOfSize:(double)size weight:(double)weight
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [self compactSoftFontOfSize:size weight:weight];
  fontDescriptor = [v6 fontDescriptor];
  v13 = *MEMORY[0x277CC48F8];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [fontDescriptor fontDescriptorByAddingAttributes:v8];

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLKFont;
  v10 = objc_msgSendSuper2(&v12, sel_fontWithDescriptor_size_, v9, size);

  return v10;
}

- (CLKFont)fontWithSize:(double)size
{
  v5.receiver = self;
  v5.super_class = CLKFont;
  v3 = [(CLKFont *)&v5 fontWithSize:size];

  return v3;
}

@end