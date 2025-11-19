@interface SummaryConfigurationProvider
- (_TtC10FitnessApp28SummaryConfigurationProvider)init;
@end

@implementation SummaryConfigurationProvider

- (_TtC10FitnessApp28SummaryConfigurationProvider)init
{
  v3 = sub_100140278(&qword_1008DC668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider__currentCardConfiguration;
  v13 = &_swiftEmptyArrayStorage;
  sub_100140278(&qword_1008DC5E8);
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v7, v6, v3);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_userRemovedCardTypes) = &_swiftEmptySetSingleton;
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp28SummaryConfigurationProvider_didSetToDefaultConfiguration) = 0;
  v8 = type metadata accessor for SummaryConfigurationProvider();
  v12.receiver = self;
  v12.super_class = v8;
  v9 = [(SummaryConfigurationProvider *)&v12 init];
  sub_100043F68();
  sub_1000443C8();

  return v9;
}

@end