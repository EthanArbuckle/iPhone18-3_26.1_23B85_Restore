@interface AMSAccountCachedServerData
- (void)intForKey:(unint64_t)a3 account:(ACAccount *)a4 logKey:(_TtC9appstored6LogKey *)a5 staleValueAcceptable:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation AMSAccountCachedServerData

- (void)intForKey:(unint64_t)a3 account:(ACAccount *)a4 logKey:(_TtC9appstored6LogKey *)a5 staleValueAcceptable:(BOOL)a6 completionHandler:(id)a7
{
  v13 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1004389B8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1004366D0;
  v20[5] = v19;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1001BD9B4(0, 0, v15, &unk_1004344E0, v20);
}

@end