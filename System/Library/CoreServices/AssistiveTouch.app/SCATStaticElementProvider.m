@interface SCATStaticElementProvider
- (BOOL)containsElement:(id)a3;
- (NSString)description;
- (SCATStaticElementProvider)initWithElements:(id)a3;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
@end

@implementation SCATStaticElementProvider

- (SCATStaticElementProvider)initWithElements:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCATStaticElementProvider;
  v5 = [(SCATStaticElementProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SCATStaticElementProvider *)v5 setElements:v4];
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
  v2 = [(SCATStaticElementProvider *)self elements];
  v3 = [v2 count];

  return v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(SCATStaticElementProvider *)self elements];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATStaticElementProvider *)self count];
  if (v4)
  {
    v4 = [(SCATStaticElementProvider *)self objectAtIndex:0];
  }

  return v4;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATStaticElementProvider *)self count];
  if (v4)
  {
    v4 = [(SCATStaticElementProvider *)self lastObject];
  }

  return v4;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = [(SCATStaticElementProvider *)self indexOfObject:a3, a4, a5];
  v8 = [(SCATStaticElementProvider *)self count];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7 + 1 == v8;
    if (v7 + 1 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7 + 1;
    }

    v9 = [(SCATStaticElementProvider *)self objectAtIndex:v11];
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v10;
  }

LABEL_9:

  return v9;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v7 = [(SCATStaticElementProvider *)self indexOfObject:a3, a4, a5];
  v8 = [(SCATStaticElementProvider *)self count];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7 == 0;
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = [(SCATStaticElementProvider *)self objectAtIndex:v10 - 1];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v9 = 0;
  if (a4)
  {
LABEL_6:
    *a4 = v9;
  }

LABEL_7:

  return v11;
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATStaticElementProvider *)self elements];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end