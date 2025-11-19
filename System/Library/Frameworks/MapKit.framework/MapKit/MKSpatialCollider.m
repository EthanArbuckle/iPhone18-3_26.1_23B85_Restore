@interface MKSpatialCollider
- (MKSpatialCollider)initWithAnnotationViews:(id)a3 previousCollissions:(id)a4 options:(int64_t)a5;
- (id).cxx_construct;
- (id)registeredCollissions;
- (id)viewsCollidingWithAnnotationView:(id)a3 inCollidableList:(BOOL)a4;
- (id)viewsCollidingWithAnnotationView:(id)a3 inCollidableList:(BOOL)a4 fromIndex:(int64_t)a5 length:(double)a6;
- (id)viewsCollidingWithAnnotationViewAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)insertAnnotationView:(id)a3;
- (void)dealloc;
@end

@implementation MKSpatialCollider

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

- (id)registeredCollissions
{
  v2 = self->_registeredCollisonPairs;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MKSpatialCollider;
  [(MKSpatialCollider *)&v3 dealloc];
}

- (id)viewsCollidingWithAnnotationView:(id)a3 inCollidableList:(BOOL)a4 fromIndex:(int64_t)a5 length:(double)a6
{
  v66 = a4;
  v9 = self;
  ++self->mutator;
  v10 = &OBJC_IVAR___MKAnnotationView__clusterAnnotationView;
  v11 = *(a3 + 42);
  if (self->_isVertical)
  {
    v12 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:fromIndex:length:]::$_7::__invoke;
  }

  else
  {
    v12 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:fromIndex:length:]::$_8::__invoke;
  }

  v75.origin = *(a3 + 41);
  v75.size = v11;
  (v12)(&v75, a2);
  v64 = a5;
  v14 = &v9->_sortedAnnotationViews.__begin_[a5];
  if (v9->_sortedAnnotationViews.var0 == v14)
  {
    v15 = 0;
    v73 = 0;
    v67 = 0;
  }

  else
  {
    v15 = 0;
    v72 = 0;
    v73 = 0;
    v67 = 0;
    v68 = v12;
    v16 = v13 + a6;
    registeredCollisonPairs = v9->_registeredCollisonPairs;
    previousCollisionPairs = v9->_previousCollisionPairs;
    v65 = registeredCollisonPairs + 3;
    v69 = v9;
    do
    {
      v17 = *v14;
      if (*v14 == a3)
      {
        v27 = v15;
        v28 = v15 >> 3;
        if (((v15 >> 3) + 1) >> 61)
        {
          std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
        }

        if (v15 >> 3 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>((v15 >> 3) + 1);
        }

        *(8 * v28) = v17;
        v15 = 8 * v28 + 8;
        memcpy(0, 0, v27);
        v36 = v14 - v9->_sortedAnnotationViews.__begin_;
LABEL_68:
        v73 = v36;
        v72 = 1;
      }

      else
      {
        memset(&v74, 0, sizeof(v74));
        v18 = v17 + v10[756];
        v19 = *(v18 + 1);
        v74.origin = *v18;
        v74.size = v19;
        if (v12(&v74) > v16)
        {
          break;
        }

        if (CGRectIntersectsRect(v75, v74))
        {
          if (v17 <= a3)
          {
            v20 = v17;
          }

          else
          {
            v20 = a3;
          }

          if (v17 <= a3)
          {
            v21 = a3;
          }

          else
          {
            v21 = v17;
          }

          v22 = std::hash<_MKAnnotationViewPair>::operator()(v20, v21);
          v23 = v22;
          v24 = previousCollisionPairs[2];
          if (v24)
          {
            v25 = vcnt_s8(v24);
            v25.i16[0] = vaddlv_u8(v25);
            if (v25.u32[0] > 1uLL)
            {
              v26 = v22;
              if (v22 >= *&v24)
              {
                v26 = v22 % *&v24;
              }
            }

            else
            {
              v26 = (*&v24 - 1) & v22;
            }

            v29 = *(*&previousCollisionPairs[1] + 8 * v26);
            if (v29)
            {
              for (i = *v29; i; i = *i)
              {
                v31 = i[1];
                if (v31 == v22)
                {
                  if (i[2] == v20 && i[3] == v21)
                  {
                    v41 = 1;
                    goto LABEL_39;
                  }
                }

                else
                {
                  if (v25.u32[0] > 1uLL)
                  {
                    if (v31 >= *&v24)
                    {
                      v31 %= *&v24;
                    }
                  }

                  else
                  {
                    v31 &= *&v24 - 1;
                  }

                  if (v31 != v26)
                  {
                    break;
                  }
                }
              }
            }
          }

          v41 = 0;
LABEL_39:
          if ([a3 isCollidingWithAnnotationView:v17 previouslyCollided:{v41, v64, v65}])
          {
            v33 = registeredCollisonPairs[2];
            if (!*&v33)
            {
              goto LABEL_62;
            }

            v34 = vcnt_s8(v33);
            v34.i16[0] = vaddlv_u8(v34);
            if (v34.u32[0] > 1uLL)
            {
              v35 = v23;
              if (v23 >= *&v33)
              {
                v35 = v23 % *&v33;
              }
            }

            else
            {
              v35 = (*&v33 - 1) & v23;
            }

            v37 = *(*&registeredCollisonPairs[1] + 8 * v35);
            if (!v37 || (v38 = *v37) == 0)
            {
LABEL_62:
              operator new();
            }

            while (1)
            {
              v39 = v38[1];
              if (v39 == v23)
              {
                if (v38[2] == v20 && v38[3] == v21)
                {
                  v42 = v15;
                  v43 = v15 >> 3;
                  v12 = v68;
                  v9 = v69;
                  v10 = &OBJC_IVAR___MKAnnotationView__clusterAnnotationView;
                  if (((v15 >> 3) + 1) >> 61)
                  {
                    std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
                  }

                  if (v15 >> 3 != -1)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>((v15 >> 3) + 1);
                  }

                  *(8 * v43) = v17;
                  v15 = 8 * v43 + 8;
                  memcpy(0, 0, v42);
                  v36 = v73;
                  v67 = v14 - v69->_sortedAnnotationViews.__begin_;
                  if ((v72 & 1) == 0)
                  {
                    v36 = v14 - v69->_sortedAnnotationViews.__begin_;
                  }

                  goto LABEL_68;
                }
              }

              else
              {
                if (v34.u32[0] > 1uLL)
                {
                  if (v39 >= *&v33)
                  {
                    v39 %= *&v33;
                  }
                }

                else
                {
                  v39 &= *&v33 - 1;
                }

                if (v39 != v35)
                {
                  goto LABEL_62;
                }
              }

              v38 = *v38;
              if (!v38)
              {
                goto LABEL_62;
              }
            }
          }

          v12 = v68;
          v9 = v69;
          v10 = &OBJC_IVAR___MKAnnotationView__clusterAnnotationView;
        }
      }

      ++v14;
    }

    while (v14 != v9->_sortedAnnotationViews.var0);
  }

  v44 = v15 >> 3;
  if (!(v15 >> 3))
  {
    return 0;
  }

  if (v44 != 1)
  {
    if (v9->_options)
    {
      begin = v9->_sortedAnnotationViews.__begin_;
      v47 = 8 * v67 + 8;
      v48 = begin + v47;
      if (8 * v64 == v47)
      {
LABEL_82:
        v49 = (begin + v47);
      }

      else
      {
        v49 = &begin[v64];
        while (*v49 != MEMORY[0])
        {
          if (++v49 == v48)
          {
            goto LABEL_82;
          }
        }

        if (v48 != v49)
        {
          v62 = (v49 + 1);
          if (v49 + 1 != v48)
          {
            v63 = 8;
            do
            {
              if (*v62 == *v63)
              {
                v63 += 8;
              }

              else
              {
                *v49++ = *v62;
              }

              v62 += 8;
            }

            while (v62 != v48);
          }
        }
      }

      v50 = v48 - v49;
      if (v50)
      {
        v51 = v49;
        v52 = (v49 + v50);
        var0 = v9->_sortedAnnotationViews.var0;
        v54 = var0 - v52;
        if (var0 != v52)
        {
          memmove(v49, v52, var0 - v52);
        }

        v9->_sortedAnnotationViews.var0 = (v51 + v54);
      }
    }

    return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{v44, v64}];
  }

  options = v9->_options;
  if (!v66)
  {
    if ((options & 1) == 0)
    {
      return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{1, v64}];
    }

