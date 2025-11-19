@interface FileWrapperPlatformDocument
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
- (id)contentsForType:(id)a3 error:(id *)a4;
@end

@implementation FileWrapperPlatformDocument

- (id)contentsForType:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  FileWrapperPlatformDocument.contents(forType:)(v5, v7, v11);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v9;
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  FileWrapperPlatformDocument.read(from:)(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

@end