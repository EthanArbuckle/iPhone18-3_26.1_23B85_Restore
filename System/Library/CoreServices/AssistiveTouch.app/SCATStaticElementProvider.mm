@interface SCATStaticElementProvider
- (BOOL)containsElement:(id)element;
- (NSString)description;
- (SCATStaticElementProvider)initWithElements:(id)elements;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
@end

@implementation SCATStaticElementProvider

- (SCATStaticElementProvider)initWithElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = SCATStaticElementProvider;
  v5 = [(SCATStaticElementProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SCATStaticElementProvider *)v5 setElements:elementsCopy];
    v7 = v6;
  }

  return v6;
}

- (NSString)description
{
  v3 = [NSNumber numberWithUnsignedInteger:[(SCATStaticElementProvider *)self count]];
  v4 = [NSString stringWithFormat:@"SCATStaticElementProvider<%p> numElems:%@.", self, v3];

  return v4;
}

- (unint64_t)count
{
  elements = [(SCATStaticElementProvider *)self elements];
  v3 = [elements count];

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  elements = [(SCATStaticElementProvider *)self elements];
  v5 = [elements objectAtIndex:index];

  return v5;
}

- (id)firstElementWithOptions:(int *)options
{
  v4 = [(SCATStaticElementProvider *)self count];
  if (v4)
  {
    v4 = [(SCATStaticElementProvider *)self objectAtIndex:0];
  }

  return v4;
}

- (id)lastElementWithOptions:(int *)options
{
  lastObject = [(SCATStaticElementProvider *)self count];
  if (lastObject)
  {
    lastObject = [(SCATStaticElementProvider *)self lastObject];
  }

  return lastObject;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  options = [(SCATStaticElementProvider *)self indexOfObject:after, wrap, options];
  v8 = [(SCATStaticElementProvider *)self count];
  if (options != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = options + 1 == v8;
    if (options + 1 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = options + 1;
    }

    v9 = [(SCATStaticElementProvider *)self objectAtIndex:v11];
    if (!wrap)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = 0;
  if (wrap)
  {
LABEL_8:
    *wrap = v10;
  }

LABEL_9:

  return v9;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  options = [(SCATStaticElementProvider *)self indexOfObject:before, wrap, options];
  v8 = [(SCATStaticElementProvider *)self count];
  if (options != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = options == 0;
    if (options)
    {
      v10 = options;
    }

    else
    {
      v10 = v8;
    }

    v11 = [(SCATStaticElementProvider *)self objectAtIndex:v10 - 1];
    if (!wrap)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v9 = 0;
  if (wrap)
  {
LABEL_6:
    *wrap = v9;
  }

LABEL_7:

  return v11;
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  elements = [(SCATStaticElementProvider *)self elements];
  v6 = [elements containsObject:elementCopy];

  return v6;
}

@end