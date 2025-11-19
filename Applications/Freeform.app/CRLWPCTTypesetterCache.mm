@interface CRLWPCTTypesetterCache
- (id).cxx_construct;
- (shared_ptr<CRLWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)a3;
- (void)addTypesetterForParagraphIdentifier:(unint64_t)a3 typesetter:(shared_ptr<CRLWPParagraphTypesetter>)a4;
- (void)clearCache;
- (void)dealloc;
- (void)p_limitCacheSize:(unint64_t)a3;
- (void)removeTypesetterForParagraphIndex:(unint64_t)a3;
@end

@implementation CRLWPCTTypesetterCache

- (void)dealloc
{
  [(CRLWPCTTypesetterCache *)self clearCache];
  v3.receiver = self;
  v3.super_class = CRLWPCTTypesetterCache;
  [(CRLWPCTTypesetterCache *)&v3 dealloc];
}

- (shared_ptr<CRLWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)a3
{
  *v3 = 0;
  v3[1] = 0;
  left = self->_typesetters.__tree_.__end_node_.__left_;
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  v5 = left;
  if (left)
  {
    v7 = p_end_node;
    do
    {
      v8 = v5[4].__left_;
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v5;
      }

      v5 = v5[v10].__left_;
    }

    while (v5);
    if (v7 != p_end_node && v7[4].__left_ <= a3)
    {
      v12 = v7[5].__left_;
      v11 = v7[6].__left_;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      }

      *v3 = v12;
      v3[1] = v11;
    }
  }

  result.var1 = a2;
  result.var0 = p_end_node;
  return result;
}

- (void)addTypesetterForParagraphIdentifier:(unint64_t)a3 typesetter:(shared_ptr<CRLWPParagraphTypesetter>)a4
{
  v16 = a3;
  if (*a4.var0)
  {
    var0 = a4.var0;
    *buf = &v16;
    v6 = sub_100263C64(&self->_typesetters, &v16);
    v8 = *var0;
    v7 = *(var0 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[6];
    v6[5] = v8;
    v6[6] = v7;
    if (v9)
    {
      sub_1000F532C(v9);
    }

    [(CRLWPCTTypesetterCache *)self p_limitCacheSize:v16, v16];
    if (self->_typesetters.__tree_.__size_ >= 0x41)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133DAA0();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133DAC8(v10, v11);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133DB74();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v13, buf, v10, v12);
      }

      v14 = [NSString stringWithUTF8String:"[CRLWPCTTypesetterCache addTypesetterForParagraphIdentifier:typesetter:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPCTTypesetterCache.mm"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:43 isFatal:0 description:"too many entries in our typesetter cache"];
    }
  }
}

- (void)removeTypesetterForParagraphIndex:(unint64_t)a3
{
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  left = self->_typesetters.__tree_.__end_node_.__left_;
  if (left)
  {
    p_typesetters = &self->_typesetters;
    v6 = p_end_node;
    do
    {
      v7 = left[4];
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        v6 = left;
      }

      left = left[v9];
    }

    while (left);
    if (v6 != p_end_node && v6[4] <= a3)
    {
      sub_100263D38(p_typesetters, v6);
    }
  }
}

- (void)clearCache
{
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  sub_100263D78(&self->_typesetters, self->_typesetters.__tree_.__end_node_.__left_);
  p_end_node->__left_ = 0;
  p_end_node[1].__left_ = 0;
  p_end_node[-1].__left_ = p_end_node;
}

- (void)p_limitCacheSize:(unint64_t)a3
{
  if (self->_typesetters.__tree_.__size_ >= 0x41)
  {
    p_end_node = &self->_typesetters.__tree_.__end_node_;
    left = self->_typesetters.__tree_.__end_node_.__left_;
    if (left)
    {
      do
      {
        begin_node = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      do
      {
        begin_node = p_end_node[2].__left_;
        v6 = *begin_node == p_end_node;
        p_end_node = begin_node;
      }

      while (v6);
    }

    if (begin_node[4] == a3)
    {
      begin_node = self->_typesetters.__tree_.__begin_node_;
    }

    sub_100263D38(&self->_typesetters, begin_node);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end