@interface _MKMultiPartLabelCacheKey
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (_MKMultiPartLabelCacheKey)initWithAttributedString:(id)a3 size:(CGSize)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _MKMultiPartLabelCacheKey

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_MKMultiPartLabelCacheKey *)self size];
  v5 = NSStringFromCGSize(v10);
  v6 = [(_MKMultiPartLabelCacheKey *)self attributedString];
  v7 = [v3 stringWithFormat:@"<%@:%p\nsize=%@\nattributedString =%@\n>", v4, self, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  [(_MKMultiPartLabelCacheKey *)self size];
  v5 = -*v3.i64;
  if (*v3.i64 >= 0.0)
  {
    v5 = *v3.i64;
  }

  *v3.i64 = floor(v5 + 0.5);
  v6 = (v5 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v23 = vnegq_f64(v7);
  v3.i64[0] = vbslq_s8(v23, v4, v3).i64[0];
  v8 = 2654435761u * *v3.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v3.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [(_MKMultiPartLabelCacheKey *)self size];
  if (v12 < 0.0)
  {
    v12 = -v12;
  }

  *v13.i64 = floor(v12 + 0.5);
  v15 = (v12 - *v13.i64) * 1.84467441e19;
  *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.i64[0] = vbslq_s8(v24, v14, v13).i64[0];
  v16 = 2654435761u * *v13.i64;
  v17 = v16 + v15;
  if (v15 <= 0.0)
  {
    v17 = 2654435761u * *v13.i64;
  }

  v18 = v16 - fabs(v15);
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  v19 = v18 ^ v11;
  v20 = [(_MKMultiPartLabelCacheKey *)self attributedString];
  v21 = [v20 hash];

  return v19 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(_MKMultiPartLabelCacheKey *)self size];
    v7 = v6;
    v9 = v8;
    [v5 size];
    if (v7 == v11 && v9 == v10)
    {
      v14 = [(_MKMultiPartLabelCacheKey *)self attributedString];
      if (v14 || ([v5 attributedString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = [(_MKMultiPartLabelCacheKey *)self attributedString];
        v16 = [v5 attributedString];
        v13 = [v15 isEqual:v16];

        if (v14)
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  attributedString = self->_attributedString;
  width = self->_size.width;
  height = self->_size.height;

  return [v4 initWithAttributedString:attributedString size:{width, height}];
}

- (_MKMultiPartLabelCacheKey)initWithAttributedString:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _MKMultiPartLabelCacheKey;
  v8 = [(_MKMultiPartLabelCacheKey *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    attributedString = v8->_attributedString;
    v8->_attributedString = v9;

    v8->_size.width = width;
    v8->_size.height = height;
  }

  return v8;
}

@end