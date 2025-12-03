@interface CKRecordGraphNode
- (CKRecordGraphNode)initWithRecord:(id)record;
- (id)itemID;
@end

@implementation CKRecordGraphNode

- (CKRecordGraphNode)initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = CKRecordGraphNode;
  _initInternal = [(CKGraphNode *)&v9 _initInternal];
  v7 = _initInternal;
  if (_initInternal)
  {
    objc_storeStrong(_initInternal + 3, record);
  }

  return v7;
}

- (id)itemID
{
  v3 = objc_msgSend_record(self, a2, v2);
  v6 = objc_msgSend_recordID(v3, v4, v5);

  return v6;
}

@end