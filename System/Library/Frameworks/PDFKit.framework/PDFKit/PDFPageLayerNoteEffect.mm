@interface PDFPageLayerNoteEffect
- (CGRect)pageFrame;
- (id)annotation;
- (void)update;
@end

@implementation PDFPageLayerNoteEffect

- (CGRect)pageFrame
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  [WeakRetained noteBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);

  return WeakRetained;
}

- (void)update
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    markupStyle = [WeakRetained markupStyle];
    v6 = +[PDFAnnotation PDFTextColors];
    v7 = [v6 objectAtIndex:markupStyle];
    cGColor = [v7 CGColor];

    v9 = +[PDFAnnotation PDFTextBorderColors];
    v10 = [v9 objectAtIndex:markupStyle];
    cGColor2 = [v10 CGColor];

    if (!CGColorEqualToColor([(PDFPageLayerNoteEffect *)self backgroundColor], cGColor))
    {
      [(PDFPageLayerNoteEffect *)self setBackgroundColor:cGColor];
    }

    WeakRetained = CGColorEqualToColor([(PDFPageLayerNoteEffect *)self borderColor], cGColor2);
    v4 = v12;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [(PDFPageLayerNoteEffect *)self setBorderColor:cGColor2];
      v4 = v12;
    }
  }

  MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

@end