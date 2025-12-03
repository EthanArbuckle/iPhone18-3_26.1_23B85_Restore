@interface THPageHint
- ($D6031A91289B01F4EEA92D3AF6491109)bodylessStubHint;
- ($D6031A91289B01F4EEA92D3AF6491109)firstHint;
- ($D6031A91289B01F4EEA92D3AF6491109)firstHintForBodyIndex:(unint64_t)index;
- ($D6031A91289B01F4EEA92D3AF6491109)lastHint;
- ($D6031A91289B01F4EEA92D3AF6491109)lastHintForBodyIndex:(unint64_t)index;
- (CGSize)size;
- (CGSize)sizeForBodyIndex:(unint64_t)index;
- (THPageHint)initWithCoder:(id)coder;
- (THPageHint)initWithPageInfo:(id)info;
- (_NSRange)anchoredRangeForBodyIndex:(unint64_t)index;
- (_NSRange)range;
- (_NSRange)rangeForBodyIndex:(unint64_t)index;
- (id)anchoredAttachmentPositionsForBodyChildAtIndex:(unint64_t)index;
- (id)firstChildHint;
- (id)firstChildHintForBodyIndex:(unint64_t)index;
- (id)firstColumn;
- (id)firstColumnForBodyIndex:(unint64_t)index;
- (id)lastChildHint;
- (id)lastChildHintForBodyIndex:(unint64_t)index;
- (id)lastColumn;
- (id)lastColumnForBodyIndex:(unint64_t)index;
- (vector<TSWPTargetHint,)hintsForBodyIndex:(THPageHint *)self;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)offsetStartCharIndicesBy:(int64_t)by;
- (void)setAnchoredAttachmentPositions:(id)positions forBodyIndex:(unint64_t)index;
- (void)setBodylessStubHint:(id *)hint;
- (void)setFirstChildHint:(id)hint forBodyIndex:(unint64_t)index;
- (void)setHints:(const void *)hints forBodyIndex:(unint64_t)index;
- (void)setLastChildHint:(id)hint forBodyIndex:(unint64_t)index;
- (void)setSize:(CGSize)size forBodyIndex:(unint64_t)index;
- (void)setTopicNumbers:(void *)numbers;
@end

@implementation THPageHint

- (THPageHint)initWithPageInfo:(id)info
{
  v8.receiver = self;
  v8.super_class = THPageHint;
  v4 = [(THPageHint *)&v8 init];
  if (v4)
  {
    -[THPageHint setBodyCount:](v4, "setBodyCount:", [objc_msgSend(info "modelBodyInfos")]);
    [objc_msgSend(info "geometry")];
    [(THPageHint *)v4 setSize:?];
    v4->mBodyHints = objc_alloc_init(TSUIntegerKeyDictionary);
    if ([(THPageHint *)v4 bodyCount])
    {
      v5 = 0;
      do
      {
        v6 = objc_alloc_init(THBodyHint);
        [(TSUIntegerKeyDictionary *)v4->mBodyHints setObject:v6 forKey:v5];

        ++v5;
      }

      while (v5 < [(THPageHint *)v4 bodyCount]);
    }

    TSWPTopicNumberHints::reset(&v4->_topicNumbers);
  }

  return v4;
}

- (THPageHint)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = THPageHint;
  v4 = [(THPageHint *)&v12 init];
  if (v4)
  {
    v4->mNonEmptyBodyCount = [coder decodeIntegerForKey:@"nonEmptyBodyCount"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    if (v5)
    {
      [v5 CGSizeValue];
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    v4->mSize.width = width;
    v4->mSize.height = height;
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    objc_opt_class();
    [coder decodeObjectOfClasses:v10 forKey:@"bodyHints"];
    v4->mBodyHints = TSUDynamicCast();
    v4->mBodyCount = [coder decodeIntegerForKey:@"bodyCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->mBodyHints forKey:@"bodyHints"];
  [coder encodeInteger:self->mBodyCount forKey:@"bodyCount"];
  [coder encodeInteger:self->mNonEmptyBodyCount forKey:@"nonEmptyBodyCount"];
  v5 = [NSValue valueWithCGSize:self->mSize.width, self->mSize.height];

  [coder encodeObject:v5 forKey:@"size"];
}

- (void)dealloc
{
  self->mBodyHints = 0;
  v3.receiver = self;
  v3.super_class = THPageHint;
  [(THPageHint *)&v3 dealloc];
}

- (_NSRange)range
{
  v4 = NSInvalidRange[0];
  v3 = NSInvalidRange[1];
  if ([(THPageHint *)self nonEmptyBodyCount])
  {
    v5 = 0;
    do
    {
      location = [(THPageHint *)self rangeForBodyIndex:v5];
      length = v7;
      if (v4 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12.location = v4;
        v12.length = v3;
        v14.location = location;
        v14.length = length;
        v9 = NSUnionRange(v12, v14);
        location = v9.location;
        length = v9.length;
      }

      ++v5;
      v3 = length;
      v4 = location;
    }

    while (v5 < [(THPageHint *)self nonEmptyBodyCount]);
  }

  else
  {
    location = v4;
    length = v3;
  }

  v10 = location;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)rangeForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  range = [v3 range];
  result.length = v5;
  result.location = range;
  return result;
}

- (_NSRange)anchoredRangeForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  anchoredRange = [v3 anchoredRange];
  result.length = v5;
  result.location = anchoredRange;
  return result;
}

- (void)offsetStartCharIndicesBy:(int64_t)by
{
  if ([(THPageHint *)self nonEmptyBodyCount])
  {
    v5 = 0;
    do
    {
      [-[THPageHint p_bodyHintAtIndex:](self p_bodyHintAtIndex:{v5++), "offsetStartCharIndexBy:", by}];
    }

    while (v5 < [(THPageHint *)self nonEmptyBodyCount]);
  }
}

- (void)setHints:(const void *)hints forBodyIndex:(unint64_t)index
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v5 setHints:hints];
}

