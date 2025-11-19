@interface CLKFont
+ (id)fontWithDescriptor:(id)a3 size:(double)a4;
+ (id)fontWithName:(id)a3 size:(double)a4;
+ (id)nonAccessibleCompactSoftFontOfSize:(double)a3 weight:(double)a4;
+ (id)nonAccessibleSystemFontOfSize:(double)a3 weight:(double)a4;
+ (id)systemFontOfSize:(double)a3 weight:(double)a4;
+ (id)systemFontOfSize:(double)a3 weight:(double)a4 design:(id)a5;
- (CLKFont)fontWithSize:(double)a3;
@end

@implementation CLKFont

+ (id)systemFontOfSize:(double)a3 weight:(double)a4
{
  v4 = *MEMORY[0x277D743C0];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CLKFont;
  v5 = objc_msgSendSuper2(&v7, sel_systemFontOfSize_weight_design_, v4, a3, a4);

  return v5;
}

+ (id)systemFontOfSize:(double)a3 weight:(double)a4 design:(id)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CLKFont;
  v5 = objc_msgSendSuper2(&v7, sel_systemFontOfSize_weight_design_, a5, a3, a4);

  return v5;
}

+ (id)fontWithDescriptor:(id)a3 size:(double)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CLKFont;
  v4 = objc_msgSendSuper2(&v6, sel_fontWithDescriptor_size_, a3, a4);

  return v4;
}

+ (id)fontWithName:(id)a3 size:(double)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CLKFont;
  v4 = objc_msgSendSuper2(&v6, sel_fontWithName_size_, a3, a4);

  return v4;
}

+ (id)nonAccessibleSystemFontOfSize:(double)a3 weight:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [a1 systemFontOfSize:a3 weight:a4];
  v7 = [v6 fontDescriptor];
  v13 = *MEMORY[0x277CC48F8];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 fontDescriptorByAddingAttributes:v8];

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CLKFont;
  v10 = objc_msgSendSuper2(&v12, sel_fontWithDescriptor_size_, v9, a3);

  return v10;
}

+ (id)nonAccessibleCompactSoftFontOfSize:(double)a3 weight:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [a1 compactSoftFontOfSize:a3 weight:a4];
  v7 = [v6 fontDescriptor];
  v13 = *MEMORY[0x277CC48F8];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 fontDescriptorByAddingAttributes:v8];

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CLKFont;
  v10 = objc_msgSendSuper2(&v12, sel_fontWithDescriptor_size_, v9, a3);

  return v10;
}

- (CLKFont)fontWithSize:(double)a3
{
  v5.receiver = self;
  v5.super_class = CLKFont;
  v3 = [(CLKFont *)&v5 fontWithSize:a3];

  return v3;
}

@end