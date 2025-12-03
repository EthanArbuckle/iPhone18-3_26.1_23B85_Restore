@interface ACMutableTrackedSet
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)removeObject:(id)object;
@end

@implementation ACMutableTrackedSet

- (void)addObject:(id)object
{
  underlyingSet = self->super._underlyingSet;
  objectCopy = object;
  [(NSMutableSet *)underlyingSet addObject:objectCopy];
  [(NSMutableDictionary *)self->super._changesDictionary setObject:@"ACChangeTypeAdded" forKey:objectCopy];
}

- (void)removeObject:(id)object
{
  underlyingSet = self->super._underlyingSet;
  objectCopy = object;
  [(NSMutableSet *)underlyingSet removeObject:objectCopy];
  [(NSMutableDictionary *)self->super._changesDictionary setObject:@"ACChangeTypeRemoved" forKey:objectCopy];
}

- (void)addObjectsFromArray:(id)array
{
  underlyingSet = self->super._underlyingSet;
  arrayCopy = array;
  [(NSMutableSet *)underlyingSet addObjectsFromArray:arrayCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__ACMutableTrackedSet_addObjectsFromArray___block_invoke;
  v6[3] = &unk_1E7977828;
  v6[4] = self;
  [arrayCopy enumerateObjectsUsingBlock:v6];
}

@end