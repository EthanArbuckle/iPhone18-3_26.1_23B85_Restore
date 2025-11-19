@interface MessagesDataSource
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
@end

@implementation MessagesDataSource

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v6 = sub_10007D9A8();
  sub_10004F198(a3, v6, a5);

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v6 = sub_10007D9A8();
  sub_1000506E4(a3, v6, a5);

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_100051780(a3);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053544();

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053544();

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053718();

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053718();

  _objc_release(a4);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_100053544();
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end