@interface AVTAvatarRecordDataSource
+ (id)defaultUIDataSourceWithDomainIdentifier:(id)identifier;
- (AVTAvatarRecordDataSource)initWithRecordStore:(id)store fetchRequest:(id)request;
- (AVTAvatarRecordDataSource)initWithRecordStore:(id)store fetchRequest:(id)request environment:(id)environment;
- (id)indexSetForEditableRecords;
- (id)indexesOfRecordsPassingTest:(id)test;
- (id)internalRecordStore;
- (id)recordAtIndex:(unint64_t)index;
- (id)recordStore;
- (unint64_t)indexOfRecordPassingTest:(id)test;
- (unint64_t)numberOfRecords;
- (void)addObserver:(id)observer;
- (void)addPriorityObserver:(id)observer;
- (void)flushRecordsForEnteringBackground;
- (void)removeObserver:(id)observer;
@end

@implementation AVTAvatarRecordDataSource

- (AVTAvatarRecordDataSource)initWithRecordStore:(id)store fetchRequest:(id)request
{
  requestCopy = request;
  storeCopy = store;
  v8 = +[AVTUIEnvironment defaultEnvironment];
  v9 = [(AVTAvatarRecordDataSource *)self initWithRecordStore:storeCopy fetchRequest:requestCopy environment:v8];

  return v9;
}

- (AVTAvatarRecordDataSource)initWithRecordStore:(id)store fetchRequest:(id)request environment:(id)environment
{
  storeCopy = store;
  requestCopy = request;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = AVTAvatarRecordDataSource;
  v12 = [(AVTAvatarRecordDataSource *)&v19 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E698E340]);
    internalStore = [storeCopy internalStore];
    coreEnvironment = [environmentCopy coreEnvironment];
    v16 = [v13 initWithRecordStore:internalStore fetchRequest:requestCopy environment:coreEnvironment];
    persistenceAvatarRecordDataSource = v12->_persistenceAvatarRecordDataSource;
    v12->_persistenceAvatarRecordDataSource = v16;

    objc_storeStrong(&v12->_avatarStore, store);
  }

  return v12;
}

- (id)internalRecordStore
{
  observableWrappedAvatarStore = [(AVTAvatarRecordDataSource *)self observableWrappedAvatarStore];

  if (!observableWrappedAvatarStore)
  {
    v4 = [AVTAvatarStore alloc];
    persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
    internalRecordStore = [persistenceAvatarRecordDataSource internalRecordStore];
    v7 = [(AVTAvatarStore *)v4 initWithPersistenceAvatarStore:internalRecordStore];

    [(AVTAvatarRecordDataSource *)self setObservableWrappedAvatarStore:v7];
  }

  return [(AVTAvatarRecordDataSource *)self observableWrappedAvatarStore];
}

- (void)addPriorityObserver:(id)observer
{
  observerCopy = observer;
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  [persistenceAvatarRecordDataSource addPriorityObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  [persistenceAvatarRecordDataSource addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  [persistenceAvatarRecordDataSource removeObserver:observerCopy];
}

- (void)flushRecordsForEnteringBackground
{
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  [persistenceAvatarRecordDataSource flushRecordsForEnteringBackground];
}

- (unint64_t)numberOfRecords
{
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  numberOfRecords = [persistenceAvatarRecordDataSource numberOfRecords];

  return numberOfRecords;
}

- (id)recordAtIndex:(unint64_t)index
{
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  v5 = [persistenceAvatarRecordDataSource recordAtIndex:index];

  return v5;
}

- (id)recordStore
{
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  recordStore = [persistenceAvatarRecordDataSource recordStore];

  return recordStore;
}

- (id)indexesOfRecordsPassingTest:(id)test
{
  testCopy = test;
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  v6 = [persistenceAvatarRecordDataSource indexesOfRecordsPassingTest:testCopy];

  return v6;
}

- (unint64_t)indexOfRecordPassingTest:(id)test
{
  testCopy = test;
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  v6 = [persistenceAvatarRecordDataSource indexOfRecordPassingTest:testCopy];

  return v6;
}

- (id)indexSetForEditableRecords
{
  persistenceAvatarRecordDataSource = [(AVTAvatarRecordDataSource *)self persistenceAvatarRecordDataSource];
  indexSetForEditableRecords = [persistenceAvatarRecordDataSource indexSetForEditableRecords];

  return indexSetForEditableRecords;
}

+ (id)defaultUIDataSourceWithDomainIdentifier:(id)identifier
{
  v4 = objc_alloc_init(MEMORY[0x1E698E348]);
  v5 = [[AVTAvatarStore alloc] initWithPersistenceAvatarStore:v4];
  requestForAllAvatars = [MEMORY[0x1E698E310] requestForAllAvatars];
  v7 = [[self alloc] initWithRecordStore:v5 fetchRequest:requestForAllAvatars];

  return v7;
}

@end