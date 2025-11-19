@interface CPTableCell
- ($0AC6E346AE4835514AAA8AC86D8F4844)columnSpan;
- ($0AC6E346AE4835514AAA8AC86D8F4844)rowSpan;
- (CGColor)backgroundColor;
- (CGColor)colorOfBorder:(int)a3;
- (CGRect)boundsOfBorder:(int)a3;
- (CGRect)cellBounds;
- (CPTableCell)initWithBounds:(CGRect)a3;
- (id)backgroundGraphicAtIndex:(unsigned int)a3;
- (id)graphicObjectOfBorder:(int)a3 atIndex:(unsigned int)a4;
- (int64_t)compareCellOrdinal:(id)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)setBackgroundGraphics:(id)a3;
- (void)setBorder:(int)a3 bounds:(CGRect)a4 graphics:(id)a5;
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

- (int64_t)compareCellOrdinal:(id)a3
{
  v5 = [(CPTableCell *)self rowSpan];
  v6 = [a3 rowSpan];
  if (v5 < v6)
  {
    return -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v8 = [(CPTableCell *)self columnSpan];
  v9 = [a3 columnSpan];
  if (v8 < v9)
  {
    return -1;
  }

  else
  {
    return v8 > v9;
  }
}

- (id)graphicObjectOfBorder:(int)a3 atIndex:(unsigned int)a4
{
  v4 = &self->borders[a3];
  if (v4->var2 <= a4)
  {
    return 0;
  }

  else
  {
    return v4->var3[a4];
  }
}

- (CGColor)colorOfBorder:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &self->borders[a3];
  if (!v5->var1)
  {
    if (v5->var2 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = *self->borders[a3].var3;
      if ([v6 parent] && (v7 = objc_msgSend(v6, "fillColor")) != 0 || (v7 = objc_msgSend(v6, "strokeColor")) != 0)
      {
        v8 = v7;
        CFRetain(v7);
        self->borders[a3].var1 = v8;
      }
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v11[0] = xmmword_184564878;
      v11[1] = unk_184564888;
      self->borders[a3].var1 = CGColorCreate(DeviceRGB, v11);
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return self->borders[a3].var1;
}

- (CGRect)boundsOfBorder:(int)a3
{
  v3 = &self->borders[a3];
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

- (void)setBorder:(int)a3 bounds:(CGRect)a4 graphics:(id)a5
{
  borders = self->borders;
  v8 = a3;
  v9 = &borders[a3];
  v9->var0 = a4;
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

    free(borders[v8].var3);
    self->borders[v8].var3 = 0;
  }

  if (a5)
  {
    v12 = [a5 count];
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      self->borders[v8].var3 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
      do
      {
        self->borders[v8].var3[v14] = [a5 objectAtIndex:v14];
        ++v14;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v13 = 0;
  }

  self->borders[v8].var2 = v13;
}

- (id)backgroundGraphicAtIndex:(unsigned int)a3
{
  if (self->backgroundGraphicCount <= a3)
  {
    return 0;
  }

  else
  {
    return self->backgroundGraphics[a3];
  }
}

- (void)setBackgroundGraphics:(id)a3
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
  if (a3)
  {
    v7 = [a3 count];
    self->backgroundGraphicCount = v7;
    if (v7)
    {
      self->backgroundGraphics = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
      if (self->backgroundGraphicCount)
      {
        v8 = 0;
        do
        {
          self->backgroundGraphics[v8] = [a3 objectAtIndex:v8];
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
      v4 = [*self->backgroundGraphics fillColor];
      if (v4)
      {
        backgroundColor = v4;
        CFRetain(v4);
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

- (CPTableCell)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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