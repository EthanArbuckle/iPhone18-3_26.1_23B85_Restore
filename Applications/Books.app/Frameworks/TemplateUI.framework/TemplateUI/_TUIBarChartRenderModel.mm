@interface _TUIBarChartRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUIBarChartRenderModel

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    columns = [(_TUIBarChartRenderModel *)self columns];
    if (columns == [v6 columns])
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
          chartType = [(_TUIBarChartRenderModel *)self chartType];
          chartType2 = [v6 chartType];
          if (![chartType isEqualToString:chartType2])
          {
            v23 = 0;
LABEL_22:

            goto LABEL_16;
          }

          title = [(_TUIBarChartRenderModel *)self title];
          title2 = [v6 title];
          if (![title isEqualToString:title2])
          {
            v23 = 0;
LABEL_21:

            goto LABEL_22;
          }

          footer = [(_TUIBarChartRenderModel *)self footer];
          footer2 = [v6 footer];
          v20 = [footer isEqualToString:footer2];

          if (v20)
          {
            chartType = [(_TUIBarChartRenderModel *)self color];
            chartType2 = [v6 color];
            title = [(_TUIBarChartRenderModel *)self backgroundColor];
            title2 = [v6 backgroundColor];
            shadowColor = [(_TUIBarChartRenderModel *)self shadowColor];
            shadowColor2 = [v6 shadowColor];
            v23 = (chartType == chartType2 || [chartType isEqual:chartType2]) && (title == title2 || objc_msgSend(title, "isEqual:", title2)) && (shadowColor == shadowColor2 || objc_msgSend(shadowColor, "isEqual:", shadowColor2));

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
  identifier = [(_TUIBarChartRenderModel *)self identifier];
  v3 = TUIIdentifierHash(identifier);

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