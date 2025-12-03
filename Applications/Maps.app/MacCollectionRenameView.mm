@interface MacCollectionRenameView
- (void)didMoveToWindow;
@end

@implementation MacCollectionRenameView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacCollectionRenameView;
  [(MacCollectionRenameView *)&v14 didMoveToWindow];
  window = [(MacCollectionRenameView *)self window];
  [window setCanResizeToFitContent:1];

  [(MacCollectionRenameView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  window2 = [(MacCollectionRenameView *)self window];
  windowScene = [window2 windowScene];
  sizeRestrictions = [windowScene sizeRestrictions];
  [sizeRestrictions setMinimumSize:{v5, v7}];

  window3 = [(MacCollectionRenameView *)self window];
  windowScene2 = [window3 windowScene];
  sizeRestrictions2 = [windowScene2 sizeRestrictions];
  [sizeRestrictions2 setMaximumSize:{v5, v7}];
}

@end