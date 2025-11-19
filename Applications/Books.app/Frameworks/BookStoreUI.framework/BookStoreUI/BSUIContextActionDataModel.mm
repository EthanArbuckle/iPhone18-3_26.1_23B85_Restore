@interface BSUIContextActionDataModel
- (BOOL)isAnODPRecommendation;
- (BOOL)shouldReportFigaro;
- (BOOL)supportsSuggestionContextMenu;
- (BSUIContextActionDataModel)init;
- (BSUIContextActionDataModel)initWithAssetModel:(id)a3 sourceView:(id)a4;
- (BSUIContextActionDataModel)initWithAssetModels:(id)a3;
- (NSValue)sourcePoint;
- (UIBarButtonItem)sourceBarButtonItem;
- (id)originatingLocation;
- (void)setIsAnODPRecommendation:(BOOL)a3;
- (void)setODPAnalyticsWithAttributes:(id)a3;
- (void)setOriginatingLocation:(id)a3;
- (void)setShouldReportFigaro:(BOOL)a3;
- (void)setSourcePoint:(id)a3;
- (void)setSupportsSuggestionContextMenu:(BOOL)a3;
@end

@implementation BSUIContextActionDataModel

- (id)originatingLocation
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_7A788(self + v3, v13);
  v4 = v14;
  if (v14)
  {
    v5 = sub_72084(v13, v14);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v6 + 16))(v9, v7);
    v10 = sub_2C6598();
    (*(v6 + 8))(v9, v4);
    sub_68CD0(v13);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setOriginatingLocation:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2C6128();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = OBJC_IVAR___BSUIContextActionDataModel_originatingLocation;
  swift_beginAccess();
  sub_CEFB8(v7, self + v6);
  swift_endAccess();
}

- (BOOL)shouldReportFigaro
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldReportFigaro:(BOOL)a3
{
  v5 = OBJC_IVAR___BSUIContextActionDataModel_shouldReportFigaro;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isAnODPRecommendation
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAnODPRecommendation:(BOOL)a3
{
  v5 = OBJC_IVAR___BSUIContextActionDataModel_isAnODPRecommendation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)supportsSuggestionContextMenu
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsSuggestionContextMenu:(BOOL)a3
{
  v5 = OBJC_IVAR___BSUIContextActionDataModel_supportsSuggestionContextMenu;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (UIBarButtonItem)sourceBarButtonItem
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSValue)sourcePoint
{
  v3 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourcePoint:(id)a3
{
  v5 = OBJC_IVAR___BSUIContextActionDataModel_sourcePoint;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BSUIContextActionDataModel)initWithAssetModels:(id)a3
{
  type metadata accessor for ContextActionDataModel.Asset();
  v3 = sub_2C5B28();
  return ContextActionDataModel.init(assets:)(v3);
}

- (BSUIContextActionDataModel)initWithAssetModel:(id)a3 sourceView:(id)a4
{
  v5 = a3;
  v6 = a4;
  return ContextActionDataModel.init(asset:sourceView:)(v5, a4);
}

- (void)setODPAnalyticsWithAttributes:(id)a3
{
  v4 = sub_2C57E8();
  v5 = self;
  sub_192CCC(v4);
}

- (BSUIContextActionDataModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end