@interface BSStackFrameInfo
- (id)description;
@end

@implementation BSStackFrameInfo

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  executableName = [(BSStackFrameInfo *)self executableName];
  v5 = [v3 appendObject:executableName withName:0];

  v6 = [v3 appendObject:self->_className withName:@"class"];
  v7 = [v3 appendObject:self->_functionName withName:@"function"];
  build = [v3 build];

  return build;
}

@end