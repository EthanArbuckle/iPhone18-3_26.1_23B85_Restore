@interface NSTextEncapsulation
- (NSTextEncapsulation)init;
- (NSTextEncapsulation)initWithCoder:(id)a3;
- (NSTextEncapsulation)initWithShape:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSTextEncapsulation

- (NSTextEncapsulation)init
{
  v3.receiver = self;
  v3.super_class = NSTextEncapsulation;
  return [(NSTextEncapsulation *)&v3 init];
}

- (NSTextEncapsulation)initWithShape:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = NSTextEncapsulation;
  v4 = [(NSTextEncapsulation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(NSTextEncapsulation *)v4 setShape:a3];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:self->scale forKey:@"Scale"];
  [a3 encodeInteger:self->platterSize forKey:@"PlatterSize"];
  [a3 encodeInteger:self->shape forKey:@"Shape"];
  [a3 encodeInteger:self->style forKey:@"Style"];
  [a3 encodeDouble:@"LineWeight" forKey:self->lineWeight];
  [a3 encodeDouble:@"MinimumWidth" forKey:self->minimumWidth];
  color = self->color;

  [a3 encodeObject:color forKey:@"Color"];
}

- (NSTextEncapsulation)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
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
    -[NSTextEncapsulation setScale:](v6, "setScale:", [a3 decodeIntegerForKey:@"Scale"]);
    -[NSTextEncapsulation setPlatterSize:](v6, "setPlatterSize:", [a3 decodeIntegerForKey:@"PlatterSize"]);
    -[NSTextEncapsulation setShape:](v6, "setShape:", [a3 decodeIntegerForKey:@"Shape"]);
    -[NSTextEncapsulation setStyle:](v6, "setStyle:", [a3 decodeIntegerForKey:@"Style"]);
    [a3 decodeDoubleForKey:@"LineWeight"];
    [(NSTextEncapsulation *)v6 setLineWeight:?];
    [a3 decodeDoubleForKey:@"MinimumWidth"];
    [(NSTextEncapsulation *)v6 setMinimumWidth:?];
    -[NSTextEncapsulation setColor:](v6, "setColor:", [a3 decodeObjectOfClass:qword_1ED568278 forKey:@"Color"]);
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