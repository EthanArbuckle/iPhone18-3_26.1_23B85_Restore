@interface AFUObserverController
- (_TtC19AUDeveloperSettings21AFUObserverController)init;
- (void)addAccessoryID:(id)a3 assetID:(id)a4;
- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)removeAccessoryID:(id)a3;
- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
@end

@implementation AFUObserverController

- (void)addAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23D44180C(v6, &unk_284F758F8, sub_23D442F7C, &block_descriptor_20);
}

- (void)removeAccessoryID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23D44180C(v4, &unk_284F758A8, sub_23D442B38, &block_descriptor_14);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_23D441AB0(v10, v11, a5, a6);
}

- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_23D441DF0(v8, v9, a5);
}

- (_TtC19AUDeveloperSettings21AFUObserverController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AFUObserverController();
  return [(AFUObserverController *)&v3 init];
}

@end