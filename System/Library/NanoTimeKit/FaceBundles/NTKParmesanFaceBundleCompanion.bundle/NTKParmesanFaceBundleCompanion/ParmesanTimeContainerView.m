@interface ParmesanTimeContainerView
- (_TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
@end

@implementation ParmesanTimeContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_23BFBC824();
}

- (_TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_23BFF8D80();
    v9 = sub_23BFF8D90();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_23BFF8D90();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_23BFBDC04(v8);

  sub_23BF88F64(v8);
}

- (void)setTimeOffset:(double)a3
{
  v4 = self;
  sub_23BFBD7AC(a3);
}

@end