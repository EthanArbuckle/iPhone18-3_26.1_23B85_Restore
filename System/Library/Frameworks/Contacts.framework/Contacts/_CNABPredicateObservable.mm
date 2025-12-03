@interface _CNABPredicateObservable
+ (id)makeSerialFetchSchedulerUsingSchedulerProvider:(uint64_t)provider;
+ (id)observableWithPredicates:(int)predicates sortOrdering:(uint64_t)ordering options:(uint64_t)options addressBook:(void *)book environment:;
+ (id)schedulerForIdentifier:(void *)identifier provider:;
- (BOOL)predicateShouldContinue:(id)continue;
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record metadata:(id)metadata;
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record moreComing:(BOOL)coming;
- (id)initWithPredicate:(int)predicate sortOrdering:(void *)ordering options:(const void *)options addressBook:(void *)book environment:;
- (id)subscribe:(id)subscribe;
- (void)dealloc;
- (void)setObserver:(uint64_t)observer;
@end

@implementation _CNABPredicateObservable

+ (id)observableWithPredicates:(int)predicates sortOrdering:(uint64_t)ordering options:(uint64_t)options addressBook:(void *)book environment:
{
  bookCopy = book;
  v11 = a2;
  v12 = objc_opt_self();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98___CNABPredicateObservable_observableWithPredicates_sortOrdering_options_addressBook_environment___block_invoke;
  v19[3] = &unk_1E74171B8;
  predicatesCopy = predicates;
  orderingCopy = ordering;
  optionsCopy = options;
  v20 = bookCopy;
  v21 = v12;
  v13 = bookCopy;
  v14 = [v11 _cn_map:v19];

  v15 = MEMORY[0x1E6996798];
  schedulerProvider = [v13 schedulerProvider];
  v17 = [v15 merge:v14 schedulerProvider:schedulerProvider];

  return v17;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = _CNABPredicateObservable;
  [(_CNABPredicateObservable *)&v4 dealloc];
}

+ (id)schedulerForIdentifier:(void *)identifier provider:
{
  v4 = a2;
  identifierCopy = identifier;
  v6 = objc_opt_self();
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = [identifierCopy backgroundSchedulerWithQualityOfService:4];
  }

  else
  {
    if (schedulerForIdentifier_provider__cn_once_token_0 != -1)
    {
      +[_CNABPredicateObservable schedulerForIdentifier:provider:];
    }

    v8 = schedulerForIdentifier_provider__cn_once_object_0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60___CNABPredicateObservable_schedulerForIdentifier_provider___block_invoke_2;
    v11[3] = &unk_1E7417208;
    v13 = v6;
    v12 = identifierCopy;
    v9 = v8;
    v7 = [v9 objectForKey:v4 onCacheMiss:v11];
  }

  return v7;
}

+ (id)makeSerialFetchSchedulerUsingSchedulerProvider:(uint64_t)provider
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 newSerialSchedulerWithName:@"com.apple.contacts.seralized.predicate"];

  v4 = [objc_alloc(MEMORY[0x1E69967E8]) initWithScheduler:v3 qualityOfService:4];

  return v4;
}

- (id)initWithPredicate:(int)predicate sortOrdering:(void *)ordering options:(const void *)options addressBook:(void *)book environment:
{
  v12 = a2;
  bookCopy = book;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = _CNABPredicateObservable;
    self = objc_msgSendSuper2(&v18, sel_init);
    if (self)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(self + 4, a2);
      }

      *(self + 6) = predicate;
      if (options)
      {
        v14 = CFRetain(options);
      }

      else
      {
        v14 = 0;
      }

      self[2] = v14;
      v15 = objc_alloc_init(MEMORY[0x1E6996668]);
      v16 = self[7];
      self[7] = v15;

      self[5] = ordering;
      objc_storeStrong(self + 6, book);
    }
  }

  return self;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  if (self)
  {
    predicate = self->_predicate;
  }

  else
  {
    predicate = 0;
  }

  if (predicate)
  {
    [(_CNABPredicateObservable *)self setObserver:subscribeCopy];
    if (self)
    {
      environment = self->_environment;
    }

    else
    {
      environment = 0;
    }

    schedulerProvider = [(CNContactsEnvironment *)environment schedulerProvider];
    if (self)
    {
      v10 = self->_environment;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    abPredicateRunner = [(CNContactsEnvironment *)v11 abPredicateRunner];

    if (self)
    {
      v13 = self->_predicate;
    }

    else
    {
      v13 = 0;
    }

    querySerializationIdentifier = [(ABPredicate *)v13 querySerializationIdentifier];
    v15 = [_CNABPredicateObservable schedulerForIdentifier:querySerializationIdentifier provider:schedulerProvider];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __38___CNABPredicateObservable_subscribe___block_invoke;
    v22 = &unk_1E74171E0;
    v23 = abPredicateRunner;
    selfCopy = self;
    v16 = abPredicateRunner;
    v17 = [v15 performCancelableBlock:&v19];
    if (self)
    {
      cancelationToken = self->_cancelationToken;
    }

    else
    {
      cancelationToken = 0;
    }

    [(CNCancelationToken *)cancelationToken addCancelable:v17, v19, v20, v21, v22];
  }

  else
  {
    schedulerProvider = [CNErrorFactory errorWithCode:400 userInfo:0];
    [subscribeCopy observerDidFailWithError:schedulerProvider];
  }

  if (self)
  {
    self = self->_cancelationToken;
  }

  selfCopy2 = self;

  return self;
}

- (void)setObserver:(uint64_t)observer
{
  if (observer)
  {
    objc_storeStrong((observer + 64), a2);
  }
}

- (BOOL)predicateShouldContinue:(id)continue
{
  if (self)
  {
    self = self->_cancelationToken;
  }

  return [(_CNABPredicateObservable *)self isCanceled]^ 1;
}

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record metadata:(id)metadata
{
  v17[2] = *MEMORY[0x1E69E9840];
  continueCopy = continue;
  metadataCopy = metadata;
  if (record)
  {
    v10 = self ? self->_cancelationToken : 0;
    if (([(CNCancelationToken *)v10 isCanceled]& 1) == 0)
    {
      if (metadataCopy)
      {
        null = metadataCopy;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v13 = null;
      v17[0] = record;
      v17[1] = null;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [(CNObserver *)self->_observer observerDidReceiveResult:v14];

      goto LABEL_11;
    }
  }

  if (self)
  {
LABEL_11:
    cancelationToken = self->_cancelationToken;
    goto LABEL_12;
  }

  cancelationToken = 0;
LABEL_12:
  isCanceled = [(CNCancelationToken *)cancelationToken isCanceled];

  return isCanceled ^ 1;
}

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record moreComing:(BOOL)coming
{
  if (![(_CNABPredicateObservable *)self predicateShouldContinue:continue afterFindingRecord:record]|| coming)
  {
    if (!self)
    {
      cancelationToken = 0;
      return [(CNCancelationToken *)cancelationToken isCanceled]^ 1;
    }
  }

  else
  {
    [(CNObserver *)self->_observer observerDidComplete];
  }

  cancelationToken = self->_cancelationToken;
  return [(CNCancelationToken *)cancelationToken isCanceled]^ 1;
}

@end