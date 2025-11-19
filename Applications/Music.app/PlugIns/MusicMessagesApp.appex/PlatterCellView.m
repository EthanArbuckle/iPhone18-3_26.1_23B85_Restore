@interface PlatterCellView
- (BOOL)isHighlighted;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PlatterCellView

- (void)layoutSubviews
{
  v2 = self;
  sub_100011D3C();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlatterCellView();
  return [(PlatterCellView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_100011F38(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100012070();
}

@end