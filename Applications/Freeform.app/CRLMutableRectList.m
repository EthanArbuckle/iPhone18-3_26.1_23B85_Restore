@interface CRLMutableRectList
- (id)copyWithZone:(_NSZone *)a3;
- (void)addRect:(CGRect)a3;
- (void)addRectList:(id)a3;
- (void)applyTransform:(CGAffineTransform *)a3;
- (void)setList:(id)a3;
@end

@implementation CRLMutableRectList

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLRectList alloc];

  return [(CRLRectList *)v4 initWithRectList:self];
}

- (void)addRect:(CGRect)a3
{
  *&v3 = a3.origin.x;
  *(&v3 + 1) = *&a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  sub_10020133C(&self->super.mRectList, &v3);
}

- (void)addRectList:(id)a3
{
  end = self->super.mRectList.__end_;
  v5 = a3;
  v6 = v5[1];
  v7 = v5[2];

  sub_100201988(&self->super.mRectList, end, v6, v7, (v7 - v6) >> 5);
}

- (void)setList:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    sub_100201CC4(&self->super.mRectList.__begin_, v4[1], v4[2], (v4[2] - v4[1]) >> 5);
  }
}

- (void)applyTransform:(CGAffineTransform *)a3
{
  begin = self->super.mRectList.__begin_;
  v6 = self->super.mRectList.__end_ - begin;
  if (v6)
  {
    v13 = v3;
    v14 = v4;
    v8 = v6 >> 5;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    p_size = &begin->size;
    do
    {
      v15 = *&p_size[-1].width;
      v11 = *&a3->c;
      *&v12.a = *&a3->a;
      *&v12.c = v11;
      *&v12.tx = *&a3->tx;
      *&p_size[-1].width = CGRectApplyAffineTransform(v15, &v12);
      p_size += 2;
      --v9;
    }

    while (v9);
  }
}

@end