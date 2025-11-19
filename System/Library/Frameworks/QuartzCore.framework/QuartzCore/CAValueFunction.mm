@interface CAValueFunction
+ (CAValueFunction)functionWithName:(CAValueFunctionName)name;
+ (void)CAMLParserStartElement:(id)a3;
- (BOOL)apply:(const double *)a3 result:(double *)a4;
- (BOOL)apply:(const double *)a3 result:(double *)a4 parameterFunction:(void *)a5 context:(void *)a6;
- (CAValueFunction)initWithCoder:(id)a3;
- (CAValueFunctionName)name;
- (Object)CA_copyRenderValue;
- (id)_initWithName:(int)a3;
- (unint64_t)inputCount;
- (unint64_t)outputCount;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAValueFunction

- (void)encodeWithCAMLWriter:(id)a3
{
  v4 = [(CAValueFunction *)self name];
  if (v4)
  {

    [a3 setElementAttribute:v4 forKey:@"name"];
  }
}

- (CAValueFunction)initWithCoder:(id)a3
{
  v5 = [a3 containsValueForKey:@"CAValueFunctionName"];

  if (!v5)
  {
    return 0;
  }

  v6 = +[CAValueFunction functionWithName:](CAValueFunction, "functionWithName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"CAValueFunctionName"]);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (!self->_string)
  {
    v5 = [(CAValueFunction *)self name];

    [a3 encodeObject:v5 forKey:@"CAValueFunctionName"];
  }
}

- (Object)CA_copyRenderValue
{
  result = self->_impl;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (BOOL)apply:(const double *)a3 result:(double *)a4 parameterFunction:(void *)a5 context:(void *)a6
{
  v9[2] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v9[0] = a5;
    v9[1] = a6;
    if (a5)
    {
      v7 = param_fun;
    }

    else
    {
      v7 = 0;
    }

    LOBYTE(impl) = (*(*impl + 128))(impl, 1, a3, 0, a4, 0, v7, v9);
  }

  return impl;
}

- (BOOL)apply:(const double *)a3 result:(double *)a4
{
  impl = self->_impl;
  if (impl)
  {
    LOBYTE(impl) = (*(*impl + 128))(impl, 1, a3, 0, a4, 0, 0, 0);
  }

  return impl;
}

- (unint64_t)outputCount
{
  result = self->_impl;
  if (result)
  {
    return (*(*result + 112))(result, a2);
  }

  return result;
}

- (unint64_t)inputCount
{
  result = self->_impl;
  if (result)
  {
    return (*(*result + 104))(result, a2);
  }

  return result;
}

- (CAValueFunctionName)name
{
  if (self->_string)
  {
    return 0;
  }

  v2 = (*(*self->_impl + 120))(self->_impl, a2);
  if (v2 > 0xC)
  {
    return 0;
  }

  else
  {
    return &off_1E6DECAF0[v2]->isa;
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl && atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
  {
    (*(*impl + 16))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CAValueFunction;
  [(CAValueFunction *)&v4 dealloc];
}

- (id)_initWithName:(int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CAValueFunction;
  v4 = [(CAValueFunction *)&v7 init];
  if (v4)
  {
    v5 = CA::Render::NamedFunction::new_function(a3);
    v4->_impl = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

+ (void)CAMLParserStartElement:(id)a3
{
  v5 = [a3 attributeForKey:@"name" remove:1];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 functionWithName:v5];
    if (v7)
    {

      [a3 setElementValue:v7];
    }

    else
    {
      [a3 parserError:{@"Unknown function: %@", v6}];
    }
  }
}

+ (CAValueFunction)functionWithName:(CAValueFunctionName)name
{
  keys[13] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v4 = +[CAValueFunction functionWithName:]::dict;
  if (!+[CAValueFunction functionWithName:]::dict)
  {
    keys[0] = @"rotateX";
    keys[1] = @"rotateY";
    values[0] = 0;
    values[1] = 1;
    keys[2] = @"rotateZ";
    keys[3] = @"scale";
    values[2] = 2;
    values[3] = 3;
    keys[4] = @"scaleX";
    keys[5] = @"scaleY";
    values[4] = 4;
    values[5] = 5;
    keys[6] = @"scaleZ";
    keys[7] = @"scaleXY";
    values[6] = 6;
    values[7] = 7;
    keys[8] = @"scaleXYZ";
    keys[9] = @"translate";
    values[8] = 8;
    values[9] = 9;
    keys[10] = @"translateX";
    keys[11] = @"translateY";
    values[10] = 10;
    values[11] = 11;
    keys[12] = @"translateZ";
    values[12] = 12;
    v4 = CFDictionaryCreate(0, keys, values, 13, MEMORY[0x1E695E9D8], 0);
    +[CAValueFunction functionWithName:]::dict = v4;
  }

  if (!CFDictionaryGetValueIfPresent(v4, name, &v7))
  {
    return 0;
  }

  v5 = v7;
  result = function_objects[v7];
  if (!result)
  {
    result = [[CAValueFunction alloc] _initWithName:v7];
    function_objects[v5] = result;
  }

  return result;
}

@end