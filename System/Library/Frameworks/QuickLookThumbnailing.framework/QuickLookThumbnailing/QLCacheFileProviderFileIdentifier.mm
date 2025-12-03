@interface QLCacheFileProviderFileIdentifier
+ (NSMutableSet)knownFileProviderIdentifiersSoFar;
- (BOOL)isEqual:(id)equal;
- (QLCacheFileProviderFileIdentifier)initWithCoder:(id)coder;
- (QLCacheFileProviderFileIdentifier)initWithItemID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation QLCacheFileProviderFileIdentifier

+ (NSMutableSet)knownFileProviderIdentifiersSoFar
{
  if (knownFileProviderIdentifiersSoFar_once != -1)
  {
    +[QLCacheFileProviderFileIdentifier knownFileProviderIdentifiersSoFar];
  }

  v3 = knownFileProviderIdentifiersSoFar_s;

  return v3;
}

- (QLCacheFileProviderFileIdentifier)initWithItemID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = QLCacheFileProviderFileIdentifier;
  v6 = [(QLCacheFileProviderFileIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  itemID = self->_itemID;

  return [v4 initWithItemID:itemID];
}

uint64_t __70__QLCacheFileProviderFileIdentifier_knownFileProviderIdentifiersSoFar__block_invoke()
{
  knownFileProviderIdentifiersSoFar_s = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(FPItemID *)self->_itemID isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (QLCacheFileProviderFileIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getFPItemIDClass_softClass;
  v14 = getFPItemIDClass_softClass;
  if (!getFPItemIDClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getFPItemIDClass_block_invoke;
    v10[3] = &unk_1E8369C70;
    v10[4] = &v11;
    __getFPItemIDClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ii"];
  v8 = [(QLCacheFileProviderFileIdentifier *)self initWithItemID:v7];

  return v8;
}

@end