@interface TUILayoutOptionsLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (id)computedBoundsChildrenWithFlags:(unint64_t)a3;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)computeLayout;
- (void)onChildInvalidate:(id)a3;
- (void)onChildInvalidateIntrinsicSize:(id)a3;
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

- (void)onChildInvalidate:(id)a3
{
  v4 = a3;
  chosenChild = self->_chosenChild;
  v9 = v4;
  if (chosenChild != v4)
  {
    v6 = [(TUILayout *)self children];
    v7 = [v6 indexOfObjectIdenticalTo:v9];
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

- (void)onChildInvalidateIntrinsicSize:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUILayoutOptionsLayout;
  [(TUILayout *)&v5 onChildInvalidateIntrinsicSize:a3];
  chosenChild = self->_chosenChild;
  self->_chosenChild = 0;

  self->_chosenIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (id)computedBoundsChildrenWithFlags:(unint64_t)a3
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
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 validatedIntrinsicWidthConsideringSpecified];
  return v5;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = [(TUILayout *)self children];
  v4 = [v3 firstObject];

  v5 = [v4 validatedIntrinsicHeightConsideringSpecified];
  return v5;
}

- (void)computeLayout
{
  chosenChild = self->_chosenChild;
  if (!chosenChild)
  {
    v4 = [(TUILayout *)self children];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_7D574;
    v7[3] = &unk_260448;
    v7[4] = self;
    [v4 enumerateObjectsUsingBlock:v7];
    if (!self->_chosenChild && [v4 count])
    {
      v5 = [v4 lastObject];
      v6 = self->_chosenChild;
      self->_chosenChild = v5;

      self->_chosenIndex = [v4 count] - 1;
    }

    chosenChild = self->_chosenChild;
  }

  [(TUILayout *)chosenChild setComputedOrigin:CGPointZero.x, CGPointZero.y];
  [(TUILayout *)self->_chosenChild computedTransformedSize];
  [(TUILayout *)self setComputedNaturalSize:?];
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  if (self->_chosenChild)
  {
    chosenChild = self->_chosenChild;
    v10 = a6;
    v11 = a4;
    v12 = [NSArray arrayWithObjects:&chosenChild count:1];
    v13 = *&a5->c;
    v14[0] = *&a5->a;
    v14[1] = v13;
    v14[2] = *&a5->tx;
    [(TUILayout *)self appendChilden:v12 renderModelCompatibleWithKind:a3 context:v11 transform:v14 toModels:v10];
  }
}

@end