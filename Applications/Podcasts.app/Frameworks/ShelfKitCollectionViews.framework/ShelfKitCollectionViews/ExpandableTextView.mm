@interface ExpandableTextView
- (void)moreFrom:(id)a3;
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
  v4 = [v2 tintColor];
  [v3 setTitleColor:v4 forState:0];
}

- (void)moreFrom:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler);
  if (v3)
  {
    v4 = *&self->textView[OBJC_IVAR____TtC23ShelfKitCollectionViews18ExpandableTextView_moreTapHandler];
    v5 = self;
    v6 = sub_A0EF8(v3, v4);
    v3(v6);

    sub_2B8D4(v3, v4);
  }
}

@end