@interface THModelGlossary
- (NSOperationQueue)loadingQueue;
- (THModelGlossary)initWithContext:(id)context documentRoot:(id)root;
- (id)addEntryForPath:(id)path andTerm:(id)term;
- (id)entryAtIndex:(int64_t)index;
- (id)entryForTerm:(id)term;
- (id)pathsForEntriesInContentNode:(id)node;
- (void)dealloc;
- (void)setApplePubURL:(id)l;
- (void)setGlossaryTermPaths:(id)paths forContentNode:(id)node;
@end

@implementation THModelGlossary

- (void)setApplePubURL:(id)l
{
  [(THModelGlossary *)self willModify];
  lCopy = l;

  self->mApplePubURL = l;
}

- (THModelGlossary)initWithContext:(id)context documentRoot:(id)root
{
  v8.receiver = self;
  v8.super_class = THModelGlossary;
  v5 = [(THModelGlossary *)&v8 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    v5->mDocumentRoot = root;
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

- (id)entryAtIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableArray *)self->mEntries count]<= index)
  {
    return 0;
  }

  mEntries = self->mEntries;

  return [(NSMutableArray *)mEntries objectAtIndex:index];
}

- (id)addEntryForPath:(id)path andTerm:(id)term
{
  v6 = [[THModelGlossaryEntry alloc] initWithContext:[(THModelGlossary *)self context] parent:self applePubRelativePath:path andTerm:term];
  if (![-[THModelGlossaryEntry normalizedPrefixSearchStrings](v6 "normalizedPrefixSearchStrings")])
  {
    return 0;
  }

  [(THModelGlossary *)self willModify];
  [(NSMutableArray *)self->mEntries addObject:v6];
  [(NSMutableDictionary *)self->mEntriesByApplePubPath setObject:v6 forKey:path];
  [(NSMutableDictionary *)self->mEntriesByNormalizedTerm setObject:v6 forKey:[(THModelGlossaryEntry *)v6 normalizedTerm]];
  return v6;
}

- (id)entryForTerm:(id)term
{
  mEntriesByNormalizedTerm = self->mEntriesByNormalizedTerm;
  normalizedStringForSearch = [term normalizedStringForSearch];

  return [(NSMutableDictionary *)mEntriesByNormalizedTerm objectForKey:normalizedStringForSearch];
}

- (id)pathsForEntriesInContentNode:(id)node
{
  mLinksByContentNodeId = self->mLinksByContentNodeId;
  nodeGUID = [node nodeGUID];

  return [(NSMutableDictionary *)mLinksByContentNodeId objectForKey:nodeGUID];
}

- (void)setGlossaryTermPaths:(id)paths forContentNode:(id)node
{
  mLinksByContentNodeId = self->mLinksByContentNodeId;
  nodeGUID = [node nodeGUID];

  [(NSMutableDictionary *)mLinksByContentNodeId setObject:paths forKey:nodeGUID];
}

@end