@interface AFUObserverController
- (_TtC19AUDeveloperSettings21AFUObserverController)init;
- (void)addAccessoryID:(id)d assetID:(id)iD;
- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)removeAccessoryID:(id)d;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
@end

@implementation AFUObserverController

- (void)addAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_23D44180C(dCopy, &unk_284F758F8, sub_23D442F7C, &block_descriptor_20);
}

- (void)removeAccessoryID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_23D44180C(dCopy, &unk_284F758A8, sub_23D442B38, &block_descriptor_14);
}

- (void)firmwareUpdateProgressForAccessoryID:(id)d assetID:(id)iD bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_23D441AB0(dCopy, iDCopy, sent, total);
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_23D441DF0(dCopy, iDCopy, status);
}

- (_TtC19AUDeveloperSettings21AFUObserverController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AFUObserverController();
  return [(AFUObserverController *)&v3 init];
}

@end