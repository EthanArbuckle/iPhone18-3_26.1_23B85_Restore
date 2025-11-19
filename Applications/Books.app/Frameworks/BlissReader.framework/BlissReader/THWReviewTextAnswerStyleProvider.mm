@interface THWReviewTextAnswerStyleProvider
- (THWReviewTextAnswerStyleProvider)initWithIndex:(unint64_t)a3 storage:(id)a4 listLabelStyle:(id)a5;
- (id)listLabelParagraphStyleOverrideAtParIndex:(unint64_t)a3;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (unint64_t)listNumberAtParIndex:(unint64_t)a3 numberingData:(id *)a4;
- (void)dealloc;
@end

@implementation THWReviewTextAnswerStyleProvider

- (THWReviewTextAnswerStyleProvider)initWithIndex:(unint64_t)a3 storage:(id)a4 listLabelStyle:(id)a5
{
  v15.receiver = self;
  v15.super_class = THWReviewTextAnswerStyleProvider;
  v8 = [(THWReviewTextAnswerStyleProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_index = a3;
    v8->_storage = a4;
    objc_opt_class();
    [objc_msgSend(a4 "stylesheet")];
    v10 = TSUDynamicCast();
    v9->_listStyle = v10;
    if (!v10)
    {
      v11 = [TSWPListStyle propertyMapForListNumberType:9];
      v12 = +[TSWPListStyle defaultStyleWithContext:type:](TSWPListStyle, "defaultStyleWithContext:type:", [a4 context], 3);
      [objc_msgSend(a4 "stylesheet")];
      v13 = [objc_msgSend(a4 "stylesheet")];
      v9->_listStyle = v13;
      [-[TSWPListStyle stylesheet](v13 "stylesheet")];
    }

    v9->_listLabelStyle = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextAnswerStyleProvider;
  [(THWReviewTextAnswerStyleProvider *)&v3 dealloc];
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
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
  v10 = [+[TSWPStorageStyleProvider styleProviderForStorage:](TSWPStorageStyleProvider styleProviderForStorage:{self->_storage), "paragraphStyleAtParIndex:effectiveRange:", a3, a4}];
  v11 = [v10 stylesheet];

  return [v11 variationOfStyle:v10 propertyMap:v7];
}

- (unint64_t)listNumberAtParIndex:(unint64_t)a3 numberingData:(id *)a4
{
  if (a3)
  {
    result = 0;
    if (a4)
    {
      a4->var2 = 0;
      a4->var0 = 0;
      a4->var1 = 0;
    }
  }

  else
  {
    if (a4)
    {
      a4->var2 = self->_index != 0;
      a4->var0 = 3;
      a4->var1 = 0;
    }

    return self->_index + 1;
  }

  return result;
}

- (id)listLabelParagraphStyleOverrideAtParIndex:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return self->_listLabelStyle;
  }
}

@end