@interface THWInteractiveImageCalloutStyleProvider
- (THWInteractiveImageCalloutStyleProvider)initWithStorage:(id)storage;
- (id)modifiedCharacterStyle:(id)style atCharIndex:(unint64_t)index;
- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (void)dealloc;
@end

@implementation THWInteractiveImageCalloutStyleProvider

- (THWInteractiveImageCalloutStyleProvider)initWithStorage:(id)storage
{
  v6.receiver = self;
  v6.super_class = THWInteractiveImageCalloutStyleProvider;
  v4 = [(THWInteractiveImageCalloutStyleProvider *)&v6 init];
  if (v4)
  {
    v4->_storage = storage;
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

- (id)paragraphStyleAtParIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v7 = +[TSSPropertyMap propertyMap];
  if (self->_selected)
  {
    [v7 setObject:+[TSUColor whiteColor](TSUColor forProperty:{"whiteColor"), 18}];
  }

  v8 = [+[TSWPStorageStyleProvider styleProviderForStorage:](TSWPStorageStyleProvider styleProviderForStorage:{self->_storage), "paragraphStyleAtParIndex:effectiveRange:", index, range}];
  [v8 floatValueForProperty:17];
  v10 = self->_fontScale * v9;
  *&v10 = v10;
  [v7 setFloatValue:17 forProperty:v10];
  stylesheet = [v8 stylesheet];

  return [stylesheet variationOfStyle:v8 propertyMap:v7];
}

- (id)modifiedCharacterStyle:(id)style atCharIndex:(unint64_t)index
{
  v6 = [TSSPropertyMap propertyMap:style];
  [style floatValueForProperty:17];
  v8 = self->_fontScale * v7;
  *&v8 = v8;
  [v6 setFloatValue:17 forProperty:v8];
  if (self->_selected)
  {
    [v6 setObject:+[TSUColor whiteColor](TSUColor forProperty:{"whiteColor"), 18}];
  }

  stylesheet = [style stylesheet];

  return [stylesheet variationOfStyle:style propertyMap:v6];
}

@end