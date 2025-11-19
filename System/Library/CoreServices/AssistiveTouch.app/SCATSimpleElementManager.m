@interface SCATSimpleElementManager
- (BOOL)containsElement:(id)a3;
- (NSArray)allElements;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementForIndexInCurrentScanCycle:(int64_t)a3;
- (id)firstElementWithOptions:(int *)a3;
- (id)identifier;
- (id)lastElementWithOptions:(int *)a3;
- (id)numberOfItemsInCurrentScanCycle;
- (int64_t)indexOfElementInCurrentScanCycle:(id)a3;
@end

@implementation SCATSimpleElementManager

- (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)numberOfItemsInCurrentScanCycle
{
  v2 = [(SCATSimpleElementManager *)self allElements];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);

  return v3;
}

- (int64_t)indexOfElementInCurrentScanCycle:(id)a3
{
  v4 = a3;
  v5 = [(SCATSimpleElementManager *)self allElements];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)a3
{
  if (a3 < 0 || (-[SCATSimpleElementManager allElements](self, "allElements"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(SCATSimpleElementManager *)self allElements];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)firstElementWithOptions:(int *)a3
{
  v3 = [(SCATSimpleElementManager *)self allElements];
  v4 = [v3 firstObject];

  return v4;
}

- (id)lastElementWithOptions:(int *)a3
{
  v3 = [(SCATSimpleElementManager *)self allElements];
  v4 = [v3 lastObject];

  return v4;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v8 = [(SCATSimpleElementManager *)self allElements];
  v9 = [v8 indexOfObject:v7];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(SCATSimpleElementManager *)self allElements];
    if (v9)
    {
      v11 = [v10 objectAtIndex:v9 - 1];
      v12 = 0;
    }

    else
    {
      v11 = [v10 lastObject];
      v12 = 1;
    }

    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 0;
  v11 = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v12;
  }

LABEL_9:

  return v11;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = a3;
  v8 = [(SCATSimpleElementManager *)self allElements];
  v9 = [v8 indexOfObject:v7];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(SCATSimpleElementManager *)self allElements];
    v13 = [v12 count] - 1;

    v14 = [(SCATSimpleElementManager *)self allElements];
    v15 = v14;
    v10 = v9 == v13;
    if (v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v9 + 1;
    }

    v11 = [v14 objectAtIndex:v16];

    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v10;
  }

LABEL_9:

  return v11;
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATSimpleElementManager *)self allElements];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (NSArray)allElements
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end