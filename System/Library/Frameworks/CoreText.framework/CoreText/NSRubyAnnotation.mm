@interface NSRubyAnnotation
- (NSRubyAnnotation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSRubyAnnotation

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    if (self)
    {
LABEL_3:
      [coder encodeInt:*self[5].super.isa forKey:@"Alignment"];
      [coder encodeInt:*(self[5].super.isa + 1) forKey:@"Overhang"];
      v6 = *(self[5].super.isa + 1);
      *&v6 = v6;
      [coder encodeFloat:@"SizeFactor" forKey:v6];
      [coder encodeObject:*(self[5].super.isa + 2) forKey:@"TextBefore"];
      [coder encodeObject:*(self[5].super.isa + 3) forKey:@"TextAfter"];
      [coder encodeObject:*(self[5].super.isa + 4) forKey:@"TextInterCharacter"];
      v7 = *(self[5].super.isa + 5);
      goto LABEL_4;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (self)
    {
      goto LABEL_3;
    }
  }

  [coder encodeInt:255 forKey:@"Alignment"];
  [coder encodeInt:255 forKey:@"Overhang"];
  [coder encodeFloat:@"SizeFactor" forKey:0.0];
  [coder encodeObject:0 forKey:@"TextBefore"];
  [coder encodeObject:0 forKey:@"TextAfter"];
  [coder encodeObject:0 forKey:@"TextInterCharacter"];
  v7 = 0;
LABEL_4:

  [coder encodeObject:v7 forKey:@"TextInline"];
}

- (NSRubyAnnotation)initWithCoder:(id)coder
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v18.receiver = self;
  v18.super_class = NSRubyAnnotation;
  v6 = [(NSRubyAnnotation *)&v18 init];
  v7 = [coder decodeIntForKey:@"Alignment"];
  v8 = [coder decodeIntForKey:@"Overhang"];
  [coder decodeFloatForKey:@"SizeFactor"];
  v10 = v9;
  v19[0] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"TextBefore"];
  v19[1] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"TextAfter"];
  v19[2] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"TextInterCharacter"];
  v19[3] = [coder decodeObjectOfClass:objc_opt_class() forKey:@"TextInline"];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v11 = TCFBase<TRubyAnnotation>::Allocate();
  v12 = v11;
  if (v11)
  {
    v13 = 0;
    *(v11 + 48) = v7;
    *(v11 + 16) = 0;
    *(v11 + 24) = TRubyAnnotation::Hash;
    *(v11 + 32) = 0;
    *(v11 + 40) = v11 + 48;
    *(v11 + 49) = v8;
    *(v11 + 56) = v10;
    *(v11 + 96) = 0;
    *(v11 + 120) = 256;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    do
    {
      *&v12[v13 * 8 + 64] = v19[v13];
      ++v13;
    }

    while (v13 != 4);
  }

  v16 = v12;
  v17 = atomic_exchange(&v16, 0);

  v14 = atomic_exchange(&v17, 0);
  return v14;
}

@end