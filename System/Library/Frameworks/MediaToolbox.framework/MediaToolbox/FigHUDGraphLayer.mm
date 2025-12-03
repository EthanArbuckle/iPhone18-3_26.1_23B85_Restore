@interface FigHUDGraphLayer
- (FigHUDGraphLayer)init;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)setUpGraph:(int)graph min:(float)min max:(float)max numValues:(int)values;
- (void)setUpGraphs:(int)graphs;
- (void)updateValue:(int)value value:(float)a4 label:(id)label;
@end

@implementation FigHUDGraphLayer

- (void)setUpGraphs:(int)graphs
{
  if (self->_NumGraphs != graphs)
  {
    Mins = self->_Mins;
    if (Mins)
    {
      free(Mins);
    }

    self->_Mins = malloc_type_malloc(4 * graphs, 0x100004052888210uLL);
    Maxes = self->_Maxes;
    if (Maxes)
    {
      free(Maxes);
    }

    self->_Maxes = malloc_type_malloc(4 * graphs, 0x100004052888210uLL);
    NumValues = self->_NumValues;
    if (NumValues)
    {
      free(NumValues);
    }

    self->_NumValues = malloc_type_malloc(4 * graphs, 0x100004052888210uLL);
    Values = self->_Values;
    if (Values)
    {
      free(Values);
    }

    self->_Values = malloc_type_malloc(8 * graphs, 0x80040B8603338uLL);
    valueLabels = self->_valueLabels;
    if (valueLabels)
    {
    }

    self->_valueLabels = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:graphs];
    if (graphs >= 1)
    {
      v10 = 0;
      do
      {
        self->_Mins[v10] = 0.0;
        self->_Maxes[v10] = 0.0;
        self->_NumValues[v10] = 0;
        self->_Values[v10++] = 0;
      }

      while (graphs != v10);
    }

    StartIndex = self->_StartIndex;
    if (StartIndex)
    {
      free(StartIndex);
    }

    self->_StartIndex = malloc_type_malloc(4 * graphs, 0x100004052888210uLL);
    self->_NumGraphs = graphs;
  }
}

- (void)updateValue:(int)value value:(float)a4 label:(id)label
{
  if (self->_NumGraphs > value)
  {
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    valueCopy = value;
    if (self->_Maxes[value] < a4)
    {
      a4 = self->_Maxes[value];
    }

    Mins = self->_Mins;
    if (a4 < Mins[value])
    {
      a4 = Mins[value];
    }

    v17 = self->_StartIndex[value];
    self->_Values[value][v17] = a4;
    v18 = [(NSMutableArray *)self->_valueLabels objectAtIndex:value, v10, v9, v19, v20, v21, v22, v11, v12];
    if (!label)
    {
      label = [MEMORY[0x1E695DFB0] null];
    }

    [v18 setObject:label atIndexedSubscript:v17];
    self->_StartIndex[valueCopy] = (self->_StartIndex[valueCopy] + 1) % self->_NumValues[valueCopy];
  }
}

- (FigHUDGraphLayer)init
{
  keys[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69659D8];
  keys[0] = *MEMORY[0x1E6965658];
  keys[1] = v2;
  v3 = *MEMORY[0x1E695E738];
  values[0] = v3;
  values[1] = v3;
  v9.receiver = self;
  v9.super_class = FigHUDGraphLayer;
  v4 = [(FigHUDGraphLayer *)&v9 init];
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
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_TextAttributes = CFDictionaryCreateMutableCopy(v6, 2, v7);
    CFRelease(v7);
  }

  return v5;
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
    v13 = Font == *MEMORY[0x1E695E738];
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
  v15.super_class = FigHUDGraphLayer;
  [(FigHUDGraphLayer *)&v15 dealloc];
}

