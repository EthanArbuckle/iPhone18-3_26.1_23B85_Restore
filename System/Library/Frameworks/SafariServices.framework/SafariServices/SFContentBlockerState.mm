@interface SFContentBlockerState
- (SFContentBlockerState)initWithCoder:(id)a3;
- (SFContentBlockerState)initWithEnabledState:(BOOL)a3;
@end

@implementation SFContentBlockerState

- (SFContentBlockerState)initWithEnabledState:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SFContentBlockerState;
  v4 = [(SFContentBlockerState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (SFContentBlockerState)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"enabled"];

  return [(SFContentBlockerState *)self initWithEnabledState:v4];
}

@end