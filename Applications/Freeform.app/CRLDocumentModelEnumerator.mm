@interface CRLDocumentModelEnumerator
- (CRLDocumentModelEnumerator)initWithEnumerator:(id)enumerator flags:(unint64_t)flags filter:(id)filter;
- (CRLDocumentModelEnumerator)initWithRootModelObject:(id)object flags:(unint64_t)flags filter:(id)filter;
- (id)nextObject;
- (void)addFilter:(id)filter;
- (void)dealloc;
- (void)enumerateUsingBlock:(id)block;
@end

@implementation CRLDocumentModelEnumerator

- (CRLDocumentModelEnumerator)initWithRootModelObject:(id)object flags:(unint64_t)flags filter:(id)filter
{
  objectCopy = object;
  filterCopy = filter;
  v16.receiver = self;
  v16.super_class = CRLDocumentModelEnumerator;
  v11 = [(CRLDocumentModelEnumerator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_root, object);
    v13 = objc_retainBlock(filterCopy);
    filter = v12->_filter;
    v12->_filter = v13;

    v12->_flags = flags;
  }

  return v12;
}

- (CRLDocumentModelEnumerator)initWithEnumerator:(id)enumerator flags:(unint64_t)flags filter:(id)filter
{
  enumeratorCopy = enumerator;
  filterCopy = filter;
  if (!enumeratorCopy)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134D294();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134D2A8(v10, v11);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134D364();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v12, v10);
    }

    v13 = [NSString stringWithUTF8String:"[CRLDocumentModelEnumerator initWithEnumerator:flags:filter:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDocumentModelEnumerator.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:67 isFatal:0 description:"invalid nil value for '%{public}s'", "enumerator"];
  }

  v21.receiver = self;
  v21.super_class = CRLDocumentModelEnumerator;
  v15 = [(CRLDocumentModelEnumerator *)&v21 init];
  if (v15)
  {
    v16 = [NSMutableArray arrayWithObject:enumeratorCopy];
    enumeratorStack = v15->_enumeratorStack;
    v15->_enumeratorStack = v16;

    v18 = objc_retainBlock(filterCopy);
    filter = v15->_filter;
    v15->_filter = v18;

    v15->_flags = flags;
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CRLDocumentModelEnumerator;
  [(CRLDocumentModelEnumerator *)&v2 dealloc];
}

- (id)nextObject
{
  if (!self->_enumeratorStack)
  {
    v29 = 1;
    filter = [(CRLDocumentModelEnumerator *)self filter];
    if (!filter || ([(CRLDocumentModelEnumerator *)self filter], v2 = objc_claimAutoreleasedReturnValue(), [(CRLDocumentModelEnumerator *)self root], v3 = objc_claimAutoreleasedReturnValue(), (v2)[2](v2, v3, &self->_stop, &v29)))
    {
      root = [(CRLDocumentModelEnumerator *)self root];
      if (!filter)
      {
        goto LABEL_8;
      }
    }

    else
    {
      root = 0;
    }

LABEL_8:
    if (v29 == 1)
    {
      root2 = [(CRLDocumentModelEnumerator *)self root];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        root3 = [(CRLDocumentModelEnumerator *)self root];
        childEnumeratorForUserSearch = [root3 childEnumeratorForUserFlags:self->_flags];
      }

      else if ([(CRLDocumentModelEnumerator *)self isEnumeratingForUserSearch]&& ([(CRLDocumentModelEnumerator *)self root], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
      {
        root3 = [(CRLDocumentModelEnumerator *)self root];
        childEnumeratorForUserSearch = [root3 childEnumeratorForUserSearch];
      }

      else
      {
        root4 = [(CRLDocumentModelEnumerator *)self root];
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }

        root3 = [(CRLDocumentModelEnumerator *)self root];
        childEnumeratorForUserSearch = [root3 childEnumerator];
      }

      v15 = childEnumeratorForUserSearch;
      v16 = [NSMutableArray arrayWithObject:childEnumeratorForUserSearch];

      if (v16)
      {
LABEL_18:
        [(CRLDocumentModelEnumerator *)self setEnumeratorStack:v16];

        goto LABEL_19;
      }
    }

LABEL_17:
    v16 = +[NSMutableArray array];
    goto LABEL_18;
  }

  root = 0;
LABEL_19:
  enumeratorStack = [(CRLDocumentModelEnumerator *)self enumeratorStack];
  if (![enumeratorStack count] || root)
  {
LABEL_42:

    goto LABEL_44;
  }

  while (1)
  {
    stop = self->_stop;

    if (stop)
    {
      break;
    }

    v28 = 1;
    enumeratorStack2 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    lastObject = [enumeratorStack2 lastObject];
    root = [lastObject nextObject];

    if (!root)
    {
      enumeratorStack3 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
      [enumeratorStack3 removeLastObject];
      goto LABEL_38;
    }

    enumeratorStack3 = root;
    filter2 = [(CRLDocumentModelEnumerator *)self filter];
    root = enumeratorStack3;
    if (filter2)
    {
      filter3 = [(CRLDocumentModelEnumerator *)self filter];
      root = enumeratorStack3;
      if (((filter3)[2](filter3, enumeratorStack3, &self->_stop, &v28) & 1) == 0)
      {

        root = 0;
      }
    }

    if (v28 != 1)
    {
      goto LABEL_38;
    }

    if (objc_opt_respondsToSelector())
    {
      childEnumeratorForUserSearch2 = [enumeratorStack3 childEnumeratorForUserFlags:self->_flags];
    }

    else if ([(CRLDocumentModelEnumerator *)self isEnumeratingForUserSearch]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      childEnumeratorForUserSearch2 = [enumeratorStack3 childEnumeratorForUserSearch];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v25 = 0;
        goto LABEL_37;
      }

      childEnumeratorForUserSearch2 = [enumeratorStack3 childEnumerator];
    }

    v25 = childEnumeratorForUserSearch2;
LABEL_37:
    enumeratorStack4 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    [enumeratorStack4 crl_addNonNilObject:v25];

LABEL_38:
    enumeratorStack = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    if (![enumeratorStack count] || root)
    {
      goto LABEL_42;
    }
  }

  root = 0;
LABEL_44:

  return root;
}

- (void)enumerateUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  nextObject = [(CRLDocumentModelEnumerator *)self nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v7 = nextObject2;
      blockCopy[2](blockCopy, nextObject2, &v8);
      nextObject2 = [(CRLDocumentModelEnumerator *)self nextObject];
    }

    while (nextObject2 && !v8);
  }
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  filter = self->_filter;
  if (filter)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002E54B0;
    v11[3] = &unk_1018536F0;
    v12 = objc_retainBlock(filter);
    v13 = filterCopy;
    v6 = v12;
    v7 = objc_retainBlock(v11);
    v8 = self->_filter;
    self->_filter = v7;
  }

  else
  {
    v9 = objc_retainBlock(filterCopy);
    v10 = self->_filter;
    self->_filter = v9;
  }
}

@end