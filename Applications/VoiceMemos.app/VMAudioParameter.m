@interface VMAudioParameter
+ (id)parameterWithName:(id)a3 defaultValue:(float)a4 min:(float)a5 max:(float)a6 internalAddress:(int)a7 graphName:(id)a8;
- (VMAudioParameter)initWithName:(id)a3 defaultValue:(float)a4 min:(float)a5 max:(float)a6 internalAddress:(int)a7 graphName:(id)a8;
- (float)currentValue;
@end

@implementation VMAudioParameter

- (VMAudioParameter)initWithName:(id)a3 defaultValue:(float)a4 min:(float)a5 max:(float)a6 internalAddress:(int)a7 graphName:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = VMAudioParameter;
  v17 = [(VMAudioParameter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, a3);
    v18->_defaultValue = a4;
    v18->_min = a5;
    v18->_max = a6;
    v18->_internalAddress = a7;
    objc_storeStrong(&v18->_graphName, a8);
  }

  return v18;
}

+ (id)parameterWithName:(id)a3 defaultValue:(float)a4 min:(float)a5 max:(float)a6 internalAddress:(int)a7 graphName:(id)a8
{
  v8 = *&a7;
  v13 = a8;
  v14 = a3;
  v15 = [VMAudioParameter alloc];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  v19 = [(VMAudioParameter *)v15 initWithName:v14 defaultValue:v8 min:v13 max:v16 internalAddress:v17 graphName:v18];

  return v19;
}

- (float)currentValue
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(VMAudioParameter *)self name];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    [v5 floatValue];
  }

  else
  {
    [(VMAudioParameter *)self defaultValue];
  }

  v7 = v6;

  return v7;
}

@end