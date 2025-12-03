@interface BKDebugBoolDefaultSwitch
- (BKDebugBoolDefaultSwitch)initWithCoder:(id)coder;
- (BKDebugBoolDefaultSwitch)initWithDefaults:(id)defaults key:(id)key action:(id)action;
- (BKDebugBoolDefaultSwitch)initWithDefaultsKey:(id)key;
- (BKDebugBoolDefaultSwitch)initWithDefaultsKey:(id)key action:(id)action;
- (BKDebugBoolDefaultSwitch)initWithFrame:(CGRect)frame;
- (BKDebugBoolDefaultSwitch)initWithInitialValue:(BOOL)value synchronize:(id)synchronize;
- (BKDebugBoolDefaultSwitch)initWithInitialValue:(BOOL)value synchronize:(id)synchronize action:(id)action;
- (void)didTapWithSender:(id)sender;
@end

@implementation BKDebugBoolDefaultSwitch

- (BKDebugBoolDefaultSwitch)initWithInitialValue:(BOOL)value synchronize:(id)synchronize
{
  valueCopy = value;
  v6 = _Block_copy(synchronize);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10073B248;
    v11[4] = sub_10073B248;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10021B6B0;
    v11[3] = &unk_100A2ED78;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BKDebugBoolDefaultSwitch *)self initWithInitialValue:valueCopy synchronize:v8 action:0];
  sub_100007020(v6);
  _Block_release(v8);
  return v9;
}

- (BKDebugBoolDefaultSwitch)initWithInitialValue:(BOOL)value synchronize:(id)synchronize action:(id)action
{
  v7 = _Block_copy(synchronize);
  v8 = _Block_copy(action);
  v9 = v8;
  if (!v7)
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v11 = 0;
    return sub_10073A7C4(value, v7, v10, v12, v11);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v7 = sub_10073B248;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = sub_10073B248;
  return sub_10073A7C4(value, v7, v10, v12, v11);
}

- (BKDebugBoolDefaultSwitch)initWithDefaultsKey:(id)key
{
  v5 = objc_opt_self();
  keyCopy = key;
  standardUserDefaults = [v5 standardUserDefaults];
  v8 = [(BKDebugBoolDefaultSwitch *)self initWithDefaults:standardUserDefaults key:keyCopy action:0];

  return v8;
}

- (BKDebugBoolDefaultSwitch)initWithDefaultsKey:(id)key action:(id)action
{
  v4 = _Block_copy(action);
  v5 = sub_1007A2254();
  if (v4)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v6 = v8;
    v10 = v9;
    v5 = v7;
    *(v10 + 16) = v4;
    v11 = sub_10073B248;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  return sub_10073AA38(v5, v6, v11, v10);
}

- (BKDebugBoolDefaultSwitch)initWithDefaults:(id)defaults key:(id)key action:(id)action
{
  v6 = _Block_copy(action);
  v7 = sub_1007A2254();
  v9 = v8;
  if (v6)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v6 = sub_100527170;
  }

  else
  {
    v10 = 0;
  }

  return sub_10073AC84(defaults, v7, v9, v6, v10);
}

- (BKDebugBoolDefaultSwitch)initWithCoder:(id)coder
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)didTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10073AEE0(senderCopy);
}

- (BKDebugBoolDefaultSwitch)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end