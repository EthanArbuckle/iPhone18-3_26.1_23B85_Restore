@interface StreamingMetadataProcessor
- (_TtC6Tamale26StreamingMetadataProcessor)init;
- (void)captureOutput:(id)output didOutputMetadataObjectCollections:(id)collections fromConnection:(id)connection;
@end

@implementation StreamingMetadataProcessor

- (_TtC6Tamale26StreamingMetadataProcessor)init
{
  v3 = sub_1000033A8(&qword_1001D6460);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v17 = sub_1000033A8(&unk_1001D6410);
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - v8;
  v10 = sub_1000033A8(&qword_1001D6468);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  static Log.cvProcessor.getter();
  sub_1000033A8(&qword_1001D6288);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(self + OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_resultStream, v13, v10);
  (*(v7 + 32))(self + OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_continuation, v9, v17);
  v14 = type metadata accessor for StreamingMetadataProcessor(0);
  v18.receiver = self;
  v18.super_class = v14;
  return [(StreamingMetadataProcessor *)&v18 init];
}

- (void)captureOutput:(id)output didOutputMetadataObjectCollections:(id)collections fromConnection:(id)connection
{
  collectionsCopy = collections;
  if (collections)
  {
    sub_10005BBC4(0, &qword_1001D7FF0);
    collectionsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  outputCopy = output;
  connectionCopy = connection;
  selfCopy = self;
  sub_10005AC7C(collectionsCopy);
}

@end