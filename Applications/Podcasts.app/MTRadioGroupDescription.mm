@interface MTRadioGroupDescription
+ (id)radioGroupWithInitialValue:(unint64_t)a3 changeHandler:(id)a4;
- (MTRadioGroupDescription)init;
- (id)settings;
@end

@implementation MTRadioGroupDescription

- (MTRadioGroupDescription)init
{
  v4.receiver = self;
  v4.super_class = MTRadioGroupDescription;
  v2 = [(MTRadioGroupDescription *)&v4 init];
  if (v2)
  {
    v2->_radioSettings = CFArrayCreateMutable(0, 0, 0);
  }

  return v2;
}

+ (id)radioGroupWithInitialValue:(unint64_t)a3 changeHandler:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(a1);
  [v7 setValue:a3];
  [v7 setChangeHandler:v6];

  return v7;
}

- (id)settings
{
  Count = CFArrayGetCount(self->_radioSettings);
  v4 = +[NSMutableArray array];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = CFArrayGetValueAtIndex(self->_radioSettings, i);
      [v4 addObject:v6];
    }
  }

  return v4;
}

@end