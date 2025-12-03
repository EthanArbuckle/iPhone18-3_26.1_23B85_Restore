@interface CameraPicker
- (void)_setValue:(id)value forProperty:(id)property;
- (void)setSourceType:(int64_t)type;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CameraPicker

- (void)_setValue:(id)value forProperty:(id)property
{
  if (!value)
  {
    memset(v13, 0, sizeof(v13));
    propertyCopy = property;
    selfCopy = self;
    if (property)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  propertyCopy2 = property;
  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_100008A84();
  swift_unknownObjectRelease();
  if (!property)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_100008964();
  v10 = v9;

LABEL_6:
  sub_100006CCC(v13, v8, v10);

  sub_100007A64(v13);
}

- (void)setSourceType:(int64_t)type
{
  selfCopy = self;
  sub_100006FE0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100007020(disappear);
}

@end