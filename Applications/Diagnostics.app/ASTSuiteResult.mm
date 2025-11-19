@interface ASTSuiteResult
- (ASTSuiteResult)initWithDictionary:(id)a3 error:(id *)a4;
- (ASTSuiteResult)initWithName:(id)a3 components:(id)a4;
@end

@implementation ASTSuiteResult

- (ASTSuiteResult)initWithName:(id)a3 components:(id)a4
{
  v5.receiver = self;
  v5.super_class = ASTSuiteResult;
  return [(ASTSuiteResult *)&v5 init:a3];
}

- (ASTSuiteResult)initWithDictionary:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = ASTSuiteResult;
  return [(ASTSuiteResult *)&v5 init:a3];
}

@end