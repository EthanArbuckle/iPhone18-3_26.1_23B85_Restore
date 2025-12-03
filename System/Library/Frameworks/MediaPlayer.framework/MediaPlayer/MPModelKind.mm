@interface MPModelKind
+ (MPModelKind)identityKind;
+ (MPModelKind)unknownKind;
+ (id)_kindWithModelClass:(Class)class cacheKey:(id)key block:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlaylistableKind;
- (MPModelKind)identityKind;
- (MPModelKind)initWithCoder:(id)coder;
- (id)_initWithModelClass:(Class)class;
- (id)description;
- (id)msv_initWithJSONValue:(id)value;
- (id)msv_jsonValue;
- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property;
- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate;
- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelKind

- (MPModelKind)identityKind
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_opt_class() identityKind];
  }

  return selfCopy;
}

- (BOOL)isPlaylistableKind
{
  if (([(MPModelKind *)self conformsToProtocol:&unk_1F15AA168]& 1) != 0)
  {
    return 1;
  }

  identityKind = [(MPModelKind *)self identityKind];
  v5 = +[MPModelSongKind identityKind];

  if (identityKind == v5 || (+[MPModelTVEpisodeKind identityKind], v6 = objc_claimAutoreleasedReturnValue(), v6, identityKind == v6))
  {
    v3 = 1;
  }

  else
  {
    v7 = +[MPModelMovieKind identityKind];
    v3 = identityKind == v7;
  }

  return v3;
}

- (id)_initWithModelClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = MPModelKind;
  v4 = [(MPModelKind *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_modelClass, class);
  }

  return v5;
}

- (id)msv_jsonValue
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"modelKind";
  Class = object_getClass(self);
  v4 = NSStringFromClass(Class);
  v8[1] = @"modelClass";
  v9[0] = v4;
  v5 = NSStringFromClass([(MPModelKind *)self modelClass]);
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)msv_initWithJSONValue:(id)value
{
  valueCopy = value;
  if (_NSIsNSDictionary())
  {
    v6 = valueCopy;
    v7 = [v6 objectForKeyedSubscript:@"modelKind"];
    v8 = NSClassFromString(v7);

    if ([(objc_class *)v8 isSubclassOfClass:object_getClass(self)])
    {
      v9 = [(objc_class *)v8 instanceMethodForSelector:a2];
      if (v9 == [MPModelKind instanceMethodForSelector:a2])
      {
        v13 = [v6 objectForKeyedSubscript:@"modelClass"];
        v11 = NSClassFromString(v13);

        if (v11)
        {
          v11 = [MPModelKind _kindWithModelClass:v11 cacheKey:v11 block:&__block_literal_global_229];
        }
      }

      else
      {
        v10 = [v8 alloc];
        v11 = [v10 msv_initWithJSONValue:v6];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  modelClass = self->_modelClass;
  coderCopy = coder;
  v5 = NSStringFromClass(modelClass);
  [coderCopy encodeObject:v5 forKey:@"modelClass"];
}

- (MPModelKind)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MPModelKind;
  v5 = [(MPModelKind *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelClass"];
    v7 = NSClassFromString(v6);
    modelClass = v5->_modelClass;
    v5->_modelClass = v7;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  humanDescription = [(MPModelKind *)self humanDescription];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, humanDescription];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(MPModelKind *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    modelClass = [(MPModelKind *)self modelClass];
    modelClass2 = [(MPModelKind *)v5 modelClass];

    v8 = modelClass == modelClass2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_kindWithModelClass:(Class)class cacheKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  os_unfair_lock_lock(&_kindWithModelClass_cacheKey_block____lock);
  v11 = [_kindWithModelClass_cacheKey_block____kinds objectForKeyedSubscript:keyCopy];
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_unlock(&_kindWithModelClass_cacheKey_block____lock);
  }

  else
  {
    if (!_kindWithModelClass_cacheKey_block____kinds)
    {
      v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:50];
      v14 = _kindWithModelClass_cacheKey_block____kinds;
      _kindWithModelClass_cacheKey_block____kinds = v13;
    }

    v12 = [[self alloc] _initWithModelClass:class];
    blockCopy[2](blockCopy, v12);
    [_kindWithModelClass_cacheKey_block____kinds setObject:v12 forKeyedSubscript:keyCopy];
    os_unfair_lock_unlock(&_kindWithModelClass_cacheKey_block____lock);
    if (!v12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelObject.m" lineNumber:701 description:@"Must have produced a model kind!"];
    }
  }

  return v12;
}

+ (MPModelKind)unknownKind
{
  v2 = [[MPModelKind alloc] _initWithModelClass:objc_opt_class()];

  return v2;
}

+ (MPModelKind)identityKind
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelObject.m" lineNumber:593 description:{@"Subclass %@ must implement -%@ defined in %@.", v9, v10, @"[MPModelKind class]"}];
  }

  v5 = [[MPModelKind alloc] _initWithModelClass:objc_opt_class()];

  return v5;
}

- (shared_ptr<mlcore::Predicate>)predicateWithBaseProperty:(void *)property
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<mlcore::Predicate>)representedSearchScopePredicate
{
  *v2 = 0;
  v2[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (void)applyToView:(shared_ptr<mlcore:(id)view :LibraryView>)a3 withContext:
{
  v12[3] = *MEMORY[0x1E69E9840];
  v5 = a3.var1;
  v6 = [MPMediaLibraryEntityTranslator translatorForMPModelClass:[(MPModelKind *)self modelClass]];
  [(MPModelKind *)self predicateWithBaseProperty:0];
  [v6 entityClass];
  mlcore::LibraryView::filterPredicateForEntityClass();
  [v6 entityClass];
  v11[0] = v7;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v11[2] = v9[5];
  v11[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v9, 0, 24);
  std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate> const*,std::shared_ptr<mlcore::Predicate> const*>(v9, v11, v12, 2uLL);
}

@end