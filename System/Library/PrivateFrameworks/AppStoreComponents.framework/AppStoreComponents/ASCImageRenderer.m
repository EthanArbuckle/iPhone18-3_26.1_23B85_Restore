@interface ASCImageRenderer
+ (id)bundleImageNamed:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)systemImageNamed:(id)a3 compatibleWithTraitCollection:(id)a4;
- (ASCImageRenderer)initWithSize:(CGSize)a3 capInsets:(UIEdgeInsets)a4 renderingMode:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (UIEdgeInsets)capInsets;
- (id)description;
- (id)imageWithActions:(id)a3;
- (unint64_t)hash;
@end

@implementation ASCImageRenderer

- (ASCImageRenderer)initWithSize:(CGSize)a3 capInsets:(UIEdgeInsets)a4 renderingMode:(int64_t)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
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
    result->_renderingMode = a5;
  }

  return result;
}

+ (id)bundleImageNamed:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 asc_frameworkBundle];
  v10 = [v5 imageNamed:v8 inBundle:v9 compatibleWithTraitCollection:v7];

  return v10;
}

+ (id)systemImageNamed:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = MEMORY[0x277D755B8];
  v6 = a3;
  v7 = [a4 imageConfiguration];
  v8 = [v5 _systemImageNamed:v6 withConfiguration:v7];

  return v8;
}

- (id)imageWithActions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D75560]);
  [(ASCImageRenderer *)self size];
  v6 = [v5 initWithSize:?];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__ASCImageRenderer_imageWithActions___block_invoke;
  v16[3] = &unk_2781CCED0;
  v17 = v4;
  v7 = v4;
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
  v8 = [(ASCHasher *)v3 finalizeHash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v26 = [(ASCImageRenderer *)self renderingMode];
    v27 = v26 == [v7 renderingMode];
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
  v18 = [(ASCImageRenderer *)self renderingMode];
  if (v18)
  {
    if (v18 != 1)
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
  v20 = [(ASCDescriber *)v3 finalizeDescription];

  return v20;
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