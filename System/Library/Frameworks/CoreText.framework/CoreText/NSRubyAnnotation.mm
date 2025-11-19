@interface NSRubyAnnotation
- (NSRubyAnnotation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSRubyAnnotation

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    if (self)
    {
LABEL_3:
      [a3 encodeInt:*self[5].super.isa forKey:@"Alignment"];
      [a3 encodeInt:*(self[5].super.isa + 1) forKey:@"Overhang"];
      v6 = *(self[5].super.isa + 1);
      *&v6 = v6;
      [a3 encodeFloat:@"SizeFactor" forKey:v6];
      [a3 encodeObject:*(self[5].super.isa + 2) forKey:@"TextBefore"];
      [a3 encodeObject:*(self[5].super.isa + 3) forKey:@"TextAfter"];
      [a3 encodeObject:*(self[5].super.isa + 4) forKey:@"TextInterCharacter"];
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

  [a3 encodeInt:255 forKey:@"Alignment"];
  [a3 encodeInt:255 forKey:@"Overhang"];
  [a3 encodeFloat:@"SizeFactor" forKey:0.0];
  [a3 encodeObject:0 forKey:@"TextBefore"];
  [a3 encodeObject:0 forKey:@"TextAfter"];
  [a3 encodeObject:0 forKey:@"TextInterCharacter"];
  v7 = 0;
LABEL_4:

  [a3 encodeObject:v7 forKey:@"TextInline"];
}

- (NSRubyAnnotation)initWithCoder:(id)a3
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v18.receiver = self;
  v18.super_class = NSRubyAnnotation;
  v6 = [(NSRubyAnnotation *)&v18 init];
  v7 = [a3 decodeIntForKey:@"Alignment"];
  v8 = [a3 decodeIntForKey:@"Overhang"];
  [a3 decodeFloatForKey:@"SizeFactor"];
  v10 = v9;
  v19[0] = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"TextBefore"];
  v19[1] = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"TextAfter"];
  v19[2] = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"TextInterCharacter"];
  v19[3] = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"TextInline"];
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