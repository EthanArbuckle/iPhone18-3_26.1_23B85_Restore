@interface BSStackFrameInfo
- (id)description;
@end

@implementation BSStackFrameInfo

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BSStackFrameInfo *)self executableName];
  v5 = [v3 appendObject:v4 withName:0];

  v6 = [v3 appendObject:self->_className withName:@"class"];
  v7 = [v3 appendObject:self->_functionName withName:@"function"];
  v8 = [v3 build];

  return v8;
}

@end