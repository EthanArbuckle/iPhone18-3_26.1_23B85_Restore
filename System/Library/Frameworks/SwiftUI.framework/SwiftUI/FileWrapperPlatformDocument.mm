@interface FileWrapperPlatformDocument
- (BOOL)readFromURL:(id)l error:(id *)error;
- (id)contentsForType:(id)type error:(id *)error;
@end

@implementation FileWrapperPlatformDocument

- (id)contentsForType:(id)type error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  FileWrapperPlatformDocument.contents(forType:)(v5, v7, v11);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v9;
}

- (BOOL)readFromURL:(id)l error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  FileWrapperPlatformDocument.read(from:)(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

@end