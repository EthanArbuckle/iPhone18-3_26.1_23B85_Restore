@interface FullScreenAssetView
- (void)dealloc;
- (void)removeFromSuperview;
@end

@implementation FullScreenAssetView

- (void)removeFromSuperview
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  [defaultCenter removeObserver:selfCopy name:qword_100B2FBB0 object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FullScreenAssetView();
  [(FullScreenAssetView *)&v6 removeFromSuperview];
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  v6 = qword_100ACFFC0;
  v7 = selfCopy;
  if (v6 != -1)
  {
    swift_once();
  }

  [defaultCenter removeObserver:v7 name:qword_100B2FBB0 object:0];

  v8.receiver = v7;
  v8.super_class = type metadata accessor for FullScreenAssetView();
  [(FullScreenAssetView *)&v8 dealloc];
}

@end