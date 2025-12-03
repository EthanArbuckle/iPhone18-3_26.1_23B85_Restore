@interface MKSpatialCollider
- (MKSpatialCollider)initWithAnnotationViews:(id)views previousCollissions:(id)collissions options:(int64_t)options;
- (id).cxx_construct;
- (id)registeredCollissions;
- (id)viewsCollidingWithAnnotationView:(id)view inCollidableList:(BOOL)list;
- (id)viewsCollidingWithAnnotationView:(id)view inCollidableList:(BOOL)list fromIndex:(int64_t)index length:(double)length;
- (id)viewsCollidingWithAnnotationViewAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)insertAnnotationView:(id)view;
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

- (id)viewsCollidingWithAnnotationView:(id)view inCollidableList:(BOOL)list fromIndex:(int64_t)index length:(double)length
{
  listCopy = list;
  selfCopy = self;
  ++self->mutator;
  v10 = &OBJC_IVAR___MKAnnotationView__clusterAnnotationView;
  v11 = *(view + 42);
  if (self->_isVertical)
  {
    v12 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:fromIndex:length:]::$_7::__invoke;
  }

  else
  {
    v12 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:fromIndex:length:]::$_8::__invoke;
  }

  v75.origin = *(view + 41);
  v75.size = v11;
  (v12)(&v75, a2);
  indexCopy = index;
  v14 = &selfCopy->_sortedAnnotationViews.__begin_[index];
  if (selfCopy->_sortedAnnotationViews.var0 == v14)
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
    v16 = v13 + length;
    registeredCollisonPairs = selfCopy->_registeredCollisonPairs;
    previousCollisionPairs = selfCopy->_previousCollisionPairs;
    v65 = registeredCollisonPairs + 3;
    v69 = selfCopy;
    do
    {
      v17 = *v14;
      if (*v14 == view)
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
        v36 = v14 - selfCopy->_sortedAnnotationViews.__begin_;
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
          if (v17 <= view)
          {
            viewCopy = v17;
          }

          else
          {
            viewCopy = view;
          }

          if (v17 <= view)
          {
            viewCopy2 = view;
          }

          else
          {
            viewCopy2 = v17;
          }

          v22 = std::hash<_MKAnnotationViewPair>::operator()(viewCopy, viewCopy2);
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
                  if (i[2] == viewCopy && i[3] == viewCopy2)
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
          if ([view isCollidingWithAnnotationView:v17 previouslyCollided:{v41, indexCopy, v65}])
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
                if (v38[2] == viewCopy && v38[3] == viewCopy2)
                {
                  v42 = v15;
                  v43 = v15 >> 3;
                  v12 = v68;
                  selfCopy = v69;
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
          selfCopy = v69;
          v10 = &OBJC_IVAR___MKAnnotationView__clusterAnnotationView;
        }
      }

      ++v14;
    }

    while (v14 != selfCopy->_sortedAnnotationViews.var0);
  }

  v44 = v15 >> 3;
  if (!(v15 >> 3))
  {
    return 0;
  }

  if (v44 != 1)
  {
    if (selfCopy->_options)
    {
      begin = selfCopy->_sortedAnnotationViews.__begin_;
      v47 = 8 * v67 + 8;
      v48 = begin + v47;
      if (8 * indexCopy == v47)
      {
LABEL_82:
        v49 = (begin + v47);
      }

      else
      {
        v49 = &begin[indexCopy];
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
        var0 = selfCopy->_sortedAnnotationViews.var0;
        v54 = var0 - v52;
        if (var0 != v52)
        {
          memmove(v49, v52, var0 - v52);
        }

        selfCopy->_sortedAnnotationViews.var0 = (v51 + v54);
      }
    }

    return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{v44, indexCopy}];
  }

  options = selfCopy->_options;
  if (!listCopy)
  {
    if ((options & 1) == 0)
    {
      return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{1, indexCopy}];
    }

LABEL_89:
    v56 = selfCopy->_sortedAnnotationViews.__begin_;
    v57 = selfCopy->_sortedAnnotationViews.var0;
    v58 = &v56[v73];
    v59 = (v57 - (v58 + 1));
    if (v57 != v58 + 1)
    {
      memmove(&v56[v73], v58 + 1, v57 - (v58 + 1));
    }

    selfCopy->_sortedAnnotationViews.var0 = &v59[v58];
    if (listCopy)
    {
      return 0;
    }

    return [MEMORY[0x1E695DEC8] arrayWithObjects:0 count:{1, indexCopy}];
  }

  if ((options & 2) != 0)
  {
    goto LABEL_89;
  }

  return 0;
}

