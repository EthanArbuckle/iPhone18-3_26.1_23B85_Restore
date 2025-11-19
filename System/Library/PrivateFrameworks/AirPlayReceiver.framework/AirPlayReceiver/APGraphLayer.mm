@interface APGraphLayer
+ (CGColor)copyGraphColorWithIndex:(int)a3;
- (APGraphLayer)init;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)setUpGraph:(int)a3 min:(float)a4 max:(float)a5 numValues:(int)a6;
- (void)setUpGraphs:(int)a3;
- (void)updateValue:(int)a3 value:(float)a4;
@end

@implementation APGraphLayer

- (void)drawInContext:(CGContext *)a3
{
  v70[10] = *MEMORY[0x277D85DE8];
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  c = a3;
  v72 = CGContextGetClipBoundingBox(a3);
  x = v72.origin.x;
  y = v72.origin.y;
  v8 = v72.size.width;
  v9 = v72.size.height;
  NumGraphs = self->_NumGraphs;
  if (NumGraphs < 2)
  {
    v14 = 1;
  }

  else
  {
    v11 = 0;
    Mins = self->_Mins;
    while (!Mins || Mins[v11] == Mins[v11 + 1])
    {
      Maxes = self->_Maxes;
      if (Maxes)
      {
        if (Maxes[v11] != Maxes[v11 + 1])
        {
          break;
        }
      }

      if (NumGraphs - 1 == ++v11)
      {
        goto LABEL_12;
      }
    }

    v14 = v11 + 1;
  }

  if (v14 == NumGraphs)
  {
LABEL_12:
    v65 = NumGraphs - 1;
    v15 = 0.0;
  }

  else
  {
    v65 = 0;
    v9 = v72.size.height + -24.0;
    v15 = 12.0;
    y = v72.origin.y + 12.0;
  }

  v16 = CGColorCreateWithRGB();
  CGContextSetFillColorWithColor(a3, v16);
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = v8;
  v73.size.height = v9;
  CGContextFillRect(a3, v73);
  CFRelease(v16);
  v17 = v70;
  v18 = -3;
  do
  {
    *(v17 - 2) = 0.0;
    v19 = v15 + v9 * (v18 + 4) * 0.25;
    *(v17 - 1) = v19;
    *v17 = v8;
    v17[1] = v19;
    v17 += 4;
  }

  while (!__CFADD__(v18++, 1));
  v21 = CGColorCreateWithRGB();
  CGContextSetStrokeColorWithColor(a3, v21);
  CGContextStrokeLineSegments(a3, &points, 6uLL);
  CFRelease(v21);
  if (self->_Lines && self->_NumValues && self->_Values)
  {
    v22 = self->_NumGraphs;
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = v9 + -1.0 + v15;
      v25 = -(v9 + -2.0);
      do
      {
        v26 = self->_NumValues[v23];
        if (v26 >= 2)
        {
          v27 = self->_Values[v23];
          if (v27)
          {
            v28 = self->_Mins;
            if (v28)
            {
              v29 = v28[v23];
            }

            else
            {
              v29 = 0.0;
            }

            v30 = self->_Maxes;
            if (v30)
            {
              v31 = v30[v23];
            }

            else
            {
              v31 = 1.0;
            }

            v32 = 0;
            v33 = (v26 - 1);
            v34 = v8 / v33;
            v35 = self->_StartIndex[v23];
            v36 = self->_Lines + 1;
            v37 = v25 / (v31 - v29);
            do
            {
              v38 = (v35 + v32) % v26;
              v39 = v32;
              v40 = v24 + v37 * (v27[v38] - v29);
              v41 = (v27[(v38 + 1) % v26] - v29);
              v36[-1].x = v34 * v39;
              v36[-1].y = v40;
              v36->x = v34 + v34 * v39;
              v36->y = v24 + v37 * v41;
              v36 += 2;
              ++v32;
            }

            while (v33 != v32);
            v42 = [APGraphLayer copyGraphColorWithIndex:v23];
            CGContextSetStrokeColorWithColor(a3, v42);
            CGContextStrokeLineSegments(a3, self->_Lines, (2 * v33));
            CFRelease(v42);
            v22 = self->_NumGraphs;
          }
        }

        ++v23;
      }

      while (v23 < v22);
    }

    CGAffineTransformMakeScale(&v68, 1.0, -1.0);
    CGContextSetTextMatrix(a3, &v68);
    if (self->_Font == *MEMORY[0x277CBEEE8])
    {
      v43 = CTFontCreateWithName(@"Helvetica", 12.0, 0);
      self->_Font = v43;
      CFDictionarySetValue(self->_TextAttributes, *MEMORY[0x277CC4838], v43);
    }

    v44 = self->_NumGraphs;
    if (v44 > v65)
    {
      alloc = *MEMORY[0x277CBECE8];
      key = *MEMORY[0x277CC49C0];
      v45 = v44 - 1;
      PenOffsetForFlush = 0.0;
      v47 = 0.0;
      do
      {
        v48 = self->_Mins;
        v49 = 0.0;
        if (v48)
        {
          v49 = v48[v45];
        }

        v50 = self->_Maxes;
        if (v50)
        {
          v51 = v50[v45];
        }

        else
        {
          v51 = 1.0;
        }

        if (v65)
        {
          v52 = CGColorCreateWithRGB();
        }

        else
        {
          v52 = [APGraphLayer copyGraphColorWithIndex:(v44 - 1)];
        }

        cf = v52;
        CFDictionarySetValue(self->_TextAttributes, key, v52);
        v53 = CFStringCreateWithFormat(alloc, 0, @"%1.1f", *&v51);
        v54 = CFStringCreateWithFormat(alloc, 0, @"%1.1f", *&v49);
        v55 = CFAttributedStringCreate(alloc, v53, self->_TextAttributes);
        v56 = CFAttributedStringCreate(alloc, v54, self->_TextAttributes);
        v57 = CTLineCreateWithAttributedString(v55);
        v58 = CTLineCreateWithAttributedString(v56);
        ImageBounds = CTLineGetImageBounds(v57, c);
        v59 = ImageBounds.size.width;
        v60 = ImageBounds.size.height;
        v75 = CTLineGetImageBounds(v58, c);
        if (v44 == self->_NumGraphs)
        {
          PenOffsetForFlush = CTLineGetPenOffsetForFlush(v57, 1.0, width);
          v47 = CTLineGetPenOffsetForFlush(v58, 1.0, width);
        }

        else
        {
          PenOffsetForFlush = PenOffsetForFlush + v59 * -1.25;
          v47 = v47 + v75.size.width * -1.25;
        }

        if (v47 < PenOffsetForFlush)
        {
          PenOffsetForFlush = v47;
        }

        CGContextSetTextPosition(c, PenOffsetForFlush, v60 + v60 * 0.25);
        CTLineDraw(v57, c);
        CGContextSetTextPosition(c, PenOffsetForFlush, height + v60 * -0.25);
        CTLineDraw(v58, c);
        CFRelease(v55);
        CFRelease(v57);
        CFRelease(v53);
        CFRelease(v56);
        CFRelease(v58);
        CFRelease(v54);
        CFRelease(cf);
        --v44;
      }

      while (v45-- > v65);
    }
  }
}

