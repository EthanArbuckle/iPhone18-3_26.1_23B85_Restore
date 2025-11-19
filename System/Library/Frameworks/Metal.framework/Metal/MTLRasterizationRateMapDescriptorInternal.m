@interface MTLRasterizationRateMapDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLRasterizationRateMapDescriptorInternal)init;
- (MTLRasterizationRateMapDescriptorInternal)initWithScreenSize:(id *)a3;
- (const)layerPointer:(unint64_t *)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)layerAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)layerCount;
- (void)dealloc;
- (void)setLayer:(id)a3 atIndex:(unint64_t)a4;
- (void)setScreenSize:(id *)a3;
@end

@implementation MTLRasterizationRateMapDescriptorInternal

- (MTLRasterizationRateMapDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLRasterizationRateMapDescriptorInternal;
  v2 = [(MTLRasterizationRateMapDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_layerAccessor = [[MTLRasterizationRateLayerArrayInternal alloc] initWithParent:v2];
    v2->_mutability = 2;
    v2->_minFactor = 0.0;
  }

  return v2;
}

- (MTLRasterizationRateMapDescriptorInternal)initWithScreenSize:(id *)a3
{
  result = [(MTLRasterizationRateMapDescriptorInternal *)self init];
  if (result)
  {
    var2 = a3->var2;
    *&result->_screenSize.width = *&a3->var0;
    result->_screenSize.depth = var2;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MTLRasterizationRateMapDescriptor allocWithZone:?]];
  v5 = *&self->_screenSize.width;
  v4->_screenSize.depth = self->_screenSize.depth;
  *&v4->_screenSize.width = v5;
  v4->_label = [(NSString *)self->_label copy];
  p_layers = &self->_layers;
  v7 = p_layers->var0 - p_layers->__begin_;
  v11 = 0;
  std::vector<MTLRasterizationRateLayerDescriptor *>::resize(&v4->_layers.__begin_, v7, &v11);
  begin = p_layers->__begin_;
  if (p_layers->var0 != p_layers->__begin_)
  {
    v9 = 0;
    do
    {
      v4->_layers.__begin_[v9] = [(__end_ *)begin[v9] copy];
      ++v9;
      begin = p_layers->__begin_;
    }

    while (v9 < p_layers->var0 - p_layers->__begin_);
  }

  return v4;
}

- (void)dealloc
{
  p_layers = &self->_layers;
  begin = self->_layers.__begin_;
  if (self->_layers.var0 != begin)
  {
    v5 = 0;
    do
    {

      begin = p_layers->__begin_;
    }

    while (v5 < p_layers->var0 - p_layers->__begin_);
  }

  p_layers->var0 = begin;

  v6.receiver = self;
  v6.super_class = MTLRasterizationRateMapDescriptorInternal;
  [(MTLRasterizationRateMapDescriptorInternal *)&v6 dealloc];
}

- (id)layerAtIndex:(unint64_t)a3
{
  begin = self->_layers.__begin_;
  if (a3 >= self->_layers.var0 - begin)
  {
    return 0;
  }

  else
  {
    return begin[a3];
  }
}

- (void)setLayer:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  p_layers = &self->_layers;
  begin = p_layers->__begin_;
  if (a4 >= p_layers->var0 - p_layers->__begin_)
  {
    if (!a3)
    {
      return;
    }

    v11 = 0;
    std::vector<MTLRasterizationRateLayerDescriptor *>::resize(p_layers, a4 + 1, &v11);
    begin = p_layers->__begin_;
  }

  v10 = begin[a4];
  begin[a4] = a3;
}

- (unint64_t)layerCount
{
  begin = self->_layers.__begin_;
  var0 = self->_layers.var0;
  result = 0;
  v5 = var0 - begin;
  if (v5)
  {
    v6 = v5 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (begin[result])
    {
      if (v6 == ++result)
      {
        return v6;
      }
    }
  }

  return result;
}

