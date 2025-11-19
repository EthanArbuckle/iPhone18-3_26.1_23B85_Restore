@interface TUIBackgroundExtensionView
+ (NSString)reuseIdentifier;
- (TUIViewFactory)factory;
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (void)appendRenderOverrideObservers:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFactory:(id)a3;
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

- (void)setFactory:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E0D0(Strong);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  if (*(self + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate) == 1)
  {
    *(self + OBJC_IVAR____TtC10TemplateUI26TUIBackgroundExtensionView_needsSubviewsUpdate) = 0;
    v3 = self;
    sub_18EED0();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for TUIBackgroundExtensionView();
  [(TUIBackgroundExtensionView *)&v5 layoutSubviews];
}

- (void)applyLayoutAttributes:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18E528(a3);
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

- (id)descendentViewWithIdentifier:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E78C(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7;
}

- (id)descendentViewWithRefId:(id)a3
{
  if (a3)
  {
    v4 = sub_19C548();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_18E970(v4, v6);
  v9 = v8;

  return v9;
}

- (void)appendRenderOverrideObservers:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18EBD0(a3);
}

@end