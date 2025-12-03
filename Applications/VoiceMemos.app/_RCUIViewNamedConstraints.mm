@interface _RCUIViewNamedConstraints
- (_RCUIViewNamedConstraints)initWithName:(id)name constraints:(id)constraints stalenessToken:(id)token;
@end

@implementation _RCUIViewNamedConstraints

- (_RCUIViewNamedConstraints)initWithName:(id)name constraints:(id)constraints stalenessToken:(id)token
{
  nameCopy = name;
  constraintsCopy = constraints;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = _RCUIViewNamedConstraints;
  v12 = [(_RCUIViewNamedConstraints *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_constraints, constraints);
    if (tokenCopy)
    {
      v14 = tokenCopy;
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