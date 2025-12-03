@interface _PFObjectCKRecordZoneLink
- (_PFObjectCKRecordZoneLink)initWithObjectID:(id)d recordName:(id)name;
- (void)dealloc;
@end

@implementation _PFObjectCKRecordZoneLink

- (_PFObjectCKRecordZoneLink)initWithObjectID:(id)d recordName:(id)name
{
  v8.receiver = self;
  v8.super_class = _PFObjectCKRecordZoneLink;
  v6 = [(_PFObjectCKRecordZoneLink *)&v8 init];
  if (v6)
  {
    v6->_objectID = d;
    v6->_recordName = name;
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