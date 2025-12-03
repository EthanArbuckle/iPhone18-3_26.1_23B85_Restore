@interface TUILayoutOptionsLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)computedBoundsChildrenWithFlags:(unint64_t)flags;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)computeLayout;
- (void)onChildInvalidate:(id)invalidate;
- (void)onChildInvalidateIntrinsicSize:(id)size;
- (void)onChildrenUpdated;
- (void)onInvalidate;
@end

@implementation TUILayoutOptionsLayout

- (void)onChildrenUpdated
{
  v4.receiver = self;
  v4.super_class = TUILayoutOptionsLayout;
  [(TUILayout *)&v4 onChildrenUpdated];
  chosenChild = self->_chosenChild;
  self->_chosenChild = 0;
}

- (void)onChildInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  chosenChild = self->_chosenChild;
  v9 = invalidateCopy;
  if (chosenChild != invalidateCopy)
  {
    children = [(TUILayout *)self children];
    v7 = [children indexOfObjectIdenticalTo:v9];
    chosenIndex = self->_chosenIndex;

    if (v7 >= chosenIndex)
    {
      goto LABEL_5;
    }

    chosenChild = self->_chosenChild;
  }

  self->_chosenChild = 0;

LABEL_5:
}

- (void)onInvalidate
{
  v4.receiver = self;
  v4.super_class = TUILayoutOptionsLayout;
  [(TUILayout *)&v4 onInvalidate];
  chosenChild = self->_chosenChild;
  self->_chosenChild = 0;

  self->_chosenIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)onChildInvalidateIntrinsicSize:(id)size
{
  v5.receiver = self;
  v5.super_class = TUILayoutOptionsLayout;
  [(TUILayout *)&v5 onChildInvalidateIntrinsicSize:size];
  chosenChild = self->_chosenChild;
  self->_chosenChild = 0;

  self->_chosenIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)computedBoundsChildrenWithFlags:(unint64_t)flags
{
  if (self->_chosenChild)
  {
    chosenChild = self->_chosenChild;
    v3 = [NSArray arrayWithObjects:&chosenChild count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  validatedIntrinsicWidthConsideringSpecified = [firstObject validatedIntrinsicWidthConsideringSpecified];
  return validatedIntrinsicWidthConsideringSpecified;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  children = [(TUILayout *)self children];
  firstObject = [children firstObject];

  validatedIntrinsicHeightConsideringSpecified = [firstObject validatedIntrinsicHeightConsideringSpecified];
  return validatedIntrinsicHeightConsideringSpecified;
}

- (void)computeLayout
{
  chosenChild = self->_chosenChild;
  if (!chosenChild)
  {
    children = [(TUILayout *)self children];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_7D574;
    v7[3] = &unk_260448;
    v7[4] = self;
    [children enumerateObjectsUsingBlock:v7];
    if (!self->_chosenChild && [children count])
    {
      lastObject = [children lastObject];
      v6 = self->_chosenChild;
      self->_chosenChild = lastObject;

      self->_chosenIndex = [children count] - 1;
    }

    chosenChild = self->_chosenChild;
  }

  [(TUILayout *)chosenChild setComputedOrigin:CGPointZero.x, CGPointZero.y];
  [(TUILayout *)self->_chosenChild computedTransformedSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  if (self->_chosenChild)
  {
    chosenChild = self->_chosenChild;
    modelsCopy = models;
    contextCopy = context;
    v12 = [NSArray arrayWithObjects:&chosenChild count:1];
    v13 = *&transform->c;
    v14[0] = *&transform->a;
    v14[1] = v13;
    v14[2] = *&transform->tx;
    [(TUILayout *)self appendChilden:v12 renderModelCompatibleWithKind:kind context:contextCopy transform:v14 toModels:modelsCopy];
  }
}

@end