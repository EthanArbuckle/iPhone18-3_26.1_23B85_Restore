@interface NSTextEncapsulation
- (NSTextEncapsulation)init;
- (NSTextEncapsulation)initWithCoder:(id)coder;
- (NSTextEncapsulation)initWithShape:(unint64_t)shape;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTextEncapsulation

- (NSTextEncapsulation)init
{
  v3.receiver = self;
  v3.super_class = NSTextEncapsulation;
  return [(NSTextEncapsulation *)&v3 init];
}

- (NSTextEncapsulation)initWithShape:(unint64_t)shape
{
  v7.receiver = self;
  v7.super_class = NSTextEncapsulation;
  v4 = [(NSTextEncapsulation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(NSTextEncapsulation *)v4 setShape:shape];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSTextEncapsulation allocWithZone:?], "initWithShape:", self->shape];
  [(NSTextEncapsulation *)v4 setScale:self->scale];
  [(NSTextEncapsulation *)v4 setPlatterSize:self->platterSize];
  [(NSTextEncapsulation *)v4 setStyle:self->style];
  [(NSTextEncapsulation *)v4 setLineWeight:self->lineWeight];
  [(NSTextEncapsulation *)v4 setMinimumWidth:self->minimumWidth];
  [(NSTextEncapsulation *)v4 setColor:self->color];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInteger:self->scale forKey:@"Scale"];
  [coder encodeInteger:self->platterSize forKey:@"PlatterSize"];
  [coder encodeInteger:self->shape forKey:@"Shape"];
  [coder encodeInteger:self->style forKey:@"Style"];
  [coder encodeDouble:@"LineWeight" forKey:self->lineWeight];
  [coder encodeDouble:@"MinimumWidth" forKey:self->minimumWidth];
  color = self->color;

  [coder encodeObject:color forKey:@"Color"];
}

- (NSTextEncapsulation)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (_MergedGlobals_38 != -1)
  {
    dispatch_once(&_MergedGlobals_38, &__block_literal_global_11);
  }

  v8.receiver = self;
  v8.super_class = NSTextEncapsulation;
  v6 = [(NSTextEncapsulation *)&v8 init];
  if (v6)
  {
    -[NSTextEncapsulation setScale:](v6, "setScale:", [coder decodeIntegerForKey:@"Scale"]);
    -[NSTextEncapsulation setPlatterSize:](v6, "setPlatterSize:", [coder decodeIntegerForKey:@"PlatterSize"]);
    -[NSTextEncapsulation setShape:](v6, "setShape:", [coder decodeIntegerForKey:@"Shape"]);
    -[NSTextEncapsulation setStyle:](v6, "setStyle:", [coder decodeIntegerForKey:@"Style"]);
    [coder decodeDoubleForKey:@"LineWeight"];
    [(NSTextEncapsulation *)v6 setLineWeight:?];
    [coder decodeDoubleForKey:@"MinimumWidth"];
    [(NSTextEncapsulation *)v6 setMinimumWidth:?];
    -[NSTextEncapsulation setColor:](v6, "setColor:", [coder decodeObjectOfClass:qword_1ED568278 forKey:@"Color"]);
  }

  return v6;
}

Class __37__NSTextEncapsulation_initWithCoder___block_invoke()
{
  result = NSClassFromString(&cfstr_Uicolor.isa);
  qword_1ED568278 = result;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextEncapsulation;
  [(NSTextEncapsulation *)&v3 dealloc];
}

@end