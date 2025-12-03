@interface THDrawableStorage
- (NSArray)drawables;
- (THDrawableStorage)initWithContext:(id)context;
- (void)addDrawable:(id)drawable insertContext:(id)context;
- (void)dealloc;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation THDrawableStorage

- (THDrawableStorage)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = THDrawableStorage;
  v3 = [(THDrawableStorage *)&v5 initWithContext:context];
  if (v3)
  {
    v3->mDrawables = objc_alloc_init(NSMutableArray);
    v3->mDrawableTags = objc_alloc_init(TSUNoCopyDictionary);
  }

  return v3;
}

- (void)dealloc
{
  self->mDocumentRoot = 0;

  self->mDrawables = 0;
  self->mDrawableTags = 0;
  v3.receiver = self;
  v3.super_class = THDrawableStorage;
  [(THDrawableStorage *)&v3 dealloc];
}

- (NSArray)drawables
{
  v2 = [(NSMutableArray *)self->mDrawables copy];

  return v2;
}

- (void)addDrawable:(id)drawable insertContext:(id)context
{
  documentRoot = [(THDrawableStorage *)self documentRoot];
  if (documentRoot)
  {
    v8 = documentRoot;
    [drawable willBeAddedToDocumentRoot:documentRoot context:context];
    [(NSMutableArray *)self->mDrawables addObject:drawable];

    [drawable wasAddedToDocumentRoot:v8 context:context];
  }

  else
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables addObject:drawable];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  if (!root)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables tsu_makeObjectsPerformSelector:a2 withObject:root withObject:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  if (!root)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(NSMutableArray *)self->mDrawables tsu_makeObjectsPerformSelector:a2 withObject:root withObject:context];
  objc_opt_class();
  v8 = TSUDynamicCast();

  [(THDrawableStorage *)self setDocumentRoot:v8];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  [(THDrawableStorage *)self setDocumentRoot:0];
  if (!root)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables makeObjectsPerformSelector:a2 withObject:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  if (!root)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(NSMutableArray *)self->mDrawables tsu_makeObjectsPerformSelectorIfImplemented:"setTextServices:" withObject:0];
  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables makeObjectsPerformSelector:a2 withObject:root];
}

@end