- (vector<TSWPTargetHint,)hintsForBodyIndex:(THPageHint *)self
{
  result = [(THPageHint *)self p_bodyHintAtIndex:a4];
  if (result)
  {

    return unk_56C980(result, "hints");
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (void)setSize:(CGSize)size forBodyIndex:(unint64_t)index
{
  height = size.height;
  width = size.width;
  v6 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v6 setSize:{width, height}];
}

- (CGSize)sizeForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v3 size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFirstChildHint:(id)hint forBodyIndex:(unint64_t)index
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v5 setFirstChildHint:hint];
}

- (id)firstChildHintForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 firstChildHint];
}

- (void)setLastChildHint:(id)hint forBodyIndex:(unint64_t)index
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v5 setLastChildHint:hint];
}

- (id)lastChildHintForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 lastChildHint];
}

- (id)firstColumn
{
  result = [(THPageHint *)self nonEmptyBodyCount];
  if (result)
  {

    return [(THPageHint *)self firstColumnForBodyIndex:0];
  }

  return result;
}

- (id)lastColumn
{
  result = [(THPageHint *)self nonEmptyBodyCount];
  if (result)
  {
    v4 = [(THPageHint *)self nonEmptyBodyCount]- 1;

    return [(THPageHint *)self lastColumnForBodyIndex:v4];
  }

  return result;
}

- (id)firstColumnForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 firstColumn];
}

- (id)lastColumnForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 lastColumn];
}

- (id)firstChildHint
{
  result = [(THPageHint *)self nonEmptyBodyCount];
  if (result)
  {

    return [(THPageHint *)self firstChildHintForBodyIndex:0];
  }

  return result;
}

- (id)lastChildHint
{
  result = [(THPageHint *)self nonEmptyBodyCount];
  if (result)
  {
    v4 = [(THPageHint *)self nonEmptyBodyCount]- 1;

    return [(THPageHint *)self lastChildHintForBodyIndex:v4];
  }

  return result;
}

- ($D6031A91289B01F4EEA92D3AF6491109)firstHint
{
  if (![(THPageHint *)self nonEmptyBodyCount])
  {
    return &self->mBodylessStubHint;
  }

  return [(THPageHint *)self firstHintForBodyIndex:0];
}

- ($D6031A91289B01F4EEA92D3AF6491109)lastHint
{
  if (![(THPageHint *)self nonEmptyBodyCount])
  {
    return &self->mBodylessStubHint;
  }

  v3 = [(THPageHint *)self nonEmptyBodyCount]- 1;

  return [(THPageHint *)self lastHintForBodyIndex:v3];
}

- ($D6031A91289B01F4EEA92D3AF6491109)firstHintForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 firstHint];
}

- ($D6031A91289B01F4EEA92D3AF6491109)lastHintForBodyIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 lastHint];
}

- (id)anchoredAttachmentPositionsForBodyChildAtIndex:(unint64_t)index
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:index];

  return [v3 anchoredAttachmentPositions];
}

- (void)setAnchoredAttachmentPositions:(id)positions forBodyIndex:(unint64_t)index
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:index];

  [v5 setAnchoredAttachmentPositions:positions];
}

- (void)setTopicNumbers:(void *)numbers
{
  v3 = *(numbers + 3);
  firstHint = [(THPageHint *)self firstHint];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 >= firstHint->var1.location)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  TSWPTopicNumberHints::operator=();
}

- ($D6031A91289B01F4EEA92D3AF6491109)bodylessStubHint
{
  size = self[1].var0.size;
  retstr->var1 = self[1].var0.origin;
  *&retstr->var2 = size;
  *&retstr->var3.length = self[1].var1;
  v4 = *&self->var3.length;
  retstr->var0.origin = *&self->var2;
  retstr->var0.size = v4;
  return self;
}

- (void)setBodylessStubHint:(id *)hint
{
  self->mBodylessStubHint._frameBounds.origin = hint->var0.origin;
  size = hint->var0.size;
  var1 = hint->var1;
  v5 = *&hint->var3.length;
  *&self->mBodylessStubHint._nextWidowPullsDownFromCharIndex = *&hint->var2;
  *&self->mBodylessStubHint._anchoredRange.length = v5;
  self->mBodylessStubHint._frameBounds.size = size;
  self->mBodylessStubHint._range = var1;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end