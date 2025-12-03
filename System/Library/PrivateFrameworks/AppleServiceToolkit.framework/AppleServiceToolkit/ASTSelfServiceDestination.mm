@interface ASTSelfServiceDestination
- (ASTSelfServiceDestination)initWithEndpoint:(int64_t)endpoint suites:(id)suites;
- (BOOL)isEqual:(id)equal;
@end

@implementation ASTSelfServiceDestination

- (ASTSelfServiceDestination)initWithEndpoint:(int64_t)endpoint suites:(id)suites
{
  suitesCopy = suites;
  v10.receiver = self;
  v10.super_class = ASTSelfServiceDestination;
  v7 = [(ASTSelfServiceDestination *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASTSelfServiceDestination *)v7 setEndpoint:endpoint];
    [(ASTSelfServiceDestination *)v8 setSuites:suitesCopy];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endpoint = [(ASTSelfServiceDestination *)self endpoint];
    v6 = endpoint == [equalCopy endpoint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end