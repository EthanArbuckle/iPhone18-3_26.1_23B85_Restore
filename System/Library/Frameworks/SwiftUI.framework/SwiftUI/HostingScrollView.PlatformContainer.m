@interface HostingScrollView.PlatformContainer
- (CGRect)bounds;
- (CGRect)frame;
- (UIEdgeInsets)safeAreaInsets;
- (UIResponder)nextResponder;
- (_TtCC7SwiftUI17HostingScrollView17PlatformContainer)initWithCoder:(id)a3;
- (_TtCC7SwiftUI17HostingScrollView17PlatformContainer)initWithFrame:(CGRect)a3;
- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer;
- (void)_updateSafeAreaInsets;
@end

@implementation HostingScrollView.PlatformContainer

- (CGRect)bounds
{
  @objc HostingScrollView.PlatformContainer.frame.getter(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  @objc HostingScrollView.PlatformContainer.frame.getter(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v19.receiver = self;
  v19.super_class = ObjectType;
  [(HostingScrollView.PlatformContainer *)&v19 safeAreaInsets];
  if (v5 == 1.79769313e308 && v6 == 1.79769313e308 && v8 == 1.79769313e308)
  {
    if (v7 == 1.79769313e308)
    {
      v5 = v9;
    }

    else
    {
      v5 = 1.79769313e308;
    }

    if (v7 == 1.79769313e308)
    {
      v6 = v10;
    }

    else
    {
      v6 = 1.79769313e308;
    }

    if (v7 == 1.79769313e308)
    {
      v8 = v11;
    }

    else
    {
      v8 = 1.79769313e308;
    }

    if (v7 == 1.79769313e308)
    {
      v7 = v12;
    }
  }

  v15 = v5;
  v16 = v6;
  v17 = v8;
  v18 = v7;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_updateSafeAreaInsets
{
  v2 = self;
  HostingScrollView.PlatformContainer._updateSafeAreaInsets()();
}

- (_TtCC7SwiftUI17HostingScrollView17PlatformContainer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper;
  type metadata accessor for PlatformSafeAreaHelper();
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 1;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_isInitialSafeAreaUpdate) = 1;
  *(v5 + 88) = 1;
  v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v7 = (self + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets);
  *v7 = v6;
  v7[1] = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (UIResponder)nextResponder
{
  v2 = self;
  v3 = HostingScrollView.PlatformContainer.next.getter();

  return v3;
}

- (_UIGestureRecognizerContainer)_parentGestureRecognizerContainer
{
  v2 = self;
  v3 = HostingScrollView.PlatformContainer._parentContainer.getter();

  return v3;
}

- (_TtCC7SwiftUI17HostingScrollView17PlatformContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end