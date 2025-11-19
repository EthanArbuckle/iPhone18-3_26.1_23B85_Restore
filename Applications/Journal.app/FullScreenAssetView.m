@interface FullScreenAssetView
- (void)dealloc;
- (void)removeFromSuperview;
@end

@implementation FullScreenAssetView

- (void)removeFromSuperview
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v4 name:qword_100B2FBB0 object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FullScreenAssetView();
  [(FullScreenAssetView *)&v6 removeFromSuperview];
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  v6 = qword_100ACFFC0;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v7 name:qword_100B2FBB0 object:0];

  v8.receiver = v7;
  v8.super_class = type metadata accessor for FullScreenAssetView();
  [(FullScreenAssetView *)&v8 dealloc];
}

@end