@interface SPColorWrapper
+ (id)wrapperForColor:(id)color;
- (SPColorWrapper)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPColorWrapper

+ (id)wrapperForColor:(id)color
{
  colorCopy = color;
  v5 = objc_alloc_init(SPColorWrapper);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_color, color);
    v7 = v6;
  }

  return v6;
}

- (SPColorWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SPColorWrapper;
  v5 = [(SPColorWrapper *)&v32 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"c"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"c"];
      color = v5->_color;
      v5->_color = v6;

LABEL_19:
      v29 = v5;
      goto LABEL_20;
    }

    v31 = 0;
    v8 = [coderCopy decodeBytesWithReturnedLength:&v31];
    if (v31 <= 2)
    {
      if (v31 == 1)
      {
        v9 = objc_alloc(MEMORY[0x277D75348]);
        LOBYTE(v24) = *v8;
        v11 = v24 / 255.0;
        v13 = 1.0;
        goto LABEL_14;
      }

      if (v31 == 2)
      {
        v9 = objc_alloc(MEMORY[0x277D75348]);
        LOBYTE(v10) = *v8;
        v11 = v10 / 255.0;
        LOBYTE(v12) = v8[1];
        v13 = v12 / 255.0;
LABEL_14:
        v25 = [v9 initWithWhite:v11 alpha:v13];
LABEL_17:
        p_super = &v5->_color->super;
        v5->_color = v25;
LABEL_18:

        goto LABEL_19;
      }

LABEL_11:
      p_super = wk_default_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [SPColorWrapper initWithCoder:?];
      }

      goto LABEL_18;
    }

    if (v31 == 3)
    {
      v14 = objc_alloc(MEMORY[0x277D75348]);
      LOBYTE(v26) = *v8;
      v16 = v26 / 255.0;
      LOBYTE(v27) = v8[1];
      v18 = v27 / 255.0;
      LOBYTE(v28) = v8[2];
      v20 = v28 / 255.0;
      v22 = 1.0;
    }

    else
    {
      if (v31 != 4)
      {
        goto LABEL_11;
      }

      v14 = objc_alloc(MEMORY[0x277D75348]);
      LOBYTE(v15) = *v8;
      v16 = v15 / 255.0;
      LOBYTE(v17) = v8[1];
      v18 = v17 / 255.0;
      LOBYTE(v19) = v8[2];
      v20 = v19 / 255.0;
      LOBYTE(v21) = v8[3];
      v22 = v21 / 255.0;
    }

    v25 = [v14 initWithRed:v16 green:v18 blue:v20 alpha:v22];
    goto LABEL_17;
  }

LABEL_20:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v43 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  cGColor = [(UIColor *)self->_color CGColor];
  ColorSpace = CGColorGetColorSpace(cGColor);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model > kCGColorSpaceModelRGB)
  {
    [coderCopy encodeObject:self->_color forKey:@"c"];
  }

  else
  {
    v8 = Model;
    NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
    v10 = NumberOfComponents;
    v11 = 4;
    if (v8 == kCGColorSpaceModelMonochrome)
    {
      v11 = 2;
    }

    if (NumberOfComponents != v11)
    {
      v12 = wk_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SPColorWrapper *)v10 encodeWithCoder:v12, v13, v14, v15, v16, v17, v18];
      }
    }

    v19 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
    Components = CGColorGetComponents(cGColor);
    v22 = Components;
    v23 = v10 - 1;
    if (v10 != 1)
    {
      *&v21 = 136446722;
      v36 = v21;
      v24 = Components;
      v25 = &buf[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
      v26 = v10 - 1;
      do
      {
        v27 = *v24;
        if (*v24 < 0.0 || v27 > 1.0)
        {
          v29 = wk_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *v24;
            *buf = v36;
            v38 = "[SPColorWrapper encodeWithCoder:]";
            v39 = 1024;
            v40 = 88;
            v41 = 2048;
            v42 = v30;
            _os_log_error_impl(&dword_23B338000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%d: Color component with value %f must be in the range [0, 1].", buf, 0x1Cu);
          }

          v27 = *v24;
        }

        *v25++ = (v27 * 255.0);
        ++v24;
        --v26;
      }

      while (v26);
    }

    v31 = &v22[v23];
    v32 = *v31;
    if (*v31 < 0.0 || v32 > 1.0)
    {
      v34 = wk_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SPColorWrapper encodeWithCoder:v31];
      }

      v32 = *v31;
    }

    if (v32 >= 1.0)
    {
      --v10;
    }

    else
    {
      v19[v23] = (v32 * 255.0);
    }

    [coderCopy encodeBytes:v19 length:{v10, v36}];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_color);
  return v4;
}

- (void)initWithCoder:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v2, v3, "%{public}s:%d: Unexpected number of decoded color components (%lu).", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23B338000, a2, a3, "%{public}s:%d: Unexpected number of color components (%lu).", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v2, v3, "%{public}s:%d: Alpha component with value %f must be in the range [0, 1].", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end