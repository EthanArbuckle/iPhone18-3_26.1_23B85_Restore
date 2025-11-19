@interface MacCollectionRenameView
- (void)didMoveToWindow;
@end

@implementation MacCollectionRenameView

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = MacCollectionRenameView;
  [(MacCollectionRenameView *)&v14 didMoveToWindow];
  v3 = [(MacCollectionRenameView *)self window];
  [v3 setCanResizeToFitContent:1];

  [(MacCollectionRenameView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v5 = v4;
  v7 = v6;
  v8 = [(MacCollectionRenameView *)self window];
  v9 = [v8 windowScene];
  v10 = [v9 sizeRestrictions];
  [v10 setMinimumSize:{v5, v7}];

  v11 = [(MacCollectionRenameView *)self window];
  v12 = [v11 windowScene];
  v13 = [v12 sizeRestrictions];
  [v13 setMaximumSize:{v5, v7}];
}

@end