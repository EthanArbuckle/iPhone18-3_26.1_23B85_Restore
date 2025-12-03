@interface THWGutterDrawableStorage
- (THWGutterDrawableStorage)initWithContext:(id)context;
- (id)drawables;
- (id)orderedDrawables;
- (id)positioningOfDrawable:(id)drawable;
- (void)addDrawable:(id)drawable positioning:(id)positioning insertContext:(id)context;
- (void)dealloc;
- (void)setDrawablePositionings:(id)positionings;
- (void)setDrawableStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation THWGutterDrawableStorage

- (void)setDrawableStorage:(id)storage
{
  [(THWGutterDrawableStorage *)self willModify];
  storageCopy = storage;

  self->mDrawableStorage = storage;
}

- (void)setDrawablePositionings:(id)positionings
{
  [(THWGutterDrawableStorage *)self willModify];
  positioningsCopy = positionings;

  self->mDrawablePositionings = positionings;
}

- (THWGutterDrawableStorage)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = THWGutterDrawableStorage;
  v3 = [(THWGutterDrawableStorage *)&v5 initWithContext:context];
  if (v3)
  {
    [(THWGutterDrawableStorage *)v3 setDrawableStorage:[[THDrawableStorage alloc] initWithContext:[(THWGutterDrawableStorage *)v3 context]]];
    [(THWGutterDrawableStorage *)v3 setDrawablePositionings:objc_alloc_init(TSUPointerKeyDictionary)];
  }

  return v3;
}

- (void)dealloc
{
  self->mDrawableStorage = 0;

  self->mDrawablePositionings = 0;
  v3.receiver = self;
  v3.super_class = THWGutterDrawableStorage;
  [(THWGutterDrawableStorage *)&v3 dealloc];
}

- (id)drawables
{
  drawableStorage = [(THWGutterDrawableStorage *)self drawableStorage];

  return [(THDrawableStorage *)drawableStorage drawables];
}

- (id)orderedDrawables
{
  shouldUseGutterOrder = [(THWGutterDrawableStorage *)self shouldUseGutterOrder];
  drawables = [(THWGutterDrawableStorage *)self drawables];
  if (shouldUseGutterOrder)
  {

    return [drawables sortedArrayUsingSelector:"gutterOrderCompare:"];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5D410;
    v6[3] = &unk_45BBC0;
    v6[4] = self;
    return [drawables sortedArrayUsingComparator:v6];
  }
}

- (void)addDrawable:(id)drawable positioning:(id)positioning insertContext:(id)context
{
  [(THWGutterDrawableStorage *)self willModify];
  [(THDrawableStorage *)[(THWGutterDrawableStorage *)self drawableStorage] addDrawable:drawable insertContext:context];
  drawablePositionings = [(THWGutterDrawableStorage *)self drawablePositionings];

  [(TSUPointerKeyDictionary *)drawablePositionings setObject:positioning forUncopiedKey:drawable];
}

- (id)positioningOfDrawable:(id)drawable
{
  if (!drawable || (result = [(TSUPointerKeyDictionary *)[(THWGutterDrawableStorage *)self drawablePositionings] objectForKey:drawable]) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  drawableStorage = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)drawableStorage willBeAddedToDocumentRoot:root context:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  drawableStorage = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)drawableStorage wasAddedToDocumentRoot:root context:context];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  drawableStorage = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)drawableStorage willBeRemovedFromDocumentRoot:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  drawableStorage = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)drawableStorage wasRemovedFromDocumentRoot:root];
}

@end