- (void)drawInContext:(CGContext *)context
{
  v78 = *MEMORY[0x1E69E9840];
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v80 = CGContextGetClipBoundingBox(context);
  x = v80.origin.x;
  y = v80.origin.y;
  v8 = v80.size.width;
  v9 = v80.size.height;
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
    v72 = NumGraphs - 1;
    v15 = 0.0;
  }

  else
  {
    v72 = 0;
    v9 = v80.size.height + -24.0;
    v15 = 12.0;
    y = v80.origin.y + 12.0;
  }

  CGAffineTransformMakeScale(&v77, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v77);
  if (self->_Font == *MEMORY[0x1E695E738])
  {
    v16 = CTFontCreateWithName(@"Helvetica", 12.0, 0);
    self->_Font = v16;
    CFDictionarySetValue(self->_TextAttributes, *MEMORY[0x1E6965658], v16);
  }

  v17 = figHUDCGColorCreateWithRGB(0.5, 0.5, 0.5, 0.5);
  CGContextSetFillColorWithColor(context, v17);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = v8;
  v81.size.height = v9;
  CGContextFillRect(context, v81);
  CFRelease(v17);
  p_c = &v77.c;
  v19 = -3;
  do
  {
    *(p_c - 2) = 0.0;
    v20 = v15 + v9 * (v19 + 4) * 0.25;
    *(p_c - 1) = v20;
    *p_c = v8;
    p_c[1] = v20;
    p_c += 4;
  }

  while (!__CFADD__(v19++, 1));
  v22 = figHUDCGColorCreateWithRGB(0.0, 0.0, 0.0, 1.0);
  contextCopy2 = context;
  CGContextSetStrokeColorWithColor(context, v22);
  CGContextStrokeLineSegments(context, &v77, 6uLL);
  CFRelease(v22);
  if (self->_Lines && self->_NumValues && self->_Values)
  {
    v24 = self->_NumGraphs;
    if (v24 >= 1)
    {
      v25 = 0;
      v26 = v9 + -2.0;
      v27 = v9 + -1.0 + v15;
      v28 = -v26;
      alloc = *MEMORY[0x1E695E480];
      do
      {
        v29 = self->_NumValues[v25];
        if (v29 >= 2 && self->_Values[v25])
        {
          v30 = self->_Mins;
          if (v30)
          {
            v31 = v30[v25];
          }

          else
          {
            v31 = 0.0;
          }

          v32 = self->_Maxes;
          if (v32)
          {
            v33 = v32[v25];
          }

          else
          {
            v33 = 1.0;
          }

          v34 = 0;
          v35 = 0;
          v36 = (v29 - 1);
          v37 = v8 / v36;
          v38 = v28 / (v33 - v31);
          do
          {
            v39 = self->_NumValues[v25];
            v40 = (v35 + self->_StartIndex[v25]) % v39;
            v41 = (v40 + 1) % v39;
            v42 = v35;
            v43 = &self->_Lines[v34];
            v43->x = v37 * v42;
            v44 = self->_Values[v25];
            v43->y = v27 + v38 * (v44[v40] - v31);
            v43[1].x = v37 + v37 * v42;
            v43[1].y = v27 + v38 * (v44[v41] - v31);
            if ([-[NSMutableArray objectAtIndex:](self->_valueLabels objectAtIndex:{v25), "count"}] > v40)
            {
              v45 = [-[NSMutableArray objectAtIndex:](self->_valueLabels objectAtIndex:{v25), "objectAtIndex:", v40}];
              if (v45)
              {
                v46 = v45;
                if (v45 != [MEMORY[0x1E695DFB0] null])
                {
                  v47 = CFAttributedStringCreate(alloc, v46, self->_TextAttributes);
                  v48 = CTLineCreateWithAttributedString(v47);
                  [(FigHUDGraphLayer *)self contentsScale];
                  CGContextSetTextPosition(context, self->_Lines[v34].x, (v49 + v49) * (([(FigHUDGraphLayer *)self contentsAreFlipped]<< 31) >> 31) + self->_Lines[v34].y);
                  CTLineDraw(v48, context);
                  CFRelease(v47);
                  CFRelease(v48);
                }
              }
            }

            ++v35;
            v34 += 2;
          }

          while (v36 != v35);
          v50 = figHUDCGColorCreateWithIndex(v25);
          v51 = 1.0;
          if (!v25)
          {
            v51 = 2.0;
          }

          contextCopy2 = context;
          CGContextSetLineWidth(context, v51);
          CGContextSetStrokeColorWithColor(context, v50);
          CGContextStrokeLineSegments(context, self->_Lines, (2 * v36));
          CFRelease(v50);
          v24 = self->_NumGraphs;
        }

        ++v25;
      }

      while (v25 < v24);
    }

    CGContextSetLineWidth(contextCopy2, 1.0);
    v52 = self->_NumGraphs;
    if (v52 > v72)
    {
      key = *MEMORY[0x1E69659D8];
      v71 = *MEMORY[0x1E695E480];
      v53 = v52 - 1;
      PenOffsetForFlush = 0.0;
      v55 = 0.0;
      do
      {
        v56 = self->_Mins;
        v57 = 0.0;
        if (v56)
        {
          v57 = v56[v53];
        }

        v58 = self->_Maxes;
        if (v58)
        {
          v59 = v58[v53];
        }

        else
        {
          v59 = 1.0;
        }

        if (v72)
        {
          v60 = figHUDCGColorCreateWithRGB(1.0, 1.0, 1.0, 1.0);
        }

        else
        {
          v60 = figHUDCGColorCreateWithIndex(v52 - 1);
        }

        cf = v60;
        CFDictionarySetValue(self->_TextAttributes, key, v60);
        v61 = CFStringCreateWithFormat(v71, 0, @"%1.1f", *&v59);
        v62 = CFStringCreateWithFormat(v71, 0, @"%1.1f", *&v57);
        v63 = CFAttributedStringCreate(v71, v61, self->_TextAttributes);
        v64 = CFAttributedStringCreate(v71, v62, self->_TextAttributes);
        v65 = CTLineCreateWithAttributedString(v63);
        v66 = CTLineCreateWithAttributedString(v64);
        ImageBounds = CTLineGetImageBounds(v65, context);
        v67 = ImageBounds.size.width;
        v68 = ImageBounds.size.height;
        v83 = CTLineGetImageBounds(v66, context);
        if (v52 == self->_NumGraphs)
        {
          PenOffsetForFlush = CTLineGetPenOffsetForFlush(v65, 1.0, width);
          v55 = CTLineGetPenOffsetForFlush(v66, 1.0, width);
        }

        else
        {
          PenOffsetForFlush = PenOffsetForFlush + v67 * -1.25;
          v55 = v55 + v83.size.width * -1.25;
        }

        if (v55 < PenOffsetForFlush)
        {
          PenOffsetForFlush = v55;
        }

        CGContextSetTextPosition(context, PenOffsetForFlush, v68 + v68 * 0.25);
        CTLineDraw(v65, context);
        CGContextSetTextPosition(context, PenOffsetForFlush, height + v68 * -0.25);
        CTLineDraw(v66, context);
        CFRelease(v63);
        CFRelease(v65);
        CFRelease(v61);
        CFRelease(v64);
        CFRelease(v66);
        CFRelease(v62);
        CFRelease(cf);
        --v52;
      }

      while (v53-- > v72);
    }
  }
}

