@interface THWGutterDrawableStorage
- (THWGutterDrawableStorage)initWithContext:(id)a3;
- (id)drawables;
- (id)orderedDrawables;
- (id)positioningOfDrawable:(id)a3;
- (void)addDrawable:(id)a3 positioning:(id)a4 insertContext:(id)a5;
- (void)dealloc;
- (void)setDrawablePositionings:(id)a3;
- (void)setDrawableStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation THWGutterDrawableStorage

- (void)setDrawableStorage:(id)a3
{
  [(THWGutterDrawableStorage *)self willModify];
  v5 = a3;

  self->mDrawableStorage = a3;
}

- (void)setDrawablePositionings:(id)a3
{
  [(THWGutterDrawableStorage *)self willModify];
  v5 = a3;

  self->mDrawablePositionings = a3;
}

- (THWGutterDrawableStorage)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWGutterDrawableStorage;
  v3 = [(THWGutterDrawableStorage *)&v5 initWithContext:a3];
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
  v2 = [(THWGutterDrawableStorage *)self drawableStorage];

  return [(THDrawableStorage *)v2 drawables];
}

- (id)orderedDrawables
{
  v3 = [(THWGutterDrawableStorage *)self shouldUseGutterOrder];
  v4 = [(THWGutterDrawableStorage *)self drawables];
  if (v3)
  {

    return [v4 sortedArrayUsingSelector:"gutterOrderCompare:"];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5D410;
    v6[3] = &unk_45BBC0;
    v6[4] = self;
    return [v4 sortedArrayUsingComparator:v6];
  }
}

- (void)addDrawable:(id)a3 positioning:(id)a4 insertContext:(id)a5
{
  [(THWGutterDrawableStorage *)self willModify];
  [(THDrawableStorage *)[(THWGutterDrawableStorage *)self drawableStorage] addDrawable:a3 insertContext:a5];
  v9 = [(THWGutterDrawableStorage *)self drawablePositionings];

  [(TSUPointerKeyDictionary *)v9 setObject:a4 forUncopiedKey:a3];
}

- (id)positioningOfDrawable:(id)a3
{
  if (!a3 || (result = [(TSUPointerKeyDictionary *)[(THWGutterDrawableStorage *)self drawablePositionings] objectForKey:a3]) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v6 = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)v6 willBeAddedToDocumentRoot:a3 context:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v6 = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)v6 wasAddedToDocumentRoot:a3 context:a4];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)v4 willBeRemovedFromDocumentRoot:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v4 = [(THWGutterDrawableStorage *)self drawableStorage];

  [(THDrawableStorage *)v4 wasRemovedFromDocumentRoot:a3];
}

@end