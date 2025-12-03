@interface SpatialGenericPlatter
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SpatialGenericPlatter

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100197908(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
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
    selfCopy = self;
    v12 = v10(ObjectType, v8);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100197AEC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)textFieldDidEndEditing:(id)editing
{
  selfCopy = self;
  sub_100194C50();
}

@end