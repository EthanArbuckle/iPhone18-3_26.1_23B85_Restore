@interface _PFObjectCKRecordZoneLink
- (_PFObjectCKRecordZoneLink)initWithObjectID:(id)a3 recordName:(id)a4;
- (void)dealloc;
@end

@implementation _PFObjectCKRecordZoneLink

- (_PFObjectCKRecordZoneLink)initWithObjectID:(id)a3 recordName:(id)a4
{
  v8.receiver = self;
  v8.super_class = _PFObjectCKRecordZoneLink;
  v6 = [(_PFObjectCKRecordZoneLink *)&v8 init];
  if (v6)
  {
    v6->_objectID = a3;
    v6->_recordName = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFObjectCKRecordZoneLink;
  [(_PFObjectCKRecordZoneLink *)&v3 dealloc];
}

@end