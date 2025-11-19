@interface VSJSObject
- (VSJSObject)init;
- (VSJSObject)initWithContext:(id)a3;
@end

@implementation VSJSObject

- (VSJSObject)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VSJSObject;
  v6 = [(VSJSObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (VSJSObject)init
{
  v3 = +[VSJSApp currentContext];
  VSAssertWithMessage(v3 != 0, @"Initializing VSJSObject on a non-JS thread.");
  v4 = [(VSJSObject *)self initWithContext:v3];

  return v4;
}

@end