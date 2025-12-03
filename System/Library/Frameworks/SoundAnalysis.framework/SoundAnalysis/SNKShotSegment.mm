@interface SNKShotSegment
- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange;
- (NSURL)url;
- (void)setTimeRange:(id *)range;
- (void)setUrl:(id)url;
@end

@implementation SNKShotSegment

- ($E36B78CDAC119E0352F6B513F3BB0FF8)timeRange
{
  sub_1C97AFE28(v9);
  v5 = v12;
  v6 = v11;
  v7 = v10;
  v8 = v9[1];
  retstr->var0.var0 = v9[0];
  *&retstr->var0.var1 = v8;
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = v6;
  retstr->var1.var3 = v5;
  return result;
}

- (void)setTimeRange:(id *)range
{
  var3 = range->var1.var3;
  v4[0] = *&range->var0.var0;
  v4[1] = *&range->var0.var1;
  v5 = *&range->var0.var3;
  v6 = *&range->var1.var1;
  v7 = var3;
  sub_1C97AFEE8(v4);
}

- (NSURL)url
{
  v2 = sub_1C9A91558();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97B0150(v5);
  v6 = sub_1C9A91488();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (void)setUrl:(id)url
{
  v4 = sub_1C9A91558();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  selfCopy = self;
  sub_1C97B02C4(v6);
}

@end