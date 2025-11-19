@interface JSSocialProfileCollectionModelRequestOperation
- (_TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation)init;
- (void)execute;
@end

@implementation JSSocialProfileCollectionModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSSocialProfileCollectionModelRequestOperation();
  v2 = v5.receiver;
  [(JSSocialProfileCollectionModelRequestOperation *)&v5 execute];
  sub_13C80(0, &qword_DE8ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_F0198, v3);
}

- (_TtC16MusicApplicationP33_9AFC986C3EE3F16591D3B34D5D62C9B146JSSocialProfileCollectionModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end