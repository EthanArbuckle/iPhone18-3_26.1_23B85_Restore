@interface THModelDynamicAnchor
- ($239FB631065AF17ADF03FBE2E8B25B94)p_anchorPointFromXPointer:(SEL)pointer;
- (THModelDynamicAnchor)initWithContentNode:(id)node startElementId:(id)id startPattern:(id)pattern startOccurrence:(unint64_t)occurrence startRange:(_NSRange)range endElementId:(id)elementId endPattern:(id)endPattern endOccurrence:(unint64_t)self0 endRange:(_NSRange)self1;
- (THModelDynamicAnchor)initWithContentNode:(id)node startXPointer:(id)pointer endXPointer:(id)xPointer;
- (_NSRange)endRange;
- (_NSRange)startRange;
- (void)dealloc;
@end

@implementation THModelDynamicAnchor

- (THModelDynamicAnchor)initWithContentNode:(id)node startElementId:(id)id startPattern:(id)pattern startOccurrence:(unint64_t)occurrence startRange:(_NSRange)range endElementId:(id)elementId endPattern:(id)endPattern endOccurrence:(unint64_t)self0 endRange:(_NSRange)self1
{
  length = range.length;
  location = range.location;
  v19.receiver = self;
  v19.super_class = THModelDynamicAnchor;
  v16 = [(THModelBoundAnchor *)&v19 initWithContentNode:node];
  v17 = v16;
  if (v16)
  {
    [(THModelDynamicAnchor *)v16 setStartElementId:id];
    [(THModelDynamicAnchor *)v17 setStartPattern:pattern];
    [(THModelDynamicAnchor *)v17 setStartOccurrence:occurrence];
    [(THModelDynamicAnchor *)v17 setStartRange:location, length];
    [(THModelDynamicAnchor *)v17 setEndElementId:elementId];
    [(THModelDynamicAnchor *)v17 setEndPattern:endPattern];
    [(THModelDynamicAnchor *)v17 setEndOccurrence:endOccurrence];
    [(THModelDynamicAnchor *)v17 setEndRange:endRange.location, endRange.length];
  }

  return v17;
}

- (THModelDynamicAnchor)initWithContentNode:(id)node startXPointer:(id)pointer endXPointer:(id)xPointer
{
  if (!self)
  {
    return [THModelDynamicAnchor initWithContentNode:"initWithContentNode:startElementId:startPattern:startOccurrence:startRange:endElementId:endPattern:endOccurrence:endRange:" startElementId:node startPattern:0 startOccurrence:0 startRange:0 endElementId:0 endPattern:0 endOccurrence:0 endRange:?];
  }

  [(THModelDynamicAnchor *)self p_anchorPointFromXPointer:pointer];
  [(THModelDynamicAnchor *)self p_anchorPointFromXPointer:xPointer];
  return [THModelDynamicAnchor initWithContentNode:"initWithContentNode:startElementId:startPattern:startOccurrence:startRange:endElementId:endPattern:endOccurrence:endRange:" startElementId:node startPattern:0 startOccurrence:0 startRange:0 endElementId:0 endPattern:0 endOccurrence:0 endRange:?];
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

- ($239FB631065AF17ADF03FBE2E8B25B94)p_anchorPointFromXPointer:(SEL)pointer
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