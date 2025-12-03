@interface VMAudioParameter
+ (id)parameterWithName:(id)name defaultValue:(float)value min:(float)min max:(float)max internalAddress:(int)address graphName:(id)graphName;
- (VMAudioParameter)initWithName:(id)name defaultValue:(float)value min:(float)min max:(float)max internalAddress:(int)address graphName:(id)graphName;
- (float)currentValue;
@end

@implementation VMAudioParameter

- (VMAudioParameter)initWithName:(id)name defaultValue:(float)value min:(float)min max:(float)max internalAddress:(int)address graphName:(id)graphName
{
  nameCopy = name;
  graphNameCopy = graphName;
  v20.receiver = self;
  v20.super_class = VMAudioParameter;
  v17 = [(VMAudioParameter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    v18->_defaultValue = value;
    v18->_min = min;
    v18->_max = max;
    v18->_internalAddress = address;
    objc_storeStrong(&v18->_graphName, graphName);
  }

  return v18;
}

+ (id)parameterWithName:(id)name defaultValue:(float)value min:(float)min max:(float)max internalAddress:(int)address graphName:(id)graphName
{
  v8 = *&address;
  graphNameCopy = graphName;
  nameCopy = name;
  v15 = [VMAudioParameter alloc];
  *&v16 = value;
  *&v17 = min;
  *&v18 = max;
  v19 = [(VMAudioParameter *)v15 initWithName:nameCopy defaultValue:v8 min:graphNameCopy max:v16 internalAddress:v17 graphName:v18];

  return v19;
}

- (float)currentValue
{
  v3 = +[NSUserDefaults standardUserDefaults];
  name = [(VMAudioParameter *)self name];
  v5 = [v3 objectForKey:name];

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