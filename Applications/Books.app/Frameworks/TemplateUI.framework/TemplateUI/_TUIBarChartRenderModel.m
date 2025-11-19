@interface _TUIBarChartRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUIBarChartRenderModel

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    v7 = [(_TUIBarChartRenderModel *)self columns];
    if (v7 == [v6 columns])
    {
      [(_TUIBarChartRenderModel *)self cornerRadius];
      v9 = v8;
      [v6 cornerRadius];
      if (v9 == v10)
      {
        [(_TUIBarChartRenderModel *)self spacing];
        v12 = v11;
        [v6 spacing];
        if (v12 == v13)
        {
          v14 = [(_TUIBarChartRenderModel *)self chartType];
          v15 = [v6 chartType];
          if (![v14 isEqualToString:v15])
          {
            v23 = 0;
LABEL_22:

            goto LABEL_16;
          }

          v16 = [(_TUIBarChartRenderModel *)self title];
          v17 = [v6 title];
          if (![v16 isEqualToString:v17])
          {
            v23 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v18 = [(_TUIBarChartRenderModel *)self footer];
          v19 = [v6 footer];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            v14 = [(_TUIBarChartRenderModel *)self color];
            v15 = [v6 color];
            v16 = [(_TUIBarChartRenderModel *)self backgroundColor];
            v17 = [v6 backgroundColor];
            v21 = [(_TUIBarChartRenderModel *)self shadowColor];
            v22 = [v6 shadowColor];
            v23 = (v14 == v15 || [v14 isEqual:v15]) && (v16 == v17 || objc_msgSend(v16, "isEqual:", v17)) && (v21 == v22 || objc_msgSend(v21, "isEqual:", v22));

            goto LABEL_21;
          }
        }
      }
    }
  }

  v23 = 0;
LABEL_16:

  return v23;
}

- (unint64_t)hash
{
  v2 = [(_TUIBarChartRenderModel *)self identifier];
  v3 = TUIIdentifierHash(v2);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end