- (void)dealloc
{
  Lines = self->_Lines;
  if (Lines)
  {
    free(Lines);
  }

  Mins = self->_Mins;
  if (Mins)
  {
    free(Mins);
  }

  Maxes = self->_Maxes;
  if (Maxes)
  {
    free(Maxes);
  }

  NumValues = self->_NumValues;
  if (NumValues)
  {
    free(NumValues);
  }

  Values = self->_Values;
  if (Values)
  {
    NumGraphs = self->_NumGraphs;
    if (NumGraphs >= 1)
    {
      for (i = 0; i < NumGraphs; ++i)
      {
        v10 = self->_Values[i];
        if (v10)
        {
          free(v10);
          NumGraphs = self->_NumGraphs;
        }
      }

      Values = self->_Values;
    }

    free(Values);
  }

  StartIndex = self->_StartIndex;
  if (StartIndex)
  {
    free(StartIndex);
  }

  Font = self->_Font;
  if (Font)
  {
    v13 = Font == *MEMORY[0x277CBEEE8];
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    CFRelease(Font);
  }

  TextAttributes = self->_TextAttributes;
  if (TextAttributes)
  {
    CFRelease(TextAttributes);
  }

  v15.receiver = self;
  v15.super_class = APGraphLayer;
  [(APGraphLayer *)&v15 dealloc];
}

