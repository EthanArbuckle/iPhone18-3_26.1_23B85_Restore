@interface THDrawableStorage
- (NSArray)drawables;
- (THDrawableStorage)initWithContext:(id)a3;
- (void)addDrawable:(id)a3 insertContext:(id)a4;
- (void)dealloc;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation THDrawableStorage

- (THDrawableStorage)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THDrawableStorage;
  v3 = [(THDrawableStorage *)&v5 initWithContext:a3];
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

- (void)addDrawable:(id)a3 insertContext:(id)a4
{
  v7 = [(THDrawableStorage *)self documentRoot];
  if (v7)
  {
    v8 = v7;
    [a3 willBeAddedToDocumentRoot:v7 context:a4];
    [(NSMutableArray *)self->mDrawables addObject:a3];

    [a3 wasAddedToDocumentRoot:v8 context:a4];
  }

  else
  {
    mDrawables = self->mDrawables;

    [(NSMutableArray *)mDrawables addObject:a3];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables tsu_makeObjectsPerformSelector:a2 withObject:a3 withObject:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(NSMutableArray *)self->mDrawables tsu_makeObjectsPerformSelector:a2 withObject:a3 withObject:a4];
  objc_opt_class();
  v8 = TSUDynamicCast();

  [(THDrawableStorage *)self setDocumentRoot:v8];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  [(THDrawableStorage *)self setDocumentRoot:0];
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables makeObjectsPerformSelector:a2 withObject:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(NSMutableArray *)self->mDrawables tsu_makeObjectsPerformSelectorIfImplemented:"setTextServices:" withObject:0];
  mDrawables = self->mDrawables;

  [(NSMutableArray *)mDrawables makeObjectsPerformSelector:a2 withObject:a3];
}

@end