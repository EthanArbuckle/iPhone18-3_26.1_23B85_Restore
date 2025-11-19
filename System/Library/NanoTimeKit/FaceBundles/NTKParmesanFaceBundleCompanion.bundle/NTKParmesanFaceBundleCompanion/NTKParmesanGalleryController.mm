@interface NTKParmesanGalleryController
- (NSString)placeholderName;
- (NTKParmesanGalleryController)init;
- (id)compositionForCurrentAssetWithTimeOption:(int64_t)a3 numerals:(unint64_t)a4;
- (id)currentComposition;
- (void)faceViewTapped;
- (void)loadCurrentComposition;
- (void)setComplicationVisibility:(unint64_t)a3;
- (void)setContentEffect:(id)a3;
- (void)setContentOption:(int64_t)a3;
- (void)setFaceState:(id)a3;
- (void)setGalleryView:(id)a3;
- (void)setNumerals:(unint64_t)a3;
- (void)setPlaceholderName:(id)a3;
- (void)setResourceDirectory:(id)a3;
- (void)setTimeOption:(int64_t)a3;
- (void)transitionContentEffectFromEffect:(id)a3 toEffect:(id)a4 progress:(double)a5;
- (void)transitionFromComplicationVisibility:(unint64_t)a3 toComplicationVisibility:(unint64_t)a4 progress:(double)a5;
- (void)transitionFromNumerals:(unint64_t)a3 toNumerals:(unint64_t)a4 progress:(double)a5;
- (void)transitionFromTimeOption:(int64_t)a3 toTimeOption:(int64_t)a4 progress:(double)a5;
- (void)transitionFromTypeface:(int64_t)a3 toTypeface:(int64_t)a4 progress:(double)a5;
- (void)transitionTimeEffectFromPalette:(id)a3 toPalette:(id)a4 progress:(double)a5;
- (void)updateTimeEffectStyleWithPalette:(id)a3;
@end

@implementation NTKParmesanGalleryController

- (void)setGalleryView:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView) = a3;
  v3 = a3;
}

- (void)setComplicationVisibility:(unint64_t)a3
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_complicationVisibility) = a3;
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  *&v3[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility] = a3;
  v5 = self;
  v4 = v3;
  sub_23BF97F5C();
}

- (void)setNumerals:(unint64_t)a3
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_numerals) = a3;
  v3 = self;
  sub_23BFBEA7C();
}

- (void)setTimeOption:(int64_t)a3
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_timeOption) = a3;
  v3 = self;
  sub_23BFBEBB4();
}

- (void)setContentEffect:(id)a3
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryController_contentEffect);
  *(self + OBJC_IVAR___NTKParmesanGalleryController_contentEffect) = a3;
  v5 = a3;
  v6 = self;

  sub_23BFBEE10();
}

- (void)setContentOption:(int64_t)a3
{
  v4 = self;
  sub_23BFBEEF4(a3);
}

- (NSString)placeholderName
{
  if (*(self + OBJC_IVAR___NTKParmesanGalleryController_placeholderName + 8))
  {

    v2 = sub_23BFFA2C0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPlaceholderName:(id)a3
{
  if (a3)
  {
    v4 = sub_23BFFA300();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___NTKParmesanGalleryController_placeholderName);
  *v6 = v4;
  v6[1] = v5;
  v7 = self;

  sub_23BFBF10C();
}

- (void)setFaceState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23BFBFEA0(v4);
}

- (id)currentComposition
{
  v2 = self;
  v3 = sub_23BFC0588();

  return v3;
}

- (id)compositionForCurrentAssetWithTimeOption:(int64_t)a3 numerals:(unint64_t)a4
{
  if (*(self + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    v7 = *(self + OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 72);
    v10 = self;
    swift_unknownObjectRetain();
    v11 = v9(a3, a4, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateTimeEffectStyleWithPalette:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_23BF68DE4();
  v7 = v6;
  v8 = v4 + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle;
  v9 = *(v4 + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle);
  *v8 = v5;
  v10 = v8[8];
  v8[8] = v6;
  sub_23BF674B4(v5, v6);
  sub_23BF674C8(v9, v10);
  sub_23BFBEC8C();
  swift_unknownObjectRelease();

  sub_23BF674C8(v5, v7);
}

- (void)transitionTimeEffectFromPalette:(id)a3 toPalette:(id)a4 progress:(double)a5
{
  v7 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  v14 = v7;
  v9 = sub_23BF68DE4();
  LOBYTE(v7) = v10;
  swift_getObjectType();
  v11 = sub_23BF68DE4();
  v13 = v12;
  sub_23BF98A84(v9, v7, v11, v12, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_23BF674C8(v11, v13);
  sub_23BF674C8(v9, v7);
}

- (void)transitionFromComplicationVisibility:(unint64_t)a3 toComplicationVisibility:(unint64_t)a4 progress:(double)a5
{
  v5 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  v6 = *&v5[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v6)
  {
    v12 = self;
    v10 = v5;
    v11 = v6;
    sub_23BFBC05C(a3, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionContentEffectFromEffect:(id)a3 toEffect:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_23BFC0E4C(v8, v9, a5);
}

- (void)transitionFromTypeface:(int64_t)a3 toTypeface:(int64_t)a4 progress:(double)a5
{
  v8 = self;
  sub_23BFC0FD8(a3, a4, a5);
}

- (void)transitionFromNumerals:(unint64_t)a3 toNumerals:(unint64_t)a4 progress:(double)a5
{
  v8 = self;
  sub_23BFC1110(a3, a4, a5);
}

- (void)transitionFromTimeOption:(int64_t)a3 toTimeOption:(int64_t)a4 progress:(double)a5
{
  v8 = self;
  sub_23BFC13C8(a3, a4, a5);
}

- (NTKParmesanGalleryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loadCurrentComposition
{
  v2 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  v3 = self;
  v4 = v2;
  v5 = sub_23BFC0588();
  sub_23BF99A64(v5);
}

- (void)faceViewTapped
{
  type metadata accessor for ParmesanGalleryTransitionTap();
  swift_allocObject();
  v4 = self;

  sub_23BFC1E74(v3, v4);
}

- (void)setResourceDirectory:(id)a3
{
  if (a3)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_23BFC1B88(v4, v6);
}

@end