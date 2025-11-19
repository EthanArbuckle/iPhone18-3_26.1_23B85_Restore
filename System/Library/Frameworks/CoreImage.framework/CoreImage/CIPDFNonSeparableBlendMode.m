@interface CIPDFNonSeparableBlendMode
- (CIPDFNonSeparableBlendMode)init;
- (id)_kernel;
- (void)setDefaults;
@end

@implementation CIPDFNonSeparableBlendMode

- (CIPDFNonSeparableBlendMode)init
{
  v5.receiver = self;
  v5.super_class = CIPDFNonSeparableBlendMode;
  v2 = [(CIPDFNonSeparableBlendMode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    -[CIPDFNonSeparableBlendMode setValue:forKey:](v2, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPDFNonSeparableBlendMode _defaultVersion](v2, "_defaultVersion")}], @"__inputVersion");
  }

  return v3;
}

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIPDFNonSeparableBlendMode;
  [(CIFilter *)&v3 setDefaults];
  -[CIPDFNonSeparableBlendMode setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPDFNonSeparableBlendMode _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
}

- (id)_kernel
{
  v3 = [-[CIPDFNonSeparableBlendMode valueForKey:](self valueForKey:{@"__inputVersion", "intValue"}];
  if (v3 == 1)
  {

    return [(CIPDFNonSeparableBlendMode *)self _kernel_v1];
  }

  else if (v3)
  {
    return 0;
  }

  else
  {

    return [(CIPDFNonSeparableBlendMode *)self _kernel_v0];
  }
}

@end