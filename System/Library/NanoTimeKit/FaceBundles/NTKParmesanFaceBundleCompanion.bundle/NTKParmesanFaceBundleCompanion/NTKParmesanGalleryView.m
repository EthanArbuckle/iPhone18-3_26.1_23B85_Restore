@interface NTKParmesanGalleryView
- (CGRect)normalizedKeylineRect;
- (NTKParmesanGalleryTimeTransitionDelegate)transitionDelegate;
- (NTKParmesanGalleryView)initWithFrame:(CGRect)a3;
- (NTKParmesanGalleryView)initWithFrame:(CGRect)a3 device:(id)a4 typeface:(int64_t)a5 numerals:(unint64_t)a6 timeOption:(int64_t)a7 timeLayout:(id)a8 timePalette:(id)a9;
- (NTKTimeView)face_timeView;
- (_TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance)timeAppearance;
- (int64_t)timeTextAlignment;
- (void)disableTimeChangeAnimations;
- (void)enableTimeChangeAnimations;
- (void)setComplicationVisibility:(unint64_t)a3;
- (void)setComposition:(id)a3;
- (void)setContentEffect:(id)a3;
- (void)setCurrentItem:(id)a3;
- (void)setLayout:(id)a3;
- (void)setNumerals:(unint64_t)a3;
- (void)setTypeface:(int64_t)a3;
- (void)swatchSetTimeOption:(int64_t)a3 typeface:(int64_t)a4 numerals:(unint64_t)a5 style:(int64_t)a6;
@end

@implementation NTKParmesanGalleryView

- (void)setCurrentItem:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  *(self + OBJC_IVAR___NTKParmesanGalleryView_currentItem) = a3;
  v3 = a3;
}

- (void)setComplicationVisibility:(unint64_t)a3
{
  *(self + OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility) = a3;
  v3 = self;
  sub_23BF97F5C();
}

- (void)setContentEffect:(id)a3
{
  v5 = *(self + OBJC_IVAR___NTKParmesanGalleryView_contentEffect);
  *(self + OBJC_IVAR___NTKParmesanGalleryView_contentEffect) = a3;
  v6 = a3;
  v7 = self;

  sub_23BF98D38(a3);
}

- (NTKParmesanGalleryTimeTransitionDelegate)transitionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setComposition:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23BF99A64(a3);
}

- (NTKParmesanGalleryView)initWithFrame:(CGRect)a3
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

- (void)setLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BF9BF08(v4);
}

- (void)setTypeface:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v3)
  {
    v6 = self;
    v5 = v3;
    sub_23BFBC664(0, a3, 0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

- (void)setNumerals:(unint64_t)a3
{
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v3)
  {
    v6 = self;
    v5 = v3;
    sub_23BFBC664(0, 0, 1, a3, 0);
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)timeTextAlignment
{
  v2 = self;
  v3 = sub_23BF9C180();

  return v3;
}

- (CGRect)normalizedKeylineRect
{
  v2 = self;
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
  v2 = self;
  sub_23BF9C45C(0);
}

- (void)enableTimeChangeAnimations
{
  v2 = self;
  sub_23BF9C45C(1);
}

- (NTKParmesanGalleryView)initWithFrame:(CGRect)a3 device:(id)a4 typeface:(int64_t)a5 numerals:(unint64_t)a6 timeOption:(int64_t)a7 timeLayout:(id)a8 timePalette:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v19 = a8;
  return sub_23BFEB674(v18, a5, a6, a7, a8, a9, x, y, width, height);
}

- (void)swatchSetTimeOption:(int64_t)a3 typeface:(int64_t)a4 numerals:(unint64_t)a5 style:(int64_t)a6
{
  v10 = self;
  sub_23BFEBE80(a3, a4, a5, a6);
}

@end