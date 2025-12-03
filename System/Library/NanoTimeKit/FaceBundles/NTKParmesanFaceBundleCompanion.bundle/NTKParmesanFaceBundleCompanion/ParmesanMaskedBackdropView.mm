@interface ParmesanMaskedBackdropView
- (_TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView)initWithCoder:(id)coder;
- (void)addMaskingSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation ParmesanMaskedBackdropView

- (_TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for ParmseanPassthroughView()) initWithFrame_];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropMarginWidth) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropFilters) = MEMORY[0x277D84F90];
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropGroupName);
  *v5 = 0;
  v5[1] = 0;
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParmesanMaskedBackdropView();
  v2 = v4.receiver;
  [(ParmesanMaskedBackdropView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView];
  [v2 bounds];
  [v3 setFrame_];
}

- (void)addMaskingSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  [subviewCopy removeFromSuperview];
  v5 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView);
  [v5 addSubview_];
}

@end