@interface NTKParmesanGalleryView
- (CGRect)normalizedKeylineRect;
- (NTKParmesanGalleryTimeTransitionDelegate)transitionDelegate;
- (NTKParmesanGalleryView)initWithFrame:(CGRect)frame;
- (NTKParmesanGalleryView)initWithFrame:(CGRect)frame device:(id)device typeface:(int64_t)typeface numerals:(unint64_t)numerals timeOption:(int64_t)option timeLayout:(id)layout timePalette:(id)palette;
- (NTKTimeView)face_timeView;
- (_TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance)timeAppearance;
- (int64_t)timeTextAlignment;
- (void)disableTimeChangeAnimations;
- (void)enableTimeChangeAnimations;
- (void)setComplicationVisibility:(unint64_t)visibility;
- (void)setComposition:(id)composition;
- (void)setContentEffect:(id)effect;
- (void)setCurrentItem:(id)item;
- (void)setLayout:(id)layout;
- (void)setNumerals:(unint64_t)numerals;
- (void)setTypeface:(int64_t)typeface;
- (void)swatchSetTimeOption:(int64_t)option typeface:(int64_t)typeface numerals:(unint64_t)numerals style:(int64_t)style;
@end

@implementation NTKParmesanGalleryView

- (void)setCurrentItem:(id)item
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  *(self + OBJC_IVAR___NTKParmesanGalleryView_currentItem) = item;
  itemCopy = item;
}

- (void)setComplicationVisibility:(unint64_t)visibility
{
  *(self + OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility) = visibility;
  selfCopy = self;
  sub_23BF97F5C();
}

- (void)setContentEffect:(id)effect
{
  v5 = *(self + OBJC_IVAR___NTKParmesanGalleryView_contentEffect);
  *(self + OBJC_IVAR___NTKParmesanGalleryView_contentEffect) = effect;
  effectCopy = effect;
  selfCopy = self;

  sub_23BF98D38(effect);
}

- (NTKParmesanGalleryTimeTransitionDelegate)transitionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setComposition:(id)composition
{
  compositionCopy = composition;
  selfCopy = self;
  sub_23BF99A64(composition);
}

- (NTKParmesanGalleryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NTKTimeView)face_timeView
{
  result = *(self + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (_TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance)timeAppearance
{
  v2 = *(&self->super.isa + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
  }

  __break(1u);
  return self;
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_23BF9BF08(layoutCopy);
}

- (void)setTypeface:(int64_t)typeface
{
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    sub_23BFBC664(0, typeface, 0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

- (void)setNumerals:(unint64_t)numerals
{
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    sub_23BFBC664(0, 0, 1, numerals, 0);
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)timeTextAlignment
{
  selfCopy = self;
  v3 = sub_23BF9C180();

  return v3;
}

- (CGRect)normalizedKeylineRect
{
  selfCopy = self;
  sub_23BF9C2B8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)disableTimeChangeAnimations
{
  selfCopy = self;
  sub_23BF9C45C(0);
}

- (void)enableTimeChangeAnimations
{
  selfCopy = self;
  sub_23BF9C45C(1);
}

- (NTKParmesanGalleryView)initWithFrame:(CGRect)frame device:(id)device typeface:(int64_t)typeface numerals:(unint64_t)numerals timeOption:(int64_t)option timeLayout:(id)layout timePalette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  layoutCopy = layout;
  return sub_23BFEB674(deviceCopy, typeface, numerals, option, layout, palette, x, y, width, height);
}

- (void)swatchSetTimeOption:(int64_t)option typeface:(int64_t)typeface numerals:(unint64_t)numerals style:(int64_t)style
{
  selfCopy = self;
  sub_23BFEBE80(option, typeface, numerals, style);
}

@end