@interface SFContentBlockerState
- (SFContentBlockerState)initWithCoder:(id)coder;
- (SFContentBlockerState)initWithEnabledState:(BOOL)state;
@end

@implementation SFContentBlockerState

- (SFContentBlockerState)initWithEnabledState:(BOOL)state
{
  v8.receiver = self;
  v8.super_class = SFContentBlockerState;
  v4 = [(SFContentBlockerState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = state;
    v6 = v4;
  }

  return v5;
}

- (SFContentBlockerState)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"enabled"];

  return [(SFContentBlockerState *)self initWithEnabledState:v4];
}

@end