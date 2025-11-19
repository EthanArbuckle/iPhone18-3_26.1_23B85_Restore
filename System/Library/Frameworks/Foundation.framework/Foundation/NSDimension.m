@interface NSDimension
+ (NSDimension)baseUnit;
- (BOOL)isEqual:(id)a3;
- (NSDimension)initWithCoder:(id)a3;
- (NSDimension)initWithDimension:(id)a3;
- (NSDimension)initWithSpecifier:(unint64_t)a3 symbol:(id)a4 converter:(id)a5;
- (NSUnitConverter)converter;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (NSDimension)initWithSpecifier:(unint64_t)a3 symbol:(id)a4 converter:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSDimension;
  v7 = [(NSUnit *)&v10 initWithSymbol:a4];
  v8 = v7;
  if (v7)
  {
    v7->_reserved = a3;
    v7->_converter = [a5 copy];
  }

  return v8;
}

- (NSDimension)initWithDimension:(id)a3
{
  v4 = -[NSDimension initWithSpecifier:symbol:converter:](self, "initWithSpecifier:symbol:converter:", [a3 specifier], objc_msgSend(a3, "symbol"), objc_msgSend(a3, "converter"));
  if (v4)
  {
    v4->_icuSubtype = [objc_msgSend(a3 "icuSubtype")];
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

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSDimension;
  v5 = [(NSUnit *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = [objc_msgSend(a3 "converter")];
  }

  return v5;
}

- (NSDimension)initWithCoder:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDimension cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = NSDimension;
  v5 = [(NSUnit *)&v9 initWithCoder:a3];
  if (v5)
  {
    v6 = [a3 decodeIntegerForKey:@"NS.specifier"];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.converter"];
    if (v7)
    {
      v5->_reserved = v6;
      v5->_converter = [v7 copy];
    }

    else
    {

      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4865, 0)}];
      return 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDimension;
  [(NSUnit *)&v5 encodeWithCoder:?];
  if (![a3 allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDimension encoder does not allow non-keyed coding!" userInfo:0]);
  }

  [a3 encodeInteger:self->_reserved forKey:@"NS.specifier"];
  [a3 encodeObject:self->_converter forKey:@"NS.converter"];
}

@end