@interface CRLQAImportFileDocumentPickerDelegate
- (_TtC8Freeform37CRLQAImportFileDocumentPickerDelegate)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
@end

@implementation CRLQAImportFileDocumentPickerDelegate

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v5 = sub_1005B981C(&qword_1019FA6B0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for URL();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    v10 = *(v8 - 8);
    (*(v10 + 16))(v7, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8);
    selfCopy = self;

    (*(v10 + 56))(v7, 0, 1, v8);
  }

  else
  {
    selfCopy2 = self;

    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  swift_storeEnumTagMultiPayload();
  sub_1006C4B10(v7);

  sub_10000CAAC(v7, &qword_1019FA6B0);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v4 = sub_1005B981C(&qword_1019FA6B0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_storeEnumTagMultiPayload();
  selfCopy = self;
  sub_1006C4B10(v6);

  sub_10000CAAC(v6, &qword_1019FA6B0);
}

- (_TtC8Freeform37CRLQAImportFileDocumentPickerDelegate)init
{
  v3 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_result;
  v4 = sub_1005B981C(&qword_1019FA6B0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_continuation;
  v6 = sub_1005B981C(&unk_1019FA6C0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLQAImportFileDocumentPickerDelegate();
  return [(CRLQAImportFileDocumentPickerDelegate *)&v8 init];
}

@end