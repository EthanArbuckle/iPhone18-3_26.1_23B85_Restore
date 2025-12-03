@interface AMDCommandLineOption
- (AMDCommandLineOption)initWithName:(id)name withDefaultValue:(id)value withHelpText:(id)text withShortName:(id)shortName andIsBoolFlag:(BOOL)flag;
@end

@implementation AMDCommandLineOption

- (AMDCommandLineOption)initWithName:(id)name withDefaultValue:(id)value withHelpText:(id)text withShortName:(id)shortName andIsBoolFlag:(BOOL)flag
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v18 = 0;
  objc_storeStrong(&v18, value);
  v17 = 0;
  objc_storeStrong(&v17, text);
  v16 = 0;
  objc_storeStrong(&v16, shortName);
  flagCopy = flag;
  v7 = selfCopy;
  selfCopy = 0;
  v14.receiver = v7;
  v14.super_class = AMDCommandLineOption;
  selfCopy = [(AMDCommandLineOption *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDCommandLineOption *)selfCopy setName:location[0]];
  [(AMDCommandLineOption *)selfCopy setDefaultValue:v18];
  [(AMDCommandLineOption *)selfCopy setHelpText:v17];
  [(AMDCommandLineOption *)selfCopy setIsBool:flagCopy];
  [(AMDCommandLineOption *)selfCopy setShortName:v16];
  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

@end