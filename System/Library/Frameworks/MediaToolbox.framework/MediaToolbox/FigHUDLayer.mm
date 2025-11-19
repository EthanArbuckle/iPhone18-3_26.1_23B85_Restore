@interface FigHUDLayer
- (FigHUDLayer)init;
- (int64_t)addLine:(__CFString *)a3 withLabelColorIndex:(int)a4 withValueColorIndex:(int)a5;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)resetLines;
- (void)setFont:(__CFString *)a3 withPointSize:(double)a4;
- (void)setValue:(__CFString *)a3 atIndex:(int)a4;
- (void)setValueAtIndex:(int)a3 format:(id)a4;
@end

@implementation FigHUDLayer

- (FigHUDLayer)init
{
  keys[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69659D8];
  keys[0] = *MEMORY[0x1E6965658];
  keys[1] = v2;
  v3 = *MEMORY[0x1E695E738];
  values[0] = v3;
  values[1] = v3;
  v10.receiver = self;
  v10.super_class = FigHUDLayer;
  v4 = [(FigHUDLayer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_Font = v3;
    v4->_FontSize = 24.0;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_TextAttributes = CFDictionaryCreateMutableCopy(v6, 2, v7);
    CFRelease(v7);
    v8 = MEMORY[0x1E695E9C0];
    v5->_Labels = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
    v5->_Values = CFArrayCreateMutable(v6, 0, v8);
    v5->_LabelColors = CFArrayCreateMutable(v6, 0, v8);
    v5->_ValueColors = CFArrayCreateMutable(v6, 0, v8);
  }

  return v5;
}

- (void)dealloc
{
  Font = self->_Font;
  if (Font)
  {
    v4 = Font == *MEMORY[0x1E695E738];
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    CFRelease(Font);
  }

  TextAttributes = self->_TextAttributes;
  if (TextAttributes)
  {
    CFRelease(TextAttributes);
  }

  Labels = self->_Labels;
  if (Labels)
  {
    CFRelease(Labels);
  }

  Values = self->_Values;
  if (Values)
  {
    CFRelease(Values);
  }

  LabelColors = self->_LabelColors;
  if (LabelColors)
  {
    CFRelease(LabelColors);
  }

  ValueColors = self->_ValueColors;
  if (ValueColors)
  {
    CFRelease(ValueColors);
  }

  v10.receiver = self;
  v10.super_class = FigHUDLayer;
  [(FigHUDLayer *)&v10 dealloc];
}

- (void)setFont:(__CFString *)a3 withPointSize:(double)a4
{
  Font = self->_Font;
  v8 = *MEMORY[0x1E695E738];
  if (Font != *MEMORY[0x1E695E738])
  {
    CFRelease(Font);
    self->_Font = v8;
  }

  self->_FontSize = a4;
  v9 = CTFontCreateWithName(a3, a4, 0);
  self->_Font = v9;
  TextAttributes = self->_TextAttributes;
  v11 = *MEMORY[0x1E6965658];

  CFDictionarySetValue(TextAttributes, v11, v9);
}

- (void)resetLines
{
  Labels = self->_Labels;
  if (Labels)
  {
    CFArrayRemoveAllValues(Labels);
  }

  Values = self->_Values;
  if (Values)
  {
    CFArrayRemoveAllValues(Values);
  }

  LabelColors = self->_LabelColors;
  if (LabelColors)
  {
    CFArrayRemoveAllValues(LabelColors);
  }

  ValueColors = self->_ValueColors;
  if (ValueColors)
  {

    CFArrayRemoveAllValues(ValueColors);
  }
}

- (int64_t)addLine:(__CFString *)a3 withLabelColorIndex:(int)a4 withValueColorIndex:(int)a5
{
  v8 = figHUDCGColorCreateWithIndex(a4);
  v9 = figHUDCGColorCreateWithIndex(a5);
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a3);
  CFArrayAppendValue(self->_Labels, Copy);
  CFArrayAppendValue(self->_LabelColors, v8);
  CFArrayAppendValue(self->_Values, *MEMORY[0x1E695E738]);
  CFArrayAppendValue(self->_ValueColors, v9);
  CFRelease(Copy);
  CFRelease(v8);
  CFRelease(v9);
  return CFArrayGetCount(self->_Labels) - 1;
}

- (void)setValue:(__CFString *)a3 atIndex:(int)a4
{
  if (CFArrayGetCount(self->_Values) > a4)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a3);
    CFArraySetValueAtIndex(self->_Values, a4, Copy);

    CFRelease(Copy);
  }
}

- (void)setValueAtIndex:(int)a3 format:(id)a4
{
  if (CFArrayGetCount(self->_Values) > a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a4 arguments:&v8];
    CFArraySetValueAtIndex(self->_Values, a3, v7);
  }
}

- (void)drawInContext:(CGContext *)a3
{
  CGAffineTransformMakeScale(&v20, 1.0, -1.0);
  CGContextSetTextMatrix(a3, &v20);
  v5 = *MEMORY[0x1E695E738];
  if (self->_Font == *MEMORY[0x1E695E738])
  {
    v6 = CTFontCreateWithName(@"Helvetica", self->_FontSize, 0);
    self->_Font = v6;
    CFDictionarySetValue(self->_TextAttributes, *MEMORY[0x1E6965658], v6);
  }

  if (CFArrayGetCount(self->_Labels) <= 0)
  {
    v8 = *MEMORY[0x1E69659D8];
  }

  else
  {
    value = v5;
    v7 = 0;
    v8 = *MEMORY[0x1E69659D8];
    alloc = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_Labels, v7);
      v10 = CFArrayGetValueAtIndex(self->_Values, v7);
      v11 = CFArrayGetValueAtIndex(self->_LabelColors, v7);
      v12 = CFArrayGetValueAtIndex(self->_ValueColors, v7);
      CFDictionarySetValue(self->_TextAttributes, v8, v11);
      cf = CFAttributedStringCreate(alloc, ValueAtIndex, self->_TextAttributes);
      CFDictionarySetValue(self->_TextAttributes, v8, v12);
      v13 = CFAttributedStringCreate(alloc, v10, self->_TextAttributes);
      v14 = CTLineCreateWithAttributedString(cf);
      v15 = CTLineCreateWithAttributedString(v13);
      CGContextSetTextPosition(a3, 0.0, self->_FontSize * ++v7);
      CTLineDraw(v14, a3);
      [(FigHUDLayer *)self bounds];
      CGContextSetTextPosition(a3, v16 * 0.5, self->_FontSize * v7);
      CTLineDraw(v15, a3);
      CFRelease(v14);
      CFRelease(v15);
      CFRelease(cf);
      CFRelease(v13);
    }

    while (CFArrayGetCount(self->_Labels) > v7);
    v5 = value;
  }

  CFDictionarySetValue(self->_TextAttributes, v8, v5);
}

@end