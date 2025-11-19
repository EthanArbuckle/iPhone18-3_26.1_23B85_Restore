@interface CKRecordGraphNode
- (CKRecordGraphNode)initWithRecord:(id)a3;
- (id)itemID;
@end

@implementation CKRecordGraphNode

- (CKRecordGraphNode)initWithRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKRecordGraphNode;
  v6 = [(CKGraphNode *)&v9 _initInternal];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
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