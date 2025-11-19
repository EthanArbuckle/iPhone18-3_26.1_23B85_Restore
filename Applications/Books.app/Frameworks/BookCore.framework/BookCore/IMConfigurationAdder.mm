@interface IMConfigurationAdder
- (IMConfiguration)configuration;
- (IMConfigurationAdder)initWithConfiguration:(id)a3 predicate:(id)a4;
- (void)addBool:(BOOL)a3 forKey:(id)a4;
- (void)addEdgeInsets:(UIEdgeInsets)a3 forKey:(id)a4;
- (void)addFloat:(double)a3 forKey:(id)a4;
- (void)addInteger:(int64_t)a3 forKey:(id)a4;
- (void)addObject:(id)a3 forKey:(id)a4;
- (void)addPoint:(CGPoint)a3 forKey:(id)a4;
- (void)addRect:(CGRect)a3 forKey:(id)a4;
- (void)addSize:(CGSize)a3 forKey:(id)a4;
- (void)addWithPredicate:(id)a3 adder:(id)a4;
@end

@implementation IMConfigurationAdder

- (IMConfigurationAdder)initWithConfiguration:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IMConfigurationAdder;
  v8 = [(IMConfigurationAdder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_configuration, v6);
    objc_storeStrong(&v9->_predicate, a4);
  }

  return v9;
}

- (void)addObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"For a given adder block, only the adder passed into that block can be used"];
  }

  v7 = [(IMConfigurationAdder *)self configuration];
  v8 = [(IMConfigurationAdder *)self predicate];
  [v7 addValue:v9 predicate:v8 forKey:v6];
}

- (void)addFloat:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithDouble:a3];
  [(IMConfigurationAdder *)self addObject:v7 forKey:v6];
}

- (void)addBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [NSNumber numberWithBool:v4];
  [(IMConfigurationAdder *)self addObject:v7 forKey:v6];
}

- (void)addInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  [(IMConfigurationAdder *)self addObject:v7 forKey:v6];
}

- (void)addPoint:(CGPoint)a3 forKey:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [NSValue valueWithCGPoint:x, y];
  [(IMConfigurationAdder *)self addObject:v8 forKey:v7];
}

- (void)addSize:(CGSize)a3 forKey:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [NSValue valueWithCGSize:width, height];
  [(IMConfigurationAdder *)self addObject:v8 forKey:v7];
}

- (void)addRect:(CGRect)a3 forKey:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [NSValue valueWithCGRect:x, y, width, height];
  [(IMConfigurationAdder *)self addObject:v10 forKey:v9];
}

- (void)addEdgeInsets:(UIEdgeInsets)a3 forKey:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  v10 = [NSValue valueWithUIEdgeInsets:top, left, bottom, right];
  [(IMConfigurationAdder *)self addObject:v10 forKey:v9];
}

- (void)addWithPredicate:(id)a3 adder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"For a given adder block, only the adder passed into that block can be used"];
  }

  v8 = [(IMConfigurationAdder *)self predicate];
  v14[0] = v8;
  v14[1] = v6;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [IMCompoundConfigurationPredicate andPredicateWithSubpredicates:v9];

  v11 = objc_alloc(objc_opt_class());
  v12 = [(IMConfigurationAdder *)self configuration];
  v13 = [v11 initWithConfiguration:v12 predicate:v10];

  [(IMConfigurationAdder *)self setAddProhibited:1];
  [v13 setAddProhibited:0];
  v7[2](v7, v13);
  [v13 setAddProhibited:1];
  [(IMConfigurationAdder *)self setAddProhibited:0];
}

- (IMConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end