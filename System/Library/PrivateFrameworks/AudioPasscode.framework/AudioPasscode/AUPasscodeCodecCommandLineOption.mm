@interface AUPasscodeCodecCommandLineOption
+ (id)optionWithSyntax:(id)a3 description:(id)a4;
- (AUPasscodeCodecCommandLineOption)initWithSyntax:(id)a3 description:(id)a4;
@end

@implementation AUPasscodeCodecCommandLineOption

+ (id)optionWithSyntax:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AUPasscodeCodecCommandLineOption alloc] initWithSyntax:v6 description:v5];

  return v7;
}

- (AUPasscodeCodecCommandLineOption)initWithSyntax:(id)a3 description:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AUPasscodeCodecCommandLineOption;
  v9 = [(AUPasscodeCodecCommandLineOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_optionSyntax, a3);
    objc_storeStrong(&v10->_optionDescription, a4);
  }

  return v10;
}

@end