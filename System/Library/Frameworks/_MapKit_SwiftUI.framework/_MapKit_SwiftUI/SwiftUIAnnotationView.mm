@interface SwiftUIAnnotationView
- (UIEdgeInsets)safeAreaInsets;
- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithCoder:(id)a3;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
@end

@implementation SwiftUIAnnotationView

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftUIAnnotationView();
  v2 = v3.receiver;
  [(MKAnnotationView *)&v3 didMoveToSuperview];
  sub_213D8C140();
}

- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_213D9193C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return sub_213D8C2E8(v7, v4, v6);
}

- (_TtC15_MapKit_SwiftUI21SwiftUIAnnotationView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView) = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint);
  v6 = a3;
  sub_213D917CC();
  *v5 = v7;
  v5[1] = v8;
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint);
  sub_213D917CC();
  v11 = v10;
  v13 = v12;

  *v9 = v11;
  v9[1] = v13;
  v14 = *(&self->super.super.super.super.isa + v4);

  type metadata accessor for SwiftUIAnnotationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)prepareForReuse
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView) = 0;
  v3 = self;

  [*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView) removeFromSuperview];
  [(MKAnnotationView *)v3 setCenterOffset:0.0, 0.0];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for SwiftUIAnnotationView();
  [(MKAnnotationView *)&v4 prepareForReuse];
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end