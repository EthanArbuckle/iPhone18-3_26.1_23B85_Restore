@interface NSReadMutableAttributedStringWithCoder
@end

@implementation NSReadMutableAttributedStringWithCoder

Class ___NSReadMutableAttributedStringWithCoder_block_invoke()
{
  v23 = MEMORY[0x1E695DFA8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  qword_1ED43E790 = [v23 setWithObjects:{v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  Class = objc_getClass("NSParagraphStyle");
  if (Class)
  {
    [qword_1ED43E790 addObject:Class];
  }

  v11 = objc_getClass("NSGlyphInfo");
  if (v11)
  {
    [qword_1ED43E790 addObject:v11];
  }

  v12 = objc_getClass("NSTextAlternatives");
  if (v12)
  {
    [qword_1ED43E790 addObject:v12];
  }

  v13 = objc_getClass("NSTextAttachment");
  if (v13)
  {
    [qword_1ED43E790 addObject:v13];
  }

  v14 = objc_getClass("NSShadow");
  if (v14)
  {
    [qword_1ED43E790 addObject:v14];
  }

  v15 = objc_getClass("NSAdaptiveImageGlyph");
  if (v15)
  {
    [qword_1ED43E790 addObject:v15];
  }

  v16 = objc_getClass("NSFont");
  if (v16)
  {
    [qword_1ED43E790 addObject:v16];
  }

  v17 = objc_getClass("UIFont");
  if (v17)
  {
    [qword_1ED43E790 addObject:v17];
  }

  v18 = objc_getClass("NSColor");
  if (v18)
  {
    [qword_1ED43E790 addObject:v18];
  }

  v19 = objc_getClass("UIColor");
  if (v19)
  {
    [qword_1ED43E790 addObject:v19];
  }

  qword_1ED43E798 = [qword_1ED43E790 mutableCopy];
  result = objc_getClass("NSTextEncapsulation");
  if (result)
  {
    v21 = result;
    v22 = qword_1ED43E798;

    return [v22 addObject:v21];
  }

  return result;
}

@end