- (id)viewsCollidingWithAnnotationViewAtIndex:(unint64_t)index
{
  v5 = [MKSpatialCollider viewsCollidingWithAnnotationViewAtIndex:]::$_6::__invoke;
  if (self->_isVertical)
  {
    v5 = [MKSpatialCollider viewsCollidingWithAnnotationViewAtIndex:]::$_5::__invoke;
  }

  v6 = self->_sortedAnnotationViews.__begin_[index];
  v8 = *(v6 + 42);
  (v5)(&v8, a2);
  return [(MKSpatialCollider *)self viewsCollidingWithAnnotationView:v6 inCollidableList:1 fromIndex:index length:?];
}

- (id)viewsCollidingWithAnnotationView:(id)view inCollidableList:(BOOL)list
{
  listCopy = list;
  if (self->_isVertical)
  {
    v7 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_1::__invoke;
  }

  else
  {
    v7 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_2::__invoke;
  }

  v8 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_4::__invoke;
  v9 = *(view + 42);
  if (self->_isVertical)
  {
    v8 = [MKSpatialCollider viewsCollidingWithAnnotationView:inCollidableList:]::$_3::__invoke;
  }

  v29 = *(view + 41);
  v30 = v9;
  v10 = (v8)(&v30, a2);
  v11 = *(view + 42);
  v29 = *(view + 41);
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
    return [(MKSpatialCollider *)self viewsCollidingWithAnnotationView:view inCollidableList:listCopy fromIndex:v18 - begin length:v10 + maxLength];
  }
}

- (unint64_t)insertAnnotationView:(id)view
{
  viewCopy = view;
  ++self->mutator;
  begin = self->_sortedAnnotationViews.__begin_;
  var0 = self->_sortedAnnotationViews.var0;
  if (self->_isVertical)
  {
    if (var0 != begin)
    {
      v7 = var0 - begin;
      v8 = *(view + 83);
      v9 = self->_sortedAnnotationViews.__begin_;
      do
      {
        v10 = v7 >> 1;
        v11 = &v9[v7 >> 1];
        v12 = *(*v11 + 83);
        if (v12 < v8 || (*v11 < view ? (v13 = v12 == v8) : (v13 = 0), v13))
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
  v15 = *(view + 82);
  v9 = self->_sortedAnnotationViews.__begin_;
  do
  {
    v16 = v14 >> 1;
    v17 = &v9[v14 >> 1];
    v18 = *(*v17 + 82);
    if (v18 < v15 || (*v17 < view ? (v19 = v18 == v15) : (v19 = 0), v19))
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

    *v28 = view;
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
    *var0 = view;
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

    v30 = v24 <= &viewCopy || v9 > &viewCopy;
    v31 = 8;
    if (v30)
    {
      v31 = 0;
    }

    *v9 = *(&viewCopy + v31);
  }

  maxLength = self->_maxLength;
  v39 = 16;
  if (self->_isVertical)
  {
    v39 = 24;
  }

  if (maxLength < *(view + v39 + 656))
  {
    maxLength = *(view + v39 + 656);
  }

  self->_maxLength = maxLength;
  return v22;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  begin = self->_sortedAnnotationViews.__begin_;
  var0 = self->_sortedAnnotationViews.var0;
  state->var0 = 1;
  state->var1 = begin;
  state->var2 = &self->mutator;
  return var0 - begin;
}

- (MKSpatialCollider)initWithAnnotationViews:(id)views previousCollissions:(id)collissions options:(int64_t)options
{
  v47 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = MKSpatialCollider;
  v7 = [(MKSpatialCollider *)&v45 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    if (collissions)
    {
      collissionsCopy = collissions;
    }

    else
    {
      collissionsCopy = objc_opt_new();
    }

    v8->_previousCollisionPairs = collissionsCopy;
    v8->_registeredCollisonPairs = -[_MKSpatialColliderPairSet initWithCapacity:]([_MKSpatialColliderPairSet alloc], "initWithCapacity:", [views count]);
    [objc_msgSend(objc_msgSend(views "anyObject")];
    v8->_isVertical = v11 < v10;
    v12 = [views count];
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
    v13 = [views countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v13)
    {
      v15 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(views);
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

        v13 = [views countByEnumeratingWithState:&v41 objects:v46 count:16];
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