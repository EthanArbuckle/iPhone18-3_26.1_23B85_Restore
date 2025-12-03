@interface _CTGlyphStorage
- (BOOL)isEqual:(id)equal;
- (CGPoint)originAtIndex:(int64_t)index;
- (_CTGlyphStorage)initWithCount:(int64_t)count;
@end

@implementation _CTGlyphStorage

- (_CTGlyphStorage)initWithCount:(int64_t)count
{
  v5.receiver = self;
  v5.super_class = _CTGlyphStorage;
  result = [(_CTGlyphStorage *)&v5 init];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    count = self->_count;
    if (count == *(equal + 1))
    {
      if (count < 1)
      {
        return 1;
      }

      v6 = 0;
      advanceWidths = self->_advanceWidths;
      advances = self->_advances;
      v10 = *(equal + 3);
      v9 = *(equal + 4);
      glyphs = self->_glyphs;
      v12 = *(equal + 2);
      v13 = (v9 + 8);
      for (i = &advances->height; ; i += 2)
      {
        v15 = 0.0;
        p_width = advanceWidths;
        v17 = 0.0;
        if (advances)
        {
          p_width = &advances[v6].width;
          v17 = *i;
        }

        v18 = v10;
        if (v9)
        {
          v18 = (v9 + 16 * v6);
          v15 = *v13;
        }

        v19 = *p_width == *v18 && v17 == v15;
        if (!v19 || *glyphs != *v12)
        {
          break;
        }

        ++v6;
        ++v12;
        ++glyphs;
        ++v10;
        v13 += 2;
        ++advanceWidths;
        if (!--count)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

- (CGPoint)originAtIndex:(int64_t)index
{
  fprintf(*MEMORY[0x1E69E9848], "%s called on non-concrete instance %p\n", "[_CTGlyphStorage originAtIndex:]", self);
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

@end