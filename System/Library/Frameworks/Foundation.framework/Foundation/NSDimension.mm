@interface NSDimension
+ (NSDimension)baseUnit;
- (BOOL)isEqual:(id)equal;
- (NSDimension)initWithCoder:(id)coder;
- (NSDimension)initWithDimension:(id)dimension;
- (NSDimension)initWithSpecifier:(unint64_t)specifier symbol:(id)symbol converter:(id)converter;
- (NSUnitConverter)converter;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSDimension

- (NSUnitConverter)converter
{
  v2 = self->_converter;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSDimension;
  [(NSUnit *)&v3 dealloc];
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDimension;
  v3 = [(NSUnit *)&v5 hash];
  return [(NSUnitConverter *)[(NSDimension *)self converter] hash]^ v3;
}

- (NSDimension)initWithSpecifier:(unint64_t)specifier symbol:(id)symbol converter:(id)converter
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSDimension;
  v7 = [(NSUnit *)&v10 initWithSymbol:symbol];
  v8 = v7;
  if (v7)
  {
    v7->_reserved = specifier;
    v7->_converter = [converter copy];
  }

  return v8;
}

- (NSDimension)initWithDimension:(id)dimension
{
  v4 = -[NSDimension initWithSpecifier:symbol:converter:](self, "initWithSpecifier:symbol:converter:", [dimension specifier], objc_msgSend(dimension, "symbol"), objc_msgSend(dimension, "converter"));
  if (v4)
  {
    v4->_icuSubtype = [objc_msgSend(dimension "icuSubtype")];
  }

  return v4;
}

+ (NSDimension)baseUnit
{
  Name = sel_getName(a2);
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"*** You must override %s in your class %s to define its base unit.", Name, _NSNameOfClass(v3)), 0}];
  objc_exception_throw(v4);
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSDimension;
  v5 = [(NSUnit *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = [objc_msgSend(equal "converter")];
  }

  return v5;
}

- (NSDimension)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDimension cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = NSDimension;
  v5 = [(NSUnit *)&v9 initWithCoder:coder];
  if (v5)
  {
    v6 = [coder decodeIntegerForKey:@"NS.specifier"];
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.converter"];
    if (v7)
    {
      v5->_reserved = v6;
      v5->_converter = [v7 copy];
    }

    else
    {

      [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4865, 0)}];
      return 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDimension;
  [(NSUnit *)&v5 encodeWithCoder:?];
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDimension encoder does not allow non-keyed coding!" userInfo:0]);
  }

  [coder encodeInteger:self->_reserved forKey:@"NS.specifier"];
  [coder encodeObject:self->_converter forKey:@"NS.converter"];
}

@end