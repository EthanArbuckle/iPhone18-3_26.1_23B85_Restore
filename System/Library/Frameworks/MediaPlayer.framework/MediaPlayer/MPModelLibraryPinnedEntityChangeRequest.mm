@interface MPModelLibraryPinnedEntityChangeRequest
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position userIdentity:(id)identity;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action userIdentity:(id)identity;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin userIdentity:(id)identity;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action;
+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action userIdentity:(id)identity;
- (id)_initWithEntity:(id)entity defaultAction:(int64_t)action position:(int64_t)position operation:(int64_t)operation userIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newOperationWithResponseHandler:(id)handler;
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

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryPinnedEntityChangeOperation);
  [(MPAsyncOperation *)v5 setUserIdentity:self->_userIdentity];
  [(MPModelLibraryPinnedEntityChangeOperation *)v5 setRequest:self];
  [(MPModelLibraryPinnedEntityChangeOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)_initWithEntity:(id)entity defaultAction:(int64_t)action position:(int64_t)position operation:(int64_t)operation userIdentity:(id)identity
{
  entityCopy = entity;
  identityCopy = identity;
  v18.receiver = self;
  v18.super_class = MPModelLibraryPinnedEntityChangeRequest;
  v15 = [(MPModelLibraryPinnedEntityChangeRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entity, entity);
    v16->_operation = operation;
    v16->_defaultAction = action;
    v16->_position = position;
    objc_storeStrong(&v16->_userIdentity, identity);
  }

  return v16;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action userIdentity:(id)identity
{
  identityCopy = identity;
  updateCopy = update;
  v9 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [updateCopy anyObject];

  v11 = [(MPModelLibraryPinnedEntityChangeRequest *)v9 _initWithEntity:anyObject defaultAction:action position:-1 operation:3 userIdentity:identityCopy];

  return v11;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUpdate:(id)update defaultAction:(int64_t)action
{
  updateCopy = update;
  v6 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [updateCopy anyObject];

  v8 = [(MPModelLibraryPinnedEntityChangeRequest *)v6 _initWithEntity:anyObject defaultAction:action position:-1 operation:3];

  return v8;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position userIdentity:(id)identity
{
  identityCopy = identity;
  moveCopy = move;
  v9 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [moveCopy anyObject];

  v11 = [(MPModelLibraryPinnedEntityChangeRequest *)v9 _initWithEntity:anyObject defaultAction:1 position:position operation:2 userIdentity:identityCopy];

  return v11;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToMove:(id)move position:(int64_t)position
{
  moveCopy = move;
  v6 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [moveCopy anyObject];

  v8 = [(MPModelLibraryPinnedEntityChangeRequest *)v6 _initWithEntity:anyObject defaultAction:1 position:position operation:2];

  return v8;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin userIdentity:(id)identity
{
  identityCopy = identity;
  pinCopy = pin;
  v7 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [pinCopy anyObject];

  v9 = [(MPModelLibraryPinnedEntityChangeRequest *)v7 _initWithEntity:anyObject defaultAction:1 position:-1 operation:1 userIdentity:identityCopy];

  return v9;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToUnPin:(id)pin
{
  pinCopy = pin;
  v4 = [MPModelLibraryPinnedEntityChangeRequest alloc];
  anyObject = [pinCopy anyObject];

  v6 = [(MPModelLibraryPinnedEntityChangeRequest *)v4 _initWithEntity:anyObject defaultAction:1 position:-1 operation:1];

  return v6;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action userIdentity:(id)identity
{
  identityCopy = identity;
  pinCopy = pin;
  v9 = [[MPModelLibraryPinnedEntityChangeRequest alloc] _initWithEntity:pinCopy defaultAction:action position:-1 operation:0 userIdentity:identityCopy];

  return v9;
}

+ (MPModelLibraryPinnedEntityChangeRequest)initWithEntityToPin:(id)pin defaultAction:(int64_t)action
{
  pinCopy = pin;
  v6 = [[MPModelLibraryPinnedEntityChangeRequest alloc] _initWithEntity:pinCopy defaultAction:action position:-1 operation:0];

  return v6;
}

@end