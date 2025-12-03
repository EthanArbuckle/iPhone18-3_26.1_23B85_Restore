@interface NTKSnowglobeColorPalette
- (id)_backlightColor;
- (id)backgroundObjectColors;
@end

@implementation NTKSnowglobeColorPalette

- (id)_backlightColor
{
  v5 = 0.0;
  background = [(NTKSnowglobeColorPalette *)self background];
  [background getHue:&v5 saturation:0 brightness:0 alpha:0];

  v3 = [MEMORY[0x277D75348] colorWithHue:v5 saturation:0.2 brightness:0.9 alpha:1.0];

  return v3;
}

- (id)backgroundObjectColors
{
  if (qword_27E1EDE40 != -1)
  {
    sub_23C08EF44();
  }

  v3 = MEMORY[0x277D2C0C0];
  v4 = qword_27E1EDE38;
  sharedInstance = [v3 sharedInstance];
  v6 = +[NTKSnowglobeFace pigmentFaceDomain];
  v7 = [sharedInstance colorOptionsForDomain:v6 bundle:v4 slot:0];

  background = [(NTKSnowglobeColorPalette *)self background];
  v9 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23C08E138;
  v14[3] = &unk_278BACBD0;
  v14[4] = self;
  v15 = background;
  v16 = v9;
  v10 = v9;
  v11 = background;
  [v7 enumerateObjectsUsingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

@end