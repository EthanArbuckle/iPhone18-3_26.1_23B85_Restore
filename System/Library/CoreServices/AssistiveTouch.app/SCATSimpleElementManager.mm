@interface SCATSimpleElementManager
- (BOOL)containsElement:(id)element;
- (NSArray)allElements;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle;
- (id)firstElementWithOptions:(int *)options;
- (id)identifier;
- (id)lastElementWithOptions:(int *)options;
- (id)numberOfItemsInCurrentScanCycle;
- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle;
@end

@implementation SCATSimpleElementManager

- (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)numberOfItemsInCurrentScanCycle
{
  allElements = [(SCATSimpleElementManager *)self allElements];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allElements count]);

  return v3;
}

- (int64_t)indexOfElementInCurrentScanCycle:(id)cycle
{
  cycleCopy = cycle;
  allElements = [(SCATSimpleElementManager *)self allElements];
  v6 = [allElements indexOfObject:cycleCopy];

  return v6;
}

- (id)elementForIndexInCurrentScanCycle:(int64_t)cycle
{
  if (cycle < 0 || (-[SCATSimpleElementManager allElements](self, "allElements"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= cycle))
  {
    v8 = 0;
  }

  else
  {
    allElements = [(SCATSimpleElementManager *)self allElements];
    v8 = [allElements objectAtIndexedSubscript:cycle];
  }

  return v8;
}

- (id)firstElementWithOptions:(int *)options
{
  allElements = [(SCATSimpleElementManager *)self allElements];
  firstObject = [allElements firstObject];

  return firstObject;
}

- (id)lastElementWithOptions:(int *)options
{
  allElements = [(SCATSimpleElementManager *)self allElements];
  lastObject = [allElements lastObject];

  return lastObject;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  allElements = [(SCATSimpleElementManager *)self allElements];
  v9 = [allElements indexOfObject:beforeCopy];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    allElements2 = [(SCATSimpleElementManager *)self allElements];
    if (v9)
    {
      lastObject = [allElements2 objectAtIndex:v9 - 1];
      v12 = 0;
    }

    else
    {
      lastObject = [allElements2 lastObject];
      v12 = 1;
    }

    if (!wrap)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 0;
  lastObject = 0;
  if (wrap)
  {
LABEL_8:
    *wrap = v12;
  }

LABEL_9:

  return lastObject;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  allElements = [(SCATSimpleElementManager *)self allElements];
  v9 = [allElements indexOfObject:afterCopy];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    allElements2 = [(SCATSimpleElementManager *)self allElements];
    v13 = [allElements2 count] - 1;

    allElements3 = [(SCATSimpleElementManager *)self allElements];
    v15 = allElements3;
    v10 = v9 == v13;
    if (v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v9 + 1;
    }

    v11 = [allElements3 objectAtIndex:v16];

    if (!wrap)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  if (wrap)
  {
LABEL_8:
    *wrap = v10;
  }

LABEL_9:

  return v11;
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  allElements = [(SCATSimpleElementManager *)self allElements];
  v6 = [allElements containsObject:elementCopy];

  return v6;
}

- (NSArray)allElements
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end