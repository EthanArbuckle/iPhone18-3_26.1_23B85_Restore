@interface _UISubterraneanWindowScene
- (_UISubterraneanWindowScene)initWithSession:(id)session connectionOptions:(id)options;
@end

@implementation _UISubterraneanWindowScene

- (_UISubterraneanWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = _UISubterraneanWindowScene;
  v4 = [(_UISubterraneanWindowScene *)&v7 initWithSession:session connectionOptions:options];
  v5 = v4;
  if (v4)
  {
    [(_UISubterraneanWindowScene *)v4 _setKeepContextAssociationInBackground:1];
  }

  return v5;
}

@end