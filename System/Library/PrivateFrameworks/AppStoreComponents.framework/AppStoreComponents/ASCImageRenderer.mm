@interface ASCImageRenderer
+ (id)bundleImageNamed:(id)named compatibleWithTraitCollection:(id)collection;
+ (id)systemImageNamed:(id)named compatibleWithTraitCollection:(id)collection;
- (ASCImageRenderer)initWithSize:(CGSize)size capInsets:(UIEdgeInsets)insets renderingMode:(int64_t)mode;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (UIEdgeInsets)capInsets;
- (id)description;
- (id)imageWithActions:(id)actions;
- (unint64_t)hash;
@end

@implementation ASCImageRenderer

- (ASCImageRenderer)initWithSize:(CGSize)size capInsets:(UIEdgeInsets)insets renderingMode:(int64_t)mode
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = ASCImageRenderer;
  result = [(ASCImageRenderer *)&v13 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_capInsets.top = top;
    result->_capInsets.left = left;
    result->_capInsets.bottom = bottom;
    result->_capInsets.right = right;
    result->_renderingMode = mode;
  }

  return result;
}

+ (id)bundleImageNamed:(id)named compatibleWithTraitCollection:(id)collection
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  collectionCopy = collection;
  namedCopy = named;
  asc_frameworkBundle = [v6 asc_frameworkBundle];
  v10 = [v5 imageNamed:namedCopy inBundle:asc_frameworkBundle compatibleWithTraitCollection:collectionCopy];

  return v10;
}

+ (id)systemImageNamed:(id)named compatibleWithTraitCollection:(id)collection
{
  v5 = MEMORY[0x277D755B8];
  namedCopy = named;
  imageConfiguration = [collection imageConfiguration];
  v8 = [v5 _systemImageNamed:namedCopy withConfiguration:imageConfiguration];

  return v8;
}

- (id)imageWithActions:(id)actions
{
  actionsCopy = actions;
  v5 = objc_alloc(MEMORY[0x277D75560]);
  [(ASCImageRenderer *)self size];
  v6 = [v5 initWithSize:?];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__ASCImageRenderer_imageWithActions___block_invoke;
  v16[3] = &unk_2781CCED0;
  v17 = actionsCopy;
  v7 = actionsCopy;
  v8 = [v6 imageWithActions:v16];
  [(ASCImageRenderer *)self capInsets];
  v10.f64[1] = v9;
  v12.f64[1] = v11;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, *MEMORY[0x277D768C8]), vceqq_f64(v12, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [(ASCImageRenderer *)self capInsets];
    v13 = [v8 resizableImageWithCapInsets:?];

    v8 = v13;
  }

  if ([(ASCImageRenderer *)self renderingMode]== 1)
  {
    v14 = [v8 imageWithRenderingMode:2];

    v8 = v14;
  }

  return v8;
}

uint64_t __37__ASCImageRenderer_imageWithActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 CGContext];
  v13 = *(*(a1 + 32) + 16);
  v14.n128_u64[0] = v6;
  v15.n128_u64[0] = v8;
  v16.n128_u64[0] = v10;
  v17.n128_u64[0] = v12;

  return v13(v14, v15, v16, v17);
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  [(ASCImageRenderer *)self size];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCImageRenderer *)self size];
  [(ASCHasher *)v3 combineDouble:v4];
  [(ASCImageRenderer *)self capInsets];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCImageRenderer *)self capInsets];
  [(ASCHasher *)v3 combineDouble:v5];
  [(ASCImageRenderer *)self capInsets];
  [(ASCHasher *)v3 combineDouble:v6];
  [(ASCImageRenderer *)self capInsets];
  [(ASCHasher *)v3 combineDouble:v7];
  [(ASCHasher *)v3 combineInteger:[(ASCImageRenderer *)self renderingMode]];
  finalizeHash = [(ASCHasher *)v3 finalizeHash];

  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (-[ASCImageRenderer size](self, "size"), v9 = v8, [v7 size], v9 == v10) && (-[ASCImageRenderer size](self, "size"), v12 = v11, objc_msgSend(v7, "size"), v12 == v13) && (-[ASCImageRenderer capInsets](self, "capInsets"), v15 = v14, objc_msgSend(v7, "capInsets"), v15 == v16) && (-[ASCImageRenderer capInsets](self, "capInsets"), v18 = v17, objc_msgSend(v7, "capInsets"), v18 == v19) && (-[ASCImageRenderer capInsets](self, "capInsets"), v21 = v20, objc_msgSend(v7, "capInsets"), v21 == v22) && (-[ASCImageRenderer capInsets](self, "capInsets"), v24 = v23, objc_msgSend(v7, "capInsets"), v24 == v25))
  {
    renderingMode = [(ASCImageRenderer *)self renderingMode];
    v27 = renderingMode == [v7 renderingMode];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  [(ASCImageRenderer *)self size];
  v6 = v5;
  [(ASCImageRenderer *)self size];
  v8 = [v4 initWithFormat:@"{%f, %f}", v6, v7];
  [(ASCDescriber *)v3 addObject:v8 withName:@"size"];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  [(ASCImageRenderer *)self capInsets];
  v11 = v10;
  [(ASCImageRenderer *)self capInsets];
  v13 = v12;
  [(ASCImageRenderer *)self capInsets];
  v15 = v14;
  [(ASCImageRenderer *)self capInsets];
  v17 = [v9 initWithFormat:@"{%f, %f, %f, %f}", v11, v13, v15, v16];
  [(ASCDescriber *)v3 addObject:v17 withName:@"capInsets"];
  renderingMode = [(ASCImageRenderer *)self renderingMode];
  if (renderingMode)
  {
    if (renderingMode != 1)
    {
      goto LABEL_6;
    }

    v19 = @"ASCImageRenderingModeAlwaysTemplate";
  }

  else
  {
    v19 = @"ASCImageRenderingModeAutomatic";
  }

  [(ASCDescriber *)v3 addObject:v19 withName:@"renderingMode"];
LABEL_6:
  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)capInsets
{
  top = self->_capInsets.top;
  left = self->_capInsets.left;
  bottom = self->_capInsets.bottom;
  right = self->_capInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end