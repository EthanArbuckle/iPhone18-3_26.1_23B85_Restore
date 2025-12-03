@interface LPPadding
- (LPPadding)init;
- (UIEdgeInsets)asInsetsForLTR:(BOOL)r;
- (id)_lp_CSSText;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPPadding

- (LPPadding)init
{
  v13.receiver = self;
  v13.super_class = LPPadding;
  v2 = [(LPPadding *)&v13 init];
  if (v2)
  {
    v3 = +[LPPointUnit zero];
    top = v2->_top;
    v2->_top = v3;

    v5 = +[LPPointUnit zero];
    leading = v2->_leading;
    v2->_leading = v5;

    v7 = +[LPPointUnit zero];
    bottom = v2->_bottom;
    v2->_bottom = v7;

    v9 = +[LPPointUnit zero];
    trailing = v2->_trailing;
    v2->_trailing = v9;

    v11 = v2;
  }

  return v2;
}

- (UIEdgeInsets)asInsetsForLTR:(BOOL)r
{
  rCopy = r;
  [(LPPointUnit *)self->_top value];
  v6 = v5;
  if (rCopy)
  {
    v7 = 16;
  }

  else
  {
    v7 = 32;
  }

  if (rCopy)
  {
    v8 = 32;
  }

  else
  {
    v8 = 16;
  }

  [*(&self->super.isa + v7) value];
  v10 = v9;
  [(LPPointUnit *)self->_bottom value];
  v12 = v11;
  [*(&self->super.isa + v8) value];
  v14 = v13;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.right = v14;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)_lp_CSSText
{
  IsLTR = appIsLTR();
  v4 = MEMORY[0x1E696AEC0];
  [(LPPointUnit *)self->_top value];
  v6 = v5;
  if (IsLTR)
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  if (IsLTR)
  {
    v8 = 16;
  }

  else
  {
    v8 = 32;
  }

  [*(&self->super.isa + v7) value];
  v10 = v9;
  [(LPPointUnit *)self->_bottom value];
  v12 = v11;
  [*(&self->super.isa + v8) value];
  return [v4 stringWithFormat:@"%gpx %gpx %gpx %gpx", v6, v10, v12, v13];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPPadding allocWithZone:zone];
  p_isa = &v4->super.isa;
  if (v4)
  {
    objc_storeStrong(&v4->_top, self->_top);
    objc_storeStrong(p_isa + 2, self->_leading);
    objc_storeStrong(p_isa + 3, self->_bottom);
    objc_storeStrong(p_isa + 4, self->_trailing);
    v6 = p_isa;
  }

  return p_isa;
}

@end