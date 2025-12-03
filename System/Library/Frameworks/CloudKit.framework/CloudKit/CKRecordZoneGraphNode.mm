@interface CKRecordZoneGraphNode
- (CKRecordZoneGraphNode)initWithRecordZone:(id)zone;
- (id)itemID;
@end

@implementation CKRecordZoneGraphNode

- (CKRecordZoneGraphNode)initWithRecordZone:(id)zone
{
  zoneCopy = zone;
  v9.receiver = self;
  v9.super_class = CKRecordZoneGraphNode;
  _initInternal = [(CKGraphNode *)&v9 _initInternal];
  v7 = _initInternal;
  if (_initInternal)
  {
    objc_storeStrong(_initInternal + 3, zone);
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