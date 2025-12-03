@interface MTRadioGroupDescription
+ (id)radioGroupWithInitialValue:(unint64_t)value changeHandler:(id)handler;
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

+ (id)radioGroupWithInitialValue:(unint64_t)value changeHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(self);
  [v7 setValue:value];
  [v7 setChangeHandler:handlerCopy];

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