@interface CKRecordZoneGraphNode
- (CKRecordZoneGraphNode)initWithRecordZone:(id)a3;
- (id)itemID;
@end

@implementation CKRecordZoneGraphNode

- (CKRecordZoneGraphNode)initWithRecordZone:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKRecordZoneGraphNode;
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
  v3 = objc_msgSend_zone(self, a2, v2);
  v6 = objc_msgSend_zoneID(v3, v4, v5);

  return v6;
}

@end