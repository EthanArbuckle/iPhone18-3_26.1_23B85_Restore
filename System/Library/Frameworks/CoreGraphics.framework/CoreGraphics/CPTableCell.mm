@interface CPTableCell
- ($0AC6E346AE4835514AAA8AC86D8F4844)columnSpan;
- ($0AC6E346AE4835514AAA8AC86D8F4844)rowSpan;
- (CGColor)backgroundColor;
- (CGColor)colorOfBorder:(int)border;
- (CGRect)boundsOfBorder:(int)border;
- (CGRect)cellBounds;
- (CPTableCell)initWithBounds:(CGRect)bounds;
- (id)backgroundGraphicAtIndex:(unsigned int)index;
- (id)graphicObjectOfBorder:(int)border atIndex:(unsigned int)index;
- (int64_t)compareCellOrdinal:(id)ordinal;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)setBackgroundGraphics:(id)graphics;
- (void)setBorder:(int)border bounds:(CGRect)bounds graphics:(id)graphics;
@end

@implementation CPTableCell

- ($0AC6E346AE4835514AAA8AC86D8F4844)columnSpan
{
  p_columnSpan = &self->columnSpan;
  location = self->columnSpan.location;
  length = p_columnSpan->length;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rowSpan
{
  p_rowSpan = &self->rowSpan;
  location = self->rowSpan.location;
  length = p_rowSpan->length;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- (CGRect)cellBounds
{
  x = self->cellBounds.origin.x;
  y = self->cellBounds.origin.y;
  width = self->cellBounds.size.width;
  height = self->cellBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)compareCellOrdinal:(id)ordinal
{
  rowSpan = [(CPTableCell *)self rowSpan];
  rowSpan2 = [ordinal rowSpan];
  if (rowSpan < rowSpan2)
  {
    return -1;
  }

  if (rowSpan > rowSpan2)
  {
    return 1;
  }

  columnSpan = [(CPTableCell *)self columnSpan];
  columnSpan2 = [ordinal columnSpan];
  if (columnSpan < columnSpan2)
  {
    return -1;
  }

  else
  {
    return columnSpan > columnSpan2;
  }
}

- (id)graphicObjectOfBorder:(int)border atIndex:(unsigned int)index
{
  v4 = &self->borders[border];
  if (v4->var2 <= index)
  {
    return 0;
  }

  else
  {
    return v4->var3[index];
  }
}

- (CGColor)colorOfBorder:(int)border
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &self->borders[border];
  if (!v5->var1)
  {
    if (v5->var2 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = *self->borders[border].var3;
      if ([v6 parent] && (v7 = objc_msgSend(v6, "fillColor")) != 0 || (v7 = objc_msgSend(v6, "strokeColor")) != 0)
      {
        v8 = v7;
        CFRetain(v7);
        self->borders[border].var1 = v8;
      }
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v11[0] = xmmword_184564878;
      v11[1] = unk_184564888;
      self->borders[border].var1 = CGColorCreate(DeviceRGB, v11);
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return self->borders[border].var1;
}

- (CGRect)boundsOfBorder:(int)border
{
  v3 = &self->borders[border];
  x = v3->var0.origin.x;
  y = v3->var0.origin.y;
  width = v3->var0.size.width;
  height = v3->var0.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setBorder:(int)border bounds:(CGRect)bounds graphics:(id)graphics
{
  borders = self->borders;
  borderCopy = border;
  v9 = &borders[border];
  v9->var0 = bounds;
  if (v9->var3)
  {
    var2 = v9->var2;
    if (var2)
    {
      v11 = 8 * var2 - 8;
      do
      {

        v11 -= 8;
      }

      while (v11 != -8);
      borders = self->borders;
    }

    free(borders[borderCopy].var3);
    self->borders[borderCopy].var3 = 0;
  }

  if (graphics)
  {
    v12 = [graphics count];
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      self->borders[borderCopy].var3 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
      do
      {
        self->borders[borderCopy].var3[v14] = [graphics objectAtIndex:v14];
        ++v14;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v13 = 0;
  }

  self->borders[borderCopy].var2 = v13;
}

- (id)backgroundGraphicAtIndex:(unsigned int)index
{
  if (self->backgroundGraphicCount <= index)
  {
    return 0;
  }

  else
  {
    return self->backgroundGraphics[index];
  }
}

- (void)setBackgroundGraphics:(id)graphics
{
  backgroundGraphics = self->backgroundGraphics;
  if (backgroundGraphics)
  {
    if (self->backgroundGraphicCount)
    {
      v6 = 0;
      do
      {
      }

      while (v6 < self->backgroundGraphicCount);
      backgroundGraphics = self->backgroundGraphics;
    }

    free(backgroundGraphics);
    self->backgroundGraphics = 0;
  }

  self->backgroundGraphicCount = 0;
  if (graphics)
  {
    v7 = [graphics count];
    self->backgroundGraphicCount = v7;
    if (v7)
    {
      self->backgroundGraphics = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
      if (self->backgroundGraphicCount)
      {
        v8 = 0;
        do
        {
          self->backgroundGraphics[v8] = [graphics objectAtIndex:v8];
          ++v8;
        }

        while (v8 < self->backgroundGraphicCount);
      }
    }
  }
}

- (CGColor)backgroundColor
{
  backgroundColor = self->backgroundColor;
  if (!backgroundColor)
  {
    if (self->backgroundGraphicCount == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      fillColor = [*self->backgroundGraphics fillColor];
      if (fillColor)
      {
        backgroundColor = fillColor;
        CFRetain(fillColor);
        self->backgroundColor = backgroundColor;
      }

      else
      {
        return self->backgroundColor;
      }
    }

    else
    {
      backgroundColor = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
      self->backgroundColor = backgroundColor;
    }
  }

  return backgroundColor;
}

- (void)dealloc
{
  [(CPTableCell *)self dispose];
  v3.receiver = self;
  v3.super_class = CPTableCell;
  [(CPObject *)&v3 dealloc];
}

- (void)finalize
{
  [(CPTableCell *)self dispose];
  v3.receiver = self;
  v3.super_class = CPTableCell;
  [(CPTableCell *)&v3 finalize];
}

- (void)dispose
{
  if (self->borders)
  {
    for (i = 0; i != 4; ++i)
    {
      v4 = &self->borders[i];
      var1 = v4->var1;
      var2 = v4->var2;
      var3 = v4->var3;
      if (var1)
      {
        CFRelease(var1);
      }

      if (var3)
      {
        if (var2)
        {
          v8 = var2;
          do
          {
          }

          while (v8 * 8);
        }

        free(var3);
      }
    }

    backgroundColor = self->backgroundColor;
    if (backgroundColor)
    {
      CFRelease(backgroundColor);
    }

    self->backgroundColor = 0;
    backgroundGraphics = self->backgroundGraphics;
    if (backgroundGraphics)
    {
      if (self->backgroundGraphicCount)
      {
        v11 = 0;
        do
        {
        }

        while (v11 < self->backgroundGraphicCount);
        backgroundGraphics = self->backgroundGraphics;
      }

      free(backgroundGraphics);
      self->backgroundGraphics = 0;
    }

    self->backgroundGraphicCount = 0;
    free(self->borders);
    self->borders = 0;
  }
}

- (CPTableCell)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12.receiver = self;
  v12.super_class = CPTableCell;
  v7 = [(CPChunk *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->cellBounds.origin.x = x;
    v7->cellBounds.origin.y = y;
    v7->cellBounds.size.width = width;
    v7->cellBounds.size.height = height;
    v7->rowSpan = CPRangeNull;
    v7->columnSpan = CPRangeNull;
    v9 = malloc_type_calloc(4uLL, 0x38uLL, 0x10A0040575B0D7CuLL);
    v10 = 0;
    v8->borders = v9;
    do
    {
      v8->borders[v10++].var0 = CGRectNull;
    }

    while (v10 != 4);
  }

  return v8;
}

@end