LABEL_89:
    v56 = v9->_sortedAnnotationViews.__begin_;
    v57 = v9->_sortedAnnotationViews.var0;
    v58 = &v56[v73];
    v59 = (v57 - (v58 + 1));
    if (v57 != v58 + 1)
    {
      memmove(&v56[v73], v58 + 1, v57 - (v58 + 1));
    }

    v9->_sortedAnnotationViews.var0 = &v59[v58];
    if (v66)
    {
      return 0;
    }

    return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{1, v64}];
  }

  if ((options & 2) != 0)
  {
    goto LABEL_89;
  }

  return 0;
}

- (id)viewsCollidingWithAnnotationViewAtIndex:(unint64_t)a3
{
  v5 = [MKSpatialCollider viewsCollidingWithAnnotationViewAtIndex:]::$_6::__invoke;
  if (self->_isVertical)
  {
    v5 = [MKSpatialCollider viewsCollidingWithAnnotationViewAtIndex:]::$_5::__invoke;
  }

  v6 = self->_sortedAnnotationViews.__begin_[a3];
  v8 = *(v6 + 42);
  (v5)(&v8, a2);
  return [(MKSpatialCollider *)self viewsCollidingWithAnnotationView:v6 inCollidableList:1 fromIndex:a3 length:?];
}

