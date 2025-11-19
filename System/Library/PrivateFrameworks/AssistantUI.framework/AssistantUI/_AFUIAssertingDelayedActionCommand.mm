@interface _AFUIAssertingDelayedActionCommand
- (_AFUIAssertingDelayedActionCommand)initWithCommand:(id)a3 assertion:(id)a4;
@end

@implementation _AFUIAssertingDelayedActionCommand

- (_AFUIAssertingDelayedActionCommand)initWithCommand:(id)a3 assertion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _AFUIAssertingDelayedActionCommand;
  v9 = [(_AFUIAssertingDelayedActionCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, a3);
    objc_storeStrong(&v10->_assertion, a4);
  }

  return v10;
}

@end