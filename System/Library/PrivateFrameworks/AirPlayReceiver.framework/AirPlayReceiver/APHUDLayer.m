@interface APHUDLayer
- (APHUDLayer)init;
- (void)addLine:(__CFString *)a3 withColorIndex:(int)a4;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)setValue:(__CFString *)a3 atIndex:(int)a4;
- (void)setValueAtIndex:(int)a3 format:(id)a4;
@end

@implementation APHUDLayer

- (void)drawInContext:(CGContext *)a3
{
  value = CGColorCreateWithRGB();
  CGAffineTransformMakeScale(&v18, 1.0, -1.0);
  CGContextSetTextMatrix(a3, &v18);
  v16 = *MEMORY[0x277CBEEE8];
  if (self->_Font == *MEMORY[0x277CBEEE8])
  {
    v5 = CTFontCreateWithName(@"Helvetica", 12.0, 0);
    self->_Font = v5;
    CFDictionarySetValue(self->_TextAttributes, *MEMORY[0x277CC4838], v5);
  }

  v6 = 0;
  v7 = *MEMORY[0x277CC49C0];
  v8 = *MEMORY[0x277CBECE8];
  while (CFArrayGetCount(self->_Labels) > v6)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_Labels, v6);
    v10 = CFArrayGetValueAtIndex(self->_Values, v6);
    v11 = CFArrayGetValueAtIndex(self->_Colors, v6);
    CFDictionarySetValue(self->_TextAttributes, v7, v11);
    v12 = CFAttributedStringCreate(v8, ValueAtIndex, self->_TextAttributes);
    CFDictionarySetValue(self->_TextAttributes, v7, value);
    v13 = CFAttributedStringCreate(v8, v10, self->_TextAttributes);
    v14 = CTLineCreateWithAttributedString(v12);
    v15 = CTLineCreateWithAttributedString(v13);
    CGContextSetTextPosition(a3, 0.0, (++v6 * 12.0));
    CTLineDraw(v14, a3);
    CGContextSetTextPosition(a3, 60.0, (v6 * 12.0));
    CTLineDraw(v15, a3);
    CFRelease(v14);
    CFRelease(v15);
    CFRelease(v12);
    CFRelease(v13);
  }

  CFDictionarySetValue(self->_TextAttributes, v7, v16);
  CFRelease(value);
}

- (void)setValueAtIndex:(int)a3 format:(id)a4
{
  if (CFArrayGetCount(self->_Values) > a3)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:&v8];
    CFArraySetValueAtIndex(self->_Values, a3, v7);
  }
}

- (void)setValue:(__CFString *)a3 atIndex:(int)a4
{
  if (CFArrayGetCount(self->_Values) > a4)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], a3);
    CFArraySetValueAtIndex(self->_Values, a4, Copy);

    CFRelease(Copy);
  }
}

- (void)addLine:(__CFString *)a3 withColorIndex:(int)a4
{
  v6 = [APGraphLayer copyGraphColorWithIndex:*&a4];
  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], a3);
  CFArrayAppendValue(self->_Labels, Copy);
  CFArrayAppendValue(self->_Colors, v6);
  CFArrayAppendValue(self->_Values, *MEMORY[0x277CBEEE8]);
  CFRelease(Copy);

  CFRelease(v6);
}

- (void)dealloc
{
  Font = self->_Font;
  if (Font)
  {
    v4 = Font == *MEMORY[0x277CBEEE8];
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

  Colors = self->_Colors;
  if (Colors)
  {
    CFRelease(Colors);
  }

  v9.receiver = self;
  v9.super_class = APHUDLayer;
  [(APHUDLayer *)&v9 dealloc];
}

- (APHUDLayer)init
{
  keys[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC49C0];
  keys[0] = *MEMORY[0x277CC4838];
  keys[1] = v2;
  v3 = *MEMORY[0x277CBEEE8];
  values[0] = v3;
  values[1] = v3;
  v10.receiver = self;
  v10.super_class = APHUDLayer;
  v4 = [(APHUDLayer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_Font = v3;
    v6 = *MEMORY[0x277CBECE8];
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5->_TextAttributes = CFDictionaryCreateMutableCopy(v6, 2, v7);
    CFRelease(v7);
    v8 = MEMORY[0x277CBF128];
    v5->_Labels = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    v5->_Values = CFArrayCreateMutable(v6, 0, v8);
    v5->_Colors = CFArrayCreateMutable(v6, 0, v8);
  }

  return v5;
}

@end