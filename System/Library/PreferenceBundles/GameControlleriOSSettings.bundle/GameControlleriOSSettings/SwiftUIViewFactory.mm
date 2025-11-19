@interface SwiftUIViewFactory
+ (id)makeSwiftUIView;
- (_TtC25GameControlleriOSSettings18SwiftUIViewFactory)init;
@end

@implementation SwiftUIViewFactory

+ (id)makeSwiftUIView
{
  v2 = type metadata accessor for GCSEntryView();
  __chkstk_darwin(v2 - 8);
  sub_48804(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(sub_DC40(&qword_117250));
  v5 = sub_D70A8();

  return v5;
}

- (_TtC25GameControlleriOSSettings18SwiftUIViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SwiftUIViewFactory();
  return [(SwiftUIViewFactory *)&v3 init];
}

@end