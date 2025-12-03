@interface NTKParmesanGalleryController
- (NSString)placeholderName;
- (NTKParmesanGalleryController)init;
- (id)compositionForCurrentAssetWithTimeOption:(int64_t)option numerals:(unint64_t)numerals;
- (id)currentComposition;
- (void)faceViewTapped;
- (void)loadCurrentComposition;
- (void)setComplicationVisibility:(unint64_t)visibility;
- (void)setContentEffect:(id)effect;
- (void)setContentOption:(int64_t)option;
- (void)setFaceState:(id)state;
- (void)setGalleryView:(id)view;
- (void)setNumerals:(unint64_t)numerals;
- (void)setPlaceholderName:(id)name;
- (void)setResourceDirectory:(id)directory;
- (void)setTimeOption:(int64_t)option;
- (void)transitionContentEffectFromEffect:(id)effect toEffect:(id)toEffect progress:(double)progress;
- (void)transitionFromComplicationVisibility:(unint64_t)visibility toComplicationVisibility:(unint64_t)complicationVisibility progress:(double)progress;
- (void)transitionFromNumerals:(unint64_t)numerals toNumerals:(unint64_t)toNumerals progress:(double)progress;
- (void)transitionFromTimeOption:(int64_t)option toTimeOption:(int64_t)timeOption progress:(double)progress;
- (void)transitionFromTypeface:(int64_t)typeface toTypeface:(int64_t)toTypeface progress:(double)progress;
- (void)transitionTimeEffectFromPalette:(id)palette toPalette:(id)toPalette progress:(double)progress;
- (void)updateTimeEffectStyleWithPalette:(id)palette;
@end

@implementation NTKParmesanGalleryController

- (void)setGalleryView:(id)view
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView) = view;
  viewCopy = view;
}

- (void)setComplicationVisibility:(unint64_t)visibility
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_complicationVisibility) = visibility;
  v3 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  *&v3[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility] = visibility;
  selfCopy = self;
  v4 = v3;
  sub_23BF97F5C();
}

- (void)setNumerals:(unint64_t)numerals
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_numerals) = numerals;
  selfCopy = self;
  sub_23BFBEA7C();
}

- (void)setTimeOption:(int64_t)option
{
  *(self + OBJC_IVAR___NTKParmesanGalleryController_timeOption) = option;
  selfCopy = self;
  sub_23BFBEBB4();
}

- (void)setContentEffect:(id)effect
{
  v4 = *(self + OBJC_IVAR___NTKParmesanGalleryController_contentEffect);
  *(self + OBJC_IVAR___NTKParmesanGalleryController_contentEffect) = effect;
  effectCopy = effect;
  selfCopy = self;

  sub_23BFBEE10();
}

- (void)setContentOption:(int64_t)option
{
  selfCopy = self;
  sub_23BFBEEF4(option);
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

- (void)setPlaceholderName:(id)name
{
  if (name)
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
  selfCopy = self;

  sub_23BFBF10C();
}

- (void)setFaceState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_23BFBFEA0(stateCopy);
}

- (id)currentComposition
{
  selfCopy = self;
  v3 = sub_23BFC0588();

  return v3;
}

- (id)compositionForCurrentAssetWithTimeOption:(int64_t)option numerals:(unint64_t)numerals
{
  if (*(self + OBJC_IVAR___NTKParmesanGalleryController_dataSource))
  {
    v7 = *(self + OBJC_IVAR___NTKParmesanGalleryController_dataSource + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 72);
    selfCopy = self;
    swift_unknownObjectRetain();
    v11 = v9(option, numerals, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateTimeEffectStyleWithPalette:(id)palette
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_23BF68DE4();
  v7 = v6;
  v8 = selfCopy + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle;
  v9 = *(selfCopy + OBJC_IVAR___NTKParmesanGalleryController_timeEffectStyle);
  *v8 = v5;
  v10 = v8[8];
  v8[8] = v6;
  sub_23BF674B4(v5, v6);
  sub_23BF674C8(v9, v10);
  sub_23BFBEC8C();
  swift_unknownObjectRelease();

  sub_23BF674C8(v5, v7);
}

- (void)transitionTimeEffectFromPalette:(id)palette toPalette:(id)toPalette progress:(double)progress
{
  v7 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v14 = v7;
  v9 = sub_23BF68DE4();
  LOBYTE(v7) = v10;
  swift_getObjectType();
  v11 = sub_23BF68DE4();
  v13 = v12;
  sub_23BF98A84(v9, v7, v11, v12, progress);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_23BF674C8(v11, v13);
  sub_23BF674C8(v9, v7);
}

- (void)transitionFromComplicationVisibility:(unint64_t)visibility toComplicationVisibility:(unint64_t)complicationVisibility progress:(double)progress
{
  v5 = *(self + OBJC_IVAR___NTKParmesanGalleryController_galleryView);
  v6 = *&v5[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v6)
  {
    selfCopy = self;
    v10 = v5;
    v11 = v6;
    sub_23BFBC05C(visibility, complicationVisibility, progress);
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionContentEffectFromEffect:(id)effect toEffect:(id)toEffect progress:(double)progress
{
  effectCopy = effect;
  toEffectCopy = toEffect;
  selfCopy = self;
  sub_23BFC0E4C(effectCopy, toEffectCopy, progress);
}

- (void)transitionFromTypeface:(int64_t)typeface toTypeface:(int64_t)toTypeface progress:(double)progress
{
  selfCopy = self;
  sub_23BFC0FD8(typeface, toTypeface, progress);
}

- (void)transitionFromNumerals:(unint64_t)numerals toNumerals:(unint64_t)toNumerals progress:(double)progress
{
  selfCopy = self;
  sub_23BFC1110(numerals, toNumerals, progress);
}

- (void)transitionFromTimeOption:(int64_t)option toTimeOption:(int64_t)timeOption progress:(double)progress
{
  selfCopy = self;
  sub_23BFC13C8(option, timeOption, progress);
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
  selfCopy = self;
  v4 = v2;
  v5 = sub_23BFC0588();
  sub_23BF99A64(v5);
}

- (void)faceViewTapped
{
  type metadata accessor for ParmesanGalleryTransitionTap();
  swift_allocObject();
  selfCopy = self;

  sub_23BFC1E74(v3, selfCopy);
}

- (void)setResourceDirectory:(id)directory
{
  if (directory)
  {
    v4 = sub_23BFFA300();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_23BFC1B88(v4, v6);
}

@end