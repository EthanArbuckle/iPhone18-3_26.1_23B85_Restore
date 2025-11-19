@interface CRLDocumentModelEnumerator
- (CRLDocumentModelEnumerator)initWithEnumerator:(id)a3 flags:(unint64_t)a4 filter:(id)a5;
- (CRLDocumentModelEnumerator)initWithRootModelObject:(id)a3 flags:(unint64_t)a4 filter:(id)a5;
- (id)nextObject;
- (void)addFilter:(id)a3;
- (void)dealloc;
- (void)enumerateUsingBlock:(id)a3;
@end

@implementation CRLDocumentModelEnumerator

- (CRLDocumentModelEnumerator)initWithRootModelObject:(id)a3 flags:(unint64_t)a4 filter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CRLDocumentModelEnumerator;
  v11 = [(CRLDocumentModelEnumerator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_root, a3);
    v13 = objc_retainBlock(v10);
    filter = v12->_filter;
    v12->_filter = v13;

    v12->_flags = a4;
  }

  return v12;
}

- (CRLDocumentModelEnumerator)initWithEnumerator:(id)a3 flags:(unint64_t)a4 filter:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
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
    v16 = [NSMutableArray arrayWithObject:v8];
    enumeratorStack = v15->_enumeratorStack;
    v15->_enumeratorStack = v16;

    v18 = objc_retainBlock(v9);
    filter = v15->_filter;
    v15->_filter = v18;

    v15->_flags = a4;
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
    v6 = [(CRLDocumentModelEnumerator *)self filter];
    if (!v6 || ([(CRLDocumentModelEnumerator *)self filter], v2 = objc_claimAutoreleasedReturnValue(), [(CRLDocumentModelEnumerator *)self root], v3 = objc_claimAutoreleasedReturnValue(), (v2)[2](v2, v3, &self->_stop, &v29)))
    {
      v5 = [(CRLDocumentModelEnumerator *)self root];
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_8:
    if (v29 == 1)
    {
      v7 = [(CRLDocumentModelEnumerator *)self root];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(CRLDocumentModelEnumerator *)self root];
        v10 = [v9 childEnumeratorForUserFlags:self->_flags];
      }

      else if ([(CRLDocumentModelEnumerator *)self isEnumeratingForUserSearch]&& ([(CRLDocumentModelEnumerator *)self root], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
      {
        v9 = [(CRLDocumentModelEnumerator *)self root];
        v10 = [v9 childEnumeratorForUserSearch];
      }

      else
      {
        v13 = [(CRLDocumentModelEnumerator *)self root];
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }

        v9 = [(CRLDocumentModelEnumerator *)self root];
        v10 = [v9 childEnumerator];
      }

      v15 = v10;
      v16 = [NSMutableArray arrayWithObject:v10];

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

  v5 = 0;
LABEL_19:
  v17 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
  if (![v17 count] || v5)
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
    v19 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    v20 = [v19 lastObject];
    v5 = [v20 nextObject];

    if (!v5)
    {
      v21 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
      [v21 removeLastObject];
      goto LABEL_38;
    }

    v21 = v5;
    v22 = [(CRLDocumentModelEnumerator *)self filter];
    v5 = v21;
    if (v22)
    {
      v23 = [(CRLDocumentModelEnumerator *)self filter];
      v5 = v21;
      if (((v23)[2](v23, v21, &self->_stop, &v28) & 1) == 0)
      {

        v5 = 0;
      }
    }

    if (v28 != 1)
    {
      goto LABEL_38;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v21 childEnumeratorForUserFlags:self->_flags];
    }

    else if ([(CRLDocumentModelEnumerator *)self isEnumeratingForUserSearch]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = [v21 childEnumeratorForUserSearch];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v25 = 0;
        goto LABEL_37;
      }

      v24 = [v21 childEnumerator];
    }

    v25 = v24;
LABEL_37:
    v26 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    [v26 crl_addNonNilObject:v25];

LABEL_38:
    v17 = [(CRLDocumentModelEnumerator *)self enumeratorStack];
    if (![v17 count] || v5)
    {
      goto LABEL_42;
    }
  }

  v5 = 0;
LABEL_44:

  return v5;
}

- (void)enumerateUsingBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(CRLDocumentModelEnumerator *)self nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = v6;
      v4[2](v4, v6, &v8);
      v6 = [(CRLDocumentModelEnumerator *)self nextObject];
    }

    while (v6 && !v8);
  }
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  filter = self->_filter;
  if (filter)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002E54B0;
    v11[3] = &unk_1018536F0;
    v12 = objc_retainBlock(filter);
    v13 = v4;
    v6 = v12;
    v7 = objc_retainBlock(v11);
    v8 = self->_filter;
    self->_filter = v7;
  }

  else
  {
    v9 = objc_retainBlock(v4);
    v10 = self->_filter;
    self->_filter = v9;
  }
}

@end