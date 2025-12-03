@interface ReviewNetworkPolicyTask
- (BOOL)accessWasUnblocked;
- (_TtC9appstored23ReviewNetworkPolicyTask)init;
- (_TtC9appstored23ReviewNetworkPolicyTask)initWithDownload:(id)download shouldSuppressDialogs:(BOOL)dialogs shouldShowLaterButton:(BOOL)button;
- (_TtC9appstored23ReviewNetworkPolicyTask)initWithLogKey:(id)key;
- (_TtC9appstored23ReviewNetworkPolicyTask)initWithoutKeepAlive;
- (int64_t)constrainedResult;
- (int64_t)expensiveResult;
- (unint64_t)interfaceMask;
- (void)mainWithCompletionHandler:(id)handler;
- (void)setValuesOnInstallPolicy:(id)policy;
@end

@implementation ReviewNetworkPolicyTask

- (BOOL)accessWasUnblocked
{
  v2 = (self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[2]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low == 2)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v2);

    return os_unfair_lock_opaque_low & 1;
  }

  return result;
}

- (int64_t)constrainedResult
{
  v2 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  if (v2[8] == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 2);
    os_unfair_lock_unlock(v2);

    return v5;
  }

  return result;
}

- (int64_t)expensiveResult
{
  v2 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  if (v2[8] == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 3);
    os_unfair_lock_unlock(v2);

    return v5;
  }

  return result;
}

- (unint64_t)interfaceMask
{
  v2 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  if (v2[8] == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 4);
    os_unfair_lock_unlock(v2);

    return v5;
  }

  return result;
}

- (_TtC9appstored23ReviewNetworkPolicyTask)initWithDownload:(id)download shouldSuppressDialogs:(BOOL)dialogs shouldShowLaterButton:(BOOL)button
{
  ObjectType = swift_getObjectType();
  v10 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  *v10 = 0;
  *(v10 + 1) = 2;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  v11 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_input;
  *v11 = download;
  v11[8] = dialogs;
  v11[9] = button;
  v14.receiver = self;
  v14.super_class = ObjectType;
  downloadCopy = download;
  return [(Task *)&v14 init];
}

- (void)mainWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100436E88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (void)setValuesOnInstallPolicy:(id)policy
{
  v4 = self + OBJC_IVAR____TtC9appstored23ReviewNetworkPolicyTask_output;
  policyCopy = policy;
  selfCopy = self;
  os_unfair_lock_lock(v4);
  if (v4[8] == 2)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v4 + 3);
    v6 = *(v4 + 4);
    sub_1003B6764(policyCopy, *(v4 + 2));
    sub_1003B6820(policyCopy, v7);
    sub_1003B66A8(policyCopy, v6);
    os_unfair_lock_unlock(v4);
  }
}

- (_TtC9appstored23ReviewNetworkPolicyTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored23ReviewNetworkPolicyTask)initWithLogKey:(id)key
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored23ReviewNetworkPolicyTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end