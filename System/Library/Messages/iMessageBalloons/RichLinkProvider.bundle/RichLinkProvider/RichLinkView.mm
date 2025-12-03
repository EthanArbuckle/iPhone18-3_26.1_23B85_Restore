@interface RichLinkView
- (RichLinkPluginDataSource)dataSource;
- (id)interactiveViews;
- (void)didMoveToSuperview;
@end

@implementation RichLinkView

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = RichLinkView;
  [(RichLinkView *)&v4 didMoveToSuperview];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained richLinkViewDidMoveToSuperview:self];
}

- (id)interactiveViews
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (RichLinkPluginDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end