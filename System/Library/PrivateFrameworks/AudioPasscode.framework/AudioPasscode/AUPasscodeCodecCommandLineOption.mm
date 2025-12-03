@interface AUPasscodeCodecCommandLineOption
+ (id)optionWithSyntax:(id)syntax description:(id)description;
- (AUPasscodeCodecCommandLineOption)initWithSyntax:(id)syntax description:(id)description;
@end

@implementation AUPasscodeCodecCommandLineOption

+ (id)optionWithSyntax:(id)syntax description:(id)description
{
  descriptionCopy = description;
  syntaxCopy = syntax;
  v7 = [[AUPasscodeCodecCommandLineOption alloc] initWithSyntax:syntaxCopy description:descriptionCopy];

  return v7;
}

- (AUPasscodeCodecCommandLineOption)initWithSyntax:(id)syntax description:(id)description
{
  syntaxCopy = syntax;
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = AUPasscodeCodecCommandLineOption;
  v9 = [(AUPasscodeCodecCommandLineOption *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_optionSyntax, syntax);
    objc_storeStrong(&v10->_optionDescription, description);
  }

  return v10;
}

@end