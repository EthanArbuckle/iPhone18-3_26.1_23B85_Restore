@interface ParmesanButtonTrayReusableView
- (_TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView)initWithCoder:(id)a3;
- (_TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView)initWithFrame:(CGRect)a3;
@end

@implementation ParmesanButtonTrayReusableView

- (_TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView_tray) = [objc_allocWithZone(type metadata accessor for ParmesanButtonTrayContentView()) initWithFrame_];
  v13.receiver = self;
  v13.super_class = type metadata accessor for ParmesanButtonTrayReusableView();
  v8 = [(ParmesanButtonTrayReusableView *)&v13 initWithFrame:x, y, width, height];
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView_tray;
  v10 = *(&v8->super.super.super.super.isa + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView_tray);
  v11 = v8;
  [(ParmesanButtonTrayReusableView *)v11 addSubview:v10];
  [*(&v8->super.super.super.super.isa + v9) constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  return v11;
}

- (_TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView)initWithCoder:(id)a3
{
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

@end