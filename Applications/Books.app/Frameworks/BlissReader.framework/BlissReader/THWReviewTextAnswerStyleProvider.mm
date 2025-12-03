@interface THWReviewTextAnswerStyleProvider
- (THWReviewTextAnswerStyleProvider)initWithIndex:(unint64_t)index storage:(id)storage listLabelStyle:(id)style;
- (id)listLabelParagraphStyleOverrideAtParIndex:(unint64_t)index;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (unint64_t)listNumberAtParIndex:(unint64_t)index numberingData:(id *)data;
- (void)dealloc;
@end

@implementation THWReviewTextAnswerStyleProvider

- (THWReviewTextAnswerStyleProvider)initWithIndex:(unint64_t)index storage:(id)storage listLabelStyle:(id)style
{
  v15.receiver = self;
  v15.super_class = THWReviewTextAnswerStyleProvider;
  v8 = [(THWReviewTextAnswerStyleProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = index;
    v8->_storage = storage;
    objc_opt_class();
    [objc_msgSend(storage "stylesheet")];
    v10 = TSUDynamicCast();
    v9->_listStyle = v10;
    if (!v10)
    {
      v11 = [TSWPListStyle propertyMapForListNumberType:9];
      v12 = +[TSWPListStyle defaultStyleWithContext:type:](TSWPListStyle, "defaultStyleWithContext:type:", [storage context], 3);
      [objc_msgSend(storage "stylesheet")];
      v13 = [objc_msgSend(storage "stylesheet")];
      v9->_listStyle = v13;
      [-[TSWPListStyle stylesheet](v13 "stylesheet")];
    }

    v9->_listLabelStyle = style;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextAnswerStyleProvider;
  [(THWReviewTextAnswerStyleProvider *)&v3 dealloc];
}

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = +[TSSPropertyMap propertyMap];
  [v7 setIntValue:0 forProperty:86];
  HIDWORD(v8) = 1078427648;
  *&v8 = 47.0;
  [v7 setFloatValue:80 forProperty:v8];
  *&v9 = 47.0;
  [v7 setFloatValue:81 forProperty:v9];
  [v7 setBoolValue:1 forProperty:93];
  [v7 setFloatValue:82 forProperty:0.0];
  v10 = [+[TSWPStorageStyleProvider styleProviderForStorage:](TSWPStorageStyleProvider styleProviderForStorage:{self->_storage), "paragraphStyleAtParIndex:effectiveRange:", index, range}];
  stylesheet = [v10 stylesheet];

  return [stylesheet variationOfStyle:v10 propertyMap:v7];
}

- (unint64_t)listNumberAtParIndex:(unint64_t)index numberingData:(id *)data
{
  if (index)
  {
    result = 0;
    if (data)
    {
      data->var2 = 0;
      data->var0 = 0;
      data->var1 = 0;
    }
  }

  else
  {
    if (data)
    {
      data->var2 = self->_index != 0;
      data->var0 = 3;
      data->var1 = 0;
    }

    return self->_index + 1;
  }

  return result;
}

- (id)listLabelParagraphStyleOverrideAtParIndex:(unint64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return self->_listLabelStyle;
  }
}

@end