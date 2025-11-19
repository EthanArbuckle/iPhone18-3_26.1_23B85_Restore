@interface _UISubterraneanWindowScene
- (_UISubterraneanWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4;
@end

@implementation _UISubterraneanWindowScene

- (_UISubterraneanWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UISubterraneanWindowScene;
  v4 = [(_UISubterraneanWindowScene *)&v7 initWithSession:a3 connectionOptions:a4];
  v5 = v4;
  if (v4)
  {
    [(_UISubterraneanWindowScene *)v4 _setKeepContextAssociationInBackground:1];
  }

  return v5;
}

@end