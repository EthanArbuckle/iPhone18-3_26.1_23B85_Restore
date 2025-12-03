@interface MTOptionsDescription
+ (id)optionsWithLongTitles:(id)titles shortTitles:(id)shortTitles valueList:(id)list footerTextCallback:(id)callback headerTextCallback:(id)textCallback;
- (unint64_t)indexForValue:(unint64_t)value;
- (unint64_t)valueForIndex:(unint64_t)index;
@end

@implementation MTOptionsDescription

+ (id)optionsWithLongTitles:(id)titles shortTitles:(id)shortTitles valueList:(id)list footerTextCallback:(id)callback headerTextCallback:(id)textCallback
{
  textCallbackCopy = textCallback;
  callbackCopy = callback;
  listCopy = list;
  shortTitlesCopy = shortTitles;
  titlesCopy = titles;
  v16 = objc_alloc_init(MTOptionsDescription);
  [(MTOptionsDescription *)v16 setShortTitles:shortTitlesCopy];

  [(MTOptionsDescription *)v16 setLongTitles:titlesCopy];
  [(MTOptionsDescription *)v16 setValueSet:listCopy];

  [(MTOptionsDescription *)v16 setFooterCallback:callbackCopy];
  [(MTOptionsDescription *)v16 setHeaderCallback:textCallbackCopy];

  return v16;
}

- (unint64_t)indexForValue:(unint64_t)value
{
  valueSet = self->_valueSet;
  v4 = [NSNumber numberWithUnsignedInteger:value];
  v5 = [(NSOrderedSet *)valueSet indexOfObject:v4];

  return v5;
}

- (unint64_t)valueForIndex:(unint64_t)index
{
  v3 = [(NSOrderedSet *)self->_valueSet objectAtIndex:index];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end