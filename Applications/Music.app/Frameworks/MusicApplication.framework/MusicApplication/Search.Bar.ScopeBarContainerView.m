@interface Search.Bar.ScopeBarContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation Search.Bar.ScopeBarContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_295004();
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = _s3BarC21ScopeBarContainerViewCMa();
  v4 = v8.receiver;
  v5 = a3;
  [(Search.Bar.ScopeBarContainerView *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (!v5 || v7 != [v5 horizontalSizeClass])
  {
    [v4 setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
  v3 = self;
  [v2 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  [*(&v3->super.super.super.isa + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar) intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  if (v5 > v9)
  {
    v12 = v5;
  }

  else
  {
    v12 = v9;
  }

  if (v7 > v11)
  {
    v13 = v7;
  }

  else
  {
    v13 = v11;
  }

  v14 = fmax(v11, 32.0);
  if (v7 < 32.0)
  {
    v13 = v14;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_295494(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end