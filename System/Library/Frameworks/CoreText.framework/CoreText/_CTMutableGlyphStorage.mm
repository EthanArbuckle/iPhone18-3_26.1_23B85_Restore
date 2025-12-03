@interface _CTMutableGlyphStorage
- (CGPoint)originAtIndex:(int64_t)index;
- (CGSize)customAdvanceForIndex:(int64_t)index;
- (_CTMutableGlyphStorage)initWithInterface:(id)interface options:(unsigned int)options;
- (id)copyWithRange:(id)range;
- (int64_t)attachmentCountAtIndex:(int64_t)index;
- (void)getCustomAdvances:(CGSize *)advances forIndexes:(const int64_t *)indexes count:(int64_t)count;
- (void)insertGlyphsAtRange:(id)range;
- (void)moveGlyphsFromRange:(id)range toIndex:(int64_t)index;
- (void)puntStringIndicesInRange:(id)range by:(int64_t)by;
- (void)resetOrigins:(id)origins;
- (void)setOrigin:(CGPoint)origin atIndex:(int64_t)index;
- (void)swapGlyphsAtIndex:(int64_t)index withIndex:(int64_t)withIndex;
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

- (_CTMutableGlyphStorage)initWithInterface:(id)interface options:(unsigned int)options
{
  if (interface)
  {
    optionsCopy = options;
    v6 = *(interface + 1);
    v10.receiver = self;
    v10.super_class = _CTMutableGlyphStorage;
    v7 = [(_CTGlyphStorage *)&v10 initWithCount:v6];
    v8 = v7;
    if (v7)
    {
      v7->_interface = interface;
      v7->super._glyphs = *(interface + 2);
      v7->super._advances = *(interface + 3);
      v7->super._props = *(interface + 4);
      v7->super._stringIndices = *(interface + 5);
      if (objc_opt_respondsToSelector())
      {
        v8->_implementsOrigins = 1;
      }

      if (optionsCopy)
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

- (id)copyWithRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = [(CTGlyphStorageInterface *)self->_interface createCopy:?];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      bytes = [AssociatedObject bytes];
      var1 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:bytes + 16 * var0 length:16 * var1];
      objc_setAssociatedObject(v6, sOriginsAssociationKey, var1, 0x301);
    }
  }

  return v6;
}

- (CGSize)customAdvanceForIndex:(int64_t)index
{
  if (self->super._glyphs[index] == -1)
  {
    v5 = *MEMORY[0x1E695F060];
  }

  else
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    [(CTGlyphStorageInterface *)self->_interface getCustomAdvance:&v5 forIndex:index];
  }

  v4 = *(&v5 + 1);
  v3 = *&v5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)getCustomAdvances:(CGSize *)advances forIndexes:(const int64_t *)indexes count:(int64_t)count
{
  if (self->_implementsCustomAdvancesForIndexes)
  {
    [(CTGlyphStorageInterface *)self->_interface getCustomAdvances:advances forIndexes:indexes count:count];
  }
}

- (int64_t)attachmentCountAtIndex:(int64_t)index
{
  absorbedCounts = self->_interface->_absorbedCounts;
  if (absorbedCounts)
  {
    return absorbedCounts[index];
  }

  else
  {
    return 0;
  }
}

- (void)resetOrigins:(id)origins
{
  if (!self->_implementsOrigins)
  {
    var1 = origins.var1;
    var0 = origins.var0;
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      mutableBytes = [AssociatedObject mutableBytes];
      if (var1 >= 1)
      {
        v7 = (mutableBytes + 16 * var0);
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

- (CGPoint)originAtIndex:(int64_t)index
{
  if (self->_implementsOrigins)
  {
    origins = self->_interface->_origins;
    if (origins)
    {
      p_x = &origins[index].x;
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
      p_x = ([AssociatedObject bytes] + 16 * index);
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

- (void)setOrigin:(CGPoint)origin atIndex:(int64_t)index
{
  y = origin.y;
  x = origin.x;
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
    v11 = ([v10 mutableBytes] + 16 * index);
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

- (void)puntStringIndicesInRange:(id)range by:(int64_t)by
{
  if (by && range.var1 >= 1)
  {
    v16 = v9;
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v10;
    v23 = v11;
    var0 = range.var0;
    v15 = range.var0 + range.var1;
    do
    {
      [(CTGlyphStorageInterface *)self->_interface setStringIndex:self->_interface->_stringIndexes[var0] + by forIndex:var0, v16, v17, v18, v19, v20, v21, v22, v23];
      ++var0;
    }

    while (var0 < v15);
  }
}

- (void)insertGlyphsAtRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  interface = self->_interface;
  glyphCount = interface->_glyphCount;
  [(CTGlyphStorageInterface *)interface insertGlyphs:range.var0 - 1];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      v9 = AssociatedObject;
      [AssociatedObject setLength:16 * (glyphCount + var1)];
      mutableBytes = [v9 mutableBytes];
      if (glyphCount - var0 >= 1)
      {

        memmove((mutableBytes + 16 * var0 + 16 * var1), (mutableBytes + 16 * var0), 16 * (glyphCount - var0));
      }
    }
  }
}

- (void)swapGlyphsAtIndex:(int64_t)index withIndex:(int64_t)withIndex
{
  [CTGlyphStorageInterface swapGlyph:"swapGlyph:withIndex:" withIndex:?];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      mutableBytes = [AssociatedObject mutableBytes];
      v9 = *(mutableBytes + 16 * index);
      *(mutableBytes + 16 * index) = *(mutableBytes + 16 * withIndex);
      *(mutableBytes + 16 * withIndex) = v9;
    }
  }
}

- (void)moveGlyphsFromRange:(id)range toIndex:(int64_t)index
{
  var1 = range.var1;
  var0 = range.var0;
  [(CTGlyphStorageInterface *)self->_interface moveGlyphsTo:index from:range.var0, range.var1];
  if (!self->_implementsOrigins)
  {
    AssociatedObject = objc_getAssociatedObject(self, sOriginsAssociationKey);
    if (AssociatedObject)
    {
      mutableBytes = [AssociatedObject mutableBytes];
      v10 = (mutableBytes + 16 * var0);
      v11 = (mutableBytes + 16 * index);

      memmove(v11, v10, 16 * var1);
    }
  }
}

@end