- (void)setUpGraph:(int)graph min:(float)min max:(float)max numValues:(int)values
{
  graphCopy = graph;
  if (self->_NumValues[graph] == values)
  {
    goto LABEL_6;
  }

  v11 = self->_Values[graph];
  if (v11)
  {
    free(v11);
  }

  self->_Values[graphCopy] = malloc_type_malloc(4 * values, 0x100004052888210uLL);
  if (self->_Values[graphCopy])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:values];
    [(NSMutableArray *)self->_valueLabels setObject:v12 atIndexedSubscript:graphCopy];

LABEL_6:
    if (self->_MaxLength < values)
    {
      Lines = self->_Lines;
      if (Lines)
      {
        free(Lines);
      }

      self->_Lines = malloc_type_malloc(32 * values, 0x1000040451B5BE8uLL);
      self->_MaxLength = values;
    }

    if (values >= 1)
    {
      v14 = (values + 3) & 0xFFFFFFFC;
      v15 = vdupq_n_s64(values - 1);
      v16 = self->_Values[graphCopy] + 2;
      v17 = xmmword_196E73080;
      v18 = xmmword_196E73090;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v15, v18));
        if (vuzp1_s16(v20, *v15.i8).u8[0])
        {
          *(v16 - 2) = min;
        }

        if (vuzp1_s16(v20, *&v15).i8[2])
        {
          *(v16 - 1) = min;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v17))).i32[1])
        {
          *v16 = min;
          v16[1] = min;
        }

        v17 = vaddq_s64(v17, v19);
        v18 = vaddq_s64(v18, v19);
        v16 += 4;
        v14 -= 4;
      }

      while (v14);
    }

    self->_Mins[graphCopy] = min;
    self->_Maxes[graphCopy] = max;
    self->_NumValues[graphCopy] = values;
    self->_StartIndex[graphCopy] = 0;
  }
}

@end