- (const)layerPointer:(unint64_t *)a3
{
  p_layers = &self->_layers;
  result = self->_layers.__begin_;
  v5 = p_layers->var0 - result;
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (result[v6])
    {
      if (v7 == ++v6)
      {
        *a3 = v7;
        return result;
      }
    }

    *a3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    label = self->_label;
    p_layers = &self->_layers;
    v30 = *&self->_screenSize.width;
    begin = self->_layers.__begin_;
    var0 = self->_layers.var0;
    v9 = 0;
    v10 = var0 - begin;
    if (v10)
    {
      v11 = v10 >> 3;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      while (begin[v9])
      {
        if (v11 == ++v9)
        {
          v9 = v11;
          break;
        }
      }
    }

    v31 = [(NSString *)label hash];
    v12 = a3 + 40;
    v27 = *(a3 + 8);
    v14 = *(a3 + 5);
    v13 = *(a3 + 6);
    v15 = v13 - v14;
    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 3;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      while (*(v14 + 8 * v16))
      {
        if (v17 == ++v16)
        {
          v16 = v17;
          break;
        }
      }
    }

    v29 = v16;
    v19 = [*(a3 + 4) hash];
    v20 = v30 == v28 && *(&v30 + 1) == *(&v27 + 1);
    v21 = v20 && v9 == v29;
    if (v21 && v31 == v19)
    {
      if (v9)
      {
        v23 = 0;
        v24 = v9 - 1;
        do
        {
          v18 = [(__end_ *)p_layers->__begin_[v23] isEqual:*(*v12 + 8 * v23)];
          if (v18)
          {
            v25 = v24 == v23;
          }

          else
          {
            v25 = 1;
          }

          ++v23;
        }

        while (!v25);
      }

      else
      {
        LOBYTE(v18) = 1;
      }
    }

    else
    {
LABEL_27:
      LOBYTE(v18) = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  label = self->_label;
  p_layers = &self->_layers;
  v13 = *&self->_screenSize.width;
  begin = self->_layers.__begin_;
  var0 = self->_layers.var0;
  v7 = var0 - begin;
  if (var0 == begin)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    while (begin[v8])
    {
      if (v9 == ++v8)
      {
        v8 = v9;
        break;
      }
    }
  }

  v14 = v8;
  v15 = [(NSString *)label hash];
  v10 = _MTLHashState(&v13, 0x20uLL);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v10 ^= [(__end_ *)p_layers->__begin_[i] hash];
    }
  }

  return v10;
}

- (id)formattedDescription:(unint64_t)a3
{
  v18[12] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = v5;
  v18[0] = v5;
  v18[1] = @"label =";
  label = self->_label;
  if (!label)
  {
    label = @"<none>";
  }

  v18[2] = label;
  v18[3] = v5;
  v18[4] = @"screenSize.width =";
  v18[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_screenSize.width];
  v18[6] = v6;
  v18[7] = @"screenSize.height =";
  v18[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_screenSize.height];
  v18[9] = v6;
  v18[10] = @"layerCount =";
  v18[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTLRasterizationRateMapDescriptorInternal layerCount](self, "layerCount")}];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:12];
  v8 = objc_opt_new();
  begin = self->_layers.__begin_;
  var0 = self->_layers.var0;
  if (var0 != begin)
  {
    v11 = 0;
    do
    {
      v12 = begin[v11];
      if (v12)
      {
        [v8 addObject:v6];
        [v8 addObject:@" layers["];
        [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v11)}];
        [v8 addObject:@"] = "];
        [v8 addObject:{-[__end_ formattedDescription:](v12, "formattedDescription:", a3 + 4)}];
        begin = self->_layers.__begin_;
        var0 = self->_layers.var0;
      }

      ++v11;
    }

    while (v11 < var0 - begin);
  }

  v17.receiver = self;
  v17.super_class = MTLRasterizationRateMapDescriptorInternal;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", -[MTLRasterizationRateMapDescriptorInternal description](&v17, sel_description), objc_msgSend(v16, "componentsJoinedByString:", @" ", objc_msgSend(v8, "componentsJoinedByString:", &stru_1EF478240)];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setScreenSize:(id *)a3
{
  var2 = a3->var2;
  *&self->_screenSize.width = *&a3->var0;
  self->_screenSize.depth = var2;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end