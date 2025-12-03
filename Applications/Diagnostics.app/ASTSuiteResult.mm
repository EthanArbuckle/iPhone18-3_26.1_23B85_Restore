@interface ASTSuiteResult
- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResult)initWithName:(id)name components:(id)components;
@end

@implementation ASTSuiteResult

- (ASTSuiteResult)initWithName:(id)name components:(id)components
{
  v5.receiver = self;
  v5.super_class = ASTSuiteResult;
  return [(ASTSuiteResult *)&v5 init:name];
}

- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error
{
  v5.receiver = self;
  v5.super_class = ASTSuiteResult;
  return [(ASTSuiteResult *)&v5 init:dictionary];
}

@end