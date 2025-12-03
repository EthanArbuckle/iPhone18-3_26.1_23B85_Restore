@interface TUIBackgroundExtensionView
+ (NSString)reuseIdentifier;
- (TUIViewFactory)factory;
- (id)descendentViewWithIdentifier:(id)identifier;
- (id)descendentViewWithRefId:(id)id;
- (void)appendRenderOverrideObservers:(id)observers;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFactory:(id)factory;
- (void)viewDidEndDisplay;
@end

@implementation TUIBackgroundExtensionView

+ (NSString)reuseIdentifier
{
  v2 = sub_19C518();

  return v2;
}

- (TUIViewFactory)factory
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setFactory:(id)factory
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E0D0(Strong);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  if (*(self + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate) == 1)
  {
    *(self + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate) = 0;
    selfCopy = self;
    sub_18EED0();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for TUIBackgroundExtensionView();
  [(TUIBackgroundExtensionView *)&v5 layoutSubviews];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_18E528(attributes);
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TUIBackgroundExtensionView();
  v2 = v6.receiver;
  [(TUIReusableBaseView *)&v6 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model];
  *&v2[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_model] = 0;

  v4 = &v2[OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_outsets];
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  *(v4 + 1) = v5;
  sub_18EED0();
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TUIBackgroundExtensionView();
  v2 = v3.receiver;
  [(TUIReusableBaseView *)&v3 viewDidEndDisplay];
  [v2 prepareForReuse];
}

- (id)descendentViewWithIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E78C(identifier);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)descendentViewWithRefId:(id)id
{
  if (id)
  {
    v4 = sub_19C548();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_18E970(v4, v6);
  v9 = v8;

  return v9;
}

- (void)appendRenderOverrideObservers:(id)observers
{
  observersCopy = observers;
  selfCopy = self;
  sub_18EBD0(observers);
}

@end