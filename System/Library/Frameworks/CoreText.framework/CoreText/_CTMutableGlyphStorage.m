@interface _CTMutableGlyphStorage
- (CGPoint)originAtIndex:(int64_t)a3;
- (CGSize)customAdvanceForIndex:(int64_t)a3;
- (_CTMutableGlyphStorage)initWithInterface:(id)a3 options:(unsigned int)a4;
- (id)copyWithRange:(id)a3;
- (int64_t)attachmentCountAtIndex:(int64_t)a3;
- (void)getCustomAdvances:(CGSize *)a3 forIndexes:(const int64_t *)a4 count:(int64_t)a5;
- (void)insertGlyphsAtRange:(id)a3;
- (void)moveGlyphsFromRange:(id)a3 toIndex:(int64_t)a4;
- (void)puntStringIndicesInRange:(id)a3 by:(int64_t)a4;
- (void)resetOrigins:(id)a3;
- (void)setOrigin:(CGPoint)a3 atIndex:(int64_t)a4;
- (void)swapGlyphsAtIndex:(int64_t)a3 withIndex:(int64_t)a4;
- (void)sync;
@end

@implementation _CTMutableGlyphStorage

- (void)sync
{
  count = self->super._count;
  self->super._count = self->_interface->_glyphCount;
  self->super._glyphs = self->_interface->_glyphs;
  self->super._advances = self->_interface->_advances;
  self->super._props = self->_interface->_props;
  self->super._stringIndices = self->_interface->_stringIndexes;
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v5 = self->super._count;
      if (v5 > count)
      {

        [AssociatedObject setLength:16 * v5];
      }
    }
  }
}

- (_CTMutableGlyphStorage)initWithInterface:(id)a3 options:(unsigned int)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = *(a3 + 1);
    v10.receiver = self;
    v10.super_class = _CTMutableGlyphStorage;
    v7 = [(_CTGlyphStorage *)&v10 initWithCount:v6];
    v8 = v7;
    if (v7)
    {
      v7->_interface = a3;
      v7->super._glyphs = *(a3 + 2);
      v7->super._advances = *(a3 + 3);
      v7->super._props = *(a3 + 4);
      v7->super._stringIndices = *(a3 + 5);
      if (objc_opt_respondsToSelector())
      {
        v8->_implementsOrigins = 1;
      }

      if (v4)
      {
        v8->_hasCustomAdvances = 1;
      }

      if (objc_opt_respondsToSelector())
      {
        v8->_implementsCustomAdvancesForIndexes = 1;
      }
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (id)copyWithRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(CTGlyphStorageInterface *)self->_interface createCopy:?];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v8 = [AssociatedObject bytes];
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:v8 + 16 * var0 length:16 * var1];
      objc_setAssociatedObject(v6, sOriginsAssociationKey, v9, 0x301);
    }
  }

  return v6;
}

- (CGSize)customAdvanceForIndex:(int64_t)a3
{
  if (self->super._glyphs[a3] == -1)
  {
    v5 = *MEMORY[0x1E695F060];
  }

  else
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    [(CTGlyphStorageInterface *)self->_interface getCustomAdvance:&v5 forIndex:a3];
  }

  v4 = *(&v5 + 1);
  v3 = *&v5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)getCustomAdvances:(CGSize *)a3 forIndexes:(const int64_t *)a4 count:(int64_t)a5
{
  if (self->_implementsCustomAdvancesForIndexes)
  {
    [(CTGlyphStorageInterface *)self->_interface getCustomAdvances:a3 forIndexes:a4 count:a5];
  }
}

- (int64_t)attachmentCountAtIndex:(int64_t)a3
{
  absorbedCounts = self->_interface->_absorbedCounts;
  if (absorbedCounts)
  {
    return absorbedCounts[a3];
  }

  else
  {
    return 0;
  }
}

- (void)resetOrigins:(id)a3
{
  if (!self->_implementsOrigins)
  {
    var1 = a3.var1;
    var0 = a3.var0;
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v6 = [AssociatedObject mutableBytes];
      if (var1 >= 1)
      {
        v7 = (v6 + 16 * var0);
        v8 = var1 + 1;
        v9 = MEMORY[0x1E695EFF8];
        do
        {
          *v7++ = *v9;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }
}

- (CGPoint)originAtIndex:(int64_t)a3
{
  if (self->_implementsOrigins)
  {
    origins = self->_interface->_origins;
    if (origins)
    {
      p_x = &origins[a3].x;
    }

    else
    {
      p_x = MEMORY[0x1E695EFF8];
    }
  }

  else
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      p_x = ([AssociatedObject bytes] + 16 * a3);
    }

    else
    {
      p_x = MEMORY[0x1E695EFF8];
    }
  }

  v7 = *p_x;
  v8 = p_x[1];
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setOrigin:(CGPoint)a3 atIndex:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_implementsOrigins)
  {
    interface = self->_interface;

    [CTGlyphStorageInterface setOrigin:"setOrigin:forIndex:" forIndex:?];
    return;
  }

  AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
  if (AssociatedObject)
  {
    v10 = AssociatedObject;
LABEL_7:
    v11 = ([v10 mutableBytes] + 16 * a4);
    *v11 = x;
    v11[1] = y;
    return;
  }

  if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16 * self->_interface->_glyphCount];
    objc_setAssociatedObject(self, sOriginsAssociationKey, v10, 0x301);

    if (v10)
    {
      goto LABEL_7;
    }
  }
}

- (void)puntStringIndicesInRange:(id)a3 by:(int64_t)a4
{
  if (a4 && a3.var1 >= 1)
  {
    v16 = v9;
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v10;
    v23 = v11;
    var0 = a3.var0;
    v15 = a3.var0 + a3.var1;
    do
    {
      [(CTGlyphStorageInterface *)self->_interface setStringIndex:self->_interface->_stringIndexes[var0] + a4 forIndex:var0, v16, v17, v18, v19, v20, v21, v22, v23];
      ++var0;
    }

    while (var0 < v15);
  }
}

- (void)insertGlyphsAtRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  interface = self->_interface;
  glyphCount = interface->_glyphCount;
  [(CTGlyphStorageInterface *)interface insertGlyphs:a3.var0 - 1];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v9 = AssociatedObject;
      [AssociatedObject setLength:16 * (glyphCount + var1)];
      v10 = [v9 mutableBytes];
      if (glyphCount - var0 >= 1)
      {

        memmove((v10 + 16 * var0 + 16 * var1), (v10 + 16 * var0), 16 * (glyphCount - var0));
      }
    }
  }
}

- (void)swapGlyphsAtIndex:(int64_t)a3 withIndex:(int64_t)a4
{
  [CTGlyphStorageInterface swapGlyph:"swapGlyph:withIndex:" withIndex:?];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v8 = [AssociatedObject mutableBytes];
      v9 = *(v8 + 16 * a3);
      *(v8 + 16 * a3) = *(v8 + 16 * a4);
      *(v8 + 16 * a4) = v9;
    }
  }
}

- (void)moveGlyphsFromRange:(id)a3 toIndex:(int64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(CTGlyphStorageInterface *)self->_interface moveGlyphsTo:a4 from:a3.var0, a3.var1];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v9 = [AssociatedObject mutableBytes];
      v10 = (v9 + 16 * var0);
      v11 = (v9 + 16 * a4);

      memmove(v11, v10, 16 * var1);
    }
  }
}

@end