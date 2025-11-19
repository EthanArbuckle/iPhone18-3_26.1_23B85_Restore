@interface THModelGlossary
- (NSOperationQueue)loadingQueue;
- (THModelGlossary)initWithContext:(id)a3 documentRoot:(id)a4;
- (id)addEntryForPath:(id)a3 andTerm:(id)a4;
- (id)entryAtIndex:(int64_t)a3;
- (id)entryForTerm:(id)a3;
- (id)pathsForEntriesInContentNode:(id)a3;
- (void)dealloc;
- (void)setApplePubURL:(id)a3;
- (void)setGlossaryTermPaths:(id)a3 forContentNode:(id)a4;
@end

@implementation THModelGlossary

- (void)setApplePubURL:(id)a3
{
  [(THModelGlossary *)self willModify];
  v5 = a3;

  self->mApplePubURL = a3;
}

- (THModelGlossary)initWithContext:(id)a3 documentRoot:(id)a4
{
  v8.receiver = self;
  v8.super_class = THModelGlossary;
  v5 = [(THModelGlossary *)&v8 initWithContext:a3];
  v6 = v5;
  if (v5)
  {
    v5->mDocumentRoot = a4;
    v5->mEntries = objc_alloc_init(NSMutableArray);
    v6->mEntriesByApplePubPath = objc_alloc_init(NSMutableDictionary);
    v6->mEntriesByNormalizedTerm = objc_alloc_init(NSMutableDictionary);
    v6->mLinksByContentNodeId = objc_alloc_init(NSMutableDictionary);
  }

  return v6;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->mLoadingQueue cancelAllOperations];
  [(NSOperationQueue *)self->mLoadingQueue waitUntilAllOperationsAreFinished];

  self->mEntries = 0;
  self->mEntriesByApplePubPath = 0;

  self->mEntriesByNormalizedTerm = 0;
  self->mApplePubURL = 0;

  self->mLoadingQueue = 0;
  self->mLinksByContentNodeId = 0;
  v3.receiver = self;
  v3.super_class = THModelGlossary;
  [(THModelGlossary *)&v3 dealloc];
}

- (NSOperationQueue)loadingQueue
{
  result = self->mLoadingQueue;
  if (!result)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    self->mLoadingQueue = v4;
    [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    return self->mLoadingQueue;
  }

  return result;
}

- (id)entryAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSMutableArray *)self->mEntries count]<= a3)
  {
    return 0;
  }

  mEntries = self->mEntries;

  return [(NSMutableArray *)mEntries objectAtIndex:a3];
}

- (id)addEntryForPath:(id)a3 andTerm:(id)a4
{
  v6 = [[THModelGlossaryEntry alloc] initWithContext:[(THModelGlossary *)self context] parent:self applePubRelativePath:a3 andTerm:a4];
  if (![-[THModelGlossaryEntry normalizedPrefixSearchStrings](v6 "normalizedPrefixSearchStrings")])
  {
    return 0;
  }

  [(THModelGlossary *)self willModify];
  [(NSMutableArray *)self->mEntries addObject:v6];
  [(NSMutableDictionary *)self->mEntriesByApplePubPath setObject:v6 forKey:a3];
  [(NSMutableDictionary *)self->mEntriesByNormalizedTerm setObject:v6 forKey:[(THModelGlossaryEntry *)v6 normalizedTerm]];
  return v6;
}

- (id)entryForTerm:(id)a3
{
  mEntriesByNormalizedTerm = self->mEntriesByNormalizedTerm;
  v4 = [a3 normalizedStringForSearch];

  return [(NSMutableDictionary *)mEntriesByNormalizedTerm objectForKey:v4];
}

- (id)pathsForEntriesInContentNode:(id)a3
{
  mLinksByContentNodeId = self->mLinksByContentNodeId;
  v4 = [a3 nodeGUID];

  return [(NSMutableDictionary *)mLinksByContentNodeId objectForKey:v4];
}

- (void)setGlossaryTermPaths:(id)a3 forContentNode:(id)a4
{
  mLinksByContentNodeId = self->mLinksByContentNodeId;
  v6 = [a4 nodeGUID];

  [(NSMutableDictionary *)mLinksByContentNodeId setObject:a3 forKey:v6];
}

@end