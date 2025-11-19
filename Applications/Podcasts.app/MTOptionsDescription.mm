@interface MTOptionsDescription
+ (id)optionsWithLongTitles:(id)a3 shortTitles:(id)a4 valueList:(id)a5 footerTextCallback:(id)a6 headerTextCallback:(id)a7;
- (unint64_t)indexForValue:(unint64_t)a3;
- (unint64_t)valueForIndex:(unint64_t)a3;
@end

@implementation MTOptionsDescription

+ (id)optionsWithLongTitles:(id)a3 shortTitles:(id)a4 valueList:(id)a5 footerTextCallback:(id)a6 headerTextCallback:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(MTOptionsDescription);
  [(MTOptionsDescription *)v16 setShortTitles:v14];

  [(MTOptionsDescription *)v16 setLongTitles:v15];
  [(MTOptionsDescription *)v16 setValueSet:v13];

  [(MTOptionsDescription *)v16 setFooterCallback:v12];
  [(MTOptionsDescription *)v16 setHeaderCallback:v11];

  return v16;
}

- (unint64_t)indexForValue:(unint64_t)a3
{
  valueSet = self->_valueSet;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSOrderedSet *)valueSet indexOfObject:v4];

  return v5;
}

- (unint64_t)valueForIndex:(unint64_t)a3
{
  v3 = [(NSOrderedSet *)self->_valueSet objectAtIndex:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

@end