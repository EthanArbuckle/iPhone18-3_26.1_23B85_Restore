@interface ExpandableTextView
- (void)moreFrom:(id)from;
- (void)tintColorDidChange;
@end

@implementation ExpandableTextView

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ExpandableTextView *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreButton];
  tintColor = [v2 tintColor];
  [v3 setTitleColor:tintColor forState:0];
}

- (void)moreFrom:(id)from
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler);
  if (v3)
  {
    v4 = *&self->textView[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler];
    selfCopy = self;
    v6 = sub_A0EF8(v3, v4);
    v3(v6);

    sub_2B8D4(v3, v4);
  }
}

@end