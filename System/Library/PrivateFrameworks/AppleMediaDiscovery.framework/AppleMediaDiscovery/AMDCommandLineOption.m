@interface AMDCommandLineOption
- (AMDCommandLineOption)initWithName:(id)a3 withDefaultValue:(id)a4 withHelpText:(id)a5 withShortName:(id)a6 andIsBoolFlag:(BOOL)a7;
@end

@implementation AMDCommandLineOption

- (AMDCommandLineOption)initWithName:(id)a3 withDefaultValue:(id)a4 withHelpText:(id)a5 withShortName:(id)a6 andIsBoolFlag:(BOOL)a7
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = a7;
  v7 = v20;
  v20 = 0;
  v14.receiver = v7;
  v14.super_class = AMDCommandLineOption;
  v20 = [(AMDCommandLineOption *)&v14 init];
  objc_storeStrong(&v20, v20);
  [(AMDCommandLineOption *)v20 setName:location[0]];
  [(AMDCommandLineOption *)v20 setDefaultValue:v18];
  [(AMDCommandLineOption *)v20 setHelpText:v17];
  [(AMDCommandLineOption *)v20 setIsBool:v15];
  [(AMDCommandLineOption *)v20 setShortName:v16];
  v13 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v13;
}

@end