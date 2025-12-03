@interface ClimateGroupedVentsButton
- (_TtC7Climate25ClimateGroupedVentsButton)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)appMovedToForeground;
- (void)showAutoModeUI;
- (void)showDisabledUI;
- (void)showRefreshUI;
- (void)showStackUI;
@end

@implementation ClimateGroupedVentsButton

- (_TtC7Climate25ClimateGroupedVentsButton)init
{
  self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_type] = 1;
  *&self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___autoModeCenterYConstraint] = 0;
  *&self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton____lazy_storage___stackView] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)appMovedToForeground
{
  selfCopy = self;
  sub_100016118();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClimateGroupedVentsButton(0);
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ClimateGroupedVentsButton *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_10000827C(0, &qword_100115400);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (void)showRefreshUI
{
  selfCopy = self;
  sub_100017268();
}

- (void)showAutoModeUI
{
  selfCopy = self;
  sub_1000176F0();
}

- (void)showDisabledUI
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  selfCopy = self;
  sub_10001854C(sub_10001B018, v3);
}

- (void)showStackUI
{
  selfCopy = self;
  sub_100018C44();
}

@end