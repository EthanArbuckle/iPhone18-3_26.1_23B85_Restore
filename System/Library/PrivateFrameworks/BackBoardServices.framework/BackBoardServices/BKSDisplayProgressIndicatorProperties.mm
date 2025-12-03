@interface BKSDisplayProgressIndicatorProperties
+ (id)progressIndicatorWithStyle:(int64_t)style position:(CGPoint)position;
- (BKSDisplayProgressIndicatorProperties)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (CGPoint)position;
- (id)_initWithStyle:(int64_t)style position:(CGPoint)position;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayProgressIndicatorProperties

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSDisplayProgressIndicatorProperties *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:self->_style withName:@"style"];
  v5 = [v3 appendPoint:@"position" withName:{self->_position.x, self->_position.y}];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSDisplayProgressIndicatorProperties *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__BKSDisplayProgressIndicatorProperties_isEqual___block_invoke;
  v18[3] = &unk_1E6F46AC0;
  v6 = equalCopy;
  v19 = v6;
  v7 = [v5 appendCGPoint:v18 counterpart:{self->_position.x, self->_position.y}];
  style = self->_style;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __49__BKSDisplayProgressIndicatorProperties_isEqual___block_invoke_2;
  v16 = &unk_1E6F47100;
  v17 = v6;
  v9 = v6;
  v10 = [v7 appendInteger:style counterpart:&v13];
  v11 = [v10 isEqual];

  return v11;
}

- (BKSDisplayProgressIndicatorProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"style"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"position"];

  if (v6)
  {
    MEMORY[0x186605190](v6);
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  v9 = [(BKSDisplayProgressIndicatorProperties *)self _initWithStyle:v5 position:v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  x = self->_position.x;
  y = self->_position.y;
  v8 = BSValueWithPoint();
  [coderCopy encodeObject:v8 forKey:@"position"];
}

- (id)_initWithStyle:(int64_t)style position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v8.receiver = self;
  v8.super_class = BKSDisplayProgressIndicatorProperties;
  result = [(BKSDisplayProgressIndicatorProperties *)&v8 init];
  if (result)
  {
    *(result + 1) = style;
    *(result + 2) = x;
    *(result + 3) = y;
  }

  return result;
}

+ (id)progressIndicatorWithStyle:(int64_t)style position:(CGPoint)position
{
  v4 = [[self alloc] _initWithStyle:style position:{position.x, position.y}];

  return v4;
}

@end