@interface LPCSSVariable
- (LPCSSVariable)initWithName:(id)name;
- (id)variableByResolvingWithThemePath:(id)path;
@end

@implementation LPCSSVariable

- (LPCSSVariable)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = LPCSSVariable;
  v6 = [(LPCSSVariable *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = v7;
  }

  return v7;
}

- (id)variableByResolvingWithThemePath:(id)path
{
  v3 = [(NSString *)self->_name stringByReplacingOccurrencesOfString:@"<theme-path>" withString:path];
  v4 = [[LPCSSVariable alloc] initWithName:v3];

  return v4;
}

@end