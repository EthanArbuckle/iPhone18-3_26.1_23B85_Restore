@interface _RCUIViewNamedConstraints
- (_RCUIViewNamedConstraints)initWithName:(id)a3 constraints:(id)a4 stalenessToken:(id)a5;
@end

@implementation _RCUIViewNamedConstraints

- (_RCUIViewNamedConstraints)initWithName:(id)a3 constraints:(id)a4 stalenessToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _RCUIViewNamedConstraints;
  v12 = [(_RCUIViewNamedConstraints *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_constraints, a4);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = +[NSNull null];
    }

    stalenessToken = v13->_stalenessToken;
    v13->_stalenessToken = v14;
  }

  return v13;
}

@end