@interface ASTSelfServiceDestination
- (ASTSelfServiceDestination)initWithEndpoint:(int64_t)a3 suites:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation ASTSelfServiceDestination

- (ASTSelfServiceDestination)initWithEndpoint:(int64_t)a3 suites:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ASTSelfServiceDestination;
  v7 = [(ASTSelfServiceDestination *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASTSelfServiceDestination *)v7 setEndpoint:a3];
    [(ASTSelfServiceDestination *)v8 setSuites:v6];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ASTSelfServiceDestination *)self endpoint];
    v6 = v5 == [v4 endpoint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end