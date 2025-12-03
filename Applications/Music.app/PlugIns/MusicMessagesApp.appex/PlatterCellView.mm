@interface PlatterCellView
- (BOOL)isHighlighted;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PlatterCellView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100011D3C();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlatterCellView();
  return [(PlatterCellView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_100011F38(highlighted);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100012070();
}

@end