@interface EMMessageList
- (void)displayMessagesFromThreadsWithItemIDs:(id)a3 completion:(id)a4;
@end

@implementation EMMessageList

- (void)displayMessagesFromThreadsWithItemIDs:(id)a3 completion:(id)a4
{
  sub_1000094DC(&unk_10009ACD0, &qword_10007F288);
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  sub_1000094DC(&qword_10009BB30, &qword_10007F290);
  v8 = sub_10007D9A8();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_100015010(v8, sub_100015EEC, v7);

  _objc_release(a3);
  _objc_release(self);
}

@end