@interface ParmesanPreviewContentView
- (_TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ParmesanPreviewContentView

- (_TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParmesanPreviewContentView();
  v2 = v5.receiver;
  [(ParmesanPreviewContentView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_timeView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_cropView];
  [v2 bounds];
  [v4 setFrame_];
}

@end