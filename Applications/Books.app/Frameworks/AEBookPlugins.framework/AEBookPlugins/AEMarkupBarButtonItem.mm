@interface AEMarkupBarButtonItem
- (AEMarkupBarButtonItem)init;
- (AEMarkupBarButtonItem)initWithCoder:(id)coder;
- (SEL)action;
- (id)target;
- (void)setAction:(SEL)action;
- (void)setEnabled:(BOOL)enabled;
- (void)setSelected:(BOOL)selected;
- (void)setTarget:(id)target;
@end

@implementation AEMarkupBarButtonItem

- (AEMarkupBarButtonItem)initWithCoder:(id)coder
{
  result = sub_139C50();
  __break(1u);
  return result;
}

- (AEMarkupBarButtonItem)init
{
  *(&self->super.super.super.isa + OBJC_IVAR___AEMarkupBarButtonItem_toggleView) = [objc_allocWithZone(type metadata accessor for MarkupButtonContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5.receiver = self;
  v5.super_class = type metadata accessor for MarkupBarButtonItem();
  v3 = [(AEMarkupBarButtonItem *)&v5 init];
  [(AEMarkupBarButtonItem *)v3 setCustomView:*(&v3->super.super.super.isa + OBJC_IVAR___AEMarkupBarButtonItem_toggleView)];
  return v3;
}

- (id)target
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MarkupBarButtonItem();
  target = [(AEMarkupBarButtonItem *)&v4 target];

  return target;
}

- (void)setTarget:(id)target
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1278B0(target);
}

- (SEL)action
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MarkupBarButtonItem();
  return [(AEMarkupBarButtonItem *)&v3 action];
}

- (void)setAction:(SEL)action
{
  selfCopy = self;
  sub_127A9C(action);
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MarkupBarButtonItem();
  v4 = v7.receiver;
  [(AEMarkupBarButtonItem *)&v7 setSelected:selectedCopy];
  v5 = *&v4[OBJC_IVAR___AEMarkupBarButtonItem_toggleView];
  selected = [v4 selected];
  *(v5 + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_selected) = selected;
  sub_121E48();
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MarkupBarButtonItem();
  v4 = v6.receiver;
  [(AEMarkupBarButtonItem *)&v6 setEnabled:enabledCopy];
  v5 = *(*&v4[OBJC_IVAR___AEMarkupBarButtonItem_toggleView] + OBJC_IVAR____TtC13AEBookPlugins25MarkupButtonContainerView_button);
  [v5 setEnabled:{objc_msgSend(v4, "isEnabled", v6.receiver, v6.super_class)}];
}

@end