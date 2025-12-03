@interface ExportedObject
- (void)setWithManagedAppViewData:(id)data reply:(id)reply;
@end

@implementation ExportedObject

- (void)setWithManagedAppViewData:(id)data reply:(id)reply
{
  v5 = _Block_copy(reply);
  dataCopy = data;

  v7 = sub_23B7BB830();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  ExportedObject.set(managedAppViewData:reply:)(v7, v9, sub_23B77CB7C, v10);

  sub_23B779E1C(v7, v9);
}

@end