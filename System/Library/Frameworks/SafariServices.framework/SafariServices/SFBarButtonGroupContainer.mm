@interface SFBarButtonGroupContainer
- (NSDictionary)buttonIdentifiers;
- (SFBarButtonGroupContainer)initWithCoder:(id)coder;
- (SFBarButtonGroupContainer)initWithConfiguration:(id)configuration;
- (SFBarButtonGroupContainer)initWithFrame:(CGRect)frame;
- (_SFBarRegistrationToken)barRegistration;
- (double)totalWidth;
- (id)popoverSourceInfoForBarItem:(int64_t)item;
- (int64_t)_itemDistribution;
- (void)_setItemDistribution:(int64_t)distribution;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)didSetBarItem:(int64_t)item barButtonItem:(id)buttonItem;
- (void)setButtonIdentifiers:(id)identifiers;
- (void)setItems:(id)items animated:(BOOL)animated;
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

- (void)setButtonIdentifiers:(id)identifiers
{
  sub_1D47A42A4(0, &qword_1EC7DF018);
  sub_1D47A42A4(0, &qword_1EC7DF020);
  sub_1D47A95F4();
  *(self + OBJC_IVAR___SFBarButtonGroupContainer_buttonIdentifiers) = sub_1D47BF260();
}

- (SFBarButtonGroupContainer)initWithCoder:(id)coder
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

- (SFBarButtonGroupContainer)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_1D47A96A4(configurationCopy);

  return v4;
}

- (double)totalWidth
{
  v3 = OBJC_IVAR___SFBarButtonGroupContainer_barButtonItems;
  swift_beginAccess();
  v4 = *(*(self + v3) + 16);
  selfCopy = self;
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
  selfCopy = self;
  containerStackView = [(SFBarButtonGroupContainer *)selfCopy containerStackView];
  distribution = [(UIStackView *)containerStackView distribution];

  return distribution;
}

- (void)_setItemDistribution:(int64_t)distribution
{
  selfCopy = self;
  containerStackView = [(SFBarButtonGroupContainer *)selfCopy containerStackView];
  [(UIStackView *)containerStackView setDistribution:distribution];
}

- (void)setItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if (items)
  {
    sub_1D47A42A4(0, &qword_1EC7DF018);
    itemsCopy = sub_1D47BF2F0();
  }

  selfCopy = self;
  sub_1D47A5A9C(itemsCopy, animatedCopy);
}

- (void)didSetBarItem:(int64_t)item barButtonItem:(id)buttonItem
{
  buttonItemCopy = buttonItem;
  selfCopy = self;
  sub_1D47A97FC(buttonItemCopy);
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = _Block_copy(block);
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

  imageCopy = image;
  viewCopy = view;
  selfCopy = self;
  sub_1D47A7190(imageCopy, viewCopy, item, v15, v16, x, y, width, height);
  sub_1D47A965C(v15);
}

- (id)popoverSourceInfoForBarItem:(int64_t)item
{
  selfCopy = self;
  v5 = sub_1D47A74B4(item);

  return v5;
}

- (_SFBarRegistrationToken)barRegistration
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SFBarButtonGroupContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end