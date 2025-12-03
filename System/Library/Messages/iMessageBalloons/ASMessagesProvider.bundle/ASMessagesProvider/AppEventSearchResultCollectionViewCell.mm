@interface AppEventSearchResultCollectionViewCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventSearchResultCollectionViewCell

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  [(AppEventSearchResultCollectionViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5CA9F8();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_5CCCE0(touchCopy);

  return v9 & 1;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_5CB038();
}

@end