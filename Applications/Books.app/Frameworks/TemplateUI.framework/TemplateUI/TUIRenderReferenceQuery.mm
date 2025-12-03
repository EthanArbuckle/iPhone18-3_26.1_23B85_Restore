@interface TUIRenderReferenceQuery
+ (id)queryWithUUID:(id)d uid:(id)uid identifier:(id)identifier;
+ (id)queryWithUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance;
@end

@implementation TUIRenderReferenceQuery

+ (id)queryWithUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance
{
  instanceCopy = instance;
  idCopy = id;
  uidCopy = uid;
  dCopy = d;
  v13 = objc_alloc_init(_TUIRenderReferenceQuery);
  [(_TUIRenderReferenceQuery *)v13 setUUID:dCopy];

  [(_TUIRenderReferenceQuery *)v13 setUid:uidCopy];
  [(_TUIRenderReferenceQuery *)v13 setRefId:idCopy];

  [(_TUIRenderReferenceQuery *)v13 setRefInstance:instanceCopy];

  return v13;
}

+ (id)queryWithUUID:(id)d uid:(id)uid identifier:(id)identifier
{
  identifierCopy = identifier;
  uidCopy = uid;
  dCopy = d;
  v10 = objc_alloc_init(_TUIRenderIdentifierQuery);
  [(_TUIRenderIdentifierQuery *)v10 setUUID:dCopy];

  [(_TUIRenderIdentifierQuery *)v10 setUid:uidCopy];
  [(_TUIRenderIdentifierQuery *)v10 setIdentifier:identifierCopy];

  return v10;
}

@end