- (APGraphLayer)init
{
  keys[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC49C0];
  keys[0] = *MEMORY[0x277CC4838];
  keys[1] = v2;
  v3 = *MEMORY[0x277CBEEE8];
  values[0] = v3;
  values[1] = v3;
  v9.receiver = self;
  v9.super_class = APGraphLayer;
  v4 = [(APGraphLayer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_Values = 0;
    v4->_Mins = 0;
    v4->_Maxes = 0;
    v4->_NumValues = 0;
    v4->_NumGraphs = 0;
    v4->_MaxLength = 0;
    v4->_Lines = 0;
    v4->_Font = v3;
    v4->_StartIndex = 0;
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5->_TextAttributes = CFDictionaryCreateMutableCopy(v6, 2, v7);
    CFRelease(v7);
  }

  return v5;
}

- (void)updateValue:(int)a3 value:(float)a4
{
  if (self->_NumGraphs > a3)
  {
    Maxes = self->_Maxes;
    if (Maxes[a3] < a4)
    {
      a4 = Maxes[a3];
    }

    Mins = self->_Mins;
    if (a4 < Mins[a3])
    {
      a4 = Mins[a3];
    }

    StartIndex = self->_StartIndex;
    v7 = StartIndex[a3];
    self->_Values[a3][v7] = a4;
    StartIndex[a3] = (v7 + 1) % self->_NumValues[a3];
  }
}

- (void)setUpGraph:(int)a3 min:(float)a4 max:(float)a5 numValues:(int)a6
{
  v10 = a3;
  if (self->_NumValues[a3] == a6)
  {
    goto LABEL_5;
  }

  v11 = self->_Values[a3];
  if (v11)
  {
    free(v11);
  }

  self->_Values[v10] = malloc_type_malloc(4 * a6, 0x100004052888210uLL);
  if (self->_Values[v10])
  {
LABEL_5:
    if (self->_MaxLength < a6)
    {
      Lines = self->_Lines;
      if (Lines)
      {
        free(Lines);
      }

      self->_Lines = malloc_type_malloc(32 * a6, 0x1000040451B5BE8uLL);
      self->_MaxLength = a6;
    }

    if (a6 >= 1)
    {
      v13 = (a6 + 3) & 0xFFFFFFFC;
      v14 = vdupq_n_s64(a6 - 1);
      v15 = self->_Values[v10] + 2;
      v16 = xmmword_23EAA1850;
      v17 = xmmword_23EAA1810;
      v18 = vdupq_n_s64(4uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v14, v17));
        if (vuzp1_s16(v19, *v14.i8).u8[0])
        {
          *(v15 - 2) = a4;
        }

        if (vuzp1_s16(v19, *&v14).i8[2])
        {
          *(v15 - 1) = a4;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v16))).i32[1])
        {
          *v15 = a4;
          v15[1] = a4;
        }

        v16 = vaddq_s64(v16, v18);
        v17 = vaddq_s64(v17, v18);
        v15 += 4;
        v13 -= 4;
      }

      while (v13);
    }

    self->_Mins[v10] = a4;
    self->_Maxes[v10] = a5;
    self->_NumValues[v10] = a6;
    self->_StartIndex[v10] = 0;
  }
}

- (void)setUpGraphs:(int)a3
{
  if (self->_NumGraphs != a3)
  {
    Mins = self->_Mins;
    if (Mins)
    {
      free(Mins);
    }

    self->_Mins = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    Maxes = self->_Maxes;
    if (Maxes)
    {
      free(Maxes);
    }

    self->_Maxes = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    NumValues = self->_NumValues;
    if (NumValues)
    {
      free(NumValues);
    }

    self->_NumValues = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    Values = self->_Values;
    if (Values)
    {
      free(Values);
    }

    self->_Values = malloc_type_malloc(8 * a3, 0x80040B8603338uLL);
    if (a3 >= 1)
    {
      v9 = 0;
      do
      {
        self->_Mins[v9] = 0.0;
        self->_Maxes[v9] = 0.0;
        self->_NumValues[v9] = 0;
        self->_Values[v9++] = 0;
      }

      while (a3 != v9);
    }

    StartIndex = self->_StartIndex;
    if (StartIndex)
    {
      free(StartIndex);
    }

    self->_StartIndex = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    self->_NumGraphs = a3;
  }
}

+ (CGColor)copyGraphColorWithIndex:(int)a3
{
  RGB = CGColorSpaceGetRGB();

  return CGColorCreate(RGB, &copyGraphColorWithIndex__graphColors[4 * a3]);
}

@end