@interface MPModelLibraryPinnedEntityChangeRequest
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4 userIdentity:(id)a5;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4 userIdentity:(id)a5;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3 userIdentity:(id)a4;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4 userIdentity:(id)a5;
- (id)_initWithEntity:(id)a3 defaultAction:(int64_t)a4 position:(int64_t)a5 operation:(int64_t)a6 userIdentity:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryPinnedEntityChangeRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entity = self->_entity;
  v5 = self->_operation - 1;
  if (v5 > 2)
  {
    v6 = @"Add";
  }

  else
  {
    v6 = off_1E767B1C8[v5];
  }

  v7 = @"Play";
  defaultAction = self->_defaultAction;
  userIdentity = self->_userIdentity;
  if (defaultAction == 2)
  {
    v7 = @"Shuffle";
  }

  if (defaultAction == 3)
  {
    v10 = @"Drillin";
  }

  else
  {
    v10 = v7;
  }

  position = self->_position;
  v12 = [(ICUserIdentity *)userIdentity description];
  v13 = [v3 stringWithFormat:@"<MPModelLibraryPinnedEntityChangeRequest=%p, entity=%@, operationType=%@, defaultAction=%@, postion=%d, userIdentity=%@", self, entity, v6, v10, position, v12];

  return v13;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryPinnedEntityChangeOperation);
  [(MPAsyncOperation *)v5 setUserIdentity:self->_userIdentity];
  [(MPModelLibraryPinnedEntityChangeOperation *)v5 setRequest:self];
  [(MPModelLibraryPinnedEntityChangeOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_entity);
    v5[2] = self->_position;
    v5[4] = self->_defaultAction;
    v5[3] = self->_operation;
    objc_storeStrong(v5 + 5, self->_userIdentity);
  }

  return v5;
}

- (id)_initWithEntity:(id)a3 defaultAction:(int64_t)a4 position:(int64_t)a5 operation:(int64_t)a6 userIdentity:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = MPModelLibraryPinnedEntityChangeRequest;
  v15 = [(MPModelLibraryPinnedEntityChangeRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entity, a3);
    v16->_operation = a6;
    v16->_defaultAction = a4;
    v16->_position = a5;
    objc_storeStrong(&v16->_userIdentity, a7);
  }

  return v16;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4 userIdentity:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v10 = [v8 anyObject];

  v11 = [(MPModelLibraryPinnedEntityChangeRequest *)v9 _initWithEntity:v10 defaultAction:a4 position:-1 operation:3 userIdentity:v7];

  return v11;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)a3 defaultAction:(int64_t)a4
{
  v5 = a3;
  v6 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v7 = [v5 anyObject];

  v8 = [(MPModelLibraryPinnedEntityChangeRequest *)v6 _initWithEntity:v7 defaultAction:a4 position:-1 operation:3];

  return v8;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4 userIdentity:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v10 = [v8 anyObject];

  v11 = [(MPModelLibraryPinnedEntityChangeRequest *)v9 _initWithEntity:v10 defaultAction:1 position:a4 operation:2 userIdentity:v7];

  return v11;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)a3 position:(int64_t)a4
{
  v5 = a3;
  v6 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v7 = [v5 anyObject];

  v8 = [(MPModelLibraryPinnedEntityChangeRequest *)v6 _initWithEntity:v7 defaultAction:1 position:a4 operation:2];

  return v8;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3 userIdentity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v8 = [v6 anyObject];

  v9 = [(MPModelLibraryPinnedEntityChangeRequest *)v7 _initWithEntity:v8 defaultAction:1 position:-1 operation:1 userIdentity:v5];

  return v9;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)a3
{
  v3 = a3;
  v4 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  v5 = [v3 anyObject];

  v6 = [(MPModelLibraryPinnedEntityChangeRequest *)v4 _initWithEntity:v5 defaultAction:1 position:-1 operation:1];

  return v6;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4 userIdentity:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[MPModelLibraryPinnedEntityChangeRequest alloc] _initWithEntity:v8 defaultAction:a4 position:-1 operation:0 userIdentity:v7];

  return v9;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)a3 defaultAction:(int64_t)a4
{
  v5 = a3;
  v6 = [[MPModelLibraryPinnedEntityChangeRequest alloc] _initWithEntity:v5 defaultAction:a4 position:-1 operation:0];

  return v6;
}

@end