@interface MessagesDataSource
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection deletedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)collectionDidFinishInitialLoad:(id)load;
@end

@implementation MessagesDataSource

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v6 = sub_10007D9A8();
  sub_10004F198(collection, v6, before);

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v6 = sub_10007D9A8();
  sub_1000506E4(collection, v6, after);

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_100051780(load);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053544();

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053544();

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053718();

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection deletedItemIDs:(id)ds
{
  swift_unknownObjectRetain();
  _objc_retain(ds);
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  sub_10007D9A8();
  sub_100053718();

  _objc_release(ds);
  _objc_release(self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
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