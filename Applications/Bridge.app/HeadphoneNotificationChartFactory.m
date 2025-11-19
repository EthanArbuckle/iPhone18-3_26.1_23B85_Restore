@interface HeadphoneNotificationChartFactory
+ (id)create;
- (_TtC6Bridge33HeadphoneNotificationChartFactory)init;
@end

@implementation HeadphoneNotificationChartFactory

+ (id)create
{
  v2 = *HeadphoneAudioNotificationModel.shared.unsafeMutableAddressor();
  type metadata accessor for HeadphoneAudioNotificationModel();
  sub_100151D00(&qword_1002BC2E8, type metadata accessor for HeadphoneAudioNotificationModel);
  v3 = v2;
  ObservedObject.init(wrappedValue:)();
  v4 = objc_allocWithZone(sub_1001379C4(&qword_1002BC9E0));
  v5 = UIHostingController.init(rootView:)();

  return v5;
}

- (_TtC6Bridge33HeadphoneNotificationChartFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return [(HeadphoneNotificationChartFactory *)&v3 init];
}

@end