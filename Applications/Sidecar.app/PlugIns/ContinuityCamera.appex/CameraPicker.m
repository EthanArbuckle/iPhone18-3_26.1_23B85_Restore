@interface CameraPicker
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)setSourceType:(int64_t)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CameraPicker

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  if (!a3)
  {
    memset(v13, 0, sizeof(v13));
    v11 = a4;
    v12 = self;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = a4;
  v7 = self;
  swift_unknownObjectRetain();
  sub_100008A84();
  swift_unknownObjectRelease();
  if (!a4)
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

- (void)setSourceType:(int64_t)a3
{
  v3 = self;
  sub_100006FE0();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100007020(a3);
}

@end