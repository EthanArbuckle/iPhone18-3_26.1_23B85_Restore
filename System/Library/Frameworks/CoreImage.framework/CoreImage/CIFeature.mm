@interface CIFeature
- (CGRect)bounds;
- (CIFeature)init;
- (id)debugDescription;
@end

@implementation CIFeature

- (CIFeature)init
{
  v5.receiver = self;
  v5.super_class = CIFeature;
  v2 = [(CIFeature *)&v5 init];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {

    return 0;
  }

  return v2;
}

- (CGRect)bounds
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)debugDescription
{
  [(CIFeature *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_msgSend(objc_opt_class() "description")];
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (CGRectIsInfinite(v17))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p [infinite]>\n", v11, self, v13, v14, v15, v16];
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  if (CGRectIsEmpty(v18))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p [empty]>\n", v11, self, v13, v14, v15, v16];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p [%g %g %g %g]>\n", v11, self, *&v4, *&v6, *&v8, *&v10];
  }
}

@end