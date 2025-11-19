@interface TUIRenderReferenceQuery
+ (id)queryWithUUID:(id)a3 uid:(id)a4 identifier:(id)a5;
+ (id)queryWithUUID:(id)a3 uid:(id)a4 refId:(id)a5 refInstance:(id)a6;
@end

@implementation TUIRenderReferenceQuery

+ (id)queryWithUUID:(id)a3 uid:(id)a4 refId:(id)a5 refInstance:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(_TUIRenderReferenceQuery);
  [(_TUIRenderReferenceQuery *)v13 setUUID:v12];

  [(_TUIRenderReferenceQuery *)v13 setUid:v11];
  [(_TUIRenderReferenceQuery *)v13 setRefId:v10];

  [(_TUIRenderReferenceQuery *)v13 setRefInstance:v9];

  return v13;
}

+ (id)queryWithUUID:(id)a3 uid:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TUIRenderIdentifierQuery);
  [(_TUIRenderIdentifierQuery *)v10 setUUID:v9];

  [(_TUIRenderIdentifierQuery *)v10 setUid:v8];
  [(_TUIRenderIdentifierQuery *)v10 setIdentifier:v7];

  return v10;
}

@end