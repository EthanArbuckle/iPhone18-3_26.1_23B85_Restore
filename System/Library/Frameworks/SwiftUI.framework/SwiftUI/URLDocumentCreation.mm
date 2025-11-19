@interface URLDocumentCreation
- (_TtC7SwiftUI19URLDocumentCreation)init;
- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
@end

@implementation URLDocumentCreation

- (_TtC7SwiftUI19URLDocumentCreation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_1(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = self;
  v13[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?, @unowned UIDocumentBrowserImportMode) -> ();
  v13[7] = v11;
  v14 = a3;
  v15 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in URLDocumentCreation.documentBrowser(_:didRequestDocumentCreationWithHandler:), v13);
}

- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  URLDocumentCreation.presentDocument(at:)(v9);

  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
}

- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v10 = self;

    URLDocumentCreation.presentDocument(at:)(v8);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }
}

@end