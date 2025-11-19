@interface RoutingAdvisoryInfoFooterView
+ (NSString)reuseIdentifier;
+ (double)getEstimatedFooterHeight:(id)a3 maxWidth:(double)a4;
- (UIStackView)descriptionStackView;
- (id)tapActionHandler;
- (void)prepareForReuse;
- (void)removeFooterLabels;
- (void)setDescriptionStackView:(id)a3;
- (void)setTapActionHandler:(id)a3;
- (void)updateDescriptionInfo:(id)a3 tapHandler:(id)a4;
@end

@implementation RoutingAdvisoryInfoFooterView

+ (NSString)reuseIdentifier
{
  type metadata accessor for RoutingAdvisoryInfoFooterView();
  sub_1000CE6B8(&qword_101916178);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (UIStackView)descriptionStackView
{
  v2 = self;
  v3 = sub_100269564();

  return v3;
}

- (void)setDescriptionStackView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView);
  *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView____lazy_storage___descriptionStackView) = a3;
  v3 = a3;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100269B34();
}

- (id)tapActionHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1002ABAC8;
    v5[3] = &unk_10160D678;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTapActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10026B024;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler);
  v9 = *(self + OBJC_IVAR____TtC4Maps29RoutingAdvisoryInfoFooterView_tapActionHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_1000D3B90(v8, v9);
}

- (void)updateDescriptionInfo:(id)a3 tapHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100014C84(0, &qword_101916168);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_1000D2CB0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  sub_100269E88(v6, v8, v7);
  sub_1000D3B90(v8, v7);
}

- (void)removeFooterLabels
{
  v2 = self;
  sub_10026A564();
}

+ (double)getEstimatedFooterHeight:(id)a3 maxWidth:(double)a4
{
  sub_100014C84(0, &qword_101916168);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026ABDC(v5, a4);
  v7 = v6;

  return v7;
}

@end