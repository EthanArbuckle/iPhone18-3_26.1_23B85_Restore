@interface THWInteractiveImageCalloutStyleProvider
- (THWInteractiveImageCalloutStyleProvider)initWithStorage:(id)a3;
- (id)modifiedCharacterStyle:(id)a3 atCharIndex:(unint64_t)a4;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (void)dealloc;
@end

@implementation THWInteractiveImageCalloutStyleProvider

- (THWInteractiveImageCalloutStyleProvider)initWithStorage:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWInteractiveImageCalloutStyleProvider;
  v4 = [(THWInteractiveImageCalloutStyleProvider *)&v6 init];
  if (v4)
  {
    v4->_storage = a3;
    v4->_fontScale = 1.0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageCalloutStyleProvider;
  [(THWInteractiveImageCalloutStyleProvider *)&v3 dealloc];
}

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v7 = +[TSSPropertyMap propertyMap];
  if (self->_selected)
  {
    [v7 setObject:+[TSUColor whiteColor](TSUColor forProperty:{"whiteColor"), 18}];
  }

  v8 = [+[TSWPStorageStyleProvider styleProviderForStorage:](TSWPStorageStyleProvider styleProviderForStorage:{self->_storage), "paragraphStyleAtParIndex:effectiveRange:", a3, a4}];
  [v8 floatValueForProperty:17];
  v10 = self->_fontScale * v9;
  *&v10 = v10;
  [v7 setFloatValue:17 forProperty:v10];
  v11 = [v8 stylesheet];

  return [v11 variationOfStyle:v8 propertyMap:v7];
}

- (id)modifiedCharacterStyle:(id)a3 atCharIndex:(unint64_t)a4
{
  v6 = [TSSPropertyMap propertyMap:a3];
  [a3 floatValueForProperty:17];
  v8 = self->_fontScale * v7;
  *&v8 = v8;
  [v6 setFloatValue:17 forProperty:v8];
  if (self->_selected)
  {
    [v6 setObject:+[TSUColor whiteColor](TSUColor forProperty:{"whiteColor"), 18}];
  }

  v9 = [a3 stylesheet];

  return [v9 variationOfStyle:a3 propertyMap:v6];
}

@end