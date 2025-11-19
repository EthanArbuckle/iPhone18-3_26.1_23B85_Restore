@interface THPageHint
- ($D6031A91289B01F4EEA92D3AF6491109)bodylessStubHint;
- ($D6031A91289B01F4EEA92D3AF6491109)firstHint;
- ($D6031A91289B01F4EEA92D3AF6491109)firstHintForBodyIndex:(unint64_t)a3;
- ($D6031A91289B01F4EEA92D3AF6491109)lastHint;
- ($D6031A91289B01F4EEA92D3AF6491109)lastHintForBodyIndex:(unint64_t)a3;
- (CGSize)size;
- (CGSize)sizeForBodyIndex:(unint64_t)a3;
- (THPageHint)initWithCoder:(id)a3;
- (THPageHint)initWithPageInfo:(id)a3;
- (_NSRange)anchoredRangeForBodyIndex:(unint64_t)a3;
- (_NSRange)range;
- (_NSRange)rangeForBodyIndex:(unint64_t)a3;
- (id)anchoredAttachmentPositionsForBodyChildAtIndex:(unint64_t)a3;
- (id)firstChildHint;
- (id)firstChildHintForBodyIndex:(unint64_t)a3;
- (id)firstColumn;
- (id)firstColumnForBodyIndex:(unint64_t)a3;
- (id)lastChildHint;
- (id)lastChildHintForBodyIndex:(unint64_t)a3;
- (id)lastColumn;
- (id)lastColumnForBodyIndex:(unint64_t)a3;
- (vector<TSWPTargetHint,)hintsForBodyIndex:(THPageHint *)self;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)offsetStartCharIndicesBy:(int64_t)a3;
- (void)setAnchoredAttachmentPositions:(id)a3 forBodyIndex:(unint64_t)a4;
- (void)setBodylessStubHint:(id *)a3;
- (void)setFirstChildHint:(id)a3 forBodyIndex:(unint64_t)a4;
- (void)setHints:(const void *)a3 forBodyIndex:(unint64_t)a4;
- (void)setLastChildHint:(id)a3 forBodyIndex:(unint64_t)a4;
- (void)setSize:(CGSize)a3 forBodyIndex:(unint64_t)a4;
- (void)setTopicNumbers:(void *)a3;
@end

@implementation THPageHint

- (THPageHint)initWithPageInfo:(id)a3
{
  v8.receiver = self;
  v8.super_class = THPageHint;
  v4 = [(THPageHint *)&v8 init];
  if (v4)
  {
    -[THPageHint setBodyCount:](v4, "setBodyCount:", [objc_msgSend(a3 "modelBodyInfos")]);
    [objc_msgSend(a3 "geometry")];
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

- (THPageHint)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = THPageHint;
  v4 = [(THPageHint *)&v12 init];
  if (v4)
  {
    v4->mNonEmptyBodyCount = [a3 decodeIntegerForKey:@"nonEmptyBodyCount"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
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
    [a3 decodeObjectOfClasses:v10 forKey:@"bodyHints"];
    v4->mBodyHints = TSUDynamicCast();
    v4->mBodyCount = [a3 decodeIntegerForKey:@"bodyCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->mBodyHints forKey:@"bodyHints"];
  [a3 encodeInteger:self->mBodyCount forKey:@"bodyCount"];
  [a3 encodeInteger:self->mNonEmptyBodyCount forKey:@"nonEmptyBodyCount"];
  v5 = [NSValue valueWithCGSize:self->mSize.width, self->mSize.height];

  [a3 encodeObject:v5 forKey:@"size"];
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

- (_NSRange)rangeForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  v4 = [v3 range];
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)anchoredRangeForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  v4 = [v3 anchoredRange];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)offsetStartCharIndicesBy:(int64_t)a3
{
  if ([(THPageHint *)self nonEmptyBodyCount])
  {
    v5 = 0;
    do
    {
      [-[THPageHint p_bodyHintAtIndex:](self p_bodyHintAtIndex:{v5++), "offsetStartCharIndexBy:", a3}];
    }

    while (v5 < [(THPageHint *)self nonEmptyBodyCount]);
  }
}

- (void)setHints:(const void *)a3 forBodyIndex:(unint64_t)a4
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:a4];

  [v5 setHints:a3];
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

- (void)setSize:(CGSize)a3 forBodyIndex:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [(THPageHint *)self p_bodyHintAtIndex:a4];

  [v6 setSize:{width, height}];
}

- (CGSize)sizeForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  [v3 size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFirstChildHint:(id)a3 forBodyIndex:(unint64_t)a4
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:a4];

  [v5 setFirstChildHint:a3];
}

- (id)firstChildHintForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  return [v3 firstChildHint];
}

- (void)setLastChildHint:(id)a3 forBodyIndex:(unint64_t)a4
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:a4];

  [v5 setLastChildHint:a3];
}

- (id)lastChildHintForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

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

- (id)firstColumnForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  return [v3 firstColumn];
}

- (id)lastColumnForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

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

- ($D6031A91289B01F4EEA92D3AF6491109)firstHintForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  return [v3 firstHint];
}

- ($D6031A91289B01F4EEA92D3AF6491109)lastHintForBodyIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  return [v3 lastHint];
}

- (id)anchoredAttachmentPositionsForBodyChildAtIndex:(unint64_t)a3
{
  v3 = [(THPageHint *)self p_bodyHintAtIndex:a3];

  return [v3 anchoredAttachmentPositions];
}

- (void)setAnchoredAttachmentPositions:(id)a3 forBodyIndex:(unint64_t)a4
{
  v5 = [(THPageHint *)self p_bodyHintAtIndex:a4];

  [v5 setAnchoredAttachmentPositions:a3];
}

- (void)setTopicNumbers:(void *)a3
{
  v3 = *(a3 + 3);
  v4 = [(THPageHint *)self firstHint];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 >= v4->var1.location)
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

- (void)setBodylessStubHint:(id *)a3
{
  self->mBodylessStubHint._frameBounds.origin = a3->var0.origin;
  size = a3->var0.size;
  var1 = a3->var1;
  v5 = *&a3->var3.length;
  *&self->mBodylessStubHint._nextWidowPullsDownFromCharIndex = *&a3->var2;
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