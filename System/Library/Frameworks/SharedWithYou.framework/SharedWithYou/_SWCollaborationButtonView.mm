@interface _SWCollaborationButtonView
- (void)setDetailViewListContent:(id)content;
@end

@implementation _SWCollaborationButtonView

- (void)setDetailViewListContent:(id)content
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationButtonView;
  [(SWCollaborationView *)&v3 setContentView:content];
}

@end