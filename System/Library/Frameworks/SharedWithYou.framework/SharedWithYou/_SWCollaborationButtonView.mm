@interface _SWCollaborationButtonView
- (void)setDetailViewListContent:(id)a3;
@end

@implementation _SWCollaborationButtonView

- (void)setDetailViewListContent:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationButtonView;
  [(SWCollaborationView *)&v3 setContentView:a3];
}

@end