- (id)viewsCollidingWithAnnotationView:(id)a3 inCollidableList:(BOOL)a4
{
  v4 = a4;
  if (self->_isVertical)
  {
    v7 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_1::__invoke;
  }

  else
  {
    v7 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_2::__invoke;
  }

  v8 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_4::__invoke;
  v9 = *(a3 + 42);
  if (self->_isVertical)
  {
    v8 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_3::__invoke;
  }

  v29 = *(a3 + 41);
  v30 = v9;
  v10 = (v8)(&v30, a2);
  v11 = *(a3 + 42);
  v29 = *(a3 + 41);
  v30 = v11;
  v12 = v7(&v29);
  maxLength = self->_maxLength;
  v14 = v12 - maxLength;
  begin = self->_sortedAnnotationViews.__begin_;
  var0 = self->_sortedAnnotationViews.var0;
  if (self->_isVertical)
  {
    if (var0 != begin)
    {
      v17 = var0 - begin;
      v18 = self->_sortedAnnotationViews.__begin_;
      do
      {
        v19 = v17 >> 1;
        v20 = &v18[v17 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v17 += ~(v17 >> 1);
        if (*(v22 + 83) < v14)
        {
          v18 = v21;
        }

        else
        {
          v17 = v19;
        }
      }

      while (v17);
      goto LABEL_22;
    }

LABEL_21:
    v18 = self->_sortedAnnotationViews.var0;
    goto LABEL_22;
  }

  if (var0 == begin)
  {
    goto LABEL_21;
  }

  v23 = var0 - begin;
  v18 = self->_sortedAnnotationViews.__begin_;
  do
  {
    v24 = v23 >> 1;
    v25 = &v18[v23 >> 1];
    v27 = *v25;
    v26 = v25 + 1;
    v23 += ~(v23 >> 1);
    if (*(v27 + 82) < v14)
    {
      v18 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
LABEL_22:
  if (var0 == v18)
  {
    return 0;
  }

  else
  {
    return [(MKSpatialCollider *)self viewsCollidingWithAnnotationView:a3 inCollidableList:v4 fromIndex:v18 - begin length:v10 + maxLength];
  }
}

- (unint64_t)insertAnnotationView:(id)a3
{
  v42 = a3;
  ++self->mutator;
  begin = self->_sortedAnnotationViews.__begin_;
  var0 = self->_sortedAnnotationViews.var0;
  if (self->_isVertical)
  {
    if (var0 != begin)
    {
      v7 = var0 - begin;
      v8 = *(a3 + 83);
      v9 = self->_sortedAnnotationViews.__begin_;
      do
      {
        v10 = v7 >> 1;
        v11 = &v9[v7 >> 1];
        v12 = *(*v11 + 83);
        if (v12 < v8 || (*v11 < a3 ? (v13 = v12 == v8) : (v13 = 0), v13))
        {
          v9 = v11 + 1;
          v10 = v7 + ~v10;
        }

        v7 = v10;
      }

      while (v10);
      goto LABEL_25;
    }

LABEL_24:
    v9 = self->_sortedAnnotationViews.var0;
    goto LABEL_25;
  }

  if (var0 == begin)
  {
    goto LABEL_24;
  }

  v14 = var0 - begin;
  v15 = *(a3 + 82);
  v9 = self->_sortedAnnotationViews.__begin_;
  do
  {
    v16 = v14 >> 1;
    v17 = &v9[v14 >> 1];
    v18 = *(*v17 + 82);
    if (v18 < v15 || (*v17 < a3 ? (v19 = v18 == v15) : (v19 = 0), v19))
    {
      v9 = v17 + 1;
      v16 = v14 + ~v16;
    }

    v14 = v16;
  }

  while (v16);
LABEL_25:
  v20 = v9 - begin;
  var1 = self->_sortedAnnotationViews.var1;
  v22 = v9 - begin;
  if (var0 >= var1)
  {
    v25 = var0 - begin + 1;
    if (v25 >> 61)
    {
      std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v26 = var1 - begin;
    if (v26 >> 2 > v25)
    {
      v25 = v26 >> 2;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v27 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>(v27);
    }

    v28 = (8 * v22);
    v29 = 8 * v22;
    if (!v22)
    {
      if (v20 < 1)
      {
        if (v9 == begin)
        {
          v32 = 1;
        }

        else
        {
          v32 = v20 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>(v32);
      }

      v28 = (v28 - (((v20 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v29 = v28;
    }

    *v28 = a3;
    v33 = v29 + 8;
    memcpy((v29 + 8), v9, self->_sortedAnnotationViews.var0 - v9);
    v34 = self->_sortedAnnotationViews.__begin_;
    v41 = (v33 + self->_sortedAnnotationViews.var0 - v9);
    self->_sortedAnnotationViews.var0 = v9;
    v35 = v9 - v34;
    v36 = v28 - (v9 - v34);
    memcpy(v36, v34, v35);
    v37 = self->_sortedAnnotationViews.__begin_;
    self->_sortedAnnotationViews.__begin_ = v36;
    *&self->_sortedAnnotationViews.var0 = v41;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else if (v9 == var0)
  {
    *var0 = a3;
    self->_sortedAnnotationViews.var0 = var0 + 1;
  }

  else
  {
    v23 = v9 + 1;
    if (var0 < 8)
    {
      v24 = self->_sortedAnnotationViews.var0;
    }

    else
    {
      *var0 = *(var0 - 1);
      v24 = var0 + 1;
    }

    self->_sortedAnnotationViews.var0 = v24;
    if (var0 != v23)
    {
      memmove(v9 + 1, v9, var0 - v23);
      v24 = self->_sortedAnnotationViews.var0;
    }

    v30 = v24 <= &v42 || v9 > &v42;
    v31 = 8;
    if (v30)
    {
      v31 = 0;
    }

    *v9 = *(&v42 + v31);
  }

  maxLength = self->_maxLength;
  v39 = 16;
  if (self->_isVertical)
  {
    v39 = 24;
  }

  if (maxLength < *(a3 + v39 + 656))
  {
    maxLength = *(a3 + v39 + 656);
  }

  self->_maxLength = maxLength;
  return v22;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  begin = self->_sortedAnnotationViews.__begin_;
  var0 = self->_sortedAnnotationViews.var0;
  a3->var0 = 1;
  a3->var1 = begin;
  a3->var2 = &self->mutator;
  return var0 - begin;
}

- (MKSpatialCollider)initWithAnnotationViews:(id)a3 previousCollissions:(id)a4 options:(int64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = MKSpatialCollider;
  v7 = [(MKSpatialCollider *)&v45 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a5;
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v8->_previousCollisionPairs = v9;
    v8->_registeredCollisonPairs = -[_MKSpatialColliderPairSet initWithCapacity:]([_MKSpatialColliderPairSet alloc], "initWithCapacity:", [a3 count]);
    [objc_msgSend(objc_msgSend(a3 "anyObject")];
    v8->_isVertical = v11 < v10;
    v12 = [a3 count];
    if (v12 > (v8->_sortedAnnotationViews.var1 - v8->_sortedAnnotationViews.__begin_) >> 3)
    {
      if (!(v12 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>(v12);
      }

      std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = [a3 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v13)
    {
      v15 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(a3);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = v17[84];
          v19 = v17[85];
          var0 = v8->_sortedAnnotationViews.var0;
          var1 = v8->_sortedAnnotationViews.var1;
          if (var0 >= var1)
          {
            begin = v8->_sortedAnnotationViews.__begin_;
            v24 = var0 - begin;
            if ((v24 + 1) >> 61)
            {
              std::vector<VKRouteInfo * {__strong}>::__throw_length_error[abi:ne200100]();
            }

            v25 = var1 - begin;
            v26 = v25 >> 2;
            if (v25 >> 2 <= (v24 + 1))
            {
              v26 = v24 + 1;
            }

            if (v25 >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MKAnnotationView *>>(v27);
            }

            v28 = (8 * v24);
            *v28 = v17;
            v22 = 8 * v24 + 8;
            v29 = v8->_sortedAnnotationViews.__begin_;
            v30 = v8->_sortedAnnotationViews.var0 - v29;
            v31 = (v28 - v30);
            memcpy(v28 - v30, v29, v30);
            v32 = v8->_sortedAnnotationViews.__begin_;
            v8->_sortedAnnotationViews.__begin_ = v31;
            v8->_sortedAnnotationViews.var0 = v22;
            v8->_sortedAnnotationViews.var1 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *var0 = v17;
            v22 = (var0 + 1);
          }

          v8->_sortedAnnotationViews.var0 = v22;
          maxLength = v8->_maxLength;
          if (v8->_isVertical)
          {
            v34 = v19;
          }

          else
          {
            v34 = v18;
          }

          if (maxLength < v34)
          {
            maxLength = v34;
          }

          v8->_maxLength = maxLength;
        }

        v13 = [a3 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    v35 = v8->_sortedAnnotationViews.__begin_;
    v36 = v8->_sortedAnnotationViews.var0;
    v37 = 126 - 2 * __clz(v36 - v35);
    if (v36 == v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    if (v8->_isVertical)
    {
      std::__introsort<std::_ClassicAlgPolicy,_MKSpatialVertComp &,MKAnnotationView **,false>(v35, v36, v38, 1, v14);
    }

    else
    {
      std::__introsort<std::_ClassicAlgPolicy,_MKSpatialHorzComp &,MKAnnotationView **,false>(v35, v36, v38, 1, v14);
    }
  }

  return v8;
}

@end