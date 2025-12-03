@interface ContactsButtonSlotTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style;
- (_TtC24ContactsButtonXPCService21ContactsButtonSlotTag)init;
- (id)resolvedStyleForStyle:(id)style;
@end

@implementation ContactsButtonSlotTag

- (id)resolvedStyleForStyle:(id)style
{
  v8[4] = sub_10000918C;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000091DC;
  v8[3] = &unk_100029598;
  v4 = _Block_copy(v8);
  styleCopy = style;
  v6 = [styleCopy copyWithChangeBlock:v4];
  _Block_release(v4);

  return v6;
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)style
{
  styleCopy = style;
  displayScale = [styleCopy displayScale];
  if ((displayScale.var0 & 0x80) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  var0 = displayScale.var0;
  displayScale2 = [styleCopy displayScale];

  if (((20 * displayScale2) & 0x1F00) != 0)
  {
LABEL_5:
    __break(1u);
    return displayScale;
  }

  return (0x1000100010001 * (2 * (var0 & 0x7F) + (20 * displayScale2)));
}

- (_TtC24ContactsButtonXPCService21ContactsButtonSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end