@interface _CNABPredicateObservable
+ (id)makeSerialFetchSchedulerUsingSchedulerProvider:(uint64_t)a1;
+ (id)observableWithPredicates:(int)a3 sortOrdering:(uint64_t)a4 options:(uint64_t)a5 addressBook:(void *)a6 environment:;
+ (id)schedulerForIdentifier:(void *)a3 provider:;
- (BOOL)predicateShouldContinue:(id)a3;
- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4 metadata:(id)a5;
- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4 moreComing:(BOOL)a5;
- (id)initWithPredicate:(int)a3 sortOrdering:(void *)a4 options:(const void *)a5 addressBook:(void *)a6 environment:;
- (id)subscribe:(id)a3;
- (void)dealloc;
- (void)setObserver:(uint64_t)a1;
@end

@implementation _CNABPredicateObservable

+ (id)observableWithPredicates:(int)a3 sortOrdering:(uint64_t)a4 options:(uint64_t)a5 addressBook:(void *)a6 environment:
{
  v10 = a6;
  v11 = a2;
  v12 = objc_opt_self();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98___CNABPredicateObservable_observableWithPredicates_sortOrdering_options_addressBook_environment___block_invoke;
  v19[3] = &unk_1E74171B8;
  v24 = a3;
  v22 = a4;
  v23 = a5;
  v20 = v10;
  v21 = v12;
  v13 = v10;
  v14 = [v11 _cn_map:v19];

  v15 = MEMORY[0x1E6996798];
  v16 = [v13 schedulerProvider];
  v17 = [v15 merge:v14 schedulerProvider:v16];

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

+ (id)schedulerForIdentifier:(void *)a3 provider:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = [v5 backgroundSchedulerWithQualityOfService:4];
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
    v12 = v5;
    v9 = v8;
    v7 = [v9 objectForKey:v4 onCacheMiss:v11];
  }

  return v7;
}

+ (id)makeSerialFetchSchedulerUsingSchedulerProvider:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 newSerialSchedulerWithName:@"com.apple.contacts.seralized.predicate"];

  v4 = [objc_alloc(MEMORY[0x1E69967E8]) initWithScheduler:v3 qualityOfService:4];

  return v4;
}

- (id)initWithPredicate:(int)a3 sortOrdering:(void *)a4 options:(const void *)a5 addressBook:(void *)a6 environment:
{
  v12 = a2;
  v13 = a6;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = _CNABPredicateObservable;
    a1 = objc_msgSendSuper2(&v18, sel_init);
    if (a1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(a1 + 4, a2);
      }

      *(a1 + 6) = a3;
      if (a5)
      {
        v14 = CFRetain(a5);
      }

      else
      {
        v14 = 0;
      }

      a1[2] = v14;
      v15 = objc_alloc_init(MEMORY[0x1E6996668]);
      v16 = a1[7];
      a1[7] = v15;

      a1[5] = a4;
      objc_storeStrong(a1 + 6, a6);
    }
  }

  return a1;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
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
    [(_CNABPredicateObservable *)self setObserver:v4];
    if (self)
    {
      environment = self->_environment;
    }

    else
    {
      environment = 0;
    }

    v6 = [(CNContactsEnvironment *)environment schedulerProvider];
    if (self)
    {
      v10 = self->_environment;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(CNContactsEnvironment *)v11 abPredicateRunner];

    if (self)
    {
      v13 = self->_predicate;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(ABPredicate *)v13 querySerializationIdentifier];
    v15 = [_CNABPredicateObservable schedulerForIdentifier:v14 provider:v6];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __38___CNABPredicateObservable_subscribe___block_invoke;
    v22 = &unk_1E74171E0;
    v23 = v12;
    v24 = self;
    v16 = v12;
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
    v6 = [CNErrorFactory errorWithCode:400 userInfo:0];
    [v4 observerDidFailWithError:v6];
  }

  if (self)
  {
    self = self->_cancelationToken;
  }

  v7 = self;

  return self;
}

- (void)setObserver:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (BOOL)predicateShouldContinue:(id)a3
{
  if (self)
  {
    self = self->_cancelationToken;
  }

  return [(_CNABPredicateObservable *)self isCanceled]^ 1;
}

- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4 metadata:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v10 = self ? self->_cancelationToken : 0;
    if (([(CNCancelationToken *)v10 isCanceled]& 1) == 0)
    {
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = [MEMORY[0x1E695DFB0] null];
      }

      v13 = v12;
      v17[0] = a4;
      v17[1] = v12;
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
  v15 = [(CNCancelationToken *)cancelationToken isCanceled];

  return v15 ^ 1;
}

- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4 moreComing:(BOOL)a5
{
  if (![(_CNABPredicateObservable *)self predicateShouldContinue:a3 afterFindingRecord:a4]|| a5)
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