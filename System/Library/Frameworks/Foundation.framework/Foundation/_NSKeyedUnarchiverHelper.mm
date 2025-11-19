@interface _NSKeyedUnarchiverHelper
- (BOOL)classNameAllowed:(Class)a3;
- (_NSKeyedUnarchiverHelper)init;
- (id)allowedClassNames;
- (void)dealloc;
- (void)setAllowedClassNames:(id)a3;
@end

@implementation _NSKeyedUnarchiverHelper

- (_NSKeyedUnarchiverHelper)init
{
  self->_allowedClasses = objc_opt_new();
  *&self->expectsUnnestedCollection = 0;
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSKeyedUnarchiverHelper;
  [(_NSKeyedUnarchiverHelper *)&v3 dealloc];
}

- (id)allowedClassNames
{
  v2 = self->_allowed;

  return v2;
}

- (void)setAllowedClassNames:(id)a3
{
  allowed = self->_allowed;
  if (allowed != a3)
  {

    self->_allowed = [a3 copy];
  }
}

- (BOOL)classNameAllowed:(Class)a3
{
  if (!self->_allowed)
  {
    return 1;
  }

  Superclass = a3;
  if (!a3)
  {
    return 0;
  }

  do
  {
    v5 = [(NSArray *)self->_allowed containsObject:NSStringFromClass(Superclass)];
    if (v5)
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass);
  return v5;
}

@end