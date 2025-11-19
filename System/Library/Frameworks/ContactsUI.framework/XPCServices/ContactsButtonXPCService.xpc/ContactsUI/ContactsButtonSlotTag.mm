@interface ContactsButtonSlotTag
- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3;
- (_TtC24ContactsButtonXPCService21ContactsButtonSlotTag)init;
- (id)resolvedStyleForStyle:(id)a3;
@end

@implementation ContactsButtonSlotTag

- (id)resolvedStyleForStyle:(id)a3
{
  v8[4] = sub_10000918C;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000091DC;
  v8[3] = &unk_100029598;
  v4 = _Block_copy(v8);
  v5 = a3;
  v6 = [v5 copyWithChangeBlock:v4];
  _Block_release(v4);

  return v6;
}

- ($BEA516A46C1BA1F84587E5D243A711F7)backgroundStatisticsRegionForStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 displayScale];
  if ((v4.var0 & 0x80) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  var0 = v4.var0;
  v6 = [v3 displayScale];

  if (((20 * v6) & 0x1F00) != 0)
  {
LABEL_5:
    __break(1u);
    return v4;
  }

  return (0x1000100010001 * (2 * (var0 & 0x7F) + (20 * v6)));
}

- (_TtC24ContactsButtonXPCService21ContactsButtonSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end