@interface THModelDynamicAnchor
- ($239FB631065AF17ADF03FBE2E8B25B94)p_anchorPointFromXPointer:(SEL)a3;
- (THModelDynamicAnchor)initWithContentNode:(id)a3 startElementId:(id)a4 startPattern:(id)a5 startOccurrence:(unint64_t)a6 startRange:(_NSRange)a7 endElementId:(id)a8 endPattern:(id)a9 endOccurrence:(unint64_t)a10 endRange:(_NSRange)a11;
- (THModelDynamicAnchor)initWithContentNode:(id)a3 startXPointer:(id)a4 endXPointer:(id)a5;
- (_NSRange)endRange;
- (_NSRange)startRange;
- (void)dealloc;
@end

@implementation THModelDynamicAnchor

- (THModelDynamicAnchor)initWithContentNode:(id)a3 startElementId:(id)a4 startPattern:(id)a5 startOccurrence:(unint64_t)a6 startRange:(_NSRange)a7 endElementId:(id)a8 endPattern:(id)a9 endOccurrence:(unint64_t)a10 endRange:(_NSRange)a11
{
  length = a7.length;
  location = a7.location;
  v19.receiver = self;
  v19.super_class = THModelDynamicAnchor;
  v16 = [(THModelBoundAnchor *)&v19 initWithContentNode:a3];
  v17 = v16;
  if (v16)
  {
    [(THModelDynamicAnchor *)v16 setStartElementId:a4];
    [(THModelDynamicAnchor *)v17 setStartPattern:a5];
    [(THModelDynamicAnchor *)v17 setStartOccurrence:a6];
    [(THModelDynamicAnchor *)v17 setStartRange:location, length];
    [(THModelDynamicAnchor *)v17 setEndElementId:a8];
    [(THModelDynamicAnchor *)v17 setEndPattern:a9];
    [(THModelDynamicAnchor *)v17 setEndOccurrence:a10];
    [(THModelDynamicAnchor *)v17 setEndRange:a11.location, a11.length];
  }

  return v17;
}

- (THModelDynamicAnchor)initWithContentNode:(id)a3 startXPointer:(id)a4 endXPointer:(id)a5
{
  if (!self)
  {
    return [THModelDynamicAnchor initWithContentNode:"initWithContentNode:startElementId:startPattern:startOccurrence:startRange:endElementId:endPattern:endOccurrence:endRange:" startElementId:a3 startPattern:0 startOccurrence:0 startRange:0 endElementId:0 endPattern:0 endOccurrence:0 endRange:?];
  }

  [(THModelDynamicAnchor *)self p_anchorPointFromXPointer:a4];
  [(THModelDynamicAnchor *)self p_anchorPointFromXPointer:a5];
  return [THModelDynamicAnchor initWithContentNode:"initWithContentNode:startElementId:startPattern:startOccurrence:startRange:endElementId:endPattern:endOccurrence:endRange:" startElementId:a3 startPattern:0 startOccurrence:0 startRange:0 endElementId:0 endPattern:0 endOccurrence:0 endRange:?];
}

- (void)dealloc
{
  [(THModelDynamicAnchor *)self setEndPattern:0];
  [(THModelDynamicAnchor *)self setEndElementId:0];
  [(THModelDynamicAnchor *)self setStartPattern:0];
  [(THModelDynamicAnchor *)self setStartElementId:0];
  v3.receiver = self;
  v3.super_class = THModelDynamicAnchor;
  [(THModelBoundAnchor *)&v3 dealloc];
}

- ($239FB631065AF17ADF03FBE2E8B25B94)p_anchorPointFromXPointer:(SEL)a3
{
  retstr->var0 = &stru_471858;
  retstr->var1 = &stru_471858;
  *&retstr->var2 = xmmword_349FB0;
  retstr->var3.length = 0;
  v5 = [objc_msgSend(a4 substringWithRange:{9, objc_msgSend(a4, "length") - 10), "componentsSeparatedByString:", @", "}];
  result = [v5 count];
  if (result == (&dword_4 + 1))
  {
    retstr->var0 = [v5 objectAtIndex:0];
    retstr->var1 = [v5 objectAtIndex:1];
    retstr->var2 = [objc_msgSend(v5 objectAtIndex:{2), "integerValue"}];
    retstr->var3.location = [objc_msgSend(v5 objectAtIndex:{3), "integerValue"}];
    result = [objc_msgSend(v5 objectAtIndex:{4), "integerValue"}];
    retstr->var3.length = result;
  }

  return result;
}

- (_NSRange)startRange
{
  p_mStartRange = &self->mStartRange;
  location = self->mStartRange.location;
  length = p_mStartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)endRange
{
  p_mEndRange = &self->mEndRange;
  location = self->mEndRange.location;
  length = p_mEndRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end