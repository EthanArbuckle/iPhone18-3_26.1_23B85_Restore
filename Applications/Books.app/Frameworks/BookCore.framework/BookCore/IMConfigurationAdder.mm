@interface IMConfigurationAdder
- (IMConfiguration)configuration;
- (IMConfigurationAdder)initWithConfiguration:(id)configuration predicate:(id)predicate;
- (void)addBool:(BOOL)bool forKey:(id)key;
- (void)addEdgeInsets:(UIEdgeInsets)insets forKey:(id)key;
- (void)addFloat:(double)float forKey:(id)key;
- (void)addInteger:(int64_t)integer forKey:(id)key;
- (void)addObject:(id)object forKey:(id)key;
- (void)addPoint:(CGPoint)point forKey:(id)key;
- (void)addRect:(CGRect)rect forKey:(id)key;
- (void)addSize:(CGSize)size forKey:(id)key;
- (void)addWithPredicate:(id)predicate adder:(id)adder;
@end

@implementation IMConfigurationAdder

- (IMConfigurationAdder)initWithConfiguration:(id)configuration predicate:(id)predicate
{
  configurationCopy = configuration;
  predicateCopy = predicate;
  v11.receiver = self;
  v11.super_class = IMConfigurationAdder;
  v8 = [(IMConfigurationAdder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_configuration, configurationCopy);
    objc_storeStrong(&v9->_predicate, predicate);
  }

  return v9;
}

- (void)addObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"For a given adder block, only the adder passed into that block can be used"];
  }

  configuration = [(IMConfigurationAdder *)self configuration];
  predicate = [(IMConfigurationAdder *)self predicate];
  [configuration addValue:objectCopy predicate:predicate forKey:keyCopy];
}

- (void)addFloat:(double)float forKey:(id)key
{
  keyCopy = key;
  v7 = [NSNumber numberWithDouble:float];
  [(IMConfigurationAdder *)self addObject:v7 forKey:keyCopy];
}

- (void)addBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  v7 = [NSNumber numberWithBool:boolCopy];
  [(IMConfigurationAdder *)self addObject:v7 forKey:keyCopy];
}

- (void)addInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v7 = [NSNumber numberWithInteger:integer];
  [(IMConfigurationAdder *)self addObject:v7 forKey:keyCopy];
}

- (void)addPoint:(CGPoint)point forKey:(id)key
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  v8 = [NSValue valueWithCGPoint:x, y];
  [(IMConfigurationAdder *)self addObject:v8 forKey:keyCopy];
}

- (void)addSize:(CGSize)size forKey:(id)key
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  height = [NSValue valueWithCGSize:width, height];
  [(IMConfigurationAdder *)self addObject:height forKey:keyCopy];
}

- (void)addRect:(CGRect)rect forKey:(id)key
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  keyCopy = key;
  height = [NSValue valueWithCGRect:x, y, width, height];
  [(IMConfigurationAdder *)self addObject:height forKey:keyCopy];
}

- (void)addEdgeInsets:(UIEdgeInsets)insets forKey:(id)key
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  keyCopy = key;
  right = [NSValue valueWithUIEdgeInsets:top, left, bottom, right];
  [(IMConfigurationAdder *)self addObject:right forKey:keyCopy];
}

- (void)addWithPredicate:(id)predicate adder:(id)adder
{
  predicateCopy = predicate;
  adderCopy = adder;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"For a given adder block, only the adder passed into that block can be used"];
  }

  predicate = [(IMConfigurationAdder *)self predicate];
  v14[0] = predicate;
  v14[1] = predicateCopy;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [IMCompoundConfigurationPredicate andPredicateWithSubpredicates:v9];

  v11 = objc_alloc(objc_opt_class());
  configuration = [(IMConfigurationAdder *)self configuration];
  v13 = [v11 initWithConfiguration:configuration predicate:v10];

  [(IMConfigurationAdder *)self setAddProhibited:1];
  [v13 setAddProhibited:0];
  adderCopy[2](adderCopy, v13);
  [v13 setAddProhibited:1];
  [(IMConfigurationAdder *)self setAddProhibited:0];
}

- (IMConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end