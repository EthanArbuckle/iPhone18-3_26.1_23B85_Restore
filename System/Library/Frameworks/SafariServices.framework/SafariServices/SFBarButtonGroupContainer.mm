@interface SFBarButtonGroupContainer
- (NSDictionary)buttonIdentifiers;
- (SFBarButtonGroupContainer)initWithCoder:(id)a3;
- (SFBarButtonGroupContainer)initWithConfiguration:(id)a3;
- (SFBarButtonGroupContainer)initWithFrame:(CGRect)a3;
- (_SFBarRegistrationToken)barRegistration;
- (double)totalWidth;
- (id)popoverSourceInfoForBarItem:(int64_t)a3;
- (int64_t)_itemDistribution;
- (void)_setItemDistribution:(int64_t)a3;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7;
- (void)didSetBarItem:(int64_t)a3 barButtonItem:(id)a4;
- (void)setButtonIdentifiers:(id)a3;
- (void)setItems:(id)a3 animated:(BOOL)a4;
@end

@implementation SFBarButtonGroupContainer

- (NSDictionary)buttonIdentifiers
{
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A42A4(0, &qword_1EC7DF020);
  sub_1D47A95F4();

  v2 = sub_1D47BF250();

  return v2;
}

- (void)setButtonIdentifiers:(id)a3
{
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A42A4(0, &qword_1EC7DF020);
  sub_1D47A95F4();
  *(self + OBJC_IVAR___SFBarButtonGroupContainer_buttonIdentifiers) = sub_1D47BF260();
}

- (SFBarButtonGroupContainer)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR___SFBarButtonGroupContainer_buttonIdentifiers;
  *(self + v5) = sub_1D47A94D4(v4);
  swift_unknownObjectWeakInit();
  result = sub_1D47BF520();
  __break(1u);
  return result;
}

- (SFBarButtonGroupContainer)initWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = sub_1D47A96A4(v3);

  return v4;
}

- (double)totalWidth
{
  v3 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
  swift_beginAccess();
  v4 = *(*(self + v3) + 16);
  v5 = self;
  v6 = sub_1D47A4B78();
  v7 = sub_1D47A58B0();

  if (!__OFSUB__(v7, 1))
  {
    return v6 * v4 + (v4 + -1.0) * 0.0 + (v7 - 1) * 6.0;
  }

  __break(1u);
  return result;
}

- (int64_t)_itemDistribution
{
  v2 = self;
  v3 = [(SFBarButtonGroupContainer *)v2 containerStackView];
  v4 = [(UIStackView *)v3 distribution];

  return v4;
}

- (void)_setItemDistribution:(int64_t)a3
{
  v5 = self;
  v4 = [(SFBarButtonGroupContainer *)v5 containerStackView];
  [(UIStackView *)v4 setDistribution:a3];
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    sub_1D47A42A4(0, &qword_1EC7DF018);
    v5 = sub_1D47BF2F0();
  }

  v7 = self;
  sub_1D47A5A9C(v5, v4);
}

- (void)didSetBarItem:(int64_t)a3 barButtonItem:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_1D47A97FC(v5);
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = _Block_copy(a7);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_1D47A966C;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  v18 = a5;
  v19 = self;
  sub_1D47A7190(v17, v18, a6, v15, v16, x, y, width, height);
  sub_1D47A965C(v15);
}

- (id)popoverSourceInfoForBarItem:(int64_t)a3
{
  v4 = self;
  v5 = sub_1D47A74B4(a3);

  return v5;
}

- (_SFBarRegistrationToken)barRegistration
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SFBarButtonGroupContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end