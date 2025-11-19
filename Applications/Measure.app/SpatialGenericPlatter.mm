@interface SpatialGenericPlatter
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation SpatialGenericPlatter

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100197908(v6, v7);

  return v9 & 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  v6 = self + qword_1004ADDC0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    v11 = self;
    v12 = v10(ObjectType, v8);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100197AEC(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v3 = self;
  sub_100194C50();
}

@end